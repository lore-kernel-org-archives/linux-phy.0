Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBE9DC6FA8E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvQOm65V2Qsq4UMA2QdjbN+Fm7/Ngkz4RLsP9xwIyS4=; b=GdWnYiXqtxNVTi
	b8EGUcttN4eiAOnmmQ1+vLi9zC3dEl19cjr0zV2DUBi3jQDAFffv3DlnBpvWHslOl6R/20fi+NdH/
	uvRreNVT6jMNzcuDerrMU66bCe5V6ZNYwSO2tZxPQVX2O0CeawFECgfRFY2SvjoMFlwaGRRF4KsSz
	89XfBoOUDt8POHE4ZQXcLhRZHKF8j3CDMNE6J+ZRb30hIulfiVpII0A66ju/yBgrwai8x22gIWTpF
	l20+CR6002/TEmc6aRwG9YOU3VgyThmQh4R7dbgI6uiCOVNB1jzXPjy+NZlNzkyr6UZOWLOhLuWIO
	YgmHBFaHJ70KRkLRbcjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsui-005XPO-1J; Wed, 07 Sep 2022 11:08:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuS-005XA4-0a
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:08:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E1FD66189D;
	Wed,  7 Sep 2022 11:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01B57C43141;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548869;
	bh=p1SL9Dvne5eLJfHG2Q0U7k0mQStINRdc4kRr9FGwPCQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j/q/K1gVzLhpClsLF6tmBg0zE/IRvc6Cw84s3+HT6mVOp7gMrOmFKPa/rrihopULd
	 3yk3FG87HgnzvHLkHZHnEVUDWht8ehHaGf4Wetr/Br4ysxGIX18cjSUF2QkZzPsOpN
	 87aV+BzzCZpiKM3GnngXpBNzxgTryKiSF3QYiZqQQBJChtgQZd/NLgRkePC0uDP1sr
	 MtSTwpIkN2XAEbdlfK4XbGolNGM4++atAF70KzEAyWuln064hU8spx/iriTFIUJZty
	 nvx4zKFTZmR+i4dNCGQbwKJgyz0zlzOIueqdH6aSLnKs3oR8+72VBrQwS/cAT2hRTp
	 kqFbRq/ZTyw2Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuP-0004zY-Fy; Wed, 07 Sep 2022 13:07:53 +0200
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
Subject: [PATCH 16/16] phy: qcom-qmp-usb: shorten function prefixes
Date: Wed,  7 Sep 2022 13:07:28 +0200
Message-Id: <20220907110728.19092-17-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040756_248280_949F76D7 
X-CRM114-Status: GOOD (  18.30  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 121 ++++++++++++------------
 2 files changed, 60 insertions(+), 64 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index b020409b92e0..4d0eee620f37 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1105,8 +1105,7 @@ static const struct phy_ops qcom_qmp_ufs_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static
-int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
+static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 08e0799e8832..41635c21e3ca 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2103,7 +2103,7 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.is_dual_lane_phy	= true,
 };
 
-static void qcom_qmp_phy_usb_configure_lane(void __iomem *base,
+static void qmp_usb_configure_lane(void __iomem *base,
 					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -2126,27 +2126,27 @@ static void qcom_qmp_phy_usb_configure_lane(void __iomem *base,
 	}
 }
 
-static void qcom_qmp_phy_usb_configure(void __iomem *base,
+static void qmp_usb_configure(void __iomem *base,
 				   const unsigned int *regs,
 				   const struct qmp_phy_init_tbl tbl[],
 				   int num)
 {
-	qcom_qmp_phy_usb_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_usb_configure_lane(base, regs, tbl, num, 0xff);
 }
 
-static int qcom_qmp_phy_usb_serdes_init(struct qmp_phy *qphy)
+static int qmp_usb_serdes_init(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qcom_qmp_phy_usb_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_usb_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
 
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
+static int qmp_usb_com_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -2218,7 +2218,7 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 	return ret;
 }
 
-static int qcom_qmp_phy_usb_com_exit(struct qmp_phy *qphy)
+static int qmp_usb_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -2232,21 +2232,21 @@ static int qcom_qmp_phy_usb_com_exit(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_init(struct phy *phy)
+static int qmp_usb_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	int ret;
 	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
 
-	ret = qcom_qmp_phy_usb_com_init(qphy);
+	ret = qmp_usb_com_init(qphy);
 	if (ret)
 		return ret;
 
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_power_on(struct phy *phy)
+static int qmp_usb_power_on(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
@@ -2258,7 +2258,7 @@ static int qcom_qmp_phy_usb_power_on(struct phy *phy)
 	unsigned int mask, val, ready;
 	int ret;
 
-	qcom_qmp_phy_usb_serdes_init(qphy);
+	qmp_usb_serdes_init(qphy);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
@@ -2267,24 +2267,22 @@ static int qcom_qmp_phy_usb_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qcom_qmp_phy_usb_configure_lane(tx, cfg->regs,
-				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_usb_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
 	if (cfg->is_dual_lane_phy) {
-		qcom_qmp_phy_usb_configure_lane(qphy->tx2, cfg->regs,
-					    cfg->tx_tbl, cfg->tx_tbl_num, 2);
+		qmp_usb_configure_lane(qphy->tx2, cfg->regs,
+					cfg->tx_tbl, cfg->tx_tbl_num, 2);
 	}
 
-	qcom_qmp_phy_usb_configure_lane(rx, cfg->regs,
-				    cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_usb_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
 	if (cfg->is_dual_lane_phy) {
-		qcom_qmp_phy_usb_configure_lane(qphy->rx2, cfg->regs,
-					    cfg->rx_tbl, cfg->rx_tbl_num, 2);
+		qmp_usb_configure_lane(qphy->rx2, cfg->regs,
+					cfg->rx_tbl, cfg->rx_tbl_num, 2);
 	}
 
 	/* Configure link rate, swing, etc. */
-	qcom_qmp_phy_usb_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_usb_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
@@ -2314,7 +2312,7 @@ static int qcom_qmp_phy_usb_power_on(struct phy *phy)
 	return ret;
 }
 
-static int qcom_qmp_phy_usb_power_off(struct phy *phy)
+static int qmp_usb_power_off(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -2339,42 +2337,41 @@ static int qcom_qmp_phy_usb_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_exit(struct phy *phy)
+static int qmp_usb_exit(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
-	qcom_qmp_phy_usb_com_exit(qphy);
+	qmp_usb_com_exit(qphy);
 
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_enable(struct phy *phy)
+static int qmp_usb_enable(struct phy *phy)
 {
 	int ret;
 
-	ret = qcom_qmp_phy_usb_init(phy);
+	ret = qmp_usb_init(phy);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_usb_power_on(phy);
+	ret = qmp_usb_power_on(phy);
 	if (ret)
-		qcom_qmp_phy_usb_exit(phy);
+		qmp_usb_exit(phy);
 
 	return ret;
 }
 
-static int qcom_qmp_phy_usb_disable(struct phy *phy)
+static int qmp_usb_disable(struct phy *phy)
 {
 	int ret;
 
-	ret = qcom_qmp_phy_usb_power_off(phy);
+	ret = qmp_usb_power_off(phy);
 	if (ret)
 		return ret;
-	return qcom_qmp_phy_usb_exit(phy);
+	return qmp_usb_exit(phy);
 }
 
-static int qcom_qmp_phy_usb_set_mode(struct phy *phy,
-				 enum phy_mode mode, int submode)
+static int qmp_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
@@ -2383,7 +2380,7 @@ static int qcom_qmp_phy_usb_set_mode(struct phy *phy,
 	return 0;
 }
 
-static void qcom_qmp_phy_usb_enable_autonomous_mode(struct qmp_phy *qphy)
+static void qmp_usb_enable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
@@ -2412,7 +2409,7 @@ static void qcom_qmp_phy_usb_enable_autonomous_mode(struct qmp_phy *qphy)
 		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
 }
 
-static void qcom_qmp_phy_usb_disable_autonomous_mode(struct qmp_phy *qphy)
+static void qmp_usb_disable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
@@ -2430,7 +2427,7 @@ static void qcom_qmp_phy_usb_disable_autonomous_mode(struct qmp_phy *qphy)
 	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
 }
 
-static int __maybe_unused qcom_qmp_phy_usb_runtime_suspend(struct device *dev)
+static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct qmp_phy *qphy = qmp->phys[0];
@@ -2447,7 +2444,7 @@ static int __maybe_unused qcom_qmp_phy_usb_runtime_suspend(struct device *dev)
 		return 0;
 	}
 
-	qcom_qmp_phy_usb_enable_autonomous_mode(qphy);
+	qmp_usb_enable_autonomous_mode(qphy);
 
 	clk_disable_unprepare(qphy->pipe_clk);
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
@@ -2455,7 +2452,7 @@ static int __maybe_unused qcom_qmp_phy_usb_runtime_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused qcom_qmp_phy_usb_runtime_resume(struct device *dev)
+static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct qmp_phy *qphy = qmp->phys[0];
@@ -2484,12 +2481,12 @@ static int __maybe_unused qcom_qmp_phy_usb_runtime_resume(struct device *dev)
 		return ret;
 	}
 
-	qcom_qmp_phy_usb_disable_autonomous_mode(qphy);
+	qmp_usb_disable_autonomous_mode(qphy);
 
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_vregs;
@@ -2505,7 +2502,7 @@ static int qcom_qmp_phy_usb_vreg_init(struct device *dev, const struct qmp_phy_c
 	return devm_regulator_bulk_get(dev, num, qmp->vregs);
 }
 
-static int qcom_qmp_phy_usb_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int i;
@@ -2526,7 +2523,7 @@ static int qcom_qmp_phy_usb_reset_init(struct device *dev, const struct qmp_phy_
 	return 0;
 }
 
-static int qcom_qmp_phy_usb_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_clks;
@@ -2602,15 +2599,15 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qcom_qmp_phy_usb_ops = {
-	.init		= qcom_qmp_phy_usb_enable,
-	.exit		= qcom_qmp_phy_usb_disable,
-	.set_mode	= qcom_qmp_phy_usb_set_mode,
+static const struct phy_ops qmp_usb_ops = {
+	.init		= qmp_usb_enable,
+	.exit		= qmp_usb_disable,
+	.set_mode	= qmp_usb_set_mode,
 	.owner		= THIS_MODULE,
 };
 
 static
-int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
+int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2680,7 +2677,7 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 				     "failed to get lane%d pipe clock\n", id);
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_usb_ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_usb_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create qphy %d\n", ret);
@@ -2696,7 +2693,7 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
+static const struct of_device_id qmp_usb_of_match_table[] = {
 	{
 		.compatible = "qcom,ipq8074-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
@@ -2757,14 +2754,14 @@ static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
 	},
 	{ },
 };
-MODULE_DEVICE_TABLE(of, qcom_qmp_phy_usb_of_match_table);
+MODULE_DEVICE_TABLE(of, qmp_usb_of_match_table);
 
-static const struct dev_pm_ops qcom_qmp_phy_usb_pm_ops = {
-	SET_RUNTIME_PM_OPS(qcom_qmp_phy_usb_runtime_suspend,
-			   qcom_qmp_phy_usb_runtime_resume, NULL)
+static const struct dev_pm_ops qmp_usb_pm_ops = {
+	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
+			   qmp_usb_runtime_resume, NULL)
 };
 
-static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
+static int qmp_usb_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
 	struct device *dev = &pdev->dev;
@@ -2799,15 +2796,15 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 			return PTR_ERR(qmp->dp_com);
 	}
 
-	ret = qcom_qmp_phy_usb_clk_init(dev, cfg);
+	ret = qmp_usb_clk_init(dev, cfg);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_usb_reset_init(dev, cfg);
+	ret = qmp_usb_reset_init(dev, cfg);
 	if (ret)
 		return ret;
 
-	ret = qcom_qmp_phy_usb_vreg_init(dev, cfg);
+	ret = qmp_usb_vreg_init(dev, cfg);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			dev_err(dev, "failed to get regulator supplies: %d\n",
@@ -2837,7 +2834,7 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		/* Create per-lane phy */
-		ret = qcom_qmp_phy_usb_create(dev, child, id, serdes, cfg);
+		ret = qmp_usb_create(dev, child, id, serdes, cfg);
 		if (ret) {
 			dev_err(dev, "failed to create lane%d phy, %d\n",
 				id, ret);
@@ -2867,16 +2864,16 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static struct platform_driver qcom_qmp_phy_usb_driver = {
-	.probe		= qcom_qmp_phy_usb_probe,
+static struct platform_driver qmp_usb_driver = {
+	.probe		= qmp_usb_probe,
 	.driver = {
 		.name	= "qcom-qmp-usb-phy",
-		.pm	= &qcom_qmp_phy_usb_pm_ops,
-		.of_match_table = qcom_qmp_phy_usb_of_match_table,
+		.pm	= &qmp_usb_pm_ops,
+		.of_match_table = qmp_usb_of_match_table,
 	},
 };
 
-module_platform_driver(qcom_qmp_phy_usb_driver);
+module_platform_driver(qmp_usb_driver);
 
 MODULE_AUTHOR("Vivek Gautam <vivek.gautam@codeaurora.org>");
 MODULE_DESCRIPTION("Qualcomm QMP USB PHY driver");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
