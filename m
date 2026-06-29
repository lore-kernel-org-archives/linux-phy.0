Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 437DFC43602
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 13:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BU63zkYhhfFQ0BE6YBjtOa7cxP1TAbg4hhDWtLhDQmE=; b=nCQ87BiWMdBS/g
	DTiUVPYCl8eQnBX8MjVUyr3axflumqdVYB9zqiOM2v3nzKYrojlVwWun43DovfBVKZhax+hSRR18Y
	61g57f0emzPOwc2M2+oyTrzt0KG7KOe7DPi9hfXcRgns5yZ5Pq8DIKg0vU27w0HRdZQ+Rg6gTEzQ0
	A1DU84fCBcMdSsThSIeFHq5YHqUO9rNInEJ9Cj+jlbPRhKEPpJlURQE3ngtEvpWI+EABnWWlqTn2b
	vxJ2Z8Kb/ZC3/y+FlV7Qxnz5K7DHt+WXndz1/4QVwVPZUV0pS3vS62IROD3DqOC/w6Cot0jbX5+io
	BJbhu6hhWHixVlAykYzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weC1h-0000000EkZo-06Wh;
	Mon, 29 Jun 2026 13:27:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weC1f-0000000EkXq-1itL;
	Mon, 29 Jun 2026 13:27:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D4D8A60008;
	Mon, 29 Jun 2026 13:27:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECD421F00A3A;
	Mon, 29 Jun 2026 13:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782739670;
	bh=TSJ5H7bOOMhyz7FEoPXZ7o9gnbiAA9g1/+KyzvH3xDI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=frCMq+90h/OOkRt3VRllbgW3boGE8WzpIkP6+O9NYpBXkdj0qYzG++XaK7GJMpAGD
	 t5ScqajVzKDdc9QUmdl5re7CGxfTCnwyyyVsDQCQFmok9I/fhirTzPrcrodaFyUQL8
	 AZs3SrUwykM4Z/z4AX6z8O3sjPR3oLjDjs0Ah+JtckiqquvFAkl9DnIBTe34eh94Fi
	 LDsahVUUuCuZwGmrB98x6WbJqA4xl08HihuVeRXdM1MaGOUIebzbGow9y3/cMvd5zG
	 9fVZt5FPz0wFhjpVOnRv94Jk5QSvb/i2t4FHYbQH7gTgFlHNh3aBtXVVCN3r0AbKah
	 WqU08S/XD1bGA==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-gpio@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Bartosz Golaszewski <brgl@kernel.org>,
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
	Linus Walleij <linusw@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-m68k@lists.linux-m68k.org,
	linux-mips@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-media@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 09/13] phy: replace linux/gpio.h inclusions
Date: Mon, 29 Jun 2026 15:26:29 +0200
Message-Id: <20260629132633.1300009-10-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260629132633.1300009-1-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c | 2 +-
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 drivers/phy/ti/phy-j721e-wiz.c            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
index 8473fa574529..d9c06129ed23 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
@@ -3,7 +3,7 @@
 
 #include <linux/delay.h>
 #include <linux/extcon-provider.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/gpio/consumer.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index fba35510d88c..d0d736a30d08 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -11,7 +11,7 @@
 #include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 7531a8a04912..2233babc0078 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -11,7 +11,7 @@
 #include <linux/slab.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/gpio/consumer.h>
 #include <linux/io.h>
 #include <linux/module.h>
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
