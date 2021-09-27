Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E35D5C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 06:48:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB39161165
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 06:48:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AB39161165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdBxwLYtJyVyu6FToMa9fYnwCnuJ9OKXboVZZJWupHU=; b=q9txWZrw3UNrOG
	mVppZISw0e2fP2DP2SVqASo1FuuxVJvK2+lSS0q6wX8Jb+fJT9OOMfI9TB5oZJ2feSLInKF7kVE7O
	21tXR/h5EVTL2kjIgu0REqbfSjKUrPa4ZBKYPGf0dKhSEVe9Io5utNiojk/WME+SIeqIwyHSDyzZw
	Airlvm7yxYGhVS5YdkwSsTKtRFSScnWh2Yx1yhKOYWz/3UBxwrGYFMvlDcaQZ6KWNu1YTrqCeYUog
	uENdX32oj9+IMfe6EtEfcfPrMwDunJjsBp7SClY+JqPBxJQQwvis6iWhVfFU5/ahdNBNs8aLowl7Z
	cvnfAeiuDB67HvawWucQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUkRc-001kJF-92; Mon, 27 Sep 2021 06:48:56 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUkRY-001kHt-Ul
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 06:48:54 +0000
Received: by mail-pl1-x634.google.com with SMTP id x8so8258979plv.8
 for <linux-phy@lists.infradead.org>; Sun, 26 Sep 2021 23:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2CBGHcZ2alvdN18SosjyhBls6tN5FbJlh5W73ibXI6E=;
 b=fXarsXkPsCnpnCD6sTQOw+P3FytFoRsgayzDZtKSUnsxmqe3aIAQQ8NIgUeJnqGmDl
 nRWGo/hZQCkJ/pOUmf05Q47i2uhrnEQha+1kulKIwjjpn+vosUEYJ1bKIhUJq4U7jiMa
 UZ9Tu4dAvnC4xGRdjmKJgHkO1FDMvXYEzkz0N83lf5cT3vG85EwuzqiI/K/fCKfZskvI
 gBdxpqrZtg2T3ZbttI8UGwP1oVPJ76e3JmVqbAwcS28fw1hhkyx2OZsSwoH8YsgxHI8e
 j99dbdo4S+VUxcSmOa97UEanHtJRCHgF8m89pInsrq2VF9fwGJqFOjeZ4kDowCAndT37
 Wsiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2CBGHcZ2alvdN18SosjyhBls6tN5FbJlh5W73ibXI6E=;
 b=Zh3KtS4zL6npeImFjMWrUn7+aGeQItUdCUxFW9Owcz6iy0E0HLUVTEgM1VAF1zNSYH
 9lb4Eg2OHPMZ9ZWbf/N+AyPnv2BV/Fv8oMrJoldPjwmoMg6DED+aDI0Wd8nbOuM7Dgc1
 q9udz5KhYkZjyo9Vup1h5M/i4yB+/Ie4rm2fA0ZX7d0b9m/JBkxwyaZqB6Yzr62jE+B6
 Im/z9hQJqOHZwO8rwWVjbZjVcXhGGkCNUNEcOBN6RSYDMnAJVArGJz23VcToy7VKLEWt
 Y9YzEh2M27sPFxkDFqpK3fv2uhWi4h1e1po8SMaN7Y7wHQCG09SDxP+zaaSyyaKyxN/b
 RcAA==
X-Gm-Message-State: AOAM533wcWWISz/0dUkLIKhvMY3SKig73OHuiSihWXxIZ0oHIrfqd/Uh
 8HCr+0GxFtpCTTNqy7X8wHoE5A==
X-Google-Smtp-Source: ABdhPJwXm3OTgiFlWl2o/AXwibCkC3QZvXM+UfDlTEs/LIPSA9HwQKPawsdiwfeZKwdqg/ehh6BNew==
X-Received: by 2002:a17:90a:ce02:: with SMTP id
 f2mr5340992pju.231.1632725331879; 
 Sun, 26 Sep 2021 23:48:51 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id o16sm17169910pgv.29.2021.09.26.23.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Sep 2021 23:48:51 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/2] phy: qcom-qmp: Add QCM2290 USB3 PHY support
Date: Mon, 27 Sep 2021 14:48:29 +0800
Message-Id: <20210927064829.5752-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210927064829.5752-1-shawn.guo@linaro.org>
References: <20210927064829.5752-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_234853_025654_845540DC 
X-CRM114-Status: GOOD (  13.07  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Enable QCM2290 USB3 PHY support by adding the qmp_phy_cfg data which are
taken from downstream kernel.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 143 ++++++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h |   2 +
 2 files changed, 145 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index f14032170b1c..a39ec8280482 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -135,6 +135,8 @@ enum qphy_reg_layout {
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	/* PCS_MISC registers */
+	QPHY_PCS_MISC_TYPEC_CTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -229,6 +231,16 @@ static const unsigned int sm8350_usb3_uniphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x1014,
 };
 
+static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= 0x00,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_START_CTRL]		= 0x08,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0xd8,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0xdc,
+	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_MISC_TYPEC_CTRL]	= 0x00,
+};
+
 static const unsigned int sdm845_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x00,
 	[QPHY_PCS_READY_STATUS]		= 0x160,
@@ -2761,6 +2773,99 @@ static const struct qmp_phy_init_tbl sm8350_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
+static const struct qmp_phy_init_tbl qcm2290_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0xde),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_INITVAL, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CTRL_BY_PSM, 0x01),
+};
+
+static const struct qmp_phy_init_tbl qcm2290_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_HIGHZ_DRVR_EN, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0xc6),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x00),
+};
+
+static const struct qmp_phy_init_tbl qcm2290_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_VGA_CAL_CNTRL2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_ENABLES, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x00),
+};
+
+static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V0, 0x9f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL2, 0x83),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_H_TOL, 0xa2),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_MAN_CODE, 0x85),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG1, 0xd1),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG2, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG3, 0x47),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME, 0x75),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK, 0x86),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TSYNC_RSYNC_TIME, 0x44),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
+};
+
 struct qmp_phy;
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
@@ -2995,6 +3100,10 @@ static const char * const qmp_v4_sdx55_usbphy_clk_l[] = {
 	"aux", "cfg_ahb", "ref"
 };
 
+static const char * const qcm2290_usb3phy_clk_l[] = {
+	"cfg_ahb", "ref", "com_aux",
+};
+
 /* list of resets */
 static const char * const msm8996_pciephy_reset_l[] = {
 	"phy", "common", "cfg",
@@ -3008,6 +3117,10 @@ static const char * const sc7180_usb3phy_reset_l[] = {
 	"phy",
 };
 
+static const char * const qcm2290_usb3phy_reset_l[] = {
+	"phy_phy", "phy",
+};
+
 static const char * const sdm845_pciephy_reset_l[] = {
 	"phy",
 };
@@ -3974,6 +4087,33 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
+static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
+	.type			= PHY_TYPE_USB3,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.clk_list		= qcm2290_usb3phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qcm2290_usb3phy_clk_l),
+	.reset_list		= qcm2290_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qcm2290_usb3phy_regs_layout,
+
+	.start_ctrl		= SERDES_START | PCS_START,
+	.pwrdn_ctrl		= SW_PWRDN,
+	.phy_status		= PHYSTATUS,
+
+	.is_dual_lane_phy	= true,
+};
+
 static void qcom_qmp_phy_configure_lane(void __iomem *base,
 					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
@@ -5613,6 +5753,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8350-qmp-usb3-uni-phy",
 		.data = &sm8350_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,qcm2290-qmp-usb3-phy",
+		.data = &qcm2290_usb3phy_cfg,
 	},
 	{ },
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index bebeac2c091c..e15f461065bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -169,6 +169,7 @@
 #define QSERDES_COM_BIAS_EN_CTRL_BY_PSM			0x0a8
 #define QSERDES_COM_SYSCLK_EN_SEL			0x0ac
 #define QSERDES_COM_RESETSM_CNTRL			0x0b4
+#define QSERDES_COM_RESETSM_CNTRL2			0x0b8
 #define QSERDES_COM_RESTRIM_CTRL			0x0bc
 #define QSERDES_COM_RESCODE_DIV_NUM			0x0c4
 #define QSERDES_COM_LOCK_CMP_EN				0x0c8
@@ -181,6 +182,7 @@
 #define QSERDES_COM_DIV_FRAC_START1_MODE1		0x0e8
 #define QSERDES_COM_DIV_FRAC_START2_MODE1		0x0ec
 #define QSERDES_COM_DIV_FRAC_START3_MODE1		0x0f0
+#define QSERDES_COM_INTEGLOOP_INITVAL			0x100
 #define QSERDES_COM_INTEGLOOP_GAIN0_MODE0		0x108
 #define QSERDES_COM_INTEGLOOP_GAIN1_MODE0		0x10c
 #define QSERDES_COM_INTEGLOOP_GAIN0_MODE1		0x110
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
