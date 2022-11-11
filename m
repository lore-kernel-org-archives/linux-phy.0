Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D876C4167D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrNpHQgdQnAyMMtf5KOyJpqSFIXqC2oJEpzVSk1DupI=; b=K7R8F96V9ft/6S
	DpHWjHv3FxzlU4ndT6ksSv1CB6h9qsZL8JARt3rdGEUhPjKTuRkFE6+uTeYfKqlpaGtJbR/oPrzTT
	0VDcMDIBB/Up0SE+BACtpkWnYPxzZc4R4ePtvk4+Wwt4xWkyFSCKeRNFwPQmpuwyO3UZDhWGagd74
	M1pRx+JFzb+kEC7t8p1Oks/Jx0A6ub/amD0VV/bBRscmwUFuwiB157XDJNSAjDPX+egrBsLzY1mrj
	qRG3BClzOLNJGMczPZIyPcTmcHhYeMmGZ71YKNPUruws4SQGlcKT9U4TQsTpCDV9tpdmmTK31geH/
	tjjUXBzQsPXd8MCr3Fzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr8-00EPtF-Rh; Fri, 11 Nov 2022 08:57:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqp-00EPZr-AR
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0DF8361ED4;
	Fri, 11 Nov 2022 08:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B1A8C4FF41;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157044;
	bh=9QCvgaPFthb6sQCOGE29pX488mZSMXQmDL1/DQjfEp8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qv4nf/KV+mhHf+Otksy3+RznjhjvBR4RRjN6zOMUk1nfntKpdXHx9haFkISEhfKK3
	 TbJaYMrFXR717ui97z39VNeodX4PBg4B8f6lFwuw8o+tbl7CpsiHgW6BChO8ZHLNS1
	 l1Pbrz4B1hd7DQpylfEwz8nV++K6CHraNO2kKYpe82utvQLUF0XRYnph1tn4vkD8DN
	 9AzI4JQi0V8hvmasTv5GmyBaq5ud728XK1cRKTFhUCLfUUP97zLa+kFTNvNx1toUp4
	 Fgy7ZJTnwehHo0pmg8ldlTH4SsUzpLqzbWBnCAegbBgF4aZ9a039Sz5o6FljmKkYVH
	 YOlbe0f64csFw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqK-0002Ug-Fp; Fri, 11 Nov 2022 09:56:56 +0100
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
Subject: [PATCH 19/22] phy: qcom-qmp-combo: clean up device-tree parsing
Date: Fri, 11 Nov 2022 09:56:40 +0100
Message-Id: <20221111085643.9478-20-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005727_484942_B1E6CFB6 
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

Since the QMP driver split there will be precisely two child nodes so
drop the obsolete iteration construct.

While at it, drop the verbose error logging that would have been printed
also on probe deferrals.

Note that there is no need to check if there are additional child nodes
(the kernel is not a devicetree validator), but let's return an error if
either child node is missing.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 82 ++++++++---------------
 1 file changed, 28 insertions(+), 54 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 43b7ea5d2edc..a4df228d8ae2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2598,13 +2598,12 @@ static int qmp_combo_probe(struct platform_device *pdev)
 {
 	struct qmp_combo *qmp;
 	struct device *dev = &pdev->dev;
-	struct device_node *child;
+	struct device_node *dp_np, *usb_np;
 	struct phy_provider *phy_provider;
 	void __iomem *serdes;
 	void __iomem *usb_serdes;
 	void __iomem *dp_serdes = NULL;
 	const struct qmp_phy_cfg *cfg = NULL;
-	int num, id, expected_phys;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2630,8 +2629,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(dp_serdes))
 		return PTR_ERR(dp_serdes);
 
-	expected_phys = 2;
-
 	mutex_init(&qmp->phy_mutex);
 
 	ret = qmp_combo_clk_init(dev, cfg);
@@ -2646,75 +2643,52 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	num = of_get_available_child_count(dev->of_node);
-	/* do we have a rogue child node ? */
-	if (num > expected_phys)
+	usb_np = of_get_child_by_name(dev->of_node, "usb3-phy");
+	if (!usb_np)
+		return -EINVAL;
+
+	dp_np = of_get_child_by_name(dev->of_node, "dp-phy");
+	if (!dp_np) {
+		of_node_put(usb_np);
 		return -EINVAL;
+	}
 
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
-		return ret;
+		goto err_node_put;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
 	 */
 	pm_runtime_forbid(dev);
 
-	id = 0;
-	for_each_available_child_of_node(dev->of_node, child) {
-		if (of_node_name_eq(child, "dp-phy")) {
-			serdes = dp_serdes;
-
-			/* Create per-lane phy */
-			ret = qmp_combo_create_dp(dev, child, serdes, cfg);
-			if (ret) {
-				dev_err(dev, "failed to create lane%d phy, %d\n",
-					id, ret);
-				goto err_node_put;
-			}
-
-			ret = phy_dp_clks_register(qmp, child);
-			if (ret) {
-				dev_err(qmp->dev,
-					"failed to register DP clock source\n");
-				goto err_node_put;
-			}
-		} else if (of_node_name_eq(child, "usb3-phy")) {
-			serdes = usb_serdes;
-
-			/* Create per-lane phy */
-			ret = qmp_combo_create_usb(dev, child, serdes, cfg);
-			if (ret) {
-				dev_err(dev, "failed to create lane%d phy, %d\n",
-					id, ret);
-				goto err_node_put;
-			}
-
-			/*
-			 * Register the pipe clock provided by phy.
-			 * See function description to see details of this pipe clock.
-			 */
-			ret = phy_pipe_clk_register(qmp, child);
-			if (ret) {
-				dev_err(qmp->dev,
-					"failed to register pipe clock source\n");
-				goto err_node_put;
-			}
-		}
+	ret = qmp_combo_create_usb(dev, usb_np, usb_serdes, cfg);
+	if (ret)
+		goto err_node_put;
 
-		id++;
-	}
+	ret = phy_pipe_clk_register(qmp, usb_np);
+	if (ret)
+		goto err_node_put;
 
-	if (!qmp->usb_phy)
-		return -EINVAL;
+	ret = qmp_combo_create_dp(dev, dp_np, dp_serdes, cfg);
+	if (ret)
+		goto err_node_put;
+
+	ret = phy_dp_clks_register(qmp, dp_np);
+	if (ret)
+		goto err_node_put;
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
+	of_node_put(usb_np);
+	of_node_put(dp_np);
+
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 err_node_put:
-	of_node_put(child);
+	of_node_put(usb_np);
+	of_node_put(dp_np);
 	return ret;
 }
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
