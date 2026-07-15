Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D647DC44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 06:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+t6qxTrBeeRQW0A0i4WmGD8nkM73ftqzk/hNNCO5r4=; b=laaFzPGMjTGacH
	o1KALcqWSwuVRRfLyoPZVUJfGTkHo2jnSRKgsEKF4cJADof6/33ZBxmZXnnDBsjXKF+4oLGvynXgX
	PA4Ij1odmVfussnnrHVtqSKFVqX46Qe5e+1jq+ActEvPjqGbEdKj83ayjvsMxk/d7ttBCxHLmo/68
	A4Drl//HAMjC3Z716E1cVSx9fowwfzfjg53xduBOXmpSAu+B860kcHyS/MIo33WpcFqW6eBis2XMY
	9tTjMeI7Hiq8BGFothNud6pE56SXdZa1dHSk6z/qvQ1jImAf0uCFO16sKRRhEHDbUTKVoEHRYCHSU
	m2d7uZ7y2uq6wi4s+4ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtGx-0000000Dv86-1c4c;
	Wed, 15 Jul 2026 06:39:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtGv-0000000Dv79-3utV
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 06:39:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6904943EB2;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41F32C2BCFA;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784097547;
	bh=KNtoNOSTQHj4aRQJjaJ4F7cGHmEF2GRyW0HKh7XpJB0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=iJKk5L1qmIwTMBZrbii+CPlpvdNOJ6CVh4yzv3M0es5eUuozltFvCWKwCQIBpWhzD
	 9zTN+510jy5aOAu2Q4YA3IAXaxc2NlcYNjedZuixX3m0ErN8eM0SbA3Gf6BaHMwWQV
	 Ssv+RD0NkqjQsEUOZpxGftINd9hBsbeM5u4EcEcc7LRyt3NWeA7zm10tLcdVULoqxY
	 b6vn2XnBWy5myYytjHALWHWmRTx89lAqJ2o1ficEAgb/u/cBNsrWqIQ+44GFmXKreL
	 oFSqYgUH6R6SMgd0A8wbFqOYaRUVnDk8ecuCcIqIzqy6CF0/SGjNJ3nf64gncjyRns
	 XZC0WbZHO+6bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B888C4450B;
	Wed, 15 Jul 2026 06:39:07 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Wed, 15 Jul 2026 02:37:48 -0400
Subject: [PATCH v2 3/3] phy: qcom: qmp-pcie: Add support for SM8475 Gen3x1
 PCIe0 port
MIME-Version: 1.0
Message-Id: <20260715-sm8475-bup-pcie-v2-3-48bd91a19abf@proton.me>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
In-Reply-To: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784097545; l=6969;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=mHgoeOun6fcq+EMdXgLO95Oi1B+m8pBC9oBPCl3AEFE=;
 b=zarLZZgGzOeEbOXUeuphFAbOlhoFJmmNm40VCXilZmcSkly4+nZJBdkR4XVj5lRlCcIxGOzET
 8DxWVHsgfuZAqqowr4mQw+DWvxCk4J1YCriIjWiVenZzX5fjWsSLK89
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Esteban Urrutia <esteuwu@proton.me>

This gets the port working. Tested with WCN6856 WLAN capabilities.
Serdes, RX and PCS Misc tables had to be added, while TX and PCS tables
were reused from SM8550, and PCS Lane1 was reused from SAR2130P.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 108 +++++++++++++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 3618812e84d5..47d7196460ee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2454,6 +2454,82 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] =
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
 };
 
+static const struct qmp_phy_init_tbl sm8475_qmp_gen3x1_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xea),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC_3, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xa0),
+};
+
+static const struct qmp_phy_init_tbl sm8475_qmp_gen3x1_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_GM_CAL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH3, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH4, 0xea),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_LOW, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH2, 0x9c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH4, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_LOW, 0xdc),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH, 0x94),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH2, 0x5b),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH4, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_TX_ADAPT_POST_THRESH, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SO_GAIN, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_VGA_CAL_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIDGET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl sm8475_qmp_gen3x1_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+};
+
 static const struct qmp_phy_init_tbl sm8550_qmp_gen3x2_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
@@ -4406,6 +4482,35 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.aux_clock_rate		= 20000000,
 };
 
+static const struct qmp_phy_cfg sm8475_qmp_gen3x1_pciephy_cfg = {
+	.lanes = 1,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tbls = {
+		.serdes		= sm8475_qmp_gen3x1_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8475_qmp_gen3x1_pcie_serdes_tbl),
+		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8475_qmp_gen3x1_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8475_qmp_gen3x1_pcie_rx_tbl),
+		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc	= sm8475_qmp_gen3x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8475_qmp_gen3x1_pcie_pcs_misc_tbl),
+		.pcs_lane1	= sar2130p_qmp_gen3x2_pcie_pcs_lane1_tbl,
+		.pcs_lane1_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_pcs_lane1_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
 	.lanes = 2,
 
@@ -5631,6 +5736,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy",
 		.data = &sm8450_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8475-qmp-gen3x1-pcie-phy",
+		.data = &sm8475_qmp_gen3x1_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy",
 		.data = &sm8550_qmp_gen3x2_pciephy_cfg,

-- 
2.55.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
