Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27E95C54E4A
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUCoSg9f3HRAeL0HAxtoCZs0mJdvWG1maFKzDMqL4CY=; b=EY6wFWREQXzGOm
	icKOMOJwx5WsmHVXX3Cenvsq0dh8Fkh1W2Hfic614+hqxpOZZkCmB/caLi4cWLUkfCrLZADsDkphO
	2LeGXFADsPB/qVmKRaGr69HkgMs0rAASUgic8QE9uMOL707rFcj26hhclUZP8g+GCzmNsQYt0bwYY
	4nL71296Zy9vzLWA78GcTCoRwBpjuoyeIbLhCoGKgSATsMSU2NecvnwAN1XpzwEY21PjuanwtKbES
	2Cnh7HuJyygh4B7otHuyrLIwXJyevFETF3QvYFPbLA82xf/Tg9JghQ68s2qfxugD3qG9DwIvyRc/0
	Byb14f6qRZdkqYUcoRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMz-00000009csk-3L7x;
	Mon, 04 Mar 2024 15:36:49 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMY-00000009cS4-2VzD;
	Mon, 04 Mar 2024 15:36:25 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D52811BF20E;
	Mon,  4 Mar 2024 15:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9MU9XELe1rM5Qiqxbtkg8dW/yfnlPXWOR1yK6MM7gxg=;
	b=oXi19VKF5yDJqVZZ865hfvPY/iEeC1bAFreQVtJL0SApnx/uRhJ7RNklpOZYjjEA+5BSQa
	3wMtRucKkBiDFCiijlJfqBp2XS866d49WvtD3qtAiG6KHrIPXvP/UZmY/N5tzyfoKNfoH/
	HSc40iBTcFg6kQ2ZDy8lhjdQvN3reu2FuzP+i6WwX6+Bn/UfDs7fRnO517BH8mYJyian3z
	oIrpuRLcM4kuBujFJLg4NSxZdOBQ+KSRFMnrGoIDwVc0s9WszTijFN06rVUfuPY1KJyDwt
	yFV2QBNrddPjzDWGEmIE/lofQj85aNE0vOeywP1KfaI0ABAPIcTUQTDwo66JWA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:49 +0100
Subject: [PATCH v4 06/18] phy: ti: phy-j721e-wiz: use dev_err_probe()
 instead of dev_err()
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-6-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_073623_149328_12BA4FD0 
X-CRM114-Status: GOOD (  11.82  )
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
 drivers/phy/ti/phy-j721e-wiz.c | 46 +++++++++++++++++++-----------------------
 1 file changed, 21 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 00d7e6a6de03..5fea4df9404e 100644
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
@@ -1157,8 +1154,9 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	case J721S2_WIZ_10G:
 		ret = wiz_clock_register(wiz);
 		if (ret)
-			dev_err(dev, "Failed to register wiz clocks\n");
-		return ret;
+			return dev_err_probe(dev, ret, "Failed to register wiz clocks\n");
+
+		return 0;
 	default:
 		break;
 	}
@@ -1167,16 +1165,15 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 		node_name = clk_mux_sel[i].node_name;
 		clk_node = of_get_child_by_name(node, node_name);
 		if (!clk_node) {
-			dev_err(dev, "Unable to get %s node\n", node_name);
-			ret = -EINVAL;
+			ret = dev_err_probe(dev, -EINVAL, "Unable to get %s node\n", node_name);
 			goto err;
 		}
 
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
@@ -1188,16 +1185,15 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 		node_name = clk_div_sel[i].node_name;
 		clk_node = of_get_child_by_name(node, node_name);
 		if (!clk_node) {
-			dev_err(dev, "Unable to get %s node\n", node_name);
-			ret = -EINVAL;
+			ret = dev_err_probe(dev, -EINVAL, "Unable to get %s node\n", node_name);
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
