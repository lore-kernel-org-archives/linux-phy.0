Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D05CD4F3D
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 13:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6EhKu5orRSU4lvUlA2K+Lem01IQ/+u+T/3i74mHCY0=; b=Yi8Hiq6QDEGcNW
	fAOaPA1Z32Z0lHHA6UsKMWZKIJgM4DO4DuQqM0P8NyPVcjoXrA+OKme+6HO5XNpY6W6aq7TZSJsh4
	jjjF6wffvLr0wzWBFRNruEh9xxPJIBirL9ZYzuVidvxFXzeJmgOBzTxAv3LDi9EffGKL5RcjKxue3
	v6tlS/liC667BglIIdUoJ9xManOJ1aupKA5bKcCaRe0mrPAGL6iXYlLWWlBjHWFdz07VjTBb31Lqn
	6y+khVSsW48AcCAZGLmcP7fe1gN6bMTsAVyJzV1qBp+8Kh6T5A6A691keHaqiTe6IbY+wzNc00xKo
	nKvDgvycCfQEcZX1TIYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqK-0000000Gm7m-2nNy;
	Tue, 12 May 2026 13:08:12 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqH-0000000Gm51-3md1
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 13:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778591289; x=1810127289;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=bHWrPhTiJL2fP/DH1DaMkMAaneZI5rRXmH5SsOzULJw=;
  b=S5jtBcUMwyfpyTSGh4qzGfHBllv0apjjJrdOJ15MYX3lczmZp3uSonfO
   6H/aPqGaW4UG6O1ykCIviDUy4Wb0GZOYNOEEGZ6sou+3cdcZQq1ExeSWp
   aNfaf9Vw6W1rbTNsDjGgG31jRVgIJ5X2ceBKNEe3dwRARxzX52o2rbiKw
   sunK/JZK/SL2e7jTn8mpmvWr4ozaJ9ihuxeDDAfy080VcDti793CaOV5Z
   TFv2+xfmgdkMijgdKznb5v+fTaW6VhP/m4w53GfE85MYTo0hohfgkjzYf
   U1RIPLEzgPUXByiu24+4Fj2yKarG7Blls1wfH3qCm8OdjNNR6lPlBaWnN
   Q==;
X-CSE-ConnectionGUID: PUWB2HuATE2WqWMFMmanWg==
X-CSE-MsgGUID: BrMUgeNiQTGiLDu47XJDpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90600380"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="90600380"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:00 -0700
X-CSE-ConnectionGUID: /mJvE0wNS7anVBFuForJMQ==
X-CSE-MsgGUID: a2XOIYexRYGNV6ODYrbgFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="233294184"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 06:05:56 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 74E8A9B; Tue, 12 May 2026 15:05:55 +0200 (CEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Peng Fan <peng.fan@nxp.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v4 2/5] phy: phy-can-transceiver: use device_get_match_data()
Date: Tue, 12 May 2026 15:01:50 +0200
Message-ID: <20260512130552.272476-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_060810_033802_42F1B746 
X-CRM114-Status: GOOD (  13.58  )
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

Use the generic firmware node interface for retrieving
device match data instead of the OF-specific one.

While at it, drop unneeded argument to devm_phy_create() which
extracts device node from the given device by default.

Reviewed-by: Josua Mayer <josua@solid-run.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 1808f903c057..5cfd09735204 100644
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
@@ -152,7 +152,6 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct can_transceiver_phy *can_transceiver_phy;
 	struct can_transceiver_priv *priv;
 	const struct can_transceiver_data *drvdata;
-	const struct of_device_id *match;
 	struct phy *phy;
 	struct gpio_desc *silent_gpio;
 	struct gpio_desc *standby_gpio;
@@ -161,11 +160,10 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	u32 max_bitrate = 0;
 	int err, i, num_ch = 1;
 
-	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
-	if (!match || !match->data)
+	drvdata = device_get_match_data(dev);
+	if (drvdata)
 		return -ENODEV;
 
-	drvdata = match->data;
 	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
 		num_ch = 2;
 
@@ -190,7 +188,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
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
