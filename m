Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E17FBC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0uktNpJQOuXv5QQ/rMcY48kxxOv2FRHAb7oJYnvXUs=; b=gR+CQ/Qf3PUN+X
	r8gjlgZa2A9UDEHg4ZS07Q6loSJnwWBqjed9E2SmYI23rBnT64pNrvNTtDwHQRtnWR8lEMGXpzll8
	wxTkRgYShiAW+9p90OoazmFfKA+5KFqh3uEjPlx8OH770wnkhmBwnJZtlVml849ny83KUK9PVGtQ3
	LKCk6P+djwyhjSekw4/X4o5XYur/2VVCmPa1fwFxyLTSwOr9UaTJP/ynEMD4zHz66k4Sc9k2jXKjT
	fJTngHhuY5PI+psdbY8SC6p0JlBXVhJaXagM+QSbr0KdbgNfvGkmDhP33e06iq4EJ+sIVAgML19pI
	ildLXaRWaOdmnWc5HfIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5hx-000Mut-Bz; Wed, 18 Jan 2023 10:30:17 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5hu-000Mu1-Nh
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:30:16 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by albert.telenet-ops.be with bizsmtp
	id AAWB2900J2zf9gW06AWBzF; Wed, 18 Jan 2023 11:30:12 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5hm-005aJQ-Ff;
	Wed, 18 Jan 2023 11:30:11 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5hr-001Jmq-PD;
	Wed, 18 Jan 2023 11:30:11 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: phy-can-transceiver: Skip warning if no "max-bitrate"
Date: Wed, 18 Jan 2023 11:29:58 +0100
Message-Id: <88e158f97dd52ebaa7126cd9631f34764b9c0795.1674037334.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_023014_932617_56197148 
X-CRM114-Status: GOOD (  10.98  )
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

According to the DT bindings, the "max-bitrate" property is optional.
However, when it is not present, a warning is printed.
Fix this by adding a missing check for -EINVAL.

Fixes: a4a86d273ff1b6f7 ("phy: phy-can-transceiver: Add support for generic CAN transceiver driver")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/phy-can-transceiver.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 95c6dbb52da720bf..ce511ad5d3690763 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -99,6 +99,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
 	u32 max_bitrate = 0;
+	int err;
 
 	can_transceiver_phy = devm_kzalloc(dev, sizeof(struct can_transceiver_phy), GFP_KERNEL);
 	if (!can_transceiver_phy)
@@ -124,8 +125,8 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(phy);
 	}
 
-	device_property_read_u32(dev, "max-bitrate", &max_bitrate);
-	if (!max_bitrate)
+	err = device_property_read_u32(dev, "max-bitrate", &max_bitrate);
+	if ((err != -EINVAL) && !max_bitrate)
 		dev_warn(dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
 	phy->attrs.max_link_rate = max_bitrate;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
