Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F15F2C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 08:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55L+Lpl5GlqLvjXgb0Psil5ceqc3Y8WtBlXNjvwci2U=; b=GRUH8ODHmt/Mp/
	KQKVqj/vPaeMj41BtTdT6dvy/FcjNpfY6ytQ20Wo+Gk4EhlqkXBwx+Db6LJcUMmOZhLsTOIQhbXcB
	jUhlzY8JlZs8ERZxjWgOvCK283MRsMN8S+B4BW92jl/psb5H9KsubvLJAgWA0fc3WBwOElJKOcZif
	LxdFtS9vIuBasPwROcYHQ294ZXYYAzR/uDnktcI+SIznnhGpw2hBlCM/anzdbA1w+wq7oVmTnwsIV
	qLhG4wi3GJ3a7B1GBfYSC46/Y2TZg/bqJIgQ7SUN/9D+2WkRlA69tOkI22G/WivkfNIVzo/7cs+HG
	f6NZkz66rIvV1wMaBSIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt1hi-00000009yjS-2dvZ;
	Sat, 06 Apr 2024 08:47:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt1hf-00000009yit-2KsE
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 08:47:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 418EE60302;
	Sat,  6 Apr 2024 08:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E132C433F1;
	Sat,  6 Apr 2024 08:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712393227;
	bh=dYLFJ2XcoZ5EeH9gvBIcbWgmhhsfMb5eKoiiXY2wux4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GKJk7b9FLST+nvUJ9bc9Jjk96tU9Zal1141Mu0iwXKwVDCQTl1+nQBx76J+z4dpxF
	 cdq7Vwh66/yh1xXxjJUB42nTdC8SeZ+G2MJWL6zx2YfvFl3HE72DhVD0YfuFRwidOP
	 e1DzAGx//wTRqwjvK+hicTCz/rkwscbvmm+CwgCq6Zgk1B54rZwGEFObUYo7TygZSC
	 Ufcd84L4yvZ12KeKkss5WN0jzUnJ24cQ+kbRz6wkQ28/jfB1qNA6H0CrQ7N28hOREM
	 1YlFaUW5xyjHHRoXJ0+WAPD5XNN/RnsmVQu1ob0euftfVRqSMfgr5+QFOuJG87Kgsv
	 Qm0OU+4RtoFuA==
Date: Sat, 6 Apr 2024 14:17:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, ansuelsmth@gmail.com,
	robimarko@gmail.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2
 PHY
Message-ID: <ZhEMB0HP0g1YwPvE@matsya>
References: <20240402192555.1955204-1-mr.nuke.me@gmail.com>
 <20240402192555.1955204-6-mr.nuke.me@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240402192555.1955204-6-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_014711_721226_AF604DE4 
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

On 02-04-24, 14:25, Alexandru Gagniuc wrote:
> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> being reused from IPQ8074 and IPQ6018 PHYs.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>  2 files changed, 149 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 8836bb1ff0cc..f07bd27e3b7a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -487,6 +487,100 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_misc_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
>  };
>  
> +static const struct qmp_phy_init_tbl ipq9574_gen3x2_pcie_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x31),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_IVCO, 0x0F),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TRIM, 0x0F),

Lower case here and everywhere please

> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CMN_CONFIG, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP_EN, 0x42),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_RESETSM_CNTRL, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_TIMER1, 0xFF),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_TIMER2, 0x3F),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE0, 0x68),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE0, 0xAA),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE0, 0xAB),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE0, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE0, 0xD4),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE0, 0x09),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE0, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE0, 0xA0),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE0, 0x24),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV, 0x0A),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x32),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SYS_CLK_CTRL, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_BUF_ENABLE, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_EN_SEL, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TIMER, 0x0A),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE1, 0x53),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE1, 0x29),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE1, 0xAA),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE1, 0x09),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE1, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE1, 0xA0),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE1, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE1, 0xB4),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV_MODE1, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_PER1, 0x7D),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_PER2, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE1_MODE0, 0x0A),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE2_MODE0, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE1_MODE1, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE2_MODE1, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_EP_DIV_MODE0, 0x19),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_EP_DIV_MODE1, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x90),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x89),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x10),
> +};
> +
> +static const struct qmp_phy_init_tbl ipq9574_gen3x2_pcie_pcs_misc_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2, 0x1d),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_EQ_CONFIG1, 0x14),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_EQ_CONFIG1, 0x10),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_EQ_CONFIG2, 0x0b),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_PRESET_P10_PRE, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_PRESET_P10_POST, 0x58),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_CONFIG1, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_CONFIG2, 0x52),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_CONFIG4, 0x19),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG2, 0x49),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG4, 0x2a),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x02),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG6, 0x03),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
> +};
> +
>  static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>  
>  /* list of clocks required by phy */
>  static const char * const qmp_pciephy_clk_l[] = {
> -	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> +	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "anoc", "snoc"

How about older platforms which dont have these clocks

>  };
>  
>  /* list of regulators */
> @@ -2499,6 +2593,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
>  	.rx		= 0x0400,
>  };
>  
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_ipq9574 = {
> +	.serdes		= 0,
> +	.pcs		= 0x1000,
> +	.pcs_misc	= 0x1400,
> +	.tx		= 0x0200,
> +	.rx		= 0x0400,
> +	.tx2		= 0x0600,
> +	.rx2		= 0x0800,
> +};
> +
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
>  	.serdes		= 0,
>  	.pcs		= 0x0a00,
> @@ -2728,6 +2832,33 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>  	.phy_status		= PHYSTATUS,
>  };
>  
> +static const struct qmp_phy_cfg ipq9574_pciephy_gen3x2_cfg = {
> +	.lanes			= 2,
> +
> +	.offsets		= &qmp_pcie_offsets_ipq9574,
> +
> +	.tbls = {
> +		.serdes		= ipq9574_gen3x2_pcie_serdes_tbl,
> +		.serdes_num	= ARRAY_SIZE(ipq9574_gen3x2_pcie_serdes_tbl),
> +		.tx		= ipq8074_pcie_gen3_tx_tbl,
> +		.tx_num		= ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
> +		.rx		= ipq6018_pcie_rx_tbl,
> +		.rx_num		= ARRAY_SIZE(ipq6018_pcie_rx_tbl),
> +		.pcs		= ipq6018_pcie_pcs_tbl,
> +		.pcs_num	= ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
> +		.pcs_misc	= ipq9574_gen3x2_pcie_pcs_misc_tbl,
> +		.pcs_misc_num	= ARRAY_SIZE(ipq9574_gen3x2_pcie_pcs_misc_tbl),
> +	},
> +	.reset_list		= ipq8074_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
> +	.vreg_list		= NULL,
> +	.num_vregs		= 0,
> +	.regs			= pciephy_v4_regs_layout,
> +
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS,
> +};
> +
>  static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>  	.lanes			= 2,
>  
> @@ -3935,6 +4066,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,ipq8074-qmp-pcie-phy",
>  		.data = &ipq8074_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> +		.data = &ipq9574_pciephy_gen3x2_cfg,
>  	}, {
>  		.compatible = "qcom,msm8998-qmp-pcie-phy",
>  		.data = &msm8998_pciephy_cfg,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> index a469ae2a10a1..fa15a03055de 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> @@ -11,8 +11,22 @@
>  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2		0x0c
>  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4		0x14
>  #define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE		0x20
> +#define QPHY_V5_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L	0x44
> +#define QPHY_V5_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H	0x48
> +#define QPHY_V5_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L	0x4c
> +#define QPHY_V5_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H	0x50
>  #define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1		0x54
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_CONFIG1		0x5c
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_CONFIG2		0x60
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_CONFIG4		0x68
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG2		0x7c
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG4		0x84
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5		0x88
> +#define QPHY_V5_PCS_PCIE_OSC_DTCT_MODE2_CONFIG6		0x8c
>  #define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
> +#define QPHY_V5_PCS_PCIE_EQ_CONFIG1			0xa4
>  #define QPHY_V5_PCS_PCIE_EQ_CONFIG2			0xa8
> +#define QPHY_V5_PCS_PCIE_PRESET_P10_PRE			0xc0
> +#define QPHY_V5_PCS_PCIE_PRESET_P10_POST		0xe4
>  
>  #endif
> -- 
> 2.40.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
