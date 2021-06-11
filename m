Return-Path: <SRS0=gvcI=LF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E25CFC48BD1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 13:46:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC2EE613C3
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 13:46:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC2EE613C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4q/mMwWGS/jmhrvAY9Az4mGbxYNYMfd7oinCegeUEyA=; b=WBE6qTylgNHWpD
	NvdiIX8hf0aL2Wfue1iLa0Et8AnoOtKGq8ZVsw5ApgvvBTzpA5I9g689JmHI0gxPLEANk7WzbZpMB
	yHCjO0Vzr5xjajUL9b5q2uCuGXFNhHGgIzf1vS849ooac093Uac1sIykgogLefcywP8LUJq0sq9OK
	+2L5suu9X0TqamaxQXPPnOhlGYWBFdFjBprwql7HgjDeTFgB0r4WSu2jFTSo5SssGbZ97BpvpeQZU
	7ucATRfG0PsfyXZSwXrwyHig0LlWAbBruD47ew3tymipJ6MEL45f+4eIaMJ0ccMtillCAacYyVRPB
	eB7gHTu0JheWgKhhe8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrhUx-005QzU-9e; Fri, 11 Jun 2021 13:46:59 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrhUt-005Qys-VZ
 for linux-phy@lists.infradead.org; Fri, 11 Jun 2021 13:46:57 +0000
X-IronPort-AV: E=Sophos;i="5.83,265,1616425200"; d="scan'208";a="84106307"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 11 Jun 2021 22:46:55 +0900
Received: from localhost.localdomain (unknown [10.226.92.121])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 3B8554274BC9;
 Fri, 11 Jun 2021 22:46:53 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH 3/6] phy: renesas: Add RZ/G2L usb phy control driver
Date: Fri, 11 Jun 2021 14:46:39 +0100
Message-Id: <20210611134642.24029-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
References: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_064656_148075_F48DFCF6 
X-CRM114-Status: GOOD (  18.86  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add support for RZ/G2L USB PHY Control driver.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/Kconfig                |   7 +
 drivers/phy/renesas/Makefile               |   1 +
 drivers/phy/renesas/phy-rzg2l-usbphyctrl.c | 163 +++++++++++++++++++++
 3 files changed, 171 insertions(+)
 create mode 100644 drivers/phy/renesas/phy-rzg2l-usbphyctrl.c

diff --git a/drivers/phy/renesas/Kconfig b/drivers/phy/renesas/Kconfig
index 111bdcae775c..2184fba12255 100644
--- a/drivers/phy/renesas/Kconfig
+++ b/drivers/phy/renesas/Kconfig
@@ -32,3 +32,10 @@ config PHY_RCAR_GEN3_USB3
 	select GENERIC_PHY
 	help
 	  Support for USB 3.0 PHY found on Renesas R-Car generation 3 SoCs.
+
+config PHY_RZG2L_USBPHYCTRL
+	tristate "Renesas RZ/G2L USB PHY control driver"
+	depends on ARCH_RENESAS || COMPILE_TEST
+	select GENERIC_PHY
+	help
+	  Support for USB PHY Control found on RZ/G2L SoCs.
diff --git a/drivers/phy/renesas/Makefile b/drivers/phy/renesas/Makefile
index b599ff8a4349..62acc6bde5cb 100644
--- a/drivers/phy/renesas/Makefile
+++ b/drivers/phy/renesas/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_PHY_RCAR_GEN2)		+= phy-rcar-gen2.o
 obj-$(CONFIG_PHY_RCAR_GEN3_PCIE)	+= phy-rcar-gen3-pcie.o
 obj-$(CONFIG_PHY_RCAR_GEN3_USB2)	+= phy-rcar-gen3-usb2.o
 obj-$(CONFIG_PHY_RCAR_GEN3_USB3)	+= phy-rcar-gen3-usb3.o
+obj-$(CONFIG_PHY_RZG2L_USBPHYCTRL)	+= phy-rzg2l-usbphyctrl.o
diff --git a/drivers/phy/renesas/phy-rzg2l-usbphyctrl.c b/drivers/phy/renesas/phy-rzg2l-usbphyctrl.c
new file mode 100644
index 000000000000..7176f18b28d2
--- /dev/null
+++ b/drivers/phy/renesas/phy-rzg2l-usbphyctrl.c
@@ -0,0 +1,163 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Renesas RZ/G2L USB PHY control driver
+ *
+ * Copyright (C) 2021 Renesas Electronics Corporation
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+
+#define RESET			0x000
+
+#define SEL_PLLRESET		BIT(12)
+#define PLL_RESET		BIT(8)
+
+#define PHY_RESET_PORT2		(BIT(1) | BIT(5))
+#define PHY_RESET_PORT1		(BIT(0) | BIT(4))
+
+#define NUM_PORTS		2
+
+struct rzg2l_usbphycontrol_drv;
+
+struct rzg2l_phyctrl {
+	struct phy *phy;
+	struct rzg2l_usbphycontrol_drv *drv;
+	u32 phy_reset_port_mask;
+};
+
+struct rzg2l_usbphycontrol_drv {
+	void __iomem *base;
+	struct rzg2l_phyctrl phyctrl[NUM_PORTS];
+};
+
+static int rzg2l_usbphyctrl_init(struct phy *p)
+{
+	struct rzg2l_phyctrl *r = phy_get_drvdata(p);
+	struct rzg2l_usbphycontrol_drv *drv = r->drv;
+	void __iomem *base = drv->base;
+	u32 val = readl(base + RESET);
+
+	val |= SEL_PLLRESET;
+	val &= ~(PLL_RESET | r->phy_reset_port_mask);
+	writel(val, base + RESET);
+
+	return 0;
+}
+
+static int rzg2l_usbphyctrl_exit(struct phy *p)
+{
+	struct rzg2l_phyctrl *r = phy_get_drvdata(p);
+	struct rzg2l_usbphycontrol_drv *drv = r->drv;
+	void __iomem *base = drv->base;
+	u32 val = readl(base + RESET);
+
+	val |= r->phy_reset_port_mask;
+	if ((val & 0xFF) == (PHY_RESET_PORT1 | PHY_RESET_PORT2))
+		val |= PLL_RESET;
+	writel(val, base + RESET);
+	return 0;
+}
+
+static const struct phy_ops rzg2l_usbphyctrl_ops = {
+	.init		= rzg2l_usbphyctrl_init,
+	.exit		= rzg2l_usbphyctrl_exit,
+	.owner		= THIS_MODULE,
+};
+
+static const struct of_device_id rzg2l_usbphyctrl_match_table[] = {
+	{ .compatible = "renesas,rzg2l-usbphyctrl" },
+	{ /* Sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, rzg2l_usbphyctrl_match_table);
+
+static struct phy *rzg2l_usbphycontrol_xlate(struct device *dev,
+					     struct of_phandle_args *args)
+{
+	struct rzg2l_usbphycontrol_drv *drv;
+	struct rzg2l_phyctrl *r;
+
+	drv = dev_get_drvdata(dev);
+	if (!drv)
+		return ERR_PTR(-EINVAL);
+
+	if (args->args[0] >= NUM_PORTS)
+		return ERR_PTR(-ENODEV);
+
+	r = &drv->phyctrl[args->args[0]];
+
+	return r->phy;
+}
+
+static int rzg2l_usbphycontrol_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rzg2l_usbphycontrol_drv *drv;
+	struct phy_provider *provider;
+	u32 val;
+	int n;
+
+	if (!dev->of_node) {
+		dev_err(dev, "device tree not found\n");
+		return -EINVAL;
+	}
+
+	drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
+	if (!drv)
+		return -ENOMEM;
+
+	drv->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(drv->base))
+		return PTR_ERR(drv->base);
+
+	for (n = 0; n < NUM_PORTS; n++) {
+		struct rzg2l_phyctrl *phy = &drv->phyctrl[n];
+
+		phy->phy = devm_phy_create(dev, NULL, &rzg2l_usbphyctrl_ops);
+		if (IS_ERR(phy->phy)) {
+			dev_err(dev, "Failed to create USBPHY Control\n");
+			return PTR_ERR(phy->phy);
+		}
+
+		if (n == 1)
+			phy->phy_reset_port_mask = PHY_RESET_PORT2;
+		else
+			phy->phy_reset_port_mask = PHY_RESET_PORT1;
+
+		phy->drv = drv;
+		phy_set_drvdata(phy->phy, phy);
+	};
+
+	provider = devm_of_phy_provider_register(dev,
+						 rzg2l_usbphycontrol_xlate);
+	if (IS_ERR(provider)) {
+		dev_err(dev, "Failed to register PHY provider\n");
+		return PTR_ERR(provider);
+	}
+
+	dev_set_drvdata(dev, drv);
+
+	/* put pll and phy into reset state */
+	val = readl(drv->base + RESET);
+	val |= SEL_PLLRESET | PLL_RESET | PHY_RESET_PORT2 | PHY_RESET_PORT1;
+	writel(val, drv->base + RESET);
+
+	return 0;
+}
+
+static struct platform_driver rzg2l_usbphyctrl_driver = {
+	.driver = {
+		.name		= "rzg2l_usbphyctrl",
+		.of_match_table	= rzg2l_usbphyctrl_match_table,
+	},
+	.probe	= rzg2l_usbphycontrol_probe,
+};
+module_platform_driver(rzg2l_usbphyctrl_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Renesas RZ/G2L USBPHYControl");
+MODULE_AUTHOR("biju.das.jz@bp.renesas.com>");
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
