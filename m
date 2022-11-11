Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46891C43217
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GUq+KxX+nlczVt2R9Xsi09piVEDqb9klVCoWdimVFk=; b=L5DpPVqVVO837u
	oZJlHkU6X+86kpr8Q/oail0ay5tESCDn244ef4Mt7GhNrQrfMPyvubzzdVuse5sqELomBLe9kMfzd
	Rtc4HXN2IB2NcJ36EhWfSQTvlKRvcLE7uem1U/DSaQqqnaPnJlIKkFI9B+BlTiyY6avFrdN6vQcgj
	YQsxgJ5rInmmWXk+0UMZC9Sef2rnDQOUcjAS7kCgPL9baIyDpMw7Y46/PeqELYx7+2lDVhWLaU0gl
	zIOqJ+rZ7DKcGL9F/K28tEcG9XT0ZFI6ACGQb87M08o0prpVu4Gyqd6VfK9hUuYL+ZfcXJJChcdwn
	RQ82FWe4DCnKIQZYwH1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPrC-00EPyR-8y; Fri, 11 Nov 2022 08:57:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqr-00EPWf-0G
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B65A61F11;
	Fri, 11 Nov 2022 08:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3769DC4FF60;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157044;
	bh=ZcOkzTSNHIA1u3WkLWyPc5izwzYrejfJdBdYMy+OOdU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ELePEi3YOs70QuiGKmgAsdZ0ftGkFzuyqHie6+tNV0s9cvADpQb4Wb6fDDraTx87Y
	 jIu9XWpXK5X27abzDsQFfxvaE1a+Qwg+Ey3i3aNr5hz7wXCpkwn3p/h36TXRlmCQhg
	 DWANKJMIv0YCoMLTiVlXI00/sluewrVtLvutt6Yvnp5cOUknOulrrvtkCnSu5BSJoM
	 4l1PDOAqG/MEIMe6SFIXlmN0nKcK8oxd4VnsVP3A7CekYvQKbLJSAnCKxHLWirBdXZ
	 RrhMXWNCaiZ2Mi2L29my+iHVzUybxj+mT3JUKgM9YMXVvh4niZ5TgTLBE7aGUA+6S9
	 e2EyCf178ESpA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqK-0002Uj-J3; Fri, 11 Nov 2022 09:56:56 +0100
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
Subject: [PATCH 20/22] phy: qcom-qmp-combo: clean up probe initialisation
Date: Fri, 11 Nov 2022 09:56:41 +0100
Message-Id: <20221111085643.9478-21-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005729_225781_FFEAAA67 
X-CRM114-Status: GOOD (  15.55  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 62 ++++++++++-------------
 1 file changed, 28 insertions(+), 34 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a4df228d8ae2..bb2c86976f78 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2162,9 +2162,10 @@ static const struct dev_pm_ops qmp_combo_pm_ops = {
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
 
@@ -2194,9 +2195,10 @@ static int qmp_combo_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg
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
 
@@ -2215,9 +2217,10 @@ static int qmp_combo_reset_init(struct device *dev, const struct qmp_phy_cfg *cf
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
 
@@ -2482,15 +2485,13 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static int qmp_combo_create_dp(struct device *dev, struct device_node *np,
-			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+static int qmp_combo_create_dp(struct qmp_combo *qmp, struct device_node *np)
 {
-	struct qmp_combo *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	struct phy *generic_phy;
 	int ret;
 
-	qmp->cfg = cfg;
-	qmp->dp_serdes = serdes;
 	/*
 	 * Get memory resources for each PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
@@ -2526,15 +2527,13 @@ static int qmp_combo_create_dp(struct device *dev, struct device_node *np,
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
 	 * Get memory resources for each PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
@@ -2600,10 +2599,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *dp_np, *usb_np;
 	struct phy_provider *phy_provider;
-	void __iomem *serdes;
-	void __iomem *usb_serdes;
-	void __iomem *dp_serdes = NULL;
-	const struct qmp_phy_cfg *cfg = NULL;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2611,35 +2606,34 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
 
@@ -2663,7 +2657,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = qmp_combo_create_usb(dev, usb_np, usb_serdes, cfg);
+	ret = qmp_combo_create_usb(qmp, usb_np);
 	if (ret)
 		goto err_node_put;
 
@@ -2671,7 +2665,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
