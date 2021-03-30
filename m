Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0615BC433DB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BCB760241
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BCB760241
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0unFPLLVAoitniQ8+DMJ6HG7/vCdt+D6WyCSgwi9lbM=; b=pQ+wyxH8hCJO/UgqR/9mDGtHz
	/YkVx/ci612dweRT2HTeXlBBHKz1QUNCKzWS7f1lTSYFMOetuh4EjGl3lIcARepa9oxUDXFGMsg5v
	9pP4fpir1xYQD+AHx7eex80PUKP4NCj3oZga11R4/EMQ9G37IqKBZsiPG3VJUrDF8fhn2WfdXLOzb
	p6l0MoskAMNlJsXYIaExqFIj0qV/mEyNC6+65XeUXe/1iDvkmUOiBUzs5ruTaviF248EcaGL2jpM/
	K/u0bhj+jO9y+yCFPIdfEVQQ7qWqaI5jajh1z8WTsawM3acsle33G7SHKKM+jGBm70efgpVqgETnu
	VyoJQydZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRCAM-003VWu-9P; Tue, 30 Mar 2021 11:04:10 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRC8A-003Uus-0E
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 11:02:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1nTb058287;
 Tue, 30 Mar 2021 06:01:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617102109;
 bh=ujbp6egUdE2P1HPKmF5jsMpxvgPGHhYG2h+v76R89vw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=SqR1uDiYNlUozHJpBKSayiwpWTLkGDPM0oHh9dDtjAwbCtYPelvtH8BaYuube1/sQ
 lbjRIr0gu4zpWNfefavVNtuy+vl9rg546VNw3/2/F12KgFZBu+yBgWLlojbgSlo1CW
 P2v4y1I3Zw0pX8nj16p+H8yr7ICAGvKb7Q0qntIo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UB1nOr007473
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 06:01:49 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 06:01:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 06:01:49 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1dck094447;
 Tue, 30 Mar 2021 06:01:46 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
CC: Swapnil Jakhade <sjakhade@cadence.com>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 2/5] phy: cadence-torrent: Group reset APIs and clock APIs
Date: Tue, 30 Mar 2021 16:31:35 +0530
Message-ID: <20210330110138.24356-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210330110138.24356-1-kishon@ti.com>
References: <20210330110138.24356-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_120154_874806_A7F7A07B 
X-CRM114-Status: GOOD (  12.95  )
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
Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
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
