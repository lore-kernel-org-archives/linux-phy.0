Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AAD1C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUCoSg9f3HRAeL0HAxtoCZs0mJdvWG1maFKzDMqL4CY=; b=AulWCeMuTk+4RF
	tUCBmzwt/CvW/Si3Oew4S4+tSGzr8VWPMxQ3qr3grc2OEXibkRJprOFs89pT9vN1T/YAu8hl6HUni
	LxRa0BjgXx8cTkUi3Gi9F+oU+HY9YZ7kQBfXJto10fhvuGYVIvBfY3CWo7lCdcxJng3GhuV4QBYNH
	MulyCsefqpkG60sfKyqdw2kF+AdByvncC+hZdWkxOE4n8OoaF98jSN+qZXs2YSgs/O3A5neQY+CSM
	kHoZDaZdEBANqGgwrkxXSMUIp8UMNm+7dtbsVvl/BlO994S6igxukaLnY2BJOfr1LFEvIZ4td0SFI
	ZLWRdpx0XwJYpFdI+CTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJ1-0000000CC1s-2O8L;
	Tue, 16 Apr 2024 12:52:59 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiIy-0000000CC16-2cpF
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:52:58 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 26AC020009;
	Tue, 16 Apr 2024 12:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271973;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9MU9XELe1rM5Qiqxbtkg8dW/yfnlPXWOR1yK6MM7gxg=;
	b=WLbBzn5gy3ph07VsIR980IaL+R79W7fITyjAVQdORLdCv59T3lKm2bJ//bK+PZLVmHSuU4
	3bybP5lxjM52va46BJHwEI1GW8jaxeKX7+5fY/2XQgS/3qN8TbJlNfy3K43HM4q0t3/fzk
	EVZn9UMeKFnxAk/NjWQ9IgDvT0ppobvVOQIa23gLu08aW2nyoeR0zqOFtNAxPaIhxtGvWy
	IVAu6QhHDfpQF2qQq6w4FeCL8W/mpvBJbRiIiLtylHfxj10FcEcNQ9BK2UvPT7QqHXt95r
	kVIeex45iiRJd6lL43bwUUyGbZnbAATIq4BwWmNM41qlrjQTukj2O2mag8Z9CA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:30 +0200
Subject: [PATCH 1/8] phy: ti: phy-j721e-wiz: use dev_err_probe() instead of
 dev_err()
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-1-f15815833974@bootlin.com>
References: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
In-Reply-To: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
 thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_055256_966196_8DFCAD6C 
X-CRM114-Status: GOOD (  10.27  )
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
