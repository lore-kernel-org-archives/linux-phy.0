Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 688B0C25B76
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jun 2024 11:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1F65XSmNr5vaHqUrf4ShqtQJH2nDLYE6MlFigCfQYo=; b=G2uFiBfVgYu+Md
	KSbGaB3DIUzDNpt4REKO7LKkdvwJIusP6brjK0j5+2FW0/oa1Svx1/NVhnf4bH/FAJUQGMjo9v9lR
	fBs8Qw/sdmbquZ4x1iY7vKRzkeRRP00ptXHcnb2hTr4N8VilesobQyh7UpoR4L+orrLrDNE4bUxrA
	0bzltI2ZEv6fDQ+bH6O6hs1ijJnPQRYoW5I6pLiAsvUwU3niyA3uCwTKwdD3TmZUYi+IYHEKI9XeK
	yQQlxEScssQG6ucLsZR7gBN8tww7NYQLSc6g0ko+gnNs/MHsXA63wPpha4kBTKI5/NfvPcZBqxd8t
	lvTD/w10tbu43JX7QEtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzIw-00000008ZPL-0BvC;
	Tue, 11 Jun 2024 11:04:42 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzIm-00000008ZMq-3y1I
	for linux-phy@lists.infradead.org;
	Tue, 11 Jun 2024 11:04:35 +0000
X-IronPort-AV: E=Sophos;i="6.08,229,1712588400"; 
   d="scan'208";a="207488208"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 11 Jun 2024 20:04:32 +0900
Received: from localhost.localdomain (unknown [10.226.93.49])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 6C7A940078D0;
	Tue, 11 Jun 2024 20:04:27 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v3 4/6] regulator: Add Renesas RZ/G2L USB VBUS regulator driver
Date: Tue, 11 Jun 2024 12:04:00 +0100
Message-Id: <20240611110402.58104-5-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
References: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_040433_134107_44AD9221 
X-CRM114-Status: GOOD (  17.99  )
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

As per the RZ/G2L HW manual, VBUSEN can be controlled by the VBOUT
bit of the VBUS Control Register. This register is mapped in the reset
framework. The reset driver expose this register as regmap and instantiates
this driver. The consumer will use the regulator API to control the VBOUT
bit as the control need to be done in the atomic context.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * Dropped vbus_voltages table
 * Added support for enabling/disabling regulator through regmap API's
 * Updated rzg2l_usb_vbus_rdesc with enable_{reg,mask}, fixed_uV and
   n_voltages
 * Updated of_node with child node of the parent device.
v1->v2:
 * New patch
---
 drivers/regulator/Kconfig                     |  9 +++
 drivers/regulator/Makefile                    |  1 +
 .../regulator/renesas-usb-vbus-regulator.c    | 67 +++++++++++++++++++
 3 files changed, 77 insertions(+)
 create mode 100644 drivers/regulator/renesas-usb-vbus-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index d333be2bea3b..0281a9a6f4ce 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1634,6 +1634,15 @@ config REGULATOR_UNIPHIER
 	help
 	  Support for regulators implemented on Socionext UniPhier SoCs.
 
+config REGULATOR_RZG2L_VBCTRL
+	tristate "Renesas RZ/G2L USB VBUS regulator driver"
+	depends on ARCH_RZG2L || COMPILE_TEST
+	depends on OF
+	select REGMAP_MMIO
+	default ARCH_RZG2L
+	help
+	  Support for VBUS regulators implemented on Renesas RZ/G2L SoCs.
+
 config REGULATOR_VCTRL
 	tristate "Voltage controlled regulators"
 	depends on OF
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index ba15fa5f30ad..6127ffb4b011 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -189,6 +189,7 @@ obj-$(CONFIG_REGULATOR_TPS65132) += tps65132-regulator.o
 obj-$(CONFIG_REGULATOR_TPS68470) += tps68470-regulator.o
 obj-$(CONFIG_REGULATOR_TWL4030) += twl-regulator.o twl6030-regulator.o
 obj-$(CONFIG_REGULATOR_UNIPHIER) += uniphier-regulator.o
+obj-$(CONFIG_REGULATOR_RZG2L_VBCTRL) += renesas-usb-vbus-regulator.o
 obj-$(CONFIG_REGULATOR_VCTRL) += vctrl-regulator.o
 obj-$(CONFIG_REGULATOR_VEXPRESS) += vexpress-regulator.o
 obj-$(CONFIG_REGULATOR_VQMMC_IPQ4019) += vqmmc-ipq4019-regulator.o
diff --git a/drivers/regulator/renesas-usb-vbus-regulator.c b/drivers/regulator/renesas-usb-vbus-regulator.c
new file mode 100644
index 000000000000..d53e243d25b7
--- /dev/null
+++ b/drivers/regulator/renesas-usb-vbus-regulator.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Renesas USB VBUS output regulator driver
+//
+// Copyright (C) 2024 Renesas Electronics Corporation
+//
+
+#include <linux/module.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+
+static const struct regulator_ops rzg2l_usb_vbus_reg_ops = {
+	.enable     = regulator_enable_regmap,
+	.disable    = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+};
+
+static const struct regulator_desc rzg2l_usb_vbus_rdesc = {
+	.name = "vbus",
+	.of_match = of_match_ptr("regulator-vbus"),
+	.ops = &rzg2l_usb_vbus_reg_ops,
+	.type = REGULATOR_VOLTAGE,
+	.owner = THIS_MODULE,
+	.enable_reg  = 0,
+	.enable_mask = BIT(0),
+	.enable_is_inverted = true,
+	.fixed_uV	= 5000000,
+	.n_voltages	= 1,
+};
+
+static int rzg2l_usb_vbus_regulator_probe(struct platform_device *pdev)
+{
+	struct regulator_config config = { };
+	struct device *dev = &pdev->dev;
+	struct regulator_dev *rdev;
+
+	config.regmap = dev_get_regmap(dev->parent, NULL);
+	if (!config.regmap)
+		return dev_err_probe(dev, -ENOENT, "Failed to get regmap\n");
+
+	config.dev = dev;
+	config.of_node = of_get_child_by_name(dev->parent->of_node, "regulator-vbus");
+	rdev = devm_regulator_register(dev, &rzg2l_usb_vbus_rdesc, &config);
+	if (IS_ERR(rdev))
+		return dev_err_probe(dev, PTR_ERR(rdev),
+				     "not able to register vbus regulator\n");
+
+	return 0;
+}
+
+static struct platform_driver rzg2l_usb_vbus_regulator_driver = {
+	.probe = rzg2l_usb_vbus_regulator_probe,
+	.driver	= {
+		.name = "rzg2l-usb-vbus-regulator",
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
+	},
+};
+module_platform_driver(rzg2l_usb_vbus_regulator_driver);
+
+MODULE_AUTHOR("Biju Das <biju.das.jz@bp.renesas.com>");
+MODULE_DESCRIPTION("Renesas RZ/G2L USB Vbus Regulator Driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
