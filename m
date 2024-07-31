Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D56CAC3DA7F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 01:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSrxNCLHzGBtNS238UWiIpg08Pl7xBkU5VrykDW9yZM=; b=GoMS2gceClhFQk
	u2LSPDBDlRy3B8B/VvXavGJlgo+t7l3VKJBkpw9XL4H8lOZ+ppnK+7VZeOYls/jyKTrXkCP+kUT13
	deWeauWoBXKYUmUl4Oodxtbq4SGYIk35Q1E6Ny7O2miCTJrv6MHwrGfL3zDQbapXRAyy1hYO1xb0m
	6DJOzoq5Okmp+K3se/AP2Ipc5OXuGa/m5zZPGnxRT86sbC7XfLg6I3EgsEgf5iLix9P1z+mgQwtNI
	/dzQg8499Tb3d9VhWbfe9FD+IKU+3qw1K/aSoo0FJVrwzfe/sBkH2kxGgHR0ctfCzgd7uZLVulpcT
	Oj0F3vYqGzr9MBzk2WeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYyON-0000000Gxkt-1Y2u;
	Wed, 31 Jul 2024 01:44:39 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYyN8-0000000GxRW-1COG;
	Wed, 31 Jul 2024 01:43:23 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-70d199fb3dfso4434132b3a.3;
        Tue, 30 Jul 2024 18:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722390202; x=1722995002; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zqzCoAbFqxndP749YKSB5ePQejWzAj5lN8I2yJMHRQg=;
        b=BJk5TgO2C2bGmOJ6BwfubKZKUzBRxPvYZElxnmFzQP+OBAf6TyKxF60WmdNTxEIorz
         DWJtmPfsSYujk4K/5MmWj8KqHzv42ulZA3367LHE3OfFNLlqfbgqPsmIzZksf+jmAObb
         5XqTi8NRgRM5dC8qHLkyFT+s9wEa8FFK1utRaoqnt1qw0iYpsY++5LRDDSfKhXeJbXhe
         ZwE151mLE5qHz8WTDooFw2kI73qWNuGtrsqDhtvwVQ/Mv8DGqc3nzWJMg0dbioJg0Wjh
         vy0cEbuWrQ0R+RTdd9pfvb3fYVBu17yDNsuVp4UFyeLzH5hapXA47By3iT0CVWf04p29
         OHVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722390202; x=1722995002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zqzCoAbFqxndP749YKSB5ePQejWzAj5lN8I2yJMHRQg=;
        b=fIk/7rLTGLg61BHkvuUuKKm4ATsfhfp0fuvkTW1+y66wMo+Sd0TWzMIRKEjXybYI14
         pS5u7We0BP/niDXmB4dPED3d12cm72hp5sOv1L186kGo27WStCbAI2ke9MxVa934iKRY
         tohL1ZxEAzZR5a68MB/+KyuT38BhzNMNvjXn8rJl9yPH8nAto2xB713uba9kTpTEDNcO
         WL5/b2k8gdfuTzoMWcmgLALE8ICsLSOEuFkLF6W38lLJxBxHqrxOtpblYnvYJHiD1OPt
         ViKO+MKGTZiI9ca8lZ0NJJgnaWfAQsCW+1ry1qfqA4BAS7LyZNlNE5GCaJhsXkapJlNZ
         pT+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWIt+eB4seTs6F4jWzT/UZU/fKk1cz6TtlBa8rxnk0KvIf/8kTCNI5Wo2RKvzhlnUqQrqugmwSsZWePoJU13KvV1vyTNVAtwBInZum3kg==
X-Gm-Message-State: AOJu0YwBFXbi5C/5qIk7570WW3cOkXFDbyyGUQ2zh6pg5Zw6Nw4YHDZc
	wlKPC7XIietn2HCuzvZIAkQbSNpAWr07Z6SIxQ16LuVFRFTfeQhz
X-Google-Smtp-Source: AGHT+IGCSaAyV+DhK5xvZ/jgFrmOMha3FW9C8VO/kHLPEsayQAv5yDUCJ180FVq1VOjQnmpm2pPcEw==
X-Received: by 2002:a05:6a00:23ce:b0:710:4d4b:1af with SMTP id d2e1a72fcca58-7104d4b020cmr588435b3a.7.1722390201589;
        Tue, 30 Jul 2024 18:43:21 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8a48aasm9003534b3a.196.2024.07.30.18.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 18:43:21 -0700 (PDT)
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hui-Ping Chen <hpchen0nvt@gmail.com>
Subject: [PATCH v2 2/2] phy: nuvoton: add new driver for the Nuvoton MA35 SoC USB 2.0 PHY
Date: Wed, 31 Jul 2024 01:43:13 +0000
Message-Id: <20240731014313.113417-3-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240731014313.113417-1-hpchen0nvt@gmail.com>
References: <20240731014313.113417-1-hpchen0nvt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_184322_362359_F01099D3 
X-CRM114-Status: GOOD (  23.82  )
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

Nuvoton MA35 SoCs support DWC2 USB controller.
Add the driver to drive the USB 2.0 PHY transceivers.

Signed-off-by: Hui-Ping Chen <hpchen0nvt@gmail.com>
---
 drivers/phy/Kconfig                   |   1 +
 drivers/phy/Makefile                  |   1 +
 drivers/phy/nuvoton/Kconfig           |  13 +++
 drivers/phy/nuvoton/Makefile          |   3 +
 drivers/phy/nuvoton/phy-ma35d1-usb2.c | 146 ++++++++++++++++++++++++++
 5 files changed, 164 insertions(+)
 create mode 100644 drivers/phy/nuvoton/Kconfig
 create mode 100644 drivers/phy/nuvoton/Makefile
 create mode 100644 drivers/phy/nuvoton/phy-ma35d1-usb2.c

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index dfab1c66b3e5..f73abff416be 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -95,6 +95,7 @@ source "drivers/phy/mediatek/Kconfig"
 source "drivers/phy/microchip/Kconfig"
 source "drivers/phy/motorola/Kconfig"
 source "drivers/phy/mscc/Kconfig"
+source "drivers/phy/nuvoton/Kconfig"
 source "drivers/phy/qualcomm/Kconfig"
 source "drivers/phy/ralink/Kconfig"
 source "drivers/phy/realtek/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 5fcbce5f9ab1..ebc399560da4 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -25,6 +25,7 @@ obj-y					+= allwinner/	\
 					   microchip/	\
 					   motorola/	\
 					   mscc/	\
+					   nuvoton/	\
 					   qualcomm/	\
 					   ralink/	\
 					   realtek/	\
diff --git a/drivers/phy/nuvoton/Kconfig b/drivers/phy/nuvoton/Kconfig
new file mode 100644
index 000000000000..270ee2943287
--- /dev/null
+++ b/drivers/phy/nuvoton/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# PHY drivers for Nuvoton MA35 platforms
+#
+config PHY_MA35_USB
+	tristate "Nuvoton MA35 USB2.0 PHY driver"
+	depends on ARCH_MA35 || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support the USB2.0 PHY on the Nuvoton MA35
+	  series SoCs.
+
diff --git a/drivers/phy/nuvoton/Makefile b/drivers/phy/nuvoton/Makefile
new file mode 100644
index 000000000000..2937e3921898
--- /dev/null
+++ b/drivers/phy/nuvoton/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_PHY_MA35_USB)		+= phy-ma35d1-usb2.o
diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
new file mode 100644
index 000000000000..8922e5da8e3b
--- /dev/null
+++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2024 Nuvoton Technology Corp.
+ */
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+/* USB PHY Miscellaneous Control Register */
+#define MA35_SYS_REG_USBPMISCR	0x60
+#define PHY0POR			BIT(0)  /* PHY Power-On Reset Control Bit */
+#define PHY0SUSPEND			BIT(1)  /* PHY Suspend; 0: suspend, 1: operaion */
+#define PHY0COMN			BIT(2)  /* PHY Common Block Power-Down Control */
+#define PHY0DEVCKSTB			BIT(10) /* PHY 60 MHz UTMI clock stable bit */
+
+struct ma35_usb_phy {
+	struct clk *clk;
+	struct device *dev;
+	struct regmap *sysreg;
+};
+
+static int ma35_usb_phy_power_on(struct phy *phy)
+{
+	struct ma35_usb_phy *p_phy = phy_get_drvdata(phy);
+	unsigned int val;
+	int ret;
+
+	ret = clk_prepare_enable(p_phy->clk);
+	if (ret < 0) {
+		dev_err(p_phy->dev, "Failed to enable PHY clock: %d\n", ret);
+		return ret;
+	}
+
+	regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
+	if (val & PHY0SUSPEND) {
+		/*
+		 * USB PHY0 is in operation mode already
+		 * make sure USB PHY 60 MHz UTMI Interface Clock ready
+		 */
+		ret = readl_poll_timeout((void __iomem *)p_phy->sysreg + MA35_SYS_REG_USBPMISCR,
+					 val, val & PHY0DEVCKSTB, 1, 100);
+		if (ret == -ETIMEDOUT) {
+			dev_err(p_phy->dev, "1.Check PHY clock, Timeout: %d\n", val);
+			return ret;
+		}
+		return 0;
+	}
+
+	/*
+	 * reset USB PHY0.
+	 * wait until USB PHY0 60 MHz UTMI Interface Clock ready
+	 */
+	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, (PHY0POR | PHY0SUSPEND));
+	udelay(10);
+
+	/* make USB PHY0 enter operation mode */
+	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, PHY0SUSPEND);
+
+	/* make sure USB PHY 60 MHz UTMI Interface Clock ready */
+	ret = readl_poll_timeout((void __iomem *)p_phy->sysreg + MA35_SYS_REG_USBPMISCR,
+				 val, val & PHY0DEVCKSTB, 1, 100);
+	if (ret == -ETIMEDOUT) {
+		dev_err(p_phy->dev, "2.Check PHY clock, Timeout: %d\n", ret);
+		return ret;
+	}
+
+	clk_disable_unprepare(p_phy->clk);
+	return 0;
+}
+
+static int ma35_usb_phy_power_off(struct phy *phy)
+{
+	struct ma35_usb_phy *p_phy = phy_get_drvdata(phy);
+
+	clk_disable_unprepare(p_phy->clk);
+	return 0;
+}
+
+static const struct phy_ops ma35_usb_phy_ops = {
+	.power_on = ma35_usb_phy_power_on,
+	.power_off = ma35_usb_phy_power_off,
+	.owner = THIS_MODULE,
+};
+
+static int ma35_usb_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *provider;
+	struct ma35_usb_phy *p_phy;
+	struct phy *phy;
+
+	p_phy = devm_kzalloc(&pdev->dev, sizeof(*p_phy), GFP_KERNEL);
+	if (!p_phy)
+		return -ENOMEM;
+
+	p_phy->dev = &pdev->dev;
+	platform_set_drvdata(pdev, p_phy);
+
+	p_phy->sysreg = syscon_regmap_lookup_by_phandle(pdev->dev.of_node, "nuvoton,sys");
+	if (IS_ERR(p_phy->sysreg))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p_phy->sysreg),
+				     "Failed to get SYS registers\n");
+
+	p_phy->clk = of_clk_get(pdev->dev.of_node, 0);
+	if (IS_ERR(p_phy->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p_phy->clk),
+				     "failed to find usb_phy clock\n");
+
+	phy = devm_phy_create(&pdev->dev, NULL, &ma35_usb_phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(&pdev->dev, PTR_ERR(phy), "Failed to create PHY\n");
+
+	phy_set_drvdata(phy, p_phy);
+
+	provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(&pdev->dev, PTR_ERR(provider),
+				     "Failed to register PHY provider\n");
+	return 0;
+}
+
+static const struct of_device_id ma35_usb_phy_of_match[] = {
+	{ .compatible = "nuvoton,ma35d1-usb2-phy", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, ma35_usb_phy_of_match);
+
+static struct platform_driver ma35_usb_phy_driver = {
+	.probe		= ma35_usb_phy_probe,
+	.driver	= {
+		.name	= "ma35d1-usb2-phy",
+		.of_match_table = ma35_usb_phy_of_match,
+	},
+};
+module_platform_driver(ma35_usb_phy_driver);
+
+MODULE_DESCRIPTION("Nuvoton ma35d1 USB2.0 PHY driver");
+MODULE_AUTHOR("hpchen0nvt@gmail.com");
+MODULE_LICENSE("GPL");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
