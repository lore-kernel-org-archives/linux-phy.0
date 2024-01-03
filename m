Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818AFC47073
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 02:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcililrBKflGDjqxO3vQdH+Afy4wTYQr0+wiPYDxurY=; b=AKH9M+Dz75e+3q
	Rm5I6aaekfCLdto9LCPeD+sKYhFLMjqR4ZPhxsw3dFfko16BCjZwUQix9Cfz/iQ3CQFulVXnF/rXx
	UJxYHoWC73KW+cXxmbRL1j8vfvdMitqWNnzXdIUhXTZpgPoZraT9Jns5osixsD02TvhTljuFupR3D
	bM22G7squzSoSo4ZY6UwYEphLKiYDHVRw+6bE5SohG4+/K7DnbU5TK0jLctSr0vSYS9c1EWuXqa6o
	jkUid+BR1l8K8CfuY6BFJypzMQCWdWxWc7pD2gnGaS8OdxBgRmtCdUpEQXUXxXWb5MN8+JhfeLVSO
	cJTL3OoJ3UYVYonnSB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKrOm-009cnG-0T;
	Wed, 03 Jan 2024 02:54:28 +0000
Received: from out-174.mta0.migadu.com ([2001:41d0:1004:224b::ae])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKrOi-009cle-1k
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 02:54:26 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1704250461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rMt7lZjCiYyD0IatuGzXYEdVsPArKyHXFkUBPDO+8is=;
	b=rzbiOiqonwmAWpfAUA7RmoR8Qvz7aff/QP18gShTRo4K9/ITTdPBOBMGsQzFginEwyNYuR
	GS1Tm+z8D3XBADkl2sA26vGJdGx7xgZz97WKh8donTMzdRViHmO67seZGdknyVH26wGMbr
	RE4OZyJDrXhHqineE2q4jcdvLJACU0Q=
From: Yajun Deng <yajun.deng@linux.dev>
To: davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: andrew@lunn.ch,
	olteanv@gmail.com,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	przemyslaw.kitszel@intel.com,
	rmk+kernel@armlinux.org.uk,
	kabel@kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yajun Deng <yajun.deng@linux.dev>
Subject: [PATCH net-next v2 2/2] net: phy: Introduce is_phy_device()
Date: Wed,  3 Jan 2024 10:53:34 +0800
Message-Id: <20240103025334.541682-3-yajun.deng@linux.dev>
In-Reply-To: <20240103025334.541682-1-yajun.deng@linux.dev>
References: <20240103025334.541682-1-yajun.deng@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_185424_717529_55816D24 
X-CRM114-Status: GOOD (  15.38  )
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

MDIO_DEVICE_FLAG_PHY is the only flag that can be set in the
struct mdio_device. This flag is used to test that if it is a phy
device.

We can test that the type of the device is equal to mdio_bus_phy_type,
so that, the flags in struct mdio_device can be removed.

Introduce is_phy_device(), use it to test that if the device is a phy
device.

Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
---
 drivers/net/phy/mdio_bus.c   | 7 +++----
 drivers/net/phy/phy_device.c | 8 ++++++--
 include/linux/mdio.h         | 3 ---
 include/linux/phy.h          | 1 +
 4 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 69b8ddef9500..a80e6a7cbca5 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -75,7 +75,7 @@ int mdiobus_register_device(struct mdio_device *mdiodev)
 	if (mdiodev->bus->mdio_map[mdiodev->addr])
 		return -EBUSY;
 
-	if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY) {
+	if (is_phy_device(&mdiodev->dev)) {
 		err = mdiobus_register_gpiod(mdiodev);
 		if (err)
 			return err;
@@ -125,7 +125,7 @@ struct phy_device *mdiobus_get_phy(struct mii_bus *bus, int addr)
 	if (!mdiodev)
 		return NULL;
 
-	if (!(mdiodev->flags & MDIO_DEVICE_FLAG_PHY))
+	if (!is_phy_device(&mdiodev->dev))
 		return NULL;
 
 	return container_of(mdiodev, struct phy_device, mdio);
@@ -1345,8 +1345,7 @@ static int mdio_bus_match(struct device *dev, struct device_driver *drv)
 	struct mdio_device *mdio = to_mdio_device(dev);
 
 	/* Both the driver and device must type-match */
-	if (is_phy_driver(&mdiodrv->driver) ==
-	    !(mdio->flags & MDIO_DEVICE_FLAG_PHY))
+	if (is_phy_driver(&mdiodrv->driver) != is_phy_device(&mdio->dev))
 		return 0;
 
 	if (of_driver_match_device(dev, drv))
diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 732cfec293dd..1e19956e9e8d 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -640,6 +640,11 @@ static int phy_request_driver_module(struct phy_device *dev, u32 phy_id)
 	return 0;
 }
 
+bool is_phy_device(struct device *dev)
+{
+	return dev->type == &mdio_bus_phy_type;
+}
+
 struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
 				     bool is_c45,
 				     struct phy_c45_device_ids *c45_ids)
@@ -660,7 +665,6 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, u32 phy_id,
 	mdiodev->bus = bus;
 	mdiodev->bus_match = phy_bus_match;
 	mdiodev->addr = addr;
-	mdiodev->flags = MDIO_DEVICE_FLAG_PHY;
 	mdiodev->device_free = phy_mdio_device_free;
 	mdiodev->device_remove = phy_mdio_device_remove;
 	mdiodev->reset_state = -1;
@@ -3266,7 +3270,7 @@ struct phy_device *fwnode_phy_find_device(struct fwnode_handle *phy_fwnode)
 	if (!mdiodev)
 		return NULL;
 
-	if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY)
+	if (is_phy_device(&mdiodev->dev))
 		return to_phy_device(&mdiodev->dev);
 
 	put_device(&mdiodev->dev);
diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index 852f838f52f5..8364e2d0c269 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -37,7 +37,6 @@ struct mdio_device {
 
 	/* Bus address of the MDIO device (0-31) */
 	int addr;
-	int flags;
 	int reset_state;
 	struct gpio_desc *reset_gpio;
 	struct reset_control *reset_ctrl;
@@ -50,8 +49,6 @@ static inline struct mdio_device *to_mdio_device(const struct device *dev)
 	return container_of(dev, struct mdio_device, dev);
 }
 
-#define MDIO_DEVICE_FLAG_PHY		1
-
 /* struct mdio_driver: Generic MDIO driver */
 struct mdio_driver {
 	struct device_driver driver;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 603c440f09f6..7d10b44a475b 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -2156,5 +2156,6 @@ module_exit(phy_module_exit)
 bool phy_driver_is_genphy(struct phy_device *phydev);
 bool phy_driver_is_genphy_10g(struct phy_device *phydev);
 bool is_phy_driver(struct device_driver *driver);
+bool is_phy_device(struct device *dev);
 
 #endif /* __PHY_H */
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
