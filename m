Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDE8C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 13 Feb 2022 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cj5kzCCOlp3Vkf5xhRPGqRDufS/0f4RFzeBhadmRru0=; b=HFjvtTGB2S7e/J
	c5f7LbvlZqZb52SXpnQ/Pu1sxnXcLd2PcX09VYzpK0FFBdcCJF0b1qNfCLR8nRPO4+7PJfCEJGaBx
	HXwMfZAPO9BvKJfiPnPAcVKwwMveW1p31cosMZwsGV1LOYx3i9ua4AhX/+zPNGAwEH9LmvMaUirG2
	gZW3m2Oh1F0EyjxNhOyjxZ3CF+svLU2N0smZFZMaG3rkkmeKUglXaVy8+gSp+Vwsf9uaL8gR7UQ5P
	1RJDbChv77ip+4SNSckI0BzWAW8K/vV0jJ2wE4BJBjEqN+JLrR/0mJMlKZ8GfSn1ofDQSuPB0kLNR
	noBeAif9uLSDgRud0EoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJEZd-00Biol-3a; Sun, 13 Feb 2022 13:05:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJEZa-00BimV-5c
 for linux-phy@lists.infradead.org; Sun, 13 Feb 2022 13:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644757549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MdaT+Ez5YT/CHAs9bbKyNuiCjdqbvspAYl8e3zW7vf0=;
 b=cqh7/tW28WGfWS1Pz+CIhJyeV2pWDozPgZi8052HsjP7TVWDh28ZKMlP+2WqHnE+HiUR/V
 Lt2NLDEC5c1p2UOeznQifSiOwJezK08/REM+XwzRv0CNzCYUzzyRY9M3Ea1kmcu5SXNlkV
 2Jpb+3jwRrXpTEmJLY/iirBxYo8OKJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-244-GoDPmHT8O1uZxfp7lql-kg-1; Sun, 13 Feb 2022 08:05:45 -0500
X-MC-Unique: GoDPmHT8O1uZxfp7lql-kg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A354A1091DA1;
 Sun, 13 Feb 2022 13:05:44 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 150A47B9F7;
 Sun, 13 Feb 2022 13:05:42 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 6/9] phy: ti: tusb1210: Improve ulpi_read()/_write() error
 checking
Date: Sun, 13 Feb 2022 14:05:21 +0100
Message-Id: <20220213130524.18748-7-hdegoede@redhat.com>
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_050550_374501_B405105F 
X-CRM114-Status: GOOD (  16.34  )
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

ulpi_read() and ulpi_write() calls can fail. Add wrapper functions to log
errors when this happens and add error checking to the read + write of
the phy parameters from the TUSB1210_VENDOR_SPECIFIC2 register.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/phy/ti/phy-tusb1210.c | 62 +++++++++++++++++++++++++++--------
 1 file changed, 48 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index 15c1c79e5c29..bf7793afdc84 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -26,6 +26,33 @@ struct tusb1210 {
 	u8 vendor_specific2;
 };
 
+static int tusb1210_ulpi_write(struct tusb1210 *tusb, u8 reg, u8 val)
+{
+	int ret;
+
+	ret = ulpi_write(tusb->ulpi, reg, val);
+	if (ret)
+		dev_err(&tusb->ulpi->dev, "error %d writing val 0x%02x to reg 0x%02x\n",
+			ret, val, reg);
+
+	return ret;
+}
+
+static int tusb1210_ulpi_read(struct tusb1210 *tusb, u8 reg, u8 *val)
+{
+	int ret;
+
+	ret = ulpi_read(tusb->ulpi, reg);
+	if (ret >= 0) {
+		*val = ret;
+		ret = 0;
+	} else {
+		dev_err(&tusb->ulpi->dev, "error %d reading reg 0x%02x\n", ret, reg);
+	}
+
+	return ret;
+}
+
 static int tusb1210_power_on(struct phy *phy)
 {
 	struct tusb1210 *tusb = phy_get_drvdata(phy);
@@ -35,8 +62,8 @@ static int tusb1210_power_on(struct phy *phy)
 
 	/* Restore the optional eye diagram optimization value */
 	if (tusb->vendor_specific2)
-		ulpi_write(tusb->ulpi, TUSB1210_VENDOR_SPECIFIC2,
-			   tusb->vendor_specific2);
+		return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
+					   tusb->vendor_specific2);
 
 	return 0;
 }
@@ -55,33 +82,34 @@ static int tusb1210_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct tusb1210 *tusb = phy_get_drvdata(phy);
 	int ret;
+	u8 reg;
 
-	ret = ulpi_read(tusb->ulpi, ULPI_OTG_CTRL);
+	ret = tusb1210_ulpi_read(tusb, ULPI_OTG_CTRL, &reg);
 	if (ret < 0)
 		return ret;
 
 	switch (mode) {
 	case PHY_MODE_USB_HOST:
-		ret |= (ULPI_OTG_CTRL_DRVVBUS_EXT
+		reg |= (ULPI_OTG_CTRL_DRVVBUS_EXT
 			| ULPI_OTG_CTRL_ID_PULLUP
 			| ULPI_OTG_CTRL_DP_PULLDOWN
 			| ULPI_OTG_CTRL_DM_PULLDOWN);
-		ulpi_write(tusb->ulpi, ULPI_OTG_CTRL, ret);
-		ret |= ULPI_OTG_CTRL_DRVVBUS;
+		tusb1210_ulpi_write(tusb, ULPI_OTG_CTRL, reg);
+		reg |= ULPI_OTG_CTRL_DRVVBUS;
 		break;
 	case PHY_MODE_USB_DEVICE:
-		ret &= ~(ULPI_OTG_CTRL_DRVVBUS
+		reg &= ~(ULPI_OTG_CTRL_DRVVBUS
 			 | ULPI_OTG_CTRL_DP_PULLDOWN
 			 | ULPI_OTG_CTRL_DM_PULLDOWN);
-		ulpi_write(tusb->ulpi, ULPI_OTG_CTRL, ret);
-		ret &= ~ULPI_OTG_CTRL_DRVVBUS_EXT;
+		tusb1210_ulpi_write(tusb, ULPI_OTG_CTRL, reg);
+		reg &= ~ULPI_OTG_CTRL_DRVVBUS_EXT;
 		break;
 	default:
 		/* nothing */
 		return 0;
 	}
 
-	return ulpi_write(tusb->ulpi, ULPI_OTG_CTRL, ret);
+	return tusb1210_ulpi_write(tusb, ULPI_OTG_CTRL, reg);
 }
 
 static const struct phy_ops phy_ops = {
@@ -95,11 +123,14 @@ static int tusb1210_probe(struct ulpi *ulpi)
 {
 	struct tusb1210 *tusb;
 	u8 val, reg;
+	int ret;
 
 	tusb = devm_kzalloc(&ulpi->dev, sizeof(*tusb), GFP_KERNEL);
 	if (!tusb)
 		return -ENOMEM;
 
+	tusb->ulpi = ulpi;
+
 	tusb->gpio_reset = devm_gpiod_get_optional(&ulpi->dev, "reset",
 						   GPIOD_OUT_LOW);
 	if (IS_ERR(tusb->gpio_reset))
@@ -119,7 +150,9 @@ static int tusb1210_probe(struct ulpi *ulpi)
 	 * diagram optimization and DP/DM swap.
 	 */
 
-	reg = ulpi_read(ulpi, TUSB1210_VENDOR_SPECIFIC2);
+	ret = tusb1210_ulpi_read(tusb, TUSB1210_VENDOR_SPECIFIC2, &reg);
+	if (ret)
+		return ret;
 
 	/* High speed output drive strength configuration */
 	if (!device_property_read_u8(&ulpi->dev, "ihstx", &val))
@@ -133,15 +166,16 @@ static int tusb1210_probe(struct ulpi *ulpi)
 	if (!device_property_read_u8(&ulpi->dev, "datapolarity", &val))
 		u8p_replace_bits(&reg, val, (u8)TUSB1210_VENDOR_SPECIFIC2_DP_MASK);
 
-	ulpi_write(ulpi, TUSB1210_VENDOR_SPECIFIC2, reg);
+	ret = tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2, reg);
+	if (ret)
+		return ret;
+
 	tusb->vendor_specific2 = reg;
 
 	tusb->phy = ulpi_phy_create(ulpi, &phy_ops);
 	if (IS_ERR(tusb->phy))
 		return PTR_ERR(tusb->phy);
 
-	tusb->ulpi = ulpi;
-
 	phy_set_drvdata(tusb->phy, tusb);
 	ulpi_set_drvdata(ulpi, tusb);
 	return 0;
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
