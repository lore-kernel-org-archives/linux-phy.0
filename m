Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06273C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 26 May 2022 01:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyrqTZ6SkPbH9Akyl+DGS6SRmwIpYHhufLGiZHUTiuI=; b=FAkck7Oya+7GkF
	ku3H2j22iCcOfs0i5tv1Hi+FJ96ZMNkiYpkQ+8ZaGBlTG8wNSGcsfSagjvsxUugiwJggRZfFAIanT
	N0HCLxD0SmqYgv8aGS69PBx2wCbzstLP+xlm1pIpW3nvwjFmW/FyfdG6pIPX3b2/8cEz0z7ZmljFP
	m2kB/YfooGfAXVa2S9UGfNS5LgxrK1n3trHw7v9HaeZgr9dn8860YNmqVHHoy0+ii8aNp7run99dg
	miFDeTEbWtECGg2bg7IeeghDC9VQGyKYNn59doHB3Mfdqq7uah2Yd0W39YSL2KUSuO6MZO4TdZFPT
	JkxpuNIR2m8DSD/4Kovw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu1tF-00D8s6-A6; Thu, 26 May 2022 01:02:13 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0u8-00CzFL-RA
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:59:07 +0000
Received: by mail-lf1-x12e.google.com with SMTP id w14so38361442lfl.13
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LhoPPaW8yI5RKjTbnct+8P9Y1lK6Ktrc+JG6ZQ98Vbc=;
        b=wuKQi3jFfC/QC//hjFZKm27Vt9ZsloThE8enFDkbj6Cxfufk/5BfohNcmyMIT+x9jX
         8VoeoxWWWFSmt4KOi+/GUvyaYnMAIHFKpj3YToQE8u5UobRoMLs8g7LEltdxiO7tQy4Z
         992I8en4YhdmZPtnNKlQ7HHM0CTZEM4jbJHT73/VuHhFKcT/bViqw+qHqKuvCQW0M2eU
         huXjOHieq+Nf/14+8YbrT7Q+syMHlhJz7/M6PXQn3zqkBA76Gpp+B7oCyvtCNTj86fM2
         lO8yc6GePDykpl7R9rk7/wl5Pz4zlnPi0/3I5woeRVJ6UkHExisIzkk+h7iciQgewnzb
         E6gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LhoPPaW8yI5RKjTbnct+8P9Y1lK6Ktrc+JG6ZQ98Vbc=;
        b=IEgrF40LbACq3s7qJ5BYZW09U0nee2LRAf2GOPj+u4HcVtXDLCeU+69WBHgnXgfbSK
         Dc+RWym9w61nCok5JeyMIj2llSFI+kuTLnCAcKZ1l8WHATtuNqNnn8/M+q3q0VZbVvDV
         UD3u82Za7jLETcn8kj6t4KdPaZPqfIYhGvRcLJ9YOXwR2xah1OrNuCMTkKXOE9PDOB7z
         Tf6HKNRTfEKmdv4wrLHS+c9/xI8cpgKWbTJ1a+rS1UnrM/tEDJ8hQrYaFCdlH1cFsujW
         ue0LYqewnwOi/Nbp+3yNgbNS/w7trK1Onqz92WZnpkrDsTO5mbYpgiilOQRt61JqlpeH
         Qsew==
X-Gm-Message-State: AOAM530GTz61lEJiK6A5r04Vj1ecRSvCWokeMMdg+uvYb2hCzqhJf43R
	hMxIZ1MNzP1WLF9nLSfxbwMJNg==
X-Google-Smtp-Source: ABdhPJxOAHbYDT98soB0V7lrp6FgYIOSrPi8LmCtIn6IV8PIcvIkug+UmpB+qaPTZIDHe/xqcESyUw==
X-Received: by 2002:a05:6512:3f88:b0:477:c0fe:3383 with SMTP id x8-20020a0565123f8800b00477c0fe3383mr24806489lfa.3.1653523142757;
        Wed, 25 May 2022 16:59:02 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:59:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 19/34] phy: qcom-qmp: move MSM8996 USB PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:26 +0300
Message-Id: <20220525235841.852301-20-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165904_922505_F8775CDA 
X-CRM114-Status: GOOD (  13.39  )
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

Move support for the USB PHY driver on MSM8996 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 131 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c     |  93 -----------------
 2 files changed, 131 insertions(+), 93 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index d2d799f8c81f..bb03b864fe38 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -50,6 +50,133 @@ struct qmp_usb_phy {
 
 #define to_qmp_usb_phy(qphy)	container_of(qphy, struct qmp_usb_phy, base)
 
+static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_FLL_CNTRL1]		= 0xc0,
+	[QPHY_FLL_CNTRL2]		= 0xc4,
+	[QPHY_FLL_CNT_VAL_L]		= 0xc8,
+	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xcc,
+	[QPHY_FLL_MAN_CODE]		= 0xd0,
+	[QPHY_SW_RESET]			= 0x00,
+	[QPHY_START_CTRL]		= 0x08,
+	[QPHY_PCS_STATUS]		= 0x17c,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d4,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0d8,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x178,
+};
+
+static const struct qmp_phy_init_tbl msm8996_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x04),
+	/* PLL and Loop filter settings */
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
+	/* SSC settings */
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0xde),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x07),
+};
+
+static const struct qmp_phy_init_tbl msm8996_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+};
+
+static const struct qmp_phy_init_tbl msm8996_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xbb),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+};
+
+static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
+	/* FLL settings */
+	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL2, 0x03),
+	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_H_TOL, 0x42),
+	QMP_PHY_INIT_CFG_L(QPHY_FLL_MAN_CODE, 0x85),
+
+	/* Lock Det settings */
+	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG1, 0xd1),
+	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG2, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG3, 0x47),
+	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG2, 0x08),
+};
+
+/* list of clocks required by phy */
+static const char * const msm8996_phy_clk_l[] = {
+	"aux", "cfg_ahb", "ref",
+};
+
+/* list of resets */
+static const char * const msm8996_usb3phy_reset_l[] = {
+	"phy", "common",
+};
+
+/* list of regulators */
+static const char * const qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll",
+};
+
+static const struct qmp_phy_usb_cfg msm8996_usb3phy_cfg = {
+	.base = {
+		.type			= PHY_TYPE_USB3,
+		.nlanes			= 1,
+
+		.serdes_tbl		= msm8996_usb3_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(msm8996_usb3_serdes_tbl),
+		.tx_tbl			= msm8996_usb3_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(msm8996_usb3_tx_tbl),
+		.rx_tbl			= msm8996_usb3_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(msm8996_usb3_rx_tbl),
+		.pcs_tbl		= msm8996_usb3_pcs_tbl,
+		.pcs_tbl_num		= ARRAY_SIZE(msm8996_usb3_pcs_tbl),
+		.clk_list		= msm8996_phy_clk_l,
+		.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
+		.reset_list		= msm8996_usb3phy_reset_l,
+		.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+		.vreg_list		= qmp_phy_vreg_l,
+		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+		.regs			= usb3phy_regs_layout,
+
+		.start_ctrl		= SERDES_START | PCS_START,
+		.pwrdn_ctrl		= SW_PWRDN,
+		.phy_status		= PHYSTATUS,
+	},
+};
+
 static int qcom_qmp_phy_com_init(struct qmp_usb_phy *qphy_usb)
 {
 	struct qcom_qmp *qmp = qphy_usb->base.qmp;
@@ -366,6 +493,10 @@ static int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, i
 }
 
 static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
+	{
+		.compatible = "qcom,msm8996-qmp-usb3-phy",
+		.data = &msm8996_usb3phy_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_qmp_phy_usb_of_match_table);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index c6e82d2a5fc1..28a45a73fc1c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -276,77 +276,12 @@ static const struct qmp_phy_init_tbl ipq8074_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0f),
 };
 
-static const struct qmp_phy_init_tbl msm8996_usb3_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x04),
-	/* PLL and Loop filter settings */
-	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
-	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
-	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_CTRL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x15),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x34),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
-	/* SSC settings */
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0xde),
-	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x07),
-};
-
 static const struct qmp_phy_init_tbl msm8996_usb3_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
 	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
 	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
 };
 
-static const struct qmp_phy_init_tbl msm8996_usb3_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xbb),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
-	QMP_PHY_INIT_CFG(QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_LVL, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
-};
-
-static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
-	/* FLL settings */
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL2, 0x03),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL1, 0x02),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_L, 0x09),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_H_TOL, 0x42),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_MAN_CODE, 0x85),
-
-	/* Lock Det settings */
-	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG1, 0xd1),
-	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG2, 0x1f),
-	QMP_PHY_INIT_CFG(QPHY_LOCK_DETECT_CONFIG3, 0x47),
-	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG2, 0x08),
-};
-
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_IVCO, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_EN_SEL, 0x14),
@@ -1781,31 +1716,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
-static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
-
-	.serdes_tbl		= msm8996_usb3_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(msm8996_usb3_serdes_tbl),
-	.tx_tbl			= msm8996_usb3_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(msm8996_usb3_tx_tbl),
-	.rx_tbl			= msm8996_usb3_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(msm8996_usb3_rx_tbl),
-	.pcs_tbl		= msm8996_usb3_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(msm8996_usb3_pcs_tbl),
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= usb3phy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
-};
-
 static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -3847,9 +3757,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	{
 		.compatible = "qcom,ipq8074-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
-	}, {
-		.compatible = "qcom,msm8996-qmp-usb3-phy",
-		.data = &msm8996_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
