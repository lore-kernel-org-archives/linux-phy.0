Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CEC8C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 07:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugbcJvPBEUqaV4Dgq/jpWVb8K5vAj08R93aBsV4bbyY=; b=IUisSOfu5En4Z2
	5RPUUw58SmSzWeLvXkL3QYNnby5XCvhiLge7iu/8AadT0qR4wtnDXBBgBOQrcF1x77fZ8fwlPQANb
	4V8orKvl9Wxt7I5lec8VBoUfLlFZg08XDoQ4/3Zu9sEAgndkx16AcB4T5eFmgQ6qhcLeDjtUOOB3g
	mD8B2I1FeR6xlmIYzxigVSXmHp7vVJohVXOIc7d3oEmluAnCdoM4eo9EaFkmZyYL/GKNPB1ruA6kW
	l5Y3gn1WcPq6OAb6ZRFoqARKB6knxBTksTRV1y9d+YnSnpqLzQxvHNBHqfJo55J+oa0J1R21aVIzF
	SmSjypDYwkh7CX/VT04g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oci76-002Zgq-Qs; Mon, 26 Sep 2022 07:01:12 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oci65-002ZFG-8d; Mon, 26 Sep 2022 07:00:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 152A81A24EF;
	Mon, 26 Sep 2022 09:00:08 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B98BB1A24F0;
	Mon, 26 Sep 2022 09:00:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id F33EA180222C;
	Mon, 26 Sep 2022 15:00:05 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
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
Subject: [PATCH v9 4/4] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY support
Date: Mon, 26 Sep 2022 14:41:03 +0800
Message-Id: <1664174463-13721-5-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1664174463-13721-1-git-send-email-hongxing.zhu@nxp.com>
References: <1664174463-13721-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_000010_383248_2CF0845E 
X-CRM114-Status: GOOD (  11.24  )
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
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index 9752818fe990..63636994d673 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -48,6 +48,7 @@
 
 enum imx8_pcie_phy_type {
 	IMX8MM,
+	IMX8MP,
 };
 
 struct imx8_pcie_phy_drvdata {
@@ -60,6 +61,7 @@ struct imx8_pcie_phy {
 	struct clk		*clk;
 	struct phy		*phy;
 	struct regmap		*iomuxc_gpr;
+	struct reset_control	*perst;
 	struct reset_control	*reset;
 	u32			refclk_pad_mode;
 	u32			tx_deemph_gen1;
@@ -87,6 +89,9 @@ static int imx8_pcie_phy_init(struct phy *phy)
 			writel(imx8_phy->tx_deemph_gen2,
 			       imx8_phy->base + PCIE_PHY_TRSV_REG6);
 		break;
+	case IMX8MP:
+		reset_control_assert(imx8_phy->perst);
+		break;
 	}
 
 	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ||
@@ -141,6 +146,9 @@ static int imx8_pcie_phy_init(struct phy *phy)
 			   IMX8MM_GPR_PCIE_CMN_RST);
 
 	switch (imx8_phy->drvdata->variant) {
+	case IMX8MP:
+		reset_control_deassert(imx8_phy->perst);
+		fallthrough;
 	case IMX8MM:
 		reset_control_deassert(imx8_phy->reset);
 		usleep_range(200, 500);
@@ -181,10 +189,16 @@ static const struct imx8_pcie_phy_drvdata drvdata[] = {
 		.variant = IMX8MM,
 		.gpr = "fsl,imx8mm-iomuxc-gpr",
 	},
+
+	[IMX8MP] = {
+		.variant = IMX8MP,
+		.gpr = "fsl,imx8mp-iomuxc-gpr",
+	},
 };
 
 static const struct of_device_id imx8_pcie_phy_of_match[] = {
 	{.compatible = "fsl,imx8mm-pcie-phy", .data = &drvdata[IMX8MM], },
+	{.compatible = "fsl,imx8mp-pcie-phy", .data = &drvdata[IMX8MP], },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
@@ -240,6 +254,15 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(imx8_phy->reset);
 	}
 
+	if (imx8_phy->drvdata->variant == IMX8MP) {
+		imx8_phy->perst =
+			devm_reset_control_get_exclusive(dev, "perst");
+		if (IS_ERR(imx8_phy->perst)) {
+			dev_err(dev, "Failed to get PCIE PHY PERST control\n");
+			return PTR_ERR(imx8_phy->perst);
+		}
+	}
+
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	imx8_phy->base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(imx8_phy->base))
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
