Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683B6C6FA92
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 13:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KiTKBbs951BGOh0SBL7q9PTurhj47XqEuk4+Q8xnN1s=; b=0Hlobpr75IDPJi
	o6nVPu3xFl6ZYshGohZyDJdEbg45N1MZnfzQrJeBBFvzXxwVemPCL9o9SBdlOfCq98oaIbzxtQ68K
	xghr/iliqHVN7hk41Z2K74msaHXqBbbs7s1R8plE4yJrTr/NdjkLuW3/rSYxPw9/DNKxLbn+VclPL
	wBorUeWlcuoVSPn6zsVYEyPcwBzPaY2rZJgc5NFybVgRvEwXBnRbApjZywrzOl8ZKFqBS7OKqCeOi
	I34r44VKFjW2JHC0sDfuRLZSZcvLj4RadEzLdeGe6PRJImORT4PUxv/EE+vQLOzQ2h7WsUmj7dMTH
	Uv0QfwloUTZWx6ejJ4iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obMZc-00FmVG-G5; Thu, 22 Sep 2022 13:49:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obMZY-00FmRq-85
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 13:49:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1obMZM-0008EX-Fa; Thu, 22 Sep 2022 15:48:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1obMZL-002GUc-PI; Thu, 22 Sep 2022 15:48:46 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1obMZJ-00D4D7-Bk; Thu, 22 Sep 2022 15:48:45 +0200
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
Subject: [PATCH v3 1/4] phy: dphy: refactor get_default_config
Date: Thu, 22 Sep 2022 15:48:40 +0200
Message-Id: <20220922134843.3108267-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220922134843.3108267-1-m.felsch@pengutronix.de>
References: <20220922134843.3108267-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_064900_314204_AAF7D80C 
X-CRM114-Status: GOOD (  11.55  )
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

Factor out the calculation into phy_mipi_dphy_calc_config(). This is
needed for the follow up patch which adds the support to calculate the
timings based on a given hs clock. No functional changes are done.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
Changelog:

v2:
- added Vinod Koul a-b
---
 drivers/phy/phy-core-mipi-dphy.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core-mipi-dphy.c b/drivers/phy/phy-core-mipi-dphy.c
index 929e86d6558e..ba365bc77407 100644
--- a/drivers/phy/phy-core-mipi-dphy.c
+++ b/drivers/phy/phy-core-mipi-dphy.c
@@ -17,7 +17,7 @@
  * from the valid ranges specified in Section 6.9, Table 14, Page 41
  * of the D-PHY specification (v1.2).
  */
-int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
+static int phy_mipi_dphy_calc_config(unsigned long pixel_clock,
 				     unsigned int bpp,
 				     unsigned int lanes,
 				     struct phy_configure_opts_mipi_dphy *cfg)
@@ -75,6 +75,15 @@ int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
 
 	return 0;
 }
+
+int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
+				     unsigned int bpp,
+				     unsigned int lanes,
+				     struct phy_configure_opts_mipi_dphy *cfg)
+{
+	return phy_mipi_dphy_calc_config(pixel_clock, bpp, lanes, cfg);
+
+}
 EXPORT_SYMBOL(phy_mipi_dphy_get_default_config);
 
 /*
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
