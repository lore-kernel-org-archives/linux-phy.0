Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA082C54E49
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1xK2hJ4ydFGJa2WI17/mb5lCfcpfMy8et+D21M5bcM=; b=HK0b1+gzzH1e74
	JQJMt+lJUiy0B/+9ILaLvwngevJWiYP5Nbt0ueynpwf7E91w2Crc8rpH9DoBSu0GbrwBF6+34NYtj
	L4f5TIJYkGbb2RzVPg0VyulHjWNl+jURj8A3UtN6fyxp++58+BxBUtOzvYhscZPqIcH3Ue7M2MiRk
	OxnjJ354ThOo8LSQT00qmdW9GbVJy2R6Z6F1vzPAnxFaaQ+7IL70gI3bmoX1ebSWbNl6nipf5zdhY
	OtXSClIheKqvrwMphkd6i1fw97cVzXH5EbJep62LsH6BwDqtLimoI63AV3D4UwbmfkQ7Ssj9OJlgE
	1zp1qm7G1dJiEB6XklKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBW7-00000009tWx-13hs;
	Mon, 04 Mar 2024 16:50:19 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMa-00000009cTV-1OHY;
	Mon, 04 Mar 2024 15:36:30 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B7D041BF20F;
	Mon,  4 Mar 2024 15:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=atrvTInBTa9ftnt4eeX7cpQDhxNmTdh+W88IDH8sTxw=;
	b=X03KZaMnWcCRGT68bktpQfrNroVp3VtpQkl5woOBUaf3UYJV1shpZHNcYvQYTA1JqhAmQ3
	uHVpfl7dR/RzKXB90qOYy2fe1QyCoQVQNf8kL0Honv54htsH0aofSW34InidaoLQJisVB/
	xSIEd/+t+dW5Dppc56fC+M4MR74fQMXaPVgXGAhpKIymZsbUpbAGhZP44IrOFIzslfnb8B
	r1y/7Rmsm9xqfTj7Ig5mobitM/gBV4MF1X2p3ERVOXTd4cmgLXuzwO73X8G6mIn50pI+RO
	noSKKK9vjPwnKJBsxo6ot75ctGaiKYBtWx85UVqvpQ++r3AQ6DvyMy5KQtGQ+A==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:50 +0100
Subject: [PATCH v4 07/18] phy: ti: phy-j721e-wiz: split wiz_clock_init()
 function
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-7-6f1f53390c85@bootlin.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_073624_976290_CEAAAF42 
X-CRM114-Status: GOOD (  15.17  )
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

The wiz_clock_init() function mixes probe and hardware configuration.
Rename the wiz_clock_init() to wiz_clock_probe() and move the hardware
configuration part in a new function named wiz_clock_init().

This hardware configuration sequence must be called during the resume
stage of the driver.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 67 ++++++++++++++++++++++++------------------
 1 file changed, 38 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 5fea4df9404e..0e3cb1ed5a52 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1076,26 +1076,12 @@ static int wiz_clock_register(struct wiz *wiz)
 	return ret;
 }
 
-static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
+static void wiz_clock_init(struct wiz *wiz)
 {
-	const struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
-	struct device *dev = wiz->dev;
-	struct device_node *clk_node;
-	const char *node_name;
 	unsigned long rate;
-	struct clk *clk;
-	int ret;
-	int i;
-
-	clk = devm_clk_get(dev, "core_ref_clk");
-	if (IS_ERR(clk))
-		return dev_err_probe(dev, PTR_ERR(clk),
-				     "core_ref_clk clock not found\n");
 
-	wiz->input_clks[WIZ_CORE_REFCLK] = clk;
-
-	rate = clk_get_rate(clk);
-	if (rate >= 100000000)
+	rate = clk_get_rate(wiz->input_clks[WIZ_CORE_REFCLK]);
+	if (rate >= REF_CLK_100MHZ)
 		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x1);
 	else
 		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x3);
@@ -1119,6 +1105,39 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 		break;
 	}
 
+	if (wiz->input_clks[WIZ_CORE_REFCLK1]) {
+		rate = clk_get_rate(wiz->input_clks[WIZ_CORE_REFCLK1]);
+		if (rate >= REF_CLK_100MHZ)
+			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x1);
+		else
+			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x3);
+
+	}
+
+	rate = clk_get_rate(wiz->input_clks[WIZ_EXT_REFCLK]);
+	if (rate >= REF_CLK_100MHZ)
+		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
+	else
+		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
+}
+
+static int wiz_clock_probe(struct wiz *wiz, struct device_node *node)
+{
+	const struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
+	struct device *dev = wiz->dev;
+	struct device_node *clk_node;
+	const char *node_name;
+	struct clk *clk;
+	int ret;
+	int i;
+
+	clk = devm_clk_get(dev, "core_ref_clk");
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "core_ref_clk clock not found\n");
+
+	wiz->input_clks[WIZ_CORE_REFCLK] = clk;
+
 	if (wiz->data->pma_cmn_refclk1_int_mode) {
 		clk = devm_clk_get(dev, "core_ref1_clk");
 		if (IS_ERR(clk))
@@ -1126,12 +1145,6 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 					     "core_ref1_clk clock not found\n");
 
 		wiz->input_clks[WIZ_CORE_REFCLK1] = clk;
-
-		rate = clk_get_rate(clk);
-		if (rate >= 100000000)
-			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x1);
-		else
-			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x3);
 	}
 
 	clk = devm_clk_get(dev, "ext_ref_clk");
@@ -1141,11 +1154,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 
 	wiz->input_clks[WIZ_EXT_REFCLK] = clk;
 
-	rate = clk_get_rate(clk);
-	if (rate >= 100000000)
-		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
-	else
-		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
+	wiz_clock_init(wiz);
 
 	switch (wiz->type) {
 	case AM64_WIZ_10G:
@@ -1589,7 +1598,7 @@ static int wiz_probe(struct platform_device *pdev)
 		goto err_get_sync;
 	}
 
-	ret = wiz_clock_init(wiz, node);
+	ret = wiz_clock_probe(wiz, node);
 	if (ret < 0) {
 		dev_warn(dev, "Failed to initialize clocks\n");
 		goto err_get_sync;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
