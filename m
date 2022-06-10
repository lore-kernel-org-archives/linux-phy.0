Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9DB6C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP+8GiyRGJOY1oGatDo4yNjIF66n22GwTo5fnJwmmx4=; b=WfwsT6IoXIEkkN
	Pn/BVIxEXRtqT/WCmj4lLpPNH3LtYMGLUH6KXOmxNMhV7Y0pz7pKU0t0GtEVaVdywy+c9JBDZjzbG
	MxJCCGBt22GUlvYpIrtTctirOVzqZLa5C4RLP4/4WwPRnmB4VNW3H56Llh8Lf2fnu3jDoDzns6b+6
	1w/feb5saEio8MbBNpO2VXYjIEnmhb4Hl4TjW5ieEf3u1G6acV/PekH+Oz8uC4LfuS3CO12ucSM3U
	giW9Lb4dHfZTLxzza4ZIuF5oceU0Omjuy4KYBx8CoXpdNujdJUkI4Md+Ukq5y9agzeJNOyCNkybmh
	DjXpMzIW90vz5j9HrYmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0q-009Unq-7e; Fri, 10 Jun 2022 19:09:40 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0k-009Ukc-Pk
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:38 +0000
Received: by mail-lf1-x12a.google.com with SMTP id w20so22586035lfa.11
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a4iBZc17QADuyCrAg/z3fnS1HZE1Q/gA1LJ5A4OpVeQ=;
        b=riPJ42JljsNCQ/0IzqP8L7mTnnOmUMGmpCS8FTqBHIkT/GZv1X/MfE8+iKiWnE93b+
         cSevZPBjMbs6lqZUudPvvVYPNN3Rbspl4My2BMvHfElYaqV9Luhj4EMNvhBb1R87nRzj
         fnERjMb1+fRqINJO9TEvjKakztij1AiHb4cSSVguEhpzXzziA5/ysR+GnadLzXgq/pd4
         iS1EW0JfyvaQvfJMRSGuLLw3vHNvqNRMRTVeS2FXd/klZulPfPQufxFKe/rB2AIFiPaf
         gx3YVN5AJiwBZ2Vah07nal/yDm3j+CvkB/ab6kdxC0DSKFdx4BqSys0RGJiPkdSjlN6j
         LFgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a4iBZc17QADuyCrAg/z3fnS1HZE1Q/gA1LJ5A4OpVeQ=;
        b=S9M6zz2uD2e4/PESzlQw5fAzjKpF8bN9pZU0ASzIsjvRhn1dOW9vmac2JM7ZIT4kDL
         QRwKadsyJqjclZWSP9zaU8/Gbbv+nRXMdLqxl8LbwysDH5Yh21kQB6F3buJelT0sA50Z
         LrKosuGnN1SyTvHO0sc8sMXFis2YjTvTWJTMjvfjrvehn4wVFIhB0klTS636abQ6pOYz
         P2mYrDPCLz3MAWubiqf86FsQzs1PAhxgUc6iR69x0GYUjb/Es2IkSUdOKWkbHABQsNu1
         3JTFh+qdzh3/NKR3DmE+rPRhxkrcPh9shrk9Y+RS6Q7saFPVX0aQJgeg3wXo6M3S/UXA
         mRdA==
X-Gm-Message-State: AOAM5328m+sCcbXlv10qyrppegj5YfqA2e0tMb6u7pWAjKRepDHG1Oh4
	hk3FNlgxlqI30pN0wAXTP3itCzmcbE6Nxrgc
X-Google-Smtp-Source: ABdhPJwCQqgDFK+zBrHzxGpt0Q0oP2iI43+3PI+QuGI1ES6muXyGrunJUvTki7illVU3Q5yDph8bSA==
X-Received: by 2002:a05:6512:545:b0:479:b15:6671 with SMTP id h5-20020a056512054500b004790b156671mr28165090lfl.579.1654888172126;
        Fri, 10 Jun 2022 12:09:32 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 03/28] phy: qcom-qmp-combo,usb: add support for separate PCS_USB region
Date: Fri, 10 Jun 2022 22:09:00 +0300
Message-Id: <20220610190925.3670081-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120934_879744_2613DA75 
X-CRM114-Status: GOOD (  17.01  )
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

Different QMP USB PHYs might have different offset from PCS to PCS_USB
register space, but the same PCS_USB register layout. Add separate
PCS_USB region space and merge related PCS_USB definitions.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  47 +++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 118 ++++++++++++++--------
 drivers/phy/qualcomm/phy-qcom-qmp.h       | 106 +++++++++----------
 3 files changed, 163 insertions(+), 108 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 893b5a4bb554..fd7a9c25f27d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -155,8 +155,10 @@ static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x44,
 	[QPHY_PCS_STATUS]		= 0x14,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x308,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x314,
+
+	/* In PCS_USB */
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x008,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x014,
 };
 
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
@@ -451,6 +453,9 @@ static const struct qmp_phy_init_tbl sm8150_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl sm8150_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
@@ -520,6 +525,9 @@ static const struct qmp_phy_init_tbl sm8250_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
@@ -622,6 +630,8 @@ struct qmp_phy_cfg {
 	int rx_tbl_num;
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
+	const struct qmp_phy_init_tbl *pcs_usb_tbl;
+	int pcs_usb_tbl_num;
 
 	/* Init sequence for DP PHY block link rates */
 	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
@@ -667,6 +677,10 @@ struct qmp_phy_cfg {
 	bool has_phy_dp_com_ctrl;
 	/* true, if PHY has secondary tx/rx lanes to be configured */
 	bool is_dual_lane_phy;
+
+	/* Offset from PCS to PCS_USB region */
+	unsigned int pcs_usb_offset;
+
 };
 
 struct qmp_phy_combo_cfg {
@@ -686,6 +700,7 @@ struct qmp_phy_combo_cfg {
  * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
  * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
  * @pcs_misc: iomapped memory space for lane's pcs_misc
+ * @pcs_usb: iomapped memory space for lane's pcs_usb
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
@@ -705,6 +720,7 @@ struct qmp_phy {
 	void __iomem *tx2;
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_usb;
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
@@ -898,6 +914,8 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8150_usb3_rx_tbl),
 	.pcs_tbl		= sm8150_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8150_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -905,6 +923,7 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -971,6 +990,8 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8250_usb3_rx_tbl),
 	.pcs_tbl		= sm8250_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8250_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_pcs_usb_tbl),
 	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -978,6 +999,7 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1862,7 +1884,7 @@ static int qcom_qmp_phy_combo_set_mode(struct phy *phy,
 static void qcom_qmp_phy_combo_enable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
 	void __iomem *pcs_misc = qphy->pcs_misc;
 	u32 intr_mask;
 
@@ -1873,15 +1895,15 @@ static void qcom_qmp_phy_combo_enable_autonomous_mode(struct qmp_phy *qphy)
 		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
 
 	/* Clear any pending interrupts status */
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 	/* Writing 1 followed by 0 clears the interrupt */
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ALFPS_DTCT_EN | ARCVR_DTCT_EVENT_SEL);
 
 	/* Enable required PHY autonomous mode interrupts */
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
+	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
 	/* Enable i/o clamp_n for autonomous mode */
 	if (pcs_misc)
@@ -1891,19 +1913,19 @@ static void qcom_qmp_phy_combo_enable_autonomous_mode(struct qmp_phy *qphy)
 static void qcom_qmp_phy_combo_disable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs_usb;
 	void __iomem *pcs_misc = qphy->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
 	if (pcs_misc)
 		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
 
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 	/* Writing 1 followed by 0 clears the interrupt */
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 }
 
 static int __maybe_unused qcom_qmp_phy_combo_runtime_suspend(struct device *dev)
@@ -2323,6 +2345,9 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	if (!qphy->pcs)
 		return -ENOMEM;
 
+	if (cfg->pcs_usb_offset)
+		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
+
 	/*
 	 * If this is a dual-lane PHY, then there should be registers for the
 	 * second lane. Some old device trees did not specify this, so fall
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index aebe5ed4e4e3..b1f2f825bd21 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -169,26 +169,10 @@ static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x44,
 	[QPHY_PCS_STATUS]		= 0x14,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x308,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x314,
-};
 
-static const unsigned int qmp_v4_usb3_uniphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x608,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x614,
-};
-
-static const unsigned int sm8350_usb3_uniphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x1008,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x1014,
+	/* In PCS_USB */
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x008,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x014,
 };
 
 static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -777,6 +761,9 @@ static const struct qmp_phy_init_tbl sm8150_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl sm8150_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
@@ -878,8 +865,6 @@ static const struct qmp_phy_init_tbl sm8150_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_UNI_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_UNI_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0f),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
@@ -889,6 +874,11 @@ static const struct qmp_phy_init_tbl sm8150_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 };
 
+static const struct qmp_phy_init_tbl sm8150_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+};
+
 static const struct qmp_phy_init_tbl sm8250_usb3_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_TX, 0x60),
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_RX, 0x60),
@@ -954,6 +944,9 @@ static const struct qmp_phy_init_tbl sm8250_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
@@ -1015,8 +1008,6 @@ static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xa9),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_UNI_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_UNI_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
@@ -1025,6 +1016,11 @@ static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
+static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+};
+
 static const struct qmp_phy_init_tbl sdx55_usb3_uniphy_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
 	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xd5),
@@ -1171,8 +1167,6 @@ static const struct qmp_phy_init_tbl sm8350_usb3_rx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8350_usb3_pcs_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xd0),
@@ -1187,6 +1181,11 @@ static const struct qmp_phy_init_tbl sm8350_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl sm8350_usb3_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
@@ -1244,8 +1243,6 @@ static const struct qmp_phy_init_tbl sm8350_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_UNI_RXEQTRAINING_DFE_TIME_S2, 0x07),
-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_UNI_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0a),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
@@ -1254,6 +1251,11 @@ static const struct qmp_phy_init_tbl sm8350_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
+static const struct qmp_phy_init_tbl sm8350_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+};
+
 static const struct qmp_phy_init_tbl qcm2290_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
@@ -1365,6 +1367,8 @@ struct qmp_phy_cfg {
 	int rx_tbl_num;
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
+	const struct qmp_phy_init_tbl *pcs_usb_tbl;
+	int pcs_usb_tbl_num;
 
 	/* clock ids to be requested */
 	const char * const *clk_list;
@@ -1394,6 +1398,9 @@ struct qmp_phy_cfg {
 	bool has_phy_dp_com_ctrl;
 	/* true, if PHY has secondary tx/rx lanes to be configured */
 	bool is_dual_lane_phy;
+
+	/* Offset from PCS to PCS_USB region */
+	unsigned int pcs_usb_offset;
 };
 
 /**
@@ -1408,6 +1415,7 @@ struct qmp_phy_cfg {
  * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
  * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
  * @pcs_misc: iomapped memory space for lane's pcs_misc
+ * @pcs_usb: iomapped memory space for lane's pcs_usb
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
@@ -1423,6 +1431,7 @@ struct qmp_phy {
 	void __iomem *tx2;
 	void __iomem *rx2;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_usb;
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
@@ -1703,6 +1712,8 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8150_usb3_rx_tbl),
 	.pcs_tbl		= sm8150_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8150_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -1710,6 +1721,7 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1736,13 +1748,16 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sm8150_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sm8150_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3_uniphy_regs_layout,
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x600,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1765,6 +1780,8 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8250_usb3_rx_tbl),
 	.pcs_tbl		= sm8250_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8250_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_pcs_usb_tbl),
 	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -1772,6 +1789,7 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1797,13 +1815,16 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sm8250_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sm8250_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3_uniphy_regs_layout,
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x600,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1826,13 +1847,16 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdx55_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sm8250_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sm8250_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3_uniphy_regs_layout,
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x600,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1855,13 +1879,16 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdx65_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sm8350_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sm8350_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8350_usb3_uniphy_regs_layout,
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x1000,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1884,6 +1911,8 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8350_usb3_rx_tbl),
 	.pcs_tbl		= sm8350_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8350_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_pcs_usb_tbl),
 	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -1891,6 +1920,7 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -1916,13 +1946,16 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sm8350_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= sm8350_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_usb_tbl),
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= sm8350_usb3_uniphy_regs_layout,
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x1000,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
@@ -2244,7 +2277,7 @@ static int qcom_qmp_phy_usb_set_mode(struct phy *phy,
 static void qcom_qmp_phy_usb_enable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
 	void __iomem *pcs_misc = qphy->pcs_misc;
 	u32 intr_mask;
 
@@ -2255,15 +2288,15 @@ static void qcom_qmp_phy_usb_enable_autonomous_mode(struct qmp_phy *qphy)
 		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
 
 	/* Clear any pending interrupts status */
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 	/* Writing 1 followed by 0 clears the interrupt */
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ALFPS_DTCT_EN | ARCVR_DTCT_EVENT_SEL);
 
 	/* Enable required PHY autonomous mode interrupts */
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
+	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
 	/* Enable i/o clamp_n for autonomous mode */
 	if (pcs_misc)
@@ -2273,19 +2306,19 @@ static void qcom_qmp_phy_usb_enable_autonomous_mode(struct qmp_phy *qphy)
 static void qcom_qmp_phy_usb_disable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
+	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
 	void __iomem *pcs_misc = qphy->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
 	if (pcs_misc)
 		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
 
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 	/* Writing 1 followed by 0 clears the interrupt */
-	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
+	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 }
 
 static int __maybe_unused qcom_qmp_phy_usb_runtime_suspend(struct device *dev)
@@ -2501,6 +2534,9 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	if (!qphy->pcs)
 		return -ENOMEM;
 
+	if (cfg->pcs_usb_offset)
+		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
+
 	/*
 	 * If this is a dual-lane PHY, then there should be registers for the
 	 * second lane. Some old device trees did not specify this, so fall
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 581f09c71667..c07227f352b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -1006,29 +1006,31 @@
 #define QPHY_V4_PCS_EQ_CONFIG3				0x1e4
 #define QPHY_V4_PCS_EQ_CONFIG4				0x1e8
 #define QPHY_V4_PCS_EQ_CONFIG5				0x1ec
-#define QPHY_V4_PCS_USB3_POWER_STATE_CONFIG1		0x300
-#define QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x304
-#define QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x308
-#define QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x30c
-#define QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x310
-#define QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x314
-#define QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x318
-#define QPHY_V4_PCS_USB3_LFPS_TX_ECSTART		0x31c
-#define QPHY_V4_PCS_USB3_LFPS_PER_TIMER_VAL		0x320
-#define QPHY_V4_PCS_USB3_LFPS_TX_END_CNT_U3_START	0x324
-#define QPHY_V4_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x328
-#define QPHY_V4_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x32c
-#define QPHY_V4_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x330
-#define QPHY_V4_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2	0x334
-#define QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x338
-#define QPHY_V4_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x33c
-#define QPHY_V4_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x340
-#define QPHY_V4_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x344
-#define QPHY_V4_PCS_USB3_ARCVR_DTCT_CM_DLY		0x348
-#define QPHY_V4_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x34c
-#define QPHY_V4_PCS_USB3_ALFPS_DEGLITCH_VAL		0x350
-#define QPHY_V4_PCS_USB3_SIGDET_STARTUP_TIMER_VAL	0x354
-#define QPHY_V4_PCS_USB3_TEST_CONTROL			0x358
+
+/* Only for QMP V4 PHY - USB3 PCS registers */
+#define QPHY_V4_PCS_USB3_POWER_STATE_CONFIG1		0x000
+#define QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x004
+#define QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x008
+#define QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x00c
+#define QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x010
+#define QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x014
+#define QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x018
+#define QPHY_V4_PCS_USB3_LFPS_TX_ECSTART		0x01c
+#define QPHY_V4_PCS_USB3_LFPS_PER_TIMER_VAL		0x020
+#define QPHY_V4_PCS_USB3_LFPS_TX_END_CNT_U3_START	0x024
+#define QPHY_V4_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x028
+#define QPHY_V4_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x02c
+#define QPHY_V4_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x030
+#define QPHY_V4_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2	0x034
+#define QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x038
+#define QPHY_V4_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x03c
+#define QPHY_V4_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x040
+#define QPHY_V4_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x044
+#define QPHY_V4_PCS_USB3_ARCVR_DTCT_CM_DLY		0x048
+#define QPHY_V4_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x04c
+#define QPHY_V4_PCS_USB3_ALFPS_DEGLITCH_VAL		0x050
+#define QPHY_V4_PCS_USB3_SIGDET_STARTUP_TIMER_VAL	0x054
+#define QPHY_V4_PCS_USB3_TEST_CONTROL			0x058
 
 /* Only for QMP V4_20 PHY - USB/PCIe PCS registers */
 #define QPHY_V4_20_PCS_RX_SIGDET_LVL			0x188
@@ -1036,10 +1038,6 @@
 #define QPHY_V4_20_PCS_EQ_CONFIG4			0x1e0
 #define QPHY_V4_20_PCS_EQ_CONFIG5			0x1e4
 
-/* Only for QMP V4 PHY - UNI has 0x300 offset for PCS_USB3 regs */
-#define QPHY_V4_PCS_USB3_UNI_LFPS_DET_HIGH_COUNT_VAL	0x618
-#define QPHY_V4_PCS_USB3_UNI_RXEQTRAINING_DFE_TIME_S2	0x638
-
 /* Only for QMP V4 PHY - PCS_MISC registers */
 #define QPHY_V4_PCS_MISC_TYPEC_CTRL			0x00
 #define QPHY_V4_PCS_MISC_TYPEC_PWRDN_CTRL		0x04
@@ -1290,34 +1288,30 @@
 #define QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1		0x1e0
 
 /* Only for QMP V5 PHY - USB3 have different offsets than V4 */
-#define QPHY_V5_PCS_USB3_POWER_STATE_CONFIG1		0x300
-#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x304
-#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x308
-#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x30c
-#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x310
-#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x314
-#define QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x318
-#define QPHY_V5_PCS_USB3_LFPS_TX_ECSTART		0x31c
-#define QPHY_V5_PCS_USB3_LFPS_PER_TIMER_VAL		0x320
-#define QPHY_V5_PCS_USB3_LFPS_TX_END_CNT_U3_START	0x324
-#define QPHY_V5_PCS_USB3_LFPS_CONFIG1			0x328
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x32c
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x330
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x334
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2	0x338
-#define QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x33c
-#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x340
-#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x344
-#define QPHY_V5_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x348
-#define QPHY_V5_PCS_USB3_ARCVR_DTCT_CM_DLY		0x34c
-#define QPHY_V5_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x350
-#define QPHY_V5_PCS_USB3_ALFPS_DEGLITCH_VAL		0x354
-#define QPHY_V5_PCS_USB3_SIGDET_STARTUP_TIMER_VAL	0x358
-#define QPHY_V5_PCS_USB3_TEST_CONTROL			0x35c
-#define QPHY_V5_PCS_USB3_RXTERMINATION_DLY_SEL		0x360
-
-/* Only for QMP V5 PHY - UNI has 0x1000 offset for PCS_USB3 regs */
-#define QPHY_V5_PCS_USB3_UNI_LFPS_DET_HIGH_COUNT_VAL	0x1018
-#define QPHY_V5_PCS_USB3_UNI_RXEQTRAINING_DFE_TIME_S2	0x103c
+#define QPHY_V5_PCS_USB3_POWER_STATE_CONFIG1		0x000
+#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x004
+#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x008
+#define QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x00c
+#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x010
+#define QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x014
+#define QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x018
+#define QPHY_V5_PCS_USB3_LFPS_TX_ECSTART		0x01c
+#define QPHY_V5_PCS_USB3_LFPS_PER_TIMER_VAL		0x020
+#define QPHY_V5_PCS_USB3_LFPS_TX_END_CNT_U3_START	0x024
+#define QPHY_V5_PCS_USB3_LFPS_CONFIG1			0x028
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x02c
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x030
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x034
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2	0x038
+#define QPHY_V5_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x03c
+#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x040
+#define QPHY_V5_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x044
+#define QPHY_V5_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x048
+#define QPHY_V5_PCS_USB3_ARCVR_DTCT_CM_DLY		0x04c
+#define QPHY_V5_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x050
+#define QPHY_V5_PCS_USB3_ALFPS_DEGLITCH_VAL		0x054
+#define QPHY_V5_PCS_USB3_SIGDET_STARTUP_TIMER_VAL	0x058
+#define QPHY_V5_PCS_USB3_TEST_CONTROL			0x05c
+#define QPHY_V5_PCS_USB3_RXTERMINATION_DLY_SEL		0x060
 
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
