Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9F5FA3745
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFFbZ8QiRwSAECJi1GoXZ+TLkZS4yC9GuhCt+tQLvjw=; b=p7UPwsvwve1lD9
	THpyPN2EsGiSfylOn9j2zoZeBscTZDkGekSSvZKESAurk7E8CVwLtf5MvZ0vbxw02unYGbHrj0n9V
	BbgKyD7wlpJsAanexA5HZFRPW+yeJghwo5ZNV4B7TsgKDZAjAcYgcoz5mj8azdV8DpNdTGDZj2AOo
	D+IdfiO1bgCR1IEtuFvmpIkQoMXoglEwHQRqMNtgbZcIVB49aAevesD9q9GYfEtS5o7XkG0YYc7h/
	O+taFsvpZH66kZ9zzPz72eAkBmSRw5SHYTVOyby2Tt+Mbn7nMazCaIvebvhW5n2RUV8eB5hHmN/Q3
	FQtXOkSlaolJj/3RJiAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfF-00HQZe-4Z; Fri, 28 Oct 2022 13:44:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPf9-00HQUQ-56
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA68462896;
	Fri, 28 Oct 2022 13:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01F72C43162;
	Fri, 28 Oct 2022 13:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964681;
	bh=iS1BRJEqhMqO48dkbYjLoV1lWUWlCJ2Wfx2yF2KrGTs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EQd0BAzwcgkoj9HqVNAPGj11c8+DpQixMrj22gyGUEpuNnBcM9TkQ27g46+Txk1t4
	 Z2a0mYnj2bq3wvD/WBJT/4rrzcVRDGGhov11O1S6aMQFJ17xaHKtdAbbfM9Cn44iTP
	 ib77gRcHpO8pTPJEEKP9rplDrr9YnsXW3GjYGTXttB9EHkR/x61InhEP3D0Dvor1kU
	 gxI7X4Uh9RNtrhbvtOKSu6A6OsZ3zZ+yt89MFvmu2VyPSEkEAldsMjeiOt0Tk6M1+u
	 d+X3/uAC3LP3Anu1gbiQLaCJv8dUGKMRtIkK0xHp+LTtZa1mPW1SVIcy6QewIfvEli
	 drYy2WzsX2d+Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPet-00052I-DR; Fri, 28 Oct 2022 15:44:27 +0200
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
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 07/13] phy: qcom-qmp-usb: clean up probe initialisation
Date: Fri, 28 Oct 2022 15:44:01 +0200
Message-Id: <20221028134407.19300-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028134407.19300-1-johan+linaro@kernel.org>
References: <20221028134407.19300-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064443_294305_D55DF429 
X-CRM114-Status: GOOD (  16.62  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 46 ++++++++++++-------------
 1 file changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ccb834a08d5b..2e603831e45e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2250,9 +2250,10 @@ static const struct dev_pm_ops qmp_usb_pm_ops = {
 			   qmp_usb_runtime_resume, NULL)
 };
 
-static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_vreg_init(struct qmp_usb *qmp)
 {
-	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int num = cfg->num_vregs;
 	int i;
 
@@ -2266,9 +2267,10 @@ static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 	return devm_regulator_bulk_get(dev, num, qmp->vregs);
 }
 
-static int qmp_usb_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_reset_init(struct qmp_usb *qmp)
 {
-	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int i;
 	int ret;
 
@@ -2287,9 +2289,10 @@ static int qmp_usb_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 	return 0;
 }
 
-static int qmp_usb_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_clk_init(struct qmp_usb *qmp)
 {
-	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	int num = cfg->num_clks;
 	int i;
 
@@ -2385,10 +2388,10 @@ static void __iomem *qmp_usb_iomap(struct device *dev, struct device_node *np,
 	return devm_of_iomap(dev, np, index, NULL);
 }
 
-static int qmp_usb_create(struct device *dev, struct device_node *np,
-			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+static int qmp_usb_create(struct qmp_usb *qmp, struct device_node *np)
 {
-	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	struct device *dev = qmp->dev;
 	struct phy *generic_phy;
 	bool exclusive = true;
 	int ret;
@@ -2402,8 +2405,6 @@ static int qmp_usb_create(struct device *dev, struct device_node *np,
 	if (of_device_is_compatible(dev->of_node, "qcom,sm8350-qmp-usb3-uni-phy"))
 		exclusive = false;
 
-	qmp->cfg = cfg;
-	qmp->serdes = serdes;
 	/*
 	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
@@ -2468,8 +2469,6 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *child;
 	struct phy_provider *phy_provider;
-	void __iomem *serdes;
-	const struct qmp_phy_cfg *cfg = NULL;
 	struct qmp_usb *qmp;
 	int ret;
 
@@ -2478,31 +2477,30 @@ static int qmp_usb_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
-	dev_set_drvdata(dev, qmp);
 
-	cfg = of_device_get_match_data(dev);
-	if (!cfg)
+	qmp->cfg = of_device_get_match_data(dev);
+	if (!qmp->cfg)
 		return -EINVAL;
 
-	serdes = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(serdes))
-		return PTR_ERR(serdes);
+	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qmp->serdes))
+		return PTR_ERR(qmp->serdes);
 
-	if (cfg->has_phy_dp_com_ctrl) {
+	if (qmp->cfg->has_phy_dp_com_ctrl) {
 		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
 		if (IS_ERR(qmp->dp_com))
 			return PTR_ERR(qmp->dp_com);
 	}
 
-	ret = qmp_usb_clk_init(dev, cfg);
+	ret = qmp_usb_clk_init(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_usb_reset_init(dev, cfg);
+	ret = qmp_usb_reset_init(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_usb_vreg_init(dev, cfg);
+	ret = qmp_usb_vreg_init(qmp);
 	if (ret)
 		return ret;
 
@@ -2520,7 +2518,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = qmp_usb_create(dev, child, serdes, cfg);
+	ret = qmp_usb_create(qmp, child);
 	if (ret)
 		goto err_node_put;
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
