Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C71C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 21:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZP9cyvdNq9gcke2WQztHZJzhEqoY6NqETL3GFmycUTs=; b=e0q/XtTnTky9rg
	t+3iMn9LVwoSILYnKaWw/3ZIE46DM86Ko29rghKnBJFhhhVl/ZJem2wEZcYfXKyO+PD5+f7u5vh7t
	PDrxoLH4BR2K55du/zm1DvCvp/stOMQgm0PbjHO4NyZheLGGMszR1i84w6EYUvksqPanWI1pbQTbv
	r52+RsudL5y39kUeEpcfef7UYOybTLJaTYq21i4QmFrXL5yOG76mJccR6jTABQ5/x2LPq2YBYeDjP
	pp4zHK4pHCBymkhB+GzBFcXMVQmsjzzYDKedQuBteRkVWdiOOeI3AJzVvnI+nwLT74R9rz9+KNDSD
	ri8Q6vq3ziV412deHatA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwABe-005coK-Ug; Sat, 11 Dec 2021 21:45:46 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwABc-005cm9-2y
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 21:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1639259145; x=1670795145;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kPEOxlRJTHMuHZKyDDPAt3/GOzpvpZEMvEMb59PqfX4=;
 b=dXaKy5D1I2N9+Rd59WAH6Xl4A+QkQ5MJ5TMUVhuSOqjhRhkMngfKzKXV
 1clWnxE2KlD6D8+5C8CTeSvC8XWvblCV6cV17gxTBQAMsBQbOTl4bAKOC
 /JGAEk7T+hZo6D8yefImk2KscMsqujTyTGU80DZtKhL7YC9eRs4yDfkVO
 4pDe5jcsZCETyYedx4scqP1BPo+PcTy/CYJBxgSFpYBxtIFaSiHjFWhaI
 jkmYjaa4u5mYo098CRiVKhQXk5KOd/qItbp8Me0PAPQCasaCVKUtsxgbE
 40j9OhpeyiczGfYIynimn0HoJmQK0gdHDAgndJA3uRGdy4R0uHsnWsbTw A==;
IronPort-SDR: Iq/GQflWI2WFGi7l4IFzHQCasMOinRa6l6YAAZNDoUkcsoxL6iBCh1Ih6Qr8sflGMy7xa8We7M
 XWUClBFBdyNedL+38z1tZYbMVxciv0DBPpfQNZn73WJo5pKw2DYsENN8wiq61cas9+WInK8KBk
 O16JaVpi/kns7dREtuDyfphn5XSmnn2f4jl6Vk4TGjCB8VAn019UOuv4aeIBhi+8bBecgdaceP
 I1oi/Kb/ccyDAcLeFqL2n1usxXUkWDCDMOA3kCT/PhOJV3lSfArwPD4V/JnML2aOGiniok+shi
 2JXH8bsqEZzM7O/DakRcF1pd
X-IronPort-AV: E=Sophos;i="5.88,199,1635231600"; d="scan'208";a="146345647"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Dec 2021 14:45:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Sat, 11 Dec 2021 14:45:39 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2375.17 via Frontend Transport; Sat, 11 Dec 2021 14:45:38 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <linux@armlinux.org.uk>, "Horatiu
 Vultur" <horatiu.vultur@microchip.com>
Subject: [PATCH] phy: lan966x: Remove set_speed function
Date: Sat, 11 Dec 2021 22:47:17 +0100
Message-ID: <20211211214717.1284306-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_134544_161104_729E05F4 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

Remove the set_speed function and allow the driver to figure out the
speed at which needs to configure the serdes based on the interface type.

Fixes: 305524902a0045 ("phy: Add lan966x ethernet serdes PHY driver")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/phy/microchip/lan966x_serdes.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
index c0b80a176387..e86a879b92b5 100644
--- a/drivers/phy/microchip/lan966x_serdes.c
+++ b/drivers/phy/microchip/lan966x_serdes.c
@@ -392,6 +392,11 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	if (mode != PHY_MODE_ETHERNET)
 		return -EOPNOTSUPP;
 
+	if (submode == PHY_INTERFACE_MODE_2500BASEX)
+		macro->speed = SPEED_2500;
+	else
+		macro->speed = SPEED_1000;
+
 	if (submode == PHY_INTERFACE_MODE_1000BASEX ||
 	    submode == PHY_INTERFACE_MODE_2500BASEX)
 		submode = PHY_INTERFACE_MODE_SGMII;
@@ -427,19 +432,8 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return -EINVAL;
 }
 
-static int serdes_set_speed(struct phy *phy, int speed)
-{
-	struct serdes_macro *macro = phy_get_drvdata(phy);
-
-	macro->speed = speed;
-
-	return lan966x_sd6g40_setup(macro, macro->idx - (CU_MAX + 1),
-				    macro->mode);
-}
-
 static const struct phy_ops serdes_ops = {
 	.set_mode	= serdes_set_mode,
-	.set_speed	= serdes_set_speed,
 	.owner		= THIS_MODULE,
 };
 
@@ -482,7 +476,6 @@ static int serdes_phy_create(struct serdes_ctrl *ctrl, u8 idx, struct phy **phy)
 
 	macro->idx = idx;
 	macro->ctrl = ctrl;
-	macro->speed = SPEED_1000;
 	macro->port = -1;
 
 	phy_set_drvdata(*phy, macro);
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
