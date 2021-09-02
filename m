Return-Path: <SRS0=/D6Q=NY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46497C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E84EC610A2
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E84EC610A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0nZF1c6cNR69ITkDZAigoB3kHsDCOl/qD0JTL0YW9E=; b=p9NudHjsjlvlty
	u2uMuN1fIaZAbJbrSEIyVPHPkRs/ZA7BnH0xEM8AUlPpcLIYSrr4Z+wZIgCbe0ceVeVZrA897m8V5
	fW+xVmgh9Z9z36lScc5caUNk1LIW47E9DnZTSFzYRaKntkYorCP2JKea+ItspbQ7ZDRervyNWyEg6
	hM4s8HyP3DNzoFV2sCmmyyEFr/r3c1Kum6jRZPdF3QdBGvuzXEr5UtXI7bnw3voKeVqjIO12g8AnL
	/X+g5WhzpEe8xWQuHfixpvKV4C4p6DG5n1eAtpQ0eZDViwZG8quBuydwC2po8wQ4gu5q6yxFDIgmz
	pvdO2zxRt8bargCABZmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLrsX-00AJdt-BX; Thu, 02 Sep 2021 18:56:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLrsU-00AJcp-Ik
 for linux-phy@lists.infradead.org; Thu, 02 Sep 2021 18:56:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 182Itq1f116570;
 Thu, 2 Sep 2021 13:55:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1630608952;
 bh=G1PoX0+gV+gqN7Gnr/cN77OXD2eiwpzTn00sx5O8abU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=WB7CVeWyapgf908XSLi7gg8M03J/JrN49i/XW2jpvxk9vqXrnVivOOCO788jA8yig
 9/ajiXCzpdrZuFDgDQdUvGeX0Drcrfkdjx+2iNgV2+vbeFFhjFWb8dv1dDlfP22BV8
 dCm4iRgzCTG6AHIbkKmzcShgE4Ci1hTkVJrkyK4I=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 182ItqL6003442
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Sep 2021 13:55:52 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Sep 2021 13:55:51 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Sep 2021 13:55:51 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 182Itiap017156;
 Thu, 2 Sep 2021 13:55:48 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Pratyush Yadav
 <p.yadav@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay
 Abraham I <kishon@ti.com>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v5 1/6] phy: cdns-dphy: Prepare for Rx support
Date: Fri, 3 Sep 2021 00:25:38 +0530
Message-ID: <20210902185543.18875-2-p.yadav@ti.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210902185543.18875-1-p.yadav@ti.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210902_115558_751859_C02299C9 
X-CRM114-Status: GOOD (  30.72  )
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
and they won't work with an Rx DPHY.

Set the PHY ops from driver data, which makes it possible to use
different PHY callbacks for Rx and Tx modes. Rename cdns_dphy_ops to
cdns_dphy_tx_ops since they are only used by the Tx path. Also move
probe() and remove() to a new struct called cdns_dphy_common_ops. These
can be used by both Rx and Tx paths. cdns_dphy_rx_ops is not added since
it is not needed by the reference Rx mode implementation as of now. It
can be added later if needed.

The clocks "psm" and "pll_ref" are not used by the Rx path so check for
them in the Tx path's probe() callback.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

---

Changes in v5:
- Based on Laurent's suggestion, add cdns_dphy_info which contains the
  phy_ops and cdns_dphy_tx_ops (renamed from cdns_dphy_ops). This lets us
  get rid of the phy ops wrappers.
- Move probe() and remove() into cdns_dphy_common_ops() since they can
  be used by both modes. Drop the check in power_on().
- Get the clocks in the tx ops probe to make sure they are mandatory for
  Tx mode but not for Rx mode.

Changes in v4:
- Instead of having both Rx and Tx modes in the same driver data, keep
  them separate since the op selection is based on compatible now. For
  that reason, the cdns_dphy_driver_data struct is no longer needed.
- Rename ref_dphy_ops to tx_ref_dphy_ops to clarify their purpose.
- Drop submode checks in validate() hook.

 drivers/phy/cadence/cdns-dphy.c | 169 ++++++++++++++++++++------------
 1 file changed, 108 insertions(+), 61 deletions(-)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index ba042e39cfaf..e2c2b27c6539 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -72,9 +72,13 @@ enum cdns_dphy_clk_lane_cfg {
 };
 
 struct cdns_dphy;
-struct cdns_dphy_ops {
+
+struct cdns_dphy_common_ops {
 	int (*probe)(struct cdns_dphy *dphy);
 	void (*remove)(struct cdns_dphy *dphy);
+};
+
+struct cdns_dphy_tx_ops {
 	void (*set_psm_div)(struct cdns_dphy *dphy, u8 div);
 	void (*set_clk_lane_cfg)(struct cdns_dphy *dphy,
 				 enum cdns_dphy_clk_lane_cfg cfg);
@@ -83,12 +87,21 @@ struct cdns_dphy_ops {
 	unsigned long (*get_wakeup_time_ns)(struct cdns_dphy *dphy);
 };
 
+struct cdns_dphy_info {
+	const struct phy_ops *phy_ops;
+	const struct cdns_dphy_common_ops *common_ops;
+
+	/* Only set when DPHY is to be used in Tx mode. */
+	const struct cdns_dphy_tx_ops *tx_ops;
+};
+
 struct cdns_dphy {
 	struct cdns_dphy_cfg cfg;
 	void __iomem *regs;
+	struct device *dev;
 	struct clk *psm_clk;
 	struct clk *pll_ref_clk;
-	const struct cdns_dphy_ops *ops;
+	const struct cdns_dphy_info *info;
 	struct phy *phy;
 };
 
@@ -135,6 +148,7 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
 
 static int cdns_dphy_setup_psm(struct cdns_dphy *dphy)
 {
+	const struct cdns_dphy_tx_ops *ops = dphy->info->tx_ops;
 	unsigned long psm_clk_hz = clk_get_rate(dphy->psm_clk);
 	unsigned long psm_div;
 
@@ -142,8 +156,8 @@ static int cdns_dphy_setup_psm(struct cdns_dphy *dphy)
 		return -EINVAL;
 
 	psm_div = DIV_ROUND_CLOSEST(psm_clk_hz, 1000000);
-	if (dphy->ops->set_psm_div)
-		dphy->ops->set_psm_div(dphy, psm_div);
+	if (ops && ops->set_psm_div)
+		ops->set_psm_div(dphy, psm_div);
 
 	return 0;
 }
@@ -151,20 +165,31 @@ static int cdns_dphy_setup_psm(struct cdns_dphy *dphy)
 static void cdns_dphy_set_clk_lane_cfg(struct cdns_dphy *dphy,
 				       enum cdns_dphy_clk_lane_cfg cfg)
 {
-	if (dphy->ops->set_clk_lane_cfg)
-		dphy->ops->set_clk_lane_cfg(dphy, cfg);
+	const struct cdns_dphy_tx_ops *ops = dphy->info->tx_ops;
+
+	if (ops && ops->set_clk_lane_cfg)
+		ops->set_clk_lane_cfg(dphy, cfg);
 }
 
 static void cdns_dphy_set_pll_cfg(struct cdns_dphy *dphy,
 				  const struct cdns_dphy_cfg *cfg)
 {
-	if (dphy->ops->set_pll_cfg)
-		dphy->ops->set_pll_cfg(dphy, cfg);
+	const struct cdns_dphy_tx_ops *ops = dphy->info->tx_ops;
+
+	if (ops && ops->set_pll_cfg)
+		ops->set_pll_cfg(dphy, cfg);
 }
 
 static unsigned long cdns_dphy_get_wakeup_time_ns(struct cdns_dphy *dphy)
 {
-	return dphy->ops->get_wakeup_time_ns(dphy);
+	const struct cdns_dphy_tx_ops *ops = dphy->info->tx_ops;
+
+	if (!ops || !ops->get_wakeup_time_ns) {
+		dev_err(dphy->dev, "get_wakeup_time_ns() is required\n");
+		return 0;
+	}
+
+	return ops->get_wakeup_time_ns(dphy);
 }
 
 static unsigned long cdns_dphy_ref_get_wakeup_time_ns(struct cdns_dphy *dphy)
@@ -199,20 +224,9 @@ static void cdns_dphy_ref_set_psm_div(struct cdns_dphy *dphy, u8 div)
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
@@ -232,24 +246,14 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
 	return 0;
 }
 
-static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
-			      union phy_configure_opts *opts)
-{
-	struct cdns_dphy_cfg cfg = { 0 };
-
-	if (mode != PHY_MODE_MIPI_DPHY)
-		return -EINVAL;
-
-	return cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
-}
-
-static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
+static int cdns_dphy_tx_configure(struct phy *phy,
+				  union phy_configure_opts *opts)
 {
 	struct cdns_dphy *dphy = phy_get_drvdata(phy);
 	struct cdns_dphy_cfg cfg = { 0 };
 	int ret;
 
-	ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
+	ret = cdns_dphy_tx_config_from_opts(dphy->phy, &opts->mipi_dphy, &cfg);
 	if (ret)
 		return ret;
 
@@ -279,7 +283,19 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
 	return 0;
 }
 
-static int cdns_dphy_power_on(struct phy *phy)
+static int cdns_dphy_tx_validate(struct phy *phy, enum phy_mode mode,
+				 int submode, union phy_configure_opts *opts)
+{
+	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+	struct cdns_dphy_cfg cfg = { 0 };
+
+	if (mode != PHY_MODE_MIPI_DPHY)
+		return -EINVAL;
+
+	return cdns_dphy_tx_config_from_opts(dphy->phy, &opts->mipi_dphy, &cfg);
+}
+
+static int cdns_dphy_tx_power_on(struct phy *phy)
 {
 	struct cdns_dphy *dphy = phy_get_drvdata(phy);
 
@@ -293,7 +309,7 @@ static int cdns_dphy_power_on(struct phy *phy)
 	return 0;
 }
 
-static int cdns_dphy_power_off(struct phy *phy)
+static int cdns_dphy_tx_power_off(struct phy *phy)
 {
 	struct cdns_dphy *dphy = phy_get_drvdata(phy);
 
@@ -303,16 +319,51 @@ static int cdns_dphy_power_off(struct phy *phy)
 	return 0;
 }
 
-static const struct phy_ops cdns_dphy_ops = {
-	.configure	= cdns_dphy_configure,
-	.validate	= cdns_dphy_validate,
-	.power_on	= cdns_dphy_power_on,
-	.power_off	= cdns_dphy_power_off,
+static int cdns_dphy_tx_probe(struct cdns_dphy *dphy)
+{
+	dphy->psm_clk = devm_clk_get(dphy->dev, "psm");
+	if (IS_ERR(dphy->psm_clk))
+		return PTR_ERR(dphy->psm_clk);
+
+	dphy->pll_ref_clk = devm_clk_get(dphy->dev, "pll_ref");
+	if (IS_ERR(dphy->pll_ref_clk))
+		return PTR_ERR(dphy->pll_ref_clk);
+
+	return 0;
+}
+
+/*
+ * This is the reference implementation of DPHY hooks. Specific integration of
+ * this IP may have to re-implement some of them depending on how they decided
+ * to wire things in the SoC.
+ */
+static const struct cdns_dphy_tx_ops tx_ref_dphy_ops = {
+	.get_wakeup_time_ns = cdns_dphy_ref_get_wakeup_time_ns,
+	.set_pll_cfg = cdns_dphy_ref_set_pll_cfg,
+	.set_psm_div = cdns_dphy_ref_set_psm_div,
+};
+
+static const struct cdns_dphy_common_ops tx_ref_common_ops = {
+	.probe = cdns_dphy_tx_probe,
+};
+
+static const struct phy_ops tx_ref_phy_ops = {
+	.power_on = cdns_dphy_tx_power_on,
+	.power_off = cdns_dphy_tx_power_off,
+	.validate = cdns_dphy_tx_validate,
+	.configure = cdns_dphy_tx_configure,
+};
+
+static const struct cdns_dphy_info tx_ref_info = {
+	.phy_ops = &tx_ref_phy_ops,
+	.common_ops = &tx_ref_common_ops,
+	.tx_ops = &tx_ref_dphy_ops,
 };
 
 static int cdns_dphy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
+	const struct cdns_dphy_info *info;
 	struct cdns_dphy *dphy;
 	int ret;
 
@@ -320,34 +371,29 @@ static int cdns_dphy_probe(struct platform_device *pdev)
 	if (!dphy)
 		return -ENOMEM;
 	dev_set_drvdata(&pdev->dev, dphy);
+	dphy->dev = &pdev->dev;
 
-	dphy->ops = of_device_get_match_data(&pdev->dev);
-	if (!dphy->ops)
+	info = of_device_get_match_data(&pdev->dev);
+	if (!info)
 		return -EINVAL;
 
+	dphy->info = info;
+
 	dphy->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(dphy->regs))
 		return PTR_ERR(dphy->regs);
 
-	dphy->psm_clk = devm_clk_get(&pdev->dev, "psm");
-	if (IS_ERR(dphy->psm_clk))
-		return PTR_ERR(dphy->psm_clk);
-
-	dphy->pll_ref_clk = devm_clk_get(&pdev->dev, "pll_ref");
-	if (IS_ERR(dphy->pll_ref_clk))
-		return PTR_ERR(dphy->pll_ref_clk);
-
-	if (dphy->ops->probe) {
-		ret = dphy->ops->probe(dphy);
+	if (info->common_ops && info->common_ops->probe) {
+		ret = info->common_ops->probe(dphy);
 		if (ret)
 			return ret;
 	}
 
-	dphy->phy = devm_phy_create(&pdev->dev, NULL, &cdns_dphy_ops);
+	dphy->phy = devm_phy_create(&pdev->dev, NULL, info->phy_ops);
 	if (IS_ERR(dphy->phy)) {
 		dev_err(&pdev->dev, "failed to create PHY\n");
-		if (dphy->ops->remove)
-			dphy->ops->remove(dphy);
+		if (info->common_ops && info->common_ops->remove)
+			info->common_ops->remove(dphy);
 		return PTR_ERR(dphy->phy);
 	}
 
@@ -361,15 +407,16 @@ static int cdns_dphy_probe(struct platform_device *pdev)
 static int cdns_dphy_remove(struct platform_device *pdev)
 {
 	struct cdns_dphy *dphy = dev_get_drvdata(&pdev->dev);
+	const struct cdns_dphy_info *info = dphy->info;
 
-	if (dphy->ops->remove)
-		dphy->ops->remove(dphy);
+	if (info->common_ops && info->common_ops->remove)
+		info->common_ops->remove(dphy);
 
 	return 0;
 }
 
 static const struct of_device_id cdns_dphy_of_match[] = {
-	{ .compatible = "cdns,dphy", .data = &ref_dphy_ops },
+	{ .compatible = "cdns,dphy", .data = &tx_ref_info },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, cdns_dphy_of_match);
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
