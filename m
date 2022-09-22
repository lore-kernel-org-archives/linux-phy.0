Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1DD7C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 13:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3H7nWoTuMbOnRG4kW/1HExcYYXa35PSprESwvfSAdow=; b=mckLDboZADGllN
	Rla7SLYyDQVLlJH6fntkgLn3ZrNspJjMq/qzLlSE7LHu/bIY7giEr+UyLGBil7D6G9DaxC1qChXLw
	b2dCp4ugY5ADiZjJzp26bkQ7K/+UzE0OFZ1ZUiBCcMH7BP6d7nxOE6VrUW5o+9J8cnIi8vqBh37z5
	01x2SOW3Z1V/xkoPFemhQBYnJMCXJz+G7HY38h+QMy3t2oPPWCfLfhQS/8K0B5UFDxvAaN0lrk/Pd
	YjdGHGe4+1IK6ViginWymIDPVNWcgFWuDdPd1soQjNxTM4XRAA0eFk7lhlCiUfocqUyDu3LN0eVBK
	ggzqwhqn4lCKtYBysf7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obMZf-00FmXJ-OI; Thu, 22 Sep 2022 13:49:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obMZY-00FmSD-JL
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 13:49:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1obMZM-0008Ec-FZ; Thu, 22 Sep 2022 15:48:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1obMZM-002GUl-8r; Thu, 22 Sep 2022 15:48:46 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1obMZJ-00D4DQ-Cw; Thu, 22 Sep 2022 15:48:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	laurent.pinchart@ideasonboard.com,
	sakari.ailus@linux.intel.com,
	jacopo@jmondi.org,
	hverkuil@xs4all.nl
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH v3 2/4] phy: dphy: add support to calculate the timing based on hs_clk_rate
Date: Thu, 22 Sep 2022 15:48:41 +0200
Message-Id: <20220922134843.3108267-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220922134843.3108267-1-m.felsch@pengutronix.de>
References: <20220922134843.3108267-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_064900_688687_B40EBFC3 
X-CRM114-Status: GOOD (  16.22  )
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

For MIPI-CSI sender use-case it is common to specify the allowed
link-frequencies which should be used for the MIPI link and is
half the hs-clock rate.

This commit adds a helper to calculate the D-PHY timing based on the
hs-clock rate so we don't need to calculate the timings within the
driver.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
Changelog:

v2:
- added Vinod Koul a-b
---
 drivers/phy/phy-core-mipi-dphy.c  | 22 ++++++++++++++++++----
 include/linux/phy/phy-mipi-dphy.h |  3 +++
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/phy-core-mipi-dphy.c b/drivers/phy/phy-core-mipi-dphy.c
index ba365bc77407..f4956a417a47 100644
--- a/drivers/phy/phy-core-mipi-dphy.c
+++ b/drivers/phy/phy-core-mipi-dphy.c
@@ -20,16 +20,18 @@
 static int phy_mipi_dphy_calc_config(unsigned long pixel_clock,
 				     unsigned int bpp,
 				     unsigned int lanes,
+				     unsigned long long hs_clk_rate,
 				     struct phy_configure_opts_mipi_dphy *cfg)
 {
-	unsigned long long hs_clk_rate;
 	unsigned long long ui;
 
 	if (!cfg)
 		return -EINVAL;
 
-	hs_clk_rate = pixel_clock * bpp;
-	do_div(hs_clk_rate, lanes);
+	if (!hs_clk_rate) {
+		hs_clk_rate = pixel_clock * bpp;
+		do_div(hs_clk_rate, lanes);
+	}
 
 	ui = ALIGN(PSEC_PER_SEC, hs_clk_rate);
 	do_div(ui, hs_clk_rate);
@@ -81,11 +83,23 @@ int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
 				     unsigned int lanes,
 				     struct phy_configure_opts_mipi_dphy *cfg)
 {
-	return phy_mipi_dphy_calc_config(pixel_clock, bpp, lanes, cfg);
+	return phy_mipi_dphy_calc_config(pixel_clock, bpp, lanes, 0, cfg);
 
 }
 EXPORT_SYMBOL(phy_mipi_dphy_get_default_config);
 
+int phy_mipi_dphy_get_default_config_for_hsclk(unsigned long long hs_clk_rate,
+					       unsigned int lanes,
+					       struct phy_configure_opts_mipi_dphy *cfg)
+{
+	if (!hs_clk_rate)
+		return -EINVAL;
+
+	return phy_mipi_dphy_calc_config(0, 0, lanes, hs_clk_rate, cfg);
+
+}
+EXPORT_SYMBOL(phy_mipi_dphy_get_default_config_for_hsclk);
+
 /*
  * Validate D-PHY configuration according to MIPI D-PHY specification
  * (v1.2, Section Section 6.9 "Global Operation Timing Parameters").
diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index a877ffee845d..1ac128d78dfe 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -279,6 +279,9 @@ int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
 				     unsigned int bpp,
 				     unsigned int lanes,
 				     struct phy_configure_opts_mipi_dphy *cfg);
+int phy_mipi_dphy_get_default_config_for_hsclk(unsigned long long hs_clk_rate,
+					       unsigned int lanes,
+					       struct phy_configure_opts_mipi_dphy *cfg);
 int phy_mipi_dphy_config_validate(struct phy_configure_opts_mipi_dphy *cfg);
 
 #endif /* __PHY_MIPI_DPHY_H_ */
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
