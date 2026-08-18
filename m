Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02A73C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gR7o9hXTAxHBxvAJpiFXgYNWGta0gKsGWpjjL40+hbI=; b=NJGrx+eycVSDLv
	H+F/cdDTtIONM2p33TfckdOwfUbyd3Ak3SX7ZVwLbGNsfcy3w/jjX7BxHua2rSkV4tIc0bsD0qTi3
	Zz2YhF+ZsJCODgUIuihb06Za5MX+W5PXMz9sor9+mEBKacTd3iBeSaHJM3BPrD7IxiwDp9PyWTA7z
	IdvwK3Fqo0RKmV53Itb7jezWkToad9rGTlR8QY5b2+U4s10JeKyKbynYFLsLNNwm6wEUFbjJ6rCIa
	yUNsLBmzzSjVAEAOzES3L6CO4onQNWGvgqpYOH2YjdjNrco60xUyKh9zRWPLNKCy5RMo70RMc7EUO
	IgZbfexxbZstBpDH8mNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGWI-00000007g0D-2JwG;
	Tue, 18 Aug 2026 09:54:10 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGWG-00000007fz6-2x2D
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:54:09 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4954d29264cso22147385e9.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787046846; x=1787651646; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=FscDInh7KKRFq1aEsYnmjA7ZMfxSiv5sNertgxwbW8A=;
        b=AH+CQwucMn4r89gX37tg2AQAMx1w36O9r9d/HaP5A+oLw+sGtgpJI44BVCs2qV26VI
         CuBZgSNKrl62JN6cc37ekfH9bhlOeow9Y+GS8x6BdTVKzVQlpNjBbpm2t/5w6ymg07Bt
         7iBJxpWqkOqC8GojxjhKEBOQTuogkQ/swGjzHzpqtGWVsO1I9PaL8UKuqzYOIamj5vRH
         Bj/6jCYv/ctwNJYYer+VNtX6UyYGe2ys0GOIDgGcAG1NKCTzokcTbh06m67RAQlg/dq9
         aCK7dtiVaJUiHbu2rmnXZQ966jJMpjR7uAR/LlWmXyT3nK1Uavh6kXNtyRhEr3FTdZJx
         VfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787046846; x=1787651646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=FscDInh7KKRFq1aEsYnmjA7ZMfxSiv5sNertgxwbW8A=;
        b=Nz+Q8fJ3c1a+vBGXBTMFclZBv70mURp4sE+2+imbuHkQZHRgExXGVAxp/DTzV5LOw2
         oTJ5FZ95R/uq8skjnLgdow0gqxTneeb4U8gJKk/4RP3zRPHjXtxxuHJKKe8YAF8YDjNs
         3mVyI/wUKE/jLmFmFZ4KXXQxVzyUw9rmI5Wwt8mwycQRP4Lw3DelnEUUlhhvjbdXGHQL
         ohzpj3SAae5eNiSexut8mMWxciJEW6UCTRDmy/mzK/TA9u/6nrcIf5sURXaysKV45Re1
         CO2gQPAe3dqwbpGLem4hFrSrBWOZGlCPtK6kFeLdnI/XMgcOHRl5swBJHnQ2OMV/cEGR
         i3cg==
X-Forwarded-Encrypted: i=1; AHgh+RoflhtHlEffF1XnXzi7i0FxU1cidVYbPoXCdKYicug5JmKVgLQXUKc3gabXMAukEIGlVjEMIo5FGjc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxEcWFKofs4e3lbS2ULzoSrR8AS8nsOcpQqGYq3eJZTuCb5xnE
	+0sC8TI2fIPmCi3WB2DsruC/YjtqF2z6MDKH6UdVB9HngeZVNLqqOc00
X-Gm-Gg: AR+sD135osCIQAfMatb+tCw1/ApZXtIAspueUTI0o7g02oAErEWj6qYT3RXwMCBFG5F
	057hQ8dZXULAsJli7pYwaFJB0DqWw8lyzhWDBo/0WE6mbltchlayEutbhkGF5sqtP1RMIG+ODmJ
	yUi4RmzNpCnOltolTRmZ5iBI7f+ceZTjHO9//Msw+Do+CQ7DNUsxfS1J7/maJX0dP5Ip5mVMrYT
	Zq9/L1XWRXXCacfdJy9IJxiuI0Q+BR3hEGCwza9I6KtRUa8VrukYqRSrgIIKMCrjNiSzsjQAL8o
	AAA+8Pb/4fWGirmgotcYm0ipMptx3ctMpNxfpmHIfCby7da5S/PuCRfiK0N7SqvB3TLv+Kh18eu
	XxDwkYfIjb+7oQjMy7EPrGYw5WiTvlyFvqeVX7qVzR7oBpCh8alinmGeVixLd7Vq2W/9acot6hB
	vmJfCrJDcH+LPMdpKyF3r+DE+fPU725dAjT6FDR46Dap3Wr1FSR7LeEnS9OtxSrcmyKrH1pEh0L
	eiVrJiZ5Xi5595fK3TFjyrTqep/wRKSbVhIy5pBvCGs0gg7Kcn1h6UXK9k=
X-Received: by 2002:a05:600c:6296:b0:498:519:e660 with SMTP id 5b1f17b1804b1-4999fb07d28mr121602585e9.4.1787046846022;
        Tue, 18 Aug 2026 02:54:06 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-87-21-27-15.retail.telecomitalia.it. [87.21.27.15])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49996109652sm295630245e9.4.2026.08.18.02.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 02:54:05 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] phy: move and rename Airoha PCIe PHY driver to dedicated directory
Date: Tue, 18 Aug 2026 11:53:50 +0200
Message-ID: <20260818095355.18898-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_025408_770162_A32A1FD8 
X-CRM114-Status: GOOD (  23.66  )
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

To keep the generic PHY directory tidy, move the PCIe PHY driver for
Airoha AN7581 SoC to a dedicated directory.

Also rename the driver and add the relevant SoC name to the .c and .h
file in preparation for support of PCIe and USB PHY driver for Airoha
AN7583 SoC that use a completely different implementation and
calibration for PHYs and will have their own dedicated drivers.

The rename permits to better identify the specific usage of the driver
in the future once the airoha PHY directory will have multiple driver
for multiple SoC.

The config is changed from PHY_AIROHA_PCIE to PHY_AIROHA_AN7581_PCIE.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 MAINTAINERS                                         |  4 ++--
 drivers/phy/Kconfig                                 | 11 +----------
 drivers/phy/Makefile                                |  4 ++--
 drivers/phy/airoha/Kconfig                          | 13 +++++++++++++
 drivers/phy/airoha/Makefile                         |  3 +++
 .../phy-an7581-pcie-regs.h}                         |  0
 .../{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} |  6 +++---
 7 files changed, 24 insertions(+), 17 deletions(-)
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (100%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 04db742696ac..e2703d1a737b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -765,8 +765,8 @@ M:	Lorenzo Bianconi <lorenzo@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
-F:	drivers/phy/phy-airoha-pcie-regs.h
-F:	drivers/phy/phy-airoha-pcie.c
+F:	drivers/phy/airoha/phy-an7581-pcie-regs.h
+F:	drivers/phy/airoha/phy-an7581-pcie.c
 
 AIROHA SPI SNFI DRIVER
 M:	Lorenzo Bianconi <lorenzo@kernel.org>
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 19f3b7d12b7d..e93951a4a898 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -46,16 +46,6 @@ config GENERIC_PHY_MIPI_DPHY
 	  Provides a number of helpers a core functions for MIPI D-PHY
 	  drivers to us.
 
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
 config PHY_CAN_TRANSCEIVER
 	tristate "CAN transceiver PHY"
 	select GENERIC_PHY
@@ -168,6 +158,7 @@ config PHY_XGENE
 	help
 	  This option enables support for APM X-Gene SoC multi-purpose PHY.
 
+source "drivers/phy/airoha/Kconfig"
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/apple/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index d7aa516bcc49..4ca4a07963fc 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -7,7 +7,6 @@ obj-$(CONFIG_PHY_COMMON_PROPS)		+= phy-common-props.o
 obj-$(CONFIG_PHY_COMMON_PROPS_TEST)	+= phy-common-props-test.o
 obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
 obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
-obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
 obj-$(CONFIG_PHY_ECONET_PCIE)		+= phy-econet-pcie.o
 obj-$(CONFIG_PHY_EYEQ5_ETH)		+= phy-eyeq5-eth.o
@@ -20,7 +19,8 @@ obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 
-obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
+obj-$(CONFIG_GENERIC_PHY)		+= airoha/	\
+					   allwinner/	\
 					   amlogic/	\
 					   apple/	\
 					   axiado/	\
diff --git a/drivers/phy/airoha/Kconfig b/drivers/phy/airoha/Kconfig
new file mode 100644
index 000000000000..9a1b625a7701
--- /dev/null
+++ b/drivers/phy/airoha/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Phy drivers for Airoha devices
+#
+config PHY_AIROHA_AN7581_PCIE
+	tristate "Airoha AN7581 PCIe-PHY Driver"
+	depends on ARCH_AIROHA || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Say Y here to add support for Airoha AN7581 PCIe PHY driver.
+	  This driver create the basic PHY instance and provides initialize
+	  callback for PCIe GEN3 port.
diff --git a/drivers/phy/airoha/Makefile b/drivers/phy/airoha/Makefile
new file mode 100644
index 000000000000..912f3e11a061
--- /dev/null
+++ b/drivers/phy/airoha/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_PHY_AIROHA_AN7581_PCIE)	+= phy-an7581-pcie.o
diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/airoha/phy-an7581-pcie-regs.h
similarity index 100%
rename from drivers/phy/phy-airoha-pcie-regs.h
rename to drivers/phy/airoha/phy-an7581-pcie-regs.h
diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/airoha/phy-an7581-pcie.c
similarity index 99%
rename from drivers/phy/phy-airoha-pcie.c
rename to drivers/phy/airoha/phy-an7581-pcie.c
index 56e9ade8a9fd..81ddf0e7638b 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/airoha/phy-an7581-pcie.c
@@ -13,7 +13,7 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
-#include "phy-airoha-pcie-regs.h"
+#include "phy-an7581-pcie-regs.h"
 
 #define LEQ_LEN_CTRL_MAX_VAL	7
 #define FREQ_LOCK_MAX_ATTEMPT	10
@@ -1279,12 +1279,12 @@ MODULE_DEVICE_TABLE(of, airoha_pcie_phy_of_match);
 static struct platform_driver airoha_pcie_phy_driver = {
 	.probe	= airoha_pcie_phy_probe,
 	.driver	= {
-		.name = "airoha-pcie-phy",
+		.name = "airoha-an7581-pcie-phy",
 		.of_match_table = airoha_pcie_phy_of_match,
 	},
 };
 module_platform_driver(airoha_pcie_phy_driver);
 
-MODULE_DESCRIPTION("Airoha PCIe PHY driver");
+MODULE_DESCRIPTION("Airoha AN7581 PCIe PHY driver");
 MODULE_AUTHOR("Lorenzo Bianconi <lorenzo@kernel.org>");
 MODULE_LICENSE("GPL");
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
