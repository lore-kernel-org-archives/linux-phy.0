Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC62ECA5FC1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 07:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxWdtKhqaVPRzDKYuHgLlP3e/NKzQ/Glyt20jkyPWSE=; b=e/VjyDuRQmFE+D
	HRhdG73ZV+KZfHXEq8mRxwbFY3JGRAVNH0HnCyD7KQojLFbLHh5B7gMp1YurmpZnrRsAjw4lt6cLc
	1hFYAaVto5lcn5VI/99Gmb8L24pMfKajACcLN3fDtmR6BZdMwJ0j0/MRsNHql9BAorgSFKUHn9ZkX
	e9/1OQ4fA4Ai6Z8wySU76bBaCOBXA/YJe7tIrdJtqKlYfWDA48qtfrOA6RnWKnvjThLoWq5duH6O0
	e5CLbfMI7hKSPmLHc7u0KNURJTF52nX0ebEeLY/i2M41RjzM6eeJ8HNH04jV4idSxlPf/hy2xGqQY
	8ai6/Qc3n/Q7tYiA+09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoaZ-00000005Fmo-1WaS;
	Wed, 30 Sep 2026 07:18:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoaQ-00000005FjB-1lSv
	for linux-phy@bombadil.infradead.org;
	Wed, 30 Sep 2026 07:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=OBFy3gRg9djAHfzdZsNUfVoPCNaFFvApu+nxOmSEsi0=; b=XVLR7tKNdJ4rMaqlW3XMYkig/Y
	B0i79RPDZ53PHY3fesBv26gg9rfnFVqL3waaeYzwzHAFi/zu/ICq6pyC/I/hZ4ghLAvDn5wEVd6a5
	OujuE8Uv8yCM6zkJQqBXuNzdR0lO7zSLyvLlrr6iYqNQx2CMSxk+dVGm7duzO1Xgic0lQFEvo7ifu
	qbnKrGTpF0S8PTdJD1ivHtqFi1X6Z12oTTIGjtWyxdTj9XNRKY1iSGzkD+Hnaj9oCLmdcPTABvSye
	r1OdaNCJskBJmJtYYDUJIcjMoi93yQN5OEl61YL4scpy4LU5KQED08WKwEfK2AigiZAdLkLEbvYB9
	CNrPlTwg==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBoaN-00000003ShG-1HX1
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 07:18:41 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49fff72474fso20506635e9.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 00:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790752718; x=1791357518; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=OBFy3gRg9djAHfzdZsNUfVoPCNaFFvApu+nxOmSEsi0=;
        b=VqrESNZyng5QFkPOQQ/4aqg6wk7xkZ5WHxPlLgedUfqxLcInNCwEUfTkg9lBgRCQ4J
         dNX+kyPDHtUwX5ExUMlJ4RB97vlMMV4QnMSI3JKp/eulJGrR9Biw0BVbZrxjLUVlwqKg
         /iq+aS3bmfimVuTpauH/qsEBLMdS1EfjrOcCJYJBGeWBwI3ufQ/Yt6fW5kmFZR0Zmaqp
         gKlU9BJrbfTdhNc2cIncQGehhswBMxqqHIxcHAaQK7wM033dnJq0avWGyyTFN2KrYP0W
         lmrOXRg1AtWwRt6Z996oLcujfMfSY7xMu0aWt4tC2YWqJzwbUNvnjM8zyqy0pbKFzOw3
         9UOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790752718; x=1791357518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=OBFy3gRg9djAHfzdZsNUfVoPCNaFFvApu+nxOmSEsi0=;
        b=1QQGYVg1sz8FrwP8t/bNCBu7EOhAcWvXm8pB8ALGzJ0gB/1y6VTxugoDBro3WNoMh5
         uaKfzhbEzDeFSXRmmuy997KUz4CLxBan+J7/FOlHlefELz/K07ZBW17u6BrxUdZM+VoC
         7DbP7UkB9HAGhjmM5ljWEPebEwvzX/fs61YTLA/NKmWOYLeA5YeqhPJPn8fZGZBu5Tzu
         O2L6GOBaBscQXKWCPTCJd5xOc71DM7yJ3GGAsEiF9Pw6DGspMLumEHly/m1TAM4/BE1l
         pSgAYjQduLmRNs98jTkjn7wO6K6PFBs6p5cBMC/RgDWvw/vNtAoch0m+Bn2iPapJ2wd6
         d1mw==
X-Forwarded-Encrypted: i=1; AKwUvBzerceW1ResZ2qb8QCM4bIFpHaMdYkcJtk0q75jaw9D2aBTHXqzM1QCwur0Ma0YrwtBZHcxadEwo7U=@lists.infradead.org
X-Gm-Message-State: AFuF++m+MdO/TTSz65ZPh0DVdBc0cPe021gJ89Vy9fxX66hPudgMvxdl
	qfisg8I7prlRr/nVAflJQGCpe/A7sHm/Y2a4+k5R8AmbS6M+w/JF4HYN
X-Gm-Gg: AYBFou0ht14NSY/KQZCDYvh7LBF4ZGCicOUjpqRQXa0PAEqvMIwymjwkX0fx7Lm0CNl
	6PWDcnh49+mhDpJDIu90lePeSn1/lZ9nGWVDKZY92cUwFf4KrtfEgWzhu9Sh/5tNMmAyx7gQNUt
	5IisDH8MqKZlDFPiliHWdKSy2SSGrrGjP0cGrLd2X8OHiQCQ7cQAWubPPFiOIR6BMKR6B/5NvFl
	SN47mS9eaUsU05qnh8hq8XFGW8Q58dKzWrs76vXPZshVZ/etnrBKw/J/vtX3WPhHJ8MtP/nPxKi
	jKpqdn90zTOBne67u74dlyOroNWOi28JbT21hj+Mn3//ExUaMD0gy8LY3dxxTZXXB0x0OCYgI+Q
	AGVGsweqF7jUUQ9UykLH2Ac9AJ0nLElF0EauP/XCCClAC+smVyspMo9fA86JidVyQVZ7uY4fltV
	03Zt+kRpv5Qsek8jsjyG7R0gyM3i6AjAGc6wu9a6FFwS4MyZHJZzMILoEXHSKjMRvJrguQlxfVN
	JBcPYtAaAVcHNrGepmpb088f6rBfnyIbrpHuFOKxeY5NXd1N8qFyzOpLnvjdpKo
X-Received: by 2002:a05:600c:37c4:b0:49f:ce78:356b with SMTP id 5b1f17b1804b1-4a01b125598mr5076455e9.28.1790752718096;
        Wed, 30 Sep 2026 00:18:38 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-82-57-191-234.retail.telecomitalia.it. [82.57.191.234])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a01b1e79e4sm10590905e9.2.2026.09.30.00.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 00:18:37 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v12 2/3] phy: move and rename Airoha PCIe PHY driver to dedicated directory
Date: Wed, 30 Sep 2026 09:18:18 +0200
Message-ID: <20260930071826.48811-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260930071826.48811-1-ansuelsmth@gmail.com>
References: <20260930071826.48811-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_081839_672130_65CBA535 
X-CRM114-Status: GOOD (  27.28  )
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
index 0b9946c532af..d2f2a491f3c0 100644
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
 
 AIROHA SOUND DRIVER
 M:	Christian Marangi <ansuelsmth@gmail.com>
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
