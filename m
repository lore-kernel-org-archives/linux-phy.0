Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE96C10F15
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 18:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2MjeS8jrTXaA5sDVFXyWAVE5PEt5DazynX3FQ8AA7g=; b=F6gqd2FT4Zn12J
	NwZYntDsWWFnRqEwSCtJiKz0XwhpG+/urnRBNHJdcMELQCuVI14Cve95W2+3ncnFl+R5mYJqjUSbg
	juoNw+G+DnQd2dSr8QDAdMZcegnANiBUinDO1K4ruWDHS5RfTeyPorzvSke2f6dFgbayAU23+leRi
	IKbTL7GW8gU7qkYJr7a8atfHGoWlDXwXZwTqjC2niDLKAIamzFPnInFJ6vPDi97g4tIgHNHYNf8bx
	VL0xIY2+zKwbNH/lC0y9pIBIGYwm73EwwxQSkYoRgYuamimUmtVTZz/XaHo0Dw18sm5HjzT9Ho+Jl
	9orU3IzDrv9adLnKxFPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrq-0000000Ei81-1uvT;
	Mon, 22 Apr 2024 18:58:18 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrl-0000000Ei4m-2rCI
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 18:58:16 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713812290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2nEfY1XozlY3i97oqjNfAQ99IopkjONdMTRbrJqH5LA=;
	b=CDBgI7nuTp0UNXJIVK/kq2arWUCNLXgS4+jEt/704hzJd4qK4VS51xL1oEtZ/KPZyINryD
	24BxU+VQAOYtFmMFqHKgQu0TIcIzRd0EYODCgU5eVMWQRvmNqLY61QGLWwvNpBnDYpVWLS
	uEErXji48kJqSSY/+DOxA6CqHe2Jl28=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 1/3] phy: zynqmp: Store instance instead of type
Date: Mon, 22 Apr 2024 14:58:01 -0400
Message-Id: <20240422185803.3575319-2-sean.anderson@linux.dev>
In-Reply-To: <20240422185803.3575319-1-sean.anderson@linux.dev>
References: <20240422185803.3575319-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_115813_919927_187B23C8 
X-CRM114-Status: GOOD (  16.77  )
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

The phy "type" is just the combination of protocol and instance, and is
never used apart from that. Store the instance directly, instead of
converting to a type first. No functional change intended.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 drivers/phy/xilinx/phy-zynqmp.c | 107 +++++++-------------------------
 1 file changed, 24 insertions(+), 83 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index f72c5257d712..b507ed4c3053 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -146,22 +146,6 @@
 /* Total number of controllers */
 #define CONTROLLERS_PER_LANE		5
 
-/* Protocol Type parameters */
-#define XPSGTR_TYPE_USB0		0  /* USB controller 0 */
-#define XPSGTR_TYPE_USB1		1  /* USB controller 1 */
-#define XPSGTR_TYPE_SATA_0		2  /* SATA controller lane 0 */
-#define XPSGTR_TYPE_SATA_1		3  /* SATA controller lane 1 */
-#define XPSGTR_TYPE_PCIE_0		4  /* PCIe controller lane 0 */
-#define XPSGTR_TYPE_PCIE_1		5  /* PCIe controller lane 1 */
-#define XPSGTR_TYPE_PCIE_2		6  /* PCIe controller lane 2 */
-#define XPSGTR_TYPE_PCIE_3		7  /* PCIe controller lane 3 */
-#define XPSGTR_TYPE_DP_0		8  /* Display Port controller lane 0 */
-#define XPSGTR_TYPE_DP_1		9  /* Display Port controller lane 1 */
-#define XPSGTR_TYPE_SGMII0		10 /* Ethernet SGMII controller 0 */
-#define XPSGTR_TYPE_SGMII1		11 /* Ethernet SGMII controller 1 */
-#define XPSGTR_TYPE_SGMII2		12 /* Ethernet SGMII controller 2 */
-#define XPSGTR_TYPE_SGMII3		13 /* Ethernet SGMII controller 3 */
-
 /* Timeout values */
 #define TIMEOUT_US			1000
 
@@ -184,7 +168,8 @@ struct xpsgtr_ssc {
 /**
  * struct xpsgtr_phy - representation of a lane
  * @phy: pointer to the kernel PHY device
- * @type: controller which uses this lane
+ * @instance: instance of the protocol type (such as the lane within a
+ *            protocol, or the USB/Ethernet controller)
  * @lane: lane number
  * @protocol: protocol in which the lane operates
  * @skip_phy_init: skip phy_init() if true
@@ -193,7 +178,7 @@ struct xpsgtr_ssc {
  */
 struct xpsgtr_phy {
 	struct phy *phy;
-	u8 type;
+	u8 instance;
 	u8 lane;
 	u8 protocol;
 	bool skip_phy_init;
@@ -330,8 +315,8 @@ static int xpsgtr_wait_pll_lock(struct phy *phy)
 
 	if (ret == -ETIMEDOUT)
 		dev_err(gtr_dev->dev,
-			"lane %u (type %u, protocol %u): PLL lock timeout\n",
-			gtr_phy->lane, gtr_phy->type, gtr_phy->protocol);
+			"lane %u (protocol %u, instance %u): PLL lock timeout\n",
+			gtr_phy->lane, gtr_phy->protocol, gtr_phy->instance);
 
 	return ret;
 }
@@ -643,8 +628,7 @@ static int xpsgtr_phy_power_on(struct phy *phy)
 	 * cumulating waits for both lanes. The user is expected to initialize
 	 * lane 0 last.
 	 */
-	if (gtr_phy->protocol != ICM_PROTOCOL_DP ||
-	    gtr_phy->type == XPSGTR_TYPE_DP_0)
+	if (gtr_phy->protocol != ICM_PROTOCOL_DP || !gtr_phy->instance)
 		ret = xpsgtr_wait_pll_lock(phy);
 
 	return ret;
@@ -674,73 +658,33 @@ static const struct phy_ops xpsgtr_phyops = {
  * OF Xlate Support
  */
 
-/* Set the lane type and protocol based on the PHY type and instance number. */
+/* Set the lane protocol and instance based on the PHY type and instance number. */
 static int xpsgtr_set_lane_type(struct xpsgtr_phy *gtr_phy, u8 phy_type,
 				unsigned int phy_instance)
 {
 	unsigned int num_phy_types;
-	const int *phy_types;
 
 	switch (phy_type) {
-	case PHY_TYPE_SATA: {
-		static const int types[] = {
-			XPSGTR_TYPE_SATA_0,
-			XPSGTR_TYPE_SATA_1,
-		};
-
-		phy_types = types;
-		num_phy_types = ARRAY_SIZE(types);
+	case PHY_TYPE_SATA:
+		num_phy_types = 2;
 		gtr_phy->protocol = ICM_PROTOCOL_SATA;
 		break;
-	}
-	case PHY_TYPE_USB3: {
-		static const int types[] = {
-			XPSGTR_TYPE_USB0,
-			XPSGTR_TYPE_USB1,
-		};
-
-		phy_types = types;
-		num_phy_types = ARRAY_SIZE(types);
+	case PHY_TYPE_USB3:
+		num_phy_types = 2;
 		gtr_phy->protocol = ICM_PROTOCOL_USB;
 		break;
-	}
-	case PHY_TYPE_DP: {
-		static const int types[] = {
-			XPSGTR_TYPE_DP_0,
-			XPSGTR_TYPE_DP_1,
-		};
-
-		phy_types = types;
-		num_phy_types = ARRAY_SIZE(types);
+	case PHY_TYPE_DP:
+		num_phy_types = 2;
 		gtr_phy->protocol = ICM_PROTOCOL_DP;
 		break;
-	}
-	case PHY_TYPE_PCIE: {
-		static const int types[] = {
-			XPSGTR_TYPE_PCIE_0,
-			XPSGTR_TYPE_PCIE_1,
-			XPSGTR_TYPE_PCIE_2,
-			XPSGTR_TYPE_PCIE_3,
-		};
-
-		phy_types = types;
-		num_phy_types = ARRAY_SIZE(types);
+	case PHY_TYPE_PCIE:
+		num_phy_types = 4;
 		gtr_phy->protocol = ICM_PROTOCOL_PCIE;
 		break;
-	}
-	case PHY_TYPE_SGMII: {
-		static const int types[] = {
-			XPSGTR_TYPE_SGMII0,
-			XPSGTR_TYPE_SGMII1,
-			XPSGTR_TYPE_SGMII2,
-			XPSGTR_TYPE_SGMII3,
-		};
-
-		phy_types = types;
-		num_phy_types = ARRAY_SIZE(types);
+	case PHY_TYPE_SGMII:
+		num_phy_types = 4;
 		gtr_phy->protocol = ICM_PROTOCOL_SGMII;
 		break;
-	}
 	default:
 		return -EINVAL;
 	}
@@ -748,7 +692,7 @@ static int xpsgtr_set_lane_type(struct xpsgtr_phy *gtr_phy, u8 phy_type,
 	if (phy_instance >= num_phy_types)
 		return -EINVAL;
 
-	gtr_phy->type = phy_types[phy_instance];
+	gtr_phy->instance = phy_instance;
 	return 0;
 }
 
@@ -756,14 +700,11 @@ static int xpsgtr_set_lane_type(struct xpsgtr_phy *gtr_phy, u8 phy_type,
  * Valid combinations of controllers and lanes (Interconnect Matrix).
  */
 static const unsigned int icm_matrix[NUM_LANES][CONTROLLERS_PER_LANE] = {
-	{ XPSGTR_TYPE_PCIE_0, XPSGTR_TYPE_SATA_0, XPSGTR_TYPE_USB0,
-		XPSGTR_TYPE_DP_1, XPSGTR_TYPE_SGMII0 },
-	{ XPSGTR_TYPE_PCIE_1, XPSGTR_TYPE_SATA_1, XPSGTR_TYPE_USB0,
-		XPSGTR_TYPE_DP_0, XPSGTR_TYPE_SGMII1 },
-	{ XPSGTR_TYPE_PCIE_2, XPSGTR_TYPE_SATA_0, XPSGTR_TYPE_USB0,
-		XPSGTR_TYPE_DP_1, XPSGTR_TYPE_SGMII2 },
-	{ XPSGTR_TYPE_PCIE_3, XPSGTR_TYPE_SATA_1, XPSGTR_TYPE_USB1,
-		XPSGTR_TYPE_DP_0, XPSGTR_TYPE_SGMII3 }
+	/* PCIe, SATA, USB, DP, SGMII */
+	{ 0, 0, 0, 1, 0 },
+	{ 1, 1, 0, 0, 1 },
+	{ 2, 0, 0, 1, 2 },
+	{ 3, 1, 1, 0, 3 },
 };
 
 /* Translate OF phandle and args to PHY instance. */
@@ -818,7 +759,7 @@ static struct phy *xpsgtr_xlate(struct device *dev,
 	 * is allowed to operate on the lane.
 	 */
 	for (i = 0; i < CONTROLLERS_PER_LANE; i++) {
-		if (icm_matrix[phy_lane][i] == gtr_phy->type)
+		if (icm_matrix[phy_lane][i] == gtr_phy->instance)
 			return gtr_phy->phy;
 	}
 
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
