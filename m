Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D96E98DF0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 06:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o8B55RbfZ4ByfTWTSYv8RRn6hxjIAwGbAcYLLeHH6WU=; b=LOFXEH6OCUy7+S
	R6ogZ1sJtz9UYxFVcZ0lTz0+6O1AR+IE7VYeMMT0mXVgWKIkw3jDszDv2l2iI7rJXvFWB/Pz61UKR
	6aQEFQSYuFOpYMZb4Y/jMEUMCj7bpV1nuXBNtKe8mVy+3PcAaI5HXmEK4wlj5m3GuIAm0fAQ5iusv
	6j/8HeGXitU5seUHieALBgNBhtmaRoBz9LQJVihNe0axQi4KWyB9yvVIFaYjbZs1oH9Vb3p4WgkLU
	D9u6u0zGw4UeghlQoB+yL/XwdMlqnSUb3J0hb0RezGWrZ27ULY8LGHYguQt3cc47BWfNj4X1nR5H2
	SRSV5M/C6+xckpBTx3yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuPtm-0000000HLJS-2Dqc;
	Mon, 23 Feb 2026 06:58:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuPtk-0000000HLJ0-1yVv
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 06:58:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1C5C540931;
	Mon, 23 Feb 2026 06:58:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83174C116C6;
	Mon, 23 Feb 2026 06:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771829908;
	bh=hmuFMZloWqPxrKFsTEWR1BjXz3V7CVbPFbtwRFYXqOs=;
	h=From:To:Cc:Subject:Date:From;
	b=WmcJviEQN7AKR3sGQP06pWCh0aYlbF8Rm3mgZgUs4VMNv3+IfH2d6hvZ8upUeICWl
	 LSHqjtZbBlAJWhdYdCDD9dST0texfA62mcXCPOF6W5J5rGJTSYKPs2r6XlLHODi4LB
	 zzueLeebVRu6LO6Nbac/ICQp+HbeqAtvQVB1cYuQQk73AHasTbpWKRACYLg10Ts2SN
	 jpDx5jj+bRHt+WmETg5Dn0YIY20pZnHM+YpnRh16TxAK/l9YUaKdPjlyyOYCzVfw3d
	 AtHZUkkRgdp9+S7+L9pog1Fz2vCTk98I0JH804K9lucCsp2huHwm7HGhoIQOTtPGS/
	 ku23P0qF6HB4A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] phy: Sort the subsystem Kconfig
Date: Mon, 23 Feb 2026 12:28:19 +0530
Message-ID: <20260223065819.395612-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_225828_561007_C517B6D6 
X-CRM114-Status: GOOD (  12.27  )
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

Kconfig is supposed to be sorted alphabetically, sadly it has bitrotted
so fix that

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/Kconfig | 88 ++++++++++++++++++++++-----------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index c0574e44f0a3..a00266c8256b 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -47,6 +47,26 @@ config GENERIC_PHY_MIPI_DPHY
 	  Provides a number of helpers a core functions for MIPI D-PHY
 	  drivers to us.
 
+config PHY_AIROHA_PCIE
+	tristate "Airoha PCIe-PHY Driver"
+	depends on ARCH_AIROHA || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Say Y here to add support for Airoha PCIe PHY driver.
+	  This driver create the basic PHY instance and provides initialize
+	  callback for PCIe GEN3 port.
+
+config PHY_CAN_TRANSCEIVER
+	tristate "CAN transceiver PHY"
+	select GENERIC_PHY
+	select MULTIPLEXER
+	help
+	  This option enables support for CAN transceivers as a PHY. This
+	  driver provides function for putting the transceivers in various
+	  functional modes using gpios and sets the attribute max link
+	  rate, for CAN drivers.
+
 config PHY_GOOGLE_USB
 	tristate "Google Tensor SoC USB PHY driver"
 	select GENERIC_PHY
@@ -58,6 +78,18 @@ config PHY_GOOGLE_USB
 	  both of which are integrated with the DWC3 USB DRD controller.
 	  This driver currently supports USB high-speed.
 
+config USB_LGM_PHY
+	tristate "INTEL Lightning Mountain USB PHY Driver"
+	depends on USB_SUPPORT
+	depends on X86 || COMPILE_TEST
+	select USB_PHY
+	select REGULATOR
+	select REGULATOR_FIXED_VOLTAGE
+	help
+	  Enable this to support Intel DWC3 PHY USB phy. This driver provides
+	  interface to interact with USB GEN-II and USB 3.x PHY that is part
+	  of the Intel network SOC.
+
 config PHY_LPC18XX_USB_OTG
 	tristate "NXP LPC18xx/43xx SoC USB OTG PHY driver"
 	depends on OF && (ARCH_LPC18XX || COMPILE_TEST)
@@ -69,6 +101,17 @@ config PHY_LPC18XX_USB_OTG
 	  This driver is need for USB0 support on LPC18xx/43xx and takes
 	  care of enabling and clock setup.
 
+config PHY_NXP_PTN3222
+	tristate "NXP PTN3222 1-port eUSB2 to USB2 redriver"
+	depends on I2C
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support NXP PTN3222 1-port eUSB2 to USB2 Redriver.
+	  This redriver performs translation between eUSB2 and USB2 signalling
+	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
+	  Speed and High Speed.
+
 config PHY_PISTACHIO_USB
 	tristate "IMG Pistachio USB2.0 PHY driver"
 	depends on MIPS || COMPILE_TEST
@@ -91,49 +134,6 @@ config PHY_XGENE
 	help
 	  This option enables support for APM X-Gene SoC multi-purpose PHY.
 
-config USB_LGM_PHY
-	tristate "INTEL Lightning Mountain USB PHY Driver"
-	depends on USB_SUPPORT
-	depends on X86 || COMPILE_TEST
-	select USB_PHY
-	select REGULATOR
-	select REGULATOR_FIXED_VOLTAGE
-	help
-	  Enable this to support Intel DWC3 PHY USB phy. This driver provides
-	  interface to interact with USB GEN-II and USB 3.x PHY that is part
-	  of the Intel network SOC.
-
-config PHY_CAN_TRANSCEIVER
-	tristate "CAN transceiver PHY"
-	select GENERIC_PHY
-	select MULTIPLEXER
-	help
-	  This option enables support for CAN transceivers as a PHY. This
-	  driver provides function for putting the transceivers in various
-	  functional modes using gpios and sets the attribute max link
-	  rate, for CAN drivers.
-
-config PHY_AIROHA_PCIE
-	tristate "Airoha PCIe-PHY Driver"
-	depends on ARCH_AIROHA || COMPILE_TEST
-	depends on OF
-	select GENERIC_PHY
-	help
-	  Say Y here to add support for Airoha PCIe PHY driver.
-	  This driver create the basic PHY instance and provides initialize
-	  callback for PCIe GEN3 port.
-
-config PHY_NXP_PTN3222
-	tristate "NXP PTN3222 1-port eUSB2 to USB2 redriver"
-	depends on I2C
-	depends on OF
-	select GENERIC_PHY
-	help
-	  Enable this to support NXP PTN3222 1-port eUSB2 to USB2 Redriver.
-	  This redriver performs translation between eUSB2 and USB2 signalling
-	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
-	  Speed and High Speed.
-
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/apple/Kconfig"
@@ -142,6 +142,7 @@ source "drivers/phy/cadence/Kconfig"
 source "drivers/phy/freescale/Kconfig"
 source "drivers/phy/hisilicon/Kconfig"
 source "drivers/phy/ingenic/Kconfig"
+source "drivers/phy/intel/Kconfig"
 source "drivers/phy/lantiq/Kconfig"
 source "drivers/phy/marvell/Kconfig"
 source "drivers/phy/mediatek/Kconfig"
@@ -163,7 +164,6 @@ source "drivers/phy/starfive/Kconfig"
 source "drivers/phy/sunplus/Kconfig"
 source "drivers/phy/tegra/Kconfig"
 source "drivers/phy/ti/Kconfig"
-source "drivers/phy/intel/Kconfig"
 source "drivers/phy/xilinx/Kconfig"
 
 endmenu
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
