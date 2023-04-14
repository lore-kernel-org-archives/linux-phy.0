Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D906C77B73
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjFgaOU02AISYt4zIlvrXpSCj3frqBv4SnRtBWsSTlU=; b=iFFAIa4weS2YhH
	LElOgxbFhdlnU8DKSGRniLRyDGInr8D+4IlySKZOKahoPbWbBu5JAuw3qUElAoyJVfaOi3eKvpCqD
	45GU6LR/FA4nQrlW1MmSmIorAk2Sc6Rsf7wWwjaNWzNmgOodvV7mLv7zWOxrs4EkuBtM/ZU0s0hpK
	+45xFJUrZVRjZr/6EDXt7J1Ziyvjj2Yhr7r/m5bK6x9oW/G+R6wibWxlG/ysvT1MRj/niktEofkHo
	VjbrUspToemPRS0FOaJXj8r0bo8itqCZgw7wA3KatHt6EfVpnwbQKrbRe+Vnigs8kPgYKv3GRZrwO
	lPpghlrAJVnan3CdWOVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnF3X-008lgO-2e;
	Fri, 14 Apr 2023 08:45:19 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnF3U-008leJ-0g
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:45:18 +0000
Received: by mail-ej1-x62b.google.com with SMTP id j17so34178492ejs.5
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681461915; x=1684053915;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OQi24hZ8qM1oW3SIEmbO3Vbi77+YdvqxsA6f0CmI3ZQ=;
        b=QkSjGapm2yICXR8TRzydwyFQoK1DQjUHDthBi1uSy4S3BJDAzE6gZvKmxVVRA0EOgX
         IOQE5Z+2j0dfTH1ViDxtyNr3NXw8cfyhZ7DNVbrnn4UeDhuaWgmjyJvdbxV4pUJ9F6QN
         GWklXLRqFwRq6sZYAzVmZkO3/nmeLEvwDOEcH+CTyxKQSA0XwuTuFZv8ENQ1ryaH0Zbw
         gu+zvc4nTo6Z6Ot9GBp6KzYHD2WS0nSeUH+w8ppB75fHbCQcw3WRKxUPLpBsgZgLveV/
         puptndWFp5Y0Y6JpQp/jqoi/xsd3D22rMdALcbF+TPM7MekbdiXqjvUdPzOVwmNoCYZT
         V60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681461915; x=1684053915;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OQi24hZ8qM1oW3SIEmbO3Vbi77+YdvqxsA6f0CmI3ZQ=;
        b=FPoyoEVz5vPj5ZwutLWSa/e1AToPUk4o1NyUoLP7amB85OC74j1mV9qa9mrs1jWKMk
         5XpYM6fx4+CHTWRhpmxsaUqUW4FZU0yuq5hLp5ePjp1gKUd83Gx/ARp+LRM85DOx1+6e
         vBrGEY+3lxac9XtPRIslafZS23EC9++XqsRcSPYlS/AKzlfLBdqwHvUDrv/Zc0LPL9jo
         Xt3NuqK+UYbVfQJVGLQdsrVdak78GtQYGs+kNtdEeCEtfA5IIJjPmPxy/oMHZwSMGaq1
         UkViUkOl2mjynd1ynAg49BrPjFu/ZvCk9WO9gmMMwn1TMwPLV//nd52FNTod7gJP2GDt
         snkw==
X-Gm-Message-State: AAQBX9dbess+3C2VQs+XnyrrTIZIPr6Jiv/4QQdnG9gj1VGroWFfNo+K
	wNX2u5emu8UKgB14JjY5VGJS4g==
X-Google-Smtp-Source: AKy350aTjtwNIDMwN8ZlXb38r4s/wrVWtQuLY6J9Mtd85Z3UUSRWT2tyfVutkOUFmvCkD+hAfLERwA==
X-Received: by 2002:a17:906:140f:b0:94e:2db:533e with SMTP id p15-20020a170906140f00b0094e02db533emr5322939ejc.49.1681461914929;
        Fri, 14 Apr 2023 01:45:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id c21-20020aa7df15000000b00505060e4280sm1862013edy.94.2023.04.14.01.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:45:14 -0700 (PDT)
Message-ID: <05d0ae30-1f1f-0bbd-c98f-70d50924afdc@linaro.org>
Date: Fri, 14 Apr 2023 10:45:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 14/27] dt-bindings: display: mediatek: od: Add compatible
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
 <20230412112739.160376-15-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-15-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_014516_253015_8296E717 
X-CRM114-Status: UNSURE (   6.73  )
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
> Add a compatible string for MediaTek Helio X10 MT6795's OverDrive (OD)
> block: this is the same as MT8173.
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
