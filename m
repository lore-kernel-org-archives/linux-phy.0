Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 557F0C531CC
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 20:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s82uU9IFQ4NOfsEyRMf7EUmZaNnchdcHPTmRh393HPo=; b=uiwavKuxJKzomQ
	8vc4xtsKsrL+zkVJ6vXXVG5XHT3EZppNtCY3mbL/5qg6LwXd3SGUXdosKeRpeVzG4l3J0l5RDIvWu
	Bb8QhJoxdCtd5SzgSYH3EzVGph69a9RwqQ1ACQjlWbw6g6CL4IhpwriV5au46LbrwJtAwSaqV89Ak
	hgjkCzFHXY3ddDaLma1hnUpRJMfBX+OE3lHv/ot/wg6POiCGXGf//xnf2qrgGAxDmNd5wlhSDMJUf
	0yvUs4m8w1ttMkhItG91SNLjlIHE53GvOCv3tNoW1NhhKRutzIBlSIIiK6VwAjVulpd/ezB+Tbfkv
	65HBd/2SWLxeKDJ9znOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAfG-0000000C1vR-2Nkq;
	Thu, 19 Feb 2026 20:30:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeR-0000000C0pl-4Axg
	for linux-phy@bombadil.infradead.org;
	Thu, 19 Feb 2026 20:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1Fb5wz3PaHg9uyjWAeQ8sIGtV975n+O/vz5fy14NRj8=; b=YvgMalqRHzjwnY6SSXQLztcJ9c
	r9HuCJTFdlMekX4pm/dt4i1Z3k8cI6p6zA0ksWFhXujLZPbD2zVdUV8wP5KWDLQa1yxU01lduWiVN
	z4wNswvFj6jUzFniWIS1YaG3RJlnVTpWCTbKCi3O0zmF2Yh2YHTQ5FQs4lj7ngWlSLCzt0eiUrLIt
	lsMOAUyfkZ0v1haj8lca+iulhjMJac6IDx3hi1KBvtJDxqH49/NWV+XPsTG4MYhGMJMMovnjTt9Af
	RYOZpfxW1NX8ytO+O8EwCWBGWVJKSt9sF4ISnrBvzDuoTM14jDIVbY7T59+VTgV4xIwyV5Kh2J7Lm
	z+L1P2og==;
Received: from mgamail.intel.com ([198.175.65.19])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeG-00000001qf8-0mvs
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 20:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771532960; x=1803068960;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hd5cj1VyA/d0T/ntQwiii7GhLKEXsJXcwSYU99VWdng=;
  b=LaHkRNLvQqEcVo3iQTwl4+Kxkd6tLtH8kYeolbwk7TcjOGtWSGtVMZ6S
   3DDk6DLH7vaWn3OcPy/VA0NCIVkU0HbaFANnRD/EW0PeRC7Eosz3nx2/R
   58C2zzjETlpidiAm/8Wq8FTfeHiXolLGNt/HUUZJV9HW4ePA9y2Dk8hF5
   2cZPFkjVZM9eZKqip+C4zquT3UZqGiAwJqEGFmAA1q7XsNNYNOC9TNJBQ
   L/4MZIhKYP88J0lUb9DMzRoZlRfPCX1/Qlyp3k2u34DJQvUM+H5KCD1on
   53CMYomHQ2vWQ9fhup6HUS1b8RgrTi54woS9mNRp40X28r90Zlfg3Y1pT
   g==;
X-CSE-ConnectionGUID: vI2CE6u4SuiMOILVe4X2XA==
X-CSE-MsgGUID: HNB231lXQVy9Gs8+35FZgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72532329"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="72532329"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 12:29:14 -0800
X-CSE-ConnectionGUID: E/tMwy0FQ+eY6JvUZmo1lw==
X-CSE-MsgGUID: Q0hV3O4bSIi5mewv/TNg3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="219183206"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2026 12:29:13 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id F387298; Thu, 19 Feb 2026 21:29:11 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/4] phy: phy-can-transceiver: Convert to use device property API
Date: Thu, 19 Feb 2026 21:26:19 +0100
Message-ID: <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_202926_558264_C2F71A84 
X-CRM114-Status: GOOD (  13.76  )
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

It seems the driver is half-moved to use device property APIs.
Finish that by converting everything to use that.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 330356706ad7..f2259af4af8a 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -5,9 +5,9 @@
  * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com
  *
  */
-#include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/module.h>
 #include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
@@ -130,7 +130,7 @@ MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
 static inline struct mux_state *
 devm_mux_state_get_optional(struct device *dev, const char *mux_name)
 {
-	if (!of_property_present(dev->of_node, "mux-states"))
+	if (!device_property_present(dev, "mux-states"))
 		return NULL;
 
 	return devm_mux_state_get(dev, mux_name);
@@ -162,7 +162,6 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct can_transceiver_phy *can_transceiver_phy;
 	struct can_transceiver_priv *priv;
 	const struct can_transceiver_data *drvdata;
-	const struct of_device_id *match;
 	struct phy *phy;
 	struct gpio_desc *silent_gpio;
 	struct gpio_desc *standby_gpio;
@@ -171,8 +170,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	u32 max_bitrate = 0;
 	int err, i, num_ch = 1;
 
-	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
-	drvdata = match->data;
+	drvdata = device_get_match_data(dev);
 	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
 		num_ch = 2;
 
@@ -197,7 +195,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 		can_transceiver_phy = &priv->can_transceiver_phy[i];
 		can_transceiver_phy->priv = priv;
 
-		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
+		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);
 		if (IS_ERR(phy)) {
 			dev_err(dev, "failed to create can transceiver phy\n");
 			return PTR_ERR(phy);
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
