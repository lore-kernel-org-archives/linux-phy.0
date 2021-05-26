Return-Path: <SRS0=0r5I=KV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FF9AC47089
	for <linux-phy@archiver.kernel.org>; Wed, 26 May 2021 16:51:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E846E613C9
	for <linux-phy@archiver.kernel.org>; Wed, 26 May 2021 16:51:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E846E613C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cd7PhyYAwcXc3bM+SvvMUPgCATd49vBdQBg3I3C0JBg=; b=utIEiC2chOFnID
	ZFBX9yA3yVaIWsgmjRc7d9j6NI1Mf9KiuJi5EM91lP8q6U59zprV9N71dNZgHGxF6Jn+luj/EyHG/
	Rsut4R3FuYevW2v5MOP4sTmLHLkLyC3QseUl4K9mc2VwMyRxT+mXx1VDRK3dY3ifWU2cz4fIX3axS
	/MTPM+npDf/W/eda1e8D+8g05xaUXRL1v8VaIeR/BZj9tj81akDkeH70ihNnhkJxUehj9gYPWocDz
	xNk5Mti9L6kdMpAlR2xW5ze9LAaXs91ozhEQpUuzajDMJpbbknT2mhAaTGpVZKVWbCeW63+gLfHj8
	V1tfvYLrPJXhGuzGj//w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llwkl-00FsWL-A7; Wed, 26 May 2021 16:51:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llvNj-00FKZT-4h
 for linux-phy@lists.infradead.org; Wed, 26 May 2021 15:23:41 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14QFNZFF076842;
 Wed, 26 May 2021 10:23:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622042615;
 bh=YxJAyBuPJt+20Tmz+rFXgMt9hinHGh2Zdv4e/6trMVg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=kE1KXBvci06ZjrKHbphRdCvcvyiMb775yNNyqtk8+br7g4pj/ZGB1x1hczK6+Fe+F
 T0C2XYZyHJS8DKznE4GXtObYmd3nzqch4mDq1UqajLN+6y9zzJqi7AarHy2Gy9RQJu
 yDOk5b8pSDeuSg1UqyZpUPWgCpS08BfCyk894S4w=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14QFNZF3093354
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 May 2021 10:23:35 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 26
 May 2021 10:23:35 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 26 May 2021 10:23:35 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14QFN9Jc056314;
 Wed, 26 May 2021 10:23:30 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Pratyush Yadav
 <p.yadav@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>, Steve
 Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 04/18] phy: cdns-dphy: Add Rx support
Date: Wed, 26 May 2021 20:52:54 +0530
Message-ID: <20210526152308.16525-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210526152308.16525-1-p.yadav@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_082339_306179_CF20FC77 
X-CRM114-Status: GOOD (  21.84  )
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

(no changes since v1)

 drivers/phy/cadence/cdns-dphy.c | 237 ++++++++++++++++++++++++++++++++
 1 file changed, 237 insertions(+)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index 7d5f7b333893..7bbca679e2bb 100644
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
@@ -312,6 +339,214 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
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
+	unsigned int rate = hs_clk_rate / 1000000UL;
+
+	if (rate < 80 || rate >= 2500)
+		return -EOPNOTSUPP;
+
+	if (rate >= 80 && rate < 100)
+		return 0;
+
+	if (rate >= 100 && rate < 120)
+		return 1;
+
+	if (rate >= 120 && rate < 160)
+		return 2;
+
+	if (rate >= 160 && rate < 200)
+		return 3;
+
+	if (rate >= 200 && rate < 240)
+		return 4;
+
+	if (rate >= 240 && rate < 280)
+		return 5;
+
+	if (rate >= 280 && rate < 320)
+		return 6;
+
+	if (rate >= 320 && rate < 360)
+		return 7;
+
+	if (rate >= 360 && rate < 400)
+		return 8;
+
+	if (rate >= 400 && rate < 480)
+		return 9;
+
+	if (rate >= 480 && rate < 560)
+		return 10;
+
+	if (rate >= 560 && rate < 640)
+		return 11;
+
+	if (rate >= 640 && rate < 720)
+		return 12;
+
+	if (rate >= 720 && rate < 800)
+		return 13;
+
+	if (rate >= 800 && rate < 880)
+		return 14;
+
+	if (rate >= 880 && rate < 1040)
+		return 15;
+
+	if (rate >= 1040 && rate < 1200)
+		return 16;
+
+	if (rate >= 1200 && rate < 1350)
+		return 17;
+
+	if (rate >= 1350 && rate < 1500)
+		return 18;
+
+	if (rate >= 1500 && rate < 1750)
+		return 19;
+
+	if (rate >= 1750 && rate < 2000)
+		return 20;
+
+	if (rate >= 2000 && rate < 2250)
+		return 21;
+
+	if (rate >= 2250 && rate < 2500)
+		return 22;
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
+	int ret;
+
+	if (lanes < DPHY_LANES_MIN || lanes > DPHY_LANES_MAX)
+		return -EINVAL;
+
+	/* Clock lane */
+	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_CL_CTRL_L,
+					DPHY_ISO_LANE_READY_BIT);
+	if (ret)
+		return ret;
+
+	/* Data lanes. Minimum one lane is mandatory. */
+	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L0,
+					DPHY_ISO_LANE_READY_BIT);
+	if (ret)
+		return ret;
+
+	if (lanes < 2)
+		return 0;
+
+	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L1,
+					DPHY_ISO_LANE_READY_BIT);
+	if (ret)
+		return ret;
+
+	if (lanes < 3)
+		return 0;
+
+	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L2,
+					DPHY_ISO_LANE_READY_BIT);
+	if (ret)
+		return ret;
+
+	if (lanes < 4)
+		return 0;
+
+	ret = cdns_dphy_rx_wait_for_bit(reg + DPHY_ISO_DL_CTRL_L3,
+					DPHY_ISO_LANE_READY_BIT);
+	if (ret)
+		return ret;
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
@@ -319,6 +554,7 @@ static const struct cdns_dphy_ops tx_ref_dphy_ops = {
  */
 static const struct cdns_dphy_driver_data ref_dphy_ops = {
 	.tx = &tx_ref_dphy_ops,
+	.rx = &rx_ref_dphy_ops,
 };
 
 static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
@@ -483,5 +719,6 @@ static struct platform_driver cdns_dphy_platform_driver = {
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
