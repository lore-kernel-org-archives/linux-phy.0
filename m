Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C2AEC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 07:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NUXTfqPPPUgC3ocrxTAPdjC9ZXEocQugOlVBVOQB3Y=; b=k0vXviivi9Cfbm
	Pd/6xnsIzCucKnUQPMH+MmKxkP7imEk8fgyZGWKwT3j98bXIgiHB3J3tkEou5gu14pj6uF3Zdlu8A
	1C4ReIFzgH6UGBxnkWKHMEhd8H3lyb2cZPPyEiTo9xynJUqiVV3bFSenvTAvLA/cmW0oE6gOZURu3
	WnZLS20JhO5tiwed1AuD5e6JilhMDCc1u4J6h2UaXkR6hrCzfaKT9Ozk4NJ7HgLs0uhkEDX6EGwje
	h4WBESbzst40gSdnQCLMdYnCmEdnlgJhXhNC9G6ZaqEHP4lo6zCE7MInabvyaBjWOQqeQ9ARF6ZLb
	k7DKBLoeeYPkuf/+aTyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neXX0-00HQFe-PI; Wed, 13 Apr 2022 07:35:14 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neXWx-00HQDX-PZ
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 07:35:13 +0000
Received: by mail-pg1-x531.google.com with SMTP id h5so1033141pgc.7
 for <linux-phy@lists.infradead.org>; Wed, 13 Apr 2022 00:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4shEO0FDjWAPEb/iOkbhrTf4wcohhpVSh+KPI0icLZI=;
 b=qets2QwMPoIS07bG1f+KyzSxy6S8KfID+zTuDtEKft9hUvDP7QZj5L+WzEREoAmiY/
 XOrB4o04xL+0RYSOVEMDw3reHRpqsa51k5T4ihGVeqQBAk9Ho2mspk66Bl+l56Dr6PnA
 OXMaSzqgFA6Cu3ryvS2nNYt+BMVcjYDJCeoyictMJ5uwYo8Q+jDXBNZtA56w09lyCRZe
 YKuZbPQDp/Lmcn2qX0ZVrncFMbVbfr15nMmbXBHqjWfTdFcFYfj5OcOArO5W40hVsUn2
 a51Mapulb8/S926Wh9qcxCXmC7IAcSSPS7a7UXSjHa0/8KiqsCCwgoA+O7nm6GKvATiM
 mKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4shEO0FDjWAPEb/iOkbhrTf4wcohhpVSh+KPI0icLZI=;
 b=ewnqZ5qNEOE6CtMXYpVNEEHd7RGxHxTnZpMzBV/9SlStOhtidLxW4xtQkoKeKrigzR
 W5FLNywhs6hwvdAc5fDQsB9wNFe82uRnHyZyCngTqf/XR1sqgVeIVOpRdHnRh+a2c5vm
 dbIGKNJIqRQsIRaFOLz6IcQqikVCtoj+62UZEzsoiW47pxQbifeNV0jgJha4avodKpe3
 Pr+PM7x4l95OW/8BhfnLVqiwgEu4cxpM1J0sEJ7Rnfp6wrSQKVjZAZg1LNFp8Ub9zg9w
 A2jZ2bzhbaxS3KVYMGF+HSdB0fMrwB0IjK4kH42M97/Rh4g8lj3xPNWVMSCey3GLEciD
 vBKA==
X-Gm-Message-State: AOAM5331vd4PCUEwgf6FiR/v21w/hZ4Bj1jrVDJv/GxyEMWymqxxkbxW
 Js0g2YCzb/TXf+WPAM3ym24D
X-Google-Smtp-Source: ABdhPJzMxUXE89aUhRoeF6JFh0xgIGr9S8og3SCLfG1L88EFRg2hK4A2qSzGupVw4T6UTu0MgphGLw==
X-Received: by 2002:a63:780f:0:b0:386:5d6f:2153 with SMTP id
 t15-20020a63780f000000b003865d6f2153mr33053657pgc.555.1649835303345; 
 Wed, 13 Apr 2022 00:35:03 -0700 (PDT)
Received: from thinkpad ([117.207.28.99]) by smtp.gmail.com with ESMTPSA id
 d8-20020a17090a114800b001cb95a92bd7sm1816639pje.13.2022.04.13.00.34.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 00:35:02 -0700 (PDT)
Date: Wed, 13 Apr 2022 13:04:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp: Add support for SDX65 QMP PHY
Message-ID: <20220413073456.GC2015@thinkpad>
References: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
 <1649740652-17515-3-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1649740652-17515-3-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_003511_857904_2C326560 
X-CRM114-Status: GOOD (  16.50  )
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

On Tue, Apr 12, 2022 at 10:47:32AM +0530, Rohit Agarwal wrote:
> Add support for USB3 QMP PHY found in SDX65 platform. SDX65 uses
> version 5.0.0 of the QMP PHY IP.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

I don't have access to SDX65 downstream devicetree source but overall it looks
good to me.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 76 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 8ea87c6..58506b8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -2535,6 +2535,50 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
>  };
>  
> +static const struct qmp_phy_init_tbl sdx65_usb3_uniphy_tx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0xa5),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_2, 0x82),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_3, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_4, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PI_QEC_CTRL, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x0b),
> +};
> +
> +static const struct qmp_phy_init_tbl sdx65_usb3_uniphy_rx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xdb),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0xbd),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH, 0x7f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_LOW, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH4, 0xa9),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH3, 0x7b),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH2, 0xe4),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH, 0x24),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_LOW, 0x64),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CONTROLS, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH1, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH2, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_GAIN1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_GAIN2, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FO_GAIN, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL1, 0x54),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x47),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_CNTRL, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SO_GAIN, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_GM_CAL, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_ENABLES, 0x00),
> +};
> +
>  static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
>  	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
> @@ -4217,6 +4261,35 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
>  	.pwrdn_delay_max	= 1005,		/* us */
>  };
>  
> +static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
> +	.type			= PHY_TYPE_USB3,
> +	.nlanes			= 1,
> +
> +	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
> +	.tx_tbl			= sdx65_usb3_uniphy_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sdx65_usb3_uniphy_tx_tbl),
> +	.rx_tbl			= sdx65_usb3_uniphy_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sdx65_usb3_uniphy_rx_tbl),
> +	.pcs_tbl		= sm8350_usb3_uniphy_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
> +	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= sm8350_usb3_uniphy_regs_layout,
> +
> +	.start_ctrl		= SERDES_START | PCS_START,
> +	.pwrdn_ctrl		= SW_PWRDN,
> +	.phy_status		= PHYSTATUS,
> +
> +	.has_pwrdn_delay	= true,
> +	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
> +	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
> +};
> +
>  static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
>  	.type			= PHY_TYPE_UFS,
>  	.nlanes			= 2,
> @@ -6044,6 +6117,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
>  		.compatible = "qcom,sdx55-qmp-usb3-uni-phy",
>  		.data = &sdx55_usb3_uniphy_cfg,
>  	}, {
> +		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
> +		.data = &sdx65_usb3_uniphy_cfg,
> +	}, {
>  		.compatible = "qcom,sm8350-qmp-usb3-phy",
>  		.data = &sm8350_usb3phy_cfg,
>  	}, {
> -- 
> 2.7.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
