Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6380C49EA5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 492B2613FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 492B2613FE
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpciINQSMzn6JHJT3wD+kEiADuFMh38VxSq2YFqTcXE=; b=KlkI08DgeJQZFc
	+KdD877NxKU/5MLKqcv3V0JTQHxrn2BnIRyVQq1XQU1Sq/fiDtcL9cScu8FMwlRT6raFnY4LaalDS
	fe5/1l/mNMxFg3ApGPPYBiRXTI8GL5m6v2z9kgk5mxALA2wRjPuIwG8mjL2WnnJtoVsnUimj4n4CM
	JR0CNqA6lF4uAPOOPjnhov6UPi9QF4hNMJbtUp72FvVJ15EmIaBaJ3rSeWF86kAD11N7ta+c3qMu0
	hOGg+C3MQa+7XWz0hRVD4gC5OjNJ66BtkpY9izdXf2FaFWS/WFgK4hcVKHbDEZGbcZeqRPzLfITIQ
	eWyMCZfNpaxhgxCd1QvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUIB-00Fsho-R4; Thu, 24 Jun 2021 18:41:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUI8-00Fsgl-D4
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 18:41:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15OIfSEu028707;
 Thu, 24 Jun 2021 13:41:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1624560088;
 bh=K/PytxzX+lE6FChIpulGn8q7X95IkG0H5Mfx1OTjTnI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pFZdNl1AkAYdPMBNDNzlHIoOm/1mdxdGqvSWPPX3b9pEkQi55ENV83ggXifkQn4Ct
 Jvv17rwYc/poFZtZ6khq4UTLdzw/aSr+X1+shqvQXP2cPzMVnKck6TqQ8/MtcIIGCQ
 BaatlmgA+OQHz61jNDHWrsQFduVjHo3PmnVOu4CI=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15OIfSTH005139
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 24 Jun 2021 13:41:28 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 24
 Jun 2021 13:41:27 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 24 Jun 2021 13:41:27 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15OIf9I1041395;
 Thu, 24 Jun 2021 13:41:24 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Nikhil Devshatwar <nikhil.nd@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Pratyush Yadav <p.yadav@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Chen <peter.chen@nxp.com>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: [PATCH v3 4/7] phy: cdns-dphy: Add Rx support
Date: Fri, 25 Jun 2021 00:11:05 +0530
Message-ID: <20210624184108.21312-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210624184108.21312-1-p.yadav@ti.com>
References: <20210624184108.21312-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_114132_596187_9695026D 
X-CRM114-Status: GOOD (  23.71  )
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

The Cadence DPHY can be used to receive image data over the CSI-2
protocol. Add support for Rx mode. The programming sequence differs from
the Tx mode so it is added as a separate set of hooks to isolate the two
paths.

The PHY is in Tx mode by default and it needs to be set in Rx mode by
setting the submode to PHY_MIPI_DPHY_SUBMODE_RX in the set_mode()
callback.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

---

Changes in v3:
- Use a table to select the band.
- Use a table to poll the data lane ready bits.
- Multiply the DPHY HS clock rate by 2 to get the bit rate since the
  clock is DDR.

 drivers/phy/cadence/cdns-dphy.c | 174 ++++++++++++++++++++++++++++++++
 1 file changed, 174 insertions(+)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index 7d5f7b333893..7534ec957dc5 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -1,11 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright: 2017-2018 Cadence Design Systems, Inc.
+ * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 #include <linux/bitops.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -25,10 +28,14 @@
 #define DPHY_PMA_RCLK(reg)		(0x600 + (reg))
 #define DPHY_PMA_RDATA(lane, reg)	(0x700 + ((lane) * 0x100) + (reg))
 #define DPHY_PCS(reg)			(0xb00 + (reg))
+#define DPHY_ISO(reg)			(0xc00 + (reg))
 
 #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
 #define DPHY_CMN_SSM_EN			BIT(0)
+#define DPHY_CMN_RX_BANDGAP_TIMER_MASK	GENMASK(8, 1)
 #define DPHY_CMN_TX_MODE_EN		BIT(9)
+#define DPHY_CMN_RX_MODE_EN		BIT(10)
+#define DPHY_CMN_RX_BANDGAP_TIMER	0x14
 
 #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
 #define DPHY_CMN_PWM_DIV(x)		((x) << 20)
@@ -45,10 +52,27 @@
 #define DPHY_CMN_OPDIV_FROM_REG		BIT(6)
 #define DPHY_CMN_OPDIV(x)		((x) << 7)
 
+#define DPHY_BAND_CFG			DPHY_PCS(0x0)
+#define DPHY_BAND_CFG_LEFT_BAND		GENMASK(4, 0)
+#define DPHY_BAND_CFG_RIGHT_BAND	GENMASK(9, 5)
+
 #define DPHY_PSM_CFG			DPHY_PCS(0x4)
 #define DPHY_PSM_CFG_FROM_REG		BIT(0)
 #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
 
+#define DPHY_POWER_ISLAND_EN_DATA	DPHY_PCS(0x8)
+#define DPHY_POWER_ISLAND_EN_DATA_VAL	0xaaaaaaaa
+#define DPHY_POWER_ISLAND_EN_CLK	DPHY_PCS(0xc)
+#define DPHY_POWER_ISLAND_EN_CLK_VAL	0xaa
+
+#define DPHY_ISO_CL_CTRL_L		DPHY_ISO(0x10)
+#define DPHY_ISO_DL_CTRL_L0		DPHY_ISO(0x14)
+#define DPHY_ISO_DL_CTRL_L1		DPHY_ISO(0x20)
+#define DPHY_ISO_DL_CTRL_L2		DPHY_ISO(0x30)
+#define DPHY_ISO_DL_CTRL_L3		DPHY_ISO(0x3c)
+#define DPHY_ISO_LANE_READY_BIT		0
+#define DPHY_ISO_LANE_READY_TIMEOUT_MS	100UL
+
 #define DSI_HBP_FRAME_OVERHEAD		12
 #define DSI_HSA_FRAME_OVERHEAD		14
 #define DSI_HFP_FRAME_OVERHEAD		6
@@ -57,6 +81,9 @@
 #define DSI_NULL_FRAME_OVERHEAD		6
 #define DSI_EOT_PKT_SIZE		4
 
+#define DPHY_LANES_MIN			1
+#define DPHY_LANES_MAX			4
+
 struct cdns_dphy_cfg {
 	u8 pll_ipdiv;
 	u8 pll_opdiv;
@@ -103,6 +130,22 @@ struct cdns_dphy_driver_data {
 	const struct cdns_dphy_ops *rx;
 };
 
+struct cdns_dphy_rx_band {
+	unsigned int min_rate;
+	unsigned int max_rate;
+};
+
+/* Order of bands is important since the index is the band number. */
+struct cdns_dphy_rx_band bands[] = {
+	{80, 100}, {100, 120}, {120, 160}, {160, 200}, {200, 240},
+	{240, 280}, {280, 320}, {320, 360}, {360, 400}, {400, 480},
+	{480, 560}, {560, 640}, {640, 720}, {720, 800}, {800, 880},
+	{880, 1040}, {1040, 1200}, {1200, 1350}, {1350, 1500}, {1500, 1750},
+	{1750, 2000}, {2000, 2250}, {2250, 2500}
+};
+
+int num_bands = ARRAY_SIZE(bands);
+
 static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
 				     struct cdns_dphy_cfg *cfg,
 				     struct phy_configure_opts_mipi_dphy *opts,
@@ -312,6 +355,135 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
 	.set_psm_div = cdns_dphy_ref_set_psm_div,
 };
 
+static int cdns_dphy_rx_power_on(struct cdns_dphy *dphy)
+{
+	/* Start RX state machine. */
+	writel(DPHY_CMN_SSM_EN | DPHY_CMN_RX_MODE_EN |
+	       FIELD_PREP(DPHY_CMN_RX_BANDGAP_TIMER_MASK,
+			  DPHY_CMN_RX_BANDGAP_TIMER),
+	       dphy->regs + DPHY_CMN_SSM);
+
+	return 0;
+}
+
+static int cdns_dphy_rx_power_off(struct cdns_dphy *dphy)
+{
+	writel(0, dphy->regs + DPHY_CMN_SSM);
+
+	return 0;
+}
+
+static int cdns_dphy_rx_get_band_ctrl(unsigned long hs_clk_rate)
+{
+	unsigned int rate;
+	int i;
+
+	rate = hs_clk_rate / 1000000UL;
+	/* Since CSI-2 clock is DDR, the bit rate is twice the clock rate. */
+	rate *= 2;
+
+	if (rate < bands[0].min_rate || rate >= bands[num_bands - 1].max_rate)
+		return -EOPNOTSUPP;
+
+	for (i = 0; i < num_bands; i++) {
+		if (rate >= bands[i].min_rate && rate < bands[i].max_rate)
+			return i;
+	}
+
+	/* Unreachable. */
+	WARN(1, "Reached unreachable code.");
+	return -EINVAL;
+}
+
+static int cdns_dphy_rx_wait_for_bit(void __iomem *addr, unsigned int bit)
+{
+	u32 val;
+
+	return readl_relaxed_poll_timeout(addr, val, val & BIT(bit), 10,
+					  DPHY_ISO_LANE_READY_TIMEOUT_MS * 1000);
+}
+
+static int cdns_dphy_rx_wait_lane_ready(struct cdns_dphy *dphy, int lanes)
+{
+	void __iomem *reg = dphy->regs;
+	u32 data_lane_ctrl[] = {DPHY_ISO_DL_CTRL_L0, DPHY_ISO_DL_CTRL_L1,
+				DPHY_ISO_DL_CTRL_L2, DPHY_ISO_DL_CTRL_L3};
+	int ret, i;
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
+static int cdns_dphy_rx_configure(struct cdns_dphy *dphy,
+				  union phy_configure_opts *opts)
+{
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
+static int cdns_dphy_rx_validate(struct cdns_dphy *dphy, enum phy_mode mode,
+				 int submode, union phy_configure_opts *opts)
+{
+	int ret;
+
+	if (submode != PHY_MIPI_DPHY_SUBMODE_RX)
+		return -EINVAL;
+
+	ret = cdns_dphy_rx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
+	if (ret < 0)
+		return ret;
+
+	return phy_mipi_dphy_config_validate(&opts->mipi_dphy);
+}
+
+static const struct cdns_dphy_ops rx_ref_dphy_ops = {
+	.power_on = cdns_dphy_rx_power_on,
+	.power_off = cdns_dphy_rx_power_off,
+	.configure = cdns_dphy_rx_configure,
+	.validate = cdns_dphy_rx_validate,
+};
+
 /*
  * This is the reference implementation of DPHY hooks. Specific integration of
  * this IP may have to re-implement some of them depending on how they decided
@@ -319,6 +491,7 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
  */
 static const struct cdns_dphy_driver_data ref_dphy_ops = {
 	.tx = &tx_ref_dphy_ops,
+	.rx = &rx_ref_dphy_ops,
 };
 
 static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
@@ -483,5 +656,6 @@ static struct platform_driver cdns_dphy_platform_driver = {
 module_platform_driver(cdns_dphy_platform_driver);
 
 MODULE_AUTHOR("Maxime Ripard <maxime.ripard@bootlin.com>");
+MODULE_AUTHOR("Pratyush Yadav <p.yadav@ti.com>");
 MODULE_DESCRIPTION("Cadence MIPI D-PHY Driver");
 MODULE_LICENSE("GPL");
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
