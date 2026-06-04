Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D9FCD6E57
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 10:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMH0cl8mMOdYB3IGthy66R28ESmF2YTs/XWkf53DZWE=; b=mVYskMZGGbO/KB
	4p2UQPol7JCul0sj7wM8p8TMwX+3HJnBvcK7QkLiVFGOgNC+ALwRAzrOtFESOKcIx6ykRye1vhSJ/
	YKdbOXCsNfYGBZxctQJKaIRNQxbVNPRGH8BgEjyU53TpuzEfSz5fgzkeAlmcxabRovvkOmJokLawi
	2cSqS6a5Q8skD/JE/4JVbWNAg6z5Qr2zK/0RDqsLNx/4lGb/7eWyBrojWe8b9EapmcOAvZqv8XZKs
	8QQOqyiXA9iZGzReyijIvMpVlTfltF0/FLgUEE4pCSB923Ymje51sYtKWM10hrnfVbJRk/lRqnX70
	+UDEhAXuSI9VMwFkdCWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV540-0000000GYDI-3oag;
	Thu, 04 Jun 2026 10:12:36 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV53y-0000000GYBP-3YVo
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 10:12:35 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-36bdb11bf8bso297633a91.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 03:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780567954; x=1781172754; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KNgQ3uIDHmbUKLYb1HRZcPl4cxTs8/vnDz7ZCuCW2h8=;
        b=cmxs5t9edYaaCVqao/AvcnAplSobLY0mJgJGA4B8qh67Hj20dsW9qXCSgl5KYL/2QG
         KDZ4l8toyg8jbX5J3St2vh9hi66dmvl7/WmVTV+dTUkb8IkuO71RIdxthsgxXBsmWJh8
         cGk6+/161cM5KzSMmDQLqH7jyzIiWXhp3VWjFHlTVAUSSncNlhU6Ma+Oro30+Q9QclRM
         CDNUm8QCkVVu+ek4vT+HbM0Rgn8T91Wj4ST6SmnmraEZxS8sThNJwAA29x+f1eYbQF3M
         1Okg7NxQQVKZIe1aumdTaE6ONuvP1TVgML1giYxKvIDT6KSB87yFK+4jaRM5QTzRZJvs
         ZkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780567954; x=1781172754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KNgQ3uIDHmbUKLYb1HRZcPl4cxTs8/vnDz7ZCuCW2h8=;
        b=jUILZT15NnYozzAY01ruXhgTa0+SJCcbrB5wU4zXSSdcAv+06e39+/ZqsyDZMA9Q4A
         00byUGxPoQsVwFPyeI6eqFpTcPd0Rm1v9ulxF8bQpPgWNUySWeULbMyGD7rbA0o6F+R+
         dblG2Jvc7kM3NgCk/5eLa4IojkzqebimH1L8UmZ2RltiGnRUP0vl4muS5F1HjzERQm6N
         oAyrYJbobdcDUTNMlrBGw9fAZgfdrQJyM4u6VO5j83f67ud2sLQmRvGic3oa1v8fRFYb
         TKtGF2TkmN9T/MGs0J/kprPB+v4x+91/sqepjgX1J3iS0KZWuqGETxJVPMOXwrM0OoCs
         UUyQ==
X-Forwarded-Encrypted: i=1; AFNElJ8MDvwiCp9t2ZHFVqD/9NV9nZRbNBzkfc5Vh1TNVzgdLFJCQMq6FzPvcPTn9Wc2uwLIijdjFzIeNVs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjFXdmrUs5OSSbY1CzgWGe8NaDNbIpnIwRkuhK+oF6hg8crYmB
	z1/DUIyehTzjgPYw3juzsLUFCUUeJ3hJMpzAfWjlWNNE8OJ0zjwI6wUH
X-Gm-Gg: Acq92OE3TidQGXklPge4RDouTcOBiMHumuP7xTf2mYI7pCcp2spioa9GpsA/JU0uzWb
	gu51158QPUx0XsvvW2siWNGWTzsg0rET/nKjmRtpxTJbicTGusS/prEfiQJh2E6drY3TWvh7KzK
	ZkzOh1/+nc8Xs6aX50Cfbp+j1xot+JFMIFqstvptWfwuHVE6k/HdsI8K3iIaqL2Ed1qRcHJLcr+
	1gyd4h5kIpL3LfE90k/rFLO4T4RKWiwlhqOmq8zo7fQN11LsYawSm6tExtPitAUJIxJ23oYsm3b
	Whj7edp+MqPaeSo77FDn1YlZKIi1tUIsjlh4xCB8B96wXDQRWib3TMVawULZG8hg/SVtaL66hZ5
	BgxSwUSMs1P6iSLxO6tfgNbYS08dqBhdFPWDlQEQ6eoAzD0dWwJxivSbW+q4ceehGkGbdOVKxPs
	ElQX2OQ/JUJSFKZrtXo0AICeYfHxa09Qh9mk9DRPZPuanuYQK+AMp0adsIyl3rmPgJ2VSE4US3k
	Iip5ZSOWAv+CC5lrfuW3btP48DGPsFwyg==
X-Received: by 2002:a17:90b:48cf:b0:36d:633a:e8aa with SMTP id 98e67ed59e1d1-36e30a2855amr7656208a91.13.1780567953772;
        Thu, 04 Jun 2026 03:12:33 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f70a29cd6sm2483385a91.11.2026.06.04.03.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 03:12:33 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 2/2] phy: nuvoton: Add MA35D1 USB2 OTG PHY driver
Date: Thu,  4 Jun 2026 18:12:20 +0800
Message-ID: <20260604101220.1092822-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604101220.1092822-1-a0987203069@gmail.com>
References: <20260604101220.1092822-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_031234_900203_28CC6A4E 
X-CRM114-Status: GOOD (  27.06  )
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

Add a PHY driver for the USB 2.0 PHYs in the Nuvoton MA35D1 SoC,
intended for use with the EHCI and OHCI host controllers.

The MA35D1 SoC has two USB ports:

  - USB0: an OTG port shared between a DWC2 gadget controller and
    EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
    the physical USB0 signals to the appropriate controller based on the
    USB ID pin state.  The DWC2 IP is device-only in hardware,
    so host-mode operation on USB0 is handled entirely by EHCI0/OHCI0.

  - USB1: a dedicated host-only port served by EHCI1/OHCI1.

The driver implements:
  - Power-On Reset sequence with a guard that skips re-initialization if
    the PHY is already operational.  This protects PHY0 when the DWC2
    gadget driver has already run its own init before EHCI0 probes.
  - Optional resistor calibration trim via nuvoton,rcalcode.
  - Optional over-current detect polarity via nuvoton,oc-active-high.
  - For PHY0 only: a USB role switch that exposes the hardware ID pin
    state (PWRONOTP[16]).

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 drivers/phy/nuvoton/Kconfig          |  15 ++
 drivers/phy/nuvoton/Makefile         |   1 +
 drivers/phy/nuvoton/phy-ma35d1-otg.c | 264 +++++++++++++++++++++++++++
 3 files changed, 280 insertions(+)
 create mode 100644 drivers/phy/nuvoton/phy-ma35d1-otg.c

diff --git a/drivers/phy/nuvoton/Kconfig b/drivers/phy/nuvoton/Kconfig
index d02cae2db315..5fdd13f841e7 100644
--- a/drivers/phy/nuvoton/Kconfig
+++ b/drivers/phy/nuvoton/Kconfig
@@ -10,3 +10,18 @@ config PHY_MA35_USB
 	help
 	  Enable this to support the USB2.0 PHY on the Nuvoton MA35
 	  series SoCs.
+
+config PHY_MA35_USB_OTG
+	tristate "Nuvoton MA35 USB2.0 OTG PHY driver"
+	depends on ARCH_MA35 || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	select MFD_SYSCON
+	select USB_ROLE_SWITCH
+	help
+	  Enable this to support the USB2.0 OTG PHY on the Nuvoton MA35
+	  series SoCs.  This driver handles PHY initialization for the
+	  EHCI/OHCI host controllers, including per-PHY power-on reset,
+	  resistor calibration trim, and over-current polarity
+	  configuration.  For the OTG port (PHY0), it also monitors the
+	  USB ID pin and registers a USB role switch.
diff --git a/drivers/phy/nuvoton/Makefile b/drivers/phy/nuvoton/Makefile
index 2937e3921898..3ecd76f35d7c 100644
--- a/drivers/phy/nuvoton/Makefile
+++ b/drivers/phy/nuvoton/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_PHY_MA35_USB)		+= phy-ma35d1-usb2.o
+obj-$(CONFIG_PHY_MA35_USB_OTG)		+= phy-ma35d1-otg.o
diff --git a/drivers/phy/nuvoton/phy-ma35d1-otg.c b/drivers/phy/nuvoton/phy-ma35d1-otg.c
new file mode 100644
index 000000000000..53bc6ddf755e
--- /dev/null
+++ b/drivers/phy/nuvoton/phy-ma35d1-otg.c
@@ -0,0 +1,264 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Nuvoton MA35D1 USB 2.0 OTG PHY driver
+ *
+ * PHY0 (USB0) is shared between DWC2 gadget and EHCI0/OHCI0 host
+ * controllers. The hardware mux switches automatically via the USB
+ * ID pin. PHY1 (USB1) is host-only.
+ *
+ * Copyright (C) 2026 Nuvoton Technology Corp.
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
+#include <linux/usb/role.h>
+
+#define MA35_SYS_PWRONOTP		0x04
+#define PWRONOTP_USBP0ID		BIT(16)
+
+#define MA35_SYS_USBPMISCR		0x60
+#define USBPMISCR_PHY_POR(n)		BIT(0 + (n) * 16)
+#define USBPMISCR_PHY_SUSPEND(n)	BIT(1 + (n) * 16)
+#define USBPMISCR_PHY_COMN(n)		BIT(2 + (n) * 16)
+#define USBPMISCR_PHY_HSTCKSTB(n)	BIT(8 + (n) * 16)
+#define USBPMISCR_PHY_CK12MSTB(n)	BIT(9 + (n) * 16)
+/* Mask for control bits (POR, SUSPEND, COMN) of one PHY */
+#define USBPMISCR_PHY_CTL_MASK(n)	(0x7 << ((n) * 16))
+/* Host-mode ready: SUSPEND + HSTCKSTB + CK12MSTB */
+#define USBPMISCR_PHY_HOST_READY(n)	(USBPMISCR_PHY_SUSPEND(n)  | \
+					 USBPMISCR_PHY_HSTCKSTB(n) | \
+					 USBPMISCR_PHY_CK12MSTB(n))
+/* RCALCODE: 4-bit resistor trim at bits [15:12] (PHY0) or [31:28] (PHY1) */
+#define USBPMISCR_RCAL_SHIFT(n)		(12 + (n) * 16)
+#define USBPMISCR_RCAL_MASK(n)		GENMASK(USBPMISCR_RCAL_SHIFT(n) + 3, \
+						USBPMISCR_RCAL_SHIFT(n))
+
+#define MA35_SYS_MISCFCR0		0x70
+/* MISCFCR0[12]: USB host over-current detect polarity (shared, both ports) */
+#define MISCFCR0_UHOVRCURH		BIT(12)
+
+struct ma35_otg_phy {
+	struct clk *clk;
+	struct device *dev;
+	struct regmap *sysreg;
+	unsigned int phy_idx;
+	struct usb_role_switch *role_sw;
+	enum usb_role cur_role;
+};
+
+static int ma35_otg_phy_init(struct phy *phy)
+{
+	struct ma35_otg_phy *p = phy_get_drvdata(phy);
+	unsigned int n = p->phy_idx;
+	u32 ready_mask = USBPMISCR_PHY_HOST_READY(n);
+	unsigned int val;
+	int ret;
+
+	regmap_read(p->sysreg, MA35_SYS_USBPMISCR, &val);
+	if ((val & ready_mask) == ready_mask)
+		return 0;
+
+	regmap_update_bits(p->sysreg, MA35_SYS_USBPMISCR,
+			   USBPMISCR_PHY_CTL_MASK(n),
+			   USBPMISCR_PHY_POR(n) | USBPMISCR_PHY_SUSPEND(n));
+	msleep(20);
+
+	regmap_update_bits(p->sysreg, MA35_SYS_USBPMISCR,
+			   USBPMISCR_PHY_CTL_MASK(n),
+			   USBPMISCR_PHY_SUSPEND(n));
+
+	ret = regmap_read_poll_timeout(p->sysreg, MA35_SYS_USBPMISCR, val,
+				       (val & ready_mask) == ready_mask,
+				       10, 1000);
+	if (ret) {
+		dev_err(p->dev, "USB PHY%u clock not stable (USBPMISCR=0x%08x)\n",
+			n, val);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int ma35_otg_phy_power_on(struct phy *phy)
+{
+	struct ma35_otg_phy *p = phy_get_drvdata(phy);
+
+	return clk_prepare_enable(p->clk);
+}
+
+static int ma35_otg_phy_power_off(struct phy *phy)
+{
+	struct ma35_otg_phy *p = phy_get_drvdata(phy);
+
+	clk_disable_unprepare(p->clk);
+	return 0;
+}
+
+static const struct phy_ops ma35_otg_phy_ops = {
+	.init = ma35_otg_phy_init,
+	.power_on = ma35_otg_phy_power_on,
+	.power_off = ma35_otg_phy_power_off,
+	.owner = THIS_MODULE,
+};
+
+static enum usb_role ma35_otg_read_id(struct ma35_otg_phy *p)
+{
+	unsigned int val;
+
+	regmap_read(p->sysreg, MA35_SYS_PWRONOTP, &val);
+	return (val & PWRONOTP_USBP0ID) ? USB_ROLE_HOST : USB_ROLE_DEVICE;
+}
+
+static int ma35_otg_role_sw_set(struct usb_role_switch *sw,
+				enum usb_role role)
+{
+	struct ma35_otg_phy *p = usb_role_switch_get_drvdata(sw);
+
+	p->cur_role = role;
+
+	return 0;
+}
+
+static enum usb_role ma35_otg_role_sw_get(struct usb_role_switch *sw)
+{
+	struct ma35_otg_phy *p = usb_role_switch_get_drvdata(sw);
+
+	return ma35_otg_read_id(p);
+}
+
+static int ma35_otg_role_switch_init(struct platform_device *pdev,
+				     struct ma35_otg_phy *p)
+{
+	struct usb_role_switch_desc sw_desc = { };
+
+	p->cur_role = ma35_otg_read_id(p);
+
+	sw_desc.set = ma35_otg_role_sw_set;
+	sw_desc.get = ma35_otg_role_sw_get;
+	sw_desc.allow_userspace_control = true;
+	sw_desc.driver_data = p;
+	sw_desc.fwnode = dev_fwnode(&pdev->dev);
+
+	p->role_sw = usb_role_switch_register(&pdev->dev, &sw_desc);
+	if (IS_ERR(p->role_sw))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p->role_sw),
+				     "failed to register role switch\n");
+
+	return 0;
+}
+
+static void ma35_otg_role_switch_exit(struct ma35_otg_phy *p)
+{
+	if (!p->role_sw)
+		return;
+
+	usb_role_switch_unregister(p->role_sw);
+	p->role_sw = NULL;
+}
+
+static int ma35_otg_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *provider;
+	struct ma35_otg_phy *p;
+	unsigned int sys_args[1];
+	struct phy *phy;
+	u32 rcalcode;
+	int ret;
+
+	p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
+	if (!p)
+		return -ENOMEM;
+
+	p->dev = &pdev->dev;
+	platform_set_drvdata(pdev, p);
+
+	p->sysreg = syscon_regmap_lookup_by_phandle_args(pdev->dev.of_node,
+							 "nuvoton,sys",
+							 1, sys_args);
+	if (IS_ERR(p->sysreg))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p->sysreg),
+				     "Failed to get SYS regmap\n");
+
+	p->phy_idx = sys_args[0];
+
+	if (p->phy_idx > 1)
+		return dev_err_probe(&pdev->dev, -EINVAL,
+				     "invalid PHY index %u (must be 0 or 1)\n",
+				     p->phy_idx);
+
+	p->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(p->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(p->clk),
+				     "failed to get PHY clock\n");
+
+	if (!of_property_read_u32(pdev->dev.of_node, "nuvoton,rcalcode",
+				  &rcalcode)) {
+		if (rcalcode > 15)
+			return dev_err_probe(&pdev->dev, -EINVAL,
+					     "rcalcode %u out of range (0-15)\n",
+					     rcalcode);
+		regmap_update_bits(p->sysreg, MA35_SYS_USBPMISCR,
+				   USBPMISCR_RCAL_MASK(p->phy_idx),
+				   rcalcode << USBPMISCR_RCAL_SHIFT(p->phy_idx));
+	}
+
+	if (of_property_read_bool(pdev->dev.of_node, "nuvoton,oc-active-high"))
+		regmap_update_bits(p->sysreg, MA35_SYS_MISCFCR0,
+				   MISCFCR0_UHOVRCURH, MISCFCR0_UHOVRCURH);
+
+	phy = devm_phy_create(&pdev->dev, pdev->dev.of_node, &ma35_otg_phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(&pdev->dev, PTR_ERR(phy),
+				     "Failed to create PHY\n");
+
+	phy_set_drvdata(phy, p);
+
+	provider = devm_of_phy_provider_register(&pdev->dev,
+						 of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(&pdev->dev, PTR_ERR(provider),
+				     "Failed to register PHY provider\n");
+
+	if (p->phy_idx == 0) {
+		ret = ma35_otg_role_switch_init(pdev, p);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void ma35_otg_phy_remove(struct platform_device *pdev)
+{
+	struct ma35_otg_phy *p = platform_get_drvdata(pdev);
+
+	ma35_otg_role_switch_exit(p);
+}
+
+static const struct of_device_id ma35_otg_phy_of_match[] = {
+	{ .compatible = "nuvoton,ma35d1-usb2-phy-otg" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ma35_otg_phy_of_match);
+
+static struct platform_driver ma35_otg_phy_driver = {
+	.probe	= ma35_otg_phy_probe,
+	.remove	= ma35_otg_phy_remove,
+	.driver	= {
+		.name		= "ma35d1-usb2-phy-otg",
+		.of_match_table	= ma35_otg_phy_of_match,
+	},
+};
+module_platform_driver(ma35_otg_phy_driver);
+
+MODULE_DESCRIPTION("Nuvoton MA35D1 USB 2.0 OTG PHY driver");
+MODULE_AUTHOR("Joey Lu <a0987203069@gmail.com>");
+MODULE_LICENSE("GPL");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
