Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAB44C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sV+I7TaIyaUSv+dtGC9dcWRsu9P2/uVkrESVhECUIg=; b=VxG46PYf71BxPC
	DHWyVt8p+Gg873NicQ8aSJfuKQxDjFhogBACxGJKYQUkyOuh6WObXQQ0VNzJVnFx13K659deDit15
	2qYfn4pMHppI9yhwO0Y0aseI4zTs0j+7o3PXphNzMcUfPeS5K/ZVKiNIIr4lC33Fuxd0QBx6PzVoM
	Vmh5T1akWYtfEBk/XXxws9qQ/8oteXG4yyikWf5/xbTPrwHNkYxMisPAZiy73TUc2HdaxUG2wPO9F
	4cMduFWSAv3uFI+crMnzn7csIhweoswKRo82trkwH2Wv4JXEmutXD+u+lXm97GEldJ5VNOtMZQliu
	4Ff497BubJuCTsU7Iv3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJW-000DB2-NF; Mon, 14 Nov 2022 11:07:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJA-000CtF-Lu
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0D9D060FC6;
	Mon, 14 Nov 2022 11:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10E65C4FF69;
	Mon, 14 Nov 2022 11:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424035;
	bh=EQwUQ1fdSzm3SaW3dkCyQfwyJMV4l0D+M0NRqfXxTlY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Wa7Cip+pWBLQemhY/e0xWyN97Y1FFrj8XyjLw725QSl6WNEDX7Z0r4/8sr1gaTP5f
	 kefhOk0NBHI7NhCe/pXO1m9N94nSkqD4xslQMv3Nb4wIjfD0jhtwOowY59TPdLyO+Z
	 3HwXSdi9jB6s8w26SNnOvjmzu7nP5ag2XqfSt6GQPeG/iyUKKGxwjIcTc2jSFflNKT
	 3W69ejxcGu+B5UlYgXlFW79Gqp3XnnW2Qcpsz/mK1CMb6BS0hGQluHSRWaBrZ/kEzs
	 U98latVOxqdmf9cZI7VSrKHAx9pHWhpK/s+khrYAYlOPPUMAtW1Vrs1mEM769gjRVI
	 49Rlnuj5Vh8Mw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIZ-0001FL-GW; Mon, 14 Nov 2022 12:06:43 +0100
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
Subject: [PATCH v2 20/22] phy: qcom-qmp-combo: clean up device-tree parsing
Date: Mon, 14 Nov 2022 12:06:19 +0100
Message-Id: <20221114110621.4639-21-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030720_880397_C4E5DA22 
X-CRM114-Status: GOOD (  19.57  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 82 ++++++++---------------
 1 file changed, 28 insertions(+), 54 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 707dd68ba993..9eacbd224012 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2575,13 +2575,12 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
@@ -2607,8 +2606,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(dp_serdes))
 		return PTR_ERR(dp_serdes);
 
-	expected_phys = 2;
-
 	mutex_init(&qmp->phy_mutex);
 
 	ret = qmp_combo_clk_init(dev, cfg);
@@ -2623,75 +2620,52 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
