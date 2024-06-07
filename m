Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF090C27C53
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 11:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeSyhaYe8y2bP66THkoKFSQ4Os7qI9GmM1D11FymAzM=; b=EBo61ZQnmyaiUE
	DIW2vXilNVgH8A4piThahCV/n8weas1sKNguKHmwJdaoLgz74ACZ1QjUECU4/yVYRqSkpOWXiTAy4
	R4eJY8bMyp2+5utfXgu7Iw3R1mqzxG4mE7CMA1WEZ/T5WHTcE/uKN3A2ghcMNBRagfeZcYa/hRrEt
	YV9sjX4aCBpynLAh3QbavksLQ2gA94qKXMv9/Qlwfd+PWdDoU13ZNlOoWm8ytXwe3BaxMI63bYGTE
	UgHqUHxsL5FTDKAuiol7WzrO2ZrMwfLYL1AoQEIUcHrmNywAkaGreSOA+xPonBfQsIFt+38es79ga
	GBzbOk2FShc3UKtN8Qxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXv6-0000000DmVn-1pmh;
	Fri, 07 Jun 2024 11:38:08 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXv3-0000000DmSq-29WQ
	for linux-phy@lists.infradead.org;
	Fri, 07 Jun 2024 11:38:07 +0000
X-IronPort-AV: E=Sophos;i="6.08,220,1712588400"; 
   d="scan'208";a="211042474"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 07 Jun 2024 20:37:58 +0900
Received: from localhost.localdomain (unknown [10.226.92.204])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 8589240071E8;
	Fri,  7 Jun 2024 20:37:53 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	devicetree@vger.kernel.org
Subject: [PATCH RFC v2 1/4] reset: renesas: Instantiate USB VBUS regulator device
Date: Fri,  7 Jun 2024 12:37:42 +0100
Message-Id: <20240607113745.73934-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
References: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_043805_690325_D9E24118 
X-CRM114-Status: GOOD (  13.26  )
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

As per RZ/G2L HW manual, VBUSEN can be controlled by the VBOUT bit of the
VBUS Control Register(VBENCTL) register in the USBPHY Control.

Expose this register as regmap and instantiate the USB VBUS regulator
device, so that consumer can control the vbus using regulator API's.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Instatiated regulator driver 
---
 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index 8f6fbd978591..45406d6bbb85 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -10,10 +10,12 @@
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/reset-controller.h>
 
 #define RESET			0x000
+#define VBENCTL			0x03c
 
 #define RESET_SEL_PLLRESET	BIT(12)
 #define RESET_PLLRESET		BIT(8)
@@ -32,6 +34,7 @@ struct rzg2l_usbphy_ctrl_priv {
 	struct reset_controller_dev rcdev;
 	struct reset_control *rstc;
 	void __iomem *base;
+	struct platform_device *vdev;
 
 	spinlock_t lock;
 };
@@ -100,10 +103,19 @@ static const struct reset_control_ops rzg2l_usbphy_ctrl_reset_ops = {
 	.status = rzg2l_usbphy_ctrl_status,
 };
 
+static const struct regmap_config rzg2l_usb_regconf = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 1,
+};
+
 static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rzg2l_usbphy_ctrl_priv *priv;
+	struct platform_device *vdev;
+	struct regmap *regmap;
 	unsigned long flags;
 	int error;
 	u32 val;
@@ -116,6 +128,22 @@ static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
+	regmap = devm_regmap_init_mmio(dev, priv->base + VBENCTL, &rzg2l_usb_regconf);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	vdev = platform_device_alloc("rzg2l-usb-vbus-regulator", pdev->id);
+	if (!vdev)
+		return -ENOMEM;
+	vdev->dev.parent = dev;
+	priv->vdev = vdev;
+
+	error = platform_device_add(vdev);
+	if (error) {
+		platform_device_put(vdev);
+		return error;
+	}
+
 	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(priv->rstc))
 		return dev_err_probe(dev, PTR_ERR(priv->rstc),
@@ -160,6 +188,7 @@ static void rzg2l_usbphy_ctrl_remove(struct platform_device *pdev)
 {
 	struct rzg2l_usbphy_ctrl_priv *priv = dev_get_drvdata(&pdev->dev);
 
+	platform_device_unregister(priv->vdev);
 	pm_runtime_put(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 	reset_control_assert(priv->rstc);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
