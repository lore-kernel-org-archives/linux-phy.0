Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B924C6FA94
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Evgz5Eui4LOYWofKM3krJ4Tha5HDUhB82+UQYc/hYhk=; b=b4yiqXoLT89Ioz
	zNihFB1NY8CyRkmqYsY7w9sZE3Ut0wiap3X1JuWqPHEGv37z+p+4jpeWCqLii20MXVg3SPLQxGaRT
	Rexe8I3RkWd5FB2Lq8W8YlDaK9/1Lw/vYOdOLvV+zIzr4BK3rtRFtMglEFHJSyouZpasB2KhphwA6
	Xe9WL/yxg6C8VAQqlz2zZxkNzmPSkPefOrTdqN24uVPvznaXIFUFojWas8Amkb8uw55FQWmHZVQ0w
	kPiwM1+yyzG6nuC1LHAS7Jx3H2gtoJG8DwNVswfO9veUCTrhhGOD7Zpy7GrpUb/oS+Oq4lKvVaCj5
	w80frkTfGG43Bl3nVDVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqX-001Qf7-PR; Tue, 20 Sep 2022 07:39:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqQ-001QUX-Pa
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D286F6252B;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83C5CC4FEBE;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=2N1qlywxBzlo6dwex6S7zihG6+wnQQ4IgjeWP6M/abA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Aj7lv7fpl0SOiiLu3qFX0BA6hzVJBt/GuZSsHLcrKoSIHCr7MXdIJDP/x99WqPhT5
	 /FbKP1gtYDLPQOOiME9c2xG7RhrTLaggUam2dPb/Mhh7uM65cM06bFFvUFYTrrU5BH
	 neM8tsVVmoj44c0P7993jw/gbi5QhIvbROxEjgKW4/mFE9xDE14ehOZISrR8AXO8gu
	 Z8eE1B/jZq8/nSvHBGCYa7g/52NSJjUZqWpkqo9m0r5Fr7w9YYPiKZ1zz0v5AeO3+6
	 Zbhe7decu+rX4jfek9txRtARg4gE8E0TBnMN9lDkSqYJ5GwMFQjojyhS8zLDuZoth9
	 VkxqGZKxLetKw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005R9-AP; Tue, 20 Sep 2022 09:39:02 +0200
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
Subject: [PATCH 12/17] phy: qcom-qmp-pcie: consolidate lane config
Date: Tue, 20 Sep 2022 09:38:21 +0200
Message-Id: <20220920073826.20811-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003902_949561_89A8346A 
X-CRM114-Status: GOOD (  16.05  )
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

For legacy reasons, there are two configuration parameters that describe
the number of lanes a PHY has.

Replace them both with a new field simply named "lanes".

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 39 ++++++++++--------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 387abed33727..dde398105f03 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1302,8 +1302,7 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* number of lanes provided by phy */
-	int nlanes;
+	int lanes;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
@@ -1351,9 +1350,6 @@ struct qmp_phy_cfg {
 	int pwrdn_delay_min;
 	int pwrdn_delay_max;
 
-	/* true, if PHY has secondary tx/rx lanes to be configured */
-	bool is_dual_lane_phy;
-
 	/* QMP PHY pipe clock interface rate */
 	unsigned long pipe_clock_rate;
 };
@@ -1461,7 +1457,7 @@ static const char * const sdm845_pciephy_reset_l[] = {
 };
 
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
-	.nlanes			= 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
@@ -1489,7 +1485,7 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
-	.nlanes			= 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= ipq8074_pcie_gen3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
@@ -1518,7 +1514,7 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 };
 
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
-	.nlanes			= 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= ipq6018_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
@@ -1547,7 +1543,7 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
-	.nlanes = 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= sdm845_qmp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sdm845_qmp_pcie_serdes_tbl),
@@ -1577,7 +1573,7 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
-	.nlanes = 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= sdm845_qhp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
@@ -1605,7 +1601,7 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
-	.nlanes = 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -1643,7 +1639,7 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
-	.nlanes = 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -1675,14 +1671,13 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS,
 
-	.is_dual_lane_phy	= true,
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
-	.nlanes			= 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= msm8998_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(msm8998_pcie_serdes_tbl),
@@ -1706,7 +1701,7 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
-	.nlanes = 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
@@ -1735,7 +1730,7 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
-	.nlanes = 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sdx55_qmp_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
@@ -1759,14 +1754,13 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS_4_20,
 
-	.is_dual_lane_phy	= true,
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
-	.nlanes = 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_serdes_tbl),
@@ -1796,7 +1790,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
-	.nlanes = 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_serdes_tbl),
@@ -1820,7 +1814,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 
-	.is_dual_lane_phy	= true,
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
@@ -1959,7 +1952,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec, cfg->tx_tbl_num_sec, 1);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
 					cfg->tx_tbl_num, 2);
 		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl_sec,
@@ -1969,7 +1962,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 	qmp_pcie_configure_lane(rx, cfg->regs, cfg->rx_tbl_sec, cfg->rx_tbl_num_sec, 1);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl,
 					cfg->rx_tbl_num, 2);
 		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl_sec,
@@ -2225,7 +2218,7 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	if (IS_ERR(qphy->pcs))
 		return PTR_ERR(qphy->pcs);
 
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
