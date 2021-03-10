Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 167FEC433E0
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:09:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AB6264FE7
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:09:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6AB6264FE7
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r4WU9x/JoqhyFQjyDjgq5K/sZi++rsfcYRb6a0jKA0s=; b=UPQv1BeVHtBmB/L/Z6po8v3kq
	Wim5k1/s3jv9w8o/ECycWiFYKp7VUBFKsjqiTYNzyqE2YFduIzTQwk6L3sE+yoJAfp+0xrVIV89eV
	HtR3/FvunPETt2BAO5xF9ovm8qwqxL0icbvcLvPGjJotAAMXZxD1iuOuteRRmlLCMP9xei5bswNws
	QDLqNvRDLHAhIxzzUa0cYzLL3Y09rojBWay1qrbujjZvmJPB2aBdR/w/z2mBodVGOqx+wNrG3V4Fi
	B4Mz+J8RYiWAtURdW7544pz2zT1o8SCQE/OmGMf8sw+zPxLoc79EyWcU5f/KO5arp57QJLuqHpDYS
	oHBq4Mxaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJxe7-006n23-NF; Wed, 10 Mar 2021 12:08:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJxe1-006n1B-7L
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 12:08:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8o3P031712;
 Wed, 10 Mar 2021 06:08:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615378130;
 bh=39hNbAw+ycSkXxD4ycWFRqe28fzItNms9UDyjMiFxdw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xROJvfVJ35qrVTAGpKTfKxBRivgXxK4cjxQ+zCQF+juD+BIZbfse3WdNpaSgjNkWU
 FdcDZWqbcm0QtNvdzRMaWC3ixqNdu2bnsutiI2fiuUyRiVmRFwJzU0SyCTPYPc6Rah
 b6nx+MBXtEmW0FdrXdefW1hQpeHlZpqRl+dudkbQ=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AC8ok0038926
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 06:08:50 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 06:08:49 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 06:08:49 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8ghc017368;
 Wed, 10 Mar 2021 06:08:46 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Lokesh
 Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 1/6] phy: ti: j721e-wiz: Remove "regmap_field" from
 wiz_clk_{mux|div}_sel
Date: Wed, 10 Mar 2021 17:38:35 +0530
Message-ID: <20210310120840.16447-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310120840.16447-1-kishon@ti.com>
References: <20210310120840.16447-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_120853_723895_2ECF59ED 
X-CRM114-Status: GOOD (  16.74  )
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
