Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78704C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43F7260F23
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43F7260F23
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dnNTA1F29LGJglZNnMr+AttZfp9X/BKvb26wZfSyF0=; b=FgMBxyDlfLuWJU
	vbUoRiFP1CVPZm/zSECelp1+lKYzp1ZV20Lfds3a7A1GaKD2/3I7aYPt5P1eLO6z5UeaAfpzXijQt
	Oq55ib9L/PAneGiC3ePTy4mnXHFlkZ6MGsRi14pKWlW0vuLOzX0sEqsMmcyXnKYV4/aA82GWcoP6r
	uSImHUptc9SVm3R39/pHxPrc8lqXWhcernw+ynQgFYl5tMD+zzT5/0I/WbJu9S6yo3HlO61KFg1ow
	GS+PrjM/9DSYt4Dr6KpNCukfI49mqTbEF5T9iBz3uRTzhQkCGxtnVVv/7B2p67gQBIQDvM7/OkfcN
	k1mZs8Rkqbc3eOvXa7Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxU-001BdH-PQ; Mon, 20 Sep 2021 09:51:32 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxR-001BcK-R4
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131490; x=1663667490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+uznXalaLE+P10gWuj/wsDZ+JtTg3F/3Ho8CxZ4ZLO0=;
 b=eWyMPop9CvgcVO/U6+PqkaZc2M5Sy+guLSJ5Q/vjR7bG8+iMSAGAINEM
 4FkEx7+I/sT0GgfSMIBtEP8byRtJSY6iwTPdCsnLzLvyZJgPW+kgGvQ+s
 W0pNyFc0cXfmNf+7g/nwMrrP2aFXJL9UgPutjOGUdlJIF57qb1mFuFu0Z
 F5C95bWe2Qx9rIFGnIOYSAXppTcC+2fCIETLJe5nAv9rJGwGNrfpxegn0
 Qg8KJWwiAOYCBZ9015G5kgQ1hPV+vNzYRRBqcVzxmfRZHzsHhtppO3uqz
 UbaUN+HjzAVmZ+xCGWiG/ebrNm8hK2uJETnNoFdKTC1KRuoFWLwdEXQNk g==;
IronPort-SDR: YAvvO3EKM2UzLHtAekGuoC7kHPzMKd+k/UMtVj7b3r0IJQzCpXvwray0yH9E/0u0gPq1BQmA0Q
 t7uTJwRQNKZKVpnH5ZW7uw2UyHEjvor6EL8ZuYON0Jl0ygwkmWAgp9bqncQKpc4nT5acaYKA1N
 rM+QzMSSsSCxR3blHfeb3aP9nKTbiExDxeBd/y/k+iQPjaWnHBBOnFlegjY08uNIRcWaylLZiw
 Nw7/oARzDO3PK302E/IV+dQb06t7pD3fOgwwm6DNhKOrcOA3lhSLyRMo30XI2ByX28eabDU+yR
 gIi8gp9Ag4AUuvSdREkXoN7Y
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="132434729"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:29 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:28 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:25 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 05/12] reset: lan966x: Add switch reset driver
Date: Mon, 20 Sep 2021 11:52:11 +0200
Message-ID: <20210920095218.1108151-6-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025130_027974_4A3DA8D4 
X-CRM114-Status: GOOD (  21.72  )
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

The lan966x switch SoC has a number of components that can be reset
indiviually, but at least the switch core needs to be in a well defined
state at power on, when any of the lan966x drivers starts to access the
switch core, this reset driver is available.

The reset driver is loaded early via the postcore_initcall interface, and
will then be available for the other lan966x drivers (SGPIO, SwitchDev etc)
that are loaded next, and the first of them to be loaded can perform the
one-time switch core reset that is needed.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/reset/Kconfig         |   8 +++
 drivers/reset/Makefile        |   1 +
 drivers/reset/reset-lan966x.c | 128 ++++++++++++++++++++++++++++++++++
 3 files changed, 137 insertions(+)
 create mode 100644 drivers/reset/reset-lan966x.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index be799a5abf8a..93f19303ebac 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -108,6 +108,14 @@ config RESET_LANTIQ
 	help
 	  This enables the reset controller driver for Lantiq / Intel XWAY SoCs.
 
+config RESET_LAN966X
+	bool "Microchip LAN966X Reset Driver"
+	depends on HAS_IOMEM || COMPILE_TEST
+	default y if LAN966X_SWITCH
+	select MFD_SYSCON
+	help
+	  This driver supports switch core reset for the Microchip LAN966X SoC.
+
 config RESET_LPC18XX
 	bool "LPC18xx/43xx Reset Driver" if COMPILE_TEST
 	default ARCH_LPC18XX
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 21d46d8869ff..3358f491e617 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
 obj-$(CONFIG_RESET_K210) += reset-k210.o
+obj-$(CONFIG_RESET_LAN966X) += reset-lan966x.o
 obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
 obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
 obj-$(CONFIG_RESET_MCHP_SPARX5) += reset-microchip-sparx5.o
diff --git a/drivers/reset/reset-lan966x.c b/drivers/reset/reset-lan966x.c
new file mode 100644
index 000000000000..3d4fe31653db
--- /dev/null
+++ b/drivers/reset/reset-lan966x.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Copyright (c) 2021 Microchip Technology Inc. and its subsidiaries. */
+
+#include <linux/mfd/syscon.h>
+#include <linux/of_device.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+
+#define PROTECT_REG    0x88
+#define PROTECT_BIT    BIT(5)
+#define SOFT_RESET_REG 0x00
+#define SOFT_RESET_BIT BIT(1)
+#define CHIP_COMMON_REG 0x10
+#define CHIP_COMMON_BIT BIT(0)
+
+struct mchp_reset_context {
+	struct regmap *cpu_ctrl;
+	struct regmap *switch_ctrl;
+	struct regmap *chip_ctrl;
+	struct reset_controller_dev rcdev;
+};
+
+static int lan966x_switch_reset(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	struct mchp_reset_context *ctx =
+		container_of(rcdev, struct mchp_reset_context, rcdev);
+	u32 val;
+	int ret;
+
+	/* Make sure the core is PROTECTED from reset */
+	regmap_update_bits(ctx->cpu_ctrl, PROTECT_REG, PROTECT_BIT, PROTECT_BIT);
+
+	/* Start soft reset */
+	regmap_write(ctx->switch_ctrl, SOFT_RESET_REG, SOFT_RESET_BIT);
+
+	/* Wait for soft reset done */
+	ret = regmap_read_poll_timeout(ctx->switch_ctrl, SOFT_RESET_REG, val,
+				       (val & SOFT_RESET_BIT) == 0, 1, 100);
+	if (ret)
+		return ret;
+
+	/* Release the reset of internal PHY */
+	regmap_update_bits(ctx->chip_ctrl, CHIP_COMMON_REG, CHIP_COMMON_BIT,
+			   CHIP_COMMON_BIT);
+
+	return 0;
+}
+
+static const struct reset_control_ops lan966x_reset_ops = {
+	.reset = lan966x_switch_reset,
+};
+
+static int mchp_lan966x_map_syscon(struct platform_device *pdev, char *name,
+				  struct regmap **target)
+{
+	struct device_node *syscon_np;
+	struct regmap *regmap;
+	int err;
+
+	syscon_np = of_parse_phandle(pdev->dev.of_node, name, 0);
+	if (!syscon_np)
+		return -ENODEV;
+	regmap = syscon_node_to_regmap(syscon_np);
+	of_node_put(syscon_np);
+	if (IS_ERR(regmap)) {
+		err = PTR_ERR(regmap);
+		dev_err(&pdev->dev, "No '%s' map: %d\n", name, err);
+		return err;
+	}
+
+	*target = regmap;
+	return 0;
+}
+
+static int mchp_lan966x_reset_probe(struct platform_device *pdev)
+{
+	struct device_node *dn = pdev->dev.of_node;
+	struct mchp_reset_context *ctx;
+	int err;
+
+	ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	err = mchp_lan966x_map_syscon(pdev, "cpu-syscon", &ctx->cpu_ctrl);
+	if (err)
+		return err;
+
+	err = mchp_lan966x_map_syscon(pdev, "switch-syscon", &ctx->switch_ctrl);
+	if (err)
+		return err;
+
+	err = mchp_lan966x_map_syscon(pdev, "chip-syscon", &ctx->chip_ctrl);
+	if (err)
+		return err;
+
+	ctx->rcdev.owner = THIS_MODULE;
+	ctx->rcdev.nr_resets = 1;
+	ctx->rcdev.ops = &lan966x_reset_ops;
+	ctx->rcdev.of_node = dn;
+
+	return devm_reset_controller_register(&pdev->dev, &ctx->rcdev);
+}
+
+static const struct of_device_id mchp_lan966x_reset_of_match[] = {
+	{
+		.compatible = "microchip,lan966x-switch-reset",
+	},
+	{ }
+};
+
+static struct platform_driver mchp_lan966x_reset_driver = {
+	.probe = mchp_lan966x_reset_probe,
+	.driver = {
+		.name = "lan966x-switch-reset",
+		.of_match_table = mchp_lan966x_reset_of_match,
+	},
+};
+
+static int __init mchp_lan966x_reset_init(void)
+{
+	return platform_driver_register(&mchp_lan966x_reset_driver);
+}
+
+postcore_initcall(mchp_lan966x_reset_init);
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
