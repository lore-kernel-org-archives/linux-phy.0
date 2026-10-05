Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5E30CA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmYmmlj9qlBNRB0EE2XbYEQDdkqZ3thUREtK2ZzD2zU=; b=poe4rIjcajizGn
	RmNfgWiKQmXz7eXaaiIRzZVzJu57QtZ/SXfS/OP27DSwEBkbGsbQtgj3rsOCFa55dImHFe9nf1GeU
	1FG9+zQvMA7LoqccVF/rsMp8zLjSDsUBLoFQ3/pccsX5cnAVj6iKGHplGn+arw8dy9slqZbs7sRFm
	lzQl26iy0i6yWnjyvzpImktpCou9BTv3sRjeL5ajgTBJ/u6BkLcY0dGqCVxeP26auKg+PAD0raOec
	0u1onM988+oK1zy1lN/tr+rRInGdE1SqXDzgxk2zfNuN1+AMD4meiotcueBcYLcbFh0VjR/IkN+oh
	CRf6hxSP0WtO6gAWbfxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMT-0000000GFSX-1K4L;
	Mon, 05 Oct 2026 10:56:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMP-0000000GFQM-2cN0
	for linux-phy@bombadil.infradead.org;
	Mon, 05 Oct 2026 10:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=Q6qZ1hBsm+xN1P6TzN/THVD/Mds3MJJk5yLYQnWA52I=; b=dgTmepwP0tthjG61NzP9pkXyNV
	XiaGLd24Qq/w75DbXWsNsGkATsCfm+1L4Q7ojQ8Wpc/J3w91CaMgzPa+WFcIzn5HJrhCdWoI46l6+
	zpOCZZlYAtQ9htwrh2f0UBDj7jNfSVoFFgkJiJH4WTRFtvJuTtrYkdnYR3VkIGKN1JNYiOTDSx6G/
	35ODO6ft988QVMGdBv7bRiXx1IEhDt6IpvFlt7eWMqOHseejvnEMH/NR+xppjW64v+ovLDcTyoU1F
	OqRs+vZQ9qkdIgaUHKh83w8/vGYoJDiMiXJd+ZgkI0JSYS76wIqudKfjpqCkOZ0gWt9bzcmpL+4hE
	5d89u0vw==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xDgMI-00000007pxG-2Rnw
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:55:56 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-4a16bc7ad39so2758305e9.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 03:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791197749; x=1791802549; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Q6qZ1hBsm+xN1P6TzN/THVD/Mds3MJJk5yLYQnWA52I=;
        b=DmKn2qcIyP5sACzax0/8CmeTpZjUMwkqec9DZVnMqgr6inmDBR9eL/Z+5cpmgJenYS
         GK5dAI8+uYcm7s9M0zhBKzHf0BVi8ZZtQ7WSxmVQ8zdJYraRrLqCqce6fD2oRqNwF0dG
         h0+InN5XnRoNFqWI1dL70M/pYyXXt4c4xfXr0joCSioQkG8OrbUNJgmjd+Y4J1LuZbHA
         uvs2lM4rvylZ2os4hXMbrmYfm5Spm6N35RCrQo6C11jP2gy8M1Q4HxyQmT8AMso46DEX
         dXbQwv+ZZ47C1zAscNhLKo8Npvv5aOiICawS2ojjCYX78ah+p4t3ozLzrY0zQ9dPe7hs
         lCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791197749; x=1791802549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Q6qZ1hBsm+xN1P6TzN/THVD/Mds3MJJk5yLYQnWA52I=;
        b=x73T2qx5qHOlXQ5jQhG0BYieUdHqItYrBTWfrJQnOxGzkP2ysBK1xp1JXwL0E6I5uk
         eRy6efy7VE+Z3IKqVclV5+z2DFHgi175unSKXoi2AS2e6DOHieHpiQXFd/+NE7O01yXG
         F3pdPtW74Wc7VWzi2MLpRF1WAPD/Bu0y9V7mZrMoVPTHneuMNKyDvpeAJOJ47jCGWZ+Q
         ExQGZXsmQGah0j6ZqqSjmxq6+rRoBMC70m4IkzIh9NnV1dFLAByy6MKFmftCJQXozqCN
         tXadnzCPpE0mW8mnBwJuVjtVNNMi0Zvl2JAxN5C3hUd6yjFosLXHS59dgtgVrt0qIFpY
         QFRw==
X-Forwarded-Encrypted: i=1; AKwUvBzTvtWDc7m2oskugMHF1YM3KwjNwD/KheoUGZJvJmBiacYqUudQwWiLcl4FPRZ5Yb+qFBlgM5jH9wY=@lists.infradead.org
X-Gm-Message-State: AFuF++mhXVCBTk6pUqKc+ofZT6vZ5DL4AgEYf+WlPW1Tbb/z4WRUtT8u
	3JVZgUzwDhDxfJC/PzRQETEsgdXdXskyKvEM3TGQ+7f/+MGUjfSFT0bz
X-Gm-Gg: AYBFou1y5qCnCtUJ3kEoMJXX5a6LZ4DgYrvF9Hl/G9z7G5ff2RfrOArqalCwG/Obz6/
	4JNf60yN/TdMRUfsRVsmse6v+TWeAbD/EpoqBe+5N4DlEjrIlmlfnQcLzmU7V1MfPEAuaq83hzx
	CT0uiC9NjXq+fm7xKRvVW6Xk5dd3ID6L/FPY0JFBtf+QdfGCfxg4LUnzHT4fjToBc0BiblxLUYo
	bpMxtLWN60aX+pMFCfV3r+GBCwZBC5ymGEHaBNLbrgkxHm2SsMmNQgeNNhakiwRprJgjGz59LOT
	oR08FdQLjCHywHfvlHSi5ueYXUmN4heTRYKHXEHHgboVt3ZjSmtZqKKwft2cdwwBNxA61EenhQ/
	Y8BaUbb4KPnnkl76+QmHoYEYWxCAdGBplUP1cF6C1jUaXLuxkX9gUycwTB1o2em0aYniZk40K67
	et4oomILaEOh6wfJ0wFe48Qog+8rwRGEfkUyYxw6vsgXkx2EKFWHmq3eCotbg4v6W+2NQman9/O
	Nx4FedltdDAA6WN4F9ixZ33eqyw5K68XxoLjZqSLP2pqkzwLVzVneEglmYtPv3paWrbILo/Yw==
X-Received: by 2002:a05:600c:3b05:b0:49e:715d:95ca with SMTP id 5b1f17b1804b1-4a027561e0fmr167300395e9.13.1791197748928;
        Mon, 05 Oct 2026 03:55:48 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-82-57-191-234.retail.telecomitalia.it. [82.57.191.234])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a030326132sm270319635e9.0.2026.10.05.03.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 03:55:48 -0700 (PDT)
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
Subject: [PATCH v13 2/3] phy: move and rename Airoha PCIe PHY driver to dedicated directory
Date: Mon,  5 Oct 2026 12:55:31 +0200
Message-ID: <20261005105535.2472-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261005105535.2472-1-ansuelsmth@gmail.com>
References: <20261005105535.2472-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_115550_729245_24F269F7 
X-CRM114-Status: GOOD (  26.61  )
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
index d8cf9722f76e..26ba9624acd5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -764,8 +764,8 @@ M:	Lorenzo Bianconi <lorenzo@kernel.org>
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
index 105fbe408aa2..4ac7475dccfa 100644
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
index c6dd02003bbe..dcc88a3cbaa7 100644
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
 					   aspeed/	\
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
