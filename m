Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26BBEC38145
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yclTiW0rrBxp9q3xFDqZdi3stegEZEjbGoM1Dl/nyBg=; b=c8/bz4ZGbj99PX
	JdCi5xOIkSUvUavyv4y7W4KMr6ZrNUb37no12s8EXYa7GMb/WN/4n0UVoobA5vsB+WNlXXTWB4GnR
	TfTZdyq7fhgJgLzwMoYlw1YOiiFtDQO6c8x2uXbksMm3eEXv8/G7hTrLjkyL5RWmaQtP1I5M5s/6P
	DC4x10+gTurQwU3z4pFA3J5SI1JrDXHLNcyVOKWETZVIdC5OoN/5BAZC69UGv5VNaZ6o7w8r7hboQ
	sy84f7cPXkbm7cs7hD8VoMphJ/kEGulNiL3+I0FXqmfHFE1IC8y9Gwqm2NpLGzmEwbGuQrbKZf36r
	JfZAHmcCtrnDT9j94yFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuf-005XLg-Kp; Wed, 07 Sep 2022 11:08:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuO-005X7F-Vj
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:07:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8C629618A3;
	Wed,  7 Sep 2022 11:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C145FC4315E;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=MveYZcdZeUtjMKMwrMvW9dr2XhehZn4CyGUTfnFYKd8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tz84i6qD4tsZjWBjs5opgmePm6pXVgEUwyedrNrbMAX99LmzUwUrRBJkbvKQiCaOv
	 eSo1TQaRTde3ZvZuXxrZtmjmL8+3CbohEcM7aBZzgWJfA9Yy8liqTxPqbe/ek4Xiz2
	 VIGMaWDfjF/kIHphV0YAiavZ+yBUy6/FuBTjh4iPCDE/nkrYh6BTUNc2nd0WCCfDnF
	 q7G2LTVjcSEFJywMlC5Waa6QxXQ+4Oi6jeVLiSvKGrbznSLc3I62qoM1aJZ6mXT67j
	 i0RbbSh2I2BNitxq03KrZ4v0nPR5LjlIc9RiChRGBALYI9Um5sFnKwNQAWhJkxONw0
	 OzhiiO0EC3wfA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuP-0004zR-AM; Wed, 07 Sep 2022 13:07:53 +0200
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
Subject: [PATCH 14/16] phy: qcom-qmp-pcie-msm8996: shorten function prefixes
Date: Wed,  7 Sep 2022 13:07:26 +0200
Message-Id: <20220907110728.19092-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040753_241712_808701A0 
X-CRM114-Status: GOOD (  17.40  )
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
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 93 +++++++++----------
 1 file changed, 46 insertions(+), 47 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 5566c28e8e6a..2a5eef6b12f5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -356,7 +356,7 @@ static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
-static void qcom_qmp_phy_pcie_msm8996_configure_lane(void __iomem *base,
+static void qmp_pcie_msm8996_configure_lane(void __iomem *base,
 					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -379,15 +379,15 @@ static void qcom_qmp_phy_pcie_msm8996_configure_lane(void __iomem *base,
 	}
 }
 
-static void qcom_qmp_phy_pcie_msm8996_configure(void __iomem *base,
+static void qmp_pcie_msm8996_configure(void __iomem *base,
 				   const unsigned int *regs,
 				   const struct qmp_phy_init_tbl tbl[],
 				   int num)
 {
-	qcom_qmp_phy_pcie_msm8996_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_pcie_msm8996_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qcom_qmp_phy_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
+static int qmp_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -398,7 +398,7 @@ static int qcom_qmp_phy_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	unsigned int mask, val;
 	int ret;
 
-	qcom_qmp_phy_pcie_msm8996_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_pcie_msm8996_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
 
 	qphy_clrbits(serdes, cfg->regs[QPHY_COM_SW_RESET], SW_RESET);
 	qphy_setbits(serdes, cfg->regs[QPHY_COM_START_CONTROL],
@@ -418,7 +418,7 @@ static int qcom_qmp_phy_pcie_msm8996_serdes_init(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_com_init(struct qmp_phy *qphy)
+static int qmp_pcie_msm8996_com_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -471,7 +471,7 @@ static int qcom_qmp_phy_pcie_msm8996_com_init(struct qmp_phy *qphy)
 	return ret;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_com_exit(struct qmp_phy *qphy)
+static int qmp_pcie_msm8996_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -501,21 +501,21 @@ static int qcom_qmp_phy_pcie_msm8996_com_exit(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_init(struct phy *phy)
+static int qmp_pcie_msm8996_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	int ret;
 	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
 
-	ret = qcom_qmp_phy_pcie_msm8996_com_init(qphy);
+	ret = qmp_pcie_msm8996_com_init(qphy);
 	if (ret)
 		return ret;
 
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
+static int qmp_pcie_msm8996_power_on(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
@@ -528,7 +528,7 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
-	qcom_qmp_phy_pcie_msm8996_serdes_init(qphy);
+	qmp_pcie_msm8996_serdes_init(qphy);
 
 	ret = reset_control_deassert(qphy->lane_rst);
 	if (ret) {
@@ -544,15 +544,15 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qcom_qmp_phy_pcie_msm8996_configure_lane(tx, cfg->regs,
-				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_pcie_msm8996_configure_lane(tx, cfg->regs, cfg->tx_tbl,
+					cfg->tx_tbl_num, 1);
 
-	qcom_qmp_phy_pcie_msm8996_configure_lane(rx, cfg->regs,
-				    cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_pcie_msm8996_configure_lane(rx, cfg->regs, cfg->rx_tbl,
+					cfg->rx_tbl_num, 1);
 
-	qcom_qmp_phy_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_pcie_msm8996_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-	qcom_qmp_phy_pcie_msm8996_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
+	qmp_pcie_msm8996_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
 			       cfg->pcs_misc_tbl_num);
 
 	/*
@@ -591,7 +591,7 @@ static int qcom_qmp_phy_pcie_msm8996_power_on(struct phy *phy)
 	return ret;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_power_off(struct phy *phy)
+static int qmp_pcie_msm8996_power_off(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -616,43 +616,43 @@ static int qcom_qmp_phy_pcie_msm8996_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_exit(struct phy *phy)
+static int qmp_pcie_msm8996_exit(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
 	reset_control_assert(qphy->lane_rst);
 
-	qcom_qmp_phy_pcie_msm8996_com_exit(qphy);
+	qmp_pcie_msm8996_com_exit(qphy);
 
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_enable(struct phy *phy)
+static int qmp_pcie_msm8996_enable(struct phy *phy)
 {
 	int ret;
 
-	ret = qcom_qmp_phy_pcie_msm8996_init(phy);
+	ret = qmp_pcie_msm8996_init(phy);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_pcie_msm8996_power_on(phy);
+	ret = qmp_pcie_msm8996_power_on(phy);
 	if (ret)
-		qcom_qmp_phy_pcie_msm8996_exit(phy);
+		qmp_pcie_msm8996_exit(phy);
 
 	return ret;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_disable(struct phy *phy)
+static int qmp_pcie_msm8996_disable(struct phy *phy)
 {
 	int ret;
 
-	ret = qcom_qmp_phy_pcie_msm8996_power_off(phy);
+	ret = qmp_pcie_msm8996_power_off(phy);
 	if (ret)
 		return ret;
-	return qcom_qmp_phy_pcie_msm8996_exit(phy);
+	return qmp_pcie_msm8996_exit(phy);
 }
 
-static int qcom_qmp_phy_pcie_msm8996_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_msm8996_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_vregs;
@@ -668,7 +668,7 @@ static int qcom_qmp_phy_pcie_msm8996_vreg_init(struct device *dev, const struct
 	return devm_regulator_bulk_get(dev, num, qmp->vregs);
 }
 
-static int qcom_qmp_phy_pcie_msm8996_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_msm8996_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int i;
@@ -689,7 +689,7 @@ static int qcom_qmp_phy_pcie_msm8996_reset_init(struct device *dev, const struct
 	return 0;
 }
 
-static int qcom_qmp_phy_pcie_msm8996_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_msm8996_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_clks;
@@ -765,9 +765,9 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qcom_qmp_phy_pcie_msm8996_ops = {
-	.power_on	= qcom_qmp_phy_pcie_msm8996_enable,
-	.power_off	= qcom_qmp_phy_pcie_msm8996_disable,
+static const struct phy_ops qmp_pcie_msm8996_ops = {
+	.power_on	= qmp_pcie_msm8996_enable,
+	.power_off	= qmp_pcie_msm8996_disable,
 	.owner		= THIS_MODULE,
 };
 
@@ -776,8 +776,7 @@ static void qcom_qmp_reset_control_put(void *data)
 	reset_control_put(data);
 }
 
-static
-int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np, int id,
+static int qmp_pcie_msm8996_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -830,7 +829,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	if (ret)
 		return ret;
 
-	generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_pcie_msm8996_ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_pcie_msm8996_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create qphy %d\n", ret);
@@ -846,16 +845,16 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	return 0;
 }
 
-static const struct of_device_id qcom_qmp_phy_pcie_msm8996_of_match_table[] = {
+static const struct of_device_id qmp_pcie_msm8996_of_match_table[] = {
 	{
 		.compatible = "qcom,msm8996-qmp-pcie-phy",
 		.data = &msm8996_pciephy_cfg,
 	},
 	{ },
 };
-MODULE_DEVICE_TABLE(of, qcom_qmp_phy_pcie_msm8996_of_match_table);
+MODULE_DEVICE_TABLE(of, qmp_pcie_msm8996_of_match_table);
 
-static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
+static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
 	struct device *dev = &pdev->dev;
@@ -887,15 +886,15 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qcom_qmp_phy_pcie_msm8996_clk_init(dev, cfg);
+	ret = qmp_pcie_msm8996_clk_init(dev, cfg);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_pcie_msm8996_reset_init(dev, cfg);
+	ret = qmp_pcie_msm8996_reset_init(dev, cfg);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_pcie_msm8996_vreg_init(dev, cfg);
+	ret = qmp_pcie_msm8996_vreg_init(dev, cfg);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			dev_err(dev, "failed to get regulator supplies: %d\n",
@@ -915,7 +914,7 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		/* Create per-lane phy */
-		ret = qcom_qmp_phy_pcie_msm8996_create(dev, child, id, serdes, cfg);
+		ret = qmp_pcie_msm8996_create(dev, child, id, serdes, cfg);
 		if (ret) {
 			dev_err(dev, "failed to create lane%d phy, %d\n",
 				id, ret);
@@ -945,15 +944,15 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static struct platform_driver qcom_qmp_phy_pcie_msm8996_driver = {
-	.probe		= qcom_qmp_phy_pcie_msm8996_probe,
+static struct platform_driver qmp_pcie_msm8996_driver = {
+	.probe		= qmp_pcie_msm8996_probe,
 	.driver = {
 		.name	= "qcom-qmp-msm8996-pcie-phy",
-		.of_match_table = qcom_qmp_phy_pcie_msm8996_of_match_table,
+		.of_match_table = qmp_pcie_msm8996_of_match_table,
 	},
 };
 
-module_platform_driver(qcom_qmp_phy_pcie_msm8996_driver);
+module_platform_driver(qmp_pcie_msm8996_driver);
 
 MODULE_AUTHOR("Vivek Gautam <vivek.gautam@codeaurora.org>");
 MODULE_DESCRIPTION("Qualcomm QMP MSM8996 PCIe PHY driver");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
