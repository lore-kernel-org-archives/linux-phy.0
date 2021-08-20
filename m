Return-Path: <SRS0=GqE6=NL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCC0C4320A
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 19:04:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E9E661131
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 19:04:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E9E661131
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX8+BCkkWdD+UYY9+j9u0sxaBzXvnKn8cL98XtePpZE=; b=d8+U+jffdX4kyo
	ge626852r51o8+xZc7oqF7pxMm5+YWIcaziubM8Z8hOG17y7lQGwLhHB48fmYKeCfGHL0m7ZwxX0P
	AqE76g19DpRu+ak6DG0SRRkOcndW8dAVTklj09eAJ3jG5nqZ4TxqOGJLyJ/qf0TjjmbWA0bHwm2UP
	SBJo/JAGe9Ki+a4hFl01Uh9jKIpqr/AY7n/79AYJO+NE7isYutM3lZbGwvJnZVynQpILg9NReXoJ+
	m3elNtczOcppc1XiJjLZHdysZpLZRzeGUw8FYvBWPOlRQMH82Y3EmbyAj+H15EL1QkUZlTRurOxbl
	qmpXGDc3EXvL1/BWXnYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9oE-00BxjC-29; Fri, 20 Aug 2021 19:04:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9o8-00BxhU-QD
 for linux-phy@lists.infradead.org; Fri, 20 Aug 2021 19:04:04 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17KJ3t4i081734;
 Fri, 20 Aug 2021 14:03:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1629486235;
 bh=k7W0sZTTbpCA4pI8/n7sIiNWac9KitsIpBPVkJ9QZZg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TB3Gl5kPe277ewwm8WfMaAbh4DoH7ZTblfU2i9El32h0dhbQIH5BvtJBg7sPGcU+W
 HeEuyLZO7Jde/CHfmIDkcO7NjbKW7TI/qN39CgIqk8+GI7R9LZQpxx05A6wGekgDdl
 umdqp9zC3iOOLn/inWDKh7wknASrh7fQYcKH76rI=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17KJ3tVS078573
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Aug 2021 14:03:55 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 20
 Aug 2021 14:03:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 20 Aug 2021 14:03:55 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17KJ3lwX018479;
 Fri, 20 Aug 2021 14:03:52 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Pratyush Yadav <p.yadav@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
 <kishon@ti.com>,
 Peter Chen <peter.chen@nxp.com>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: [PATCH v4 1/6] phy: cdns-dphy: Prepare for Rx support
Date: Sat, 21 Aug 2021 00:33:41 +0530
Message-ID: <20210820190346.18550-2-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210820190346.18550-1-p.yadav@ti.com>
References: <20210820190346.18550-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_120400_979273_E78BC32A 
X-CRM114-Status: GOOD (  22.20  )
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

The Rx programming sequence differs from the Tx programming sequence.
Currently only Tx mode is supported. For example, the power on and off,
validation, and configuration procedures are all different between Rx
and Tx DPHYs. Currently they are only written from a Tx point of view
and they won't work with an Rx DPHY. Move them to cdns_dphy_ops so they
can be defined by the implementation, accommodating both Rx and Tx mode
DPHYs.

The clocks "psm" and "pll_ref" are not used by the Rx path so make them
optional in the probe and then check if they exist in the Tx power_on()
hook.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

---

Changes in v4:
- Instead of having both Rx and Tx modes in the same driver data, keep
  them separate since the op selection is based on compatible now. For
  that reason, the cdns_dphy_driver_data struct is no longer needed.
- Rename ref_dphy_ops to tx_ref_dphy_ops to clarify their purpose.
- Drop submode checks in validate() hook.

 drivers/phy/cadence/cdns-dphy.c | 123 ++++++++++++++++++++++----------
 1 file changed, 87 insertions(+), 36 deletions(-)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index ba042e39cfaf..0a169d649216 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -75,6 +75,11 @@ struct cdns_dphy;
 struct cdns_dphy_ops {
 	int (*probe)(struct cdns_dphy *dphy);
 	void (*remove)(struct cdns_dphy *dphy);
+	int (*power_on)(struct cdns_dphy *dphy);
+	int (*power_off)(struct cdns_dphy *dphy);
+	int (*validate)(struct cdns_dphy *dphy, enum phy_mode mode, int submode,
+			union phy_configure_opts *opts);
+	int (*configure)(struct cdns_dphy *dphy, union phy_configure_opts *opts);
 	void (*set_psm_div)(struct cdns_dphy *dphy, u8 div);
 	void (*set_clk_lane_cfg)(struct cdns_dphy *dphy,
 				 enum cdns_dphy_clk_lane_cfg cfg);
@@ -86,6 +91,7 @@ struct cdns_dphy_ops {
 struct cdns_dphy {
 	struct cdns_dphy_cfg cfg;
 	void __iomem *regs;
+	struct device *dev;
 	struct clk *psm_clk;
 	struct clk *pll_ref_clk;
 	const struct cdns_dphy_ops *ops;
@@ -199,20 +205,9 @@ static void cdns_dphy_ref_set_psm_div(struct cdns_dphy *dphy, u8 div)
 	       dphy->regs + DPHY_PSM_CFG);
 }
 
-/*
- * This is the reference implementation of DPHY hooks. Specific integration of
- * this IP may have to re-implement some of them depending on how they decided
- * to wire things in the SoC.
- */
-static const struct cdns_dphy_ops ref_dphy_ops = {
-	.get_wakeup_time_ns = cdns_dphy_ref_get_wakeup_time_ns,
-	.set_pll_cfg = cdns_dphy_ref_set_pll_cfg,
-	.set_psm_div = cdns_dphy_ref_set_psm_div,
-};
-
-static int cdns_dphy_config_from_opts(struct phy *phy,
-				      struct phy_configure_opts_mipi_dphy *opts,
-				      struct cdns_dphy_cfg *cfg)
+static int cdns_dphy_tx_config_from_opts(struct phy *phy,
+					 struct phy_configure_opts_mipi_dphy *opts,
+					 struct cdns_dphy_cfg *cfg)
 {
 	struct cdns_dphy *dphy = phy_get_drvdata(phy);
 	unsigned int dsi_hfp_ext = 0;
@@ -232,24 +227,13 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
 	return 0;
 }
 
-static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
-			      union phy_configure_opts *opts)
+static int cdns_dphy_tx_configure(struct cdns_dphy *dphy,
+				  union phy_configure_opts *opts)
 {
 	struct cdns_dphy_cfg cfg = { 0 };
-
-	if (mode != PHY_MODE_MIPI_DPHY)
-		return -EINVAL;
-
-	return cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
-}
-
-static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
-{
-	struct cdns_dphy *dphy = phy_get_drvdata(phy);
-	struct cdns_dphy_cfg cfg = { 0 };
 	int ret;
 
-	ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
+	ret = cdns_dphy_tx_config_from_opts(dphy->phy, &opts->mipi_dphy, &cfg);
 	if (ret)
 		return ret;
 
@@ -279,9 +263,18 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
 	return 0;
 }
 
-static int cdns_dphy_power_on(struct phy *phy)
+static int cdns_dphy_tx_validate(struct cdns_dphy *dphy, enum phy_mode mode,
+				 int submode, union phy_configure_opts *opts)
 {
-	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+	struct cdns_dphy_cfg cfg = { 0 };
+
+	return cdns_dphy_tx_config_from_opts(dphy->phy, &opts->mipi_dphy, &cfg);
+}
+
+static int cdns_dphy_tx_power_on(struct cdns_dphy *dphy)
+{
+	if (!dphy->psm_clk || !dphy->pll_ref_clk)
+		return -EINVAL;
 
 	clk_prepare_enable(dphy->psm_clk);
 	clk_prepare_enable(dphy->pll_ref_clk);
@@ -293,16 +286,73 @@ static int cdns_dphy_power_on(struct phy *phy)
 	return 0;
 }
 
-static int cdns_dphy_power_off(struct phy *phy)
+static int cdns_dphy_tx_power_off(struct cdns_dphy *dphy)
 {
-	struct cdns_dphy *dphy = phy_get_drvdata(phy);
-
 	clk_disable_unprepare(dphy->pll_ref_clk);
 	clk_disable_unprepare(dphy->psm_clk);
 
 	return 0;
 }
 
+/*
+ * This is the reference implementation of DPHY hooks. Specific integration of
+ * this IP may have to re-implement some of them depending on how they decided
+ * to wire things in the SoC.
+ */
+static const struct cdns_dphy_ops tx_ref_dphy_ops = {
+	.power_on = cdns_dphy_tx_power_on,
+	.power_off = cdns_dphy_tx_power_off,
+	.validate = cdns_dphy_tx_validate,
+	.configure = cdns_dphy_tx_configure,
+	.get_wakeup_time_ns = cdns_dphy_ref_get_wakeup_time_ns,
+	.set_pll_cfg = cdns_dphy_ref_set_pll_cfg,
+	.set_psm_div = cdns_dphy_ref_set_psm_div,
+};
+
+static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
+			      union phy_configure_opts *opts)
+{
+	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_MIPI_DPHY)
+		return -EINVAL;
+
+	if (dphy->ops->validate)
+		return dphy->ops->validate(dphy, mode, submode, opts);
+
+	return 0;
+}
+
+static int cdns_dphy_power_on(struct phy *phy)
+{
+	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+
+	if (dphy->ops->power_on)
+		return dphy->ops->power_on(dphy);
+
+	return 0;
+}
+
+static int cdns_dphy_power_off(struct phy *phy)
+{
+	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+
+	if (dphy->ops->power_off)
+		return dphy->ops->power_off(dphy);
+
+	return 0;
+}
+
+static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+
+	if (dphy->ops->configure)
+		return dphy->ops->configure(dphy, opts);
+
+	return 0;
+}
+
 static const struct phy_ops cdns_dphy_ops = {
 	.configure	= cdns_dphy_configure,
 	.validate	= cdns_dphy_validate,
@@ -320,6 +370,7 @@ static int cdns_dphy_probe(struct platform_device *pdev)
 	if (!dphy)
 		return -ENOMEM;
 	dev_set_drvdata(&pdev->dev, dphy);
+	dphy->dev = &pdev->dev;
 
 	dphy->ops = of_device_get_match_data(&pdev->dev);
 	if (!dphy->ops)
@@ -329,11 +380,11 @@ static int cdns_dphy_probe(struct platform_device *pdev)
 	if (IS_ERR(dphy->regs))
 		return PTR_ERR(dphy->regs);
 
-	dphy->psm_clk = devm_clk_get(&pdev->dev, "psm");
+	dphy->psm_clk = devm_clk_get_optional(dphy->dev, "psm");
 	if (IS_ERR(dphy->psm_clk))
 		return PTR_ERR(dphy->psm_clk);
 
-	dphy->pll_ref_clk = devm_clk_get(&pdev->dev, "pll_ref");
+	dphy->pll_ref_clk = devm_clk_get_optional(dphy->dev, "pll_ref");
 	if (IS_ERR(dphy->pll_ref_clk))
 		return PTR_ERR(dphy->pll_ref_clk);
 
@@ -369,7 +420,7 @@ static int cdns_dphy_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id cdns_dphy_of_match[] = {
-	{ .compatible = "cdns,dphy", .data = &ref_dphy_ops },
+	{ .compatible = "cdns,dphy", .data = &tx_ref_dphy_ops },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, cdns_dphy_of_match);
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
