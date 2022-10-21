Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5944EC47089
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFDC+2gYckloNrDVxTlI47Emn4eqgpsvmSH379phaBE=; b=zJAFn44Atwpsio
	zoP6zB7Dfbz4lRcfAJMWIIl6xyXVL6AmoTmeMk0BxIrMAwFTFLlCDxJ7oLpml1+mS3XkUqdascdBf
	GPvNEYwvw5rZhXpyCgf3S/Ftd09QnCqqZt9KCzqjF3sQigUKkzeBc1i7J6IIwOtzTHGLtu51RPaLI
	hqPnQS9uOB2tjRuzmH94Zc4YfQ3gE2lald37/i1HIUMfC9VRP7i33ejVjixLuMz8IQfDTtt8GPgkd
	I53McvsJGkoiq0mjFZ96PHc3e34RJzJFbNX00yk/W/Hd3q87SXs1ClGXxieU0EkmGW5ozo0ciyXHN
	t7b5qvEf7m86PCKP/0+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvS-007Im4-GL; Fri, 21 Oct 2022 11:10:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvL-007IeX-Cw
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:10:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2086BB82BA1;
	Fri, 21 Oct 2022 11:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A54CC433B5;
	Fri, 21 Oct 2022 11:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350643;
	bh=uzWUTR3P7np0s2tAQnIqpvhywblYRA2FHjkKtMwKV8s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XVf1f/RzxDkEI75sBxVSPhLVxdgjh7lPtMm80/nG+5eJKa7UTyljKJyffFxcunWGX
	 YjdyfHXnpMadJo6//My7Jaht92msnvq9Jj8kEzWal1snsioY/fvsgToen9QvN/fwP+
	 Aat2tl4vB3uBYuOwVqHaOkzRB7l8XKvDbrlmqkt8KULSCyJOAPbNqAyAolbRKLu5JN
	 b3EvjlqJ4UAb9BhVukVVDi4p0KXYPKIjPRgV5jkzaJ+gJ+pmc29PfkT+nTC6o8ZHg8
	 yf8R9qnrHlcvQee48sW2gxeKEjhYl+U1QEPm42l6ln+FKxsO9o0ZZKJsI/BS4F1n0g
	 20/cKkaP5NIhA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1olpv4-0007Ke-P2; Fri, 21 Oct 2022 13:10:30 +0200
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
Subject: [PATCH v3 05/15] phy: qcom-qmp-pcie: clean up probe initialisation
Date: Fri, 21 Oct 2022 13:09:37 +0200
Message-Id: <20221021110947.28103-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221021110947.28103-1-johan+linaro@kernel.org>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041047_743503_17144DB3 
X-CRM114-Status: GOOD (  16.47  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 49 +++++++++++-------------
 1 file changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index bc96518ad6b0..e30cbc94cbf6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2037,9 +2037,10 @@ static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
-static int qmp_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_vreg_init(struct qmp_pcie *qmp)
 {
-	struct qmp_pcie *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int num = cfg->num_vregs;
 	int i;
 
@@ -2053,9 +2054,10 @@ static int qmp_pcie_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 	return devm_regulator_bulk_get(dev, num, qmp->vregs);
 }
 
-static int qmp_pcie_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 {
-	struct qmp_pcie *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int i;
 	int ret;
 
@@ -2074,9 +2076,10 @@ static int qmp_pcie_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg
 	return 0;
 }
 
-static int qmp_pcie_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 {
-	struct qmp_pcie *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int num = cfg->num_clks;
 	int i;
 
@@ -2164,18 +2167,15 @@ static const struct phy_ops qmp_pcie_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static int qmp_pcie_create(struct device *dev, struct device_node *np,
-			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+static int qmp_pcie_create(struct qmp_pcie *qmp, struct device_node *np)
 {
-	struct qmp_pcie *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	struct phy *generic_phy;
 	int ret;
 
 	qmp->mode = PHY_MODE_PCIE_RC;
 
-	qmp->cfg = cfg;
-	qmp->serdes = serdes;
-
 	/*
 	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
@@ -2247,8 +2247,6 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *child;
 	struct phy_provider *phy_provider;
-	void __iomem *serdes;
-	const struct qmp_phy_cfg *cfg = NULL;
 	struct qmp_pcie *qmp;
 	int ret;
 
@@ -2257,28 +2255,27 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
-	dev_set_drvdata(dev, qmp);
 
-	cfg = of_device_get_match_data(dev);
-	if (!cfg)
+	qmp->cfg = of_device_get_match_data(dev);
+	if (!qmp->cfg)
 		return -EINVAL;
 
-	WARN_ON_ONCE(!cfg->pwrdn_ctrl);
-	WARN_ON_ONCE(!cfg->phy_status);
+	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
+	WARN_ON_ONCE(!qmp->cfg->phy_status);
 
-	serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(serdes))
-		return PTR_ERR(serdes);
+	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qmp->serdes))
+		return PTR_ERR(qmp->serdes);
 
-	ret = qmp_pcie_clk_init(dev, cfg);
+	ret = qmp_pcie_clk_init(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_pcie_reset_init(dev, cfg);
+	ret = qmp_pcie_reset_init(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_pcie_vreg_init(dev, cfg);
+	ret = qmp_pcie_vreg_init(qmp);
 	if (ret)
 		return ret;
 
@@ -2286,7 +2283,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (!child)
 		return -EINVAL;
 
-	ret = qmp_pcie_create(dev, child, serdes, cfg);
+	ret = qmp_pcie_create(qmp, child);
 	if (ret)
 		goto err_node_put;
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
