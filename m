Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A032BF41818
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 17:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtX1I8wD/mBNNS7UsZJ1e9ZPqUsH/D86ZQiRTJUZFgw=; b=ZoBCvq8Nq09qSq
	0bHhrR80S52ZzWaamP3IyUYSJYjat2BrI0bQSFLYMtvPbjKDCAODtv37GuxKPkkP+Pofpfb3ZkgTd
	nS6Su/3R2TNajUXwv62yGo9Zg1JfmFemglt9AYoC0ZTmGd1jauMFAFjx4xLQLqjN8DwX0XozG4ITL
	ZeXBKdKTRBjfBhBn+EBPXJQBpr9Gd+4U8XxJTcycU3w8rte48hwn9tH/Ag9h/87UyrG7m5yhbsBd3
	cWoGbtVcqsYdh3Jk5sfQxag/pjUMW/We+9lkO/0N9bV7GZiwZKhPcShd8pV4ytNWEAcwKr/5yTF66
	tUViEwO8Zd2WZd71G0AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze13-00000007mh1-1WoN;
	Mon, 09 Mar 2026 17:03:37 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze10-00000007mg4-30hV
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 17:03:35 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso9595165e9.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 10:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773075813; x=1773680613; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dJ/4zcixQ1wTiiNvslj4zPcsegflsK4bmRP3vKhsaT8=;
        b=PiuwdlQbgmNlq/I9viHSJYtJThqSu4b0j+kAohp6pSLxeLu5sHvCGatqSaBTfil0Fs
         YSnYhsphO6LtrMNJn4boPWygCQNfKkuFvXOSaYxGbhZkuFLQF8ts0Ieudb8DGZk30sMG
         bGMq1yuqT8MnamrJZ8GPc/lpm/+K0dOGdgaJQggs0ZcmBeWZevpOaKyK40Ce0UV1pcx0
         hRdFNspI29GLgkJuNsQU48TlsdKMcHQ2d72OEf7v+zvbMPvJnB8nlyw7VJTjWYmamzmK
         ytzJPeDUaUZGpZdAIdzphYV8fZi5H2VaTxn4ExcFswQs7jA6Vmd9c6FNmGldOp5kDA65
         toyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773075813; x=1773680613;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJ/4zcixQ1wTiiNvslj4zPcsegflsK4bmRP3vKhsaT8=;
        b=KQLs65oX6HwjMbJsYZzMn5LGUfs/d2qy7KTPXJrHPwM0f3Qd4kGw8IwujtLgT60BbJ
         D92NAbgrRoPNstn5hfv7lGt2fyvGQfwclFKIuHV9134fOMUNFKLTl41Lqr5FNeMBEYi9
         9SfCPhDa6uBugUDAqpSxV3JQJgYauiJwnJIB4arj0l9HwT3+ifx+gU3kVobMRq0jO9Qm
         JZvmcElF00bOQvaa4nvyWHisMXwXkRT+Jh20miDJXyJU86YREmgGwfVipnVFW+Gdh6+X
         4vAWIpjpPtnPu+/8gV3AfHDRCbfZQFGcmYdsj9gXPoPaYZhJrC5c7Zbk1P+xf9rhRipw
         KQgg==
X-Forwarded-Encrypted: i=1; AJvYcCVklnUrWeMiubwYbdTBiNE9jMmnT8YOG9hY6FpGlXaGnsEsvI+y3R16UU871+ko1PNV22KpvliASe4=@lists.infradead.org
X-Gm-Message-State: AOJu0YztmkoTGrxu44w8eFVY5wrC3C8QR/tSM3aPvQtGlCXU+z4ocEqI
	fSqHXMD2pJOoulySHup6U/0HlBUzefPjc9kp4mOXjmnLSGnn+E2uR3RG
X-Gm-Gg: ATEYQzzDt979W98HKFa+xCYjLrq+Tirelpx9srZecrYQZJk+sNFK1WKQ7SenSQbTGie
	zGDjIIJCixQhunstlY91J+j6zUNUJp7o1NfFEqwVgTmyuP8/LF9kI3HbdkWq1f3dOrM26ht+v49
	DfjBko1G5AeREPveykZMES0wYF26zUrr5ljDbDdE1zU1LRmvCJSHhpZIU1drMdDG4/T9WbaE85j
	TN/XTMf/wKCSaaY9RJPwCBcJzs4WZWiixNFXvdOOp0akXzqKtYDx6yBh/2aBdb8kbXKGbdOd5TM
	wWYecR0c448j/KzO4wFltgQa8JfurOi52dF6kputBmlCx+e8OIiqJJHp/NC4UYLqW588i8qja/w
	jCGflaPvJmaU4hg2T9XrQ1bzzqBEsJpCXG64AsHYLzoALmOSgoYpqwgq4y0wO2CDBPx+YbMpVUr
	fAn3a/Gk9O+TXW8MRi0ghzuJL83RAl0VTGYnLYLJVzp3qEgsdumfV+p1aTfmo38Wn2z6+IV9rAF
	8A1FH22vjxXRHKTELu2X9bmaDhN4BRfEjO7iT6Kmo6i6AQ/aQnxXfBByWq7u98=
X-Received: by 2002:a05:600c:8708:b0:485:3c8f:e4d3 with SMTP id 5b1f17b1804b1-4853c8fe6a0mr44130765e9.13.1773075812378;
        Mon, 09 Mar 2026 10:03:32 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d? (p200300ea8f46ce0005f97f3c5f9a2a3d.dip0.t-ipconnect.de. [2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48533d6151esm52252415e9.10.2026.03.09.10.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 10:03:31 -0700 (PDT)
Message-ID: <c6dbf9b3-3ca0-434b-ad3a-71fe602ab809@gmail.com>
Date: Mon, 9 Mar 2026 18:03:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 net-next 2/5] net: phy: make mdio_device.c part of libphy
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
Content-Language: en-US
In-Reply-To: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_100334_811113_1ABB9025 
X-CRM114-Status: GOOD (  19.21  )
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

This patch
- makes mdio_device.c part of libphy
- makes mdio_device_(un)register_reset() static
- moves mdiobus_(un)register_device() from mdio_bus.c to mdio_device.c,
  stops exporting both functions and makes them private to phylib

This further decouples the MDIO consumer functionality from libphy.

Note: This makes MDIO driver registration part of phylib, therefore
      adjust Kconfig dependencies where needed.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- add needed Kconfig dependency changes
---
 drivers/clk/qcom/Kconfig          |  2 +-
 drivers/net/phy/Makefile          |  6 ++---
 drivers/net/phy/mdio-private.h    | 11 ---------
 drivers/net/phy/mdio_bus.c        | 36 ----------------------------
 drivers/net/phy/mdio_device.c     | 39 ++++++++++++++++++++++++++++---
 drivers/net/phy/phylib-internal.h |  4 ++++
 drivers/phy/broadcom/Kconfig      |  4 ++--
 include/linux/mdio.h              |  2 --
 8 files changed, 46 insertions(+), 58 deletions(-)
 delete mode 100644 drivers/net/phy/mdio-private.h

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index a8a86ea6bb7..a277c434d64 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -392,7 +392,7 @@ config IPQ_NSSCC_9574
 
 config IPQ_NSSCC_QCA8K
 	tristate "QCA8K(QCA8386 or QCA8084) NSS Clock Controller"
-	depends on MDIO_BUS
+	depends on PHYLIB
 	help
 	  Support for NSS(Network SubSystem) clock controller on
 	  qca8386/qca8084 chip.
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 3a34917adea..8d262b4e2be 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -3,8 +3,8 @@
 
 libphy-y			:= phy.o phy-c45.o phy-core.o phy_device.o \
 				   linkmode.o phy_link_topology.o \
-				   phy_caps.o mdio_bus_provider.o phy_port.o
-mdio-bus-y			+= mdio_bus.o mdio_device.o
+				   phy_caps.o mdio_bus_provider.o phy_port.o \
+				   mdio_device.o
 
 ifdef CONFIG_PHYLIB
 # built-in whenever PHYLIB is built-in or module
@@ -15,7 +15,7 @@ libphy-$(CONFIG_SWPHY)		+= swphy.o
 libphy-$(CONFIG_LED_TRIGGER_PHY)	+= phy_led_triggers.o
 libphy-$(CONFIG_OPEN_ALLIANCE_HELPERS) += open_alliance_helpers.o
 
-obj-$(CONFIG_MDIO_BUS)		+= mdio-bus.o
+obj-$(CONFIG_MDIO_BUS)		+= mdio_bus.o
 obj-$(CONFIG_PHYLINK)		+= phylink.o
 obj-$(CONFIG_PHYLIB)		+= libphy.o
 obj-$(CONFIG_PHYLIB)		+= mdio_devres.o
diff --git a/drivers/net/phy/mdio-private.h b/drivers/net/phy/mdio-private.h
deleted file mode 100644
index 8bc6d9088af..00000000000
--- a/drivers/net/phy/mdio-private.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-#ifndef __MDIO_PRIVATE_H
-#define __MDIO_PRIVATE_H
-
-/* MDIO internal helpers
- */
-
-int mdio_device_register_reset(struct mdio_device *mdiodev);
-void mdio_device_unregister_reset(struct mdio_device *mdiodev);
-
-#endif /* __MDIO_PRIVATE_H */
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 48c0447e6a8..a30c679feec 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -29,46 +29,10 @@
 #include <linux/string.h>
 #include <linux/uaccess.h>
 #include <linux/unistd.h>
-#include "mdio-private.h"
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/mdio.h>
 
-int mdiobus_register_device(struct mdio_device *mdiodev)
-{
-	int err;
-
-	if (mdiodev->bus->mdio_map[mdiodev->addr])
-		return -EBUSY;
-
-	if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY) {
-		err = mdio_device_register_reset(mdiodev);
-		if (err)
-			return err;
-
-		/* Assert the reset signal */
-		mdio_device_reset(mdiodev, 1);
-	}
-
-	mdiodev->bus->mdio_map[mdiodev->addr] = mdiodev;
-
-	return 0;
-}
-EXPORT_SYMBOL(mdiobus_register_device);
-
-int mdiobus_unregister_device(struct mdio_device *mdiodev)
-{
-	if (mdiodev->bus->mdio_map[mdiodev->addr] != mdiodev)
-		return -EINVAL;
-
-	mdio_device_unregister_reset(mdiodev);
-
-	mdiodev->bus->mdio_map[mdiodev->addr] = NULL;
-
-	return 0;
-}
-EXPORT_SYMBOL(mdiobus_unregister_device);
-
 static struct mdio_device *mdiobus_find_device(struct mii_bus *bus, int addr)
 {
 	bool addr_valid = addr >= 0 && addr < ARRAY_SIZE(bus->mdio_map);
diff --git a/drivers/net/phy/mdio_device.c b/drivers/net/phy/mdio_device.c
index da4fb7484c7..56080d3d2d2 100644
--- a/drivers/net/phy/mdio_device.c
+++ b/drivers/net/phy/mdio_device.c
@@ -22,7 +22,7 @@
 #include <linux/string.h>
 #include <linux/unistd.h>
 #include <linux/property.h>
-#include "mdio-private.h"
+#include "phylib-internal.h"
 
 /**
  * mdio_device_register_reset - Read and initialize the reset properties of
@@ -31,7 +31,7 @@
  *
  * Return: Zero if successful, negative error code on failure
  */
-int mdio_device_register_reset(struct mdio_device *mdiodev)
+static int mdio_device_register_reset(struct mdio_device *mdiodev)
 {
 	struct reset_control *reset;
 
@@ -67,7 +67,7 @@ int mdio_device_register_reset(struct mdio_device *mdiodev)
  *				  an mdio device
  * @mdiodev: mdio_device structure
  */
-void mdio_device_unregister_reset(struct mdio_device *mdiodev)
+static void mdio_device_unregister_reset(struct mdio_device *mdiodev)
 {
 	gpiod_put(mdiodev->reset_gpio);
 	mdiodev->reset_gpio = NULL;
@@ -189,6 +189,39 @@ void mdio_device_remove(struct mdio_device *mdiodev)
 }
 EXPORT_SYMBOL(mdio_device_remove);
 
+int mdiobus_register_device(struct mdio_device *mdiodev)
+{
+	int err;
+
+	if (mdiodev->bus->mdio_map[mdiodev->addr])
+		return -EBUSY;
+
+	if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY) {
+		err = mdio_device_register_reset(mdiodev);
+		if (err)
+			return err;
+
+		/* Assert the reset signal */
+		mdio_device_reset(mdiodev, 1);
+	}
+
+	mdiodev->bus->mdio_map[mdiodev->addr] = mdiodev;
+
+	return 0;
+}
+
+int mdiobus_unregister_device(struct mdio_device *mdiodev)
+{
+	if (mdiodev->bus->mdio_map[mdiodev->addr] != mdiodev)
+		return -EINVAL;
+
+	mdio_device_unregister_reset(mdiodev);
+
+	mdiodev->bus->mdio_map[mdiodev->addr] = NULL;
+
+	return 0;
+}
+
 /**
  * mdio_probe - probe an MDIO device
  * @dev: device to probe
diff --git a/drivers/net/phy/phylib-internal.h b/drivers/net/phy/phylib-internal.h
index dc9592c6bb8..bfb1aa82386 100644
--- a/drivers/net/phy/phylib-internal.h
+++ b/drivers/net/phy/phylib-internal.h
@@ -6,6 +6,7 @@
 #ifndef __PHYLIB_INTERNAL_H
 #define __PHYLIB_INTERNAL_H
 
+struct mdio_device;
 struct phy_device;
 
 /*
@@ -20,6 +21,9 @@ void of_set_phy_timing_role(struct phy_device *phydev);
 int phy_speed_down_core(struct phy_device *phydev);
 void phy_check_downshift(struct phy_device *phydev);
 
+int mdiobus_register_device(struct mdio_device *mdiodev);
+int mdiobus_unregister_device(struct mdio_device *mdiodev);
+
 int genphy_c45_read_eee_adv(struct phy_device *phydev, unsigned long *adv);
 
 #endif /* __PHYLIB_INTERNAL_H */
diff --git a/drivers/phy/broadcom/Kconfig b/drivers/phy/broadcom/Kconfig
index 1d89a2fd9b7..46371a8940d 100644
--- a/drivers/phy/broadcom/Kconfig
+++ b/drivers/phy/broadcom/Kconfig
@@ -52,7 +52,7 @@ config PHY_BCM_NS_USB3
 	tristate "Broadcom Northstar USB 3.0 PHY Driver"
 	depends on ARCH_BCM_IPROC || COMPILE_TEST
 	depends on HAS_IOMEM && OF
-	depends on MDIO_BUS
+	depends on PHYLIB
 	select GENERIC_PHY
 	help
 	  Enable this to support Broadcom USB 3.0 PHY connected to the USB
@@ -60,7 +60,7 @@ config PHY_BCM_NS_USB3
 
 config PHY_NS2_PCIE
 	tristate "Broadcom Northstar2 PCIe PHY driver"
-	depends on (OF && MDIO_BUS_MUX_BCM_IPROC) || (COMPILE_TEST && MDIO_BUS)
+	depends on (OF && MDIO_BUS_MUX_BCM_IPROC) || (COMPILE_TEST && PHYLIB)
 	select GENERIC_PHY
 	default ARCH_BCM_IPROC
 	help
diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index 5d1203b9af2..f4f9d960944 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -688,8 +688,6 @@ static inline int mdiodev_c45_write(struct mdio_device *mdiodev, u32 devad,
 				 val);
 }
 
-int mdiobus_register_device(struct mdio_device *mdiodev);
-int mdiobus_unregister_device(struct mdio_device *mdiodev);
 bool mdiobus_is_registered_device(struct mii_bus *bus, int addr);
 struct phy_device *mdiobus_get_phy(struct mii_bus *bus, int addr);
 
-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
