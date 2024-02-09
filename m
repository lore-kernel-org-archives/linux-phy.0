Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73060C4828F
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 16:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mG+iJs0RyZ5JcCNN9yuGR84idCWjka+aGbqN6tL3hc=; b=KSptFx4wJ4f5rQ
	+ZnDlUH2cnxkIwPZsXVU8buo7aO/KIVQx+4jORXx273oJ8kNilVenzVx6ZE7CbmcM3Cbs0uWuZq9Z
	zBANBIwcDZzqmxyNcz7KBMkAXZD34ThBaIrkNJu3/gqp+m32W5lp2WPoL8ESvJd9ObMtBatx8Y2Dc
	cWUwoMU6DgObMA+SEFSh+fVOhcTdkitzDrZDuGlniIVhJzwoTXe/XLiOJdX/3zgpQOp83OgWku6IZ
	wLiIWXMSO2I6S0m/bGq2r7dgNezvGSZHon53AF/b+qfbZFb4EB+nk7sWES9MIr4XNnWDfx72e1/rr
	Cqm2iQAImLsdtasiFkQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYTLw-0000000HSrF-0eBs;
	Fri, 09 Feb 2024 16:03:48 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYTLq-0000000HSnm-36X6
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 16:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1707494623; x=1739030623;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=oFboq00H8ywFMlj9Lu+qJdyelySfWg8PLVHXZ2Kn1ao=;
  b=nN32rVy95+EZXfSOSUVUSzfBL4+B5xXowR1nh8tak9LXOVeww1Z9qUtP
   MA/tg6p6P6sfXj+eH+bof1KlXkPoxbQofj43Fo8ZtfIXVOrtrkQ8uW7nu
   BBaFaE7s5ZVjaim/YhBEEgxiZvmbJtkebWkRWpM8CGdUbDQDdsj7v7cxi
   L0qHbBkj10muuqwfz/JkbvCRZNsy+KFkosRynOVo9/V1wFrDK7xP1g/mG
   5/ZxK4eiGHzX/dj5quS04LHmx7Mi3IQR2t6nxE+DuJvQCyLWNreYcsaNG
   Yed7zrczNI1EmSCyAJ0nWiyrxdSYxXHQDMpLGxA89ncOS0N/FONJL4o0l
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="4432017"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="4432017"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2024 08:03:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="934459657"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="934459657"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2024 08:03:37 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 8E3BAF7; Fri,  9 Feb 2024 18:03:36 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [PATCH v1 1/2] phy: ti: tusb1210: Use temporary variable for struct device
Date: Fri,  9 Feb 2024 18:02:14 +0200
Message-ID: <20240209160334.2304230-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1.gbec44491f096
In-Reply-To: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
References: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_080342_861540_E95CDDAF 
X-CRM114-Status: GOOD (  16.75  )
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

Use temporary variable for struct device to make code neater.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/ti/phy-tusb1210.c | 47 ++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index b4881cb34475..7232b104a62d 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -52,7 +52,7 @@ enum tusb1210_chg_det_state {
 };
 
 struct tusb1210 {
-	struct ulpi *ulpi;
+	struct device *dev;
 	struct phy *phy;
 	struct gpio_desc *gpio_reset;
 	struct gpio_desc *gpio_cs;
@@ -71,26 +71,27 @@ struct tusb1210 {
 
 static int tusb1210_ulpi_write(struct tusb1210 *tusb, u8 reg, u8 val)
 {
+	struct device *dev = tusb->dev;
 	int ret;
 
-	ret = ulpi_write(tusb->ulpi, reg, val);
+	ret = ulpi_write(to_ulpi_dev(dev), reg, val);
 	if (ret)
-		dev_err(&tusb->ulpi->dev, "error %d writing val 0x%02x to reg 0x%02x\n",
-			ret, val, reg);
+		dev_err(dev, "error %d writing val 0x%02x to reg 0x%02x\n", ret, val, reg);
 
 	return ret;
 }
 
 static int tusb1210_ulpi_read(struct tusb1210 *tusb, u8 reg, u8 *val)
 {
+	struct device *dev = tusb->dev;
 	int ret;
 
-	ret = ulpi_read(tusb->ulpi, reg);
+	ret = ulpi_read(to_ulpi_dev(dev), reg);
 	if (ret >= 0) {
 		*val = ret;
 		ret = 0;
 	} else {
-		dev_err(&tusb->ulpi->dev, "error %d reading reg 0x%02x\n", ret, reg);
+		dev_err(dev, "error %d reading reg 0x%02x\n", ret, reg);
 	}
 
 	return ret;
@@ -178,7 +179,7 @@ static void tusb1210_reset(struct tusb1210 *tusb)
 static void tusb1210_chg_det_set_type(struct tusb1210 *tusb,
 				      enum power_supply_usb_type type)
 {
-	dev_dbg(&tusb->ulpi->dev, "charger type: %d\n", type);
+	dev_dbg(tusb->dev, "charger type: %d\n", type);
 	tusb->chg_type = type;
 	tusb->chg_det_retries = 0;
 	power_supply_changed(tusb->psy);
@@ -189,7 +190,7 @@ static void tusb1210_chg_det_set_state(struct tusb1210 *tusb,
 				       int delay_ms)
 {
 	if (delay_ms)
-		dev_dbg(&tusb->ulpi->dev, "chg_det new state %s in %d ms\n",
+		dev_dbg(tusb->dev, "chg_det new state %s in %d ms\n",
 			tusb1210_chg_det_states[new_state], delay_ms);
 
 	tusb->chg_det_state = new_state;
@@ -253,7 +254,7 @@ static void tusb1210_chg_det_work(struct work_struct *work)
 	int ret;
 	u8 val;
 
-	dev_dbg(&tusb->ulpi->dev, "chg_det state %s vbus_present %d\n",
+	dev_dbg(tusb->dev, "chg_det state %s vbus_present %d\n",
 		tusb1210_chg_det_states[tusb->chg_det_state], vbus_present);
 
 	switch (tusb->chg_det_state) {
@@ -261,9 +262,9 @@ static void tusb1210_chg_det_work(struct work_struct *work)
 		tusb->chg_type = POWER_SUPPLY_USB_TYPE_UNKNOWN;
 		tusb->chg_det_retries = 0;
 		/* Power on USB controller for ulpi_read()/_write() */
-		ret = pm_runtime_resume_and_get(tusb->ulpi->dev.parent);
+		ret = pm_runtime_resume_and_get(tusb->dev->parent);
 		if (ret < 0) {
-			dev_err(&tusb->ulpi->dev, "error %d runtime-resuming\n", ret);
+			dev_err(tusb->dev, "error %d runtime-resuming\n", ret);
 			/* Should never happen, skip charger detection */
 			tusb1210_chg_det_set_state(tusb, TUSB1210_CHG_DET_CONNECTED, 0);
 			return;
@@ -332,7 +333,7 @@ static void tusb1210_chg_det_work(struct work_struct *work)
 
 		mutex_unlock(&tusb->phy->mutex);
 
-		pm_runtime_put(tusb->ulpi->dev.parent);
+		pm_runtime_put(tusb->dev->parent);
 		tusb1210_chg_det_set_state(tusb, TUSB1210_CHG_DET_CONNECTED, 0);
 		break;
 	case TUSB1210_CHG_DET_CONNECTED:
@@ -428,13 +429,14 @@ static const struct power_supply_desc tusb1210_psy_desc = {
 static void tusb1210_probe_charger_detect(struct tusb1210 *tusb)
 {
 	struct power_supply_config psy_cfg = { .drv_data = tusb };
-	struct device *dev = &tusb->ulpi->dev;
+	struct device *dev = tusb->dev;
+	struct ulpi *ulpi = to_ulpi_dev(dev);
 	int ret;
 
 	if (!device_property_read_bool(dev->parent, "linux,phy_charger_detect"))
 		return;
 
-	if (tusb->ulpi->id.product != 0x1508) {
+	if (ulpi->id.product != 0x1508) {
 		dev_err(dev, "error charger detection is only supported on the TUSB1211\n");
 		return;
 	}
@@ -485,25 +487,24 @@ static const struct phy_ops phy_ops = {
 
 static int tusb1210_probe(struct ulpi *ulpi)
 {
+	struct device *dev = &ulpi->dev;
 	struct tusb1210 *tusb;
 	u8 val, reg;
 	int ret;
 
-	tusb = devm_kzalloc(&ulpi->dev, sizeof(*tusb), GFP_KERNEL);
+	tusb = devm_kzalloc(dev, sizeof(*tusb), GFP_KERNEL);
 	if (!tusb)
 		return -ENOMEM;
 
-	tusb->ulpi = ulpi;
+	tusb->dev = dev;
 
-	tusb->gpio_reset = devm_gpiod_get_optional(&ulpi->dev, "reset",
-						   GPIOD_OUT_LOW);
+	tusb->gpio_reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(tusb->gpio_reset))
 		return PTR_ERR(tusb->gpio_reset);
 
 	gpiod_set_value_cansleep(tusb->gpio_reset, 1);
 
-	tusb->gpio_cs = devm_gpiod_get_optional(&ulpi->dev, "cs",
-						GPIOD_OUT_LOW);
+	tusb->gpio_cs = devm_gpiod_get_optional(dev, "cs", GPIOD_OUT_LOW);
 	if (IS_ERR(tusb->gpio_cs))
 		return PTR_ERR(tusb->gpio_cs);
 
@@ -519,15 +520,15 @@ static int tusb1210_probe(struct ulpi *ulpi)
 		return ret;
 
 	/* High speed output drive strength configuration */
-	if (!device_property_read_u8(&ulpi->dev, "ihstx", &val))
+	if (!device_property_read_u8(dev, "ihstx", &val))
 		u8p_replace_bits(&reg, val, (u8)TUSB1210_VENDOR_SPECIFIC2_IHSTX_MASK);
 
 	/* High speed output impedance configuration */
-	if (!device_property_read_u8(&ulpi->dev, "zhsdrv", &val))
+	if (!device_property_read_u8(dev, "zhsdrv", &val))
 		u8p_replace_bits(&reg, val, (u8)TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_MASK);
 
 	/* DP/DM swap control */
-	if (!device_property_read_u8(&ulpi->dev, "datapolarity", &val))
+	if (!device_property_read_u8(dev, "datapolarity", &val))
 		u8p_replace_bits(&reg, val, (u8)TUSB1210_VENDOR_SPECIFIC2_DP_MASK);
 
 	ret = tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2, reg);
-- 
2.43.0.rc1.1.gbec44491f096


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
