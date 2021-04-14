Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-21.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650D5C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 14:06:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C222861166
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 14:06:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C222861166
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NvFSZr1G/39/EXl491pSiB02MxBGYYJe4fyO06e4zOE=; b=YDR2Wkfxh85ulhu8OuOQYc9q9
	XhnV/Brub+L1KGvwSk8f/q8sGalqbN/n52Cc9lZZl6klN9lUSRMxn788n5bBTAz1uzJQ8cD9t2AHW
	Y4kEeXPqamtIpAhUUduNSQlYODpCdwdVseqwjP7AHTYZMH4c1phMqXkprdGqJ57Gyo40Elcp34GPS
	0cRrh9dRFlX6zQW12sHC0pcN3yoNe0Ay/FXRdDrzK5lFpyYgUlpdnx6ShAwsBXo9Pxh+4n3Xsd8jL
	7gb6PKINoaF2BrVrdLbU5Do8QH5uJHCY4hUSVF3bC6dVqDWIqgTq2IZzlL1djPQqYCZP3oFHP5ULv
	nWTs8UizQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWg9b-00CqrQ-Mm; Wed, 14 Apr 2021 14:06:04 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWg9Q-00CqpL-82
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 14:05:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13EE5k0T049811;
 Wed, 14 Apr 2021 09:05:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618409146;
 bh=MyRY0I0AP/JRXTyKWjX42i1P5KYkv5TknwTcfufbT7U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=j3aADMi1VsVshacoEAhR+YfZ8wS+QSPGAUkickG8cHsDQNawwLzuxM2igvgfqyLrF
 jrycGeFam4BsCT2sj5o9CMu/scAdg5U0C2aXAEpl0V6se3YfOOeDUuG6A31/vZFm5p
 tUG45+WXT/g2VACOyE9tO1mQTdOu7U69VizzYM8M=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13EE5kNx119677
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 14 Apr 2021 09:05:46 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 14
 Apr 2021 09:05:46 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 14 Apr 2021 09:05:46 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13EE5LuC074247;
 Wed, 14 Apr 2021 09:05:41 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Chandrasekar Ramakrishnan
 <rcsekar@samsung.com>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-can@vger.kernel.org>, <netdev@vger.kernel.org>, Vignesh Raghavendra
 <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Grygorii Strashko
 <grygorii.strashko@ti.com>, Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v2 4/6] phy: phy-can-transceiver: Add support for generic CAN
 transceiver driver
Date: Wed, 14 Apr 2021 19:35:19 +0530
Message-ID: <20210414140521.11463-5-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210414140521.11463-1-a-govindraju@ti.com>
References: <20210414140521.11463-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_150552_721120_86F6CF87 
X-CRM114-Status: GOOD (  22.90  )
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

The driver adds support for generic CAN transceivers. Currently
the modes supported by this driver are standby and normal modes for TI
TCAN1042 and TCAN1043 CAN transceivers.

The transceiver is modelled as a phy with pins controlled by gpios, to put
the transceiver in various device functional modes. It also gets the phy
attribute max_link_rate for the usage of CAN drivers.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 MAINTAINERS                       |   1 +
 drivers/phy/Kconfig               |   9 ++
 drivers/phy/Makefile              |   1 +
 drivers/phy/phy-can-transceiver.c | 146 ++++++++++++++++++++++++++++++
 4 files changed, 157 insertions(+)
 create mode 100644 drivers/phy/phy-can-transceiver.c

diff --git a/MAINTAINERS b/MAINTAINERS
index e666d33af10d..70e1438c372d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4047,6 +4047,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can.git
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git
 F:	Documentation/devicetree/bindings/net/can/
 F:	Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+F:	drivers/phy/phy-can-transceiver.c
 F:	drivers/net/can/
 F:	include/linux/can/bittiming.h
 F:	include/linux/can/dev.h
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 54c1f2f0985f..51902b629fc6 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -61,6 +61,15 @@ config USB_LGM_PHY
 	  interface to interact with USB GEN-II and USB 3.x PHY that is part
 	  of the Intel network SOC.
 
+config PHY_CAN_TRANSCEIVER
+	tristate "CAN transceiver PHY"
+	select GENERIC_PHY
+	help
+	  This option enables support for CAN transceivers as a PHY. This
+	  driver provides function for putting the transceivers in various
+	  functional modes using gpios and sets the attribute max link
+	  rate, for mcan drivers.
+
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/broadcom/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index adac1b1a39d1..9c66101c9605 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
+obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
 obj-y					+= allwinner/	\
 					   amlogic/	\
 					   broadcom/	\
diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
new file mode 100644
index 000000000000..f2976c1f4d0f
--- /dev/null
+++ b/drivers/phy/phy-can-transceiver.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * phy-can-transceiver.c - phy driver for CAN transceivers
+ *
+ * Copyright (C) 2021 Texas Instruments Incorporated - http://www.ti.com
+ *
+ */
+#include<linux/phy/phy.h>
+#include<linux/platform_device.h>
+#include<linux/module.h>
+#include<linux/gpio.h>
+#include<linux/gpio/consumer.h>
+
+struct can_transceiver_data {
+	u32 flags;
+#define CAN_TRANSCEIVER_STB_PRESENT	BIT(0)
+#define CAN_TRANSCEIVER_EN_PRESENT	BIT(1)
+};
+
+struct can_transceiver_phy {
+	struct phy *generic_phy;
+	struct gpio_desc *standby_gpio;
+	struct gpio_desc *enable_gpio;
+};
+
+/* Power on function */
+static int can_transceiver_phy_power_on(struct phy *phy)
+{
+	struct can_transceiver_phy *can_transceiver_phy = phy_get_drvdata(phy);
+
+	if (can_transceiver_phy->standby_gpio)
+		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
+	if (can_transceiver_phy->enable_gpio)
+		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 1);
+
+	return 0;
+}
+
+/* Power off function */
+static int can_transceiver_phy_power_off(struct phy *phy)
+{
+	struct can_transceiver_phy *can_transceiver_phy = phy_get_drvdata(phy);
+
+	if (can_transceiver_phy->standby_gpio)
+		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
+	if (can_transceiver_phy->enable_gpio)
+		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
+
+	return 0;
+}
+
+static const struct phy_ops can_transceiver_phy_ops = {
+	.power_on	= can_transceiver_phy_power_on,
+	.power_off	= can_transceiver_phy_power_off,
+	.owner		= THIS_MODULE,
+};
+
+static const struct can_transceiver_data tcan1042_drvdata = {
+	.flags = CAN_TRANSCEIVER_STB_PRESENT,
+};
+
+static const struct can_transceiver_data tcan1043_drvdata = {
+	.flags = CAN_TRANSCEIVER_STB_PRESENT | CAN_TRANSCEIVER_EN_PRESENT,
+};
+
+static const struct of_device_id can_transceiver_phy_ids[] = {
+	{
+		.compatible = "ti,tcan1042",
+		.data = &tcan1042_drvdata
+	},
+	{
+		.compatible = "ti,tcan1043",
+		.data = &tcan1043_drvdata
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
+
+int can_transceiver_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy_provider;
+	struct device *dev = &pdev->dev;
+	struct can_transceiver_phy *can_transceiver_phy;
+	const struct can_transceiver_data *drvdata;
+	const struct of_device_id *match;
+	struct phy *phy;
+	struct gpio_desc *standby_gpio;
+	struct gpio_desc *enable_gpio;
+	u32 max_bitrate = 0;
+
+	can_transceiver_phy = devm_kzalloc(dev, sizeof(struct can_transceiver_phy), GFP_KERNEL);
+	if (!can_transceiver_phy)
+		return -ENOMEM;
+
+	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
+	drvdata = match->data;
+
+	phy = devm_phy_create(dev, dev->of_node,
+			      &can_transceiver_phy_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "failed to create can transceiver phy\n");
+		return PTR_ERR(phy);
+	}
+
+	device_property_read_u32(dev, "max-bitrate", &max_bitrate);
+	if (!max_bitrate)
+		dev_warn(dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
+	phy->attrs.max_link_rate = max_bitrate;
+
+	can_transceiver_phy->generic_phy = phy;
+
+	if (drvdata->flags & CAN_TRANSCEIVER_STB_PRESENT) {
+		standby_gpio = devm_gpiod_get(dev, "standby", GPIOD_OUT_HIGH);
+		if (IS_ERR(standby_gpio))
+			return PTR_ERR(standby_gpio);
+		can_transceiver_phy->standby_gpio = standby_gpio;
+	}
+
+	if (drvdata->flags & CAN_TRANSCEIVER_EN_PRESENT) {
+		enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+		if (IS_ERR(enable_gpio))
+			return PTR_ERR(enable_gpio);
+		can_transceiver_phy->enable_gpio = enable_gpio;
+	}
+
+	phy_set_drvdata(can_transceiver_phy->generic_phy, can_transceiver_phy);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static struct platform_driver can_transceiver_phy_driver = {
+	.probe = can_transceiver_phy_probe,
+	.driver = {
+		.name = "can-transceiver-phy",
+		.of_match_table = can_transceiver_phy_ids,
+	},
+};
+
+module_platform_driver(can_transceiver_phy_driver);
+
+MODULE_AUTHOR("Faiz Abbas <faiz_abbas@ti.com>");
+MODULE_AUTHOR("Aswath Govindraju <a-govindraju@ti.com>");
+MODULE_DESCRIPTION("CAN TRANSCEIVER PHY driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
