Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF23BC4167D
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN1krPb8bGXtZxEPHJeet1LvZquPO9p9wyEZ6gn6WuU=; b=We4Yq70vEJWva/
	irMsz2fmfXIVkRc1SW37WkbzmB1Qli5GTeB8z2VABJYaUngvHcUDMQUuqpBxWuQIH/AGo5Nm5NS8U
	fCtEgKYiE3ODwFHxCDC7G/0NduGR3QM5FKM/x2zF5f4yao/tn+sSd+ANgoiinrTRAWBCYEhYh8amI
	kxtvDOFYoo3R9iWaWFVuBlEmc17ruyu+Z8kjaiyeQx/AlpwLDTLTxJzPYAMC01bI0D1v3cleZOkMv
	2m1Nb25AaqU/nMEPoPz4q59pD2AhQwdDl7hFRyJvAEPEnsHNOlsxRiVvQVfunClm7MaIQSrcdzutT
	SVf4B2o5GDVZcNPSgL3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJY-000DDH-A0; Mon, 14 Nov 2022 11:07:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJB-000Ctj-1j
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4245661044;
	Mon, 14 Nov 2022 11:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52FE9C4FF78;
	Mon, 14 Nov 2022 11:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424035;
	bh=M6rT5r5W957QhLzkvfh+qimCVNx87Rggem7YLlIELro=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EARXtrWZmgKO9xsSG4Fe96wwMu36nW4O3vpzFeyLrI99GsbFaaYTviXBjYGLhSzXI
	 7spbT28fmlplcqw9QAPmwchvlR3BAmaVCHFV/mOsq987gWy9A8fjP2XNwutZ/uzpKZ
	 ZUVP3mPf525KkVIe15GtWtZFykgqwFhHkQmSizz0aE09Myo64fNvfQaCxmTScbUCp0
	 maONQkcDFvrDcEL5czPO0VxzcKJIAYYMtAFDNKOthMMIHk8QaB04/RJ+KX0GJ2kB/X
	 dZsA/uu72/Fnubn0DdEj9tV9w8YKxMhZE/4qwKRlLobb8vzhWv0b8399GgXwo/LUmN
	 I7KlJJbwCnRaA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIZ-0001FR-MY; Mon, 14 Nov 2022 12:06:43 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 22/22] phy: qcom-qmp-combo: clean up DP callback names
Date: Mon, 14 Nov 2022 12:06:21 +0100
Message-Id: <20221114110621.4639-23-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030721_258049_04778C78 
X-CRM114-Status: GOOD (  13.02  )
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

Clean up and unify the DP callbacks by dropping the redundant "qcom" and
"phy" prefix and infix and by using a common naming scheme ("qmp" +
version + callback name).

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 82 +++++++++++------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5d92cbfc458e..c5d8f8bfaaaa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -903,17 +903,17 @@ struct qmp_combo {
 	struct qmp_phy_dp_clks *dp_clks;
 };
 
-static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_combo *qmp);
-static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_combo *qmp);
-static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_combo *qmp);
-static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_combo *qmp);
+static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
+static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp);
+static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp);
+static int qmp_v3_calibrate_dp_phy(struct qmp_combo *qmp);
 
-static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_combo *qmp);
-static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_combo *qmp);
-static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp);
-static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_combo *qmp);
+static void qmp_v4_dp_aux_init(struct qmp_combo *qmp);
+static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp);
+static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp);
+static int qmp_v4_calibrate_dp_phy(struct qmp_combo *qmp);
 
-static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp);
+static int qmp_v5_configure_dp_phy(struct qmp_combo *qmp);
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
 {
@@ -991,10 +991,10 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init		= qcom_qmp_v3_phy_dp_aux_init,
-	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
-	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
-	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
+	.dp_aux_init		= qmp_v3_dp_aux_init,
+	.configure_dp_tx	= qmp_v3_configure_dp_tx,
+	.configure_dp_phy	= qmp_v3_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v3_calibrate_dp_phy,
 
 	.clk_list		= qmp_v3_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
@@ -1036,10 +1036,10 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init		= qcom_qmp_v3_phy_dp_aux_init,
-	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
-	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
-	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
+	.dp_aux_init		= qmp_v3_dp_aux_init,
+	.configure_dp_tx	= qmp_v3_configure_dp_tx,
+	.configure_dp_phy	= qmp_v3_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v3_calibrate_dp_phy,
 
 	.clk_list		= qmp_v3_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
@@ -1083,10 +1083,10 @@ static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init		= qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
-	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
@@ -1129,10 +1129,10 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init		= qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy	= qcom_qmp_v5_phy_configure_dp_phy,
-	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_phy	= qmp_v5_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
 	.clk_list		= qmp_v4_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
@@ -1175,10 +1175,10 @@ static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init		= qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
-	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
 	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
@@ -1251,7 +1251,7 @@ static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
 	return 0;
 }
 
-static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_combo *qmp)
+static void qmp_v3_dp_aux_init(struct qmp_combo *qmp)
 {
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -1332,7 +1332,7 @@ static int qmp_combo_configure_dp_swing(struct qmp_combo *qmp,
 	return 0;
 }
 
-static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_combo *qmp)
+static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 bias_en, drvr_en;
@@ -1385,7 +1385,7 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 	return reverse;
 }
 
-static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_combo *qmp)
+static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_dp_clks *dp_clks = qmp->dp_clks;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
@@ -1462,7 +1462,7 @@ static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_combo *qmp)
  * We need to calibrate the aux setting here as many times
  * as the caller tries
  */
-static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_combo *qmp)
+static int qmp_v3_calibrate_dp_phy(struct qmp_combo *qmp)
 {
 	static const u8 cfg1_settings[] = { 0x13, 0x23, 0x1d };
 	u8 val;
@@ -1476,7 +1476,7 @@ static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_combo *qmp)
 	return 0;
 }
 
-static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_combo *qmp)
+static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
 {
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -1503,7 +1503,7 @@ static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_combo *qmp)
 	       qmp->dp_pcs + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
 }
 
-static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_combo *qmp)
+static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 {
 	/* Program default values before writing proper values */
 	writel(0x27, qmp->dp_tx + QSERDES_V4_TX_TX_DRV_LVL);
@@ -1516,7 +1516,7 @@ static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_combo *qmp)
 			QSERDES_V4_TX_TX_EMP_POST1_LVL);
 }
 
-static int qcom_qmp_v45_phy_configure_dp_phy(struct qmp_combo *qmp)
+static int qmp_v45_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_dp_clks *dp_clks = qmp->dp_clks;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
@@ -1606,7 +1606,7 @@ static int qcom_qmp_v45_phy_configure_dp_phy(struct qmp_combo *qmp)
 	return 0;
 }
 
-static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp)
+static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
@@ -1614,7 +1614,7 @@ static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp)
 	u32 status;
 	int ret;
 
-	ret = qcom_qmp_v45_phy_configure_dp_phy(qmp);
+	ret = qmp_v45_configure_dp_phy(qmp);
 	if (ret < 0)
 		return ret;
 
@@ -1668,7 +1668,7 @@ static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp)
 	return 0;
 }
 
-static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp)
+static int qmp_v5_configure_dp_phy(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
@@ -1676,7 +1676,7 @@ static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp)
 	u32 status;
 	int ret;
 
-	ret = qcom_qmp_v45_phy_configure_dp_phy(qmp);
+	ret = qmp_v45_configure_dp_phy(qmp);
 	if (ret < 0)
 		return ret;
 
@@ -1729,7 +1729,7 @@ static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp)
  * We need to calibrate the aux setting here as many times
  * as the caller tries
  */
-static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_combo *qmp)
+static int qmp_v4_calibrate_dp_phy(struct qmp_combo *qmp)
 {
 	static const u8 cfg1_settings[] = { 0x20, 0x13, 0x23, 0x1d };
 	u8 val;
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
