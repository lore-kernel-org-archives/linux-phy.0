Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E2CC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqnC8cAIOOXyuTdwEthvA+mHqwenP0eTVWq4AWLT2co=; b=Be7nXgKX5zuM3U
	lrqiAd6HSV9rByJ7YSOG2brRop3K8OQ5HLzm/i07/CT3bvoQLTpq5VQlEYwfbeRMs6HsDpvdeFES/
	1QUxIRNdZ2JrGC0H7kKU8KoVQl2TEXH7OiiqLtY91Jd8UKyZ77frcyS0Fot6vIKXjJVWHmjx0NW59
	gYguFUTEnchbkFcWikJuJnfwLKL1Yr9fuZhw1ZeX+D88g52ZusG0xhwnDAOXX2NnyLGhtZJengkjE
	MGwukUzJpc9ICGrVFUL4/R+XncFOmmocE5TVj5tS/lwawmRPOwmKpuDSKdx77mQHvMMiOojLS40+b
	5LpQMKpS8HOFEIiX/NwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFdK-004Nm9-LY; Tue, 11 Oct 2022 13:49:22 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFdI-004Nkc-Ca
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:49:21 +0000
Received: by mail-lj1-x233.google.com with SMTP id s10so16908641ljp.5
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=95e1zfa1PsPhtqKhEzjg0I/Nc68FTTy+m8Ct/8lpeQ8=;
        b=dayUUKJSu+0Y7AuxMSsc0uU11Xur8HR4pNTBoupUJzfASm1iwkO3dzp/6mahuI3h4K
         RIV4xSxwvZDB8nWv9Xz/6TGNmn4I3uDNqlRRh+VX1oGujKho9GBFNqhUv/yUbFNY5e0c
         7rEYOs3Jm9/sGdkUPMncRp7iifYuddITKW3neMz55Isz6TBizUYBSx4g7LybLH6seQDQ
         OMsie44JeTjdGI5cLGmFctMSjpLBmcLTRnpIxVjW3A3km06qFN5RqEetaHXPq9AgMvO/
         ol6wFXxxGrx+H238aoX+G73q/eJ+5Y/+sBJeNH9m0Bagdd4WAEg4epqxcn8seC2nQKpG
         MhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=95e1zfa1PsPhtqKhEzjg0I/Nc68FTTy+m8Ct/8lpeQ8=;
        b=UFDsfe0RbZVHQGqXKgbQ6se4T/B0CglcnFqpUKTWq8go6VC1lhRqKdMaVtQ7N7hLgL
         prnOF5kBWsuFLpc8hVBxCj1BpQufxs+gvYYtGsM1w2l4+H0Rg7woznmTnH4PaRbyia3Q
         Erkcez+JwZhFfKZdMYqq7JpaCEJOTcA9RsO5OH1+O0Rzkd9UJJxLo3QC5vZfzgKQB07v
         Yk4xdMok/V9sJG78dkpALStlJivike7Qf/DG/SOXaLeJFFl3bCbJ4Vhp9EcrTSRnM9ok
         LhQi6BAoOoyMDfEbLBedmR763F1QWcQqVnPKD8ov939TwkXgV857QlvuVbaV7dpxD5Oe
         YNtw==
X-Gm-Message-State: ACrzQf24Fb38qDn9njI2/Mc86IxNm+aBTY6kbsvXRYV6HoU91pi/kadS
	yw02rD1NeTT/zT7Qq64PKBzUkg==
X-Google-Smtp-Source: AMsMyM61FrMUAfb7Budd+1I+ins+sGxtHFRfmYTiHTZSNIURvWBPG4jjQ87/TLuylyi5cl/TEYalGA==
X-Received: by 2002:a2e:8947:0:b0:26e:1a9:654c with SMTP id b7-20020a2e8947000000b0026e01a9654cmr8288677ljk.102.1665496158341;
        Tue, 11 Oct 2022 06:49:18 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j6-20020a2eb706000000b0026dcf81d804sm2154796ljo.31.2022.10.11.06.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:49:18 -0700 (PDT)
Message-ID: <fa00a1c7-64b5-4c2c-8775-867c3a4f0a11@linaro.org>
Date: Tue, 11 Oct 2022 16:49:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 09/13] phy: qcom-qmp-pcie-msm8996: drop power-down delay
 config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_064920_460618_E5FE2988 
X-CRM114-Status: GOOD (  21.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/10/2022 16:14, Johan Hovold wrote:
> The power-down delay was included in the first version of the QMP driver
> for MSM8996 as an optional delay after powering on the PHY (using
> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> this sequence by powering on before initialising the PHY, but the
> optional delay stayed where it was (i.e. before starting the PHY).
> 
> The vendor driver does not use a delay before starting the PHY and this
> is likely not needed on any platform unless there is a corresponding
> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> 
> Let's keep the delay for now, but drop the redundant configuration
> options while increasing the unnecessarily low timer slack somewhat.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Note: the comment from the previous patch applies here too.

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 15 ++-------------
>   1 file changed, 2 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 31ac405d3785..899be7bd4d92 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -41,7 +41,7 @@
>   
>   #define PHY_INIT_COMPLETE_TIMEOUT		10000
>   #define POWER_DOWN_DELAY_US_MIN			10
> -#define POWER_DOWN_DELAY_US_MAX			11
> +#define POWER_DOWN_DELAY_US_MAX			20
>   
>   struct qmp_phy_init_tbl {
>   	unsigned int offset;
> @@ -203,12 +203,6 @@ struct qmp_phy_cfg {
>   	unsigned int mask_com_pcs_ready;
>   	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
>   	unsigned int phy_status;
> -
> -	/* true, if PHY needs delay after POWER_DOWN */
> -	bool has_pwrdn_delay;
> -	/* power_down delay in usec */
> -	int pwrdn_delay_min;
> -	int pwrdn_delay_max;
>   };
>   
>   /**
> @@ -326,10 +320,6 @@ static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.mask_com_pcs_ready	= PCS_READY,
>   	.phy_status		= PHYSTATUS,
> -
> -	.has_pwrdn_delay	= true,
> -	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
> -	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   };
>   
>   static void qmp_pcie_msm8996_configure_lane(void __iomem *base,
> @@ -523,8 +513,7 @@ static int qmp_pcie_msm8996_power_on(struct phy *phy)
>   	 */
>   	qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
>   
> -	if (cfg->has_pwrdn_delay)
> -		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
> +	usleep_range(POWER_DOWN_DELAY_US_MIN, POWER_DOWN_DELAY_US_MAX);
>   
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
