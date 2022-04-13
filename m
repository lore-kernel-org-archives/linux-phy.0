Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0B0CC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 07:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTnHrVah+9/olaa13fQM5QqEu49R4UH6gkOXXEfeyhg=; b=3bg14BcXSWqJdr
	qtSOQm6YZMl0Z1EAKiOhzOcX0DzVmv+GV0AOrrQ7poWfIpdE56aWJxPpzwY4nUfaPTNZLLJW6pRZV
	E2DQpvhVU7oejqNrdRZZRCYYh2jlOuwk3y81IwQMZvlrOCpKD3/giNTTeTfAzgPHNH+e5rTWSM1q+
	3AVHeqU3GVCV8jef4I1vP3vgr/I3JZXmfLseVA1/iR/eJ4kbVJYg5PheQZA2jaS+5yzuWsvnGc9k9
	cnALPz15UfCBzWsAcRpJa0hVZu3scQRZtAq62y3//HB73D7ZK15EVCnjeoY1+lko2jLLCDZs5ccO5
	tUQfauQXt4TKPskjRZqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neXPU-00HOtz-Cm; Wed, 13 Apr 2022 07:27:28 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neXPR-00HOso-75
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 07:27:26 +0000
Received: by mail-lf1-x12e.google.com with SMTP id b21so1942976lfb.5
 for <linux-phy@lists.infradead.org>; Wed, 13 Apr 2022 00:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=QARgvmkpr8VVbyyV9NCF/ci4KYaV871c1Ej+b6nyl0E=;
 b=aSERqlI6AgOSiUivPNKdqIbmT5M9Xv2yCQJxrGNk7ZF/XMJYXIkpoKgA/YEvUsje1y
 090G2iyN7TJFvJqgRn2IQVPedZ7bIlDdZgkwACxORsQ2x47GASAOJ574hsEiNHtY+A6M
 QP6guAS99tnF4hG5Mez/T74bgZbcRgageIJ5cDoirD1/URyjKP1zHU40n4Cv+Ry8dGq7
 N6QvyW1QExYFHxrk7cBYKxObhUqiVaswFg+dbdwgDhVkVaeqZdK15cui+TR1pSjhdCTm
 Xfl2vUq4bJROYc6z7yV+MR5BYUpJxIpxzNHJNDdb4PeudOFx44liJBr9QkHa+xzMXNn5
 wonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QARgvmkpr8VVbyyV9NCF/ci4KYaV871c1Ej+b6nyl0E=;
 b=m/MiRsOn3dOZTBzBqUQKc7bCKD+sbpvEO3pOBlzSvIas/pR+k5F9doGwJ1tS9ODbxd
 2pGmrWqinLLatJvLfcXGS9uFCMeaZLModG3OPyaXASJSRqaDZHcb/VFsLA9WsSQvvY9F
 JtEx9v9MMF53DUhyyr19uFs/NKd8pipZTbs48GrzgnOZ+7xXX8x+HzxgMdzhTrB5eGfl
 S9RoCCamNouKr3ZDbYb3qAw1ncRLE9U+RJyW+MT/Wy78b7XAIq8CtAFnnEFpvoVFefOm
 B30C8+wGHDGiXKYNmU2HtACqMnUkF8CL+yZUMZcrYbWP5IytlwvZgssCh/m6W8bV/USC
 enJw==
X-Gm-Message-State: AOAM532xMvicurZABVdkqey11bQjSE3oSRBFKjg7Cn9xTSiG/uqku8Ki
 05PFcLmj7saAFm6Dw2g61JrO7Q==
X-Google-Smtp-Source: ABdhPJyCMeaEoNC8ctpBkTlLeoBr7h/Q6l6by9SEIGLzZHnngd0lYcZwtTOD4kceei/TXW5O2Cm12Q==
X-Received: by 2002:a05:6512:1526:b0:45d:cd2b:912d with SMTP id
 bq38-20020a056512152600b0045dcd2b912dmr28578677lfb.409.1649834841264; 
 Wed, 13 Apr 2022 00:27:21 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 b6-20020a2ebc06000000b0024b5c9e91c4sm1125356ljf.63.2022.04.13.00.27.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 00:27:20 -0700 (PDT)
Message-ID: <bad40b1b-73af-a1f3-d0df-b59e4a599015@linaro.org>
Date: Wed, 13 Apr 2022 10:27:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 2/2] phy: qcom-qmp: Add SM8150 PCIe QMP PHYs
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-phy@lists.infradead.org
Cc: bhupesh.linux@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org
References: <20220325222130.1783242-1-bhupesh.sharma@linaro.org>
 <20220325222130.1783242-3-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220325222130.1783242-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_002725_308823_62F05BD6 
X-CRM114-Status: GOOD (  17.92  )
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

On 26/03/2022 01:21, Bhupesh Sharma wrote:
> SM8150 has multiple (different) PHY versions:
> QMP GEN3x1 PHY - 1 lane
> QMP GEN3x2 PHY - 2 lanes
> 
> Add support for these with relevant init sequence.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp.c | 90 +++++++++++++++++++++++++++++
>   1 file changed, 90 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index b144ae1f729a..8e928b9619b6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -3294,6 +3294,11 @@ static const char * const sdm845_pciephy_clk_l[] = {
>   	"aux", "cfg_ahb", "ref", "refgen",
>   };
>   
> +/* the pcie phy on sm8150 doesn't have a ref clock */
> +static const char * const sm8150_pciephy_clk_l[] = {
> +	"aux", "cfg_ahb", "refgen",

On sm8250 we use GCC_WIFI/WIGIG/MDM_CLKREF_EN clocks as "ref". 
Downstream dts lists them as "pcie_X_ldo". sm8150 also has these clocks 
(GCC_PCIE_n_CLKREF_CLK). Is there any reason why we use CLKREF clocks on 
sm8250, but ommit them on sm8150?

> +};
> +
>   static const char * const qmp_v4_phy_clk_l[] = {
>   	"aux", "ref_clk_src", "ref", "com_aux",
>   };
> @@ -3583,6 +3588,85 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>   	.pwrdn_delay_max	= 1005,		/* us */
>   };
>   
> +static const struct qmp_phy_cfg sm8150_qmp_gen3x1_pciephy_cfg = {
> +	.type = PHY_TYPE_PCIE,
> +	.nlanes = 1,
> +
> +	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
> +	.serdes_tbl_sec		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
> +	.serdes_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
> +	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
> +	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
> +	.rx_tbl_sec		= sm8250_qmp_gen3x1_pcie_rx_tbl,
> +	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_rx_tbl),
> +	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
> +	.pcs_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_tbl,
> +	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_tbl),
> +	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
> +	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
> +	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
> +	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
> +	.clk_list		= sm8150_pciephy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sm8150_pciephy_clk_l),
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= sm8250_pcie_regs_layout,
> +
> +	.start_ctrl		= PCS_START | SERDES_START,
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS,
> +
> +	.has_pwrdn_delay	= true,
> +	.pwrdn_delay_min	= 995,		/* us */
> +	.pwrdn_delay_max	= 1005,		/* us */
> +};
> +
> +static const struct qmp_phy_cfg sm8150_qmp_gen3x2_pciephy_cfg = {
> +	.type = PHY_TYPE_PCIE,
> +	.nlanes = 2,
> +
> +	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
> +	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
> +	.tx_tbl_sec		= sm8250_qmp_gen3x2_pcie_tx_tbl,
> +	.tx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
> +	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
> +	.rx_tbl_sec		= sm8250_qmp_gen3x2_pcie_rx_tbl,
> +	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_rx_tbl),
> +	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
> +	.pcs_tbl_sec		= sm8250_qmp_gen3x2_pcie_pcs_tbl,
> +	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_tbl),
> +	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
> +	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
> +	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
> +	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
> +	.clk_list		= sm8150_pciephy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sm8150_pciephy_clk_l),
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= sm8250_pcie_regs_layout,
> +
> +	.start_ctrl		= PCS_START | SERDES_START,
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS,
> +
> +	.is_dual_lane_phy	= true,
> +	.has_pwrdn_delay	= true,
> +	.pwrdn_delay_min	= 995,		/* us */
> +	.pwrdn_delay_max	= 1005,		/* us */
> +};
> +
>   static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>   	.type = PHY_TYPE_PCIE,
>   	.nlanes = 1,
> @@ -6007,6 +6091,12 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
>   	}, {
>   		.compatible = "qcom,sm6115-qmp-ufs-phy",
>   		.data = &sm6115_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy",
> +		.data = &sm8150_qmp_gen3x1_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8150-qmp-gen3x2-pcie-phy",
> +		.data = &sm8150_qmp_gen3x2_pciephy_cfg,
>   	}, {
>   		.compatible = "qcom,sm8150-qmp-ufs-phy",
>   		.data = &sm8150_ufsphy_cfg,


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
