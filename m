Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6739CECAAA1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 07:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvyTdCy0JoqNbPZYd9vS5vDwaT8UuFPF8TTUbV0SITo=; b=sGf4ymOU5coqYr
	CZRzrZ5xvf+VkuyrgHywSVlRPdc/dB8+vDL0/fVolNl0cN8qH/47OsZeeFbV6KNbVjevGDBzSqS1g
	Jc2VesmhhyqpsrpWo4RfGFHWngAgLb3ByuQRMsxbNYo4SGWYSh+BlppZ5ia9XnLK832gjydpG8bSS
	KMqJyJMemQyvQjljMYjMqUZ8MB55o6m2HOGEhCYmmB11/bqVWeiCc53Hs0rHo8miuKysrU4/HIAkS
	Q7lzIhJ3+6GDnjgyuWFtbNRIy5O2RZxniSjsbI8RHgb7U2g1+OR1NQjPdHOaqo8buveab8IPWK4dJ
	+9MS6/YWLKGocE90pfRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTHr-00AuXG-LK; Tue, 06 Sep 2022 07:46:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTHo-00AuTl-GV
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 07:46:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id A8628CE149F;
	Tue,  6 Sep 2022 07:46:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 351BAC43147;
	Tue,  6 Sep 2022 07:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662450376;
	bh=I8aB1dO5HlTLvM0zswIskqFLiFxr+/SzR+8nbWExZk4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LuZOAetP6JA8xA3pAchfYf1FoTYju8HhaH7w5L/IJcU2FfJlcJg2O2ZM0eV/dSPjy
	 N3pxU8z6NkLSN+YeuiQqPIvUHP7aItjP6NJf2JRULcGNA/+SD/ZvX5kPOA3eQOuSHi
	 eUiAO8mV3HHYQf+PHQab/Y2pdpk9wHFyX9glMW9Jpkxdt8cxhLgIy8+8Ufp4WRUwJQ
	 ljN3P+WZNSgILlQhfc/wC5LcjR8YRvv+jl08pIqP8zk9PTOsrgG1ES4L5c8C4L9vzq
	 ib1klQX3XVkUI7PEMMKTwLLieBkacg1+ncQ3JMUvM5ujV5adSalPcu56Hl9uELK7Rl
	 pEYB9+OzBoFtw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVTHm-00019I-L8; Tue, 06 Sep 2022 09:46:18 +0200
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
Subject: [PATCH 2/3] phy: qcom-qmp-pcie: shorten function prefixes
Date: Tue,  6 Sep 2022 09:45:49 +0200
Message-Id: <20220906074550.4383-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906074550.4383-1-johan+linaro@kernel.org>
References: <20220906074550.4383-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_004620_954774_C2E69854 
X-CRM114-Status: GOOD (  19.20  )
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

The driver function prefix has gotten unnecessarily long and hurts
readability.

Shorten "qcom_qmp_phy_" to "qmp_" (which likely stands for "Qualcomm
Multi PHY" or similar anyway).

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 137 +++++++++++------------
 1 file changed, 63 insertions(+), 74 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 536a6ac835c1..3766a6d44e87 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1891,7 +1891,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
-static void qcom_qmp_phy_pcie_configure_lane(void __iomem *base,
+static void qmp_pcie_configure_lane(void __iomem *base,
 					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -1914,29 +1914,28 @@ static void qcom_qmp_phy_pcie_configure_lane(void __iomem *base,
 	}
 }
 
-static void qcom_qmp_phy_pcie_configure(void __iomem *base,
-				   const unsigned int *regs,
-				   const struct qmp_phy_init_tbl tbl[],
-				   int num)
+static void qmp_pcie_configure(void __iomem *base,
+					const unsigned int *regs,
+					const struct qmp_phy_init_tbl tbl[],
+					int num)
 {
-	qcom_qmp_phy_pcie_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_pcie_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qcom_qmp_phy_pcie_serdes_init(struct qmp_phy *qphy)
+static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
-	qcom_qmp_phy_pcie_configure(serdes, cfg->regs, cfg->serdes_tbl_sec,
-				       cfg->serdes_tbl_num_sec);
+	qmp_pcie_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_pcie_configure(serdes, cfg->regs, cfg->serdes_tbl_sec, cfg->serdes_tbl_num_sec);
 
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
+static int qmp_pcie_com_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -1984,7 +1983,7 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 	return ret;
 }
 
-static int qcom_qmp_phy_pcie_com_exit(struct qmp_phy *qphy)
+static int qmp_pcie_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -1998,21 +1997,21 @@ static int qcom_qmp_phy_pcie_com_exit(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_init(struct phy *phy)
+static int qmp_pcie_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	int ret;
 	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
 
-	ret = qcom_qmp_phy_pcie_com_init(qphy);
+	ret = qmp_pcie_com_init(qphy);
 	if (ret)
 		return ret;
 
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
+static int qmp_pcie_power_on(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
@@ -2025,7 +2024,7 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
-	qcom_qmp_phy_pcie_serdes_init(qphy);
+	qmp_pcie_serdes_init(qphy);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -2034,41 +2033,32 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs,
-				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
-	qcom_qmp_phy_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec,
-					    cfg->tx_tbl_num_sec, 1);
+	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec, cfg->tx_tbl_num_sec, 1);
 
 	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
-		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
-					    cfg->tx_tbl, cfg->tx_tbl_num, 2);
-		qcom_qmp_phy_pcie_configure_lane(qphy->tx2, cfg->regs,
-						    cfg->tx_tbl_sec,
-						    cfg->tx_tbl_num_sec, 2);
+		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
+					cfg->tx_tbl_num, 2);
+		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl_sec,
+					cfg->tx_tbl_num_sec, 2);
 	}
 
-	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
-				    cfg->rx_tbl, cfg->rx_tbl_num, 1);
-	qcom_qmp_phy_pcie_configure_lane(rx, cfg->regs,
-					    cfg->rx_tbl_sec, cfg->rx_tbl_num_sec, 1);
+	qmp_pcie_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_pcie_configure_lane(rx, cfg->regs, cfg->rx_tbl_sec, cfg->rx_tbl_num_sec, 1);
 
 	if (cfg->is_dual_lane_phy) {
-		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
-					    cfg->rx_tbl, cfg->rx_tbl_num, 2);
-		qcom_qmp_phy_pcie_configure_lane(qphy->rx2, cfg->regs,
-						    cfg->rx_tbl_sec,
-						    cfg->rx_tbl_num_sec, 2);
+		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl,
+					cfg->rx_tbl_num, 2);
+		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl_sec,
+					cfg->rx_tbl_num_sec, 2);
 	}
 
-	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
-	qcom_qmp_phy_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl_sec,
-				       cfg->pcs_tbl_num_sec);
+	qmp_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_pcie_configure(pcs, cfg->regs, cfg->pcs_tbl_sec, cfg->pcs_tbl_num_sec);
 
-	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
-			       cfg->pcs_misc_tbl_num);
-	qcom_qmp_phy_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec,
-				       cfg->pcs_misc_tbl_num_sec);
+	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
+	qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec, cfg->pcs_misc_tbl_num_sec);
 
 	/*
 	 * Pull out PHY from POWER DOWN state.
@@ -2104,7 +2094,7 @@ static int qcom_qmp_phy_pcie_power_on(struct phy *phy)
 	return ret;
 }
 
-static int qcom_qmp_phy_pcie_power_off(struct phy *phy)
+static int qmp_pcie_power_off(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -2129,42 +2119,42 @@ static int qcom_qmp_phy_pcie_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_exit(struct phy *phy)
+static int qmp_pcie_exit(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
-	qcom_qmp_phy_pcie_com_exit(qphy);
+	qmp_pcie_com_exit(qphy);
 
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_enable(struct phy *phy)
+static int qmp_pcie_enable(struct phy *phy)
 {
 	int ret;
 
-	ret = qcom_qmp_phy_pcie_init(phy);
+	ret = qmp_pcie_init(phy);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_pcie_power_on(phy);
+	ret = qmp_pcie_power_on(phy);
 	if (ret)
-		qcom_qmp_phy_pcie_exit(phy);
+		qmp_pcie_exit(phy);
 
 	return ret;
 }
 
-static int qcom_qmp_phy_pcie_disable(struct phy *phy)
+static int qmp_pcie_disable(struct phy *phy)
 {
 	int ret;
 
-	ret = qcom_qmp_phy_pcie_power_off(phy);
+	ret = qmp_pcie_power_off(phy);
 	if (ret)
 		return ret;
-	return qcom_qmp_phy_pcie_exit(phy);
+
+	return qmp_pcie_exit(phy);
 }
 
-static int qcom_qmp_phy_pcie_set_mode(struct phy *phy,
-				 enum phy_mode mode, int submode)
+static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
@@ -2173,7 +2163,7 @@ static int qcom_qmp_phy_pcie_set_mode(struct phy *phy,
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_vregs;
@@ -2189,7 +2179,7 @@ static int qcom_qmp_phy_pcie_vreg_init(struct device *dev, const struct qmp_phy_
 	return devm_regulator_bulk_get(dev, num, qmp->vregs);
 }
 
-static int qcom_qmp_phy_pcie_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int i;
@@ -2210,7 +2200,7 @@ static int qcom_qmp_phy_pcie_reset_init(struct device *dev, const struct qmp_phy
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_clks;
@@ -2293,15 +2283,14 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qcom_qmp_phy_pcie_ops = {
-	.power_on	= qcom_qmp_phy_pcie_enable,
-	.power_off	= qcom_qmp_phy_pcie_disable,
-	.set_mode	= qcom_qmp_phy_pcie_set_mode,
+static const struct phy_ops qmp_pcie_ops = {
+	.power_on	= qmp_pcie_enable,
+	.power_off	= qmp_pcie_disable,
+	.set_mode	= qmp_pcie_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-static
-int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
+static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2372,7 +2361,7 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
 				     "failed to get lane%d pipe clock\n", id);
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_pcie_ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_pcie_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create qphy %d\n", ret);
@@ -2388,7 +2377,7 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
+static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
 		.compatible = "qcom,msm8998-qmp-pcie-phy",
 		.data = &msm8998_pciephy_cfg,
@@ -2431,9 +2420,9 @@ static const struct of_device_id qcom_qmp_phy_pcie_of_match_table[] = {
 	},
 	{ },
 };
-MODULE_DEVICE_TABLE(of, qcom_qmp_phy_pcie_of_match_table);
+MODULE_DEVICE_TABLE(of, qmp_pcie_of_match_table);
 
-static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
+static int qmp_pcie_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
 	struct device *dev = &pdev->dev;
@@ -2461,15 +2450,15 @@ static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
-	ret = qcom_qmp_phy_pcie_clk_init(dev, cfg);
+	ret = qmp_pcie_clk_init(dev, cfg);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_pcie_reset_init(dev, cfg);
+	ret = qmp_pcie_reset_init(dev, cfg);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_pcie_vreg_init(dev, cfg);
+	ret = qmp_pcie_vreg_init(dev, cfg);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			dev_err(dev, "failed to get regulator supplies: %d\n",
@@ -2497,7 +2486,7 @@ static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		/* Create per-lane phy */
-		ret = qcom_qmp_phy_pcie_create(dev, child, id, serdes, cfg);
+		ret = qmp_pcie_create(dev, child, id, serdes, cfg);
 		if (ret) {
 			dev_err(dev, "failed to create lane%d phy, %d\n",
 				id, ret);
@@ -2532,15 +2521,15 @@ static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static struct platform_driver qcom_qmp_phy_pcie_driver = {
-	.probe		= qcom_qmp_phy_pcie_probe,
+static struct platform_driver qmp_pcie_driver = {
+	.probe		= qmp_pcie_probe,
 	.driver = {
 		.name	= "qcom-qmp-pcie-phy",
-		.of_match_table = qcom_qmp_phy_pcie_of_match_table,
+		.of_match_table = qmp_pcie_of_match_table,
 	},
 };
 
-module_platform_driver(qcom_qmp_phy_pcie_driver);
+module_platform_driver(qmp_pcie_driver);
 
 MODULE_AUTHOR("Vivek Gautam <vivek.gautam@codeaurora.org>");
 MODULE_DESCRIPTION("Qualcomm QMP PCIe PHY driver");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
