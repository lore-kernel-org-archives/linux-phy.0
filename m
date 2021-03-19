Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A97FC433DB
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 488E764EA4
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 488E764EA4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CKjSDLLM4SHZBssRFRoN1HAaWd0bNxoPKkd7RljpHM8=; b=GiGzZVQq2Vcg2QbWvBb3vzg3u
	pJ7ZqCy9d/yRSqOKF1AfDZYRpKf2LmWm+L0sAlwZ0vN2xrSeLt0VLDbuOT5gzcfYqrK/9Ibeky9m5
	QNsdgy0vshcUht8EA942pTV5j5elBLiGk7BGChHH413xI/RjY6SaY8WBxfHyicSeNbofB89VV4GyQ
	ZFnTBpXyUqPF8nC1rMhiiCZ8tRGI1Mi9yK3UGHIBQlmEdQ+kS17B455w7NryOCQuY669fgbmEOsIz
	m5jOz8+TlfJ6WLGc0RatVP6Wj9HZ6G7IYOjmb+SsjZ379wZhGT8m/3MHsBnhlGyEFjt3W1xrCNaS5
	aRtslGKmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNETx-007Pyx-Nf; Fri, 19 Mar 2021 12:44:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNERx-007Pse-NG
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:43:59 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfrUS048326;
 Fri, 19 Mar 2021 07:41:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157713;
 bh=M9USRoR5J3RSLtwkCWEx5+N8qLJ8X7rTcoD+wACuxxk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bxrsIRpQBE4Mm8l6sSNJq+ExlFNrwjq5jqP8bXP2R3B7Hx6QxDPaXY1vupJ5K56gL
 dNdXx9FbkM0vRLoiG2nYxZ7yABCry4CTR80z1R1wZmCTiTpwM/G4UwStsDgqsPToYc
 ae3u724PuPEzzyi0+dom3XWfWpGSBbDCvPrMJces=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCfreZ124474
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:41:53 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:41:53 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:41:53 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTf6011913;
 Fri, 19 Mar 2021 07:41:50 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 05/13] phy: cadence: Sierra: Move all clk_get_*() to a
 separate function
Date: Fri, 19 Mar 2021 18:11:20 +0530
Message-ID: <20210319124128.13308-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124358_166812_435A0F3F 
X-CRM114-Status: GOOD (  12.90  )
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

No functional change. Group all devm_clk_get_optional() to a
separate function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 57 +++++++++++++++---------
 1 file changed, 35 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index f7ba0ed416bc..7bf1b4c7774a 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -477,6 +477,38 @@ static int cdns_regmap_init_blocks(struct cdns_sierra_phy *sp,
 	return 0;
 }
 
+static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
+				      struct device *dev)
+{
+	struct clk *clk;
+	int ret;
+
+	clk = devm_clk_get_optional(dev, "phy_clk");
+	if (IS_ERR(clk)) {
+		dev_err(dev, "failed to get clock phy_clk\n");
+		return PTR_ERR(clk);
+	}
+	sp->clk = clk;
+
+	clk = devm_clk_get_optional(dev, "cmn_refclk_dig_div");
+	if (IS_ERR(clk)) {
+		dev_err(dev, "cmn_refclk_dig_div clock not found\n");
+		ret = PTR_ERR(clk);
+		return ret;
+	}
+	sp->cmn_refclk_dig_div = clk;
+
+	clk = devm_clk_get_optional(dev, "cmn_refclk1_dig_div");
+	if (IS_ERR(clk)) {
+		dev_err(dev, "cmn_refclk1_dig_div clock not found\n");
+		ret = PTR_ERR(clk);
+		return ret;
+	}
+	sp->cmn_refclk1_dig_div = clk;
+
+	return 0;
+}
+
 static int cdns_sierra_phy_probe(struct platform_device *pdev)
 {
 	struct cdns_sierra_phy *sp;
@@ -487,7 +519,6 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	unsigned int id_value;
 	int i, ret, node = 0;
 	void __iomem *base;
-	struct clk *clk;
 	struct device_node *dn = dev->of_node, *child;
 
 	if (of_get_child_count(dn) == 0)
@@ -524,11 +555,9 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, sp);
 
-	sp->clk = devm_clk_get_optional(dev, "phy_clk");
-	if (IS_ERR(sp->clk)) {
-		dev_err(dev, "failed to get clock phy_clk\n");
-		return PTR_ERR(sp->clk);
-	}
+	ret = cdns_sierra_phy_get_clocks(sp, dev);
+	if (ret)
+		return ret;
 
 	sp->phy_rst = devm_reset_control_get(dev, "sierra_reset");
 	if (IS_ERR(sp->phy_rst)) {
@@ -542,22 +571,6 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(sp->apb_rst);
 	}
 
-	clk = devm_clk_get_optional(dev, "cmn_refclk_dig_div");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "cmn_refclk_dig_div clock not found\n");
-		ret = PTR_ERR(clk);
-		return ret;
-	}
-	sp->cmn_refclk_dig_div = clk;
-
-	clk = devm_clk_get_optional(dev, "cmn_refclk1_dig_div");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "cmn_refclk1_dig_div clock not found\n");
-		ret = PTR_ERR(clk);
-		return ret;
-	}
-	sp->cmn_refclk1_dig_div = clk;
-
 	ret = clk_prepare_enable(sp->clk);
 	if (ret)
 		return ret;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
