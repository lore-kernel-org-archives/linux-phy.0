Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EE0C7EE22
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 20:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gIRWAn383DzkI78XKnpwlZLnly++H+jo4KzHjZJQ7ZY=; b=uZEknJbhIKL7Y0
	LcoQZX1jsGON393jkcJCiAhOr6ljS+AX0BDINx9ViIrEfm1IN1mbavKZRlC2gDcE7HDbaCsGvp7OU
	2qwHWiUfbU3kU2mLOOj2A9+ELF+I0XrzRNb+gg5ikEp8RhXoH6COuLZ3f8bxHX4ZDSsPB7hupz3oa
	VTedq8j748ltC6m9vuDOMm8YhjgcKAn6KekU64WMVsKp7MQIJS6vfihekrP78Qk0mtYGlOhVw2kDf
	vccpN+YA0zGGtyPgDa9mVXsNf8zru6FPn4Fa0CPD6sPlwkgyIC/K43xTdKnFJeZAp1Hukv6h8GpR9
	vBbP1cXM0yJ4DafjSEVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwqm2-006zEN-1S;
	Wed, 10 May 2023 20:50:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwqly-006zCB-2w;
	Wed, 10 May 2023 20:50:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7277664082;
	Wed, 10 May 2023 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1460C433EF;
	Wed, 10 May 2023 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683751853;
	bh=6sGfIeAH+EYa3fOLxgPHH2fMnwBuBPM3BpmYiynwUQo=;
	h=From:To:Cc:Subject:Date:From;
	b=MPvG94GTN3Afp7t1kVqNgLhbmbSkLv83HLnmbHhSbqs0phTUmpXMVWaolIAs3ADSX
	 RJ2C3MDJ2I31Z+ovgotv/M64LiIAJj24zruCbKB7sIqB5soJIfnP3LZiuQMH8cb8B9
	 CIDaiTxkWHj9K9diDsnnyZYYKPtkAwwnWl0iR5iAftdUc0DIH9JpYOps8lAn6vv//K
	 iQlAUZmtszRgvJJMih26MlfvCmAA7nTK8UljTXcq5Eu12QThehbbE0JqYMU6F7/4km
	 aIwilI8t1q8aSOEr2Q90LwMOTEtHmCH/FoETxEVqX+xY7K0belBIqgKddkyKcgeyz/
	 FmA1LiMju4lHQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Alain Volmat <avolmat@me.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 1/2] phy: st: miphy28lp: use _poll_timeout functions for waits
Date: Wed, 10 May 2023 16:50:36 -0400
Message-Id: <20230510205037.105115-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_135055_025238_8F9226B6 
X-CRM114-Status: GOOD (  12.72  )
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

From: Alain Volmat <avolmat@me.com>

[ Upstream commit e3be4dd2c8d8aabfd2c3127d0e2e5754d3ae82d6 ]

This commit introduces _poll_timeout functions usage instead of
wait loops waiting for a status bit.

Signed-off-by: Alain Volmat <avolmat@me.com>
Reviewed-by: Patrice Chotard <patrice.chotard@foss.st.com>
Link: https://lore.kernel.org/r/20230210224309.98452-1-avolmat@me.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/st/phy-miphy28lp.c | 42 ++++++++--------------------------
 1 file changed, 10 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/st/phy-miphy28lp.c b/drivers/phy/st/phy-miphy28lp.c
index 213e2e15339c4..fe23432e5b1a6 100644
--- a/drivers/phy/st/phy-miphy28lp.c
+++ b/drivers/phy/st/phy-miphy28lp.c
@@ -13,6 +13,7 @@
 
 #include <linux/platform_device.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -488,19 +489,11 @@ static inline void miphy28lp_pcie_config_gen(struct miphy28lp_phy *miphy_phy)
 
 static inline int miphy28lp_wait_compensation(struct miphy28lp_phy *miphy_phy)
 {
-	unsigned long finish = jiffies + 5 * HZ;
 	u8 val;
 
 	/* Waiting for Compensation to complete */
-	do {
-		val = readb_relaxed(miphy_phy->base + MIPHY_COMP_FSM_6);
-
-		if (time_after_eq(jiffies, finish))
-			return -EBUSY;
-		cpu_relax();
-	} while (!(val & COMP_DONE));
-
-	return 0;
+	return readb_relaxed_poll_timeout(miphy_phy->base + MIPHY_COMP_FSM_6,
+					  val, val & COMP_DONE, 1, 5 * USEC_PER_SEC);
 }
 
 
@@ -809,7 +802,6 @@ static inline void miphy28lp_configure_usb3(struct miphy28lp_phy *miphy_phy)
 
 static inline int miphy_is_ready(struct miphy28lp_phy *miphy_phy)
 {
-	unsigned long finish = jiffies + 5 * HZ;
 	u8 mask = HFC_PLL | HFC_RDY;
 	u8 val;
 
@@ -820,21 +812,14 @@ static inline int miphy_is_ready(struct miphy28lp_phy *miphy_phy)
 	if (miphy_phy->type == PHY_TYPE_SATA)
 		mask |= PHY_RDY;
 
-	do {
-		val = readb_relaxed(miphy_phy->base + MIPHY_STATUS_1);
-		if ((val & mask) != mask)
-			cpu_relax();
-		else
-			return 0;
-	} while (!time_after_eq(jiffies, finish));
-
-	return -EBUSY;
+	return readb_relaxed_poll_timeout(miphy_phy->base + MIPHY_STATUS_1,
+					  val, (val & mask) == mask, 1,
+					  5 * USEC_PER_SEC);
 }
 
 static int miphy_osc_is_ready(struct miphy28lp_phy *miphy_phy)
 {
 	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
-	unsigned long finish = jiffies + 5 * HZ;
 	u32 val;
 
 	if (!miphy_phy->osc_rdy)
@@ -843,17 +828,10 @@ static int miphy_osc_is_ready(struct miphy28lp_phy *miphy_phy)
 	if (!miphy_phy->syscfg_reg[SYSCFG_STATUS])
 		return -EINVAL;
 
-	do {
-		regmap_read(miphy_dev->regmap,
-				miphy_phy->syscfg_reg[SYSCFG_STATUS], &val);
-
-		if ((val & MIPHY_OSC_RDY) != MIPHY_OSC_RDY)
-			cpu_relax();
-		else
-			return 0;
-	} while (!time_after_eq(jiffies, finish));
-
-	return -EBUSY;
+	return regmap_read_poll_timeout(miphy_dev->regmap,
+					miphy_phy->syscfg_reg[SYSCFG_STATUS],
+					val, val & MIPHY_OSC_RDY, 1,
+					5 * USEC_PER_SEC);
 }
 
 static int miphy28lp_get_resource_byname(struct device_node *child,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
