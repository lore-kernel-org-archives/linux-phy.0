Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D119ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 08:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXzE9GpN5uPCicJZHzyPWTZ/UGKhiQljbHn9prlNIoI=; b=UJQcxy2/Q/Lkdo
	jMzo/2fuBULIDW8YP57B/b+nYI3QeMI7Q4xp8gcFwJXc65mN+j+fDVihEW7RFV6VlhVaVGcnP1PpU
	vY5gHrQmolK1R/6rT75Eyw6dQA2n5NQToCf1hIH5QI2Tj3QFXX4pl56bfH8CKF5ShUIGH03U967t+
	eLM6CSNjC22RGTJpY/xRZ29Y74hgRRBFLq6E+RyzSc53SMs6I9CP3oR/GYfCCzVt7uJkRfhuvleRa
	4/1HgIssvr0n9kOFYI7zbb3vwzL+MgDZ9UXhHuTRQl4zZKc2+7abCxgvoW0MRa24IXj+pEdzhsDvQ
	dyw3Iwx5FD1MjUJNPToQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwJl-00F49z-LI; Tue, 30 Aug 2022 08:09:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwDy-00F1fh-85; Tue, 30 Aug 2022 08:03:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D54CE1A390F;
	Tue, 30 Aug 2022 10:03:52 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 726C01A3CF6;
	Tue, 30 Aug 2022 10:03:52 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 1C53A1820F5A;
	Tue, 30 Aug 2022 16:03:50 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	alexander.stein@ew.tq-group.com,
	marex@denx.de,
	richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v5 6/7] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY support
Date: Tue, 30 Aug 2022 15:46:03 +0800
Message-Id: <1661845564-11373-7-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1661845564-11373-1-git-send-email-hongxing.zhu@nxp.com>
References: <1661845564-11373-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_010354_606465_514DD0F5 
X-CRM114-Status: GOOD (  16.22  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add i.MX8MP PCIe PHY support.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Richard Leitner <richard.leitner@skidata.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 137 +++++++++++++--------
 1 file changed, 89 insertions(+), 48 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index ad7d2edfc414..c76e3a1a5f51 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -11,6 +11,9 @@
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
 #include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_device.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
@@ -31,12 +34,10 @@
 #define IMX8MM_PCIE_PHY_CMN_REG065	0x194
 #define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
 #define  ANA_AUX_TX_LVL			GENMASK(3, 0)
-#define IMX8MM_PCIE_PHY_CMN_REG75	0x1D4
-#define  PCIE_PHY_CMN_REG75_PLL_DONE	0x3
+#define IMX8MM_PCIE_PHY_CMN_REG075	0x1D4
+#define  ANA_PLL_DONE			0x3
 #define PCIE_PHY_TRSV_REG5		0x414
-#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP	0x2D
 #define PCIE_PHY_TRSV_REG6		0x418
-#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP	0xF
 
 #define IMX8MM_GPR_PCIE_REF_CLK_SEL	GENMASK(25, 24)
 #define IMX8MM_GPR_PCIE_REF_CLK_PLL	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
@@ -47,16 +48,23 @@
 #define IMX8MM_GPR_PCIE_SSC_EN		BIT(16)
 #define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE	BIT(9)
 
+enum imx8_pcie_phy_type {
+	IMX8MM,
+	IMX8MP,
+};
+
 struct imx8_pcie_phy {
 	void __iomem		*base;
 	struct clk		*clk;
 	struct phy		*phy;
 	struct regmap		*iomuxc_gpr;
 	struct reset_control	*reset;
+	struct reset_control	*perst;
 	u32			refclk_pad_mode;
 	u32			tx_deemph_gen1;
 	u32			tx_deemph_gen2;
 	bool			clkreq_unused;
+	enum imx8_pcie_phy_type	variant;
 };
 
 static int imx8_pcie_phy_init(struct phy *phy)
@@ -68,31 +76,20 @@ static int imx8_pcie_phy_init(struct phy *phy)
 	reset_control_assert(imx8_phy->reset);
 
 	pad_mode = imx8_phy->refclk_pad_mode;
-	/* Set AUX_EN_OVERRIDE 1'b0, when the CLKREQ# isn't hooked */
-	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
-			   IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
-			   imx8_phy->clkreq_unused ?
-			   0 : IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE);
-	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
-			   IMX8MM_GPR_PCIE_AUX_EN,
-			   IMX8MM_GPR_PCIE_AUX_EN);
-	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
-			   IMX8MM_GPR_PCIE_POWER_OFF, 0);
-	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
-			   IMX8MM_GPR_PCIE_SSC_EN, 0);
-
-	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
-			   IMX8MM_GPR_PCIE_REF_CLK_SEL,
-			   pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ?
-			   IMX8MM_GPR_PCIE_REF_CLK_EXT :
-			   IMX8MM_GPR_PCIE_REF_CLK_PLL);
-	usleep_range(100, 200);
-
-	/* Do the PHY common block reset */
-	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
-			   IMX8MM_GPR_PCIE_CMN_RST,
-			   IMX8MM_GPR_PCIE_CMN_RST);
-	usleep_range(200, 500);
+	switch (imx8_phy->variant) {
+	case IMX8MM:
+		/* Tune PHY de-emphasis setting to pass PCIe compliance. */
+		if (imx8_phy->tx_deemph_gen1)
+			writel(imx8_phy->tx_deemph_gen1,
+			       imx8_phy->base + PCIE_PHY_TRSV_REG5);
+		if (imx8_phy->tx_deemph_gen2)
+			writel(imx8_phy->tx_deemph_gen2,
+			       imx8_phy->base + PCIE_PHY_TRSV_REG6);
+		break;
+	case IMX8MP:
+		reset_control_assert(imx8_phy->perst);
+		break;
+	}
 
 	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ||
 	    pad_mode == IMX8_PCIE_REFCLK_PAD_UNUSED) {
@@ -120,20 +117,44 @@ static int imx8_pcie_phy_init(struct phy *phy)
 		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
 	}
 
-	/* Tune PHY de-emphasis setting to pass PCIe compliance. */
-	if (imx8_phy->tx_deemph_gen1)
-		writel(imx8_phy->tx_deemph_gen1,
-		       imx8_phy->base + PCIE_PHY_TRSV_REG5);
-	if (imx8_phy->tx_deemph_gen2)
-		writel(imx8_phy->tx_deemph_gen2,
-		       imx8_phy->base + PCIE_PHY_TRSV_REG6);
+	/* Set AUX_EN_OVERRIDE 1'b0, when the CLKREQ# isn't hooked */
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
+			   imx8_phy->clkreq_unused ?
+			   0 : IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE);
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_AUX_EN,
+			   IMX8MM_GPR_PCIE_AUX_EN);
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_POWER_OFF, 0);
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_SSC_EN, 0);
+
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_REF_CLK_SEL,
+			   pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ?
+			   IMX8MM_GPR_PCIE_REF_CLK_EXT :
+			   IMX8MM_GPR_PCIE_REF_CLK_PLL);
+	usleep_range(100, 200);
+
+	/* Do the PHY common block reset */
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_CMN_RST,
+			   IMX8MM_GPR_PCIE_CMN_RST);
 
-	reset_control_deassert(imx8_phy->reset);
+	switch (imx8_phy->variant) {
+	case IMX8MP:
+		reset_control_deassert(imx8_phy->perst);
+		fallthrough;
+	case IMX8MM:
+		reset_control_deassert(imx8_phy->reset);
+		usleep_range(200, 500);
+		break;
+	}
 
 	/* Polling to check the phy is ready or not. */
-	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
-				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
-				 10, 20000);
+	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG075,
+				 val, val == ANA_PLL_DONE, 10, 20000);
 	return ret;
 }
 
@@ -160,6 +181,13 @@ static const struct phy_ops imx8_pcie_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct of_device_id imx8_pcie_phy_of_match[] = {
+	{.compatible = "fsl,imx8mm-pcie-phy", .data = (void *)IMX8MM},
+	{.compatible = "fsl,imx8mp-pcie-phy", .data = (void *)IMX8MP},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
+
 static int imx8_pcie_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
@@ -172,6 +200,9 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 	if (!imx8_phy)
 		return -ENOMEM;
 
+	imx8_phy->variant =
+		(enum imx8_pcie_phy_type)of_device_get_match_data(dev);
+
 	/* get PHY refclk pad mode */
 	of_property_read_u32(np, "fsl,refclk-pad-mode",
 			     &imx8_phy->refclk_pad_mode);
@@ -196,8 +227,16 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 	}
 
 	/* Grab GPR config register range */
-	imx8_phy->iomuxc_gpr =
-		 syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
+	switch (imx8_phy->variant) {
+	case IMX8MM:
+		imx8_phy->iomuxc_gpr =
+			 syscon_regmap_lookup_by_compatible("fsl,imx8mm-iomuxc-gpr");
+		break;
+	case IMX8MP:
+		imx8_phy->iomuxc_gpr =
+			 syscon_regmap_lookup_by_compatible("fsl,imx8mp-iomuxc-gpr");
+		break;
+	}
 	if (IS_ERR(imx8_phy->iomuxc_gpr)) {
 		dev_err(dev, "unable to find iomuxc registers\n");
 		return PTR_ERR(imx8_phy->iomuxc_gpr);
@@ -208,6 +247,14 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 		dev_err(dev, "Failed to get PCIEPHY reset control\n");
 		return PTR_ERR(imx8_phy->reset);
 	}
+	if (imx8_phy->variant == IMX8MP) {
+		imx8_phy->perst =
+			devm_reset_control_get_exclusive(dev, "perst");
+		if (IS_ERR(imx8_phy->perst)) {
+			dev_err(dev, "Failed to get PCIE PHY PERST control\n");
+			return PTR_ERR(imx8_phy->perst);
+		}
+	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	imx8_phy->base = devm_ioremap_resource(dev, res);
@@ -225,12 +272,6 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-static const struct of_device_id imx8_pcie_phy_of_match[] = {
-	{.compatible = "fsl,imx8mm-pcie-phy",},
-	{ },
-};
-MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
-
 static struct platform_driver imx8_pcie_phy_driver = {
 	.probe	= imx8_pcie_phy_probe,
 	.driver = {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
