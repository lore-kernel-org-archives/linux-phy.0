Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F0EFA3746
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQWEPKuXiROtpYLVwgyHNKPQwQXFUmYeZv560UC5sS8=; b=bWX1483cgbfC/6
	5p0mF157EgR/oF8Dc96rcGqK2PioSgXS5JUWIRqTjODfqmcbfEEUxts999cAcAuWN5g5e8G6Eamlh
	nveI54VXa+EF8S4Ww3kTRRICnew46H5p8gnGf6/xE/RnWux2V+KOQb8EYQTYZJ3WX3A8gTyBMlVvz
	E7QVaTh3wGzvT/Kb+Wt/yoiBfgr1VI5SyRPPgUcBrw0gN1rZu+ywIhogp4XQXKzra0fNxRIDHDcDE
	0pn2lwZDIms3j9tdJAtsss6nY4d4UJNxbKXACj5ljoLBaXGFQsRxvzB0/hWyWuyXho4kD5If2QHTL
	xduw7/SFs5LwzU5l0psw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRrK-000lm0-B9; Fri, 28 Oct 2022 16:05:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRr9-000lcS-4j
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:05:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E8E02B82AFA;
	Fri, 28 Oct 2022 16:05:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4773CC4FF10;
	Fri, 28 Oct 2022 16:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973110;
	bh=e+hcsmYgZR7tNCuV97Vtva50JcgAeAf+EYANRp5kN7E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i3qZw1usT6oIr5e8RJQPC60XLORIa8b32JiTTTjJZwBSiEXpk4tnB9BYlQGd1kFdQ
	 6S7NMsKpJanzKxgzDculpq7iB9oMAo7T4/ph9BHrx0vVZdJIl3N/YLDsnLqBI6iSRw
	 d9CWSUOeds21D8dm+do9RGge+UQPJWYzJhzYFjuIB2yGRQtrkYeA2EdjYGLZFg9/Uu
	 ZarJ9/V8pvpgQvQK+v1yQxxeqOEu0GJTEf0czKO3gbujQyIllRtzPeDNpdKpOHypEp
	 uYrGhdP9aDI1w3Z+/kQyspzV3xbln9Omq57JShZRix196ToDRGw7V3n84+XdjksW9e
	 JI9TSX7VqaDDA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooRqq-00071z-QK; Fri, 28 Oct 2022 18:04:56 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RESEND v2 12/13] phy: qcom-qmp-usb: restructure PHY creation
Date: Fri, 28 Oct 2022 18:04:34 +0200
Message-Id: <20221028160435.26948-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028160435.26948-1-johan+linaro@kernel.org>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_090515_516456_BEAAC6ED 
X-CRM114-Status: GOOD (  16.64  )
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

In preparation for supporting devicetree bindings which do not use a
child node, move the PHY creation to probe() proper and parse the serdes
and dp_com resources in what is now the legacy devicetree helper.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 46 ++++++++++++-------------
 1 file changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index d5e62cfd93f8..3f5e22b1d29e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2386,13 +2386,22 @@ static void __iomem *qmp_usb_iomap(struct device *dev, struct device_node *np,
 	return devm_of_iomap(dev, np, index, NULL);
 }
 
-static int qmp_usb_create(struct qmp_usb *qmp, struct device_node *np)
+static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 {
+	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	struct phy *generic_phy;
 	bool exclusive = true;
-	int ret;
+
+	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qmp->serdes))
+		return PTR_ERR(qmp->serdes);
+
+	if (cfg->has_phy_dp_com_ctrl) {
+		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(qmp->dp_com))
+			return PTR_ERR(qmp->dp_com);
+	}
 
 	/*
 	 * FIXME: These bindings should be fixed to not rely on overlapping
@@ -2449,16 +2458,6 @@ static int qmp_usb_create(struct qmp_usb *qmp, struct device_node *np)
 				     "failed to get pipe clock\n");
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qmp_usb_phy_ops);
-	if (IS_ERR(generic_phy)) {
-		ret = PTR_ERR(generic_phy);
-		dev_err(dev, "failed to create PHY: %d\n", ret);
-		return ret;
-	}
-
-	qmp->phy = generic_phy;
-	phy_set_drvdata(generic_phy, qmp);
-
 	return 0;
 }
 
@@ -2480,16 +2479,6 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (!qmp->cfg)
 		return -EINVAL;
 
-	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(qmp->serdes))
-		return PTR_ERR(qmp->serdes);
-
-	if (qmp->cfg->has_phy_dp_com_ctrl) {
-		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
-		if (IS_ERR(qmp->dp_com))
-			return PTR_ERR(qmp->dp_com);
-	}
-
 	ret = qmp_usb_clk_init(qmp);
 	if (ret)
 		return ret;
@@ -2516,7 +2505,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = qmp_usb_create(qmp, child);
+	ret = qmp_usb_parse_dt_legacy(qmp, child);
 	if (ret)
 		goto err_node_put;
 
@@ -2524,6 +2513,15 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	qmp->phy = devm_phy_create(dev, child, &qmp_usb_phy_ops);
+	if (IS_ERR(qmp->phy)) {
+		ret = PTR_ERR(qmp->phy);
+		dev_err(dev, "failed to create PHY: %d\n", ret);
+		goto err_node_put;
+	}
+
+	phy_set_drvdata(qmp->phy, qmp);
+
 	of_node_put(child);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
