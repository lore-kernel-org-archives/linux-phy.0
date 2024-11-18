Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5005D4920F
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 11:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJGCgaSi6zKo6eZ90MjsgAtEEAJSCvMHaepUGQbMapU=; b=M3gSZJMUOnAnMl
	zqxZHm5aL2mEeRQSCIU1te3ChSqRG4G2PYsyC4GWQ2IYNo41ek/C9eBCYDzDpPmC1hKr48fqIC1x4
	BR8uavqtqeXHEmAYy7HagS0vioDsVhKAAdIy9YHFcKhfsCU8V7skAhxmxjlZz9xgMSZwcYciW1LXp
	sAChm4lKRqJdSVU6yANj9n6V1c4gNETThpq0wCEX3VHcOAObDmbVeh1hqvVLvHrLt0N33UWTTGuY1
	xAN8uvTAUEN7fuxaQmzm27bHz6cLaiXMs30I/Q9xgt2zqTC67cWPjStJpQQ/+86HiiSMPl/Ium41C
	UHU/oQ0hm2DsNd4/hosQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzin-00000009E1H-1T7x;
	Mon, 18 Nov 2024 11:15:09 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzil-00000009E0S-2cDl
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 11:15:08 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53da209492cso3362882e87.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Nov 2024 03:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731928506; x=1732533306; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ueCD+q2zQmY/7YkNPGnLJZ4H8YDacRal4x3H4VT+8ig=;
        b=IqMgxr27NIepZCgdC45guqv2g4Yy9j2kClgsZc1CtlUR/EL6ngoTXm0S1/Aib2SR4Z
         muWMnFjVN3h767jnLm647fn0Y4UXhlkFqR0QUF2ojqCYEN+Sd6oVkZmzP4chN9oWA9cC
         M90MencUGkiDcfRcMPy/iwWuA3k2x+JTq3K5GXzE1kyD4YP3xTgbkOP3jRgNuRBARzd+
         0vfE14IQbXqSw1IP30iZ6SbSo15s3uw2h/mJjudqV58Nl1GGr43RDdwDuSEZcLD8Z3NA
         nTeMjy3JJHOCYspIG9GyXmS5SlH2VezikMBgXdjMyedbvxrNIf8F7quWOtLv10iV9uSu
         w+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731928506; x=1732533306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ueCD+q2zQmY/7YkNPGnLJZ4H8YDacRal4x3H4VT+8ig=;
        b=QC1Uqi0hKl39CtE5U6RO6GpSoMGJqHU/O6Tn9KaFSUsNcOK3YhnmDtaCLkTv3toOJY
         ltSeTuUjMk7m7fjbjzrlA3qiW1RHa1NhwrxQZZ91VYtN5K/UaJ167Z4O/OMc2fql2xsZ
         aaFBpzbKKlmZ3aGi0BXox4rph9Yrq1Mhnxbw72mb5k0N2t4I46R1flF+KoNGlg9ns+Yw
         PKJZQWHtCZu+EbQkmKpxdh+f4D63Sq4WG9RccdPewQ2JNhqeWbiAz9D1oda7jUfbZelh
         Kwv6VuWVb2ntqlPKv9moVnpqtsOspFJa9nNAYDLsmo9zBkug4W80DjoIn64ywrx7+kwZ
         266A==
X-Forwarded-Encrypted: i=1; AJvYcCWzrdyFEBiuVFfAcvFzb0rGdV/DczZX83vx3kvCvlDVXm07iNmrDCIwBVhyUR/UbBFs4ytF0ZXFQZg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxaAVueN8z1pRzmsJXzI30bZBdj4QL8kk9aAtndP+r7Xkg59dmA
	+Sy9Eyd3NOCbqLH8XLrXjidXlD06KTFPLKYAyxGubHMyGz21e6k+KLYJ/ggsTQc=
X-Google-Smtp-Source: AGHT+IEUgWujqarYJLRGIXqX4efB6WP1xJ2RKrxxUOdVOeuS9AsGg98BIlDWVAaoRlKSwDHri4RUnw==
X-Received: by 2002:ac2:4bc1:0:b0:539:8fcd:524 with SMTP id 2adb3069b0e04-53dab2a6af0mr4788179e87.30.1731928505602;
        Mon, 18 Nov 2024 03:15:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da653e19csm1575151e87.199.2024.11.18.03.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 03:15:04 -0800 (PST)
Date: Mon, 18 Nov 2024 13:15:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH 2/5] phy: qcom: qmp: Add phy register and clk setting for
 QCS615 PCIe
Message-ID: <2rygkimclano4hcgf5vaz7eyuhcqdal5ybnh5eyci3ig2b5jcl@sq5ygemgdhwr>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241118082619.177201-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_031507_666956_0502A776 
X-CRM114-Status: GOOD (  16.89  )
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

On Mon, Nov 18, 2024 at 04:26:16PM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add support for GEN3 x1 PCIe PHY found on Qualcomm QCS615 platform.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 105 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |   1 +
>  2 files changed, 106 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index f71787fb4d7e..df82f95a1fa2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -726,6 +726,83 @@ static const struct qmp_phy_init_tbl ipq9574_gen3x2_pcie_pcs_misc_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
>  };
>  
> +static const struct qmp_phy_init_tbl qcs615_pcie_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x10),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0xf),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x1f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x6),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0xf),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0xa),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x9),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x4),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x3),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0xD),

lowercase the hex. LGTM otherwise.


> +	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x35),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x2),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_BUF_ENABLE, 0x1f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x4),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CTRL_BY_PSM, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0xa),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x2),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0x2f),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x19),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_EP_DIV, 0x19),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_pcie_rx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x4),
> +	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN_HALF, 0x4),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_pcie_tx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
> +	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
> +	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
> +	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
> +};
> +
> +static const struct qmp_phy_init_tbl qcs615_pcie_pcs_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE, 0x4),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_OSC_DTCT_ACTIONS, 0x0),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x40),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB, 0x0),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME, 0x73),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_SIGDET_CNTRL, 0x7),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_LVL, 0x99),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M6DB_V0, 0x15),
> +	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0xe),
> +};
> +
>  static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
> @@ -2963,6 +3040,31 @@ static const struct qmp_phy_cfg ipq9574_gen3x2_pciephy_cfg = {
>  	.pipe_clock_rate	= 250000000,
>  };
>  
> +static const struct qmp_phy_cfg qcs615_pciephy_cfg = {
> +	.lanes			= 1,
> +
> +	.offsets		= &qmp_pcie_offsets_v2,
> +
> +	.tbls = {
> +		.serdes		= qcs615_pcie_serdes_tbl,
> +		.serdes_num	= ARRAY_SIZE(qcs615_pcie_serdes_tbl),
> +		.tx		= qcs615_pcie_tx_tbl,
> +		.tx_num		= ARRAY_SIZE(qcs615_pcie_tx_tbl),
> +		.rx		= qcs615_pcie_rx_tbl,
> +		.rx_num		= ARRAY_SIZE(qcs615_pcie_rx_tbl),
> +		.pcs		= qcs615_pcie_pcs_tbl,
> +		.pcs_num	= ARRAY_SIZE(qcs615_pcie_pcs_tbl),
> +	},
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= pciephy_v2_regs_layout,
> +
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS,
> +};
> +
>  static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
>  	.lanes			= 1,
>  
> @@ -4400,6 +4502,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,msm8998-qmp-pcie-phy",
>  		.data = &msm8998_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,qcs615-qmp-gen3x1-pcie-phy",
> +		.data = &qcs615_pciephy_cfg,
>  	}, {
>  		.compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy",
>  		.data = &sa8775p_qmp_gen4x2_pciephy_cfg,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
> index bf36399d0057..1ecf4b5beba6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
> @@ -34,6 +34,7 @@
>  #define QPHY_V2_PCS_USB_PCS_STATUS			0x17c /* USB */
>  #define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB	0x1a8
>  #define QPHY_V2_PCS_OSC_DTCT_ACTIONS			0x1ac
> +#define QPHY_V2_PCS_SIGDET_CNTRL			0x1b0
>  #define QPHY_V2_PCS_RX_SIGDET_LVL			0x1d8
>  #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
>  #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
