Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1601AC6FA93
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQBCMs6l9Bkd25KLLwRUSRbJmxLYbeMXhZedHfUMVO4=; b=ciDO83S2FBeRLi
	z3NZUHzTopo5KlNfso1N9qmnu9pluCspHqBz2cUGWXJua4Ujqyf5DPGkUbOIMDYa+FaJClrKKgJ2q
	c8RGpPHriGkXrG535BjFPANbvLq/ePykvo7uoO+dumRZWYoU6SVMwQxcc6nYDwsqskgdooycqTATS
	Fp/YIuxh3rr2Go2slwSnezzi37l1ClNrMI2+OfZGxH8OexRgb00O9XgNfn7rWgwmTkCjS8Tkdxy/W
	ETZEITLoc/9TamDnNfXkInZ6fc53IKy2thoGxWGuTQDGhqlMAwzLLmQ9xZElwtN4Doj7nWAYpA14d
	V5kCrR3r6oRaGKO6Gy9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa64-00ExgI-FR; Fri, 09 Sep 2022 09:14:48 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa60-00ExaP-Ql
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:14:46 +0000
Received: by mail-lj1-x236.google.com with SMTP id bn9so1074390ljb.6
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=c6Bo/uoa0XY0JEtnOx/QwekPxbXR192GKM+6+VpQ4dg=;
        b=T/Y/v0IZK72mKXZqSgxNM+cVa0CTnPCbNXrSDc0Qvl79qcxao8NDyKXyKAnuHxLBZ0
         LHIqMCGjxMgQXC0PVweGJibI2qNscfQS4UxfXnmP3Pe2PrSVrui7T0agi7rQercpqd95
         qoVtybPtN9OHWBu4q6/rWBGOKfm1d2XxMJTIpIusMFxkHCN+fePgNtGjUBVet64bzzQo
         SDLxtK65U4VZqt2eClwVP4t0+7W7lVr207gpiKn4SrW22jLz1bQNgToXrvXRYgC0BtsB
         bVBNg19F1haQkjDvlx7WuNdafC06i/f0D9JUwU1VPEfepYm40hRHZ1Ro+bryZkmCA3no
         /HCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=c6Bo/uoa0XY0JEtnOx/QwekPxbXR192GKM+6+VpQ4dg=;
        b=NzZT0HbHwfbrsIPpurCqmbn9zi+Ossh7xdLtIE23tREhNjluwqgImHKwNj0aUnaO0e
         rDQvAcDCjaVZ3pI6nyeywD9jVSMgBkKm40XOBUAq+cmNiGwJnPM6UU2pLU3oVMS0eiRL
         /eabsLT6PFS3hLhrqMuNiH52Dt/WMJRPVdWp+WG2qi8s0PRR++r75OE/YppPGDdM1cN7
         GhJIj0a+KmuMzC0oAyicsmol2CxnOb+PdLxxGbhEEifSRyaOLHabIZPeNBqXQTjZFzSv
         8FlmRS+8ylmIqE6i5utuPoqyL+IwTCpE45wpQnnVGp+NwXh74ldUURl92kE+IW7speor
         MLaA==
X-Gm-Message-State: ACgBeo3qSHdUbP3l47EqcP8wQeC0nW1TrZnTRx95WSV5dfZAlNmpfmrS
	+gg3jqT3HeuQbC+rp6p9LhJUcw==
X-Google-Smtp-Source: AA6agR5UduAA1QJ3K0GJ05p6BcClCZndDN9i4HfZ2IhJLgcyNF2WunegL9LNoQHv/tmL9kxQUgCneQ==
X-Received: by 2002:a05:651c:1108:b0:26b:e28a:535f with SMTP id e8-20020a05651c110800b0026be28a535fmr766859ljo.261.1662714881456;
        Fri, 09 Sep 2022 02:14:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z26-20020a2e4c1a000000b0026acbb6ed1asm201615lja.66.2022.09.09.02.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:14:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 7/9] phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode
Date: Fri,  9 Sep 2022 12:14:31 +0300
Message-Id: <20220909091433.3715981-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021444_924324_3B3E6A5C 
X-CRM114-Status: GOOD (  12.09  )
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

Add support for using PCIe1 (gen4x2) in EP mode on SM8450. The tables to
program are mostly common with the RC mode tables, so only register
difference are split into separate RC and EP tables.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 78 +++++++++++++++----
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |  1 +
 2 files changed, 64 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d945e8c61811..423639f2244f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1228,15 +1228,29 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_pcs_misc_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MISC1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MODE, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_DC_LEVEL_CTRL, 0x0f),
+};
+
+static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rc_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_PER1, 0x31),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_PER2, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE1_MODE0, 0xde),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE0, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE1_MODE1, 0x97),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE1, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x16),
@@ -1244,8 +1258,6 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP_EN, 0x46),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP_CFG, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0x0a),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0x14),
@@ -1258,17 +1270,8 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START1_MODE1, 0x55),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START2_MODE1, 0x55),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_DIV_FRAC_START3_MODE1, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_HS_SWITCH_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE1, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MISC1, 0x88),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORE_CLK_EN, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_CONFIG, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MODE, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_DC_LEVEL_CTRL, 0x0f),
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_tx_tbl[] = {
@@ -1336,14 +1339,44 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_EQ_CONFIG1, 0x16),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3, 0x28),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
 };
 
+static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rc_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+};
+
+static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BG_TIMER, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYS_CLK_CTRL, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x27),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE1, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE0, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORE_CLK_EN, 0x60),
+};
+
+static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
+};
+
 struct qmp_phy;
 
 struct qmp_phy_cfg_tables {
@@ -1922,6 +1955,21 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.pcs_misc_tbl		= sm8450_qmp_gen4x2_pcie_pcs_misc_tbl,
 	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_pcs_misc_tbl),
 	},
+
+	.secondary_rc = &(struct qmp_phy_cfg_tables) {
+	.serdes_tbl		= sm8450_qmp_gen4x2_pcie_rc_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_rc_serdes_tbl),
+	.pcs_misc_tbl		= sm8450_qmp_gen4x2_pcie_rc_pcs_misc_tbl,
+	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_rc_pcs_misc_tbl),
+	},
+
+	.secondary_ep = &(struct qmp_phy_cfg_tables) {
+	.serdes_tbl		= sm8450_qmp_gen4x2_pcie_ep_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_serdes_tbl),
+	.pcs_misc_tbl		= sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
+	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
+	},
+
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
index 1eedf50cf9cb..c9fa90b45475 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -8,6 +8,7 @@
 
 /* Only for QMP V5_20 PHY - PCIe PCS registers */
 #define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5	0x084
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
 #define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1			0x0a0
 #define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
