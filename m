Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F1DC43219
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTdyODYhF1EO8CIh4aO+qdh/lWq4030VmkRj4sz0oWQ=; b=FYGIMgzdNNuUV5
	SJFAik9PaTbMKjv89EbmNiu4BxDCQI0NqnY3aZJtyGtITIqlP8VvJGFCKWU5EoB0iYvQuI6y6oV7t
	bFwU3ne9Z1nKSvA/5eHvaee3PjR2RDDwhbA9VM5BW5v/NSXV0xSOxRkqiMSTNPM1P6zXw48+Il/7Z
	O8HvypBDNQZ+71IVHkJn3eiZaIyYV1kpdwnp4XzudU2ANvd1FDHH+5WD7yw7i0WgCbEWbTRg/tyaG
	UNWYgHZU+Y3qgET0Gsa53Bz2TCLF3vkwDpZs/xNmCR9eMecszQAloa+E65XypZUqlbF08UGRaNjlU
	VSjNBT0GyxiSvgxsaQCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJY-000DD5-3z; Mon, 14 Nov 2022 11:07:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJB-000Cti-1p
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2A3AE6102E;
	Mon, 14 Nov 2022 11:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 290FFC4FF6E;
	Mon, 14 Nov 2022 11:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424035;
	bh=CrTIV+RLoOEUxG/kskgtip682WH0/tx5ssc28Evx46I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kdkihBmxAsUlVbmCpQsXWOOaK31FJapumWs4eC5lHgdPBFMEkuqaswqovWy9nUCJy
	 9IkIr+nkZaeV8f3khasmv2FV9S2t4GpGi4M0aAXmNssPxASG/ezmkTxJMmcm0e7IAZ
	 5n6FyKj5i+npf8FIEAm3dd/VpmQEmd7qwTtkCNR1BcEZibo4tcaoIW3Snvec5ZQSWG
	 KwY05x/hNe363zbDMLTGYX3zNz9eoO8MJ69zY6/8llNzOTdcLHWw0i+Iyv2HW+QbdR
	 gxAbT37GpaVaCRt07+5Dry0aIYjVK+jalYbbbcmUZt57IWP6QxcjosnyvUBYuN/s2J
	 QdmZAtRyOilvA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIZ-0001FO-JJ; Mon, 14 Nov 2022 12:06:43 +0100
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
Subject: [PATCH v2 21/22] phy: qcom-qmp-combo: clean up probe initialisation
Date: Mon, 14 Nov 2022 12:06:20 +0100
Message-Id: <20221114110621.4639-22-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030721_284116_7AF5B3E3 
X-CRM114-Status: GOOD (  16.03  )
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

Stop abusing the driver data pointer and instead pass the driver state
structure directly to the initialisation helpers during probe.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 61 ++++++++++-------------
 1 file changed, 27 insertions(+), 34 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9eacbd224012..5d92cbfc458e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2148,9 +2148,10 @@ static const struct dev_pm_ops qmp_combo_pm_ops = {
 			   qmp_combo_runtime_resume, NULL)
 };
 
-static int qmp_combo_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_combo_vreg_init(struct qmp_combo *qmp)
 {
-	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int num = cfg->num_vregs;
 	int ret, i;
 
@@ -2180,9 +2181,10 @@ static int qmp_combo_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg
 	return 0;
 }
 
-static int qmp_combo_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_combo_reset_init(struct qmp_combo *qmp)
 {
-	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int i;
 	int ret;
 
@@ -2201,9 +2203,10 @@ static int qmp_combo_reset_init(struct device *dev, const struct qmp_phy_cfg *cf
 	return 0;
 }
 
-static int qmp_combo_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_combo_clk_init(struct qmp_combo *qmp)
 {
-	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int num = cfg->num_clks;
 	int i;
 
@@ -2468,15 +2471,12 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static int qmp_combo_create_dp(struct device *dev, struct device_node *np,
-			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+static int qmp_combo_create_dp(struct qmp_combo *qmp, struct device_node *np)
 {
-	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	struct device *dev = qmp->dev;
 	struct phy *generic_phy;
 	int ret;
 
-	qmp->cfg = cfg;
-	qmp->dp_serdes = serdes;
 	/*
 	 * Get memory resources from the DP child node:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2;
@@ -2509,15 +2509,13 @@ static int qmp_combo_create_dp(struct device *dev, struct device_node *np,
 	return 0;
 }
 
-static int qmp_combo_create_usb(struct device *dev, struct device_node *np,
-			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+static int qmp_combo_create_usb(struct qmp_combo *qmp, struct device_node *np)
 {
-	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	struct phy *generic_phy;
 	int ret;
 
-	qmp->cfg = cfg;
-	qmp->serdes = serdes;
 	/*
 	 * Get memory resources from the USB child node:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2;
@@ -2577,10 +2575,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *dp_np, *usb_np;
 	struct phy_provider *phy_provider;
-	void __iomem *serdes;
-	void __iomem *usb_serdes;
-	void __iomem *dp_serdes = NULL;
-	const struct qmp_phy_cfg *cfg = NULL;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2588,35 +2582,34 @@ static int qmp_combo_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
-	dev_set_drvdata(dev, qmp);
 
-	cfg = of_device_get_match_data(dev);
-	if (!cfg)
+	qmp->cfg = of_device_get_match_data(dev);
+	if (!qmp->cfg)
 		return -EINVAL;
 
-	usb_serdes = serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(serdes))
-		return PTR_ERR(serdes);
+	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qmp->serdes))
+		return PTR_ERR(qmp->serdes);
 
 	qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(qmp->dp_com))
 		return PTR_ERR(qmp->dp_com);
 
-	dp_serdes = devm_platform_ioremap_resource(pdev, 2);
-	if (IS_ERR(dp_serdes))
-		return PTR_ERR(dp_serdes);
+	qmp->dp_serdes = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(qmp->dp_serdes))
+		return PTR_ERR(qmp->dp_serdes);
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_combo_clk_init(dev, cfg);
+	ret = qmp_combo_clk_init(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_reset_init(dev, cfg);
+	ret = qmp_combo_reset_init(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_vreg_init(dev, cfg);
+	ret = qmp_combo_vreg_init(qmp);
 	if (ret)
 		return ret;
 
@@ -2640,7 +2633,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = qmp_combo_create_usb(dev, usb_np, usb_serdes, cfg);
+	ret = qmp_combo_create_usb(qmp, usb_np);
 	if (ret)
 		goto err_node_put;
 
@@ -2648,7 +2641,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_create_dp(dev, dp_np, dp_serdes, cfg);
+	ret = qmp_combo_create_dp(qmp, dp_np);
 	if (ret)
 		goto err_node_put;
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
