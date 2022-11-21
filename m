Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62F8BC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkrU3kOH/rtu2QzyMkD5/5onrRlmeKVhn6w5pBeYtwA=; b=26JeK73vfahXiK
	t98kztmY61+M4qX4NoTt9jWAOmarjpm7Jcal6bHw0ILbDnyOyiPyThREtx0Dbq6Q8rycxrdNbmW66
	TqK+lhvemw1jsWnKnxqyTAi5lqzDJB4ktcDj7rBhkj52qM/NU//L2nIkghqzT/qfV5RVqz5/Xldd/
	TO29csQPy8vXIF1xmEL4YL4GWymFiysRjc61uLx/5TH8zY8KgYMzBILVzTZHGpXdivUCxATYDJ2f+
	roTbGB+k+3PTqAvBjQiupKIwQs4f81rDrN4Yn5o0qLfiMfAjE/IzmEjiXEmXsUjHf7QWKFSYb9C3Z
	EFNQFh/STM1o4TiSoBew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X5-00BUgH-IK; Mon, 21 Nov 2022 08:52:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2Wz-00BUYt-Sl
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 58793B80D3B;
	Mon, 21 Nov 2022 08:51:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7967DC4347C;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020714;
	bh=nzabcUI7z+MyuSCtZF8lvOIYfQrnnHbYGJTcKqba0o4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SacS/G5rxup8Pm5C9XZ2GPnUefPFig1yCpy73gblhsZbovMRcvDxad8URmRT9T1YO
	 9Vapks5s+adqugisamStqQclZ2lQMKiyJw5O/K3e3il986oivoaNA06ROU0+4vQam1
	 xeSWmXMWJRNFG073YGh7LBreSq+xBwPst2YFPrPRZhMji6smYRSiVuJc8p/BbYBvaT
	 NUe2VZM1AcD1hIWmXuH551WN7o189K8ryBS5b4dUEH/MZoVzgplkqwZ7AFJe0jSGvF
	 mEUiI8+3eDEg3/+ccZWNkfWogex/Ph2uHs3Hl4EUWiPJepy6EVykBzNWjqqVZJhUAF
	 Mmu02DtnzX4OQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WS-00088L-Nx; Mon, 21 Nov 2022 09:51:24 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 04/15] phy: qcom-qmp-combo: restructure PHY creation
Date: Mon, 21 Nov 2022 09:50:47 +0100
Message-Id: <20221121085058.31213-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005158_270574_615FE0DF 
X-CRM114-Status: GOOD (  17.15  )
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

In preparation for supporting devicetree bindings which do not use child
nodes, move the PHY creation to probe() proper and parse the serdes,
dp_com and dp_serdes resources in a dedicated legacy devicetree helper.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 89 ++++++++++++-----------
 1 file changed, 48 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5da42a4e5bf6..85def6560e43 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2471,11 +2471,9 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static int qmp_combo_create_dp(struct qmp_combo *qmp, struct device_node *np)
+static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct device *dev = qmp->dev;
-	struct phy *generic_phy;
-	int ret;
 
 	/*
 	 * Get memory resources from the DP child node:
@@ -2496,25 +2494,13 @@ static int qmp_combo_create_dp(struct qmp_combo *qmp, struct device_node *np)
 	if (IS_ERR(qmp->dp_tx2))
 		return PTR_ERR(qmp->dp_tx2);
 
-	generic_phy = devm_phy_create(dev, np, &qmp_combo_dp_phy_ops);
-	if (IS_ERR(generic_phy)) {
-		ret = PTR_ERR(generic_phy);
-		dev_err(dev, "failed to create DP PHY: %d\n", ret);
-		return ret;
-	}
-
-	qmp->dp_phy = generic_phy;
-	phy_set_drvdata(generic_phy, qmp);
-
 	return 0;
 }
 
-static int qmp_combo_create_usb(struct qmp_combo *qmp, struct device_node *np)
+static int qmp_combo_parse_dt_lecacy_usb(struct qmp_combo *qmp, struct device_node *np)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	struct phy *generic_phy;
-	int ret;
 
 	/*
 	 * Get memory resources from the USB child node:
@@ -2556,15 +2542,34 @@ static int qmp_combo_create_usb(struct qmp_combo *qmp, struct device_node *np)
 				     "failed to get pipe clock\n");
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qmp_combo_usb_phy_ops);
-	if (IS_ERR(generic_phy)) {
-		ret = PTR_ERR(generic_phy);
-		dev_err(dev, "failed to create USB PHY: %d\n", ret);
+	return 0;
+}
+
+static int qmp_combo_parse_dt_legacy(struct qmp_combo *qmp, struct device_node *usb_np,
+					struct device_node *dp_np)
+{
+	struct platform_device *pdev = to_platform_device(qmp->dev);
+	int ret;
+
+	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qmp->serdes))
+		return PTR_ERR(qmp->serdes);
+
+	qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(qmp->dp_com))
+		return PTR_ERR(qmp->dp_com);
+
+	qmp->dp_serdes = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(qmp->dp_serdes))
+		return PTR_ERR(qmp->dp_serdes);
+
+	ret = qmp_combo_parse_dt_lecacy_usb(qmp, usb_np);
+	if (ret)
 		return ret;
-	}
 
-	qmp->usb_phy = generic_phy;
-	phy_set_drvdata(generic_phy, qmp);
+	ret = qmp_combo_parse_dt_lecacy_dp(qmp, dp_np);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -2587,18 +2592,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (!qmp->cfg)
 		return -EINVAL;
 
-	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(qmp->serdes))
-		return PTR_ERR(qmp->serdes);
-
-	qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
-	if (IS_ERR(qmp->dp_com))
-		return PTR_ERR(qmp->dp_com);
-
-	qmp->dp_serdes = devm_platform_ioremap_resource(pdev, 2);
-	if (IS_ERR(qmp->dp_serdes))
-		return PTR_ERR(qmp->dp_serdes);
-
 	mutex_init(&qmp->phy_mutex);
 
 	ret = qmp_combo_clk_init(qmp);
@@ -2623,6 +2616,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	ret = qmp_combo_parse_dt_legacy(qmp, usb_np, dp_np);
+	if (ret)
+		goto err_node_put;
+
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
@@ -2633,21 +2630,31 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = qmp_combo_create_usb(qmp, usb_np);
+	ret = phy_pipe_clk_register(qmp, usb_np);
 	if (ret)
 		goto err_node_put;
 
-	ret = phy_pipe_clk_register(qmp, usb_np);
+	ret = phy_dp_clks_register(qmp, dp_np);
 	if (ret)
 		goto err_node_put;
 
-	ret = qmp_combo_create_dp(qmp, dp_np);
-	if (ret)
+	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
+	if (IS_ERR(qmp->usb_phy)) {
+		ret = PTR_ERR(qmp->usb_phy);
+		dev_err(dev, "failed to create USB PHY: %d\n", ret);
 		goto err_node_put;
+	}
 
-	ret = phy_dp_clks_register(qmp, dp_np);
-	if (ret)
+	phy_set_drvdata(qmp->usb_phy, qmp);
+
+	qmp->dp_phy = devm_phy_create(dev, dp_np, &qmp_combo_dp_phy_ops);
+	if (IS_ERR(qmp->dp_phy)) {
+		ret = PTR_ERR(qmp->dp_phy);
+		dev_err(dev, "failed to create DP PHY: %d\n", ret);
 		goto err_node_put;
+	}
+
+	phy_set_drvdata(qmp->dp_phy, qmp);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
