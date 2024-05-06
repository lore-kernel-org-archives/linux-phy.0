Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCEA8C25B4F
	for <linux-phy@archiver.kernel.org>; Mon,  6 May 2024 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5fSyv/VH3uR+eNUaCQvpt9bNgjs4SLSexuu5AfvaaQ=; b=zUvYDRS2uSnK4E
	f+0qCl+49ZPAEHIjbV1IkPWtdOHUPjw2ucd0xDWte9FcqK7WdiKEG2k6JEVhF/uGJVcnEvzI1D2xW
	0ST1BF7+zPuCCSnQuM7CY5PTVRu9vsUd7SfZwHyZCMOcdrv0ZwV49ywnWGM6r9jDCB05A4WnFmJ44
	Br5ZHPHvN3wIUnjQO61cvx+UEEdpPNczh68DYS2UoiAcNOoFnk5Nqyxfb9uJMTMDdMDPAUVhxoY0M
	YzTo70HAJIVsAL7zdzgfwaMaGPoRQ7wuMNi7L3mD9gIM4LiOS08eikZtyOxcI1mQSH0oDHt0WmZLg
	I7ZBz3xLiYco8hvzN+EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s41iP-00000008BGz-1GiN;
	Mon, 06 May 2024 17:01:25 +0000
Received: from out-184.mta1.migadu.com ([2001:41d0:203:375::b8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s41iK-00000008BCE-2bPK
	for linux-phy@lists.infradead.org;
	Mon, 06 May 2024 17:01:22 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715014878;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WqGifmGK1VRLWN7tyz/uR0yo4dopv/eFx5erL7mi9P0=;
	b=Ba9A5znNIBVCVkb+MOh3jJaKMXHzx76HJRpKwLqamxe453N5q3/vEmmuhtt1L51Yx4fz9u
	p0GL8eSCflKKc1r8k6vur313HPIIRzMckUTgIKtUvWdDQT8qkjF9qq7q9YtbSx96eNRN5t
	qyoMZgMrdpZOVHsKw+8NCZ6zuCdDW/Q=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH v2 2/4] phy: zynqmp: Store instance instead of type
Date: Mon,  6 May 2024 13:01:08 -0400
Message-Id: <20240506170110.2874724-3-sean.anderson@linux.dev>
In-Reply-To: <20240506170110.2874724-1-sean.anderson@linux.dev>
References: <20240506170110.2874724-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_100121_168855_40138C66 
X-CRM114-Status: GOOD (  19.51  )
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

Changes in v2:
- Expand the icm_matrix comment

 drivers/phy/xilinx/phy-zynqmp.c | 115 +++++++++-----------------------
 1 file changed, 31 insertions(+), 84 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 5a434382356c..5a8f81bbeb8d 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -147,22 +147,6 @@
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
 
@@ -185,7 +169,8 @@ struct xpsgtr_ssc {
 /**
  * struct xpsgtr_phy - representation of a lane
  * @phy: pointer to the kernel PHY device
- * @type: controller which uses this lane
+ * @instance: instance of the protocol type (such as the lane within a
+ *            protocol, or the USB/Ethernet controller)
  * @lane: lane number
  * @protocol: protocol in which the lane operates
  * @skip_phy_init: skip phy_init() if true
@@ -194,7 +179,7 @@ struct xpsgtr_ssc {
  */
 struct xpsgtr_phy {
 	struct phy *phy;
-	u8 type;
+	u8 instance;
 	u8 lane;
 	u8 protocol;
 	bool skip_phy_init;
@@ -331,8 +316,8 @@ static int xpsgtr_wait_pll_lock(struct phy *phy)
 
 	if (ret == -ETIMEDOUT)
 		dev_err(gtr_dev->dev,
-			"lane %u (type %u, protocol %u): PLL lock timeout\n",
-			gtr_phy->lane, gtr_phy->type, gtr_phy->protocol);
+			"lane %u (protocol %u, instance %u): PLL lock timeout\n",
+			gtr_phy->lane, gtr_phy->protocol, gtr_phy->instance);
 
 	return ret;
 }
@@ -647,8 +632,7 @@ static int xpsgtr_phy_power_on(struct phy *phy)
 	 * cumulating waits for both lanes. The user is expected to initialize
 	 * lane 0 last.
 	 */
-	if (gtr_phy->protocol != ICM_PROTOCOL_DP ||
-	    gtr_phy->type == XPSGTR_TYPE_DP_0)
+	if (gtr_phy->protocol != ICM_PROTOCOL_DP || !gtr_phy->instance)
 		ret = xpsgtr_wait_pll_lock(phy);
 
 	return ret;
@@ -678,73 +662,33 @@ static const struct phy_ops xpsgtr_phyops = {
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
@@ -752,22 +696,25 @@ static int xpsgtr_set_lane_type(struct xpsgtr_phy *gtr_phy, u8 phy_type,
 	if (phy_instance >= num_phy_types)
 		return -EINVAL;
 
-	gtr_phy->type = phy_types[phy_instance];
+	gtr_phy->instance = phy_instance;
 	return 0;
 }
 
 /*
- * Valid combinations of controllers and lanes (Interconnect Matrix).
+ * Valid combinations of controllers and lanes (Interconnect Matrix). Each
+ * "instance" represents one controller for a lane. For PCIe and DP, the
+ * "instance" is the logical lane in the link. For SATA, USB, and SGMII,
+ * the instance is the index of the controller.
+ *
+ * This information is only used to validate the devicetree reference, and is
+ * not used when programming the hardware.
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
+	{ 0, 0, 0, 1, 0 }, /* Lane 0 */
+	{ 1, 1, 0, 0, 1 }, /* Lane 1 */
+	{ 2, 0, 0, 1, 2 }, /* Lane 2 */
+	{ 3, 1, 1, 0, 3 }, /* Lane 3 */
 };
 
 /* Translate OF phandle and args to PHY instance. */
@@ -822,7 +769,7 @@ static struct phy *xpsgtr_xlate(struct device *dev,
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
