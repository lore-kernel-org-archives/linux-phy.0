Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39968C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 07:54:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC8D161040
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 07:54:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EC8D161040
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URrGB9Np6RGXHEQD2jmhgvXDjPxc4F6Thn/NDxd3cMU=; b=35eeXhnOg+g5AI
	Vsw1x4P0e14J1KkjtZ94VNYq7V13hyDuCFLyxFsCMP7og44VcGCQXoE/2dHpv41GRFfiAo6D9lld0
	l7H5KapKEdWgkjsATKiLFCqAyiCXVT/oPnFo/wf1otOPjekUsOvvQRwGNLh2b9V0NW0ZstGiHEYpj
	ZTCQZX5VerLPtjFlffleaEahZyMxjXfWy5XVJWjC7ZatqQcTnm5o/iHg8TulnzQOY6d3ummiYA+OE
	MMxPmdjvxAiX8qA0iNgJvCw6Mat544P2J1xcV7jb9sWYdw5eqiFBDxr6cKiadtwVEIvcDhqnAuDoT
	jIYKY4UQsCvofitGXIxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg0FS-007BDB-Ef; Thu, 28 Oct 2021 07:54:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg0Dn-007AOu-3G; Thu, 28 Oct 2021 07:53:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D2C351A0256;
 Thu, 28 Oct 2021 09:53:09 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6DC2B1A01F0;
 Thu, 28 Oct 2021 09:53:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id DE94B183AC8B;
 Thu, 28 Oct 2021 15:53:06 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, marcel.ziswiler@toradex.com, tharvey@gateworks.com,
 kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v4 5/8] phy: freescale: pcie: Initialize the imx8 pcie
 standalone phy driver
Date: Thu, 28 Oct 2021 15:27:14 +0800
Message-Id: <1635406037-20900-6-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
References: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_005311_455720_196A9508 
X-CRM114-Status: GOOD (  21.06  )
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

Add the standalone i.MX8 PCIe PHY driver.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
---
 drivers/phy/freescale/Kconfig              |   9 +
 drivers/phy/freescale/Makefile             |   1 +
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 234 +++++++++++++++++++++
 3 files changed, 244 insertions(+)
 create mode 100644 drivers/phy/freescale/phy-fsl-imx8m-pcie.c

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 320630ffe3cd..de9ee7020f76 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
 	help
 	  Enable this to add support for the Mixel DSI PHY as found
 	  on NXP's i.MX8 family of SOCs.
+
+config PHY_FSL_IMX8M_PCIE
+	tristate "Freescale i.MX8 PCIE PHY"
+	depends on OF && HAS_IOMEM
+	select GENERIC_PHY
+	default ARCH_MXC && ARM64
+	help
+	  Enable this to add support for the PCIE PHY as found on
+	  i.MX8M family of SOCs.
diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
index 1d02e3869b45..55d07c742ab0 100644
--- a/drivers/phy/freescale/Makefile
+++ b/drivers/phy/freescale/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)	+= phy-fsl-imx8mq-usb.o
 obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
+obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)	+= phy-fsl-imx8m-pcie.o
diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
new file mode 100644
index 000000000000..4b4402eaddcc
--- /dev/null
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -0,0 +1,234 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2021 NXP
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/delay.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+
+#define IMX8MM_PCIE_PHY_CMN_REG061	0x184
+#define  ANA_PLL_CLK_OUT_TO_EXT_IO_EN	BIT(0)
+#define IMX8MM_PCIE_PHY_CMN_REG062	0x188
+#define  ANA_PLL_CLK_OUT_TO_EXT_IO_SEL	BIT(3)
+#define IMX8MM_PCIE_PHY_CMN_REG063	0x18C
+#define  AUX_PLL_REFCLK_SEL_SYS_PLL	GENMASK(7, 6)
+#define IMX8MM_PCIE_PHY_CMN_REG064	0x190
+#define  ANA_AUX_RX_TX_SEL_TX		BIT(7)
+#define  ANA_AUX_RX_TERM_GND_EN		BIT(3)
+#define  ANA_AUX_TX_TERM		BIT(2)
+#define IMX8MM_PCIE_PHY_CMN_REG065	0x194
+#define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
+#define  ANA_AUX_TX_LVL			GENMASK(3, 0)
+#define IMX8MM_PCIE_PHY_CMN_REG75	0x1D4
+#define  PCIE_PHY_CMN_REG75_PLL_DONE	0x3
+#define PCIE_PHY_TRSV_REG5		0x414
+#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP	0x2D
+#define PCIE_PHY_TRSV_REG6		0x418
+#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP	0xF
+
+#define IMX8MM_GPR_PCIE_REF_CLK_SEL	GENMASK(25, 24)
+#define IMX8MM_GPR_PCIE_REF_CLK_PLL	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
+#define IMX8MM_GPR_PCIE_REF_CLK_EXT	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x2)
+#define IMX8MM_GPR_PCIE_AUX_EN		BIT(19)
+#define IMX8MM_GPR_PCIE_CMN_RST		BIT(18)
+#define IMX8MM_GPR_PCIE_POWER_OFF	BIT(17)
+#define IMX8MM_GPR_PCIE_SSC_EN		BIT(16)
+#define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE	BIT(9)
+
+struct imx8_pcie_phy {
+	void __iomem		*base;
+	struct clk		*clk;
+	struct phy		*phy;
+	struct regmap		*iomuxc_gpr;
+	struct reset_control	*reset;
+	u32			refclk_pad_mode;
+	u32			tx_deemph_gen1;
+	u32			tx_deemph_gen2;
+	bool			clkreq_unused;
+};
+
+static int imx8_pcie_phy_init(struct phy *phy)
+{
+	int ret;
+	u32 val, pad_mode;
+	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
+
+	reset_control_assert(imx8_phy->reset);
+
+	pad_mode = imx8_phy->refclk_pad_mode;
+	/* Set AUX_EN_OVERRIDE 1'b0, when the CLKREQ# isn't hooked */
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
+			   imx8_phy->clkreq_unused ?
+			   0 : IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE);
+	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
+			   IMX8MM_GPR_PCIE_AUX_EN,
+			   pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ?
+			   IMX8MM_GPR_PCIE_AUX_EN : 0);
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
+	usleep_range(200, 500);
+
+
+	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
+		/* Configure the pad as input */
+		val = readl(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+		writel(val & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
+		/* Configure the PHY to output the refclock via pad */
+		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
+		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
+		val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
+		writel(val | ANA_AUX_RX_TERM_GND_EN,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
+		writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
+	}
+
+	/* Tune PHY de-emphasis setting to pass PCIe compliance. */
+	writel(imx8_phy->tx_deemph_gen1, imx8_phy->base + PCIE_PHY_TRSV_REG5);
+	writel(imx8_phy->tx_deemph_gen2, imx8_phy->base + PCIE_PHY_TRSV_REG6);
+
+	reset_control_deassert(imx8_phy->reset);
+
+	/* Polling to check the phy is ready or not. */
+	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
+				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
+				 10, 20000);
+	return ret;
+}
+
+static int imx8_pcie_phy_power_on(struct phy *phy)
+{
+	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
+
+	return clk_prepare_enable(imx8_phy->clk);
+}
+
+static int imx8_pcie_phy_power_off(struct phy *phy)
+{
+	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
+
+	clk_disable_unprepare(imx8_phy->clk);
+
+	return 0;
+}
+
+static const struct phy_ops imx8_pcie_phy_ops = {
+	.init		= imx8_pcie_phy_init,
+	.power_on	= imx8_pcie_phy_power_on,
+	.power_off	= imx8_pcie_phy_power_off,
+	.owner		= THIS_MODULE,
+};
+
+static int imx8_pcie_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy_provider;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct imx8_pcie_phy *imx8_phy;
+	struct resource *res;
+
+	imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
+	if (!imx8_phy)
+		return -ENOMEM;
+
+	/* get PHY refclk pad mode */
+	of_property_read_u32(np, "fsl,refclk-pad-mode",
+			     &imx8_phy->refclk_pad_mode);
+
+	if (of_property_read_u32(np, "fsl,tx-deemph-gen1",
+				 &imx8_phy->tx_deemph_gen1))
+		imx8_phy->tx_deemph_gen1 = 0;
+
+	if (of_property_read_u32(np, "fsl,tx-deemph-gen2",
+				 &imx8_phy->tx_deemph_gen2))
+		imx8_phy->tx_deemph_gen2 = 0;
+
+	if (of_property_read_bool(np, "fsl,clkreq-unsupported"))
+		imx8_phy->clkreq_unused = true;
+	else
+		imx8_phy->clkreq_unused = false;
+
+	imx8_phy->clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(imx8_phy->clk)) {
+		dev_err(dev, "failed to get imx pcie phy clock\n");
+		return PTR_ERR(imx8_phy->clk);
+	}
+
+	/* Grab GPR config register range */
+	imx8_phy->iomuxc_gpr =
+		 syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
+	if (IS_ERR(imx8_phy->iomuxc_gpr)) {
+		dev_err(dev, "unable to find iomuxc registers\n");
+		return PTR_ERR(imx8_phy->iomuxc_gpr);
+	}
+
+	imx8_phy->reset = devm_reset_control_get_exclusive(dev, "pciephy");
+	if (IS_ERR(imx8_phy->reset)) {
+		dev_err(dev, "Failed to get PCIEPHY reset control\n");
+		return PTR_ERR(imx8_phy->reset);
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	imx8_phy->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(imx8_phy->base))
+		return PTR_ERR(imx8_phy->base);
+
+	imx8_phy->phy = devm_phy_create(dev, NULL, &imx8_pcie_phy_ops);
+	if (IS_ERR(imx8_phy->phy))
+		return PTR_ERR(imx8_phy->phy);
+
+	phy_set_drvdata(imx8_phy->phy, imx8_phy);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id imx8_pcie_phy_of_match[] = {
+	{.compatible = "fsl,imx8mm-pcie-phy",},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
+
+static struct platform_driver imx8_pcie_phy_driver = {
+	.probe	= imx8_pcie_phy_probe,
+	.driver = {
+		.name	= "imx8-pcie-phy",
+		.of_match_table	= imx8_pcie_phy_of_match,
+	}
+};
+module_platform_driver(imx8_pcie_phy_driver);
+
+MODULE_DESCRIPTION("FSL IMX8 PCIE PHY driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
