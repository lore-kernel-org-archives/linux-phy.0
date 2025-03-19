Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01B2C35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 13:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iE9HzkKM6bgixJalI4WRkIUXWMlnB8N3AgXe4jZEArw=; b=TsIRK8XRAcuhRB
	Jn0HwlFL00QiVXSDB4ffvMvc1qLaKJkIZwDfbb17qdIInoxholEgmmEqls6mRMAoFjTup5M/b4Hz+
	TzYzEYHTZdfwqx54zidSgf27BYnuWgPw22mm5s/vZP9OoQX1mmjbzUY1SNkfz3KkF3zv5p+oAG7b4
	2h8lgIlQdorvmbaR15Yuy8BE4tGfy+2L/m6B2Dcl2DzqtjPo5pEJIcoyhvdVyiXAyABx9uJSTML86
	rYhaFdwN7hLgF/te4m0NJb/5rIGBzE0qu9LFfS0fdJ/cmO0Frh+WHN/G/WdZTM+xODeUfrVDrjSjd
	Ch1DBjb0ZkeO768XqHQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tutRN-000000095HJ-1vhw;
	Wed, 19 Mar 2025 13:26:37 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tutQn-0000000958V-2S0C
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 13:26:06 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:1557:27ad:a073:92ed])
	by laurent.telenet-ops.be with cmsmtp
	id SdRt2E0010FbbzD01dRtAa; Wed, 19 Mar 2025 14:25:56 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tutQ9-0000000EmS6-1drF;
	Wed, 19 Mar 2025 14:25:49 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tutQa-0000000BlRv-460m;
	Wed, 19 Mar 2025 14:25:48 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob@rox.of.borg,
	Herring@rox.of.borg,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: can-transceiver: Re-instate "mux-states" property presence check
Date: Wed, 19 Mar 2025 14:25:47 +0100
Message-ID: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_062601_758708_9996E97E 
X-CRM114-Status: GOOD (  13.29  )
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

On the Renesas Gray Hawk Single development board:

    can-transceiver-phy can-phy0: /can-phy0: failed to get mux-state (0)

"mux-states" is an optional property for CAN transceivers.  However,
mux_get() always prints an error message in case of an error, including
when the property is not present, confusing the user.

Fix this by re-instating the property presence check.

This is bascially a revert of commit d02dfd4ceb2e9f34 ("phy:
can-transceiver: Drop unnecessary "mux-states" property presence
check"), with two changes:
  1. Use the proper API for checking whether a property is present,
  2. Do not print an error message, as the mux core already takes care
     of that.

Fixes: d02dfd4ceb2e9f34 ("phy: can-transceiver: Drop unnecessary "mux-states" property presence check")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Alternatively, the multiplexer subsystem needs to gain support for
getting an optional mux...
---
 drivers/phy/phy-can-transceiver.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 2bec70615449f94d..539b3446b9c33eed 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -103,7 +103,6 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct phy *phy;
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
-	struct mux_state *mux_state;
 	u32 max_bitrate = 0;
 	int err;
 
@@ -114,11 +113,13 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
 	drvdata = match->data;
 
-	mux_state = devm_mux_state_get(dev, NULL);
-	if (IS_ERR(mux_state)) {
-		if (PTR_ERR(mux_state) == -EPROBE_DEFER)
+	if (of_property_present(dev->of_node, "mux-states")) {
+		struct mux_state *mux_state;
+
+		mux_state = devm_mux_state_get(dev, NULL);
+		if (IS_ERR(mux_state))
 			return PTR_ERR(mux_state);
-	} else {
+
 		can_transceiver_phy->mux_state = mux_state;
 	}
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
