Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DDFCD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 15:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps7KQKi+YNIfUWAzaq4TA0Y3BR23KFkf/WN78zOXJ0c=; b=Bf2+tmsXu23sUQ
	vpsYYVGaNJNVsatcZasPUohmXGhnjuqS98k9OC15slgmuPevgiQS3oEFYm3iHfAOqOcPrPsWXi75y
	FsoJfTOCu0Es9cZoPz8Ii6U0ID+F3n0JKI9gN9a0fZeNMgOJ9DjeMBcdZIGpknTaCdBjjDaL49orE
	VY4L0gCpPO9qkn96GR7bVv0zDYvLrKRqMYBmPctyjrStgRIqWX1Srw60x05Cod5JMnH02XOtE4+uh
	tbJFwvM1VcWPy28X58+jyxHa/KAedCaJvNRrfI6mdo6nn5YohkIAhbCktomnbp8KEiS7sWRpl5wHH
	/QZDAmyikW6W+oFr6Vqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5SY-00000008LPy-0VtS;
	Thu, 21 May 2026 15:37:18 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5SL-00000008LHw-0ZPC
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 15:37:06 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48896199cbaso49189615e9.1
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 08:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779377823; x=1779982623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MIB28TKX46XSJ6UoBivfsKflmRaG92nOEG3Dee2rX0k=;
        b=dI+pNZp5TnfV6D5rGJdA23KVPHOXH3bTtFQNWnBWg+fG6UHIhUS3Mx46u3RgGLVvYC
         uiUxsl4xrJ4B/F8g+rPpeGXGsPoXXDmlqki6C8cPFRDA+vjNmwWCgwidCybsIRPvJQwr
         lM29V2em9Yi8TJkUSHeS9KNe9j3OaWYZM/92Cv1afY1ED6qmw8UjbejCdbR5veFVRepp
         rOYbe3KVY2bTjFuB+FXCeVJ/dJSccGnBMb30VQWUKrrEU2YL8mje3QxeSD9KPxBQAJYH
         PFaSn3RrxhbHZjwnEXSd+f1b+erhhRVl/zfDurZRn4Mc3fOYhxMGevOjo4hRYTcU33v+
         SXBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779377823; x=1779982623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MIB28TKX46XSJ6UoBivfsKflmRaG92nOEG3Dee2rX0k=;
        b=jT4Rm9Wcv7CfriKhe4Ajv7msv1H9+woWgTAu87zgZEZHLDlisjgaIGIGsRJB3iJHlY
         gkKoSpPdpcxsrq7mVti5Ixuu99R+uoGCf9nYQvdsqXXqeCVxilC/M5ldSOEAK1xkcdG9
         z4odyAZgx7kqlAlPmAcyfZI5y40pVW+lMdhYEBq65YrkM0R71Q+7+Rl6Y9CY3wzygOf6
         G2tnEaOqAKm0vT9WsC8DC+myDPFCq6ckf4utYaGGk2v/9p3cQS+Ui27HnXYF5dvBdPQm
         U+LjyCyjGtt5sA1hYzzmsNkufxLCe2lp1/kjYGKUqegiFemA5tZ18bKZTe3XaClkrZeZ
         ey0Q==
X-Forwarded-Encrypted: i=1; AFNElJ8DBOlFKt8X4FDsvtapfeKgRxFaQv+/GxvfHK1EJxekqlp8a0Nao0j4fWWXDKR+drF1buD5zixXyUs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAp4QgLGXCYOE/poEpslWQ2hjAPjX0CpZ9GZfttVKcrh3Y9fAV
	2Ad4Vhyi4AJuLMqyvz+CPpIwffJ53NV/XnWZGoTJXGfiVGWH9I6ZA1vKGSqYtw==
X-Gm-Gg: Acq92OHj/tJiL9vSNMq0R7ONZ1ijjqE8mC5SezdtS7RXnTBdFvYXbQ8Ukq873BfMV5i
	bHhiQn9vaZnYyecXdhRgKxFq6BrNc4tOjMu73mcRDlv0mXTjhqyCTqcEWI168er+15kEp3ywjmn
	4yYVBvtpJamW6CYXeypVkGSVqsuUZeluSI/ZSTctDh2DUcmoRH45i8LyEgUllJGueuglpzhsI18
	hAFBADOjYRB/Ro4q0EDSSjSFv/TzKUggtZs4PgqzyUj/Zbj/8PrZis4OnTnavCxWANlpYvmCvy+
	nLjGgangmyvzI+gl+w4Eq7AgSyfMNJzyZ0PsoOAL+jkYn40vPJ3JOO1sdV6rad+KOODFktZYAl+
	g+PAr1MsczoJBzEIa5HlHNScF+Qd7NPHPCvLjy+BFKylogMxHJlbm9oxknIvPXOtBkzpgxnI4tV
	1l/UR1vKAH48vUUw5ExtCxmX4lyY8uYiIxLKXaNd1oUzkhvjR7E3CDnSG/ba6cU3A=
X-Received: by 2002:a05:600c:4c24:b0:485:30d4:6b9e with SMTP id 5b1f17b1804b1-490360a373bmr29483185e9.21.1779377822804;
        Thu, 21 May 2026 08:37:02 -0700 (PDT)
Received: from Ansuel-XPS24 (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49033d9edcbsm79159825e9.13.2026.05.21.08.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 08:37:01 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v9 4/5] phy: move and rename Airoha PCIe PHY driver to dedicated directory
Date: Thu, 21 May 2026 17:35:55 +0200
Message-ID: <20260521153645.7028-5-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521153645.7028-1-ansuelsmth@gmail.com>
References: <20260521153645.7028-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_083705_207526_8CB27D7E 
X-CRM114-Status: GOOD (  25.22  )
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
 .../phy-an7581-pcie-regs.h}                         |  2 +-
 .../{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} |  6 +++---
 7 files changed, 25 insertions(+), 18 deletions(-)
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (99%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 932044785a39..7bea8c620da8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -759,8 +759,8 @@ M:	Lorenzo Bianconi <lorenzo@kernel.org>
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
index 227b9a4c612e..f9cd765a3ccc 100644
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
@@ -133,6 +123,7 @@ config PHY_XGENE
 	help
 	  This option enables support for APM X-Gene SoC multi-purpose PHY.
 
+source "drivers/phy/airoha/Kconfig"
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/apple/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index f49d83f00a3d..84062279fa63 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -7,7 +7,6 @@ obj-$(CONFIG_PHY_COMMON_PROPS)		+= phy-common-props.o
 obj-$(CONFIG_PHY_COMMON_PROPS_TEST)	+= phy-common-props-test.o
 obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
 obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
-obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
 obj-$(CONFIG_PHY_GOOGLE_USB)		+= phy-google-usb.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
@@ -17,7 +16,8 @@ obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 
-obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
+obj-$(CONFIG_GENERIC_PHY)		+= airoha/	\
+					   allwinner/	\
 					   amlogic/	\
 					   apple/	\
 					   broadcom/	\
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
similarity index 99%
rename from drivers/phy/phy-airoha-pcie-regs.h
rename to drivers/phy/airoha/phy-an7581-pcie-regs.h
index 58572c793722..b938a7b468fe 100644
--- a/drivers/phy/phy-airoha-pcie-regs.h
+++ b/drivers/phy/airoha/phy-an7581-pcie-regs.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2024 AIROHA Inc
  * Author: Lorenzo Bianconi <lorenzo@kernel.org>
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
