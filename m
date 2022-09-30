Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41D1FC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 12:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRItl82duR9FSOYJLVIJ9g+XBAFpXFNU03o2eNYXqFY=; b=Zn91btuS7v5TrV
	fBbmNJOhpwM5dBXYl6EnIdgzDt+gi4Y3vd5GOy2RLnreYM/IEjSIlXwTS9MagmG3Yt+wbslnWzEIH
	iXM3bpzx8SkfbBRNzsQbX2x0KOjs7f4lr0iFkSV1IE/NXAlQNjrVKaOD0Qlpp8+TJ4RXBp7dBGMHF
	jQyrIJcdmuj5K/K4fZujDppBRwDmCBqXKtMEe0qC4oenq9+IcHPDEtDnJhjg6Yzfn3WihponW8zqq
	4PsinSFaOGHmcsIAHvcWYz/QnprdHIsc4Byqe8pVEcJxCLJU083n5WSArjN05API5Be6wOQ4kieKH
	Fv27nDv0ncEeVu549sow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFRY-009EU8-N8; Fri, 30 Sep 2022 12:48:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFRU-009ERy-M1
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 12:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oeFRI-0007W2-As; Fri, 30 Sep 2022 14:48:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oeFRH-003nvd-Jb; Fri, 30 Sep 2022 14:48:22 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oeFRE-001tpy-PR; Fri, 30 Sep 2022 14:48:20 +0200
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-media@vger.kernel.org
Subject: [PATCH v4 2/4] phy: dphy: add support to calculate the timing based on hs_clk_rate
Date: Fri, 30 Sep 2022 14:48:10 +0200
Message-Id: <20220930124812.450332-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930124812.450332-1-m.felsch@pengutronix.de>
References: <20220930124812.450332-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_054836_723888_D1BD40C2 
X-CRM114-Status: GOOD (  15.71  )
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
