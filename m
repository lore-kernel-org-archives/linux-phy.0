Return-Path: <SRS0=RVtz=HZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E628C43381
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7341F64E6C
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7341F64E6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r4WU9x/JoqhyFQjyDjgq5K/sZi++rsfcYRb6a0jKA0s=; b=ktUEVpU2oxU31qSIpQfpzmYCU
	VhOcsAKN4Fje+1sXSBGDPOlzhYFZjKG1dxBgxt4KNYYEdd7JwrQIr3vHDDbmGNRY1DKAfGrXWVk+R
	x1/WPNoipVk+iuuPNS2uOWgnQvN3mkSXPEOOmTQkS6RLp1CMsvvuYyIAWu03rimpCKjm5KRYyjJZD
	2gP3aQb7cAQC08RQi0IKB7O7eqH9ldRkPYVso/1Iz/SBJzUHMR3GHB2jkg9wqxvoHTbx9rQ/EUb3A
	u646J9ziMCL/AHgCZBSM7C2cEKrO1UTW3PueuRvUUxgWctLqmKSG3TjYre97edCFrv6SBRcPfNx8Z
	c34YXhseg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEOrW-0005Cl-Bm; Tue, 23 Feb 2021 03:59:50 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE9Jj-0004uS-BA
 for linux-phy@lists.infradead.org; Mon, 22 Feb 2021 11:23:57 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNkLd035103;
 Mon, 22 Feb 2021 05:23:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613993026;
 bh=39hNbAw+ycSkXxD4ycWFRqe28fzItNms9UDyjMiFxdw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=O/Tb326P2NRhMT2U5HBUUEdR5cvv783Tc8//+f2BE/u9FP3U5AtsixLCUM8h4dzWr
 7rRILg7+2s6dObujQnSr+aiKpYVWnHhzdGLlxK2yyWKxyoysqwZkUYGX5rzJaM/DD5
 GEPR1/XKFcB6f8sgmlRLH7yaWoShxKxuaaUTEAEk=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11MBNkxA050326
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Feb 2021 05:23:46 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 22
 Feb 2021 05:23:46 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 22 Feb 2021 05:23:46 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNFDd088010;
 Mon, 22 Feb 2021 05:23:43 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>
Subject: [PATCH v2 4/9] phy: ti: j721e-wiz: Remove "regmap_field" from
 wiz_clk_{mux|div}_sel
Date: Mon, 22 Feb 2021 16:53:09 +0530
Message-ID: <20210222112314.10772-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222112314.10772-1-kishon@ti.com>
References: <20210222112314.10772-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_062356_370197_D5F39219 
X-CRM114-Status: GOOD (  16.13  )
X-Mailman-Approved-At: Mon, 22 Feb 2021 22:59:48 -0500
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Both "struct wiz_clk_div_sel" and "struct wiz_clk_mux_sel" are static
data that is common for all wiz instances. Including
"struct regmap_field" for each of the wiz instances can yield undesirable
results. Move "struct regmap_field" out of "struct wiz_clk_div_sel" and
"struct wiz_clk_mux_sel" and make them point to constant data.

So far no issues are observed since both these structures are not
accessed outside the probe.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 75 +++++++++++++++-------------------
 1 file changed, 34 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index c9cfafe89cbf..956a93d96d9b 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -107,7 +107,7 @@ static const struct reg_field typec_ln10_swap =
 struct wiz_clk_mux {
 	struct clk_hw		hw;
 	struct regmap_field	*field;
-	u32			*table;
+	const u32		*table;
 	struct clk_init_data	clk_data;
 };
 
@@ -123,18 +123,16 @@ struct wiz_clk_divider {
 #define to_wiz_clk_div(_hw) container_of(_hw, struct wiz_clk_divider, hw)
 
 struct wiz_clk_mux_sel {
-	struct regmap_field	*field;
 	u32			table[4];
 	const char		*node_name;
 };
 
 struct wiz_clk_div_sel {
-	struct regmap_field	*field;
-	const struct clk_div_table	*table;
+	const struct clk_div_table *table;
 	const char		*node_name;
 };
 
-static struct wiz_clk_mux_sel clk_mux_sel_16g[] = {
+static const struct wiz_clk_mux_sel clk_mux_sel_16g[] = {
 	{
 		/*
 		 * Mux value to be configured for each of the input clocks
@@ -153,7 +151,7 @@ static struct wiz_clk_mux_sel clk_mux_sel_16g[] = {
 	},
 };
 
-static struct wiz_clk_mux_sel clk_mux_sel_10g[] = {
+static const struct wiz_clk_mux_sel clk_mux_sel_10g[] = {
 	{
 		/*
 		 * Mux value to be configured for each of the input clocks
@@ -179,7 +177,7 @@ static const struct clk_div_table clk_div_table[] = {
 	{ .val = 3, .div = 8, },
 };
 
-static struct wiz_clk_div_sel clk_div_sel[] = {
+static const struct wiz_clk_div_sel clk_div_sel[] = {
 	{
 		.table = clk_div_table,
 		.node_name = "cmn-refclk-dig-div",
@@ -201,8 +199,8 @@ enum wiz_type {
 struct wiz {
 	struct regmap		*regmap;
 	enum wiz_type		type;
-	struct wiz_clk_mux_sel	*clk_mux_sel;
-	struct wiz_clk_div_sel	*clk_div_sel;
+	const struct wiz_clk_mux_sel *clk_mux_sel;
+	const struct wiz_clk_div_sel *clk_div_sel;
 	unsigned int		clk_div_sel_num;
 	struct regmap_field	*por_en;
 	struct regmap_field	*phy_reset_n;
@@ -214,6 +212,8 @@ struct wiz {
 	struct regmap_field	*pma_cmn_refclk_mode;
 	struct regmap_field	*pma_cmn_refclk_dig_div;
 	struct regmap_field	*pma_cmn_refclk1_dig_div;
+	struct regmap_field	*mux_sel_field[WIZ_MUX_NUM_CLOCKS];
+	struct regmap_field	*div_sel_field[WIZ_DIV_NUM_CLOCKS_16G];
 	struct regmap_field	*typec_ln10_swap;
 
 	struct device		*dev;
@@ -310,8 +310,6 @@ static int wiz_init(struct wiz *wiz)
 
 static int wiz_regfield_init(struct wiz *wiz)
 {
-	struct wiz_clk_mux_sel *clk_mux_sel;
-	struct wiz_clk_div_sel *clk_div_sel;
 	struct regmap *regmap = wiz->regmap;
 	int num_lanes = wiz->num_lanes;
 	struct device *dev = wiz->dev;
@@ -344,54 +342,49 @@ static int wiz_regfield_init(struct wiz *wiz)
 		return PTR_ERR(wiz->pma_cmn_refclk_mode);
 	}
 
-	clk_div_sel = &wiz->clk_div_sel[CMN_REFCLK_DIG_DIV];
-	clk_div_sel->field = devm_regmap_field_alloc(dev, regmap,
-						     pma_cmn_refclk_dig_div);
-	if (IS_ERR(clk_div_sel->field)) {
+	wiz->div_sel_field[CMN_REFCLK_DIG_DIV] =
+		devm_regmap_field_alloc(dev, regmap, pma_cmn_refclk_dig_div);
+	if (IS_ERR(wiz->div_sel_field[CMN_REFCLK_DIG_DIV])) {
 		dev_err(dev, "PMA_CMN_REFCLK_DIG_DIV reg field init failed\n");
-		return PTR_ERR(clk_div_sel->field);
+		return PTR_ERR(wiz->div_sel_field[CMN_REFCLK_DIG_DIV]);
 	}
 
 	if (wiz->type == J721E_WIZ_16G) {
-		clk_div_sel = &wiz->clk_div_sel[CMN_REFCLK1_DIG_DIV];
-		clk_div_sel->field =
+		wiz->div_sel_field[CMN_REFCLK1_DIG_DIV] =
 			devm_regmap_field_alloc(dev, regmap,
 						pma_cmn_refclk1_dig_div);
-		if (IS_ERR(clk_div_sel->field)) {
+		if (IS_ERR(wiz->div_sel_field[CMN_REFCLK1_DIG_DIV])) {
 			dev_err(dev, "PMA_CMN_REFCLK1_DIG_DIV reg field init failed\n");
-			return PTR_ERR(clk_div_sel->field);
+			return PTR_ERR(wiz->div_sel_field[CMN_REFCLK1_DIG_DIV]);
 		}
 	}
 
-	clk_mux_sel = &wiz->clk_mux_sel[PLL0_REFCLK];
-	clk_mux_sel->field = devm_regmap_field_alloc(dev, regmap,
-						     pll0_refclk_mux_sel);
-	if (IS_ERR(clk_mux_sel->field)) {
+	wiz->mux_sel_field[PLL0_REFCLK] =
+		devm_regmap_field_alloc(dev, regmap, pll0_refclk_mux_sel);
+	if (IS_ERR(wiz->mux_sel_field[PLL0_REFCLK])) {
 		dev_err(dev, "PLL0_REFCLK_SEL reg field init failed\n");
-		return PTR_ERR(clk_mux_sel->field);
+		return PTR_ERR(wiz->mux_sel_field[PLL0_REFCLK]);
 	}
 
-	clk_mux_sel = &wiz->clk_mux_sel[PLL1_REFCLK];
-	clk_mux_sel->field = devm_regmap_field_alloc(dev, regmap,
-						     pll1_refclk_mux_sel);
-	if (IS_ERR(clk_mux_sel->field)) {
+	wiz->mux_sel_field[PLL1_REFCLK] =
+		devm_regmap_field_alloc(dev, regmap, pll1_refclk_mux_sel);
+	if (IS_ERR(wiz->mux_sel_field[PLL1_REFCLK])) {
 		dev_err(dev, "PLL1_REFCLK_SEL reg field init failed\n");
-		return PTR_ERR(clk_mux_sel->field);
+		return PTR_ERR(wiz->mux_sel_field[PLL1_REFCLK]);
 	}
 
-	clk_mux_sel = &wiz->clk_mux_sel[REFCLK_DIG];
 	if (wiz->type == J721E_WIZ_10G)
-		clk_mux_sel->field =
+		wiz->mux_sel_field[REFCLK_DIG] =
 			devm_regmap_field_alloc(dev, regmap,
 						refclk_dig_sel_10g);
 	else
-		clk_mux_sel->field =
+		wiz->mux_sel_field[REFCLK_DIG] =
 			devm_regmap_field_alloc(dev, regmap,
 						refclk_dig_sel_16g);
 
-	if (IS_ERR(clk_mux_sel->field)) {
+	if (IS_ERR(wiz->mux_sel_field[REFCLK_DIG])) {
 		dev_err(dev, "REFCLK_DIG_SEL reg field init failed\n");
-		return PTR_ERR(clk_mux_sel->field);
+		return PTR_ERR(wiz->mux_sel_field[REFCLK_DIG]);
 	}
 
 	for (i = 0; i < num_lanes; i++) {
@@ -443,7 +436,7 @@ static u8 wiz_clk_mux_get_parent(struct clk_hw *hw)
 	unsigned int val;
 
 	regmap_field_read(field, &val);
-	return clk_mux_val_to_index(hw, mux->table, 0, val);
+	return clk_mux_val_to_index(hw, (u32 *)mux->table, 0, val);
 }
 
 static int wiz_clk_mux_set_parent(struct clk_hw *hw, u8 index)
@@ -462,7 +455,7 @@ static const struct clk_ops wiz_clk_mux_ops = {
 };
 
 static int wiz_mux_clk_register(struct wiz *wiz, struct device_node *node,
-				struct regmap_field *field, u32 *table)
+				struct regmap_field *field, const u32 *table)
 {
 	struct device *dev = wiz->dev;
 	struct clk_init_data *init;
@@ -606,7 +599,7 @@ static int wiz_div_clk_register(struct wiz *wiz, struct device_node *node,
 
 static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 {
-	struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
+	const struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
 	struct device_node *clk_node;
 	int i;
 
@@ -619,7 +612,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 
 static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 {
-	struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
+	const struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
 	struct device *dev = wiz->dev;
 	struct device_node *clk_node;
 	const char *node_name;
@@ -663,7 +656,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 			goto err;
 		}
 
-		ret = wiz_mux_clk_register(wiz, clk_node, clk_mux_sel[i].field,
+		ret = wiz_mux_clk_register(wiz, clk_node, wiz->mux_sel_field[i],
 					   clk_mux_sel[i].table);
 		if (ret) {
 			dev_err(dev, "Failed to register %s clock\n",
@@ -684,7 +677,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 			goto err;
 		}
 
-		ret = wiz_div_clk_register(wiz, clk_node, clk_div_sel[i].field,
+		ret = wiz_div_clk_register(wiz, clk_node, wiz->div_sel_field[i],
 					   clk_div_sel[i].table);
 		if (ret) {
 			dev_err(dev, "Failed to register %s clock\n",
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
