Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 115FEC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNBBgSA74fu9C+xSy8Gb0XVV/NrUyZUtZwaZlI9Es+s=; b=k3izSHAzRUE2t5
	xd1DbT1gplI3AJydmX2xRQY9zmJ6V4cpHu26QtIWlnF2Wzb+xlGJ0TEHlM8zBBkTa0rdTYqGk61n5
	Z+I5UCk+ghJG5SPYM3ISFpG58mh4zqkzXTL++Sk/ZgfAbqhI+idULEYyZ/DTwuevlVcZpV0/9WDI2
	ecuiP1nn4cyo5Yvq7vUKPtnGYX6AH1sIhnnHMrEFcHrHwjjIn06lZd3gss07DzJNpjScF044Nn7Zu
	lj9mAhHscJiD7I1k7V52SdhUwPrtp26mQUI/lPHAMXfXnD4DRTo1I/Xkgv8dgpD3FnQC5lMBcyerR
	Wr0NR17hTssLc7xuEAJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ui-00CzMu-GR; Wed, 25 May 2022 23:59:40 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0uh-00CzMJ-9Q
	for linux-phy@bombadil.infradead.org; Wed, 25 May 2022 23:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yOUrIB939vbSvd6BrIxQYH7plKAFuG8mRex4LyqFu9I=; b=T4o8XN0NjC7Cp+exdiRvPcVb3i
	1vmAuesLHEPk27joK/PcJZLqh5Gf9WXbBsLmCYNi590vAs8VyQCarDWMOAP/v8S5PAsLBbJto2gf2
	4kpmPp9ykrh/2gm8MiZBSaLeaCt8imz7GHdWsEA1JfK4UPPCSFWK2mLY2D/BSL/41NdMVWLyMS/uD
	/AaC6RMoUN9c5BG2BeahG0stZfVqbFXtYAeoJgMbjJoQAZ4MSW/MwsZ602npXwr7bQeCxELKk1PYx
	M6NaryL0vclKziFgUAOrAoepoSJC1yVaCBDrYlQvh6L4FjgX1boGbAAJ37Nq0wsZBTp4Zlb1Ayvne
	ZA30bm3A==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0uR-001kvj-Ab
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:59:36 +0000
Received: by mail-lf1-x132.google.com with SMTP id j10so14929827lfe.12
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yOUrIB939vbSvd6BrIxQYH7plKAFuG8mRex4LyqFu9I=;
        b=V6AQTmrP0FHFFtDPo03E790FYfIY/v3WU95c8dstho9Stuk26SebTzY2Rz8ymY6ize
         cPjRdeRg/vUt9tbEX8nuCMwU6E8jNfRmJSCs/xrmOvOr5NhidFA0xc1B99/cDYpYrRgD
         MlXmFVWuQxFQYB+DNDQ94CvJN5NLhV+g6zvBQobWrzNItTTTogouG+G8pmwrhY1BXmm5
         Kmy7d1ab0l+MtkjsBUdMjdtx7Ns6AO2JjjDBRdCrapH18ShV7eEGaq3CXuXMAvtz+zwg
         OEDGxAHJ6rLaS5zXD+R6gZJuOQWYxa9dV7SXVsG7xkwTN+vQVTSsiaQdHIOHWxMufD/q
         n32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yOUrIB939vbSvd6BrIxQYH7plKAFuG8mRex4LyqFu9I=;
        b=5U/70FxdYhQIfBoFNgRVeXMLmDG9QXfA10dsDaBeIKMlagsqHaM4zGCz2pUNMHQMEg
         kflRYxKsJa43o5hU+tNAn5VrGUrecGVSMJIjIFSS0BKBugy1m9lTFNDg39ZVwP89Ym7P
         N2mSpnzf06ERK/xazdfXgDTKqIo5Ga9cXmx5BQDQ+k82SGalRbn7b8Y00fgbIhpbi0XN
         uXuCSmJy1/MbJM8ZHIRRYdWtYF2qTsHM+h2TN1DkNQSM0Z+s7w92MtZXlJ5q3ZqWKQ/o
         lhJGy+3zHWUW5OwIn6+OCm7OI0qDKCVJq2Et7HTWDqBLI/lQNWXdA6m1+x5M5J5xsPgm
         U7ng==
X-Gm-Message-State: AOAM533lmCHBWydBka5N7OY2lRGFSPJt5kKZU+3LLCHUsdj3tdxmUr8P
	zbupcgjSsBKrzMSqGv+SUEvTIQ==
X-Google-Smtp-Source: ABdhPJz1Jfluhb1V//6O+EKA9+CMCUoMW97+5LnndTPpt0zoZbdJXYgKKU/LRUwbXUappPjpBYjMww==
X-Received: by 2002:a05:6512:1311:b0:474:315e:8aaf with SMTP id x17-20020a056512131100b00474315e8aafmr25286384lfu.421.1653523144447;
        Wed, 25 May 2022 16:59:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:59:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 21/34] phy: qcom-qmp: move MSM8998 USB PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:28 +0300
Message-Id: <20220525235841.852301-22-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_005925_343670_191502B1 
X-CRM114-Status: GOOD (  12.06  )
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

Move support for the USB PHY driver on MSM8998 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 150 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c     | 143 ----------------------
 2 files changed, 150 insertions(+), 143 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 74dcf4908dc8..0a132757d610 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -64,6 +64,15 @@ static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x178,
 };
 
+static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= 0x00,
+	[QPHY_START_CTRL]		= 0x08,
+	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
+};
+
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
@@ -216,6 +225,115 @@ static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_POWER_STATE_CONFIG2, 0x08),
 };
 
+static const struct qmp_phy_init_tbl msm8998_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_EN_SEL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_RESETSM_CNTRL2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SVS_MODE_CLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0xea),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE1_MODE0, 0xc9),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_CFG, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_INITVAL, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CMN_MODE, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_ADJ_PER1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_ADJ_PER2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_STEP_SIZE1, 0x85),
+	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_STEP_SIZE2, 0x07),
+};
+
+static const struct qmp_phy_init_tbl msm8998_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_HIGHZ_DRVR_EN, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x00),
+};
+
+static const struct qmp_phy_init_tbl msm8998_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x43),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_ENABLES, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_VGA_CAL_CNTRL2, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x05),
+};
+
+static const struct qmp_phy_init_tbl msm8998_usb3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL2, 0x83),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_H_TOL, 0xa2),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_MAN_CODE, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG1, 0xd1),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG2, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG3, 0x47),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_POWER_STATE_CONFIG2, 0x1b),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V0, 0x9f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V1, 0x9f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V2, 0xb7),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V3, 0x4e),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V4, 0x65),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_LS, 0x6b),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V1, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V2, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V2, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V3, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V3, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V4, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V4, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_LS, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_LS, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RATE_SLEW_CNTRL, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TSYNC_RSYNC_TIME, 0x44),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x8a),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME, 0x75),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK, 0x86),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
+};
+
 /* list of clocks required by phy */
 static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
@@ -285,6 +403,35 @@ static const struct qmp_phy_usb_cfg msm8996_usb3phy_cfg = {
 	},
 };
 
+static const struct qmp_phy_usb_cfg msm8998_usb3phy_cfg = {
+	.base = {
+		.type                   = PHY_TYPE_USB3,
+		.nlanes                 = 1,
+
+		.serdes_tbl             = msm8998_usb3_serdes_tbl,
+		.serdes_tbl_num         = ARRAY_SIZE(msm8998_usb3_serdes_tbl),
+		.tx_tbl                 = msm8998_usb3_tx_tbl,
+		.tx_tbl_num             = ARRAY_SIZE(msm8998_usb3_tx_tbl),
+		.rx_tbl                 = msm8998_usb3_rx_tbl,
+		.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
+		.pcs_tbl                = msm8998_usb3_pcs_tbl,
+		.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
+		.clk_list               = msm8996_phy_clk_l,
+		.num_clks               = ARRAY_SIZE(msm8996_phy_clk_l),
+		.reset_list             = msm8996_usb3phy_reset_l,
+		.num_resets             = ARRAY_SIZE(msm8996_usb3phy_reset_l),
+		.vreg_list              = qmp_phy_vreg_l,
+		.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+		.regs                   = qmp_v3_usb3phy_regs_layout,
+
+		.start_ctrl             = SERDES_START | PCS_START,
+		.pwrdn_ctrl             = SW_PWRDN,
+		.phy_status		= PHYSTATUS,
+
+		.is_dual_lane_phy       = true,
+	},
+};
+
 static int qcom_qmp_phy_com_init(struct qmp_usb_phy *qphy_usb)
 {
 	struct qcom_qmp *qmp = qphy_usb->base.qmp;
@@ -610,6 +757,9 @@ static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8996-qmp-usb3-phy",
 		.data = &msm8996_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,msm8998-qmp-usb3-phy",
+		.data = &msm8998_usb3phy_cfg,
 	},
 	{ },
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index abf22279103b..d35982e69f04 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -486,115 +486,6 @@ static const struct qmp_phy_init_tbl qmp_v3_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_REFGEN_REQ_CONFIG2, 0x60),
 };
 
-static const struct qmp_phy_init_tbl msm8998_usb3_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYSCLK_EN_SEL, 0x14),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SYS_CLK_CTRL, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_RESETSM_CNTRL2, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CMN_CONFIG, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SVS_MODE_CLK_SEL, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DEC_START_MODE0, 0x82),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START1_MODE0, 0xab),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START2_MODE0, 0xea),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_DIV_FRAC_START3_MODE0, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CP_CTRL_MODE0, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_RCTRL_MODE0, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_CCTRL_MODE0, 0x36),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE2_MODE0, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE1_MODE0, 0xc9),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORECLK_DIV_MODE0, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP3_MODE0, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE0, 0x34),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE0, 0x15),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_EN, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CORE_CLK_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP_CFG, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BG_TIMER, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_PLL_IVCO, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_INTEGLOOP_INITVAL, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CMN_MODE, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_EN_CENTER, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_PER1, 0x31),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_PER2, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_ADJ_PER1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_ADJ_PER2, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_STEP_SIZE1, 0x85),
-	QMP_PHY_INIT_CFG(QSERDES_V3_COM_SSC_STEP_SIZE2, 0x07),
-};
-
-static const struct qmp_phy_init_tbl msm8998_usb3_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_HIGHZ_DRVR_EN, 0x10),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_LANE_MODE_1, 0x16),
-	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x00),
-};
-
-static const struct qmp_phy_init_tbl msm8998_usb3_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4e),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x43),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x1c),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x75),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_GAIN, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_ENABLES, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_VGA_CAL_CNTRL2, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x05),
-};
-
-static const struct qmp_phy_init_tbl msm8998_usb3_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL2, 0x83),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_L, 0x09),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_H_TOL, 0xa2),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_MAN_CODE, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL1, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG1, 0xd1),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG2, 0x1f),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG3, 0x47),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_POWER_STATE_CONFIG2, 0x1b),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V0, 0x9f),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V1, 0x9f),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V2, 0xb7),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V3, 0x4e),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V4, 0x65),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_LS, 0x6b),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TX_LARGE_AMP_DRV_LVL, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V1, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V2, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V2, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V3, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V3, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V4, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V4, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_LS, 0x15),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_LS, 0x0d),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RATE_SLEW_CNTRL, 0x02),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x04),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TSYNC_RSYNC_TIME, 0x44),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x8a),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME, 0x75),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK, 0x86),
-	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
-};
-
 static const struct qmp_phy_init_tbl sm8150_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x31),
@@ -1552,10 +1443,6 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
-static const char * const msm8996_phy_clk_l[] = {
-	"aux", "cfg_ahb", "ref",
-};
-
 static const char * const qmp_v3_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",
 };
@@ -1729,33 +1616,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
-static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
-	.type                   = PHY_TYPE_USB3,
-	.nlanes                 = 1,
-
-	.serdes_tbl             = msm8998_usb3_serdes_tbl,
-	.serdes_tbl_num         = ARRAY_SIZE(msm8998_usb3_serdes_tbl),
-	.tx_tbl                 = msm8998_usb3_tx_tbl,
-	.tx_tbl_num             = ARRAY_SIZE(msm8998_usb3_tx_tbl),
-	.rx_tbl                 = msm8998_usb3_rx_tbl,
-	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
-	.pcs_tbl                = msm8998_usb3_pcs_tbl,
-	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.clk_list               = msm8996_phy_clk_l,
-	.num_clks               = ARRAY_SIZE(msm8996_phy_clk_l),
-	.reset_list             = msm8996_usb3phy_reset_l,
-	.num_resets             = ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs                   = qmp_v3_usb3phy_regs_layout,
-
-	.start_ctrl             = SERDES_START | PCS_START,
-	.pwrdn_ctrl             = SW_PWRDN,
-	.phy_status		= PHYSTATUS,
-
-	.is_dual_lane_phy       = true,
-};
-
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -3652,9 +3512,6 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdm845-qmp-usb3-uni-phy",
 		.data = &qmp_v3_usb3_uniphy_cfg,
-	}, {
-		.compatible = "qcom,msm8998-qmp-usb3-phy",
-		.data = &msm8998_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
