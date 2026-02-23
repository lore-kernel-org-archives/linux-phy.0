Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC6BEE98DEE
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 06:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Gb7L4G4SKtt2H++SqmrNaF/Wl2kQ28cBqjSoQ43dXo=; b=K7gNQu1QfIKmAO
	gu3+z13mStImM16ZIizdTfXB4O3R+7dqy8zJZiIfvZF10/ZVW4H0H7kw7HpR8Gw5rNl1bB1fhy2DN
	9ITlYLXVbVUCxteS6HYD4qA5v2LTmG5vds710Yl0nLU7JRXzAg4KEwdCOg86xhaINzdnGCvE8fR/j
	l/umtHj0EATxr8OJlZXjzlioIH8LcFvefwTxi+ezw/P4jpwiRrg5dabcaYAQ5bLifVL58mvltdarO
	L8XB5yX08JXaFbQ6EEUOVoLCaYysbAd4j7Q3p/fcBcsL7wzmVw5jKxSoKX/FYuq2DFF+VLOjFW3ZY
	xyKJhDOFs+DqGkYZA9iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuPfF-0000000HJ2P-3OP8;
	Mon, 23 Feb 2026 06:43:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuPfD-0000000HJ2F-3T2I
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 06:43:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 974D160054;
	Mon, 23 Feb 2026 06:42:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0029DC116C6;
	Mon, 23 Feb 2026 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771828976;
	bh=8gdOvcIbpSurhYkSmKuW57zxvLN42VVLT9xF2NcaQJ4=;
	h=From:To:Cc:Subject:Date:From;
	b=TI1xS5T9t7n0bBF6Vpe+xMIkf87Uk6AxnG5fhBG5UVrujlzbzZlTSY9ffz5tThJ26
	 9mXPXyuKE3Tj+a0DFrdt168bPT0W6t05a0rnpIGCjv+QTdYqYbQ6uvYpAaUcQ+ya/F
	 ZsZ1aE2lQiufC4crgccll5Jk1XoUupNItjS9yN1YxW9p39CNDSph+lquS3rCBcFtnv
	 scsL89DF797Jlbz57jB/jkGEZjljj9qfGHlRlJ46Mqxvkhkv6R6dHzJ1eZGmsTTR/Y
	 nXfEWxQA31bsrsjRdTKHu4gNoCoZjeTfeoaOjnYWU9VBcHOHGiUykFuOKG2QaMWe1d
	 7u+BnQr5rF51w==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Alex Elder <elder@riscstar.com>,
	Ze Huang <huang.ze@linux.dev>,
	spacemit@lists.linux.dev
Subject: [PATCH] phy: move spacemit pcie driver to its subfolder
Date: Mon, 23 Feb 2026 12:12:39 +0530
Message-ID: <20260223064240.386617-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.43.0
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

Commit fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
created spacemit subfolder with usb driver while commit 57e920b92724
("phy: spacemit: Introduce PCIe/combo PHY") added pcie driver in phy
folder. Move latter into spacemit subfolder and rename file to
phy-k1-pcie.c

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/Kconfig                                  | 12 ------------
 drivers/phy/Makefile                                 |  1 -
 drivers/phy/spacemit/Kconfig                         | 12 ++++++++++++
 drivers/phy/spacemit/Makefile                        |  1 +
 .../phy-k1-pcie.c}                                   |  0
 5 files changed, 13 insertions(+), 13 deletions(-)
 rename drivers/phy/{phy-spacemit-k1-pcie.c => spacemit/phy-k1-pcie.c} (100%)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 02467dfd4fb0..c0574e44f0a3 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -134,18 +134,6 @@ config PHY_NXP_PTN3222
 	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
 	  Speed and High Speed.
 
-config PHY_SPACEMIT_K1_PCIE
-	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
-	depends on ARCH_SPACEMIT || COMPILE_TEST
-	depends on COMMON_CLK
-	depends on HAS_IOMEM
-	depends on OF
-	select GENERIC_PHY
-	default ARCH_SPACEMIT
-	help
-	  Enable support for the PCIe and USB 3 combo PHY and two
-	  PCIe-only PHYs used in the SpacemiT K1 SoC.
-
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/apple/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index a648c2e02a83..2773d596e543 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -16,7 +16,6 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
 obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
-obj-$(CONFIG_PHY_SPACEMIT_K1_PCIE)	+= phy-spacemit-k1-pcie.o
 obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
 					   amlogic/	\
 					   apple/	\
diff --git a/drivers/phy/spacemit/Kconfig b/drivers/phy/spacemit/Kconfig
index 0136aee2e8a2..50b0005acf66 100644
--- a/drivers/phy/spacemit/Kconfig
+++ b/drivers/phy/spacemit/Kconfig
@@ -2,6 +2,18 @@
 #
 # Phy drivers for SpacemiT platforms
 #
+config PHY_SPACEMIT_K1_PCIE
+	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on COMMON_CLK
+	depends on HAS_IOMEM
+	depends on OF
+	select GENERIC_PHY
+	default ARCH_SPACEMIT
+	help
+	  Enable support for the PCIe and USB 3 combo PHY and two
+	  PCIe-only PHYs used in the SpacemiT K1 SoC.
+
 config PHY_SPACEMIT_K1_USB2
 	tristate "SpacemiT K1 USB 2.0 PHY support"
 	depends on (ARCH_SPACEMIT || COMPILE_TEST) && OF
diff --git a/drivers/phy/spacemit/Makefile b/drivers/phy/spacemit/Makefile
index fec0b425a948..a821a21d6142 100644
--- a/drivers/phy/spacemit/Makefile
+++ b/drivers/phy/spacemit/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_PHY_SPACEMIT_K1_PCIE)		+= phy-k1-pcie.o
 obj-$(CONFIG_PHY_SPACEMIT_K1_USB2)		+= phy-k1-usb2.o
diff --git a/drivers/phy/phy-spacemit-k1-pcie.c b/drivers/phy/spacemit/phy-k1-pcie.c
similarity index 100%
rename from drivers/phy/phy-spacemit-k1-pcie.c
rename to drivers/phy/spacemit/phy-k1-pcie.c
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
