Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D394C48BEB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 16:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QN0tS3LT6o1ZeIjorpCmkx9Gp3pfquPnZNWfJIvGlkk=; b=J6xYuC1e70NWBf
	BuNRa6RpzRloQOzJsJMsREgoR0DcWcuGwaumTyNS2/4nZnVOxOU/udOVvqVEBcJBGsvSGRKmykK+A
	/QFxpX1o1za8Tmtyd/q6ozL65jCsGdrrEEnsrSf49NE5gxUbwyZPtApyyKScMgDoRMrFBoudpPloR
	FNR8enIP529WeaETdE4tBOBUklsmLoucpMdcv23FzpNpBrb5uyGj0wr0I0bg/cjUez6kB1tqwCj+F
	Ki8pJjT1pp+0KsG8cC+t0f10tU0YtP232x8QfANstvSxsdg76V+PS9RKMefNHH/B+vZZxCYKL2CMz
	TzOz8C3wgB1sVbUAci3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raedV-0000000Gyr4-3wc8;
	Thu, 15 Feb 2024 16:30:57 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radV3-0000000Ggpp-0ANk;
	Thu, 15 Feb 2024 15:18:11 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5238224000B;
	Thu, 15 Feb 2024 15:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FJYNJtMOR5pLpoIfNaokG07UEIar6ENzddhLhwstigw=;
	b=QzmTPi/xi1lzPXKjWZi8IsqH1gG0tk+au3AIC9A497Ujqo734s0p+l9w3RzzdvZX8NmL6R
	KVOQQu0vqfCOEQzkFk+OjGmLNvLvk0exFB+KIsJt0/kDtOVrJwndybcZmomS7rjZWcQl2/
	7iCECEmbkIRrfQbxHfRWi0ftRWGLwxTQaPJ6hDg4JA8pyH/7z77HDB6/8OoUnlvL5npcp6
	rvCQ8tVY6gubbBNLh6Z6Aw0KJ2TL4kv12ZaF35aj7CEqtbyzPrUlXqWs6EfAux0aTmewYL
	E1DyrfghHx5R+xCqxzGMZi/+oQf0KtyQ+jyrU9ZOHD5fuKJjLvwSMDRme3PJwg==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:52 +0100
Subject: [PATCH v3 07/18] phy: ti: phy-j721e-wiz: use dev_err_probe()
 instead of dev_err()
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-7-5c2e4a3fac1f@bootlin.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
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
X-CRM114-CacheID: sfid-20240215_071809_722914_2D20211A 
X-CRM114-Status: GOOD (  10.84  )
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

Use dev_err_probe() instead of dev_err() in wiz_clock_init() to simplify
the code and standardize the error output.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 39 ++++++++++++++++++---------------------
 1 file changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index fc3cd98c60ff..ce8a99801a4c 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1088,11 +1088,10 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	int i;
 
 	clk = devm_clk_get(dev, "core_ref_clk");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "core_ref_clk clock not found\n");
-		ret = PTR_ERR(clk);
-		return ret;
-	}
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "core_ref_clk clock not found\n");
+
 	wiz->input_clks[WIZ_CORE_REFCLK] = clk;
 
 	rate = clk_get_rate(clk);
@@ -1122,11 +1121,10 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 
 	if (wiz->data->pma_cmn_refclk1_int_mode) {
 		clk = devm_clk_get(dev, "core_ref1_clk");
-		if (IS_ERR(clk)) {
-			dev_err(dev, "core_ref1_clk clock not found\n");
-			ret = PTR_ERR(clk);
-			return ret;
-		}
+		if (IS_ERR(clk))
+			return dev_err_probe(dev, PTR_ERR(clk),
+					     "core_ref1_clk clock not found\n");
+
 		wiz->input_clks[WIZ_CORE_REFCLK1] = clk;
 
 		rate = clk_get_rate(clk);
@@ -1137,11 +1135,10 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	}
 
 	clk = devm_clk_get(dev, "ext_ref_clk");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "ext_ref_clk clock not found\n");
-		ret = PTR_ERR(clk);
-		return ret;
-	}
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "ext_ref_clk clock not found\n");
+
 	wiz->input_clks[WIZ_EXT_REFCLK] = clk;
 
 	rate = clk_get_rate(clk);
@@ -1157,7 +1154,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	case J721S2_WIZ_10G:
 		ret = wiz_clock_register(wiz);
 		if (ret)
-			dev_err(dev, "Failed to register wiz clocks\n");
+			dev_err_probe(dev, ret, "Failed to register wiz clocks\n");
 		return ret;
 	default:
 		break;
@@ -1175,8 +1172,8 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 		ret = wiz_mux_of_clk_register(wiz, clk_node, wiz->mux_sel_field[i],
 					      clk_mux_sel[i].table);
 		if (ret) {
-			dev_err(dev, "Failed to register %s clock\n",
-				node_name);
+			dev_err_probe(dev, ret, "Failed to register %s clock\n",
+				      node_name);
 			of_node_put(clk_node);
 			goto err;
 		}
@@ -1188,16 +1185,16 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 		node_name = clk_div_sel[i].node_name;
 		clk_node = of_get_child_by_name(node, node_name);
 		if (!clk_node) {
-			dev_err(dev, "Unable to get %s node\n", node_name);
 			ret = -EINVAL;
+			dev_err_probe(dev, ret, "Unable to get %s node\n", node_name);
 			goto err;
 		}
 
 		ret = wiz_div_clk_register(wiz, clk_node, wiz->div_sel_field[i],
 					   clk_div_sel[i].table);
 		if (ret) {
-			dev_err(dev, "Failed to register %s clock\n",
-				node_name);
+			dev_err_probe(dev, ret, "Failed to register %s clock\n",
+				      node_name);
 			of_node_put(clk_node);
 			goto err;
 		}

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
