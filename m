Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7CFFC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RE/ijvz89SXBoDpTdZMbYH5nHaa98n8u9RNAzXTbzg=; b=2lJgRSzuP1CZqK
	1NYIC2oHvq9yrA2ZiPD2rr0OpJ6fE5eB66qycZ3XpGjSfGbrfvc2RnEV+PVuSM4XIW6a3O+UVgEXk
	uQ63kZd9UirXCM773LhSgOo64pi9F3b/o5l56ShH+cARPWynyYaqw/mXloW33D7xkIL1/9qSvhhCI
	aEbL3joOPC19ManEa+YEo+RpCqPbDOVTXrvCjhaw6q9M7jAdr6BsrKExLwFwEhJygmCYsIWqh2fG/
	4MEVx7t2UZJ3NmxWfTPwvQIr8YrekEllBaLZc1hrpH9xaJpQL5NO4jWOdj6FnsPhyu3y+OwMaKXE0
	tjCCI7fBbJnPX5UqhAiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIh-00EaMD-QE; Fri, 11 Nov 2022 09:26:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIZ-00EaGZ-Ef
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 11FBFB82479;
	Fri, 11 Nov 2022 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A362EC433C1;
	Fri, 11 Nov 2022 09:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158764;
	bh=DSsASXt+L3MVWR9JIQoZ+ghKyfK/dDKTRjA4nYf+2oA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=R3sgsNRrRBY0wD6g2qXTlGlggaEeSNYB508i/8+RejqW3mvFvLtIG/b0MsY4LgTyr
	 QOUVFew260Ku58gh4OoIh0SOgznHI9WuZ2cl/Z52lyObnFOJ0vhWogENzDXjqDtJlE
	 48duHFTIvBn5ACbAuDXrL2tAjycr9mb/taD/+e8PmWRPviCvPGxMghBS3MY1TQbfN5
	 O51uVEZxZ4kRP2W/8ov5ozA3lHZjxio7Ee3T+lk42uTujZDeu0fnlQFR9ivZranb09
	 WPAWw6LfVW7KJRDjFCwuWGnyKxJjD9fDJaHOPotlh5+N6+TMWwelHH5P6xaVLmPB0P
	 k1cM0D8EMjM8g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI4-0002kv-Qx; Fri, 11 Nov 2022 10:25:36 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 04/14] phy: qcom-qmp-combo: restructure PHY creation
Date: Fri, 11 Nov 2022 10:24:47 +0100
Message-Id: <20221111092457.10546-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012608_190923_F08C452F 
X-CRM114-Status: GOOD (  16.16  )
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

Signed-off-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 89 ++++++++++++-----------
 1 file changed, 48 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index e6c7cf723b19..1bc8567a8605 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2483,12 +2483,10 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static int qmp_combo_create_dp(struct qmp_combo *qmp, struct device_node *np)
+static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	struct phy *generic_phy;
-	int ret;
 
 	/*
 	 * Get memory resources for each PHY:
@@ -2512,25 +2510,13 @@ static int qmp_combo_create_dp(struct qmp_combo *qmp, struct device_node *np)
 			return PTR_ERR(qmp->dp_tx2);
 	}
 
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
 	 * Get memory resources for each PHY:
@@ -2578,15 +2564,34 @@ static int qmp_combo_create_usb(struct qmp_combo *qmp, struct device_node *np)
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
@@ -2609,18 +2614,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
@@ -2645,6 +2638,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	ret = qmp_combo_parse_dt_legacy(qmp, usb_np, dp_np);
+	if (ret)
+		goto err_node_put;
+
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
@@ -2655,21 +2652,31 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
