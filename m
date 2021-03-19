Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECF0C433DB
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:58:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 18FB164EED
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:58:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 18FB164EED
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9aZS4VCbMj8pe2HcNUki184bvMGhNjYhlXXWPdJ1xT0=; b=Q902rUmm52UlCzo7YeVcR3dhM
	hVI3+9D+Y424t679jGfmuynGDAWctkdOzsm5ju4ZQub3xTE4t1EqdYH+WpwGZb+h4XidA95Qx/Qge
	7DEymvBcteRnFX0dEmhGQdsDKpejurHXWqjSGv1dPGViToSr3LMMkXuJCo6sCxgdDFynD1fAI010T
	AIubfbvxIntP13tWBYCjdzWvaB9lALBULnUWhf3yF7Nn/NZg5CP5mR+q6pK35y2OCovMUnpWKHM3h
	gY189dzhdpfYQBWosnZ/c6llgwSsBwK6S2YBrX3f2c/dzPinwEGhejGxsHXTSga5Sbd7qj14rnrqa
	liAlmQ7sA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEhy-007RAP-KO; Fri, 19 Mar 2021 12:58:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEhw-007RAJ-KJ
 for linux-phy@desiato.infradead.org; Fri, 19 Mar 2021 12:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZlSYtd0nqPwe7TNyJ6IcMcUJFPtyk5lb4lEvWwGfaXs=; b=VDH4+c3hRPsz8XNrS+iTBGyCyb
 iSFpvC4D/B2mHvR8C455A4zvOmqKh8vkVtz+DWYxpKbn3rQ+tgr5GPSdvFXYpWWwxq0IpJOh9X9gL
 88bKn0bf5EGOaIaqNn5mpgCzWOgIkUq9ug42OjeND9uKlkMuz+G66qg73AGK6moXxC3P7W5cugktH
 ja2YFw0JQlIu33257h/Hm0sdyFpH1AIqr9lUCDR7l2UieHzTzzXkLDSWmLPO6V9un4jFM0HAvuJsJ
 FBF41J8/fRqZO0qqS+2ww64JmwVvrDiUcjMOXmTb+L6dJ8cEx93iIuCtcyhUpojUdnrQLUeGAdB8e
 2z+P6LZw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNESV-004PRF-G7
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:42:37 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCgPhb108096;
 Fri, 19 Mar 2021 07:42:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157745;
 bh=ZlSYtd0nqPwe7TNyJ6IcMcUJFPtyk5lb4lEvWwGfaXs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ED3HQLZEXJRIr79yepKasmnbWZLAfgtvXALUVymeiCW95TAuIu7zv0e6AGcGqTkvG
 iUbpY5Q6P9/WsL4NXo626ZmB3yDamSfB8CDLXEbtA/bjj4k4LG1U61XGilceE6gqqE
 xGpWJA6JFUyHYeoHFms7nLC5UeK6HCBS8TBjQsfA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCgOMS048864
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:42:24 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:42:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:42:24 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTfE011913;
 Fri, 19 Mar 2021 07:42:21 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 13/13] phy: cadence: Sierra: Enable pll_cmnlc and
 pll_cmnlc1 clocks
Date: Fri, 19 Mar 2021 18:11:28 +0530
Message-ID: <20210319124128.13308-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124233_403349_F134158D 
X-CRM114-Status: GOOD (  11.34  )
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

Get pll_cmnlc and pll_cmnlc1 optional clocks and enable them.
This will enable REFRCV/1 in case the pll_cmnlc/1 takes input
from REFRCV/1 respectively.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 40 ++++++++++++++++++++++--
 1 file changed, 37 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 039ca10db59d..5c68e31c5939 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -768,6 +768,40 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
 	return 0;
 }
 
+static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
+{
+	int ret;
+
+	ret = clk_prepare_enable(sp->input_clks[PHY_CLK]);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
+	if (ret)
+		goto err_pll_cmnlc;
+
+	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
+	if (ret)
+		goto err_pll_cmnlc1;
+
+	return 0;
+
+err_pll_cmnlc1:
+	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
+
+err_pll_cmnlc:
+	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
+
+	return ret;
+}
+
+static void cdns_sierra_phy_disable_clocks(struct cdns_sierra_phy *sp)
+{
+	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
+	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
+	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
+}
+
 static int cdns_sierra_phy_get_resets(struct cdns_sierra_phy *sp,
 				      struct device *dev)
 {
@@ -848,7 +882,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	if (ret)
 		goto unregister_clk;
 
-	ret = clk_prepare_enable(sp->input_clks[PHY_CLK]);
+	ret = cdns_sierra_phy_enable_clocks(sp);
 	if (ret)
 		goto unregister_clk;
 
@@ -925,7 +959,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 		reset_control_put(sp->phys[i].lnk_rst);
 	of_node_put(child);
 clk_disable:
-	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
+	cdns_sierra_phy_disable_clocks(sp);
 	reset_control_assert(sp->apb_rst);
 unregister_clk:
 	cdns_sierra_clk_unregister(sp);
@@ -941,6 +975,7 @@ static int cdns_sierra_phy_remove(struct platform_device *pdev)
 	reset_control_assert(phy->apb_rst);
 	pm_runtime_disable(&pdev->dev);
 
+	cdns_sierra_phy_disable_clocks(phy);
 	/*
 	 * The device level resets will be put automatically.
 	 * Need to put the subnode resets here though.
@@ -950,7 +985,6 @@ static int cdns_sierra_phy_remove(struct platform_device *pdev)
 		reset_control_put(phy->phys[i].lnk_rst);
 	}
 
-	clk_disable_unprepare(phy->input_clks[PHY_CLK]);
 	cdns_sierra_clk_unregister(phy);
 
 	return 0;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
