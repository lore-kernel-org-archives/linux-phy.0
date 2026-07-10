Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2065BC44506
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgQajj/F//KaMvOLGoYf3iGHaTk4yCKWuq04fWOSY7U=; b=Fok0dTZDV5lAEE
	gP61oQXDyPCd3vAth4r2OOR9Jwkq5ufXzNgmdGkgLpDQcgZYy/cdJ5VEhG3dQ0cvT3WPovz3kdiKo
	YoX4s5iED01W3HClOoJs4TDuov23b/26AZIQwcoOugKwo1KQxCvHmG1gpEQv9di2lgyg1GBoSLafq
	68B3eZ2s3Pyo0lXD8QiULf5Y1bR59LOfR8jn9qd7yDz8lgRkQSBUGEnc1uEpMgUeyA7GuwbWq/rkC
	nUSQ3sFzngChSGa3I5Ch8XzHyxuvdRTCtv9Hgsa4nvdiRjwqfVou0mOEZAfsmLjEwbp7Sb0HR2EyW
	qeUrmooCGSxWZy1TAAig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIeH-00000005nsJ-3G1k;
	Fri, 10 Jul 2026 21:20:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIeG-00000005nq7-063H;
	Fri, 10 Jul 2026 21:20:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7552B601D9;
	Fri, 10 Jul 2026 21:20:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 446B11F00A3A;
	Fri, 10 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718439;
	bh=tdLIqalcMEOZBg/bM0yU/0NBuCbKNme7aUYy7Hid3os=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=lut8zTASosxrlt8T45mCREPv2M5skq9tHOje83agiXohT41XM5hekM1jQa/eC/3yW
	 DUrVs8k68G3IvmdRPiQOowYWXXInx+UGLYl5iyVKwp4317WdIzMHPuHnk++MlNVi/4
	 vAsQzL+2dBPB8RNWmvidNh2Fvk4hkFtlaPIYF6HHQIVZYNT7mU4jFdGoCxIbiSSCOd
	 yoizbR5yWKLgVPWkN13Xj7BIs9FHwhSQCAhIvSbReX6eaLsXu4HsGxxPlNFIS+WFy3
	 mhAsI/jnVpCd8l509/+CyXuJam+TPzGa0evoMYIGu8monMeKjWeZoUh+pxP2Ofo/C8
	 m2LbsoisN+7lg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-gpio@vger.kernel.org,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Greg Ungerer <gerg@linux-m68k.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-m68k@lists.linux-m68k.org,
	linux-mips@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v2 05/10] mfd: replace linux/gpio.h inclusions
Date: Fri, 10 Jul 2026 23:19:50 +0200
Message-Id: <20260710211954.1373336-6-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260710211954.1373336-1-arnd@kernel.org>
References: <20260710211954.1373336-1-arnd@kernel.org>
MIME-Version: 1.0
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

From: Arnd Bergmann <arnd@arndb.de>

linux/gpio.h should no longer be used, convert these instead to
either linux/gpio/consumer.h or linux/gpio/legacy.h as needed.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/mfd/aat2870-core.c        | 2 +-
 drivers/mfd/arizona-irq.c         | 2 +-
 drivers/mfd/lp3943.c              | 2 +-
 drivers/mfd/sm501.c               | 2 +-
 drivers/mfd/tps6105x.c            | 2 +-
 drivers/mfd/tps65911-comparator.c | 2 +-
 drivers/mfd/wm8994-irq.c          | 2 +-
 include/linux/mfd/lp3943.h        | 2 +-
 include/linux/mfd/ti-lmu.h        | 1 -
 include/linux/mfd/tps65910.h      | 2 +-
 include/linux/mfd/ucb1x00.h       | 2 +-
 11 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/mfd/aat2870-core.c b/drivers/mfd/aat2870-core.c
index 34d66ba9646a..0d56cd6fbc6a 100644
--- a/drivers/mfd/aat2870-core.c
+++ b/drivers/mfd/aat2870-core.c
@@ -13,7 +13,7 @@
 #include <linux/uaccess.h>
 #include <linux/i2c.h>
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/legacy.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/aat2870.h>
 #include <linux/regulator/machine.h>
diff --git a/drivers/mfd/arizona-irq.c b/drivers/mfd/arizona-irq.c
index 544016d420fe..14f9cb2c4b67 100644
--- a/drivers/mfd/arizona-irq.c
+++ b/drivers/mfd/arizona-irq.c
@@ -8,7 +8,7 @@
  */
 
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/legacy.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/irqdomain.h>
diff --git a/drivers/mfd/lp3943.c b/drivers/mfd/lp3943.c
index 6764553147e4..1918b5c7a5e7 100644
--- a/drivers/mfd/lp3943.c
+++ b/drivers/mfd/lp3943.c
@@ -28,7 +28,7 @@
  */
 
 #include <linux/err.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/lp3943.h>
diff --git a/drivers/mfd/sm501.c b/drivers/mfd/sm501.c
index b5bda477ebfc..9d5bb67e8084 100644
--- a/drivers/mfd/sm501.c
+++ b/drivers/mfd/sm501.c
@@ -35,7 +35,7 @@ struct sm501_device {
 struct sm501_gpio;
 
 #ifdef CONFIG_MFD_SM501_GPIO
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 struct sm501_gpio_chip {
 	struct gpio_chip	gpio;
diff --git a/drivers/mfd/tps6105x.c b/drivers/mfd/tps6105x.c
index e2f6858d101e..b11cd2c03311 100644
--- a/drivers/mfd/tps6105x.c
+++ b/drivers/mfd/tps6105x.c
@@ -16,7 +16,7 @@
 #include <linux/init.h>
 #include <linux/i2c.h>
 #include <linux/regmap.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/spinlock.h>
 #include <linux/slab.h>
 #include <linux/err.h>
diff --git a/drivers/mfd/tps65911-comparator.c b/drivers/mfd/tps65911-comparator.c
index 7098712ea008..cc8545a972bc 100644
--- a/drivers/mfd/tps65911-comparator.c
+++ b/drivers/mfd/tps65911-comparator.c
@@ -14,7 +14,7 @@
 #include <linux/err.h>
 #include <linux/platform_device.h>
 #include <linux/debugfs.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mfd/tps65910.h>
 
 #define COMP1					0
diff --git a/drivers/mfd/wm8994-irq.c b/drivers/mfd/wm8994-irq.c
index a46cea948763..a15483489b9d 100644
--- a/drivers/mfd/wm8994-irq.c
+++ b/drivers/mfd/wm8994-irq.c
@@ -9,7 +9,7 @@
 
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/irq.h>
 #include <linux/mfd/core.h>
diff --git a/include/linux/mfd/lp3943.h b/include/linux/mfd/lp3943.h
index 402f01078fcc..5d2d172d3598 100644
--- a/include/linux/mfd/lp3943.h
+++ b/include/linux/mfd/lp3943.h
@@ -10,7 +10,7 @@
 #ifndef __MFD_LP3943_H__
 #define __MFD_LP3943_H__
 
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/regmap.h>
 
 /* Registers */
diff --git a/include/linux/mfd/ti-lmu.h b/include/linux/mfd/ti-lmu.h
index 0bc0e8199798..2089ec5124e8 100644
--- a/include/linux/mfd/ti-lmu.h
+++ b/include/linux/mfd/ti-lmu.h
@@ -10,7 +10,6 @@
 #ifndef __MFD_TI_LMU_H__
 #define __MFD_TI_LMU_H__
 
-#include <linux/gpio.h>
 #include <linux/notifier.h>
 #include <linux/regmap.h>
 #include <linux/gpio/consumer.h>
diff --git a/include/linux/mfd/tps65910.h b/include/linux/mfd/tps65910.h
index f67ef0a4e041..3813fc9c2b55 100644
--- a/include/linux/mfd/tps65910.h
+++ b/include/linux/mfd/tps65910.h
@@ -12,7 +12,7 @@
 #ifndef __LINUX_MFD_TPS65910_H
 #define __LINUX_MFD_TPS65910_H
 
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/regmap.h>
 
 /* TPS chip id list */
diff --git a/include/linux/mfd/ucb1x00.h b/include/linux/mfd/ucb1x00.h
index ede237384723..4ad54e22ed33 100644
--- a/include/linux/mfd/ucb1x00.h
+++ b/include/linux/mfd/ucb1x00.h
@@ -9,7 +9,7 @@
 
 #include <linux/device.h>
 #include <linux/mfd/mcp.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
 #include <linux/mutex.h>
 
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
