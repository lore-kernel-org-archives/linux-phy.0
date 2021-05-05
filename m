Return-Path: <SRS0=jd0v=KA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74B8C43619
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:20:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0390C613F6
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:20:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0390C613F6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cMt0PwnKIXHOVQjLcC9TJ6wF3LMnVgUBrgFdh1+FTHY=; b=eo26xJNheAUv/Zv6Veui5a8Mm
	wsfBIfzOs/MgSa+bW8g8jQADbTNoInMjYJQ5GmXAkiI4T2zUzDbIEZF6ch46GKOiSaatiXN4rzgjG
	Nql2e+iYueqBhCJQD7BUZJ+hf0QVg4h7r+rx1q+NF4Se591ACPSl04Hh1JBoiKRFHCybejRZzPkZx
	L+ytDYwoFw8UO0IuBBPiJjLze69PtUoIoPlnyNCyGjNJt+sCYSQkSCO/cwKc5eTQ8clTVJOWtgEIf
	lem32kXv0QT+xCcmv6cAtPLMHDPfuQiGHAmbmPVoxWbkAuzf4tvtwg4xsb27fC4In2oiBJzkvKd9u
	XbBqN9M+w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leDhP-000hMk-Oj; Wed, 05 May 2021 09:20:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDgF-000hCu-CR; Wed, 05 May 2021 09:18:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=NiP55C1+pG2s4T8min8ANC1IscqSbaQt7Lb8HemAS8o=; b=n3ei17W2de41StmMVzDWGb5723
 QCRYFvCMbbvLJd+xxi02bgQWmBVR9Tb7OxarvxxxDphNRzaHSdg/1++xHBXNWEoiBDiyhc+D/bBnd
 FTNk5juW9pWn31MFBzyo+AZRUJIiMhqz/l2ULguIzNXcujMHZGPi5zRYb3H/8wg0KxEtgZoenFFAZ
 5lm2Jj1wMMJPQCybEIEkFbZWMSynP+c/5NYEfl+KcwAcHZXnz9dpbB+zwniECCB4KNjJEYEBdCVVc
 CRb6gTGxUZZiRTdO1EBPzEJXa3Uv4Uig+Tp71mkiqzcJyWO2q0kuBkrKFd6GfPmZtTcjpbrdCVTIl
 YGT/LTHA==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDg9-004bRx-CB; Wed, 05 May 2021 09:18:54 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 5C7D1440883;
 Wed,  5 May 2021 12:18:38 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Baruch Siach <baruch@tkos.co.il>, Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH v2 3/6] phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx
Date: Wed,  5 May 2021 12:18:31 +0300
Message-Id: <e24f2bedb8a7346018b58136bcb0a4004d8677a0.1620203062.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620203062.git.baruch@tkos.co.il>
References: <cover.1620203062.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_021851_267226_2FF1FA78 
X-CRM114-Status: GOOD (  12.52  )
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

From: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>

Based on code from downstream Codeaurora tree. The ipq60xx has one gen3
PCIe port.

Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 147 ++++++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h | 132 +++++++++++++++++++++++++
 2 files changed, 279 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 9cdebe7f26cb..9f3148136789 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -143,6 +143,13 @@ static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_READY_STATUS]		= 0x168,
 };
 
+static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]				= 0x00,
+	[QPHY_START_CTRL]			= 0x44,
+	[QPHY_PCS_STATUS]			= 0x14,
+	[QPHY_PCS_POWER_DOWN_CONTROL]		= 0x40,
+};
+
 static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_SW_RESET]		= 0x400,
 	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
@@ -614,6 +621,113 @@ static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG2, 0x08),
 };
 
+static const struct qmp_phy_init_tbl ipq6018_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_PER1, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE1_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE2_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE1_MODE1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_STEP_SIZE2_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYS_CLK_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_BUF_ENABLE, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE0, 0xd4),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE1, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE1, 0x29),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE0, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE1, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE0, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE1, 0x53),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DIV_FRAC_START3_MODE1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE0, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE1, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE1, 0xb4),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CLK_SELECT, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV_MODE1, 0x08),
+};
+
+static const struct qmp_phy_init_tbl ipq6018_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX0_RES_CODE_LANE_OFFSET_TX, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_TX0_LANE_MODE_1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_TX0_RCV_DETECT_LVL_2, 0x12),
+};
+
+static const struct qmp_phy_init_tbl ipq6018_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_FO_GAIN, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_GAIN, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_UCDR_PI_CONTROLS, 0x70),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL2, 0x61),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL4, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x73),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_LOW, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH2, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH3, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_00_HIGH4, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_LOW, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_01_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_RX_MODE_10_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_RX0_DFE_EN_TIMER, 0x04),
+};
+
+static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(PCS_COM_FLL_CNTRL1, 0x01),
+	QMP_PHY_INIT_CFG(PCS_COM_REFGEN_REQ_CONFIG1, 0x0d),
+	QMP_PHY_INIT_CFG(PCS_COM_G12S1_TXDEEMPH_M3P5DB, 0x10),
+	QMP_PHY_INIT_CFG(PCS_COM_RX_SIGDET_LVL, 0xaa),
+	QMP_PHY_INIT_CFG(PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(PCS_COM_RX_DCC_CAL_CONFIG, 0x01),
+	QMP_PHY_INIT_CFG(PCS_COM_EQ_CONFIG5, 0x01),
+	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG2, 0x0d),
+	QMP_PHY_INIT_CFG(PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(PCS_PCIE_EQ_CONFIG1, 0x11),
+	QMP_PHY_INIT_CFG(PCS_PCIE_PRESET_P10_PRE, 0x00),
+	QMP_PHY_INIT_CFG(PCS_PCIE_PRESET_P10_POST, 0x58),
+};
+
 static const struct qmp_phy_init_tbl ipq8074_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x10),
@@ -2646,6 +2760,36 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
+	.type			= PHY_TYPE_PCIE,
+	.nlanes			= 1,
+
+	.serdes_tbl		= ipq6018_pcie_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
+	.tx_tbl			= ipq6018_pcie_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(ipq6018_pcie_tx_tbl),
+	.rx_tbl			= ipq6018_pcie_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(ipq6018_pcie_rx_tbl),
+	.pcs_tbl		= ipq6018_pcie_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
+	.clk_list		= ipq8074_pciephy_clk_l,
+	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
+	.reset_list		= ipq8074_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
+	.vreg_list		= NULL,
+	.num_vregs		= 0,
+	.regs			= ipq_pciephy_gen3_regs_layout,
+
+	.start_ctrl		= SERDES_START | PCS_START,
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+
+	.has_phy_com_ctrl	= false,
+	.has_lane_rst		= false,
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= 995,		/* us */
+	.pwrdn_delay_max	= 1005,		/* us */
+};
+
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
@@ -4532,6 +4676,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,ipq8074-qmp-pcie-phy",
 		.data = &ipq8074_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq6018-qmp-pcie-phy",
+		.data = &ipq6018_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sc7180-qmp-usb3-phy",
 		.data = &sc7180_usb3phy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 71ce3aa174ae..bd8f9637b4d0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -6,6 +6,138 @@
 #ifndef QCOM_PHY_QMP_H_
 #define QCOM_PHY_QMP_H_
 
+/* QMP V2 PHY for PCIE gen3 ports - QSERDES PLL registers */
+
+#define QSERDES_PLL_BG_TIMER				0x00c
+#define QSERDES_PLL_SSC_PER1				0x01c
+#define QSERDES_PLL_SSC_PER2				0x020
+#define QSERDES_PLL_SSC_STEP_SIZE1_MODE0		0x024
+#define QSERDES_PLL_SSC_STEP_SIZE2_MODE0		0x028
+#define QSERDES_PLL_SSC_STEP_SIZE1_MODE1		0x02c
+#define QSERDES_PLL_SSC_STEP_SIZE2_MODE1		0x030
+#define QSERDES_PLL_BIAS_EN_CLKBUFLR_EN			0x03c
+#define QSERDES_PLL_CLK_ENABLE1				0x040
+#define QSERDES_PLL_SYS_CLK_CTRL			0x044
+#define QSERDES_PLL_SYSCLK_BUF_ENABLE			0x048
+#define QSERDES_PLL_PLL_IVCO				0x050
+#define QSERDES_PLL_LOCK_CMP1_MODE0			0x054
+#define QSERDES_PLL_LOCK_CMP2_MODE0			0x058
+#define QSERDES_PLL_LOCK_CMP1_MODE1			0x060
+#define QSERDES_PLL_LOCK_CMP2_MODE1			0x064
+#define QSERDES_PLL_BG_TRIM				0x074
+#define QSERDES_PLL_CLK_EP_DIV_MODE0			0x078
+#define QSERDES_PLL_CLK_EP_DIV_MODE1			0x07c
+#define QSERDES_PLL_CP_CTRL_MODE0			0x080
+#define QSERDES_PLL_CP_CTRL_MODE1			0x084
+#define QSERDES_PLL_PLL_RCTRL_MODE0			0x088
+#define QSERDES_PLL_PLL_RCTRL_MODE1			0x08C
+#define QSERDES_PLL_PLL_CCTRL_MODE0			0x090
+#define QSERDES_PLL_PLL_CCTRL_MODE1			0x094
+#define QSERDES_PLL_BIAS_EN_CTRL_BY_PSM			0x0a4
+#define QSERDES_PLL_SYSCLK_EN_SEL			0x0a8
+#define QSERDES_PLL_RESETSM_CNTRL			0x0b0
+#define QSERDES_PLL_LOCK_CMP_EN				0x0c4
+#define QSERDES_PLL_DEC_START_MODE0			0x0cc
+#define QSERDES_PLL_DEC_START_MODE1			0x0d0
+#define QSERDES_PLL_DIV_FRAC_START1_MODE0		0x0d8
+#define QSERDES_PLL_DIV_FRAC_START2_MODE0		0x0dc
+#define QSERDES_PLL_DIV_FRAC_START3_MODE0		0x0e0
+#define QSERDES_PLL_DIV_FRAC_START1_MODE1		0x0e4
+#define QSERDES_PLL_DIV_FRAC_START2_MODE1		0x0e8
+#define QSERDES_PLL_DIV_FRAC_START3_MODE1		0x0eC
+#define QSERDES_PLL_INTEGLOOP_GAIN0_MODE0		0x100
+#define QSERDES_PLL_INTEGLOOP_GAIN1_MODE0		0x104
+#define QSERDES_PLL_INTEGLOOP_GAIN0_MODE1		0x108
+#define QSERDES_PLL_INTEGLOOP_GAIN1_MODE1		0x10c
+#define QSERDES_PLL_VCO_TUNE_MAP			0x120
+#define QSERDES_PLL_VCO_TUNE1_MODE0			0x124
+#define QSERDES_PLL_VCO_TUNE2_MODE0			0x128
+#define QSERDES_PLL_VCO_TUNE1_MODE1			0x12c
+#define QSERDES_PLL_VCO_TUNE2_MODE1			0x130
+#define QSERDES_PLL_VCO_TUNE_TIMER1			0x13c
+#define QSERDES_PLL_VCO_TUNE_TIMER2			0x140
+#define QSERDES_PLL_CLK_SELECT				0x16c
+#define QSERDES_PLL_HSCLK_SEL				0x170
+#define QSERDES_PLL_CORECLK_DIV				0x17c
+#define QSERDES_PLL_CORE_CLK_EN				0x184
+#define QSERDES_PLL_CMN_CONFIG				0x18c
+#define QSERDES_PLL_SVS_MODE_CLK_SEL			0x194
+#define QSERDES_PLL_CORECLK_DIV_MODE1			0x1b4
+
+/* QMP V2 PHY for PCIE gen3 ports - QSERDES TX registers */
+
+#define QSERDES_TX0_RES_CODE_LANE_OFFSET_TX		0x03c
+#define QSERDES_TX0_HIGHZ_DRVR_EN			0x058
+#define QSERDES_TX0_LANE_MODE_1				0x084
+#define QSERDES_TX0_RCV_DETECT_LVL_2			0x09c
+
+/* QMP V2 PHY for PCIE gen3 ports - QSERDES RX registers */
+
+#define QSERDES_RX0_UCDR_FO_GAIN			0x008
+#define QSERDES_RX0_UCDR_SO_GAIN			0x014
+#define QSERDES_RX0_UCDR_SO_SATURATION_AND_ENABLE	0x034
+#define QSERDES_RX0_UCDR_PI_CONTROLS			0x044
+#define QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL2		0x0ec
+#define QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL3		0x0f0
+#define QSERDES_RX0_RX_EQU_ADAPTOR_CNTRL4		0x0f4
+#define QSERDES_RX0_RX_IDAC_TSETTLE_LOW			0x0f8
+#define QSERDES_RX0_RX_IDAC_TSETTLE_HIGH		0x0fc
+#define QSERDES_RX0_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
+#define QSERDES_RX0_RX_OFFSET_ADAPTOR_CNTRL2		0x114
+#define QSERDES_RX0_SIGDET_ENABLES			0x118
+#define QSERDES_RX0_SIGDET_CNTRL			0x11c
+#define QSERDES_RX0_SIGDET_DEGLITCH_CNTRL		0x124
+#define QSERDES_RX0_RX_MODE_00_LOW			0x170
+#define QSERDES_RX0_RX_MODE_00_HIGH			0x174
+#define QSERDES_RX0_RX_MODE_00_HIGH2			0x178
+#define QSERDES_RX0_RX_MODE_00_HIGH3			0x17c
+#define QSERDES_RX0_RX_MODE_00_HIGH4			0x180
+#define QSERDES_RX0_RX_MODE_01_LOW			0x184
+#define QSERDES_RX0_RX_MODE_01_HIGH			0x188
+#define QSERDES_RX0_RX_MODE_01_HIGH2			0x18c
+#define QSERDES_RX0_RX_MODE_01_HIGH3			0x190
+#define QSERDES_RX0_RX_MODE_01_HIGH4			0x194
+#define QSERDES_RX0_RX_MODE_10_LOW			0x198
+#define QSERDES_RX0_RX_MODE_10_HIGH			0x19c
+#define QSERDES_RX0_RX_MODE_10_HIGH2			0x1a0
+#define QSERDES_RX0_RX_MODE_10_HIGH3			0x1a4
+#define QSERDES_RX0_RX_MODE_10_HIGH4			0x1a8
+#define QSERDES_RX0_DFE_EN_TIMER			0x1b4
+
+/* QMP V2 PHY for PCIE gen3 ports - PCS registers */
+
+#define PCS_COM_FLL_CNTRL1				0x098
+#define PCS_COM_FLL_CNTRL2				0x09c
+#define PCS_COM_FLL_CNT_VAL_L				0x0a0
+#define PCS_COM_FLL_CNT_VAL_H_TOL			0x0a4
+#define PCS_COM_FLL_MAN_CODE				0x0a8
+#define PCS_COM_REFGEN_REQ_CONFIG1			0x0dc
+#define PCS_COM_G12S1_TXDEEMPH_M3P5DB			0x16c
+#define PCS_COM_RX_SIGDET_LVL				0x188
+#define PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_L		0x1a4
+#define PCS_COM_P2U3_WAKEUP_DLY_TIME_AUXCLK_H		0x1a8
+#define PCS_COM_RX_DCC_CAL_CONFIG			0x1d8
+#define PCS_COM_EQ_CONFIG5				0x1ec
+
+/* QMP V2 PHY for PCIE gen3 ports - PCS Misc registers */
+
+#define PCS_PCIE_POWER_STATE_CONFIG2			0x40c
+#define PCS_PCIE_POWER_STATE_CONFIG4			0x414
+#define PCS_PCIE_ENDPOINT_REFCLK_DRIVE			0x41c
+#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L		0x440
+#define PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H		0x444
+#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L		0x448
+#define PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H		0x44c
+#define PCS_PCIE_OSC_DTCT_CONFIG2			0x45c
+#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG2			0x478
+#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG4			0x480
+#define PCS_PCIE_OSC_DTCT_MODE2_CONFIG5			0x484
+#define PCS_PCIE_OSC_DTCT_ACTIONS			0x490
+#define PCS_PCIE_EQ_CONFIG1				0x4a0
+#define PCS_PCIE_EQ_CONFIG2				0x4a4
+#define PCS_PCIE_PRESET_P10_PRE				0x4bc
+#define PCS_PCIE_PRESET_P10_POST			0x4e0
+
 /* Only for QMP V2 PHY - QSERDES COM registers */
 #define QSERDES_COM_BG_TIMER				0x00c
 #define QSERDES_COM_SSC_EN_CENTER			0x010
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
