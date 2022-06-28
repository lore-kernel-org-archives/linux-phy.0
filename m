Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20928C43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vt8j34mGiKKzOqHgO19nTgpSwgEvfjX4fWzxRFKIAhY=; b=xerQhSbL3QsBFW
	hGgNYXBP8ETLRqvFdwocExqGgdG/xjgRzAAevCou6vnEolv0BfzJSy1LlXIdT7843MRrptgtg702G
	6OTNgyvV2/etcJcg6fDUPzt4UDshmqMui+lVS1I0qWz+oCuu/XYqNdzYdksbgX1rLCBZ7zIrPzA+w
	SbQW4+f6WMg8zZb8Ah4k/gRGCp9ssUDKxN9GvIj8R1NeI/eRsawUU7pndcXk8z0AqXtj8FIhuY2nO
	UL704UCfbMRZ7Ug2WmRrXdCxDIfHAeujzwDKRpMCbjSVSE6Q52O4opC0hwgC0F+qxTompequvZ9E/
	TEoy6w57V7990lxDieyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaz-006Dtv-JG; Tue, 28 Jun 2022 12:45:33 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aau-006Dmq-NR
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:31 +0000
Received: by mail-ej1-x62d.google.com with SMTP id fi2so25489441ejb.9
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FUvTBZSvTkQG8k5ahx+vCE8pnavlPjrhJsWTl2v7qY4=;
        b=YUsA1imIhupuf9Wojjd9t1tkr06B/Q5S+154aH/XHbZiBawjU/E3OSL0UxsAjaTQSq
         2Ttr42qCSlo9mEQGVAEd7GFglPPvmNBMTDfpZ4Np4BSsCmSm4lltW8n0WAZgY4Tl7j6n
         oOGDhXVfcxu4RL5rhr/VynR6l7ATR5G7koin5wvSdPynWfmgUzEMouVgCIwuF3bZlnHN
         pYPE9fYeE1mCy7z7AkDBi5LV0Kl6de/fqQ6yZib5eMkINF4h/QJS1b7zCFrX6RX8nQXf
         DWHLqxAoYTHHbO8yBlxzMzVzVFOprF5e+duPfuyyB+obihpjp1V6Pl9W+Fz2Pher7Jmi
         TjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FUvTBZSvTkQG8k5ahx+vCE8pnavlPjrhJsWTl2v7qY4=;
        b=UJt2ucbSL1jek8EgwC+cUcRncBvHLUrhG/tvoZsxsRAxRzj3CbcTeyCflsjsRZlnyT
         ecDS0Qalnfks9PdvqP3TrrxS/U+4fEKRoWLuRKQGw7av4ppZz4JK71JKeV6dj8sRqIs/
         cWiIa4/sujzIV31aEQ1ZflMwIbmZqOKany95EVYZ74HUHGB+aegrOnokdHcg4CSJclBk
         F1oEGTN/SnGVY5YDQIpvGTnEgwujrjz6dzJ7l6q47gU4EwbivSBmxfqV2/jnochsM9RI
         lyjzZHXc2yO4JaCPhXQ0QHIpVIlSej1r5BTp5jwAZUcIRJ6J1RSJnchtaM4+HfucbCPw
         gimw==
X-Gm-Message-State: AJIora9I57oY9SHrEe/COTOMJUV6EB7VpJCSmXELr0el69JE1H3GvsyG
	DJOgoQPtONnMV6WdpdsJMW7U7aTVy60=
X-Google-Smtp-Source: AGRyM1uyuIl2+iwMosBXcvxSsRRQMisrWpqCTCRI2n8Z/h8yD5HhzesYWyv9VyZ3X2v8ii8N8r1Org==
X-Received: by 2002:a17:907:3ea6:b0:726:3554:cf7a with SMTP id hs38-20020a1709073ea600b007263554cf7amr17753304ejc.384.1656420324011;
        Tue, 28 Jun 2022 05:45:24 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:23 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 8/9] reset: lantiq: Remove driver as it has been replaced by reset-intel-gw
Date: Tue, 28 Jun 2022 14:44:40 +0200
Message-Id: <20220628124441.2385023-9-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054528_895060_A6C90B39 
X-CRM114-Status: GOOD (  19.63  )
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

Now that we have replaced the reset-lantiq driver with the
reset-intel-gw driver we can remove the old code.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/reset/Kconfig        |   6 -
 drivers/reset/Makefile       |   1 -
 drivers/reset/reset-lantiq.c | 210 -----------------------------------
 3 files changed, 217 deletions(-)
 delete mode 100644 drivers/reset/reset-lantiq.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index fb49c465078f..22e28f5cf154 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -103,12 +103,6 @@ config RESET_K210
 	  Say Y if you want to control reset signals provided by this
 	  controller.
 
-config RESET_LANTIQ
-	bool "Lantiq XWAY Reset Driver" if COMPILE_TEST
-	default SOC_TYPE_XWAY
-	help
-	  This enables the reset controller driver for Lantiq / Intel XWAY SoCs.
-
 config RESET_LPC18XX
 	bool "LPC18xx/43xx Reset Driver" if COMPILE_TEST
 	default ARCH_LPC18XX
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index a80a9c4008a7..9cb37e7890f1 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -14,7 +14,6 @@ obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
 obj-$(CONFIG_RESET_K210) += reset-k210.o
-obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
 obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
 obj-$(CONFIG_RESET_MCHP_SPARX5) += reset-microchip-sparx5.o
 obj-$(CONFIG_RESET_MESON) += reset-meson.o
diff --git a/drivers/reset/reset-lantiq.c b/drivers/reset/reset-lantiq.c
deleted file mode 100644
index b936cfe85641..000000000000
--- a/drivers/reset/reset-lantiq.c
+++ /dev/null
@@ -1,210 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *
- *  Copyright (C) 2010 John Crispin <blogic@phrozen.org>
- *  Copyright (C) 2013-2015 Lantiq Beteiligungs-GmbH & Co.KG
- *  Copyright (C) 2016 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *  Copyright (C) 2017 Hauke Mehrtens <hauke@hauke-m.de>
- */
-
-#include <linux/mfd/syscon.h>
-#include <linux/module.h>
-#include <linux/regmap.h>
-#include <linux/reset-controller.h>
-#include <linux/of_address.h>
-#include <linux/of_platform.h>
-#include <linux/platform_device.h>
-#include <linux/property.h>
-
-#define LANTIQ_RCU_RESET_TIMEOUT	10000
-
-struct lantiq_rcu_reset_priv {
-	struct reset_controller_dev rcdev;
-	struct device *dev;
-	struct regmap *regmap;
-	u32 reset_offset;
-	u32 status_offset;
-};
-
-static struct lantiq_rcu_reset_priv *to_lantiq_rcu_reset_priv(
-	struct reset_controller_dev *rcdev)
-{
-	return container_of(rcdev, struct lantiq_rcu_reset_priv, rcdev);
-}
-
-static int lantiq_rcu_reset_status(struct reset_controller_dev *rcdev,
-				   unsigned long id)
-{
-	struct lantiq_rcu_reset_priv *priv = to_lantiq_rcu_reset_priv(rcdev);
-	unsigned int status = (id >> 8) & 0x1f;
-	u32 val;
-	int ret;
-
-	ret = regmap_read(priv->regmap, priv->status_offset, &val);
-	if (ret)
-		return ret;
-
-	return !!(val & BIT(status));
-}
-
-static int lantiq_rcu_reset_status_timeout(struct reset_controller_dev *rcdev,
-					   unsigned long id, bool assert)
-{
-	int ret;
-	int retry = LANTIQ_RCU_RESET_TIMEOUT;
-
-	do {
-		ret = lantiq_rcu_reset_status(rcdev, id);
-		if (ret < 0)
-			return ret;
-		if (ret == assert)
-			return 0;
-		usleep_range(20, 40);
-	} while (--retry);
-
-	return -ETIMEDOUT;
-}
-
-static int lantiq_rcu_reset_update(struct reset_controller_dev *rcdev,
-				   unsigned long id, bool assert)
-{
-	struct lantiq_rcu_reset_priv *priv = to_lantiq_rcu_reset_priv(rcdev);
-	unsigned int set = id & 0x1f;
-	u32 val = assert ? BIT(set) : 0;
-	int ret;
-
-	ret = regmap_update_bits(priv->regmap, priv->reset_offset, BIT(set),
-				 val);
-	if (ret) {
-		dev_err(priv->dev, "Failed to set reset bit %u\n", set);
-		return ret;
-	}
-
-
-	ret = lantiq_rcu_reset_status_timeout(rcdev, id, assert);
-	if (ret)
-		dev_err(priv->dev, "Failed to %s bit %u\n",
-			assert ? "assert" : "deassert", set);
-
-	return ret;
-}
-
-static int lantiq_rcu_reset_assert(struct reset_controller_dev *rcdev,
-			     unsigned long id)
-{
-	return lantiq_rcu_reset_update(rcdev, id, true);
-}
-
-static int lantiq_rcu_reset_deassert(struct reset_controller_dev *rcdev,
-			       unsigned long id)
-{
-	return lantiq_rcu_reset_update(rcdev, id, false);
-}
-
-static int lantiq_rcu_reset_reset(struct reset_controller_dev *rcdev,
-			    unsigned long id)
-{
-	int ret;
-
-	ret = lantiq_rcu_reset_assert(rcdev, id);
-	if (ret)
-		return ret;
-
-	return lantiq_rcu_reset_deassert(rcdev, id);
-}
-
-static const struct reset_control_ops lantiq_rcu_reset_ops = {
-	.assert = lantiq_rcu_reset_assert,
-	.deassert = lantiq_rcu_reset_deassert,
-	.status = lantiq_rcu_reset_status,
-	.reset	= lantiq_rcu_reset_reset,
-};
-
-static int lantiq_rcu_reset_of_parse(struct platform_device *pdev,
-			       struct lantiq_rcu_reset_priv *priv)
-{
-	struct device *dev = &pdev->dev;
-	const __be32 *offset;
-
-	priv->regmap = syscon_node_to_regmap(dev->of_node->parent);
-	if (IS_ERR(priv->regmap)) {
-		dev_err(&pdev->dev, "Failed to lookup RCU regmap\n");
-		return PTR_ERR(priv->regmap);
-	}
-
-	offset = of_get_address(dev->of_node, 0, NULL, NULL);
-	if (!offset) {
-		dev_err(&pdev->dev, "Failed to get RCU reset offset\n");
-		return -ENOENT;
-	}
-	priv->reset_offset = __be32_to_cpu(*offset);
-
-	offset = of_get_address(dev->of_node, 1, NULL, NULL);
-	if (!offset) {
-		dev_err(&pdev->dev, "Failed to get RCU status offset\n");
-		return -ENOENT;
-	}
-	priv->status_offset = __be32_to_cpu(*offset);
-
-	return 0;
-}
-
-static int lantiq_rcu_reset_xlate(struct reset_controller_dev *rcdev,
-				  const struct of_phandle_args *reset_spec)
-{
-	unsigned int status, set;
-
-	set = reset_spec->args[0];
-	status = reset_spec->args[1];
-
-	if (set >= rcdev->nr_resets || status >= rcdev->nr_resets)
-		return -EINVAL;
-
-	return (status << 8) | set;
-}
-
-static int lantiq_rcu_reset_probe(struct platform_device *pdev)
-{
-	struct lantiq_rcu_reset_priv *priv;
-	int err;
-
-	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	priv->dev = &pdev->dev;
-	platform_set_drvdata(pdev, priv);
-
-	err = lantiq_rcu_reset_of_parse(pdev, priv);
-	if (err)
-		return err;
-
-	priv->rcdev.ops = &lantiq_rcu_reset_ops;
-	priv->rcdev.owner = THIS_MODULE;
-	priv->rcdev.of_node = pdev->dev.of_node;
-	priv->rcdev.nr_resets = 32;
-	priv->rcdev.of_xlate = lantiq_rcu_reset_xlate;
-	priv->rcdev.of_reset_n_cells = 2;
-
-	return devm_reset_controller_register(&pdev->dev, &priv->rcdev);
-}
-
-static const struct of_device_id lantiq_rcu_reset_dt_ids[] = {
-	{ .compatible = "lantiq,danube-reset", },
-	{ .compatible = "lantiq,xrx200-reset", },
-	{ },
-};
-MODULE_DEVICE_TABLE(of, lantiq_rcu_reset_dt_ids);
-
-static struct platform_driver lantiq_rcu_reset_driver = {
-	.probe	= lantiq_rcu_reset_probe,
-	.driver = {
-		.name		= "lantiq-reset",
-		.of_match_table	= lantiq_rcu_reset_dt_ids,
-	},
-};
-module_platform_driver(lantiq_rcu_reset_driver);
-
-MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
-MODULE_DESCRIPTION("Lantiq XWAY RCU Reset Controller Driver");
-MODULE_LICENSE("GPL");
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
