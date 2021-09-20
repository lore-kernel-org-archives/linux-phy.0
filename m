Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EEEC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BB60610CE
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2BB60610CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RS85r4vMAxAliAA1qoVg6njkPN8js/iyeaSMHAVLOZA=; b=fPAhD7OqPA9a9w
	0k+y7ckuZ+eDFtnzfRnp5pXcOqLEUpvnMSzEmluqF1r2GpdVczqzukWZP/7RNy6OWFWQH2XSK++x5
	A9XbEF9SQiVmw6VOiSf/itiS/IPpJrBzeaaPa+Uz/GFnpWTG2b/CYrx6RfsoqcBPNUVXvGMZCI4nA
	sKWCkUj0zyKyGNq1hbg4sSVb9/KQm18pTCsjkO6xtfwLpL137AjNXuOkYJHyDRupfzu7zxP5htN0G
	F2mBMhz3fQIqJRh7YWdjo9e3uHkBdIFRU0Q7ACUl4KciNMr3UY12SQU4Lxs5a5kcPvXUyzowv/AS+
	HNde5Lyb+X2i3BGQiOgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxo-001C10-Mc; Mon, 20 Sep 2021 09:51:52 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxl-001BqC-3w
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131508; x=1663667508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zh46xW6WIb46nT5IfMdGF3myb9A5ac3uBD7/y5IlH4=;
 b=t+TKhWTf1crllySB1jWq09oowIyGo8JMw369kMNISdUo7CCxw0iqf5zy
 NYlRFKgdtPbMd7jRgdy8TotBOA7oHI6YT5m0Gc3FfWEkeHE6tWeN+5qUK
 fkajWaRQeLivz2biO+a4yRdS0QWpNbbmyim2mpyya2bjGNJrp09eI68lV
 OR9puI/vYtCTrCoLnwajgDIdiQM+Q6SN2aok9Jp37v1vgxO/BYeJU8DQX
 Iu08dAgCkVhqZt4fFbyqifZPYxelh1kRXZMsrViRrpVVvx6hpgICwaW5I
 JrcaBflv/zRpYinsQ2BA7EhIYLIN1ysuAPcP8sb72ttXnnOVIsHTNMw2/ w==;
IronPort-SDR: /pUNJDZ9u8EHp+VhzW2N8v/Nu8i8VKaCYZ/fMzGmvQ4hF0QCRyuHyORUNZaJpbZjgzHK0bhHH4
 aX/hs8/8SKG0obkT5wohcQ9rtLu4P1oHH6ehJj/MQTwuzxYh8tTo4d/b4zaFd5zE9MnDWuai2L
 Yhk6gl5Kh0/g2a8LrgUa4nbhSqe4y06zzMchWvsq5SiEfpsyxqCFmQls5nO9CTSABB/g/DZIkj
 bI2jEuA7X94P+2FzCvFifBaQGO/gQcews+ngTV6epC4XQsGz0x+/NXYweia8vQNZIvmgVONK/R
 +kE1cBCuskP1NvaBZFlEQ5wb
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="137192411"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:47 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:45 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 11/12] net: lan966x: add mactable support
Date: Mon, 20 Sep 2021 11:52:17 +0200
Message-ID: <20210920095218.1108151-12-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025149_204149_30A1D0E9 
X-CRM114-Status: GOOD (  18.66  )
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

This patch adds support for MAC table operations like add and forget.
Also add the functionality to read the MAC address from DT, if there is
no MAC set in DT it would use a random one.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../ethernet/microchip/lan966x/lan966x_main.c | 158 ++++++++++++++++++
 .../ethernet/microchip/lan966x/lan966x_main.h |  29 ++++
 2 files changed, 187 insertions(+)

diff --git a/drivers/net/ethernet/microchip/lan966x/lan966x_main.c b/drivers/net/ethernet/microchip/lan966x/lan966x_main.c
index cf147d44b345..53b88bb5b718 100644
--- a/drivers/net/ethernet/microchip/lan966x/lan966x_main.c
+++ b/drivers/net/ethernet/microchip/lan966x/lan966x_main.c
@@ -24,6 +24,8 @@
 
 #define READL_SLEEP_US			10
 #define READL_TIMEOUT_US		100000000
+#define TABLE_UPDATE_SLEEP_US		10
+#define TABLE_UPDATE_TIMEOUT_US		100000
 
 #define IO_RANGES 2
 
@@ -94,6 +96,107 @@ static int lan966x_create_targets(struct platform_device *pdev,
 	return 0;
 }
 
+static int lan966x_mact_get_status(struct lan966x *lan966x)
+{
+	return lan_rd(lan966x, ANA_MACACCESS);
+}
+
+static int lan966x_mact_wait_for_completion(struct lan966x *lan966x)
+{
+	u32 val;
+
+	return readx_poll_timeout(lan966x_mact_get_status,
+		lan966x, val,
+		(ANA_MACACCESS_MAC_TABLE_CMD_GET(val)) ==
+		MACACCESS_CMD_IDLE,
+		TABLE_UPDATE_SLEEP_US, TABLE_UPDATE_TIMEOUT_US);
+}
+
+static void lan966x_mact_select(struct lan966x *lan966x,
+				const unsigned char mac[ETH_ALEN],
+				unsigned int vid)
+{
+	u32 macl = 0, mach = 0;
+
+	/* Set the MAC address to handle and the vlan associated in a format
+	 * understood by the hardware.
+	 */
+	mach |= vid    << 16;
+	mach |= mac[0] << 8;
+	mach |= mac[1] << 0;
+	macl |= mac[2] << 24;
+	macl |= mac[3] << 16;
+	macl |= mac[4] << 8;
+	macl |= mac[5] << 0;
+
+	lan_wr(macl, lan966x, ANA_MACLDATA);
+	lan_wr(mach, lan966x, ANA_MACHDATA);
+}
+
+static int lan966x_mact_learn(struct lan966x *lan966x, int port,
+			      const unsigned char mac[ETH_ALEN],
+			      unsigned int vid,
+			      enum macaccess_entry_type type)
+{
+	lan966x_mact_select(lan966x, mac, vid);
+
+	/* Issue a write command */
+	lan_wr(ANA_MACACCESS_VALID_SET(1) |
+	       ANA_MACACCESS_CHANGE2SW_SET(0) |
+	       ANA_MACACCESS_DEST_IDX_SET(port) |
+	       ANA_MACACCESS_ENTRYTYPE_SET(type) |
+	       ANA_MACACCESS_MAC_TABLE_CMD_SET(MACACCESS_CMD_LEARN),
+	       lan966x, ANA_MACACCESS);
+
+	return lan966x_mact_wait_for_completion(lan966x);
+}
+
+static int lan966x_mact_forget(struct lan966x *lan966x,
+			       const unsigned char mac[ETH_ALEN],
+			       unsigned int vid,
+			       enum macaccess_entry_type type)
+{
+	lan966x_mact_select(lan966x, mac, vid);
+
+	/* Issue a forget command */
+	lan_wr(ANA_MACACCESS_ENTRYTYPE_SET(type) |
+	       ANA_MACACCESS_MAC_TABLE_CMD_SET(MACACCESS_CMD_FORGET),
+	       lan966x, ANA_MACACCESS);
+
+	return lan966x_mact_wait_for_completion(lan966x);
+}
+
+static void lan966x_mact_init(struct lan966x *lan966x)
+{
+	/* Clear the MAC table */
+	lan_wr(MACACCESS_CMD_INIT,
+	       lan966x, ANA_MACACCESS);
+	lan966x_mact_wait_for_completion(lan966x);
+}
+
+static int lan966x_port_set_mac_address(struct net_device *dev, void *p)
+{
+	struct lan966x_port *port = netdev_priv(dev);
+	struct lan966x *lan966x = port->lan966x;
+	const struct sockaddr *addr = p;
+	int ret;
+
+	/* Learn the new net device MAC address in the mac table. */
+	ret = lan966x_mact_learn(lan966x, PGID_CPU, addr->sa_data, port->pvid,
+				 ENTRYTYPE_LOCKED);
+	if (ret)
+		return ret;
+
+	/* Then forget the previous one. */
+	ret = lan966x_mact_forget(lan966x, dev->dev_addr, port->pvid,
+				  ENTRYTYPE_LOCKED);
+	if (ret)
+		return ret;
+
+	ether_addr_copy(dev->dev_addr, addr->sa_data);
+	return ret;
+}
+
 static int lan966x_port_get_phys_port_name(struct net_device *dev,
 					   char *buf, size_t len)
 {
@@ -301,13 +404,50 @@ static int lan966x_change_mtu(struct net_device *dev, int new_mtu)
 	return 0;
 }
 
+static int lan966x_mc_unsync(struct net_device *dev, const unsigned char *addr)
+{
+	struct lan966x_port *port = netdev_priv(dev);
+	struct lan966x *lan966x = port->lan966x;
+
+	return lan966x_mact_forget(lan966x, addr, port->pvid, ENTRYTYPE_LOCKED);
+}
+
+static int lan966x_mc_sync(struct net_device *dev, const unsigned char *addr)
+{
+	struct lan966x_port *port = netdev_priv(dev);
+	struct lan966x *lan966x = port->lan966x;
+
+	return lan966x_mact_learn(lan966x, PGID_CPU, addr, port->pvid,
+				  ENTRYTYPE_LOCKED);
+}
+
+static void lan966x_set_rx_mode(struct net_device *dev)
+{
+	__dev_mc_sync(dev, lan966x_mc_sync, lan966x_mc_unsync);
+}
+
+static int lan966x_port_get_parent_id(struct net_device *dev,
+				      struct netdev_phys_item_id *ppid)
+{
+	struct lan966x_port *lan966x_port = netdev_priv(dev);
+	struct lan966x *lan966x = lan966x_port->lan966x;
+
+	ppid->id_len = sizeof(lan966x->base_mac);
+	memcpy(&ppid->id, &lan966x->base_mac, ppid->id_len);
+
+	return 0;
+}
+
 static const struct net_device_ops lan966x_port_netdev_ops = {
 	.ndo_open			= lan966x_port_open,
 	.ndo_stop			= lan966x_port_stop,
 	.ndo_start_xmit			= lan966x_port_xmit,
 	.ndo_change_rx_flags		= lan966x_change_rx_flags,
 	.ndo_change_mtu			= lan966x_change_mtu,
+	.ndo_set_rx_mode		= lan966x_set_rx_mode,
 	.ndo_get_phys_port_name		= lan966x_port_get_phys_port_name,
+	.ndo_set_mac_address		= lan966x_port_set_mac_address,
+	.ndo_get_port_parent_id		= lan966x_port_get_parent_id,
 };
 
 static int lan966x_ifh_extract(u32 *ifh, size_t pos, size_t length)
@@ -515,6 +655,12 @@ static int lan966x_probe_port(struct lan966x *lan966x, u8 port,
 	dev->netdev_ops = &lan966x_port_netdev_ops;
 	dev->needed_headroom = IFH_LEN * sizeof(u32);
 
+	ether_addr_copy(dev->dev_addr, lan966x->base_mac);
+	dev->dev_addr[ETH_ALEN - 1] += port + 1;
+
+	lan966x_mact_learn(lan966x, PGID_CPU, dev->dev_addr, lan966x_port->pvid,
+			   ENTRYTYPE_LOCKED);
+
 	err = register_netdev(dev);
 	if (err) {
 		dev_err(lan966x->dev, "register_netdev failed\n");
@@ -544,6 +690,9 @@ static void lan966x_init(struct lan966x *lan966x)
 {
 	u32 port, i;
 
+	/* MAC table initialization */
+	lan966x_mact_init(lan966x);
+
 	/* Flush queues */
 	lan_wr(lan_rd(lan966x, QS_XTR_FLUSH) |
 	       GENMASK(1, 0),
@@ -708,6 +857,7 @@ static int lan966x_probe(struct platform_device *pdev)
 {
 	struct fwnode_handle *ports, *portnp;
 	struct lan966x *lan966x;
+	u8 mac_addr[ETH_ALEN];
 	int err, i;
 
 	lan966x = devm_kzalloc(&pdev->dev, sizeof(*lan966x), GFP_KERNEL);
@@ -717,6 +867,14 @@ static int lan966x_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, lan966x);
 	lan966x->dev = &pdev->dev;
 
+	if (device_get_mac_address(&pdev->dev, mac_addr, sizeof(mac_addr))) {
+		ether_addr_copy(lan966x->base_mac, mac_addr);
+	} else {
+		pr_info("MAC addr was not set, use random MAC\n");
+		eth_random_addr(lan966x->base_mac);
+		lan966x->base_mac[5] &= 0xf0;
+	}
+
 	ports = device_get_named_child_node(&pdev->dev, "ethernet-ports");
 	if (!ports) {
 		dev_err(&pdev->dev, "no ethernet-ports child not found\n");
diff --git a/drivers/net/ethernet/microchip/lan966x/lan966x_main.h b/drivers/net/ethernet/microchip/lan966x/lan966x_main.h
index 9ae1582f5cdb..d499f654e316 100644
--- a/drivers/net/ethernet/microchip/lan966x/lan966x_main.h
+++ b/drivers/net/ethernet/microchip/lan966x/lan966x_main.h
@@ -4,6 +4,9 @@
 #define __LAN966X_MAIN_H__
 
 #include <linux/etherdevice.h>
+#include "linux/ethtool.h"
+#include <linux/jiffies.h>
+#include <linux/spinlock.h>
 #include <linux/phy.h>
 #include <linux/phylink.h>
 
@@ -38,6 +41,30 @@
 
 #define CPU_PORT			8
 
+#define LAN966X_MACT_COLUMNS		4
+#define MACACCESS_CMD_IDLE		0
+#define MACACCESS_CMD_LEARN		1
+#define MACACCESS_CMD_FORGET		2
+#define MACACCESS_CMD_AGE		3
+#define MACACCESS_CMD_GET_NEXT		4
+#define MACACCESS_CMD_INIT		5
+#define MACACCESS_CMD_READ		6
+#define MACACCESS_CMD_WRITE		7
+#define MACACCESS_CMD_SYNC_GET_NEXT	8
+
+/* MAC table entry types.
+ * ENTRYTYPE_NORMAL is subject to aging.
+ * ENTRYTYPE_LOCKED is not subject to aging.
+ * ENTRYTYPE_MACv4 is not subject to aging. For IPv4 multicast.
+ * ENTRYTYPE_MACv6 is not subject to aging. For IPv6 multicast.
+ */
+enum macaccess_entry_type {
+	ENTRYTYPE_NORMAL = 0,
+	ENTRYTYPE_LOCKED,
+	ENTRYTYPE_MACV4,
+	ENTRYTYPE_MACV6,
+};
+
 struct lan966x_port;
 
 struct lan966x_frame_info {
@@ -59,6 +86,8 @@ struct lan966x {
 
 	int shared_queue_sz;
 
+	u8 base_mac[ETH_ALEN];
+
 	/* interrupts */
 	int xtr_irq;
 };
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
