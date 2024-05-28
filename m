Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E21EFC25B7C
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 10:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txzEuYNjoO4p1OPgL7ukHc/xYjwdEK9baLX3LClAoGM=; b=Q72mUT9t8oGg+W
	MUjvCbPYUgphBb6m1Gii4BQMYJ0QKFNKoGkF6l5ZQWAQJ00no2hVqAIr+Y/8r1UxZeSDkvXCVfhhv
	ysgjHZ+qoX8F1FPu8SMShap5FexljVSlEbgzhdm3v5XYGwAoGTasJW0rBIIaP7lnIpKdanIPUUjqP
	W5dmCxZbieyleFaql124PTk3D9VpuEWof4xvIL0GtGyAXZ0YpvJr5WhtxCV+6lolt8wyVLsi0ra5j
	RG8WstAioZ6uLbhzLxQjNVJN6nLj1Aau/8lkLuGSpDFCNDgZmGA8YdyY332X/3Pui5BheTCvLAa/Y
	oTOoPfj492v1dYcnekYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwh-00000000Bqz-2X0j;
	Tue, 28 May 2024 10:20:43 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwb-00000000Bnx-3bZj
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 10:20:40 +0000
Received: by mail.gandi.net (Postfix) with ESMTPA id 225EE24000E;
	Tue, 28 May 2024 10:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1716891630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Pt4vcaHEqIK7tEg5aEV04mxd2ZnC0k99FgLlkPj/PX8=;
	b=SVfbZnEtNR0BhLFE21BoJQ30/zXBsCr4v3wujLSLANi/Z2fjIJc88cBrYT2byO2SqyAA8R
	DTBP9fLHFBAz8W21/rcQOdumlCGeKpML5PfNftca7BRdwWJdfHMOzwGXlPMoBPk/nqiXme
	rWPReML+hVUs3P2zCqpIUe8reR/hc073JZoI0mTxmt06nS+w1FXEKV8lq3I/OhdnHldGE5
	bg1jhwUJ+DCl/0JEzl52Yql7zf5hjKsVBSo7qk4jnrkgHiGFkTXN9lYbGa+yluWXZHpUlK
	YnZvFO4iUoHG+qe7MUOjhGOD9JkRqaFfNBYFYUyNtILYyNwelzjdG7+3+g6ttQ==
From: Bastien Curutchet <bastien.curutchet@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bin Liu <b-liu@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	herve.codina@bootlin.com,
	christophercordahi@nanometrics.ca,
	Bastien Curutchet <bastien.curutchet@bootlin.com>
Subject: [PATCH 1/4] phy: ti: phy-da8xx-usb: Add runtime PM support
Date: Tue, 28 May 2024 12:20:23 +0200
Message-ID: <20240528102026.40136-2-bastien.curutchet@bootlin.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
References: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: bastien.curutchet@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_032038_229840_AC9A6051 
X-CRM114-Status: GOOD (  15.22  )
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

Runtime PM is not supported while USB PHY can be turned off from
register accesses.

Add runtime PM for the USB2.0 PHY. The PHY is entirely shut down to save
as much power as possible. This means that gadgets will not be discovered
once suspend state is entered, and suspend state can not be left without
an explicit user intervention (through sysfs). That's why runtime PM is
disabled by default.

Signed-off-by: Bastien Curutchet <bastien.curutchet@bootlin.com>
---
 drivers/phy/ti/phy-da8xx-usb.c | 49 ++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/phy/ti/phy-da8xx-usb.c b/drivers/phy/ti/phy-da8xx-usb.c
index dc614aa09a5f..80bfe37cf846 100644
--- a/drivers/phy/ti/phy-da8xx-usb.c
+++ b/drivers/phy/ti/phy-da8xx-usb.c
@@ -15,11 +15,13 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_data/phy-da8xx-usb.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #define PHY_INIT_BITS	(CFGCHIP2_SESENDEN | CFGCHIP2_VBDTCTEN)
 
 struct da8xx_usb_phy {
+	struct device		*dev;
 	struct phy_provider	*phy_provider;
 	struct phy		*usb11_phy;
 	struct phy		*usb20_phy;
@@ -40,6 +42,12 @@ static int da8xx_usb11_phy_power_on(struct phy *phy)
 	regmap_write_bits(d_phy->regmap, CFGCHIP(2), CFGCHIP2_USB1SUSPENDM,
 			  CFGCHIP2_USB1SUSPENDM);
 
+	/*
+	 * USB1.1 can used USB2.0 output clock as reference clock so this is here to prevent USB2.0
+	 * from shutting PHY's power when USB1.1 might use it
+	 */
+	pm_runtime_get_sync(d_phy->dev);
+
 	return 0;
 }
 
@@ -50,6 +58,7 @@ static int da8xx_usb11_phy_power_off(struct phy *phy)
 	regmap_write_bits(d_phy->regmap, CFGCHIP(2), CFGCHIP2_USB1SUSPENDM, 0);
 
 	clk_disable_unprepare(d_phy->usb11_clk);
+	pm_runtime_put_sync(d_phy->dev);
 
 	return 0;
 }
@@ -119,6 +128,35 @@ static const struct phy_ops da8xx_usb20_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static int __maybe_unused da8xx_runtime_suspend(struct device *dev)
+{
+	struct da8xx_usb_phy *d_phy = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "Suspending ...\n");
+
+	regmap_set_bits(d_phy->regmap, CFGCHIP(2), CFGCHIP2_PHYPWRDN | CFGCHIP2_OTGPWRDN);
+
+	return 0;
+}
+
+static int __maybe_unused da8xx_runtime_resume(struct device *dev)
+{
+	u32 mask = CFGCHIP2_RESET | CFGCHIP2_PHYPWRDN | CFGCHIP2_OTGPWRDN | CFGCHIP2_PHY_PLLON;
+	struct da8xx_usb_phy *d_phy = dev_get_drvdata(dev);
+	u32 pll_status;
+
+	regmap_update_bits(d_phy->regmap, CFGCHIP(2), mask, CFGCHIP2_PHY_PLLON);
+
+	dev_dbg(dev, "Resuming ...\n");
+
+	return regmap_read_poll_timeout(d_phy->regmap, CFGCHIP(2), pll_status,
+					pll_status & CFGCHIP2_PHYCLKGD, 1000, 500000);
+}
+
+static const struct dev_pm_ops da8xx_usb_phy_pm_ops = {
+	SET_RUNTIME_PM_OPS(da8xx_runtime_suspend, da8xx_runtime_resume, NULL)
+};
+
 static struct phy *da8xx_usb_phy_of_xlate(struct device *dev,
 					 const struct of_phandle_args *args)
 {
@@ -148,6 +186,8 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 	if (!d_phy)
 		return -ENOMEM;
 
+	d_phy->dev = dev;
+
 	if (pdata)
 		d_phy->regmap = pdata->cfgchip;
 	else
@@ -209,6 +249,14 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 	regmap_write_bits(d_phy->regmap, CFGCHIP(2),
 			  PHY_INIT_BITS, PHY_INIT_BITS);
 
+	pm_runtime_set_active(dev);
+	devm_pm_runtime_enable(dev);
+	/*
+	 * Prevent runtime pm from being ON by default. Users can enable
+	 * it using power/control in sysfs.
+	 */
+	pm_runtime_forbid(dev);
+
 	return 0;
 }
 
@@ -233,6 +281,7 @@ static struct platform_driver da8xx_usb_phy_driver = {
 	.remove_new = da8xx_usb_phy_remove,
 	.driver	= {
 		.name	= "da8xx-usb-phy",
+		.pm	= &da8xx_usb_phy_pm_ops,
 		.of_match_table = da8xx_usb_phy_ids,
 	},
 };
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
