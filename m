Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80492C43217
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jlh2KE78Pqw9YJ5QQvG5ELsZh0BPuk9RL/5yTIacfqI=; b=vCADVa/lEFDyeR
	sgFXGIcOkqsOpVrTKMfV9Me13fJkWFYlig+/raoxIjY4occrzznLdYhH2daud7D0mOZeP4jgduLys
	MS3qCdl8bOWdvt4LapTcYImZzNfmLYUh3eR5WpMPyakmgVPI0Q3Tt/el2uWWP8OlM1YA6bYj+0JUa
	j1ELcrHsAZHaTN9JWC+xFEOvWSuARE09h31ZQ6ZLL3xM/7eE2YDqKgSG+uRRanRbUhv6MlnjJdIiO
	GE/7i0FbtFABWurVt2bqkNZF1pyCFtXAdZxzwf4x0aEud6iY8EI1JzuH3wHw+dDog2ebkFBmndreu
	Jkzmo60RHdNeOrirgSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPrE-00EQ0s-Jp; Fri, 11 Nov 2022 08:57:52 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqu-00EPf8-4c
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 22AE8B82484;
	Fri, 11 Nov 2022 08:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E626FC4FF18;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157044;
	bh=PgGXf60hOrrV+h5znX9NVwZsOV30RptApUn5dJYq6ow=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=erLKGARAbotAUwSe4r7wOfec5RSEDHzcjiqMOqpIFPQGUM6VRxhgapht+STXZo6LB
	 9q4dLeCg2keU1WZBUkaM1XAHdQ01bX9plCJ3UNwtsesFUTZdZD6zsgaWGkr5iEDKqE
	 F9L598KW/EqHdsMWgUlfo/WKJTyBVoFGuiNJemCSj6V//owPKKcJuqowE2MocYHvCP
	 T+1Q65fAB2O0cZXI4ueOr/xOZSFBedXUCizzmGY+cvyxqi1t30P4NNLG1ftrrXAnlH
	 HhPTV/245y961Y2ae5EAHVI1mfaLYmY9Gpvb1JXjaYd/vxa20Ovaq7uwOW+IH4/yJS
	 F4H1thFQ/giRA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqK-0002Ua-9L; Fri, 11 Nov 2022 09:56:56 +0100
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
Subject: [PATCH 17/22] phy: qcom-qmp-combo: merge USB and DP configurations
Date: Fri, 11 Nov 2022 09:56:38 +0100
Message-Id: <20221111085643.9478-18-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005732_719780_23C47FE4 
X-CRM114-Status: GOOD (  15.85  )
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

It does not really make any sense to keep separate configuration
structures for the USB and DP parts of the same PHY so merge them.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 182 +++++++---------------
 1 file changed, 57 insertions(+), 125 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b27d1821116c..249912b75964 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -798,10 +798,7 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
 
 struct qmp_phy;
 
-/* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* phy-type - PCIE/UFS/USB */
-	unsigned int type;
 	int lanes;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
@@ -864,11 +861,6 @@ struct qmp_phy_cfg {
 
 };
 
-struct qmp_phy_combo_cfg {
-	const struct qmp_phy_cfg *usb_cfg;
-	const struct qmp_phy_cfg *dp_cfg;
-};
-
 /**
  * struct qmp_phy - per-lane phy descriptor
  *
@@ -1008,8 +1000,7 @@ static const char * const sc7180_usb3phy_reset_l[] = {
 	"phy",
 };
 
-static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
+static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
@@ -1020,20 +1011,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_rx_tbl),
 	.pcs_tbl		= qmp_v3_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_pcs_tbl),
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= sc7180_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
-	.has_pwrdn_delay	= true,
-};
-
-static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.lanes			= 2,
 
 	.dp_serdes_tbl		= qmp_v3_dp_serdes_tbl,
 	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
@@ -1058,15 +1035,19 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
 	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
 	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
 	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
-};
 
-static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
-	.usb_cfg		= &sc7180_usb3phy_cfg,
-	.dp_cfg			= &sc7180_dpphy_cfg,
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= sc7180_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.has_pwrdn_delay	= true,
 };
 
-static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
+static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
@@ -1077,25 +1058,11 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_rx_tbl),
 	.pcs_tbl		= qmp_v3_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_pcs_tbl),
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
-	.has_pwrdn_delay	= true,
-};
 
-static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.lanes			= 2,
-
-	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
-	.tx_tbl			= qmp_v3_dp_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
+	.dp_serdes_tbl		= qmp_v3_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v3_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
 
 	.serdes_tbl_rbr		= qmp_v3_dp_serdes_tbl_rbr,
 	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_rbr),
@@ -1115,15 +1082,18 @@ static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
 	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
 	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
 	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
-};
 
-static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
-	.usb_cfg                = &sdm845_usb3phy_cfg,
-	.dp_cfg                 = &sdm845_dpphy_cfg,
-};
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
 
-static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
+	.has_pwrdn_delay	= true,
+};
+static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
 	.lanes			= 2,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
@@ -1136,21 +1106,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_pcs_tbl),
 	.pcs_usb_tbl		= sm8150_usb3_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
-	.pcs_usb_offset		= 0x300,
-
-	.has_pwrdn_delay	= true,
-};
-
-static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.lanes			= 2,
 
 	.dp_serdes_tbl		= qmp_v4_dp_serdes_tbl,
 	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
@@ -1175,15 +1130,20 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
 	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
-};
 
-static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
-	.usb_cfg		= &sm8150_usb3phy_cfg,
-	.dp_cfg			= &sc8180x_dpphy_cfg,
+	.clk_list		= qmp_v4_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
+
+	.has_pwrdn_delay	= true,
 };
 
-static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
-	.type			= PHY_TYPE_USB3,
+static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.lanes			= 2,
 
 	.serdes_tbl		= sc8280xp_usb43dp_serdes_tbl,
@@ -1194,19 +1154,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb43dp_rx_tbl),
 	.pcs_tbl		= sc8280xp_usb43dp_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sc8280xp_usb43dp_pcs_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
-	.pcs_usb_offset		= 0x300,
-};
-
-static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
-	.type			= PHY_TYPE_DP,
-	.lanes			= 2,
 
 	.dp_serdes_tbl		= qmp_v5_dp_serdes_tbl,
 	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v5_dp_serdes_tbl),
@@ -1231,15 +1178,18 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy	= qcom_qmp_v5_phy_configure_dp_phy,
 	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
-};
 
-static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_cfg = {
-	.usb_cfg		= &sc8280xp_usb43dp_usb_cfg,
-	.dp_cfg			= &sc8280xp_usb43dp_dp_cfg,
+	.clk_list		= qmp_v4_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 };
 
-static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
-	.type			= PHY_TYPE_USB3,
+static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.lanes			= 2,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
@@ -1252,21 +1202,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_pcs_tbl),
 	.pcs_usb_tbl		= sm8250_usb3_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_pcs_usb_tbl),
-	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
-	.pcs_usb_offset		= 0x300,
-
-	.has_pwrdn_delay	= true,
-};
-
-static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
-	.type			= PHY_TYPE_DP,
-	.lanes			= 2,
 
 	.dp_serdes_tbl		= qmp_v4_dp_serdes_tbl,
 	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
@@ -1291,11 +1226,17 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
 	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
-};
 
-static const struct qmp_phy_combo_cfg sm8250_usb3dpphy_cfg = {
-	.usb_cfg		= &sm8250_usb3phy_cfg,
-	.dp_cfg			= &sm8250_dpphy_cfg,
+	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
+
+	.has_pwrdn_delay	= true,
 };
 
 static void qmp_combo_configure_lane(void __iomem *base,
@@ -2720,10 +2661,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	void __iomem *serdes;
 	void __iomem *usb_serdes;
 	void __iomem *dp_serdes = NULL;
-	const struct qmp_phy_combo_cfg *combo_cfg = NULL;
 	const struct qmp_phy_cfg *cfg = NULL;
-	const struct qmp_phy_cfg *usb_cfg = NULL;
-	const struct qmp_phy_cfg *dp_cfg = NULL;
 	int num, id, expected_phys;
 	int ret;
 
@@ -2734,13 +2672,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	qmp->dev = dev;
 	dev_set_drvdata(dev, qmp);
 
-	combo_cfg = of_device_get_match_data(dev);
-	if (!combo_cfg)
+	cfg = of_device_get_match_data(dev);
+	if (!cfg)
 		return -EINVAL;
 
-	usb_cfg = combo_cfg->usb_cfg;
-	cfg = usb_cfg; /* Setup clks and regulators */
-
 	usb_serdes = serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
@@ -2753,7 +2688,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(dp_serdes))
 		return PTR_ERR(dp_serdes);
 
-	dp_cfg = combo_cfg->dp_cfg;
 	expected_phys = 2;
 
 	mutex_init(&qmp->phy_mutex);
@@ -2792,7 +2726,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		if (of_node_name_eq(child, "dp-phy")) {
-			cfg = dp_cfg;
 			serdes = dp_serdes;
 
 			/* Create per-lane phy */
@@ -2810,7 +2743,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 				goto err_node_put;
 			}
 		} else if (of_node_name_eq(child, "usb3-phy")) {
-			cfg = usb_cfg;
 			serdes = usb_serdes;
 
 			/* Create per-lane phy */
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
