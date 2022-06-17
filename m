Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C205BC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqatMEda668pIJt/5HzhZQPB7vdk0Utu2jDZkMzilXE=; b=oLeafJUIhV5PJX
	BfxTMryvJRPGWXyppXcfbpJdj4FxvFpLcqmMD5V0BGTtrvqeAMe+TuJMWMzJL5xhHi2d/acQ0SUKC
	B9D2TDka4t+q4YfJQDWotga0VR+q/5WzLcQyBnmvsE8NLHHFuU9ZSGkIODj6ll/rsCPl36+IvW6QC
	+rjfadJK1XTi37x1M6gNQsOHVxaAS0sJ1oOaZLnRzRAC2rAqnu+TYmL0c6fR0PBb30MALd8+2ZCoe
	4UWNbunvr7V/srkLJVXUCEXKqJvdzBjCx4bQoXL/+uWDb605Innn0Ezz+NpE8Pfr8kKRhFPiv6+e0
	h4Wte+8YC4Gf00tafhsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zUH-004r1F-02; Fri, 17 Jun 2022 00:05:21 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zUD-004r0Z-Ea
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:05:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F3E30B82687;
	Fri, 17 Jun 2022 00:05:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99BC5C34114;
	Fri, 17 Jun 2022 00:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655424314;
	bh=nQ+ihtv4B0ANNWr1C8kLN0nEJLLZ8HMZdKpTHPzO76s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=du+xfn66iuggiLqqo9lXbM4HIu5gJi3MVMopHWQkEr8L8NF1v1qpwwtAMlDYXiGV6
	 RacroCNLDlPV2ZXMZJQQIGuR8hR9uyC1ikjb5j9/4W6QA8gXtDdbJ2gXEJWhBWUT2F
	 U7wsrod4HYiepQq4KykipulcBCsmpJ7MPBmUNxeGqcUw4RH1y2QrydB50Re9hL3sY9
	 sshWQxxz3JzgXGI5IF8L0s6QOmBiprKksi6kGSbp4V5ZHZoVKJSF8KhmObTc7o4kkZ
	 iL0GnsntrEFw9TIvA5I7TRRcqjC3CpTAGnJXvZTzcCrokWahcXB+7y2diE9TSpjbXi
	 x3HLHxZkf2W4Q==
Date: Thu, 16 Jun 2022 17:05:13 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp: add IPQ8074 PCIe Gen3 QMP PHY support
Message-ID: <YqvFOchsfapJWOfW@matsya>
References: <20220531214420.916278-1-robimarko@gmail.com>
 <20220531214420.916278-2-robimarko@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220531214420.916278-2-robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_170517_822064_9C8A6936 
X-CRM114-Status: GOOD (  21.12  )
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

On 31-05-22, 23:44, Robert Marko wrote:
> IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
> Gen2 one is already supported, so add the support for the Gen3 one.
> It uses the same register layout as IPQ6018.

This needs rebase on split up phy driver.


> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 173 +++++++++++++++++++++++++++-
>  1 file changed, 171 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index b144ae1f729a..7a12c5a92c48 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -824,6 +824,133 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG_L(QPHY_START_CTRL, 0x3),
>  };
>  
> +static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x31),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_IVCO, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TRIM, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CMN_CONFIG, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP_EN, 0x42),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_RESETSM_CNTRL, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_TIMER1, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE_TIMER2, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x21),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE0, 0x82),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE0, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE0, 0x355),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE0, 0x35555),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE0, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE0, 0x1a0a),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE0, 0xb),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE0, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE0, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE0, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE0, 0x24),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV, 0xa),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x32),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SYS_CLK_CTRL, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_BUF_ENABLE, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_EN_SEL, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TIMER, 0xa),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x1),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE1, 0x68),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE1, 0x2),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE1, 0x2aa),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE1, 0x2aaab),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x90),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE1, 0x34),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE1, 0x3414),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE1, 0x0b),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE1, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE1, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE1, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE1, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE1, 0xb4),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x0),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV_MODE1, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_EP_DIV_MODE0, 0x19),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_EP_DIV_MODE1, 0x28),
> +	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x90),
> +};
> +
> +static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_tx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_TX0_RES_CODE_LANE_OFFSET_TX, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_TX0_RCV_DETECT_LVL_2, 0x12),
> +	QMP_PHY_INIT_CFG(QSERDES_TX0_HIGHZ_DRVR_EN, 0x10),
> +	QMP_PHY_INIT_CFG(QSERDES_TX0_LANE_MODE_1, 0x06),
> +};
> +
> +static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_rx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_CNTRL, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_ENABLES, 0x1c),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_DEGLITCH_CNTRL, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL2, 0xe),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL3, 0x4),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL4, 0x1b),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_DFE_EN_TIMER, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_PI_CONTROLS, 0x70),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x73),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_LOW, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH2, 0xc8),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH3, 0x09),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH4, 0xb1),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_LOW, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH2, 0xc8),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH3, 0x09),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH4, 0xb1),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_LOW, 0xf0),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH, 0x2),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH2, 0x2f),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH3, 0xd3),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH4, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_HIGH, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_LOW, 0xc0),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_FO_GAIN, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_GAIN, 0x02),
> +};
> +
> +static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_tbl[] = {
> +	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNTRL2, 0x83),
> +	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNT_VAL_L, 0x9),
> +	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNT_VAL_H_TOL, 0x42),
> +	QMP_PHY_INIT_CFG(PCS_COM_FLL_MAN_CODE, 0x40),
> +	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNTRL1, 0x01),
> +	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_H, 0x0),
> +	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x1),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_ACTIONS, 0x0),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H, 0x00),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_EQ_CONFIG1, 0x11),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_EQ_CONFIG2, 0xb),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_CONFIG2, 0x52),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_MODE2_CONFIG2, 0x50),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_MODE2_CONFIG4, 0x1a),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x6),
> +	QMP_PHY_INIT_CFG(PCS_COM_G12S1_TXDEEMPH_M3P5DB, 0x10),
> +	QMP_PHY_INIT_CFG(PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
> +	QMP_PHY_INIT_CFG(PCS_COM_RX_DCC_CAL_CONFIG, 0x01),
> +	QMP_PHY_INIT_CFG(PCS_COM_RX_SIGDET_LVL, 0xaa),
> +	QMP_PHY_INIT_CFG(PCS_COM_REFGEN_REQ_CONFIG1, 0x0d),
> +};
> +
>  static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>  	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
> @@ -3493,6 +3620,36 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>  	.pwrdn_delay_max	= 1005,		/* us */
>  };
>  
> +static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
> +	.type			= PHY_TYPE_PCIE,
> +	.nlanes			= 1,
> +
> +	.serdes_tbl		= ipq8074_pcie_gen3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
> +	.tx_tbl			= ipq8074_pcie_gen3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
> +	.rx_tbl			= ipq8074_pcie_gen3_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_rx_tbl),
> +	.pcs_tbl		= ipq8074_pcie_gen3_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_tbl),
> +	.clk_list		= ipq8074_pciephy_clk_l,
> +	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
> +	.reset_list		= ipq8074_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
> +	.vreg_list		= NULL,
> +	.num_vregs		= 0,
> +	.regs			= ipq_pciephy_gen3_regs_layout,
> +
> +	.start_ctrl		= SERDES_START | PCS_START,
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +
> +	.has_phy_com_ctrl	= false,
> +	.has_lane_rst		= false,
> +	.has_pwrdn_delay	= true,
> +	.pwrdn_delay_min	= 995,		/* us */
> +	.pwrdn_delay_max	= 1005,		/* us */
> +};
> +
>  static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
>  	.type			= PHY_TYPE_PCIE,
>  	.nlanes			= 1,
> @@ -5568,6 +5725,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
>  {
>  	struct clk_fixed_rate *fixed;
>  	struct clk_init_data init = { };
> +	u32 rate;
>  	int ret;
>  
>  	ret = of_property_read_string(np, "clock-output-names", &init.name);
> @@ -5582,8 +5740,16 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
>  
>  	init.ops = &clk_fixed_rate_ops;
>  
> -	/* controllers using QMP phys use 125MHz pipe clock interface */
> -	fixed->fixed_rate = 125000000;
> +	/*
> +	 * Controllers using QMP PHY-s use 125MHz pipe clock interface
> +	 * unless other frequency is specified in the DTS.
> +	 */
> +	ret = of_property_read_u32(np, "clock-output-rate", &rate);
> +	if (ret)
> +		fixed->fixed_rate = 125000000;
> +	else
> +		fixed->fixed_rate = rate;
> +
>  	fixed->hw.init = &init;
>  
>  	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> @@ -5959,6 +6125,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,ipq8074-qmp-pcie-phy",
>  		.data = &ipq8074_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,ipq8074-qmp-gen3-pcie-phy",
> +		.data = &ipq8074_pciephy_gen3_cfg,
>  	}, {
>  		.compatible = "qcom,ipq6018-qmp-pcie-phy",
>  		.data = &ipq6018_pciephy_cfg,
> -- 
> 2.36.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
