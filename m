Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA8BC6FA99
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pl2rGW+0GMpEGDc0sbLjQImNfNUihDAyp1FEeK0Duns=; b=Am0EhWXsSUGqtO
	/ly18Ib08U2VgmloWC8nrZ7kbesPXILOFqttzVs6UT2Z8KMWzv3CYsbmQREqGIQBjm4um8R9M4y3v
	NpWgjdL8CsEdspa/bUT2O8dwCptXn2OCaVnB5Ji8ZvXqyN0MGLGG0nBNpHlAxb5GMdfsfLTiRA0o+
	NmrTjlSqYaE8eeyA+ljDa3Z0sW9zSNOhEaB5GlzCvwtDrq7etS6GiFcXVNHoWBkLyU/MlGH+lBVI9
	Sqq/4L05L5i+zrsuampXj0YddwjSA9MrivoLG4K/Jzpt3JRGWO1ELOM4NDTy8K9iqEvTFsYN/mJyV
	snBOz7xqkyyU1U/kJimA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqd-001Qjf-CQ; Tue, 20 Sep 2022 07:39:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QVm-F4
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0977562512;
	Tue, 20 Sep 2022 07:39:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6437C4FF0C;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=SbqQNBmBFgO/Vj8yFLzzLz53WBQ+Ygs7T+itjrvLL9c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U56OzQAL+ncdDRubhSEt6uawttgT4UT0Cs4B5kRzVHizgsM/e0zg6DxTtoDQbljew
	 bizC64IrD+hTswXfUzNW5QI+IJLwdSMEM91+x9ylfpLJEHexnY52GYK3TYwVD09MSr
	 yHzzE9fBXCyrl79ZkU6W2JrVycoWe8gMM8JtJBc5K4jAVZ7woMTzSjrjK3KLit9YaH
	 1+KE4R19CucoOT/EkwhsGLgnFraX4wJI2iXfoR9Q/vfZAa8rWiP0NZriWI9FByP9iR
	 lgGjnD0sdbhlSzsybXp+CMUvqQyl9iUTiVozWoHY9y2PzE0K35ktQa0dxY3T4q64QM
	 HMpmGPd+HOBmQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005RF-GR; Tue, 20 Sep 2022 09:39:02 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 14/17] phy: qcom-qmp-combo: consolidate lane config
Date: Tue, 20 Sep 2022 09:38:23 +0200
Message-Id: <20220920073826.20811-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_671266_B735D1DD 
X-CRM114-Status: GOOD (  16.09  )
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

For legacy reasons, there are two configuration parameters that appear
to describe the number of lanes a PHY has, even if "nlanes" was actually
used for a different purpose.

Replace them both with a new field simply named "lanes".

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 38 ++++++++---------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 08e96e383a29..417e0fcf1a9f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -816,8 +816,7 @@ struct qmp_phy;
 struct qmp_phy_cfg {
 	/* phy-type - PCIE/UFS/USB */
 	unsigned int type;
-	/* number of lanes provided by phy */
-	int nlanes;
+	int lanes;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
@@ -879,8 +878,6 @@ struct qmp_phy_cfg {
 
 	/* true, if PHY has a separate DP_COM control block */
 	bool has_phy_dp_com_ctrl;
-	/* true, if PHY has secondary tx/rx lanes to be configured */
-	bool is_dual_lane_phy;
 
 	/* Offset from PCS to PCS_USB region */
 	unsigned int pcs_usb_offset;
@@ -1029,7 +1026,7 @@ static const char * const sc7180_usb3phy_reset_l[] = {
 
 static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
@@ -1056,12 +1053,11 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
 	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
@@ -1091,7 +1087,6 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 
 	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
@@ -1106,7 +1101,7 @@ static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
 
 static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
@@ -1133,7 +1128,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
@@ -1143,7 +1137,7 @@ static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
 
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
@@ -1174,12 +1168,11 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
@@ -1209,7 +1202,6 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
@@ -1224,7 +1216,7 @@ static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
 
 static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= sc8280xp_usb43dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sc8280xp_usb43dp_serdes_tbl),
@@ -1252,12 +1244,11 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v5_dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v5_dp_serdes_tbl),
@@ -1287,7 +1278,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
@@ -1302,7 +1292,7 @@ static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_combo_cfg = {
 
 static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
@@ -1332,12 +1322,11 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.type			= PHY_TYPE_DP,
-	.nlanes			= 1,
+	.lanes			= 2,
 
 	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
@@ -1367,7 +1356,6 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 
 	.has_phy_dp_com_ctrl	= true,
-	.is_dual_lane_phy	= true,
 
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
@@ -2117,7 +2105,7 @@ static int qmp_combo_power_on(struct phy *phy)
 	/* Tx, Rx, and PCS configurations */
 	qmp_combo_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qmp_combo_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
 					 cfg->tx_tbl_num, 2);
 	}
@@ -2128,7 +2116,7 @@ static int qmp_combo_power_on(struct phy *phy)
 
 	qmp_combo_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qmp_combo_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl,
 					 cfg->rx_tbl_num, 2);
 	}
@@ -2725,7 +2713,7 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 	if (cfg->pcs_usb_offset)
 		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
 		if (IS_ERR(qphy->tx2))
 			return PTR_ERR(qphy->tx2);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
