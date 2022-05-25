Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5ECCC43217
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h/jYRQvJS+sPUnHtC1iFuDXn/Q6QjOro/6BG/jUZPs=; b=vLludSyZJ652Sz
	SqM4pxPmOdyKyvVNOm0Xo+d6xxgxxps9a06y7ov5xh7ra6ZiwmQOfgSv/0e9IXMcSmmVbcs02LAAG
	Rb1WkdGTjhVSh4JGbN4SBKolW7H9N9j1tP5TaiNNgJXwwXEM0R0ZE+UKECumhPNMlSZMQcLXa3T/e
	cT1zfQNbYkBFauYxkCrCeMSdWTHdm2OmU2MvXNwjAoY59ih2DhhQdtSnxjUU4YUuLRfMZiEq1WmOv
	zaOnveOpIwQzOzbsQC6PCpVk76BWD6gyOs8DqfgG56b1znpwP8g2b3WEJwf8Y33ZKnYviT/V3QY0h
	hV9b585LxibqH3YOLm4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0u1-00CzCK-VZ; Wed, 25 May 2022 23:58:58 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ty-00Cz95-1P
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:58:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bq30so105902lfb.3
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ie1E/+90RrLYvfP4WR5zalXsDVZhiNpppM9EsbxFD5Y=;
        b=nAs/0pXbDTDqfAHNYfKKlzU4U5AJ/qe1hunLENQ4KjKscQ9YZ0uY+eQypVSvmBHwBo
         jPgi8gvn544ckrCu31DgJ6HSBW64k8u+riBHNTGX3QMsqB3XaJHoSV/MS2QZYvNdEv+N
         3VYgm82XJfxj11054HB+ELnlI81JUu9yAyduMCFicBzutZUkKDZZM7dK8a8EjnGGqHbV
         ejA+Gzplm/hGysJwOjpHhJ4GODbp7j6Vnc73YUc8WFf2CrXu8XsXTFULQHComh3ty/T3
         01I+YOElYxEGvZGjdYLEO6gfUEVGGa6X43CjPmj1/wZB1ILogrV5HwSaqSnC9RSQ3blB
         gaLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ie1E/+90RrLYvfP4WR5zalXsDVZhiNpppM9EsbxFD5Y=;
        b=MpUFQnDcsrtD8f2BTkSo+hGVT/BGqzX1is/Oi0SVvim8+E0TQVBq792hc+l+m/QT87
         +0IqoM9/UOnGyl5eiggs2CEe0ef5bbaGD3MSGZaEFn7V4kU2MdxvLyBJxLyPCPZ5Jpm9
         dgSxNZK/H/OimrAKufQImsKdbZ4eQws/3c+orp9yF9tENiPopry4JbUcdu0jdNeXGsnt
         dEHFvRIv6CCNYD4ob6wIHyQXLMdzj/aaO/0NhSndHhgSk3TIrxR0dd5TirsqV/o6+iea
         O80arzH0R9AiWfrw5HJj3RoIyLnVBVP45zWWpB4uI7a4ekUKtUi3Tk1qXrKluUOBuUeT
         V1Qg==
X-Gm-Message-State: AOAM530xeeCVGGkpKpONwjITP/G8vdGQBhtMl8jccPQTPUJPNqOihMij
	+y/sTJMohTJ1jQdaRorZtt9Mr8WNn6lNPw==
X-Google-Smtp-Source: ABdhPJxOlQSjor6utQxzgjIbnlINkcbixzmO10S5y2qSUiFigx7ZLGXafeFfuRf5NW8p0sAErAfsPw==
X-Received: by 2002:a19:dc18:0:b0:478:b167:4e80 with SMTP id t24-20020a19dc18000000b00478b1674e80mr1408209lfg.250.1653523131499;
        Wed, 25 May 2022 16:58:51 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:58:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 08/34] phy: qcom-qmp: move IPQ8074 PCIe PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:15 +0300
Message-Id: <20220525235841.852301-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165854_159551_C219648D 
X-CRM114-Status: GOOD (  12.50  )
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

Move support for the PCIe PHY driver on IPQ8074 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 111 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c      | 136 -----------------------
 2 files changed, 111 insertions(+), 136 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 3dca9ac8f7be..90ad97ed3bb7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -210,6 +210,83 @@ static const struct qmp_phy_init_tbl ipq6018_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(PCS_PCIE_PRESET_P10_POST, 0x58),
 };
 
+static const struct qmp_phy_init_tbl ipq8074_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x3),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0xD),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xD04),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x33),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_BUF_ENABLE, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0xb),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CTRL_BY_PSM, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_EP_DIV, 0x19),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_TX_EMP_POST1_LVL, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_TX_SLEW_CNTL, 0x0a),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x4),
+};
+
+static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_ENDPOINT_REFCLK_DRIVE, 0x4),
+	QMP_PHY_INIT_CFG(QPHY_OSC_DTCT_ACTIONS, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_PWRUP_RESET_DLY_TIME_AUXCLK, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
+	QMP_PHY_INIT_CFG_L(QPHY_PLL_LOCK_CHK_DLY_TIME, 0x73),
+	QMP_PHY_INIT_CFG(QPHY_RX_SIGDET_LVL, 0x99),
+	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M6DB_V0, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M3P5DB_V0, 0xe),
+	QMP_PHY_INIT_CFG_L(QPHY_SW_RESET, 0x0),
+	QMP_PHY_INIT_CFG_L(QPHY_START_CTRL, 0x3),
+};
 static const struct qmp_phy_init_tbl msm8996_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x10),
@@ -796,6 +873,37 @@ static const struct qmp_phy_pcie_cfg ipq6018_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_pcie_cfg ipq8074_pciephy_cfg = {
+	.base = {
+		.type			= PHY_TYPE_PCIE,
+		.nlanes			= 1,
+
+		.serdes_tbl		= ipq8074_pcie_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
+		.tx_tbl			= ipq8074_pcie_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_tx_tbl),
+		.rx_tbl			= ipq8074_pcie_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
+		.pcs_tbl		= ipq8074_pcie_pcs_tbl,
+		.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
+		.clk_list		= ipq_pciephy_clk_l,
+		.num_clks		= ARRAY_SIZE(ipq_pciephy_clk_l),
+		.reset_list		= qmp_pciephy_reset_l,
+		.num_resets		= ARRAY_SIZE(qmp_pciephy_reset_l),
+		.vreg_list		= NULL,
+		.num_vregs		= 0,
+		.regs			= pciephy_regs_layout,
+
+		.start_ctrl		= SERDES_START | PCS_START,
+		.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+		.phy_status		= PHYSTATUS,
+	},
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= 995,		/* us */
+	.pwrdn_delay_max	= 1005,		/* us */
+};
+
 static const struct qmp_phy_pcie_cfg msm8996_pciephy_cfg = {
 	.base = {
 		.type			= PHY_TYPE_PCIE,
@@ -1334,6 +1442,9 @@ static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
 	{
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq8074-qmp-pcie-phy",
+		.data = &ipq8074_pciephy_cfg,
 	}, {
 		.compatible = "qcom,msm8996-qmp-pcie-phy",
 		.data = &msm8996_pciephy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 4529be5fe0cc..2576ccf8ccf1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -146,22 +146,6 @@ static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_READY_STATUS]		= 0x168,
 };
 
-static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_COM_SW_RESET]		= 0x400,
-	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
-	[QPHY_COM_START_CONTROL]	= 0x408,
-	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
-	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
-	[QPHY_FLL_CNTRL1]		= 0xc4,
-	[QPHY_FLL_CNTRL2]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_L]		= 0xcc,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xd0,
-	[QPHY_FLL_MAN_CODE]		= 0xd4,
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-};
-
 static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_FLL_CNTRL1]		= 0xc0,
 	[QPHY_FLL_CNTRL2]		= 0xc4,
@@ -460,84 +444,6 @@ static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG2, 0x08),
 };
 
-static const struct qmp_phy_init_tbl ipq8074_pcie_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x10),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0xf),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x6),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0xf),
-	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0xa),
-	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0xa),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xa),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x3),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0xD),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xD04),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x33),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x2),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_BUF_ENABLE, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0xb),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CTRL_BY_PSM, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x2),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0x2f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x19),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_EP_DIV, 0x19),
-};
-
-static const struct qmp_phy_init_tbl ipq8074_pcie_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
-	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
-	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_TX_EMP_POST1_LVL, 0x36),
-	QMP_PHY_INIT_CFG(QSERDES_TX_SLEW_CNTL, 0x0a),
-};
-
-static const struct qmp_phy_init_tbl ipq8074_pcie_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x4),
-};
-
-static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_ENDPOINT_REFCLK_DRIVE, 0x4),
-	QMP_PHY_INIT_CFG(QPHY_OSC_DTCT_ACTIONS, 0x0),
-	QMP_PHY_INIT_CFG(QPHY_PWRUP_RESET_DLY_TIME_AUXCLK, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB, 0x0),
-	QMP_PHY_INIT_CFG(QPHY_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
-	QMP_PHY_INIT_CFG(QPHY_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
-	QMP_PHY_INIT_CFG_L(QPHY_PLL_LOCK_CHK_DLY_TIME, 0x73),
-	QMP_PHY_INIT_CFG(QPHY_RX_SIGDET_LVL, 0x99),
-	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M6DB_V0, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_TXDEEMPH_M3P5DB_V0, 0xe),
-	QMP_PHY_INIT_CFG_L(QPHY_SW_RESET, 0x0),
-	QMP_PHY_INIT_CFG_L(QPHY_START_CTRL, 0x3),
-};
-
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_IVCO, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_EN_SEL, 0x14),
@@ -2810,45 +2716,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
-static const char * const ipq8074_pciephy_clk_l[] = {
-	"aux", "cfg_ahb",
-};
-/* list of resets */
-static const char * const ipq8074_pciephy_reset_l[] = {
-	"phy", "common",
-};
-
-static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
-	.type			= PHY_TYPE_PCIE,
-	.nlanes			= 1,
-
-	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
-	.tx_tbl			= ipq8074_pcie_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_tx_tbl),
-	.rx_tbl			= ipq8074_pcie_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
-	.pcs_tbl		= ipq8074_pcie_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
-	.reset_list		= ipq8074_pciephy_reset_l,
-	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
-	.vreg_list		= NULL,
-	.num_vregs		= 0,
-	.regs			= pciephy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
-	.phy_status		= PHYSTATUS,
-
-	.has_phy_com_ctrl	= false,
-	.has_lane_rst		= false,
-	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= 995,		/* us */
-	.pwrdn_delay_max	= 1005,		/* us */
-};
-
 static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -5150,9 +5017,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
-	}, {
-		.compatible = "qcom,ipq8074-qmp-pcie-phy",
-		.data = &ipq8074_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
