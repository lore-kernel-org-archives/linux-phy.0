Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22F86C27C5F
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 11:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+TA5i8XKfh1dvN7ddmAojyFrP54kHL0kqliqXUTdoXs=; b=V40wZQblf4QN7N
	zOnO+bYfXc0oXbp26gBrjHQzVKj3+ZSboidQElNwc7RyDVYjTnUD8qrfi0k1WXaej4fBbDmm3sBiV
	dI+jobajkTWJlt9n3khyb207ONGfn+GtBOkYdbrDMMhbXxNRMe7zfEr8IH1vS1MKKy9kOz+DqHD0y
	zUfh9fkl/HPXe3YCM9rkV5ihzRDFMJJhIMM8LHo2Sd+mx0z/gULiAVc218xsr0CgO52j1tgfTTjuY
	1uv3xGpjDYvXTteQkZvPm29CncQKnwwmvBr8YtTU1Ly4CkWXeBCR1XjGq13DCZvvupxF8frBL+1TI
	OdWJzlBclX8J+ohZBzLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXv7-0000000DmWO-3ZsB;
	Fri, 07 Jun 2024 11:38:09 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXv5-0000000DmTq-0hVG
	for linux-phy@lists.infradead.org;
	Fri, 07 Jun 2024 11:38:08 +0000
X-IronPort-AV: E=Sophos;i="6.08,220,1712588400"; 
   d="scan'208";a="211042485"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 07 Jun 2024 20:38:03 +0900
Received: from localhost.localdomain (unknown [10.226.92.204])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 05D5C40071E8;
	Fri,  7 Jun 2024 20:37:58 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	devicetree@vger.kernel.org
Subject: [PATCH RFC v2 2/4] regulator: Add Renesas RZ/G2L USB VBUS regulator driver
Date: Fri,  7 Jun 2024 12:37:43 +0100
Message-Id: <20240607113745.73934-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
References: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_043807_455677_0DC50448 
X-CRM114-Status: GOOD (  18.04  )
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
this driver. The consumer device will use the regulator regmap to control
the VBOUT bit as the control need to be done in the atomic context.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * New patch
---
 drivers/regulator/Kconfig                     |  9 +++
 drivers/regulator/Makefile                    |  1 +
 .../regulator/renesas-usb-vbus-regulator.c    | 65 +++++++++++++++++++
 3 files changed, 75 insertions(+)
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
index 000000000000..24582782ad40
--- /dev/null
+++ b/drivers/regulator/renesas-usb-vbus-regulator.c
@@ -0,0 +1,65 @@
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
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+#include <linux/regmap.h>
+
+static const unsigned int vbus_voltages[] = {
+	3300000, 0
+};
+
+static const struct regulator_ops rzg2l_usb_vbus_reg_ops = {
+	.list_voltage = regulator_list_voltage_table,
+};
+
+static const struct regulator_desc rzg2l_usb_vbus_rdesc = {
+	.name = "usb_vbus",
+	.ops = &rzg2l_usb_vbus_reg_ops,
+	.type = REGULATOR_VOLTAGE,
+	.owner = THIS_MODULE,
+	.volt_table = vbus_voltages,
+	.n_voltages = ARRAY_SIZE(vbus_voltages),
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
+	config.of_node = dev->of_node;
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
