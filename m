Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2398DC77B73
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABSug70Cd0GGxrpPI3M8eh3JJdJHYoqjMb5Pn1f2jwY=; b=Bl86Zh9kPoR64a
	ag+IBieBSvwEbZjgokswo2LRqHN1kRK1LyJ6vY0Hj5W10xwEHWiCqCVdpndDRpiYdWWRi+PaR6cmY
	a3B/K/dRDGNfpDoBSCfpwsBeI1/2w/Sf4Iyy256TdXsPE5C9p1pXJNOVdiLpfwrlsPWNIEtj8XF/L
	Cqnv4zZuFSom6LWM4D7mpebBlACXK6t4ufLoTN1u3nF9iDoRSsVznISQvK+WGwKYDn+UWZP8dbepa
	Tj6rML53g+uP2wZX/0Pc9tLvJf55riD9sd7rDddj81OLl0aCBYWns2Bv707Ye6bCPNyRCzKm8pMV2
	oKH1RjftlhBQS3v9pEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEsl-008j1S-2R;
	Fri, 14 Apr 2023 08:34:11 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEsi-008iyb-0W
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:34:10 +0000
Received: by mail-ej1-x62e.google.com with SMTP id ud9so43569975ejc.7
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681461246; x=1684053246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YETSwyP9KyJmIykjMyk1TM49CieBNMVHrTzyPxKcTSk=;
        b=FkQzqgIFOAMsY5C49r1vVB/ZlzTMvC6eoeJBVcpcCRatuAaj6EIDAzi3hygq5+Ij1g
         JBGhZBFMX7pINFHlQiMdv7hC22MjElW2vDWKKVX/MSzTmcHGS5Gow/BGmXAiYyXVt3Rc
         TwHLdDfG5VUJBs7kKpL0yZtdBIOgMc27tvQabifkeXgBXMFPRAaCDM7iXEOBED/IWt/y
         NmIFWcjRsMtBhqMZwvLbe3ORStBZA417ZS8RGIc3ZE0/2GEdnH753mli+ov6NbQ1UAV0
         2miw7dNFMmbmugoxca3FDGb1jnUPzAQcjAd4BRyShkqiZf8yTad3RCKAOBWa8ejhn2ha
         LbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681461246; x=1684053246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YETSwyP9KyJmIykjMyk1TM49CieBNMVHrTzyPxKcTSk=;
        b=Et+4zlsWHniM8Do+pydD+DqXSnmk/XuGPfjNn47uodySd/fFJX8J2Zl1uiS+QUwhMg
         PkuvEQKn2r81wmDUCgE9+VvyybwuZWvTdMUXWtPrvvmc2w8l38Ho/03VvItltQ5gKJ+K
         sHPwEEzPnPDFxVpKEeWwm1tiZa6T+bAFwOINaDjSHVStYUgxGejgu1jodI8VXxNiwJQp
         82tiezc+o0twvhFaFgvaxjIrgjOUT8dLhyHZDkEAItB348M0f1d9j0he4VwJP+5R30AW
         /aJ5zVu3i8AFZeAoNiIcVgslS7fUG15SQWixb+LJecMEVK5U64DSo32Ftxwq3Uaka95I
         XBvQ==
X-Gm-Message-State: AAQBX9caCPUj0jxdnZraKse9SqcScAjelFB9zzZEryC37Lx8XCWyV5y/
	0QUyNpUYMUakIT0Er971MRakBQ==
X-Google-Smtp-Source: AKy350Z7uaDB4GQxOP+F7tcD8R2KCxU2CUl3f5Uqi9jTZYCUHl43i3I1xzx6+MrjdoI2Do1jwFgUmg==
X-Received: by 2002:a17:907:1b1b:b0:94a:68a9:b399 with SMTP id mp27-20020a1709071b1b00b0094a68a9b399mr6056042ejc.53.1681461246577;
        Fri, 14 Apr 2023 01:34:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id jt6-20020a170906dfc600b0094e6c45b117sm2106215ejc.168.2023.04.14.01.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:34:06 -0700 (PDT)
Message-ID: <8349f5c1-36fe-802b-2a36-acb9c6eb6d8e@linaro.org>
Date: Fri, 14 Apr 2023 10:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 12/27] dt-bindings: display: mediatek: split: Add
 compatible for MediaTek MT6795
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
 <20230412112739.160376-13-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-13-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_013408_198388_EFDDCD90 
X-CRM114-Status: UNSURE (   8.73  )
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
> Add a compatible string for MediaTek Helio X10 MT6795's SPLIT block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,split.yaml   | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
