Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE1ACC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 10:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gas3LfXCgFdIcyV11Yj/CqHdgKn8kF6R89+J2RHm5FE=; b=SBvggy/Uk5pkFH
	m/zETNwu/U/27J2tneKQCXn+iEyf1Wn4pSKjA96I0Q7ArGeTjFzPBMl5FWBjbOXOGG/41V1K4Ql0r
	ZILZ8w6KiXobGKjehcsq1bbPXxVxig+vWDxfVZPTX4KwMeBvPg5qEkkzT7kNRFultvJBXhihTb/xX
	Tqxsk+/J5250U4bDKd/hdSlQxjCcF5z5rUf3qAH0JH3K/L1gi2gpL+F7Iw/YeDptPnek4/gBJ76C6
	nzYBBMHKOgRAkhlKIO4sXrxfuOgwDgJh/4SbGekDlxxqxiFORBO+eSLEWx7nTHl59P+lA5rI4av6d
	xDiumhirbc3bAFlnLMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1nfq-00GYdh-5X; Mon, 27 Dec 2021 10:56:14 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1nfl-00GYbP-To
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 10:56:13 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BRAtsS1069654;
 Mon, 27 Dec 2021 04:55:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1640602554;
 bh=Bh00NoNUV9alHeg/fn6+jaACt8DR9KMUNs52VTAV0pQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bXqibtcrA/ogEv3MfdLQKzNXqAiscerft5DXd/EggLIsGMTW4/n0IhslPrJVRilxn
 MiLHq8nQvQfa2coyoDyUEIBa4p8Txc17VyRdtH0Kp0uwCwcdwfQpdFJOUY7HMXbxds
 bR0nsh856oT6Xzzzdk2A1J1FpG+0tUAcz9Ek9cb8=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BRAtsNf103368
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Dec 2021 04:55:54 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 27
 Dec 2021 04:55:53 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 27 Dec 2021 04:55:53 -0600
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BRAtkVM029188;
 Mon, 27 Dec 2021 04:55:50 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v7 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Date: Mon, 27 Dec 2021 16:25:42 +0530
Message-ID: <20211227105545.4852-2-p.yadav@ti.com>
X-Mailer: git-send-email 2.33.1.835.ge9e5ba39a7
In-Reply-To: <20211227105545.4852-1-p.yadav@ti.com>
References: <20211227105545.4852-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_025610_082644_F4FD5347 
X-CRM114-Status: GOOD (  30.60  )
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

The Cadence D-PHY can be configured in Tx (DSI) mode or Rx (CSI) mode.
Both modes have a different programming sequence and share little among
them. In addition, a PHY configured in Tx mode cannot be used in Rx mode
and vice versa. For this reason, create a separate driver for the Rx
mode to make it easier to read and maintain.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

---

Changes in v7:
- Add spaces after { and before } in the bands table.
- Drop the wrapping around the for loop on cdns_dphy_rx_get_band_ctrl().
- Make cdns_dphy_rx_wait_for_bit() inline.
- Print an error message if registering PHY provider fails.

Changes in v6:
- Move to a separate driver.

Changes in v5:
- Use the new cdns_dphy_info to specify PHY ops.
- Re-order include in alphabetical order.
- Make bands const.
- Drop num_bands.
- Make i, lanes unsigned.
- Drop the maximum check in cdns_dphy_rx_get_band_ctrl(). Let the loop
  complete and return -EOPNOTSUPP when we reach the end.
- Drop the "rate < bands[i].min_rate" check since the bands are in
  ascending order.
- Move data_lane_ctrl to start of function and make it static const.

Changes in v4:
- Drop the submode parts. Use a different compatible for the Rx ops.
- Make bands and num_bands static.

Changes in v3:
- Use a table to select the band.
- Use a table to poll the data lane ready bits.
- Multiply the DPHY HS clock rate by 2 to get the bit rate since the
  clock is DDR.

 drivers/phy/cadence/Kconfig        |   8 +
 drivers/phy/cadence/Makefile       |   1 +
 drivers/phy/cadence/cdns-dphy-rx.c | 255 +++++++++++++++++++++++++++++
 3 files changed, 264 insertions(+)
 create mode 100644 drivers/phy/cadence/cdns-dphy-rx.c

diff --git a/drivers/phy/cadence/Kconfig b/drivers/phy/cadence/Kconfig
index a62910ff5591..1adde2d99ae7 100644
--- a/drivers/phy/cadence/Kconfig
+++ b/drivers/phy/cadence/Kconfig
@@ -22,6 +22,14 @@ config PHY_CADENCE_DPHY
 	  system. If M is selected, the module will be called
 	  cdns-dphy.
 
+config PHY_CADENCE_DPHY_RX
+	tristate "Cadence D-PHY Rx Support"
+	depends on HAS_IOMEM && OF
+	select GENERIC_PHY
+	select GENERIC_PHY_MIPI_DPHY
+	help
+	  Support for Cadence D-PHY in Rx configuration.
+
 config PHY_CADENCE_SIERRA
 	tristate "Cadence Sierra PHY Driver"
 	depends on OF && HAS_IOMEM && RESET_CONTROLLER
diff --git a/drivers/phy/cadence/Makefile b/drivers/phy/cadence/Makefile
index 26e16bd34efe..e17f035ddece 100644
--- a/drivers/phy/cadence/Makefile
+++ b/drivers/phy/cadence/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_CADENCE_TORRENT)	+= phy-cadence-torrent.o
 obj-$(CONFIG_PHY_CADENCE_DPHY)	+= cdns-dphy.o
+obj-$(CONFIG_PHY_CADENCE_DPHY_RX)	+= cdns-dphy-rx.o
 obj-$(CONFIG_PHY_CADENCE_SIERRA)	+= phy-cadence-sierra.o
 obj-$(CONFIG_PHY_CADENCE_SALVO)	+= phy-cadence-salvo.o
diff --git a/drivers/phy/cadence/cdns-dphy-rx.c b/drivers/phy/cadence/cdns-dphy-rx.c
new file mode 100644
index 000000000000..47a5b67ded58
--- /dev/null
+++ b/drivers/phy/cadence/cdns-dphy-rx.c
@@ -0,0 +1,255 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/phy/phy-mipi-dphy.h>
+#include <linux/platform_device.h>
+
+#define DPHY_PMA_CMN(reg)		(reg)
+#define DPHY_PCS(reg)			(0xb00 + (reg))
+#define DPHY_ISO(reg)			(0xc00 + (reg))
+
+#define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
+#define DPHY_CMN_RX_MODE_EN		BIT(10)
+#define DPHY_CMN_RX_BANDGAP_TIMER_MASK	GENMASK(8, 1)
+#define DPHY_CMN_SSM_EN			BIT(0)
+
+#define DPHY_CMN_RX_BANDGAP_TIMER	0x14
+
+#define DPHY_BAND_CFG			DPHY_PCS(0x0)
+#define DPHY_BAND_CFG_RIGHT_BAND	GENMASK(9, 5)
+#define DPHY_BAND_CFG_LEFT_BAND		GENMASK(4, 0)
+
+#define DPHY_POWER_ISLAND_EN_DATA	DPHY_PCS(0x8)
+#define DPHY_POWER_ISLAND_EN_DATA_VAL	0xaaaaaaaa
+
+#define DPHY_POWER_ISLAND_EN_CLK	DPHY_PCS(0xc)
+#define DPHY_POWER_ISLAND_EN_CLK_VAL	0xaa
+
+#define DPHY_ISO_CL_CTRL_L		DPHY_ISO(0x10)
+#define DPHY_ISO_DL_CTRL_L0		DPHY_ISO(0x14)
+#define DPHY_ISO_DL_CTRL_L1		DPHY_ISO(0x20)
+#define DPHY_ISO_DL_CTRL_L2		DPHY_ISO(0x30)
+#define DPHY_ISO_DL_CTRL_L3		DPHY_ISO(0x3c)
+
+#define DPHY_ISO_LANE_READY_BIT		0
+#define DPHY_ISO_LANE_READY_TIMEOUT_MS	100UL
+
+#define DPHY_LANES_MIN			1
+#define DPHY_LANES_MAX			4
+
+struct cdns_dphy_rx {
+	void __iomem *regs;
+	struct device *dev;
+	struct phy *phy;
+};
+
+struct cdns_dphy_rx_band {
+	/* Rates are in Mbps. */
+	unsigned int min_rate;
+	unsigned int max_rate;
+};
+
+/* Order of bands is important since the index is the band number. */
+static const struct cdns_dphy_rx_band bands[] = {
+	{ 80, 100 }, { 100, 120 }, { 120, 160 }, { 160, 200 }, { 200, 240 },
+	{ 240, 280 }, { 280, 320 }, { 320, 360 }, { 360, 400 }, { 400, 480 },
+	{ 480, 560 }, { 560, 640 }, { 640, 720 }, { 720, 800 }, { 800, 880 },
+	{ 880, 1040 }, { 1040, 1200 }, { 1200, 1350 }, { 1350, 1500 },
+	{ 1500, 1750 }, { 1750, 2000 }, { 2000, 2250 }, { 2250, 2500 }
+};
+
+static int cdns_dphy_rx_power_on(struct phy *phy)
+{
+	struct cdns_dphy_rx *dphy = phy_get_drvdata(phy);
+
+	/* Start RX state machine. */
+	writel(DPHY_CMN_SSM_EN | DPHY_CMN_RX_MODE_EN |
+	       FIELD_PREP(DPHY_CMN_RX_BANDGAP_TIMER_MASK,
+			  DPHY_CMN_RX_BANDGAP_TIMER),
+	       dphy->regs + DPHY_CMN_SSM);
+
+	return 0;
+}
+
+static int cdns_dphy_rx_power_off(struct phy *phy)
+{
+	struct cdns_dphy_rx *dphy = phy_get_drvdata(phy);
+
+	writel(0, dphy->regs + DPHY_CMN_SSM);
+
+	return 0;
+}
+
+static int cdns_dphy_rx_get_band_ctrl(unsigned long hs_clk_rate)
+{
+	unsigned int rate, i;
+
+	rate = hs_clk_rate / 1000000UL;
+	/* Since CSI-2 clock is DDR, the bit rate is twice the clock rate. */
+	rate *= 2;
+
+	if (rate < bands[0].min_rate)
+		return -EOPNOTSUPP;
+
+	for (i = 0; i < ARRAY_SIZE(bands); i++)
+		if (rate < bands[i].max_rate)
+			return i;
+
+	return -EOPNOTSUPP;
+}
+
+static inline int cdns_dphy_rx_wait_for_bit(void __iomem *addr,
+					    unsigned int bit)
+{
+	u32 val;
+
+	return readl_relaxed_poll_timeout(addr, val, val & BIT(bit), 10,
+					  DPHY_ISO_LANE_READY_TIMEOUT_MS * 1000);
+}
+
+static int cdns_dphy_rx_wait_lane_ready(struct cdns_dphy_rx *dphy,
+					unsigned int lanes)
+{
+	static const u32 data_lane_ctrl[] = {DPHY_ISO_DL_CTRL_L0,
+					     DPHY_ISO_DL_CTRL_L1,
+					     DPHY_ISO_DL_CTRL_L2,
+					     DPHY_ISO_DL_CTRL_L3};
+	void __iomem *reg = dphy->regs;
+	unsigned int i;
+	int ret;
+
+	/* Data lanes. Minimum one lane is mandatory. */
+	if (lanes < DPHY_LANES_MIN || lanes > DPHY_LANES_MAX)
+		return -EINVAL;
+
+	/* Clock lane */
+	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_CL_CTRL_L,
+					DPHY_ISO_LANE_READY_BIT);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < lanes; i++) {
+		ret = cdns_dphy_rx_wait_for_bit(reg + data_lane_ctrl[i],
+						DPHY_ISO_LANE_READY_BIT);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int cdns_dphy_rx_configure(struct phy *phy,
+				  union phy_configure_opts *opts)
+{
+	struct cdns_dphy_rx *dphy = phy_get_drvdata(phy);
+	unsigned int reg;
+	int band_ctrl, ret;
+
+	band_ctrl = cdns_dphy_rx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
+	if (band_ctrl < 0)
+		return band_ctrl;
+
+	reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, band_ctrl) |
+	      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, band_ctrl);
+	writel(reg, dphy->regs + DPHY_BAND_CFG);
+
+	/*
+	 * Set the required power island phase 2 time. This is mandated by DPHY
+	 * specs.
+	 */
+	reg = DPHY_POWER_ISLAND_EN_DATA_VAL;
+	writel(reg, dphy->regs + DPHY_POWER_ISLAND_EN_DATA);
+	reg = DPHY_POWER_ISLAND_EN_CLK_VAL;
+	writel(reg, dphy->regs + DPHY_POWER_ISLAND_EN_CLK);
+
+	ret = cdns_dphy_rx_wait_lane_ready(dphy, opts->mipi_dphy.lanes);
+	if (ret) {
+		dev_err(dphy->dev, "DPHY wait for lane ready timeout\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int cdns_dphy_rx_validate(struct phy *phy, enum phy_mode mode,
+				 int submode, union phy_configure_opts *opts)
+{
+	int ret;
+
+	if (mode != PHY_MODE_MIPI_DPHY)
+		return -EINVAL;
+
+	ret = cdns_dphy_rx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
+	if (ret < 0)
+		return ret;
+
+	return phy_mipi_dphy_config_validate(&opts->mipi_dphy);
+}
+
+static const struct phy_ops cdns_dphy_rx_ops = {
+	.power_on = cdns_dphy_rx_power_on,
+	.power_off = cdns_dphy_rx_power_off,
+	.configure = cdns_dphy_rx_configure,
+	.validate = cdns_dphy_rx_validate,
+};
+
+static int cdns_dphy_rx_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct cdns_dphy_rx *dphy;
+
+	dphy = devm_kzalloc(dev, sizeof(*dphy), GFP_KERNEL);
+	if (!dphy)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, dphy);
+	dphy->dev = dev;
+
+	dphy->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(dphy->regs))
+		return PTR_ERR(dphy->regs);
+
+	dphy->phy = devm_phy_create(dev, NULL, &cdns_dphy_rx_ops);
+	if (IS_ERR(dphy->phy)) {
+		dev_err(dev, "Failed to create PHY: %d\n", PTR_ERR(dphy->phy));
+		return PTR_ERR(dphy->phy);
+	}
+
+	phy_set_drvdata(dphy->phy, dphy);
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider)) {
+		dev_err(dev, "Failed to register PHY provider: %d\n",
+			PTR_ERR(provider));
+		return PTR_ERR(provider);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id cdns_dphy_rx_of_match[] = {
+	{ .compatible = "cdns,dphy-rx" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, cdns_dphy_rx_of_match);
+
+static struct platform_driver cdns_dphy_rx_platform_driver = {
+	.probe		= cdns_dphy_rx_probe,
+	.driver		= {
+		.name		= "cdns-mipi-dphy-rx",
+		.of_match_table	= cdns_dphy_rx_of_match,
+	},
+};
+module_platform_driver(cdns_dphy_rx_platform_driver);
+
+MODULE_AUTHOR("Pratyush Yadav <p.yadav@ti.com>");
+MODULE_DESCRIPTION("Cadence D-PHY Rx Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.33.1.835.ge9e5ba39a7


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
