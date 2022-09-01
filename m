Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A45DECAAD1
	for <linux-phy@archiver.kernel.org>; Thu,  1 Sep 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QG+SGapdc2bSmLlvtFwP8JhH6OixS73dB4Q7dzKLqEY=; b=gC5ugjUgn9gAbm
	4ttgAUku5r1tt6yvX21MthYaM5VVDJVOC3ik7cq1HGtHTuYc1Wit/pf3FzkWWDvciD7lIKHXWYLqx
	14PhtMz2ZoabAsSwjnAZyzZInQSR+pXih3yXNu437nwKqMxSmIt478gYklnk7zxdlKbuM2+cho6TH
	Leuqaqnpq5W3P8BdMR8AmkuUtg6IfRrjgDD6noofAtn4T+HjFeavu5H66Y2laAlsOwxnejyQ8NqaA
	BHuv8xrU7rXvu657flFRpb76dyWZrsrIEL4HdX2bAHb8VT0LZuFqRTRAWLWNHppsbbuUKyyatme3B
	i2bCgONCeaxU9ytlwK5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTj25-00BehS-Rs; Thu, 01 Sep 2022 12:10:53 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTj22-00BefN-D8
	for linux-phy@lists.infradead.org; Thu, 01 Sep 2022 12:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1662034250; x=1693570250;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=RIo2pBaslBQzwR75AbcPm8a1ycfCen3KShSxpD0kInc=;
  b=Xg/TdPWN/qYMg/DkS+CXj5KJA8dcAL4EezhLED4DkzunSHkg65TLiQBg
   wQMG8IKUh1RbbNPbM1ca2dyTArOTE6pk+GzYE7RG9YjbdBV7Fxveb3h5p
   8lrA1qM/2KMIunG1OEDFuf/aq9cgzJVAjBXh0Zj79uhmCParXKuzjzFD/
   AkWhI2xQMHsPHDHUXi5GMiK4fZsuPPcro/RyXml1XNzhddbmNO7nbqydb
   ORuuTBuIuvS0idQWMjsP5u1G8ATmX14ACtXQ4zk510tJpEOC/5sGv/dhh
   de/1LAymrb9H61XD9/7P3kxXF62F6S3UWfV6XgnFD/VckJYxDt6ldPOiw
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; 
   d="scan'208";a="188977520"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Sep 2022 05:10:43 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Thu, 1 Sep 2022 05:10:41 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.12 via Frontend Transport; Thu, 1 Sep 2022 05:10:40 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <rmk+kernel@armlinux.org.uk>,
	<UNGLinuxDriver@microchip.com>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH] phy: Add RGMII support on lan966x
Date: Thu, 1 Sep 2022 14:14:55 +0200
Message-ID: <20220901121455.245103-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_051050_480165_A6F64970 
X-CRM114-Status: GOOD (  14.30  )
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

The serdes driver contains also a mux to decide which interface type to
use. Currently the driver supports GMII/SGMII/QSGMII and partially RGMII.
As it doesn't support all the other RGMII interfaces like
RGMII_TXID/RXID/ID and it could run only at 1G.
Therefore extend this for all the other speeds(10/100) and also allow
the other interfaces.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/phy/microchip/lan966x_serdes.c      | 99 ++++++++++++++++++---
 drivers/phy/microchip/lan966x_serdes_regs.h | 42 +++++++++
 2 files changed, 129 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
index e86a879b92b5..fbc725ffa4ab 100644
--- a/drivers/phy/microchip/lan966x_serdes.c
+++ b/drivers/phy/microchip/lan966x_serdes.c
@@ -42,7 +42,10 @@
 #define SERDES_MUX_QSGMII(i, p, m, c) \
 	SERDES_MUX(i, p, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_QSGMII, m, c)
 #define SERDES_MUX_RGMII(i, p, m, c) \
-	SERDES_MUX(i, p, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_RGMII, m, c)
+	SERDES_MUX(i, p, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_RGMII, m, c), \
+	SERDES_MUX(i, p, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_RGMII_TXID, m, c), \
+	SERDES_MUX(i, p, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_RGMII_RXID, m, c), \
+	SERDES_MUX(i, p, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_RGMII_ID, m, c)
 
 static void lan_rmw_(u32 val, u32 mask, void __iomem *mem, u32 offset)
 {
@@ -94,21 +97,29 @@ static const struct serdes_mux lan966x_serdes_muxes[] = {
 			 HSIO_HW_CFG_SD6G_1_CFG_SET(1)),
 
 	SERDES_MUX_RGMII(RGMII(0), 2, HSIO_HW_CFG_RGMII_0_CFG |
-			 HSIO_HW_CFG_RGMII_ENA,
-			 HSIO_HW_CFG_RGMII_0_CFG_SET(BIT(0)) |
-			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(0))),
+			 HSIO_HW_CFG_RGMII_ENA |
+			 HSIO_HW_CFG_GMII_ENA,
+			 HSIO_HW_CFG_RGMII_0_CFG_SET(0) |
+			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(0)) |
+			 HSIO_HW_CFG_GMII_ENA_SET(BIT(2))),
 	SERDES_MUX_RGMII(RGMII(1), 3, HSIO_HW_CFG_RGMII_1_CFG |
-			 HSIO_HW_CFG_RGMII_ENA,
-			 HSIO_HW_CFG_RGMII_1_CFG_SET(BIT(0)) |
-			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(1))),
+			 HSIO_HW_CFG_RGMII_ENA |
+			 HSIO_HW_CFG_GMII_ENA,
+			 HSIO_HW_CFG_RGMII_1_CFG_SET(0) |
+			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(1)) |
+			 HSIO_HW_CFG_GMII_ENA_SET(BIT(3))),
 	SERDES_MUX_RGMII(RGMII(0), 5, HSIO_HW_CFG_RGMII_0_CFG |
-			 HSIO_HW_CFG_RGMII_ENA,
+			 HSIO_HW_CFG_RGMII_ENA |
+			 HSIO_HW_CFG_GMII_ENA,
 			 HSIO_HW_CFG_RGMII_0_CFG_SET(BIT(0)) |
-			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(0))),
+			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(0)) |
+			 HSIO_HW_CFG_GMII_ENA_SET(BIT(5))),
 	SERDES_MUX_RGMII(RGMII(1), 6, HSIO_HW_CFG_RGMII_1_CFG |
-			 HSIO_HW_CFG_RGMII_ENA,
+			 HSIO_HW_CFG_RGMII_ENA |
+			 HSIO_HW_CFG_GMII_ENA,
 			 HSIO_HW_CFG_RGMII_1_CFG_SET(BIT(0)) |
-			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(1))),
+			 HSIO_HW_CFG_RGMII_ENA_SET(BIT(1)) |
+			 HSIO_HW_CFG_GMII_ENA_SET(BIT(6))),
 };
 
 struct serdes_ctrl {
@@ -382,6 +393,67 @@ static int lan966x_sd6g40_setup(struct serdes_macro *macro, u32 idx, int mode)
 	return lan966x_sd6g40_setup_lane(macro, conf, idx);
 }
 
+static int lan966x_rgmii_setup(struct serdes_macro *macro, u32 idx, int mode)
+{
+	bool tx_delay = false;
+	bool rx_delay = false;
+
+	/* Configure RGMII */
+	lan_rmw(HSIO_RGMII_CFG_RGMII_RX_RST_SET(0) |
+		HSIO_RGMII_CFG_RGMII_TX_RST_SET(0) |
+		HSIO_RGMII_CFG_TX_CLK_CFG_SET(macro->speed == SPEED_1000 ? 1 :
+					      macro->speed == SPEED_100 ? 2 :
+					      macro->speed == SPEED_10 ? 3 : 0),
+		HSIO_RGMII_CFG_RGMII_RX_RST |
+		HSIO_RGMII_CFG_RGMII_TX_RST |
+		HSIO_RGMII_CFG_TX_CLK_CFG,
+		macro->ctrl->regs, HSIO_RGMII_CFG(idx));
+
+	if (mode == PHY_INTERFACE_MODE_RGMII ||
+	    mode == PHY_INTERFACE_MODE_RGMII_TXID)
+		rx_delay = true;
+
+	if (mode == PHY_INTERFACE_MODE_RGMII ||
+	    mode == PHY_INTERFACE_MODE_RGMII_RXID)
+		tx_delay = true;
+
+	/* Setup DLL configuration */
+	lan_rmw(HSIO_DLL_CFG_DLL_RST_SET(0) |
+		HSIO_DLL_CFG_DLL_ENA_SET(rx_delay),
+		HSIO_DLL_CFG_DLL_RST |
+		HSIO_DLL_CFG_DLL_ENA,
+		macro->ctrl->regs, HSIO_DLL_CFG(idx == 0 ? 0x0 : 0x2));
+
+	lan_rmw(HSIO_DLL_CFG_DELAY_ENA_SET(rx_delay),
+		HSIO_DLL_CFG_DELAY_ENA,
+		macro->ctrl->regs, HSIO_DLL_CFG(idx == 0 ? 0x0 : 0x2));
+
+	lan_rmw(HSIO_DLL_CFG_DLL_RST_SET(0) |
+		HSIO_DLL_CFG_DLL_ENA_SET(tx_delay),
+		HSIO_DLL_CFG_DLL_RST |
+		HSIO_DLL_CFG_DLL_ENA,
+		macro->ctrl->regs, HSIO_DLL_CFG(idx == 0 ? 0x1 : 0x3));
+
+	lan_rmw(HSIO_DLL_CFG_DELAY_ENA_SET(tx_delay),
+		HSIO_DLL_CFG_DELAY_ENA,
+		macro->ctrl->regs, HSIO_DLL_CFG(idx == 0 ? 0x1 : 0x3));
+
+	return 0;
+}
+
+static int serdes_set_speed(struct phy *phy, int speed)
+{
+	struct serdes_macro *macro = phy_get_drvdata(phy);
+
+	if (!phy_interface_mode_is_rgmii(macro->mode))
+		return 0;
+
+	macro->speed = speed;
+	lan966x_rgmii_setup(macro, macro->idx - (SERDES6G_MAX + 1), macro->mode);
+
+	return 0;
+}
+
 static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct serdes_macro *macro = phy_get_drvdata(phy);
@@ -424,7 +496,9 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 						    macro->mode);
 
 		if (macro->idx < RGMII_MAX)
-			return 0;
+			return lan966x_rgmii_setup(macro,
+						   macro->idx - (SERDES6G_MAX + 1),
+						   macro->mode);
 
 		return -EOPNOTSUPP;
 	}
@@ -434,6 +508,7 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 
 static const struct phy_ops serdes_ops = {
 	.set_mode	= serdes_set_mode,
+	.set_speed	= serdes_set_speed,
 	.owner		= THIS_MODULE,
 };
 
diff --git a/drivers/phy/microchip/lan966x_serdes_regs.h b/drivers/phy/microchip/lan966x_serdes_regs.h
index ea30f64ffd5c..ac54cd01fea6 100644
--- a/drivers/phy/microchip/lan966x_serdes_regs.h
+++ b/drivers/phy/microchip/lan966x_serdes_regs.h
@@ -206,4 +206,46 @@ enum lan966x_target {
 #define HSIO_HW_CFG_QSGMII_ENA_GET(x)\
 	FIELD_GET(HSIO_HW_CFG_QSGMII_ENA, x)
 
+/*      HSIO:HW_CFGSTAT:RGMII_CFG */
+#define HSIO_RGMII_CFG(r)         __REG(TARGET_HSIO, 0, 1, 104, 0, 1, 52, 20, r, 2, 4)
+
+#define HSIO_RGMII_CFG_TX_CLK_CFG                GENMASK(4, 2)
+#define HSIO_RGMII_CFG_TX_CLK_CFG_SET(x)\
+	FIELD_PREP(HSIO_RGMII_CFG_TX_CLK_CFG, x)
+#define HSIO_RGMII_CFG_TX_CLK_CFG_GET(x)\
+	FIELD_GET(HSIO_RGMII_CFG_TX_CLK_CFG, x)
+
+#define HSIO_RGMII_CFG_RGMII_TX_RST              BIT(1)
+#define HSIO_RGMII_CFG_RGMII_TX_RST_SET(x)\
+	FIELD_PREP(HSIO_RGMII_CFG_RGMII_TX_RST, x)
+#define HSIO_RGMII_CFG_RGMII_TX_RST_GET(x)\
+	FIELD_GET(HSIO_RGMII_CFG_RGMII_TX_RST, x)
+
+#define HSIO_RGMII_CFG_RGMII_RX_RST              BIT(0)
+#define HSIO_RGMII_CFG_RGMII_RX_RST_SET(x)\
+	FIELD_PREP(HSIO_RGMII_CFG_RGMII_RX_RST, x)
+#define HSIO_RGMII_CFG_RGMII_RX_RST_GET(x)\
+	FIELD_GET(HSIO_RGMII_CFG_RGMII_RX_RST, x)
+
+/*      HSIO:HW_CFGSTAT:DLL_CFG */
+#define HSIO_DLL_CFG(r)           __REG(TARGET_HSIO, 0, 1, 104, 0, 1, 52, 36, r, 4, 4)
+
+#define HSIO_DLL_CFG_DELAY_ENA                   BIT(2)
+#define HSIO_DLL_CFG_DELAY_ENA_SET(x)\
+	FIELD_PREP(HSIO_DLL_CFG_DELAY_ENA, x)
+#define HSIO_DLL_CFG_DELAY_ENA_GET(x)\
+	FIELD_GET(HSIO_DLL_CFG_DELAY_ENA, x)
+
+#define HSIO_DLL_CFG_DLL_ENA                     BIT(1)
+#define HSIO_DLL_CFG_DLL_ENA_SET(x)\
+	FIELD_PREP(HSIO_DLL_CFG_DLL_ENA, x)
+#define HSIO_DLL_CFG_DLL_ENA_GET(x)\
+	FIELD_GET(HSIO_DLL_CFG_DLL_ENA, x)
+
+#define HSIO_DLL_CFG_DLL_RST                     BIT(0)
+#define HSIO_DLL_CFG_DLL_RST_SET(x)\
+	FIELD_PREP(HSIO_DLL_CFG_DLL_RST, x)
+#define HSIO_DLL_CFG_DLL_RST_GET(x)\
+	FIELD_GET(HSIO_DLL_CFG_DLL_RST, x)
+
 #endif /* _LAN966X_HSIO_REGS_H_ */
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
