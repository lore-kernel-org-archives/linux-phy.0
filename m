Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48236CF9C77
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rgtBPWFzxjpsvpNUC7WwR1Fx1kNncFz1B6FScTw3eMU=; b=p4k8LB4PMsWVLpIAmuhnpcYd8c
	3wV+9I99N0lIj126xdVOCuAH3t0AlvKLBBkWSX8MvK4wfQoIfkATgURcfraqMXco6S4SXjieRMrPG
	wXXke/fzArzO5A8qSE1lW+JBGeQjSMTS8cnN6Y/paStitmELmPH4YGxc7MoTw7et14NTKUoBD0y55
	LBL32dt7k1za230JbWvD23YF5BZ4cdpJrF3qUMPBwUTuMahaOi2L8yx7Xtr8zzGcr/ZjIUU8cMAZ0
	CVdhrQIaeJT4165YZ0pl7xh/Ecs75px8IjjVWS+xXnpG4qXvFHv4a+dwNpvfwxD9UX195L1pLoG8R
	hlaxQMog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8ai-00000007AT5-0Eaz;
	Thu, 20 Nov 2025 17:37:08 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8ad-00000007APw-0EB1
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:37:04 +0000
Received: by mail-pg1-x54a.google.com with SMTP id 41be03b00d2f7-b5533921eb2so2244363a12.0
        for <linux-phy@lists.infradead.org>; Thu, 20 Nov 2025 09:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1763660222; x=1764265022; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=r0pYWr10zORS7AAoxyhKFhMXi51TPD7ie0xcMmncmXI=;
        b=kDI7Z9QylKbjh1BX7Quy9la41MTJLJ36gIU3Ml5H/8NjrV+C+V7lQ2KvsnN7hSvvVb
         +YnZ1A6b3Xol7bLGjHPB8idwdrCJVYzYhtyp6L30OLbrMbY7B3EWlJMjyYrdSBTALgl5
         uZhIMtw+roVCIlynA1tEyES972KfKxQtgjzba9P64ulo/lpY5ghVVyls77ltYql7V3Wd
         GsLQnVS1aqMIxJQwEUiTu6bzfeeqrgYPTdSrgaEMCD0SKkh5F6mX8eH6knYRWRIeir8X
         kaZx4gq3tcvpL1037bGcqcBrGnqAy2OFMOxEWMu2WdbikJWZxZjBuEqtTGoCvDC6RLk3
         OUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763660222; x=1764265022;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r0pYWr10zORS7AAoxyhKFhMXi51TPD7ie0xcMmncmXI=;
        b=Lz3DGAq8a06ksErPiSFfmJDAGmY+u1PuG3WD5Fe/hx8dkXJP8MSAMxzUeuCuaIvZ6d
         ROi9SIYyXN8G7J0TF9x81ROXRr2Ekfl8feI8m9DnVXSSWAcUCn8VM7V6L+Xx/osaGltB
         6iuqbtTrqdw/fXfDpPrV0RmuvF+QcOjVowk/yCfjzbF0g1sYQg9A522FIFVyOR6p1p0W
         EkNwG+ZcEqlXKv8QXQw1xSqZNwPPqwThMmUKKWVmG4vO+PO/iouVQSdG94Ioc4ogUE91
         1VeclCIyDak1BspjauDq6MrdTuzr30Tn2b6GLr7udmJ3v09Nn9PBwJQmEzea4PvusifU
         UUWA==
X-Forwarded-Encrypted: i=1; AJvYcCViIh5D05z6MPooy+VI5LqZBrsxHVTjBxB5McolBcC0oJjzhHjcATcIelSfBDjooWzQDJOwEIWBKHA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yycv8tlHhjgGWRpsQel+sQnLIcQyUZq3N8O9RUv92CAqSbz4Cy2
	plzjZd35FCcnfBLhSQ1t2fNYLSCn23iEWppVdatx7tqQHUbqdOhjEcljrdK35MycmWl+VfrmV54
	fX/5WMw==
X-Google-Smtp-Source: AGHT+IGMr93AWTguT94j6RJ15glPG/ytwr9IWzEBwk0AAQGWW2Q09APJE6CTs2QyROOvqrZmqwVoZFMD8B8=
X-Received: from dlbvp8.prod.google.com ([2002:a05:7022:ff48:b0:119:49ca:6ba3])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:ff42:b0:119:e56b:957b
 with SMTP id a92af1059eb24-11c9bc9ace2mr4504c88.0.1763660221559; Thu, 20 Nov
 2025 09:37:01 -0800 (PST)
Date: Thu, 20 Nov 2025 17:36:42 +0000
In-Reply-To: <20251120-phyb4-v6-0-b6694e1f0caf@google.com>
Mime-Version: 1.0
References: <20251120-phyb4-v6-0-b6694e1f0caf@google.com>
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763660216; l=11357;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=JthHQZ0hDV/qVs0AZiaQnkr3kwkZABgCK3oU2Afa/C0=; b=BQBY0GxRDVwsRKTpeDV6FW7nwmEWxlgskhL+5Bc8yzbCME0adfUKfG3AGFUyoZI1z1hm7pGbQ
 yadcVve2EHuC/MUGTXnXfra5bDBLgownCnhibkzPzownKiEHFBglEHH
X-Mailer: b4 0.14.2
Message-ID: <20251120-phyb4-v6-2-b6694e1f0caf@google.com>
Subject: [PATCH v6 2/2] phy: Add Google Tensor SoC USB PHY driver
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_093703_105095_3BD67C6C 
X-CRM114-Status: GOOD (  22.78  )
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

Support the USB PHY found on Google Tensor G5 (Laguna). This
particular USB PHY supports both high-speed and super-speed
operations, and is integrated with the SNPS DWC3 controller that's
also on the SoC. This initial patch specifically adds functionality
for high-speed.

Co-developed-by: Joy Chakraborty <joychakr@google.com>
Signed-off-by: Joy Chakraborty <joychakr@google.com>
Co-developed-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
 drivers/phy/Kconfig          |  13 ++
 drivers/phy/Makefile         |   1 +
 drivers/phy/phy-google-usb.c | 292 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 306 insertions(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 678dd0452f0aa0597773433f04d2a9ba77474d2a..af14ec74542a9879c856dee8236753990fdf3705 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -101,6 +101,19 @@ config PHY_NXP_PTN3222
 	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
 	  Speed and High Speed.
 
+config PHY_GOOGLE_USB
+	tristate "Google Tensor SoC USB PHY driver"
+	depends on HAS_IOMEM
+	depends on OF
+	depends on TYPEC
+	select GENERIC_PHY
+	help
+	  Enable support for the USB PHY on Google Tensor SoCs, starting with
+	  the G5 generation. This driver provides the PHY interfaces to
+	  interact with the SNPS eUSB2 and USB 3.2/DisplayPort Combo PHY, both
+	  of which are integrated with the DWC3 USB DRD controller.
+	  This driver currently supports USB high-speed.
+
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/broadcom/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index bfb27fb5a494283d7fd05dd670ebd1b12df8b1a1..aeaaaf988554a24bb572d8b34b54638a6a3aed73 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
 obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
+obj-$(CONFIG_PHY_GOOGLE_USB)		+= phy-google-usb.o
 obj-y					+= allwinner/	\
 					   amlogic/	\
 					   broadcom/	\
diff --git a/drivers/phy/phy-google-usb.c b/drivers/phy/phy-google-usb.c
new file mode 100644
index 0000000000000000000000000000000000000000..23b988cc5292111872c4acb32f7666e0ce9a39a3
--- /dev/null
+++ b/drivers/phy/phy-google-usb.c
@@ -0,0 +1,292 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * phy-google-usb.c - Google USB PHY driver
+ *
+ * Copyright (C) 2025, Google LLC
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/mutex.h>
+#include <linux/cleanup.h>
+#include <linux/usb/typec_mux.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
+
+#define USBCS_USB2PHY_CFG19_OFFSET 0x0
+#define USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV GENMASK(19, 8)
+
+#define USBCS_USB2PHY_CFG21_OFFSET 0x8
+#define USBCS_USB2PHY_CFG21_PHY_ENABLE BIT(12)
+#define USBCS_USB2PHY_CFG21_REF_FREQ_SEL GENMASK(15, 13)
+#define USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL BIT(19)
+
+#define USBCS_PHY_CFG1_OFFSET 0x28
+#define USBCS_PHY_CFG1_SYS_VBUSVALID BIT(17)
+
+enum google_usb_phy_id {
+	GOOGLE_USB2_PHY,
+	GOOGLE_USB_PHY_NUM,
+};
+
+struct google_usb_phy_instance {
+	int index;
+	struct phy *phy;
+	int num_clks;
+	struct clk_bulk_data *clks;
+	int num_rsts;
+	struct reset_control_bulk_data *rsts;
+};
+
+struct google_usb_phy {
+	struct device *dev;
+	struct regmap *usb_cfg_regmap;
+	unsigned int usb2_cfg_offset;
+	void __iomem *usbdp_top_base;
+	struct google_usb_phy_instance insts[GOOGLE_USB_PHY_NUM];
+	/* serialize phy access */
+	struct mutex phy_mutex;
+	struct typec_switch_dev *sw;
+	enum typec_orientation orientation;
+};
+
+static inline struct google_usb_phy *to_google_usb_phy(struct google_usb_phy_instance *inst)
+{
+	return container_of(inst, struct google_usb_phy, insts[inst->index]);
+}
+
+static void set_vbus_valid(struct google_usb_phy *gphy)
+{
+	u32 reg;
+
+	if (gphy->orientation == TYPEC_ORIENTATION_NONE) {
+		reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
+		reg &= ~USBCS_PHY_CFG1_SYS_VBUSVALID;
+		writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
+	} else {
+		reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
+		reg |= USBCS_PHY_CFG1_SYS_VBUSVALID;
+		writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
+	}
+}
+
+static int google_usb_set_orientation(struct typec_switch_dev *sw,
+				      enum typec_orientation orientation)
+{
+	struct google_usb_phy *gphy = typec_switch_get_drvdata(sw);
+
+	dev_dbg(gphy->dev, "set orientation %d\n", orientation);
+
+	gphy->orientation = orientation;
+
+	if (pm_runtime_suspended(gphy->dev))
+		return 0;
+
+	guard(mutex)(&gphy->phy_mutex);
+
+	set_vbus_valid(gphy);
+
+	return 0;
+}
+
+static int google_usb2_phy_init(struct phy *_phy)
+{
+	struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
+	struct google_usb_phy *gphy = to_google_usb_phy(inst);
+	u32 reg;
+	int ret = 0;
+
+	dev_dbg(gphy->dev, "initializing usb2 phy\n");
+
+	guard(mutex)(&gphy->phy_mutex);
+
+	regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
+	reg &= ~USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL;
+	reg &= ~USBCS_USB2PHY_CFG21_REF_FREQ_SEL;
+	reg |= FIELD_PREP(USBCS_USB2PHY_CFG21_REF_FREQ_SEL, 0);
+	regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
+
+	regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG19_OFFSET, &reg);
+	reg &= ~USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV;
+	reg |= FIELD_PREP(USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV, 368);
+	regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG19_OFFSET, reg);
+
+	set_vbus_valid(gphy);
+
+	ret = clk_bulk_prepare_enable(inst->num_clks, inst->clks);
+	if (ret)
+		return ret;
+
+	ret = reset_control_bulk_deassert(inst->num_rsts, inst->rsts);
+	if (ret) {
+		clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
+		return ret;
+	}
+
+	regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
+	reg |= USBCS_USB2PHY_CFG21_PHY_ENABLE;
+	regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
+
+	return ret;
+}
+
+static int google_usb2_phy_exit(struct phy *_phy)
+{
+	struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
+	struct google_usb_phy *gphy = to_google_usb_phy(inst);
+	u32 reg;
+
+	dev_dbg(gphy->dev, "exiting usb2 phy\n");
+
+	guard(mutex)(&gphy->phy_mutex);
+
+	regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
+	reg &= ~USBCS_USB2PHY_CFG21_PHY_ENABLE;
+	regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
+
+	reset_control_bulk_assert(inst->num_rsts, inst->rsts);
+	clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
+
+	return 0;
+}
+
+static const struct phy_ops google_usb2_phy_ops = {
+	.init		= google_usb2_phy_init,
+	.exit		= google_usb2_phy_exit,
+};
+
+static struct phy *google_usb_phy_xlate(struct device *dev,
+					const struct of_phandle_args *args)
+{
+	struct google_usb_phy *gphy = dev_get_drvdata(dev);
+
+	if (args->args[0] >= GOOGLE_USB_PHY_NUM) {
+		dev_err(dev, "invalid PHY index requested from DT\n");
+		return ERR_PTR(-ENODEV);
+	}
+	return gphy->insts[args->args[0]].phy;
+}
+
+static int google_usb_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct google_usb_phy *gphy;
+	struct phy *phy;
+	struct google_usb_phy_instance *inst;
+	struct phy_provider *phy_provider;
+	struct typec_switch_desc sw_desc = { };
+	u32 args[1];
+	int ret;
+
+	gphy = devm_kzalloc(dev, sizeof(*gphy), GFP_KERNEL);
+	if (!gphy)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, gphy);
+	gphy->dev = dev;
+
+	ret = devm_mutex_init(dev, &gphy->phy_mutex);
+	if (ret)
+		return ret;
+
+	gphy->usb_cfg_regmap =
+		syscon_regmap_lookup_by_phandle_args(dev->of_node,
+						     "google,usb-cfg-csr",
+						     ARRAY_SIZE(args), args);
+	if (IS_ERR(gphy->usb_cfg_regmap)) {
+		return dev_err_probe(dev, PTR_ERR(gphy->usb_cfg_regmap),
+				     "invalid usb cfg csr\n");
+	}
+
+	gphy->usb2_cfg_offset = args[0];
+
+	gphy->usbdp_top_base = devm_platform_ioremap_resource_byname(pdev,
+								     "usbdp_top");
+	if (IS_ERR(gphy->usbdp_top_base))
+		return dev_err_probe(dev, PTR_ERR(gphy->usbdp_top_base),
+				    "invalid usbdp top\n");
+
+	inst = &gphy->insts[GOOGLE_USB2_PHY];
+	inst->index = GOOGLE_USB2_PHY;
+	phy = devm_phy_create(dev, NULL, &google_usb2_phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy),
+				     "failed to create usb2 phy instance\n");
+	inst->phy = phy;
+	phy_set_drvdata(phy, inst);
+
+	inst->num_clks = 2;
+	inst->clks = devm_kcalloc(dev, inst->num_clks, sizeof(*inst->clks), GFP_KERNEL);
+	if (!inst->clks)
+		return -ENOMEM;
+	inst->clks[0].id = "usb2";
+	inst->clks[1].id = "usb2_apb";
+	ret = devm_clk_bulk_get(dev, inst->num_clks, inst->clks);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get u2 phy clks\n");
+
+	inst->num_rsts = 2;
+	inst->rsts = devm_kcalloc(dev, inst->num_rsts, sizeof(*inst->rsts), GFP_KERNEL);
+	if (!inst->rsts)
+		return -ENOMEM;
+	inst->rsts[0].id = "usb2";
+	inst->rsts[1].id = "usb2_apb";
+	ret = devm_reset_control_bulk_get_exclusive(dev, inst->num_rsts, inst->rsts);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get u2 phy resets\n");
+
+	phy_provider = devm_of_phy_provider_register(dev, google_usb_phy_xlate);
+	if (IS_ERR(phy_provider))
+		return dev_err_probe(dev, PTR_ERR(phy_provider),
+				     "failed to register phy provider\n");
+
+	pm_runtime_enable(dev);
+
+	sw_desc.fwnode = dev_fwnode(dev);
+	sw_desc.drvdata = gphy;
+	sw_desc.name = fwnode_get_name(dev_fwnode(dev));
+	sw_desc.set = google_usb_set_orientation;
+
+	gphy->sw = typec_switch_register(dev, &sw_desc);
+	if (IS_ERR(gphy->sw))
+		return dev_err_probe(dev, PTR_ERR(gphy->sw),
+				     "failed to register typec switch\n");
+
+	return 0;
+}
+
+static void google_usb_phy_remove(struct platform_device *pdev)
+{
+	struct google_usb_phy *gphy = dev_get_drvdata(&pdev->dev);
+
+	typec_switch_unregister(gphy->sw);
+	pm_runtime_disable(&pdev->dev);
+}
+
+static const struct of_device_id google_usb_phy_of_match[] = {
+	{
+		.compatible = "google,lga-usb-phy",
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, google_usb_phy_of_match);
+
+static struct platform_driver google_usb_phy = {
+	.probe	= google_usb_phy_probe,
+	.remove = google_usb_phy_remove,
+	.driver = {
+		.name		= "google-usb-phy",
+		.of_match_table	= google_usb_phy_of_match,
+	}
+};
+
+module_platform_driver(google_usb_phy);
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Google USB phy driver");

-- 
2.52.0.rc1.455.g30608eb744-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
