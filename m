Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18824C77B70
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LL8ARC6txCd6rQkQF5FGrbZk/Pd9bcEYOb1trjT40yQ=; b=qM4nS390VkK8PX
	6V97F5KiciBirF5JoSgd1J+ve7nWO/sB4Vcubg+zsFkeaCLvl1Garl2DvAiLqn1Eb0amHP3grZICI
	DzD2k0Ys032Xlxyy2SYqC1lnZFpi+QtOQqsO07/kgAHpBlBAQzN6u+ARLKGQo6OOoT0BMssoX3I6a
	vytDx0PBDLgtH1bXFRlfP/3BCdGDOBl3soLyMiCrVzY7AMnoHBhFXKz6LAfFediarHEd+FZn0zKDI
	X0D3HsQ0EfABF+PLtrhMQkSroj9g+XQP7jKBTAbdQJR8GwvOzolZsauNcTeNxGz3Udffig2CrgcTv
	3mHtln2hiPC1nljZtsmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEjs-008gM5-1r;
	Fri, 14 Apr 2023 08:25:00 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEjo-008gIT-2M
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:24:58 +0000
Received: by mail-ej1-x636.google.com with SMTP id rp27so6709582ejb.12
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681460695; x=1684052695;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZrBCPg/7kEQmQ/S2HJSPkvrLLN8UQjkoca9tiMHDaUE=;
        b=iXaoED0tEhQSyqai1EUHpNUUpddB1+3po1KoelJvQpfZqBH4H6WVcBblHREMFFlW5Q
         8Kq1hy2OAtnQfaxolldPzxw6ICb6zFRRhzaPml3lz8Hy+oeQfebpYJH6tAG9Wy344SR/
         u5rm6jiEjAmPA/VfiSMyvGOJJqd02KePv4/h2VpXjdmytS96sbfQirFHcQ88xrLG3JhM
         Ke3b5bnSHYuSx66e2NJRZXo/ltKWw3tpZ27pfDoQ6rrnygFeVi1+5BvD0QTpPzZsCedU
         6rHEsdlUWSHeJWKESndXy+cnXro09stKuckPHDpDO//EeGxxya1i37IAVarJ9zDmIBEw
         xAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681460695; x=1684052695;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrBCPg/7kEQmQ/S2HJSPkvrLLN8UQjkoca9tiMHDaUE=;
        b=hPWR6LZ8WLFK/a4cL5Socik/0RBcz3wbGBXl3Ytup8tAEM3tYd2EDWk3S6hQc5wmbZ
         23h+t2KNUH66wSgk59M802LkTx/DQQXWw7EJp9qGLnpLX67+vqGinTfY9+aLkp2tUMJS
         71Inknlk5mhGBUpZ/8OvuHFFiZq8od4vEEsfjgbegLMYpBU3HV/IaFo5L70k5Hf3NxMC
         +Lvr+a6aLymty4uFcjXhmG2bx3XtuIfco+C3Fj3N29Q39veTim0bEbAPggyg+fknJ7YU
         tOIzrtfTrghTN4oWPg1wNLX6gEva28EK2dCD0qkZU8bim8R9u6AjDi7TLiFdAGUnhYQF
         n/cw==
X-Gm-Message-State: AAQBX9ecO/bkkXK+HZk/mlBnqxi66nbTGxzr8bKOmbYm1whf76Y3AHPu
	elRA5zhaHrc9Vs1qZWK5wHz7ig==
X-Google-Smtp-Source: AKy350YXpqn0+HLdiWaIxk7myrpXbNP2xw+hirOiGiyN4wIw3OtEzEGmrJZjwJmO7o1h3UaPSKK/WQ==
X-Received: by 2002:a17:907:e8c:b0:948:a1ae:b2c4 with SMTP id ho12-20020a1709070e8c00b00948a1aeb2c4mr7740362ejc.6.1681460695443;
        Fri, 14 Apr 2023 01:24:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id x8-20020a170906440800b0094a8f61ef3fsm2119353ejo.173.2023.04.14.01.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:24:55 -0700 (PDT)
Message-ID: <8e629e18-547b-10a0-9be3-157f6ea139fb@linaro.org>
Date: Fri, 14 Apr 2023 10:24:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 06/27] dt-bindings: display: mediatek: ovl: Add compatible
 for MediaTek MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-7-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-7-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_012456_772468_4F3120DA 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795's OVL block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
