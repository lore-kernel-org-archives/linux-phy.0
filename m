Return-Path: <SRS0=IqhD=OH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEC8BC43217
	for <linux-phy@archiver.kernel.org>; Fri, 17 Sep 2021 02:56:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A779161244
	for <linux-phy@archiver.kernel.org>; Fri, 17 Sep 2021 02:56:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A779161244
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnE346iIs1sChm/kXIgF2Jx9vWjdBTvHLAr8ZnZith0=; b=RPpjlxTkpU1xqF
	qae8Sm8wzc3B5hM83l8vN2nvorWs34no4HhZkKw7cIC80z1esEg7LUVDfXaT8cMKScryHJqjckzmj
	5NRuWapQqnQXBatozon7dOYT2E6vC7b2FDadKJdP2+rzZs89eo+xWTQ9DmRBmUrp5yHdyRyy41LTA
	VXRkDDydKJJ4r/U/BPNhXB8Ow3BG2sTHmcP8jey3be5A/mS7kyp7kTF1sRfJ67UjaXu62AKKKuWrc
	PUj03f+A8vUg0x26uMnwLXIJgRCV6lReh7eHOKAad4PBOpnFKzFPhLDkX9sKRfXT4hFo6/aIhlVFC
	+mKS5p3/IENmA3W6O0WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mR437-00D41u-3s; Fri, 17 Sep 2021 02:56:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mR41I-00D38j-0y; Fri, 17 Sep 2021 02:54:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AC5971A12B8;
 Fri, 17 Sep 2021 04:54:30 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3EEC21A0BBB;
 Fri, 17 Sep 2021 04:54:30 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id A0423183AC4C;
 Fri, 17 Sep 2021 10:54:28 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH 4/4] phy: freescale: pcie: initialize the imx8 pcie standalone
 phy driver
Date: Fri, 17 Sep 2021 10:31:03 +0800
Message-Id: <1631845863-24249-5-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
References: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_195432_481408_D15334D8 
X-CRM114-Status: GOOD (  20.88  )
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
Some reset bits should be manipulated between PHY configurations and
status check(internal PLL is locked or not).
So, do the PHY configuration in the phy_calibrate().
And check the PHY is ready or not in the phy_init().

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 drivers/phy/freescale/Kconfig             |   9 ++
 drivers/phy/freescale/Makefile            |   1 +
 drivers/phy/freescale/phy-fsl-imx8-pcie.c | 167 ++++++++++++++++++++++
 3 files changed, 177 insertions(+)
 create mode 100644 drivers/phy/freescale/phy-fsl-imx8-pcie.c

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 320630ffe3cd..da078a676fbc 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
 	help
 	  Enable this to add support for the Mixel DSI PHY as found
 	  on NXP's i.MX8 family of SOCs.
+
+config PHY_FSL_IMX8_PCIE
+	tristate "Freescale i.MX8 PCIE PHY"
+	depends on OF && HAS_IOMEM
+	select GENERIC_PHY
+	default ARCH_MXC
+	help
+	  Enable this to add support for the PCIE PHY as found on i.MX8
+	  family of SOCs.
diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
index 1d02e3869b45..9fd467b58621 100644
--- a/drivers/phy/freescale/Makefile
+++ b/drivers/phy/freescale/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)	+= phy-fsl-imx8mq-usb.o
 obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
+obj-$(CONFIG_PHY_FSL_IMX8_PCIE)		+= phy-fsl-imx8-pcie.o
diff --git a/drivers/phy/freescale/phy-fsl-imx8-pcie.c b/drivers/phy/freescale/phy-fsl-imx8-pcie.c
new file mode 100644
index 000000000000..ff47d6b83686
--- /dev/null
+++ b/drivers/phy/freescale/phy-fsl-imx8-pcie.c
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2021 NXP
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/delay.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <dt-binding/phy/phy-fsl-imx8-pcie.h>
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
+struct imx8_pcie_phy {
+	u32		refclk_pad_mode;
+	void __iomem	*base;
+	struct clk	*clk;
+	struct phy	*phy;
+};
+
+static int imx8_pcie_phy_init(struct phy *phy)
+{
+	int ret;
+	u32 val;
+	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
+
+	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
+				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
+				 10, 20000);
+	return ret;
+}
+
+static int imx8_pcie_phy_cal(struct phy *phy)
+{
+	u32 value, pad_mode;
+	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
+
+	pad_mode = imx8_phy->refclk_pad_mode;
+	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
+		/* Configure the pad as input */
+		value = readl(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+		writel(value & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
+		/* Configure the PHY to output the refclock via pad */
+		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
+		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
+		value = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
+		writel(value | ANA_AUX_RX_TERM_GND_EN,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
+		writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
+		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
+	}
+
+	/* Tune PHY de-emphasis setting to pass PCIe compliance. */
+	writel(PCIE_PHY_TRSV_REG5_GEN1_DEEMP,
+	       imx8_phy->base + PCIE_PHY_TRSV_REG5);
+	writel(PCIE_PHY_TRSV_REG6_GEN2_DEEMP,
+	       imx8_phy->base + PCIE_PHY_TRSV_REG6);
+
+	return 0;
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
+	.calibrate	= imx8_pcie_phy_cal,
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
+	imx8_phy->clk = devm_clk_get(dev, "phy");
+	if (IS_ERR(imx8_phy->clk)) {
+		dev_err(dev, "failed to get imx pcie phy clock\n");
+		return PTR_ERR(imx8_phy->clk);
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
