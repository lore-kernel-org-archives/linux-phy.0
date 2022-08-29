Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A39D2C0502C
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 15:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkHBBBbIlDkqSlUwc2glpGotmDUC3ahUyinuCFMpp+8=; b=p1TIjfaBm9sJ64
	ZBqnfJjBDl38KJ0ECmvWI3nCmx3cM09M9Kpk9HD7W5RiUnI67cx7Q64DeUbQTBSqRL+O88jwF8VCp
	rfFgiI1i9g4tQAh2VdP4mNe2K3h8uIi42BiBC7Bbi2rwTG4zsGpD21OVbHOj0s+v8VLLEINm9r1sN
	/DnzDtjrv4waFAQ6uWV9Uad9nRd1+kuNr2rVYiKNHN+9A/OFY60dyb2l+/nixFJMoVQa9Vz0xJ6MU
	8L3tIoB662X1Rt27mdjPpDXUBYxNM5Nj+EuZssQ6A4DgG4AcVvAI4RhyemLNo67tbNc52vLYZF+86
	xrGDEPIJh6AUCkBUjhLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSgVG-00BJKa-Ud; Mon, 29 Aug 2022 15:16:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSgVD-00BJI1-SI
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 15:16:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oSgUz-0006bl-QP; Mon, 29 Aug 2022 17:16:25 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	alexander.stein@ew.tq-group.com,
	marex@denx.de,
	richard.leitner@linux.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH 2/2] fixup! phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY support
Date: Mon, 29 Aug 2022 17:16:23 +0200
Message-Id: <20220829151623.808344-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220829151623.808344-1-l.stach@pengutronix.de>
References: <1661760917-9558-1-git-send-email-hongxing.zhu@nxp.com>
 <20220829151623.808344-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_081639_947526_005EE923 
X-CRM114-Status: GOOD (  13.43  )
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

---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 31 +++-------------------
 1 file changed, 3 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index 3463b4299f2f..f714f419b91f 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_device.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
@@ -47,10 +48,6 @@
 #define IMX8MM_GPR_PCIE_SSC_EN		BIT(16)
 #define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE	BIT(9)
 
-#define IMX8MP_GPR_REG0			0x0
-#define IMX8MP_GPR_PHY_APB_RST		BIT(4)
-#define IMX8MP_GPR_PHY_INIT_RST		BIT(5)
-
 enum imx8_pcie_phy_type {
 	IMX8MM,
 	IMX8MP,
@@ -58,10 +55,8 @@ enum imx8_pcie_phy_type {
 
 struct imx8_pcie_phy {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*clk;
 	struct phy		*phy;
-	struct regmap		*hsio_blk_ctrl;
 	struct regmap		*iomuxc_gpr;
 	struct reset_control	*reset;
 	struct reset_control	*perst;
@@ -93,13 +88,6 @@ static int imx8_pcie_phy_init(struct phy *phy)
 		break;
 	case IMX8MP:
 		reset_control_assert(imx8_phy->perst);
-
-		/* release pcie_phy_apb_reset and pcie_phy_init_resetn */
-		regmap_update_bits(imx8_phy->hsio_blk_ctrl, IMX8MP_GPR_REG0,
-				   IMX8MP_GPR_PHY_APB_RST |
-				   IMX8MP_GPR_PHY_INIT_RST,
-				   IMX8MP_GPR_PHY_APB_RST |
-				   IMX8MP_GPR_PHY_INIT_RST);
 		break;
 	}
 
@@ -204,21 +192,16 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
 	struct device *dev = &pdev->dev;
-	const struct of_device_id *of_id;
 	struct device_node *np = dev->of_node;
 	struct imx8_pcie_phy *imx8_phy;
 	struct resource *res;
 
-	of_id = of_match_device(imx8_pcie_phy_of_match, dev);
-	if (!of_id)
-		return -EINVAL;
-
 	imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
 	if (!imx8_phy)
 		return -ENOMEM;
 
-	imx8_phy->dev = dev;
-	imx8_phy->variant = (enum imx8_pcie_phy_type)of_id->data;
+	imx8_phy->variant =
+		(enum imx8_pcie_phy_type)of_device_get_match_data(dev);
 
 	/* get PHY refclk pad mode */
 	of_property_read_u32(np, "fsl,refclk-pad-mode",
@@ -257,14 +240,6 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(imx8_phy->reset);
 	}
 	if (imx8_phy->variant == IMX8MP) {
-		/* Grab HSIO MIX config register range */
-		imx8_phy->hsio_blk_ctrl =
-			 syscon_regmap_lookup_by_compatible("fsl,imx8mp-hsio-blk-ctrl");
-		if (IS_ERR(imx8_phy->hsio_blk_ctrl)) {
-			dev_err(dev, "Unable to find HSIO MIX registers\n");
-			return PTR_ERR(imx8_phy->hsio_blk_ctrl);
-		}
-
 		imx8_phy->perst =
 			devm_reset_control_get_exclusive(dev, "perst");
 		if (IS_ERR(imx8_phy->perst)) {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
