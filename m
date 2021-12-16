Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7214C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 16:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDj/WW3TsfpF8IxRPt3C4bbhgIYiST+qwi7pX5jp96Q=; b=Pla1H/cFofOdQO
	rBItSJdAqloJIvm78bUmIIKxM+BFnbTL2pVNgUZDyss/lWUQMsHsFfK0cTLX7ElVQH5PYlKrw+M+w
	ax7hmwuHVX1RF4tuXZpFxlkmZdi/141LuW8rozNPK2B+XVIjchzktR1DBTnuYWOzJZIYtNlP5m90+
	BPrIKZE7mNg8jlfNvTJHmuAu1eCluuCCXw2EtQBsTmQQD9/I1oN/YG+BL+ys7dU+bZq+gg7c5q2fV
	T8X454JgybXvAbcqvM7hcaV2hHKoB6c8d3LhdRiMesPrV9TFa6pdk1ijpOd8Etjcma5pqmOpUE8fs
	Ro4wC1LPbf1lYXBT4Vzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxtKm-006VO5-6r; Thu, 16 Dec 2021 16:10:20 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxtGV-006TU1-Mq; Thu, 16 Dec 2021 16:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670755; x=1671206755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FZr6u+Xp8JktssxvogNSfYTefAIcEB7LkldXk4m703w=;
 b=mQHd29hF+rN1khtfdxhTY/xQQXUHj7q33uT3GHOqUkvvtW/Dvv9MjYha
 ULmoRax9zqrS2wJWRIBNtXXLtcODuQ9pBBULG1umfy4HPBhSuaVpsO2Rz
 I9obphSAKHAL0UTTUcs3DQn0FIiIzkE1HMvP87XqH6f5uwo1SbQb1lFlU
 0SIYLtftrKr0EKD6l20eUSMSLaBth1r+bGuhJ2NGz7DYTdIaUmT6hdl9y
 QtnWW9/048IkfU68ivZ58htb4e9AbktFiJysb4xAxyTR+/NsRhWpk7+9D
 BxXvjv0uOLxx/3QJmCEqXULS+Cpea6Bnsoq5eb0l7Uozijczfa0L7RpZ6 Q==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103121"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 16 Dec 2021 17:05:50 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670750; x=1671206750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FZr6u+Xp8JktssxvogNSfYTefAIcEB7LkldXk4m703w=;
 b=QyJQekJHD1AnrNHJIV6GFpYdHjDTE75EzOx1S/q4PW43aDchz/drB5yR
 poqY18ezGtFhMhyA+hZCWfijh1nCFqVt6k9cyKS22UzHFQSLJxJh/O0W4
 n7UV4QM5dL6OFxDoQzfmPPgU8P+ZPp2qUDXJrMZ21Fx/ohnLuapuhH8sw
 VIGJe1FPK+i4r8G4IYbpAHiAA+95DGabW7qJuPZ8oBxagEki0bP2+ClyC
 ZVoQg7t9QP39Eyix+PBsY/zha6VbgPWS0UUVZJFjyfU1KYGaTXxmLMdFE
 lezXIN5oSoIr92oS9kSwH9PMkdR4nW+x/p5FsEZPzOHYzEXnyM2C8l6F+ w==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103120"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0E6A2280065;
 Thu, 16 Dec 2021 17:05:50 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] phy: fsl-imx8mq-usb: Add support for setting fsl
 specific flags
Date: Thu, 16 Dec 2021 17:05:40 +0100
Message-Id: <20211216160541.544974-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_080556_116550_A36148D9 
X-CRM114-Status: GOOD (  18.65  )
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

The i.MX8MP glue layer has support for the following flags:
* over-current polarity
* PWR pad polarity
* controlling PPC flag in HCCPARAMS register
* parmanent port attach for usb2 & usb3 port

Allow setting these flags by supporting specific flags in the glue node.
In order to get this to work an additional IORESOURCE_MEM is necessary
actually pointing to the glue layer. For backward compatibility this is
purely optional.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index a29b4a6f7c24..86b61af6a949 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -11,6 +11,18 @@
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
 
+/* USB glue registers */
+#define USB_CTRL0		0x00
+#define USB_CTRL1		0x04
+
+#define USB_CTRL0_PORTPWR_EN	BIT(12) /* 1 - PPC enabled (default) */
+#define USB_CTRL0_USB3_FIXED	BIT(22) /* 1 - USB3 permanent attached */
+#define USB_CTRL0_USB2_FIXED	BIT(23) /* 1 - USB2 permanent attached */
+
+#define USB_CTRL1_OC_POLARITY	BIT(16) /* 0 - HIGH / 1 - LOW */
+#define USB_CTRL1_PWR_POLARITY	BIT(17) /* 0 - HIGH / 1 - LOW */
+
+/* USB phy registers */
 #define PHY_CTRL0			0x0
 #define PHY_CTRL0_REF_SSP_EN		BIT(2)
 #define PHY_CTRL0_FSEL_MASK		GENMASK(10, 5)
@@ -35,9 +47,46 @@ struct imx8mq_usb_phy {
 	struct phy *phy;
 	struct clk *clk;
 	void __iomem *base;
+	void __iomem *glue_base;
 	struct regulator *vbus;
 };
 
+static void imx8mp_configure_glue(struct imx8mq_usb_phy *dwc3_imx)
+{
+	struct device *dev = &dwc3_imx->phy->dev;
+	u32 value;
+
+	if (!dwc3_imx->glue_base)
+		return;
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL0);
+
+	if (device_property_read_bool(dev, "fsl,permanently-attached"))
+		value |= (USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+	else
+		value &= ~(USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+
+	if (device_property_read_bool(dev, "fsl,disable-port-power-control"))
+		value &= ~(USB_CTRL0_PORTPWR_EN);
+	else
+		value |= USB_CTRL0_PORTPWR_EN;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL0);
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL1);
+	if (device_property_read_bool(dev, "fsl,over-current-active-low"))
+		value |= USB_CTRL1_OC_POLARITY;
+	else
+		value &= ~USB_CTRL1_OC_POLARITY;
+
+	if (device_property_read_bool(dev, "fsl,power-active-low"))
+		value |= USB_CTRL1_PWR_POLARITY;
+	else
+		value &= ~USB_CTRL1_PWR_POLARITY;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL1);
+}
+
 static int imx8mq_usb_phy_init(struct phy *phy)
 {
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
@@ -69,6 +118,8 @@ static int imx8mp_usb_phy_init(struct phy *phy)
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
 	u32 value;
 
+	imx8mp_configure_glue(imx_phy);
+
 	/* USB3.0 PHY signal fsel for 24M ref */
 	value = readl(imx_phy->base + PHY_CTRL0);
 	value &= ~PHY_CTRL0_FSEL_MASK;
@@ -153,6 +204,7 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct imx8mq_usb_phy *imx_phy;
 	const struct phy_ops *phy_ops;
+	struct resource *res;
 
 	imx_phy = devm_kzalloc(dev, sizeof(*imx_phy), GFP_KERNEL);
 	if (!imx_phy)
@@ -168,6 +220,15 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(imx_phy->base))
 		return PTR_ERR(imx_phy->base);
 
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	if (!res) {
+		dev_warn(dev, "Base address for glue layer missing. Continuing without, some features are missing though.");
+	} else {
+		imx_phy->glue_base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(imx_phy->glue_base))
+			return PTR_ERR(imx_phy->glue_base);
+	}
+
 	phy_ops = of_device_get_match_data(dev);
 	if (!phy_ops)
 		return -EINVAL;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
