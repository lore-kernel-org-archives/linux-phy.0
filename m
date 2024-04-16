Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4534C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFLOBWCUQKljZBfUSVBiAbQGePT2SE1FpQ7Vg6/Bhns=; b=Gew1zEthHNdf+B
	BDrzeoVu3Upz2tL5tL9xysMlXaw2eLCUk5zTWuGz2Hlx10gOsyvmV5x0L0D17UPmcdMd2kIglG4P4
	qixXQXRR7P7qeqOfV8l82ht+2k007gggtJBse1DOu+Y0DyZZ5kPaGe9V6LU7If1JQGaXeT0+egQfz
	w0id5n5v9t8OnP+iVsqoerCzNNBEstpvD4mLxyNNFwr9t9XKVRaXN9jvUKLxFUy6NQfFMfdK3jfzx
	mJUpMgob6i6O+GkHnHIijB0v6sy/GvS0M3XKfK1vIXGkJTJNx2kSY9sPQ8WtFzjvgyurcjERq0dxw
	u1vuGZ302HtVdNOXHrJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJ5-0000000CC2u-1ieI;
	Tue, 16 Apr 2024 12:53:03 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJ2-0000000CC1r-3Olm
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:53:02 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id E46DF20010;
	Tue, 16 Apr 2024 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DkjYb/heaYMzCjQ4QnbfLecl4jtQfd543suxAgCkx34=;
	b=Q5ai+EHaCMUt1LHzoBzp0RKUivr1riPA7SfjAObRdy9sv11F78Z2/Z2uVARG4ibWFm6KJQ
	7T5qEbMlrPGdB72T8U8EXbDN5udTOluG2lVK4Ktfe19oq7QXEy5h4owMDTuh4+VYhBJYra
	PIjpAltwcL7hCxDyMCFp8w4v+2f6SWckxX6Cju1FAx4TXg7b5CLTkDeWFp4f/YdmPgpKW7
	xpNBzNNwi6/YTERptsBBLBsRXcSVL2s/P1wIcGWxIv9dLPR8fZqKRwS5TXE8SAJSNzV2A0
	EzicZT71cPUzCyffhAgC9oH6el92omZVuB9HCFgZt8MVsFN6V7SrQ4gbGHL0AQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:31 +0200
Subject: [PATCH 2/8] phy: ti: phy-j721e-wiz: split wiz_clock_init()
 function
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-2-f15815833974@bootlin.com>
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
X-CRM114-CacheID: sfid-20240416_055301_161658_FD109DBE 
X-CRM114-Status: GOOD (  13.65  )
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
 drivers/phy/ti/phy-j721e-wiz.c | 66 +++++++++++++++++++++++-------------------
 1 file changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 5fea4df9404e..ba670109e7ad 100644
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
@@ -1119,6 +1105,38 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 		break;
 	}
 
+	if (wiz->input_clks[WIZ_CORE_REFCLK1]) {
+		rate = clk_get_rate(wiz->input_clks[WIZ_CORE_REFCLK1]);
+		if (rate >= REF_CLK_100MHZ)
+			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x1);
+		else
+			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x3);
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
@@ -1126,12 +1144,6 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
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
@@ -1141,11 +1153,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 
 	wiz->input_clks[WIZ_EXT_REFCLK] = clk;
 
-	rate = clk_get_rate(clk);
-	if (rate >= 100000000)
-		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
-	else
-		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
+	wiz_clock_init(wiz);
 
 	switch (wiz->type) {
 	case AM64_WIZ_10G:
@@ -1589,7 +1597,7 @@ static int wiz_probe(struct platform_device *pdev)
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
