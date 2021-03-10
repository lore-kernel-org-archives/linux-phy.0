Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3095DC433E0
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 15:55:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5A0A64E27
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 15:55:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5A0A64E27
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LBxWdHJMR4+gqSndxU8/WA+IYXbBa39JVZDSJ/b1tf4=; b=h1W5gPCUg6x+Fk8d0HO8DhTk/
	7boPFkb61Gxt0mo2UZBPO7spNanbU4SbdqDzIlYt/4Hkc/lAsclyuo1xHCZXWUSlCl4k+0lhUj65C
	XcGZ7IYKCVRWDCetSTS0f9MUT/3WSXE2wRuB5sa+msncaoX/3Nf3IsLulq/gw3CHth2OXycIdD2iO
	qqvpPWxxo5nPejztNSmM/1dKD82/R8ftMnU+LT0YO4LPpyGIMtd0qa9s6sBoWfxqOePhs/grwCJV+
	80cZp2Ycowm4fbb8kwjXOAJrAkOppRgD/BXex0B5WByDP3GAx1MJ/RP/fxhwC/L5lAH7Vgk05Km2y
	QzV3McMEg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK1B1-0079fr-3o; Wed, 10 Mar 2021 15:55:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK1Ay-0079fC-75
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 15:55:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AFt4f3071300;
 Wed, 10 Mar 2021 09:55:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615391705;
 bh=B9dcLgfgPBxJ7pb6dQlC6AW+mXL0xEIjcJDhqHZ1Jbw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=wprIz/o8kh7d4RmbMYpPMfXvYWptCKBW4xVgR3CHvJUCW5hSIvvheY1acXtGtbYMc
 Dbt3EIkMPFoK6zny+BqXCmiv4pf0T5kw2PlrUUIIemZSnA2B8mc/Ix+siKuNjTmym3
 9p+RGDKWE0bLjmYYeAf2xBY4RsapNGqOdiq8qGZA=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AFt4rM046409
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 09:55:04 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 09:55:03 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 09:55:03 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AFsq5j082613;
 Wed, 10 Mar 2021 09:55:00 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Lokesh Vutla
 <lokeshvutla@ti.com>, <linux-phy@lists.infradead.org>
Subject: [PATCH 2/4] phy: cadence-torrent: Group reset APIs and clock APIs
Date: Wed, 10 Mar 2021 21:24:43 +0530
Message-ID: <20210310155445.534-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310155445.534-1-kishon@ti.com>
References: <20210310155445.534-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_155508_636062_5E8229BA 
X-CRM114-Status: GOOD (  13.43  )
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

No functional change intended. Group reset APIs and clock APIs in
preparation for adding support to skip configuration if the SERDES
is already configured by bootloader.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 84 ++++++++++++++---------
 1 file changed, 53 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 3fdab0d288c4..ab51c4bf7b30 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -2249,6 +2249,54 @@ static int cdns_torrent_clk_register(struct cdns_torrent_phy *cdns_phy)
 	return 0;
 }
 
+static int cdns_torrent_reset(struct cdns_torrent_phy *cdns_phy)
+{
+	struct device *dev = cdns_phy->dev;
+
+	cdns_phy->phy_rst = devm_reset_control_get_exclusive_by_index(dev, 0);
+	if (IS_ERR(cdns_phy->phy_rst)) {
+		dev_err(dev, "%s: failed to get reset\n",
+			dev->of_node->full_name);
+		return PTR_ERR(cdns_phy->phy_rst);
+	}
+
+	cdns_phy->apb_rst = devm_reset_control_get_optional(dev, "torrent_apb");
+	if (IS_ERR(cdns_phy->apb_rst)) {
+		dev_err(dev, "%s: failed to get apb reset\n",
+			dev->of_node->full_name);
+		return PTR_ERR(cdns_phy->apb_rst);
+	}
+
+	return 0;
+}
+
+static int cdns_torrent_clk(struct cdns_torrent_phy *cdns_phy)
+{
+	struct device *dev = cdns_phy->dev;
+	int ret;
+
+	cdns_phy->clk = devm_clk_get(dev, "refclk");
+	if (IS_ERR(cdns_phy->clk)) {
+		dev_err(dev, "phy ref clock not found\n");
+		return PTR_ERR(cdns_phy->clk);
+	}
+
+	ret = clk_prepare_enable(cdns_phy->clk);
+	if (ret) {
+		dev_err(cdns_phy->dev, "Failed to prepare ref clock\n");
+		return ret;
+	}
+
+	cdns_phy->ref_clk_rate = clk_get_rate(cdns_phy->clk);
+	if (!(cdns_phy->ref_clk_rate)) {
+		dev_err(cdns_phy->dev, "Failed to get ref clock rate\n");
+		clk_disable_unprepare(cdns_phy->clk);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int cdns_torrent_phy_probe(struct platform_device *pdev)
 {
 	struct cdns_torrent_phy *cdns_phy;
@@ -2274,26 +2322,6 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	cdns_phy->dev = dev;
 	cdns_phy->init_data = data;
 
-	cdns_phy->phy_rst = devm_reset_control_get_exclusive_by_index(dev, 0);
-	if (IS_ERR(cdns_phy->phy_rst)) {
-		dev_err(dev, "%s: failed to get reset\n",
-			dev->of_node->full_name);
-		return PTR_ERR(cdns_phy->phy_rst);
-	}
-
-	cdns_phy->apb_rst = devm_reset_control_get_optional(dev, "torrent_apb");
-	if (IS_ERR(cdns_phy->apb_rst)) {
-		dev_err(dev, "%s: failed to get apb reset\n",
-			dev->of_node->full_name);
-		return PTR_ERR(cdns_phy->apb_rst);
-	}
-
-	cdns_phy->clk = devm_clk_get(dev, "refclk");
-	if (IS_ERR(cdns_phy->clk)) {
-		dev_err(dev, "phy ref clock not found\n");
-		return PTR_ERR(cdns_phy->clk);
-	}
-
 	cdns_phy->sd_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cdns_phy->sd_base))
 		return PTR_ERR(cdns_phy->sd_base);
@@ -2316,18 +2344,13 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(cdns_phy->clk);
-	if (ret) {
-		dev_err(cdns_phy->dev, "Failed to prepare ref clock\n");
+	ret = cdns_torrent_reset(cdns_phy);
+	if (ret)
 		goto clk_cleanup;
-	}
 
-	cdns_phy->ref_clk_rate = clk_get_rate(cdns_phy->clk);
-	if (!(cdns_phy->ref_clk_rate)) {
-		dev_err(cdns_phy->dev, "Failed to get ref clock rate\n");
-		ret = -EINVAL;
-		goto clk_disable;
-	}
+	ret = cdns_torrent_clk(cdns_phy);
+	if (ret)
+		goto clk_cleanup;
 
 	/* Enable APB */
 	reset_control_deassert(cdns_phy->apb_rst);
@@ -2505,7 +2528,6 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		reset_control_put(cdns_phy->phys[i].lnk_rst);
 	of_node_put(child);
 	reset_control_assert(cdns_phy->apb_rst);
-clk_disable:
 	clk_disable_unprepare(cdns_phy->clk);
 clk_cleanup:
 	cdns_torrent_clk_cleanup(cdns_phy);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
