Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EE78CA0FF7
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 10:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9M7oUPPKIsLv0krJKs1vaS+TAT54hjVDQzgD6nMI1s=; b=cYdSVpVFfbJzT6
	5Eh/mOPnuuuv7sC9lSLTQesellWVVuDHTiSzOeRwST+ZpXV8qYMYLhDqU5nfWFwcBmGuqnmDCB5vV
	8ieh/elmCB4Sa392wEI9Wmn9/qq4EGfZa9jlQS/8tOOwXa/CDPmCLuR4UOZMg49InILVbPyV3BAbB
	u1ZtcDXV4cC5sAGB3x8NIapkXWYs8BKX50dJgsGLxMCQ879eRfgbfGm3S50sglGjzm6iqTR8o8Qb7
	Xd5vqOatNdj1QZudXNWWvwF1/ga9c/SoibDD0z6tklTMbTnCCR5c4eP/5B0JmHHeaiD2ZTzDuwl0O
	p1YiNd0J3bQFYpPkqjvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urwJS-00000005Jfn-3gAE;
	Fri, 29 Aug 2025 10:26:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urvHG-000000057Uk-00Tn
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 09:20:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 59A5B60140;
	Fri, 29 Aug 2025 09:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C8FCC4CEF7;
	Fri, 29 Aug 2025 09:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756459209;
	bh=50TguRS/Evm2Or/dlQlWRsV6e2qqkAlX4YelhUCK/e8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=kDFRkjSlFhInJWPB8JNZmhVeMSxa3kh7K9Mchd2tbAWySpY/yEeWNBHT1glhHB2Fo
	 mSYFVuFSl/74YcX2sGGu2jI9SIeH5EFueJ1c3uD4GbP2Hnic3KQBWtVZSegrrLG3jd
	 5o+6t8OhkYwvI143CjF1SI+3zXrgj4NWHp9t9q9a+eNh59WSp7YymRsEpHE5evVfqR
	 SP/RddxNklJXxzZsjiGbesj9A9ZURFo349jcdlx3zqwLlsaTBjkF6Vmbv7wlCHQZrh
	 eZbTcdBwt14gcsfjlKWkDGtYhwjT4Bfff0tyPLCfq1E4D1t4jB4g9AyxJPm7a0xzYK
	 ogx5Cr+g9O1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F16AECA0FFF;
	Fri, 29 Aug 2025 09:20:08 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Date: Fri, 29 Aug 2025 11:19:59 +0200
Subject: [PATCH v2 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
MIME-Version: 1.0
Message-Id: <20250829-tja1145-support-v2-2-60997f328979@liebherr.com>
References: <20250829-tja1145-support-v2-0-60997f328979@liebherr.com>
In-Reply-To: <20250829-tja1145-support-v2-0-60997f328979@liebherr.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756459207; l=7265;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=QbZwerPtcW9uCm9P1dXPNhN6L03SdF6Z/qVX8cgl44k=;
 b=OPXUrHIg4Ns6KcYoRRUz/2NeKchkc5B40uYMKPr0c22Ke0Q2vS8ioicdasqNQGXOqOCFngvYf
 S5rdppcnXXWC/lw4/KfQK5UF/BH8wz2m1eJ/msanOG8lyKzBJACKD6M
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
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
Reply-To: dimitri.fedrau@liebherr.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
PHY up/down by switching to normal/standby mode using SPI commands.

Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
---
 drivers/phy/Kconfig           |  10 +++
 drivers/phy/Makefile          |   1 +
 drivers/phy/phy-nxp-tja1145.c | 185 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 196 insertions(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 58c911e1b2d20a0398f02550e938ce62633230d4..c47e2b62fa6279ee610493b028d3c14f6499ca85 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -101,6 +101,16 @@ config PHY_NXP_PTN3222
 	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
 	  Speed and High Speed.
 
+config PHY_NXP_TJA1145
+	tristate "NXP TJA1145 CAN transceiver PHY"
+	select GENERIC_PHY
+	select REGMAP_SPI
+	depends on SPI
+	help
+	  This option enables support for NXPs TJA1145 CAN transceiver as a PHY.
+	  This driver provides function for putting the transceiver in various
+	  functional modes using SPI commands.
+
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/broadcom/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index c670a8dac46807863c9ef990beb149082238ad16..16da564c74b0f14befb486366dcd10cd5fc67741 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
 obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
+obj-$(CONFIG_PHY_NXP_TJA1145)		+= phy-nxp-tja1145.o
 obj-y					+= allwinner/	\
 					   amlogic/	\
 					   broadcom/	\
diff --git a/drivers/phy/phy-nxp-tja1145.c b/drivers/phy/phy-nxp-tja1145.c
new file mode 100644
index 0000000000000000000000000000000000000000..4d3aa5bfcd88d5755fa37e0d42bfa8293dee2155
--- /dev/null
+++ b/drivers/phy/phy-nxp-tja1145.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2025 Liebherr-Electronics and Drives GmbH
+ */
+#include <linux/bitfield.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#include <linux/phy/phy.h>
+#include <linux/spi/spi.h>
+
+#define TJA1145_MODE_CTRL		0x01
+#define TJA1145_MODE_CTRL_MC		GENMASK(2, 0)
+#define TJA1145_MODE_CRTL_STBY		BIT(2)
+#define TJA1145_MODE_CRTL_NORMAL	TJA1145_MODE_CTRL_MC
+
+#define TJA1145_CAN_CTRL		0x20
+#define TJA1145_CAN_CTRL_CMC		GENMASK(1, 0)
+#define TJA1145_CAN_CTRL_ACTIVE		BIT(1)
+
+#define TJA1145_IDENT			0x7e
+#define TJA1145_IDENT_TJA1145T		0x70
+
+#define TJA1145_SPI_READ_BIT		BIT(0)
+#define TJA1145T_MAX_BITRATE		1000000
+
+static int tja1145_phy_power_on(struct phy *phy)
+{
+	struct regmap *map = phy_get_drvdata(phy);
+	int ret;
+
+	/*
+	 * Switch operating mode to normal which is the active operating mode.
+	 * In this mode, the device is fully operational.
+	 */
+	ret = regmap_update_bits(map, TJA1145_MODE_CTRL, TJA1145_MODE_CTRL_MC,
+				 TJA1145_MODE_CRTL_NORMAL);
+	if (ret)
+		return ret;
+
+	/*
+	 * Switch to CAN operating mode active where the PHY can transmit and
+	 * receive data.
+	 */
+	return regmap_update_bits(map, TJA1145_CAN_CTRL, TJA1145_CAN_CTRL_CMC,
+				  TJA1145_CAN_CTRL_ACTIVE);
+}
+
+static int tja1145_phy_power_off(struct phy *phy)
+{
+	struct regmap *map = phy_get_drvdata(phy);
+
+	/*
+	 * Switch to operating mode standby, the PHY is unable to transmit or
+	 * receive data in standby mode.
+	 */
+	return regmap_update_bits(map, TJA1145_MODE_CTRL, TJA1145_MODE_CTRL_MC,
+				  TJA1145_MODE_CRTL_STBY);
+}
+
+static const struct phy_ops tja1145_phy_ops = {
+	.power_on = tja1145_phy_power_on,
+	.power_off = tja1145_phy_power_off,
+};
+
+static const struct regmap_range tja1145_wr_holes_ranges[] = {
+	regmap_reg_range(0x00, 0x00),
+	regmap_reg_range(0x02, 0x03),
+	regmap_reg_range(0x05, 0x05),
+	regmap_reg_range(0x0b, 0x1f),
+	regmap_reg_range(0x21, 0x22),
+	regmap_reg_range(0x24, 0x25),
+	regmap_reg_range(0x30, 0x4b),
+	regmap_reg_range(0x4d, 0x60),
+	regmap_reg_range(0x62, 0x62),
+	regmap_reg_range(0x65, 0x67),
+	regmap_reg_range(0x70, 0xff),
+};
+
+static const struct regmap_access_table tja1145_wr_table = {
+	.no_ranges = tja1145_wr_holes_ranges,
+	.n_no_ranges = ARRAY_SIZE(tja1145_wr_holes_ranges),
+};
+
+static const struct regmap_range tja1145_rd_holes_ranges[] = {
+	regmap_reg_range(0x00, 0x00),
+	regmap_reg_range(0x02, 0x02),
+	regmap_reg_range(0x05, 0x05),
+	regmap_reg_range(0x0b, 0x1f),
+	regmap_reg_range(0x21, 0x21),
+	regmap_reg_range(0x24, 0x25),
+	regmap_reg_range(0x30, 0x4a),
+	regmap_reg_range(0x4d, 0x5f),
+	regmap_reg_range(0x62, 0x62),
+	regmap_reg_range(0x65, 0x67),
+	regmap_reg_range(0x70, 0x7d),
+	regmap_reg_range(0x7f, 0xff),
+};
+
+static const struct regmap_access_table tja1145_rd_table = {
+	.no_ranges = tja1145_rd_holes_ranges,
+	.n_no_ranges = ARRAY_SIZE(tja1145_rd_holes_ranges),
+};
+
+
+static const struct regmap_config tja1145_regmap_config = {
+	.reg_bits = 8,
+	.reg_shift = -1,
+	.val_bits = 8,
+	.wr_table = &tja1145_wr_table,
+	.rd_table = &tja1145_rd_table,
+	.read_flag_mask = TJA1145_SPI_READ_BIT,
+	.max_register = TJA1145_IDENT,
+};
+
+static int tja1145_check_ident(struct device *dev, struct regmap *map)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(map, TJA1145_IDENT, &val);
+	if (ret)
+		return ret;
+
+	if (val != TJA1145_IDENT_TJA1145T) {
+		dev_err(dev, "Expected device id: 0x%02x, got: 0x%02x\n",
+			TJA1145_IDENT_TJA1145T, val);
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static int tja1145_probe(struct spi_device *spi)
+{
+	struct phy_provider *phy_provider;
+	struct device *dev = &spi->dev;
+	struct regmap *map;
+	struct phy *phy;
+	int ret;
+
+	map = devm_regmap_init_spi(spi, &tja1145_regmap_config);
+	if (IS_ERR(map))
+		return dev_err_probe(dev, PTR_ERR(map), "failed to init regmap\n");
+
+	ret = tja1145_check_ident(dev, map);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to identify device\n");
+
+	phy = devm_phy_create(dev, dev->of_node, &tja1145_phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create PHY\n");
+
+	phy->attrs.max_link_rate = TJA1145T_MAX_BITRATE;
+	phy_set_drvdata(phy, map);
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct spi_device_id tja1145_spi_id[] = {
+	{ "tja1145" },
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, tja1145_spi_id);
+
+static const struct of_device_id tja1145_of_match[] = {
+	{ .compatible = "nxp,tja1145-can" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, tja1145_of_match);
+
+static struct spi_driver tja1145_driver = {
+	.driver = {
+		.name = "tja1145",
+		.of_match_table = tja1145_of_match,
+	},
+	.probe = tja1145_probe,
+	.id_table = tja1145_spi_id,
+};
+module_spi_driver(tja1145_driver);
+
+MODULE_DESCRIPTION("NXP TJA1145 CAN transceiver PHY driver");
+MODULE_AUTHOR("Dimitri Fedrau <dimitri.fedrau@liebherr.com>");
+MODULE_LICENSE("GPL");

-- 
2.39.5



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
