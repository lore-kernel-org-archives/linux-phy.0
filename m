Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62EAAC3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 06:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vv9iTt5UGOuQ+whMwrAgjTGGDPJQgRFWbvvn9cPuV2w=; b=XY8DVePbw7Ic5X
	Fp94U5dzXUmwaOxtXuB98m9CUPzByfJ9FRaajVaRGXsM9JPtSSZO+0f09J4/We6YAcGxmNA84bfoZ
	iO7tSy1HEgId1wHzT79GZvjQd0Brc25ahDxBPFT4FxxGfjzHwG4ehQjLbX9qxHb0ukMkd6Olpo6Le
	0//trPxbHXtWXCGgdEBZKV5GC0pfEC0+84GWkfhYoIFYoaaOYyCAA+tupIjgJKTocBG77vrwXzYAG
	RJ3AKunS3MIS7CBkvqQC/PEr077n4LkpXZ8tCglyaMvNx2pV+oZCwIGhDJ1hXTLZBMDtcWY0AvoLq
	3DExiTpYxbC3O4PY/rjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJgO-0000000A7vv-02FU;
	Mon, 29 Jul 2024 06:16:32 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYJfE-0000000A7ZG-1GOF;
	Mon, 29 Jul 2024 06:15:21 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2cd48ad7f0dso2300176a91.0;
        Sun, 28 Jul 2024 23:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722233719; x=1722838519; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xH/fsCRbVakN7gixYJYo8VOqiSpDvYW3fwUrp/KNGUI=;
        b=mJxs+EXf35Roa9zW2s75aaf8HunS1MaiAjFcThK5NDU699xnxqBg9h49LJL7ybfqZi
         HgX1FuZhshRk03YxyR6jPcE7ukBEe4ytjaeWbob2O7rSMhGojfXt/zmwIfIpXfKOuBFD
         s8rfCZ0LAGi/9idxrr9N+vQX3xMwyuWsQVqujQ150B9iHj1bJVDHLxb99lfY72HfSOzu
         g74fzgAOjbvpwOa7AaajH9URtkG7sh0Is3M9ldcycu8cRsNwhtDn8v1Vwv3A2rxAqO7L
         yGUaWuc6u2io29kfChMsAnvUDjHIqi3WRaHD9hfhADzvSmw214sTFbbHci+WCh9q1Sgh
         TvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722233719; x=1722838519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xH/fsCRbVakN7gixYJYo8VOqiSpDvYW3fwUrp/KNGUI=;
        b=m8kONT7hKRCyP5oiUzYwiafP1RP/bq3Nr+9I0glxuzkiNtqFdI7u2q90rFLjUO9EIc
         wzr1N4yi5YfPw99jgMOZ4E+JyxKeCoFo4uMFBASgU/fg+p+J8H4F5Z43sMJJm4qnlx6T
         rBf+HPobBmj/0SH8UeyHOX1TmNufgmj1j/8ouNB+G4D1Yyj3R04uuJkUX4SAHQoBi4Um
         vOyRwuxb9L4BlMGZILM+qfLBejM7EnGxC6tK4MzzBW17ldVgjH3Mn6UALbmXCtovPYUT
         OQzRD5tVAi+WP9AUSgKk3Axh8pVkApbIBq9CbsbWzLH0EcL6MzYS0AnTA+/A4sF+Azzk
         u75w==
X-Forwarded-Encrypted: i=1; AJvYcCXsSv4cv2A+wPikByc25fv9lUQH2dT+8KHTgQ/cMkJ6BIa+thAD80V4eFM0KEj+/uhb7Bji2qUbf8QIg3EXLNy/Be10y3gbjJVaGWEYLA==
X-Gm-Message-State: AOJu0YyfXt35M7P91+yIWAlhbng/QnSGKexar3OkzgMzY4WIOfZVyjf1
	+sBx5IpFpV/brTHSoCtTHM+qykZuw5lBpzT7v+FsgVVbOcJO06xe
X-Google-Smtp-Source: AGHT+IFSxE2T4Kl9u11ZvXGY16Qyk7/rJYMTKzQYuwaXrmBlyY3Q/Mt42wc53P9QSoGPdpSlABjn4w==
X-Received: by 2002:a17:90b:3618:b0:2c2:f2d6:60d4 with SMTP id 98e67ed59e1d1-2cf7e0a6b55mr7605562a91.8.1722233719275;
        Sun, 28 Jul 2024 23:15:19 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cd8cd2013fsm7951282a91.0.2024.07.28.23.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 23:15:19 -0700 (PDT)
From: hpchen0 <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	hpchen0 <hpchen0nvt@gmail.com>
Subject: [PATCH 2/2] phy: nuvoton: add new driver for the Nuvoton MA35 SoC USB 2.0 PHY
Date: Mon, 29 Jul 2024 06:15:09 +0000
Message-Id: <20240729061509.83828-3-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240729061509.83828-1-hpchen0nvt@gmail.com>
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_231520_380050_B9D88F24 
X-CRM114-Status: GOOD (  22.96  )
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

Signed-off-by: hpchen0 <hpchen0nvt@gmail.com>
---
 drivers/phy/Kconfig                 |   1 +
 drivers/phy/Makefile                |   1 +
 drivers/phy/nuvoton/Kconfig         |  13 +++
 drivers/phy/nuvoton/Makefile        |   3 +
 drivers/phy/nuvoton/phy-ma35-usb2.c | 160 ++++++++++++++++++++++++++++
 5 files changed, 178 insertions(+)
 create mode 100644 drivers/phy/nuvoton/Kconfig
 create mode 100644 drivers/phy/nuvoton/Makefile
 create mode 100644 drivers/phy/nuvoton/phy-ma35-usb2.c

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
index 000000000000..85785e037d5f
--- /dev/null
+++ b/drivers/phy/nuvoton/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_PHY_MA35_USB)		+= phy-ma35-usb2.o
diff --git a/drivers/phy/nuvoton/phy-ma35-usb2.c b/drivers/phy/nuvoton/phy-ma35-usb2.c
new file mode 100644
index 000000000000..061b31fcfbb1
--- /dev/null
+++ b/drivers/phy/nuvoton/phy-ma35-usb2.c
@@ -0,0 +1,160 @@
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
+	unsigned long timeout;
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
+		timeout = jiffies + msecs_to_jiffies(200);
+		while (time_before(jiffies, timeout)) {
+			regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
+			if (val & PHY0DEVCKSTB)
+				return 0;
+			usleep_range(1000, 1500);
+		}
+	}
+
+	/*
+	 * reset USB PHY0.
+	 * wait until USB PHY0 60 MHz UTMI Interface Clock ready
+	 */
+	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, (PHY0POR | PHY0SUSPEND));
+	timeout = jiffies + msecs_to_jiffies(200);
+	while (time_before(jiffies, timeout)) {
+		regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
+		if (val & PHY0DEVCKSTB)
+			break;
+		usleep_range(1000, 1500);
+	}
+
+	/* make USB PHY0 enter operation mode */
+	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, PHY0SUSPEND);
+
+	/* make sure USB PHY 60 MHz UTMI Interface Clock ready */
+	timeout = jiffies + msecs_to_jiffies(200);
+	while (time_before(jiffies, timeout)) {
+		regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
+		if (val & PHY0DEVCKSTB)
+			return 0;
+		usleep_range(1000, 1500);
+	}
+
+	dev_err(p_phy->dev, "Timed out waiting for PHY to power on\n");
+	ret = -ETIMEDOUT;
+
+	clk_disable_unprepare(p_phy->clk);
+	return ret;
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
+	const char *clkgate;
+	struct phy *phy;
+
+	p_phy = devm_kzalloc(&pdev->dev, sizeof(*p_phy), GFP_KERNEL);
+	if (!p_phy)
+		return -ENOMEM;
+
+	p_phy->dev = &pdev->dev;
+	platform_set_drvdata(pdev, p_phy);
+
+	p_phy->sysreg = syscon_regmap_lookup_by_phandle(p_phy->dev->of_node, "nuvoton,sys");
+	if (IS_ERR(p_phy->sysreg))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p_phy->sysreg),
+				     "Failed to get SYS registers\n");
+
+	/* enable clock */
+	of_property_read_string(p_phy->dev->of_node, "clock-enable", &clkgate);
+	p_phy->clk = devm_clk_get(p_phy->dev, clkgate);
+	if (IS_ERR(p_phy->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p_phy->clk),
+				     "Failed to get usb_phy clock\n");
+
+	phy = devm_phy_create(p_phy->dev, NULL, &ma35_usb_phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(&pdev->dev, PTR_ERR(phy), "Failed to create PHY\n");
+
+	phy_set_drvdata(phy, p_phy);
+
+	provider = devm_of_phy_provider_register(p_phy->dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(&pdev->dev, PTR_ERR(provider),
+				     "Failed to register PHY provider\n");
+	return 0;
+}
+
+static const struct of_device_id ma35_usb_phy_of_match[] = {
+	{ .compatible = "nuvoton,ma35-usb2-phy", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, ma35_usb_phy_of_match);
+
+static struct platform_driver ma35_usb_phy_driver = {
+	.probe		= ma35_usb_phy_probe,
+	.driver	= {
+		.name	= "ma35-usb2-phy",
+		.of_match_table = ma35_usb_phy_of_match,
+	},
+};
+module_platform_driver(ma35_usb_phy_driver);
+
+MODULE_DESCRIPTION("Nuvoton ma35 USB2.0 PHY driver");
+MODULE_AUTHOR("hpchen0nvt@gmail.com");
+MODULE_LICENSE("GPL");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
