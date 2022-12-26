Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B73C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 06:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4A8Nm+bPPW3HIkReBsisX9L4ojp9SJVAoARA9+caweQ=; b=MReYJ5ojk2R/Lx
	7dVumc802s42ytZvMtaZ372Ht/lISVVvo3/s9MQOUPDYpXtmqD4+Y18UgA1zTPWZiB3Vrp5/tgZ/m
	u92gO0Xjtn35jYy81Lko1PqkAVYizm9zZn/2HEdK0Gjxk61bJS/mtVRZS5BB3jIWK0cSH4dr7ZI+w
	0+XerybaJiCcof6LiQlbdLwJ72cBBfI/g1XM8DctG3rbXUli1WZ3LBDglP1/TgSN9ZUsXZvu3w/55
	N9GzrWSvqs38t0fGH33Wj6wxfB5p/YvsKG8ZoVN5NqnQRrTVKZdqswBKANXCdbfXQrB0uNJkHA83V
	WqT862adpMtYC2TVsbUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hMW-002OhS-MR; Mon, 26 Dec 2022 06:53:28 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hMT-002Og1-Gi
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 06:53:27 +0000
X-IronPort-AV: E=Sophos;i="5.96,274,1665414000"; 
   d="scan'208";a="144513422"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 26 Dec 2022 15:53:24 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 35F3441B3551;
	Mon, 26 Dec 2022 15:53:24 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 1/2] phy: renesas: r8a779f0-eth-serdes: Add .power_on() into phy_ops
Date: Mon, 26 Dec 2022 15:53:15 +0900
Message-Id: <20221226065316.3895480-2-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
References: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_225325_693691_E6198591 
X-CRM114-Status: GOOD (  11.15  )
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

Add r8a779f0_eth_serdes_power_on() to initialize the hardware for
each channel from the step 9 or later on the datasheet. In other words,
the procedure from the step 1 to 8 is for all channel and it is needed
once only. So, the .init() in any channel instance is called, this
driver initializes the hardware from step 1 to 8. And then, .power_on()
is called, this driver initializes the hardware from step 9 or later.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 57 +++++++++++----------
 1 file changed, 29 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index e7588a940d69..9f55a08e6da1 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -242,34 +242,7 @@ static int r8a779f0_eth_serdes_hw_init(struct r8a779f0_eth_serdes_channel *chann
 	if (ret)
 		return ret;
 
-	ret = r8a779f0_eth_serdes_reg_wait(&dd->channel[0], 0x0000, 0x380, BIT(15), 0);
-	if (ret)
-		return ret;
-
-	for (i = 0; i < R8A779F0_ETH_SERDES_NUM; i++) {
-		ret = r8a779f0_eth_serdes_chan_setting(&dd->channel[i]);
-		if (ret)
-			return ret;
-	}
-
-	for (i = 0; i < R8A779F0_ETH_SERDES_NUM; i++) {
-		ret = r8a779f0_eth_serdes_chan_speed(&dd->channel[i]);
-		if (ret)
-			return ret;
-	}
-
-	for (i = 0; i < R8A779F0_ETH_SERDES_NUM; i++)
-		r8a779f0_eth_serdes_write32(dd->channel[i].addr, 0x03c0, 0x380, 0x0000);
-	for (i = 0; i < R8A779F0_ETH_SERDES_NUM; i++)
-		r8a779f0_eth_serdes_write32(dd->channel[i].addr, 0x03d0, 0x380, 0x0000);
-
-	for (i = 0; i < R8A779F0_ETH_SERDES_NUM; i++) {
-		ret = r8a779f0_eth_serdes_monitor_linkup(&dd->channel[i]);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
+	return r8a779f0_eth_serdes_reg_wait(&dd->channel[0], 0x0000, 0x380, BIT(15), 0);
 }
 
 static int r8a779f0_eth_serdes_init(struct phy *p)
@@ -289,6 +262,33 @@ static int r8a779f0_eth_serdes_init(struct phy *p)
 	return ret;
 }
 
+static int r8a779f0_eth_serdes_hw_init_late(struct r8a779f0_eth_serdes_channel
+*channel)
+{
+	int ret;
+
+	ret = r8a779f0_eth_serdes_chan_setting(channel);
+	if (ret)
+		return ret;
+
+	ret = r8a779f0_eth_serdes_chan_speed(channel);
+	if (ret)
+		return ret;
+
+	r8a779f0_eth_serdes_write32(channel->addr, 0x03c0, 0x380, 0x0000);
+
+	r8a779f0_eth_serdes_write32(channel->addr, 0x03d0, 0x380, 0x0000);
+
+	return r8a779f0_eth_serdes_monitor_linkup(channel);
+}
+
+static int r8a779f0_eth_serdes_power_on(struct phy *p)
+{
+	struct r8a779f0_eth_serdes_channel *channel = phy_get_drvdata(p);
+
+	return r8a779f0_eth_serdes_hw_init_late(channel);
+}
+
 static int r8a779f0_eth_serdes_set_mode(struct phy *p, enum phy_mode mode,
 					int submode)
 {
@@ -319,6 +319,7 @@ static int r8a779f0_eth_serdes_set_speed(struct phy *p, int speed)
 
 static const struct phy_ops r8a779f0_eth_serdes_ops = {
 	.init		= r8a779f0_eth_serdes_init,
+	.power_on	= r8a779f0_eth_serdes_power_on,
 	.set_mode	= r8a779f0_eth_serdes_set_mode,
 	.set_speed	= r8a779f0_eth_serdes_set_speed,
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
