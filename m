Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50FBDCD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HI/t2MxLW3/1YAEq4BEQDotb7KpXhJPdZZXrV2T6PiA=; b=Q/tpOtJsaTI1ZO
	w4tua6gSUbbql57QhjAKKiYjVOUtwJkGmaRCETibdYGv8qGQL6LXqZCBlOOF6nIYGRcOytBaYU0p/
	/hfxPNOyyqEuqLLZoyRH1mpxgFwxB6AsDVeZ3LCw02TtPNWuAgVnJ6fTZmHrvgpxGz5j7YaXwd9Mu
	VN5tf6ydWlgM75vzsxJhcYE2UBitDQn8DzTPrr13ROGQsyMqjjgUxQrVbYFTCpDG0zbpGxbH0u3LL
	Y+xs8QCdGy+XEXF7Jq5B6RbsB7WEI0imYkKDPKspjyl/7E67g2woBZsXipn9B1tdirg/qIyzuVwdy
	QcuVQ2D1JlkJ2R9O+l7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8b-0000000DpvO-0J7p;
	Mon, 11 May 2026 13:57:37 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8Y-0000000Dpu1-0seF
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:35 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-678adefbd26so8044825a12.3
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507852; x=1779112652; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rESskTJRprzdwEOE8g7SuHaYWt4FLnX54fziSgA+Tro=;
        b=kQP6TXvmftdNQTx29HlCEU3ml3lLsegzivhIX+Ej6GL2YGHkK/JceD6zHKYlDENB7h
         1A0/IMqTREyFNo81TaooiSkBbC0gQXaF3Z0ybYBvvQzS4MGddsNblfwLq2Al9glp+R14
         8tB1ktWb+/hIs8hEEfp5mnNZy3yAgKvnHe7tF7d/i9nwb1hJ+N2VTSI+szwjMyVL/5Nq
         V94OBYy7SDZkcTF8SYkeGsAzCuVLMYKn9oMFoGdNNnTS2FWCRrglzkPi67BxIodt7hH9
         uI1iaFgR7ZCXIHUx4IZuCB4PS8R9YqSbyqlyetR4apxXVPQrsmyRRlJj0D0LkJp6ePuG
         hD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507852; x=1779112652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rESskTJRprzdwEOE8g7SuHaYWt4FLnX54fziSgA+Tro=;
        b=pxoe4twdAFcB6+NY9msQBftQqWUoYzNRjl4t2lVsbonlE2NX+MIzJuiKc/RrbluJmA
         QvVN3rOfOZT28LbbMVOQSaG5hR+arMZji4ujo8IiIESkUAxKGCPd1tZDM2y7aAi7F1Jn
         sUCM/jJolNijW7vtUGCbFUuD1SKFHQ28BjNywKqwQ6AZTwA3kB1Jbz1JX9sM1kh34CHj
         VxcdFK7RAGzY4jDm95rAxrBgeSs1j0HWRVA9Q2iH/vCZs7ekFyVg+lAnx3Bvi+uLLkpG
         FLoTMmbyd2xh9GiM8wthD+/jPG/YaLTeI7xoxbZLolwSijgmcxvmjFCDi/T1F5xUELsk
         UH7g==
X-Forwarded-Encrypted: i=1; AFNElJ8BCMp00piXykkDl0xZLCOf/sFjLUUIv6rL/d9prg3FKNvgrBmm4sbm4jX3rzF8pOsbKToBm+2kD2E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/5bvnxCwNXu+1AH8jScOXLla2rUOryQKpyg5O1XbhRAXktWWa
	FWpv8rnr4n4ZxqjlbSZ86VGA0l3XU5BT5R0py7mD6VGOTdVG6FW+hcDz
X-Gm-Gg: Acq92OH4EElvdrpK3v/yPyFP/tfBfweLsqdEH2IxkXFBG3FZLGrhNH8vlhQiIEMVOuU
	7i/csrzOC2BH7JpvsQv2WOt4e2TG0eSSORsguen9Tnc6vrTJoUP4wyN4bcfI+IfT+nEuqTcwEcF
	PIXZso2VT7M1WqsPBbm57a3EUJvAEUA/59nNaVL3KiZ21Xl9sYcjmE2h4Bbi2fyTcgwpLwIb4vL
	bAaYPDYNOEVjJuCbClLducK0w2PSsJ5KH9kmS6ci6K4qOPtedEgCvOg0f0aKsgsNUgLF+2IXs+3
	odnglAglMoT2PBPFyE2FQlBJHqbzb9oIDG3oY5O9XJBdcMQjqwoKTendpm5ldju6RVGXpfVjy13
	p4pZbPfp3sb/3IJ9F2yPFPhfD9rRsYQZJMo+HIMQurlvz3AsAGpuLsI6vftdogGzZglPs5TDMRj
	rbJBQDATZX2z2E
X-Received: by 2002:a05:6402:455a:b0:66a:8002:fe17 with SMTP id 4fb4d7f45d1cf-67ef09a34a1mr5628664a12.13.1778507852037;
        Mon, 11 May 2026 06:57:32 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:31 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Chen <peter.chen@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v1 4/6] net: usb: Add Infineon XMM6260 Baseband modem support
Date: Mon, 11 May 2026 16:56:59 +0300
Message-ID: <20260511135703.62470-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_065734_337258_AA70E9EE 
X-CRM114-Status: GOOD (  26.19  )
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

The Infineon/Intel XMM6260 is a 3G-focused, slim modem platform designed
for smartphones, data cards, and Machine-to-Machine (M2M) applications.
The modem is usually connected via the application processor's USB line
in HSIC mode; however, to work properly, the modem must control this line

Dmesg with modem appearing on LG Optimus Vu (P895):

[    9.427014] ci_hdrc ci_hdrc.1: EHCI Host Controller
[    9.431488] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 1
[    9.457197] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
[    9.460370] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 6.16
[    9.468470] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    9.475597] usb usb1: Product: EHCI Host Controller
[    9.480508] usb usb1: Manufacturer: Linux 6.16.0+ ehci_hcd
[    9.485913] usb usb1: SerialNumber: ci_hdrc.1
[    9.490862] hub 1-0:1.0: USB hub found
[    9.494005] hub 1-0:1.0: 1 port detected
[    9.657191] usb 1-1: new high-speed USB device number 2 using ci_hdrc
[    9.844726] usb 1-1: New USB device found, idVendor=1519, idProduct=0020, bcdDevice=12.74
[    9.850530] usb 1-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    9.857594] usb 1-1: Product: HSIC Device
[    9.861606] usb 1-1: Manufacturer: Comneon
[    9.865627] usb 1-1: SerialNumber: 0123456789
[    9.908739] cdc_acm 1-1:1.0: ttyACM0: USB ACM device

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/net/usb/Kconfig            |  15 ++
 drivers/net/usb/Makefile           |   1 +
 drivers/net/usb/baseband-xmm6260.c | 335 +++++++++++++++++++++++++++++
 3 files changed, 351 insertions(+)
 create mode 100644 drivers/net/usb/baseband-xmm6260.c

diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index 52a5c0922c79..503f24a3cfa6 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -642,4 +642,19 @@ config USB_RTL8153_ECM
 	  CONFIG_USB_RTL8152 is not set, or the RTL8153 device is not
 	  supported by r8152 driver.
 
+config USB_NET_XMM6260
+	tristate "Infineon XMM626X Baseband HSPA/HSUPA modem"
+	depends on GPIOLIB && OF && USB_CHIPIDEA
+	help
+	  Select this if you want to use an Infineon XMM626X modem, found in
+	  devices such as the LG Optimus 4X P880, LG Optimus Vu P895, Samsung
+	  Galaxy S II (GT-I9100), and Galaxy Nexus (GT-I9250). This driver
+	  handles the modem configuration and provides a stable way to expose
+	  the modem's USB interface. To establish a connection, you will first
+	  need a userspace program to send the correct commands to the modem
+	  through its CDC ACM port, as well as a DHCP client.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called baseband-xmm6260.
+
 endif # USB_NET_DRIVERS
diff --git a/drivers/net/usb/Makefile b/drivers/net/usb/Makefile
index 4964f7b326fb..ffa532c7d7d6 100644
--- a/drivers/net/usb/Makefile
+++ b/drivers/net/usb/Makefile
@@ -42,3 +42,4 @@ obj-$(CONFIG_USB_NET_CDC_MBIM)	+= cdc_mbim.o
 obj-$(CONFIG_USB_NET_CH9200)	+= ch9200.o
 obj-$(CONFIG_USB_NET_AQC111)	+= aqc111.o
 obj-$(CONFIG_USB_RTL8153_ECM)	+= r8153_ecm.o
+obj-$(CONFIG_USB_NET_XMM6260)	+= baseband-xmm6260.o
diff --git a/drivers/net/usb/baseband-xmm6260.c b/drivers/net/usb/baseband-xmm6260.c
new file mode 100644
index 000000000000..658f5351fab7
--- /dev/null
+++ b/drivers/net/usb/baseband-xmm6260.c
@@ -0,0 +1,335 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2011 NVIDIA Corporation
+ * Copyright (C) 2023 Svyatoslav Ryhel <clamor95@gmail.com>
+ */
+
+#include <linux/array_size.h>
+#include <linux/devm-helpers.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/export.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/notifier.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/regulator/consumer.h>
+#include <linux/rfkill.h>
+#include <linux/usb.h>
+
+#define BASEBAND_XMM_INIT_DELAY		5000
+
+#define BASEBAND_PRODUCT_ID_XMM6260	0x0020
+#define BASEBAND_VENDOR_ID_COMNEON	0x1519
+
+enum ipc_ap_wake_state {
+	IPC_AP_WAKE_IRQ_READY,
+	IPC_AP_WAKE_INIT1,
+	IPC_AP_WAKE_INIT2,
+	IPC_AP_WAKE_L,
+	IPC_AP_WAKE_H,
+	IPC_AP_WAKE_UNINIT,
+};
+
+struct baseband_xmm_data {
+	struct device *dev;
+	struct rfkill *rfkill_dev;
+	struct phy *mphy;
+
+	struct gpio_desc *reset_gpio;
+	struct gpio_desc *enable_gpio;
+
+	struct gpio_desc *ipc_cp_gpio;
+	struct gpio_desc *ipc_ap_gpio;
+
+	struct regulator *vbat_supply;
+
+	struct delayed_work modem_work;
+	struct notifier_block nb;
+
+	enum ipc_ap_wake_state ap_state;
+
+	bool powered; /* tracks usb bus state */
+	bool inited; /* tracks modem state */
+};
+
+static int baseband_xmm_usb_notifier_call(struct notifier_block *nb,
+					  unsigned long action, void *data)
+{
+	struct baseband_xmm_data *priv =
+		container_of(nb, struct baseband_xmm_data, nb);
+	struct usb_device *udev = data;
+	u16 product = le16_to_cpu(udev->descriptor.idProduct);
+	u16 vendor = le16_to_cpu(udev->descriptor.idVendor);
+
+	switch (action) {
+	case USB_DEVICE_ADD:
+		/* Infineon XMM6260 ID 1519:0020 */
+		if (vendor == BASEBAND_VENDOR_ID_COMNEON &&
+		    product == BASEBAND_PRODUCT_ID_XMM6260) {
+			cancel_delayed_work_sync(&priv->modem_work);
+			priv->inited = true;
+		}
+		break;
+	}
+
+	return NOTIFY_OK;
+}
+
+static void baseband_xmm_reset(struct baseband_xmm_data *priv)
+{
+	int ret;
+
+	ret = regulator_enable(priv->vbat_supply);
+	if (ret)
+		dev_err(priv->dev, "failed to enable vbat power supply\n");
+
+	gpiod_set_value_cansleep(priv->enable_gpio, 0);
+	msleep(50);
+
+	gpiod_set_value_cansleep(priv->reset_gpio, 1);
+	msleep(200);
+	gpiod_set_value_cansleep(priv->reset_gpio, 0);
+
+	msleep(50);
+
+	/* falling edge trigger to CP */
+	gpiod_set_value_cansleep(priv->enable_gpio, 1);
+	usleep_range(50, 100);
+	gpiod_set_value_cansleep(priv->enable_gpio, 0);
+	msleep(20);
+}
+
+static int baseband_xmm_set_block(void *data, bool blocked)
+{
+	struct baseband_xmm_data *priv = data;
+
+	if (blocked) {
+		if (priv->inited && priv->powered) {
+			phy_power_off(priv->mphy);
+
+			msleep(500);
+
+			gpiod_set_value_cansleep(priv->reset_gpio, 1);
+			regulator_disable(priv->vbat_supply);
+
+			priv->powered = false;
+			priv->inited = false;
+		}
+	} else {
+		if (priv->inited)
+			return 0;
+
+		priv->ap_state = IPC_AP_WAKE_IRQ_READY;
+		baseband_xmm_reset(priv);
+
+		priv->powered = false;
+		priv->inited = false;
+	}
+
+	return 0;
+}
+
+static const struct rfkill_ops baseband_xmm_rfkill_ops = {
+	.set_block = baseband_xmm_set_block,
+};
+
+static void baseband_xmm_work(struct work_struct *work)
+{
+	struct baseband_xmm_data *priv =
+		container_of(work, struct baseband_xmm_data, modem_work.work);
+
+	switch (priv->ap_state) {
+	case IPC_AP_WAKE_INIT1:
+		if (priv->powered)
+			return;
+
+		phy_power_on(priv->mphy);
+		priv->powered = true;
+		break;
+
+	case IPC_AP_WAKE_INIT2:
+		priv->ap_state = IPC_AP_WAKE_IRQ_READY;
+
+		phy_power_off(priv->mphy);
+
+		priv->powered = false;
+		priv->inited = false;
+
+		msleep(500);
+		break;
+
+	default:
+		break;
+	}
+};
+
+static irqreturn_t baseband_hostwake_interrupt(int irq, void *dev_id)
+{
+	struct baseband_xmm_data *priv = dev_id;
+	int state = gpiod_get_value(priv->ipc_ap_gpio);
+
+	switch (priv->ap_state) {
+	case IPC_AP_WAKE_IRQ_READY:
+		if (!state) {
+			priv->ap_state = IPC_AP_WAKE_INIT1;
+			schedule_delayed_work(&priv->modem_work, 0);
+		}
+
+		break;
+
+	case IPC_AP_WAKE_INIT1:
+		if (state) {
+			priv->ap_state = IPC_AP_WAKE_INIT2;
+			schedule_delayed_work(&priv->modem_work,
+					      msecs_to_jiffies(BASEBAND_XMM_INIT_DELAY));
+		}
+
+		break;
+
+	default:
+		break;
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int baseband_xmm_probe(struct platform_device *pdev)
+{
+	struct baseband_xmm_data *priv;
+	struct device *dev = &pdev->dev;
+	unsigned long irqflags;
+	int irq, ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	platform_set_drvdata(pdev, priv);
+
+	priv->vbat_supply = devm_regulator_get(dev, "vbat");
+	if (IS_ERR(priv->vbat_supply))
+		return dev_err_probe(dev, PTR_ERR(priv->vbat_supply),
+				     "failed to get vbat regulator\n");
+
+	/* Own modem gpios */
+	priv->reset_gpio = devm_gpiod_get_optional(dev, "reset",
+						   GPIOD_OUT_LOW);
+	if (IS_ERR(priv->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
+				     "failed to get reset GPIO\n");
+
+	priv->enable_gpio = devm_gpiod_get_optional(dev, "enable",
+						    GPIOD_OUT_LOW);
+	if (IS_ERR(priv->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->enable_gpio),
+				     "failed to get enable GPIO\n");
+
+	/* CP - AP connections */
+	priv->ipc_cp_gpio = devm_gpiod_get_optional(dev, "cp-wake",
+						    GPIOD_OUT_LOW);
+	if (IS_ERR(priv->ipc_cp_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->ipc_cp_gpio),
+				     "failed to get CP wake GPIO\n");
+
+	priv->ipc_ap_gpio = devm_gpiod_get_optional(dev, "ap-wake", GPIOD_IN);
+	if (IS_ERR(priv->ipc_ap_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->ipc_ap_gpio),
+				     "failed to get AP wake GPIO\n");
+
+	/* Modem PHY */
+	priv->mphy = devm_phy_optional_get(dev, NULL);
+	if (IS_ERR(priv->mphy))
+		return dev_err_probe(dev, PTR_ERR(priv->mphy),
+				     "failed to get modem PHY");
+
+	/*
+	 * Strting from ver 1145 modem starts in READY state. AP wake
+	 * interrupt keeps low util CP starts to initiate HSIC hw. AP
+	 * wake interrupt goes up during CP HSIC init and then it goes
+	 * down when CP HSIC is ready.
+	 */
+	priv->ap_state = IPC_AP_WAKE_IRQ_READY;
+	priv->inited = false;
+
+	devm_delayed_work_autocancel(dev, &priv->modem_work, baseband_xmm_work);
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return dev_err_probe(dev, irq, "failed to get IRQ\n");
+
+	/*
+	 * Systems using device tree should set up interrupt via DT,
+	 * the rest will use the default edge both interrupt.
+	 */
+	irqflags = dev->of_node ? 0 : IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;
+
+	ret = devm_request_threaded_irq(dev, irq, NULL,
+					&baseband_hostwake_interrupt,
+					IRQF_ONESHOT | irqflags,
+					"modem-hostwake", priv);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to register IRQ %d\n", irq);
+
+	priv->rfkill_dev = rfkill_alloc("xmm-modem", dev, RFKILL_TYPE_WWAN,
+					&baseband_xmm_rfkill_ops, priv);
+	if (priv->rfkill_dev) {
+		ret = rfkill_register(priv->rfkill_dev);
+		if (ret < 0) {
+			rfkill_destroy(priv->rfkill_dev);
+			return dev_err_probe(dev, ret,
+					     "failed to register WWAN rfkill\n");
+		}
+	} else {
+		return dev_err_probe(dev, PTR_ERR(priv->rfkill_dev),
+				     "failed to allocate WWAN rfkill\n");
+	}
+
+	priv->nb.notifier_call = baseband_xmm_usb_notifier_call;
+	usb_register_notify(&priv->nb);
+
+	baseband_xmm_reset(priv);
+	priv->powered = false;
+
+	return 0;
+}
+
+static void baseband_xmm_remove(struct platform_device *pdev)
+{
+	struct baseband_xmm_data *priv = platform_get_drvdata(pdev);
+
+	rfkill_unregister(priv->rfkill_dev);
+	rfkill_destroy(priv->rfkill_dev);
+
+	usb_unregister_notify(&priv->nb);
+	phy_power_off(priv->mphy);
+
+	gpiod_set_value_cansleep(priv->reset_gpio, 1);
+	regulator_disable(priv->vbat_supply);
+}
+
+static const struct of_device_id baseband_xmm_match[] = {
+	{ .compatible = "infineon,xmm6260" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, baseband_xmm_match);
+
+static struct platform_driver baseband_xmm_driver = {
+	.driver = {
+		.name = "baseband-xmm6260",
+		.of_match_table = baseband_xmm_match,
+	},
+	.probe = baseband_xmm_probe,
+	.remove = baseband_xmm_remove,
+};
+module_platform_driver(baseband_xmm_driver);
+
+MODULE_AUTHOR("Svyatolsav Ryhel <clamor95@gmail.com>");
+MODULE_DESCRIPTION("Baseband Infineon XMM6260 driver");
+MODULE_LICENSE("GPL");
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
