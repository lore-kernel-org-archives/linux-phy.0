Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3B0C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 11:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjneiAlTPw/IvT3S3K8YrgGRagf6/hUeXsmZ9xttddM=; b=ueC1qaWzfRkKin
	PBQf5AI7i5yhZ8XZ09ARVVBOBDr6+vcvm/p4iGhxUu3zKv6AG5gbOwfbK0V2QhKRHkwsj1YGAqP/H
	+FYAez8E7CoZ/z7qcV8jm2T6fkvV4sUMXCOygZRTIDYP40XmiZaCj28F8Dxbipe3dQzmfYigkmJoO
	S707H77yl/0y6BG8kv6rGM8SiA1ZrMlNfo1EIiSFciBwvQCBWX5t1IPMkWgzYVfKJ7WKFMKVpgB/r
	ZnXMFsZao0MS8drl5U8Nnre8FfVoRTo8UapQqyy8uxrxiPXGqfiBweUVZ8aa3hDYitz5FVcjs9jDG
	VZQJFR11Cq8kzhwJd2Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N8-000vDn-Cu; Wed, 19 Oct 2022 11:36:30 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N1-000v6G-2G
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 11:36:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BFB24B823A5;
	Wed, 19 Oct 2022 11:36:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D665C4314D;
	Wed, 19 Oct 2022 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666179379;
	bh=X8dGKcEatEcWeJmdLOuulVQ9QOL8lBrkv9IoBNpoAeg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QV/242UqsWtXytsiPh0Qaz6UpnmMGjWlDm92Jt0omW20KUDqXAEMOpY7AtTbshfXw
	 ll+w0PfLnp3P8DU4bq9FHAu2ugwfUPRWTjypgANgkllpDGlObMz0zWpqvqCz5c9xC/
	 HarUHUF1PzcxwqNJnskXtu1if1lx+vwXGpkx5u7ppLkW4/kf2tCCjrCjpUrZGIlBo+
	 MMvx1e8CrgN86YnPm2umgRgRCw/Afo8rN35+lvN34sVNqEgkKpkbRLb7HR8nF28h4F
	 vfqJoRVTRFzhBcqm6F/ufDne7n8cPVVr+sOhz4OjcWjQO1TCsRidcp/zaJ8V2wh/vJ
	 azaEjUGbKSU5Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ol7Ml-0005pQ-Lx; Wed, 19 Oct 2022 13:36:07 +0200
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
Subject: [PATCH v2 05/15] phy: qcom-qmp-pcie: clean up probe initialisation
Date: Wed, 19 Oct 2022 13:35:42 +0200
Message-Id: <20221019113552.22353-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221019113552.22353-1-johan+linaro@kernel.org>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_043623_455157_347B8253 
X-CRM114-Status: GOOD (  16.90  )
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
