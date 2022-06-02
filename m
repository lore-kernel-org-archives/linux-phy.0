Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 689F0C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 09:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqZFuH8ihKetE5Vz59g7uZvfVV84441mJgvu3vlXrR8=; b=j8B8WFGXT49bKl
	Zloz5q3Nms17GhvFwTMvTZ8LIy9DKKUqXBZm6YEMIfxN30R+tlSyA+h9fycsRXutarafueOGmeJEz
	TqBzlw0B2GSR2zwkOlFRVMRyYsPxQDUWhOn+NgB8txmNGny4H5Ip5iDR0yVj9ay09EZw8ok4M/PQ6
	g0cEHMlWtla9EMpUp4H0qoZ/fp7yoDTJaV6QvoqG9eOTegJVCLJAklnEWQr/58SD+af9zsDXsT0e/
	LIa3XKcSHfCfk+lKB/djEmYcDE2v/MxH7E30pagUSQmg3wecdX93b3zxCO6mFWl5SEoKK/zCwo9ae
	w4T4PL87aRna2MWksqzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhS8-002ZP1-Q6; Thu, 02 Jun 2022 09:49:16 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhS5-002ZNV-Mj
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 09:49:15 +0000
Received: by mail-ej1-x634.google.com with SMTP id rq11so8910939ejc.4
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 02:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=H9LLxE4XhsYzR88vE87RJX2dSNBs98C3rMPr+0H4CIo=;
        b=ear1UnYVcnbIEAA387Qnx1UrEdzDsph0c7X/iVPbglrwc7DnqTf3Dwer9TLFDftQlV
         8X9AOO/YY8PNOv1ti7dCowFPXFaTLVT49BatCmU2tKvULStDVeTI2RZUt7veg6hY2QYC
         t15fUP2EXbDBUK8h+CBYxLm0l9NqYTFWsMHgoQSOsVsmK8SSxhtrdSj+rjDh+/Xeh9Wh
         NQWV7sA+ZUUbY/Tg1IoE8DwB+bWScktPfmWY6/NtRtXBH9YDWwx4N7U3JZKLAfvp53ju
         7s6UC1JBJ2IVdVULqhkNlzSPywvAXaXtYxnExVQK0Tw0KV3lMnVOsxaqAXkV561/Dzn5
         el9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H9LLxE4XhsYzR88vE87RJX2dSNBs98C3rMPr+0H4CIo=;
        b=lOGO08IvyBKS0N7Lurc44DnPb+Idblc+aZOIW73zhUj4+7j4qdG/jtLs6cxBt5YMpP
         BD/5Kt0ThQMFPaIRG+XLdTVaZ0C3wVg7HlXicK4rIw48qnxT5u8h0DHJujAtPDfV7NIe
         mCr36FpIL4JR9ebADMYfZeigYLZt3mWVwo0FOjray7y5YJbeqjtZfg9tPmDvszleQCCg
         GHC+W5cTbnRsNMeUhmpusFiEmAqZudnOBCrf5pnQbjqC9PIqgjOlsdWnl5IGmrQrJn9i
         Pm048Oj0cvMtiDcWGflgNfIUJEig+xitvDCZCSgyCsAM8S3F8OAYft8NB4005CiaxzMM
         zyvg==
X-Gm-Message-State: AOAM530S1P3EWxmnot6QeNyJnxDGZoDeb3vDDjEwjm9boiP///d9PDLk
	p4v4F8cPtqP7juLDugDXlDZuLw==
X-Google-Smtp-Source: ABdhPJyh81mTo98JfCY7Xvx3UnXruKdEcE8zqUxZSdmYdp4arSnSPqxd7C8WP9jwtRRCH9maM/TfvQ==
X-Received: by 2002:a17:907:6e01:b0:704:8c0e:872f with SMTP id sd1-20020a1709076e0100b007048c0e872fmr3498976ejc.387.1654163350472;
        Thu, 02 Jun 2022 02:49:10 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c10-20020a056402120a00b0042dd1d3d571sm2201866edw.26.2022.06.02.02.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 02:49:09 -0700 (PDT)
Message-ID: <42b8c793-caa7-e14d-0a6c-dec7aa914dff@linaro.org>
Date: Thu, 2 Jun 2022 11:49:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 3/6] phy: samsung: ufs: support secondary ufs phy
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p19785735bcbf08ad274ff887797485b8c@epcas2p1.samsung.com>
 <20220602053250.62593-4-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602053250.62593-4-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_024913_794019_9DA0A1BE 
X-CRM114-Status: GOOD (  23.34  )
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

On 02/06/2022 07:32, Chanho Park wrote:
> To support secondary ufs phy device, we need to get an offset for phy
> isolation from the syscon DT node. If the first index argument of the
> node is existing, we can read the offset value and set it as isol->offset.
> To allow this assignment, we need to change the field so the isol data
> needs to be allocated and copied from drvdata.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/phy-samsung-ufs.c | 14 +++++++++++++-
>  drivers/phy/samsung/phy-samsung-ufs.h |  2 +-
>  2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index b7ddb91a02be..7716b6dc955b 100644
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
> @@ -324,11 +325,22 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
>  		goto out;
>  	}
>  
> +	phy->isol = devm_kzalloc(dev, sizeof(struct pmu_isol), GFP_KERNEL);

1. Looks like devm_kmemdup
2. sizeof(*variable), not sizeof(struct)

3. and actually you can simplify all that by storing struct pmu_isol
directly in struct samsung_ufs_phy, not as pointer.

After all that storing drvdata in samsung_ufs_phy does not make any
sense - only one field is left still used (has_symbol_clk), so this
should be simplified here as well.

> +	if (!phy->isol) {
> +		err = -ENOMEM;
> +		goto out;
> +	}
> +
>  	drvdata = match->data;
>  	phy->dev = dev;
>  	phy->drvdata = drvdata;
>  	phy->cfg = drvdata->cfg;
> -	phy->isol = &drvdata->isol;
> +	memcpy(phy->isol, &drvdata->isol, sizeof(struct pmu_isol));
> +
> +	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
> +					&isol_offset))
> +		phy->isol->offset = isol_offset;
> +
>  	phy->lane_cnt = PHY_DEF_LANE_CNT;
>  
>  	phy_set_drvdata(gen_phy, phy);
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
> index 8c3696b3c5ec..d3e1c2016b27 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.h
> +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> @@ -122,7 +122,7 @@ struct samsung_ufs_phy {
>  	struct clk *rx1_symbol_clk;
>  	const struct samsung_ufs_phy_drvdata *drvdata;
>  	const struct samsung_ufs_phy_cfg **cfg;
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
