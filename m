Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D60B4C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 13:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFYYyFrHx8ev3+yJm0a54ub+N2Qvh0tyB75eSAyY2AQ=; b=X2hNFkskwvYDsx
	rF19c2ncfX6iU0ZPm4Y7MdGwmK/0gxPq28UWe2clif2AHJfFf3xd3uL6gHVBTEGcIniOad58U1jPD
	6hbww0yQBj2SUhOOmS3JJlNV2qzjqYoX/AugTZpIGZJIRoBvxftafwxnHokynAlGHj9dbpcb/eRbw
	Ilad+DL7djewZcFya+UvfbyZlW52VTHkVZ40EyP5/ZFpJ2p4+D77jY45SE9H5D+IjtjdnHcHTAQaB
	r9fwbME3Ft0J9MPlYePeKIFuyRwDrJI1nDQBPRpFJ3k+ZTvF3e6qzFQG6oL/bYz+O7XuOP00FAs7p
	4PdlRXnIVlAzdu7gaRqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1ms-00B27V-8i; Tue, 31 May 2022 13:19:54 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1me-00B22j-W8
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:19:42 +0000
Received: by mail-ej1-x62a.google.com with SMTP id rq11so26617871ejc.4
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wQgOJyR03vBhM6DapbC/rA4icxajpuUd8Doq6SLlA94=;
        b=sUVJ8pxaIDfsOu/9hCPz90A6L7XQJH5HcV47T0MkonvQO9e77CkgOlPTuBrztk8MY2
         uFjNv0DdfHoVNVp0Jsg+EWr3yjMz+oPvAfGUoqQx/UIyjEcseFx/t3QxNrivALnIOY3l
         85KDMXEOhjmppSWCmpiICFZOSWBMwkoY/QaoTJwoRX2/jzVccLj7gkOdM81rKYl3DnWH
         dzKUEyiNctddjiQyLNQ8YMS5UTXbGfukd27OOdGOG89Rtr9pgnThpYgu9CX29QpcfQam
         RjIWyWy+LcoVXWkd6KF2zjK6iEYo5n9HDKMzSw1zwc6+H4MwZr2XyBkvyDFhD2L5E06C
         M5Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wQgOJyR03vBhM6DapbC/rA4icxajpuUd8Doq6SLlA94=;
        b=EEdYSZ5WxtQ1zepPeMLzQAAbQgbpdjaVMli7u5CLRSdX+cH+0DK7FtqhyW/CDCSvO7
         d2z3wmxbyouJJNuu47hBeX7aU8ycmfqrgunwsNDkNSEqYYGxPZcZN1HdVXmKMebeQzOj
         yN28oJm6RpsDYR9egwVlcEEjIOliWqCHmLuHpNM98HmIFeq6ssqWJ+q1jfXmY2Ih0t79
         9IaX3JjKuUA5GURPGQM80w1cYhmU6FQW2f7EKSTd5SwwC5EplqUj2PgWdiaG4lfSlyBm
         XHWUA8bVJSJB4v9DvaTWsJtYmndVnXSXbH1p16WDXA9nwmW0/W9syF2RMyf/IqgA0578
         hD3w==
X-Gm-Message-State: AOAM530grjwq3eHVNy4135SgEA4gZmsPgtYIGGXTzzT/oy5bMSAygipY
	b0pAvGq+9DjjRKEP4MA+fQ83dQ==
X-Google-Smtp-Source: ABdhPJybKpUc8z2wrpwIUL9Ubjp83WkzYjN7WdkhLrYnKTY6ffj95FyQpQLEJe+0Mf5AiaQ2azMvBg==
X-Received: by 2002:a17:906:600c:b0:6fe:9204:959b with SMTP id o12-20020a170906600c00b006fe9204959bmr52342461ejj.417.1654003177373;
        Tue, 31 May 2022 06:19:37 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id lz18-20020a170906fb1200b006f3ef214e62sm4941227ejb.200.2022.05.31.06.19.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 06:19:36 -0700 (PDT)
Message-ID: <45ef694a-472c-23d8-1514-f57efe5a35a1@linaro.org>
Date: Tue, 31 May 2022 15:19:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/4] phy: samsung: ufs: support secondary ufs phy
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20220531121913.48722-1-chanho61.park@samsung.com>
 <CGME20220531121922epcas2p3c37a39cd28f56326c4f3980ac76f3b5c@epcas2p3.samsung.com>
 <20220531121913.48722-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-3-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_061941_142619_D46A4391 
X-CRM114-Status: GOOD (  21.23  )
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

On 31/05/2022 14:19, Chanho Park wrote:
> To support secondary ufs phy device, we need to get an offset for phy
> isolation from the syscon DT node. If the first index argument of the
> node is existing, we can read the offset value and set it as isol->offset.
> To allow this, we should drop the const qualifier of struct pmu_isol.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/phy-samsung-ufs.c | 7 ++++++-
>  drivers/phy/samsung/phy-samsung-ufs.h | 2 +-
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index 602ddef259eb..bb0f8e481a4b 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -288,6 +288,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
>  	struct phy *gen_phy;
>  	struct phy_provider *phy_provider;
>  	const struct samsung_ufs_phy_drvdata *drvdata;
> +	u32 isol_offset;
>  	int err = 0;
>  
>  	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
> @@ -328,7 +329,11 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
>  	phy->dev = dev;
>  	phy->drvdata = drvdata;
>  	phy->cfg = (struct samsung_ufs_phy_cfg **)drvdata->cfg;
> -	phy->isol = &drvdata->isol;
> +	phy->isol = (struct pmu_isol *)&drvdata->isol;

No casts are needed for proper code. If you need it - code is not proper.

> +	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
> +					&isol_offset))
> +		phy->isol->offset = isol_offset;

drvdata is const.

> +
>  	phy->lane_cnt = PHY_DEF_LANE_CNT;
>  
>  	phy_set_drvdata(gen_phy, phy);
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
> index 91a0e9f94f98..75dc533273f9 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.h
> +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> @@ -122,7 +122,7 @@ struct samsung_ufs_phy {
>  	struct clk *rx1_symbol_clk;
>  	const struct samsung_ufs_phy_drvdata *drvdata;
>  	struct samsung_ufs_phy_cfg **cfg;
> -	const struct pmu_isol *isol;
> +	struct pmu_isol *isol;
>  	u8 lane_cnt;
>  	int ufs_phy_state;
>  	enum phy_mode mode;


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
