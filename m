Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AC84CD98FD
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 08:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcntkiPLoEgJ4fSkoaY0G5ydbv660KKeZEDk5skRoUA=; b=YYkfwTl0oEXrvg
	cjhDDK+R6z0YtKJLrdkAyuQ2g5SQgvKUcP7sfpxdMIFfeH9d1fl6EBLdh+m2/0m4afUdhfTijs7X2
	b8ejwV+rFVk+a7PbS4aq88ebPMeae0vcfYyRsfpykjTOgmvu2UqIUCL2PiJ2Jf+XzlbwQw9TzAsCh
	RSNgT4GxbJS7S61d1LdlHIXBmgZxB/CkOGyb82IhMPZbyP2jXJjsXV1Uk9v+n+BUIhfFAcRUGQKjq
	XyGJya+1XZ34h/BaNMce4H2CLvPASDMTKuX7W5uoHU/1tXa1/tQkqlUMqj36/j8JIFmsPq6n80GQS
	Es41/NCa42U7+KnwsvHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUQQ-00FDKS-2w;
	Wed, 11 Oct 2023 08:18:38 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUQN-00FDIF-0P
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 08:18:37 +0000
X-IronPort-AV: E=Sophos;i="6.03,214,1694703600"; 
   d="scan'208";a="182677694"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 11 Oct 2023 17:18:24 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id B8BE9400F79B;
	Wed, 11 Oct 2023 17:18:24 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 2/2] phy: renesas: r8a779f0-ether-serdes: Add .exit() ops
Date: Wed, 11 Oct 2023 17:18:17 +0900
Message-Id: <20231011081817.257113-3-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
References: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_011835_306162_B21DD06A 
X-CRM114-Status: UNSURE (   7.96  )
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

Add r8a779f0_eth_serdes_exit() to clear the initialized flag
for re-initializing this PHY if needed.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index ba1109d6bdd9..fc6e398fa3bf 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -261,6 +261,15 @@ static int r8a779f0_eth_serdes_init(struct phy *p)
 	return ret;
 }
 
+static int r8a779f0_eth_serdes_exit(struct phy *p)
+{
+	struct r8a779f0_eth_serdes_channel *channel = phy_get_drvdata(p);
+
+	channel->dd->initialized = false;
+
+	return 0;
+}
+
 static int r8a779f0_eth_serdes_hw_init_late(struct r8a779f0_eth_serdes_channel
 *channel)
 {
@@ -318,6 +327,7 @@ static int r8a779f0_eth_serdes_set_speed(struct phy *p, int speed)
 
 static const struct phy_ops r8a779f0_eth_serdes_ops = {
 	.init		= r8a779f0_eth_serdes_init,
+	.exit		= r8a779f0_eth_serdes_exit,
 	.power_on	= r8a779f0_eth_serdes_power_on,
 	.set_mode	= r8a779f0_eth_serdes_set_mode,
 	.set_speed	= r8a779f0_eth_serdes_set_speed,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
