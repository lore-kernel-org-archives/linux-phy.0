Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97414C43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCO+YicP4dtxbS/XTqeS4MWaz0Y8ItTLhA1Fbco+Zas=; b=pw7GdJBxEyq+tj
	DXzllzPnkb+ugpTzoU8/GEWzJPeAGC7s779pzsbm/m+bISCfMmDaEOiXoOdqG1QoxcsBLUhMVVddy
	qXaXnq2VkSHcZmYZzK4+PVEZOQwHq98+VujJRGCfQsd9jnmp89F134dZnJqncM9Ab4VogS8iFStWm
	HAJMUTe0FI8BKUPt5k04oI+EYRUBe+ZnBF5g31SohNafauwZR10+KgMmgViAjxhRpAD17CrIWaX2B
	UMo+4AsEfLuXVp+LDkyjGvLNCmx1pi1kE0RC/loFSkKuUks1dsAqOabsDKNYGRCWYddNARWWNZyXU
	cTcbdhZvqXP4JWmIzB+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFZ-0069cK-Uz; Tue, 28 Jun 2022 12:23:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFW-0069ZX-Jz
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4839EB81E06;
	Tue, 28 Jun 2022 12:23:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0516CC341CF;
	Tue, 28 Jun 2022 12:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656418999;
	bh=1V8MXkUgNi2dcarHxNrHOzzjdAUMNaQOkHe4RSHwLdE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Amuzenp5fcgyTfrovE+uSCAOii+Rs7Qv7Lq3/mE/7CYVxIvODoc1UZjkPtSXL85A6
	 Gy/zJhBflTXxNN7ruQUVRD31IlK5R4Ahi30scRUZmZ/clkjGQqOyGZO8ptFb1Pdat1
	 G4DovSYjlHjW72EGPn6r8ZuyL7/apGo2edAGvfvFfVgOVuIOCKiYQL6sKiDjFjwh6b
	 eDcu6gV8muOJSutU7wI+szP3gxJfiNBl5c7ynFL3Sh/FS4795lw2j+vKMQpr/WG9n1
	 twluTyfRRl+yiNbbxnqlJ7iNsl29GXJg8JBJA9I6jOqPyCgSp5IJyMOfAdEmWwUeMk
	 ScWI3Xwj3pZFA==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 3/7] phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver
Date: Tue, 28 Jun 2022 15:22:51 +0300
Message-Id: <20220628122255.24265-4-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052322_986738_10A54D94 
X-CRM114-Status: GOOD (  14.61  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Tanmay Patil <t-patil@ti.com>

Changes the wiz_p_mac_div_sel() and wiz_mode_select() to
configure serdes for USXGMII.

Adds the support to configure mac_src_sel, refclk_sel and
rxfclk_sel in the LANECTL register and configures the serdes for
usxgmii.

[rogerq] Fix MAC_SRC_SEL to 0x3 for USXGMII as per CSL code.

Signed-off-by: Tanmay Patil <t-patil@ti.com>
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/phy/ti/phy-j721e-wiz.c | 51 +++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 8c10ee8e2707..77accea6ec2f 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -129,6 +129,26 @@ static const struct reg_field p0_fullrt_div[WIZ_MAX_LANES] = {
 	REG_FIELD(WIZ_LANECTL(3), 22, 23),
 };
 
+static const struct reg_field p0_mac_src_sel[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 20, 21),
+	REG_FIELD(WIZ_LANECTL(1), 20, 21),
+	REG_FIELD(WIZ_LANECTL(2), 20, 21),
+	REG_FIELD(WIZ_LANECTL(3), 20, 21),
+};
+
+static const struct reg_field p0_rxfclk_sel[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 6, 7),
+	REG_FIELD(WIZ_LANECTL(1), 6, 7),
+	REG_FIELD(WIZ_LANECTL(2), 6, 7),
+	REG_FIELD(WIZ_LANECTL(3), 6, 7),
+};
+
+static const struct reg_field p0_refclk_sel[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 18, 19),
+	REG_FIELD(WIZ_LANECTL(1), 18, 19),
+	REG_FIELD(WIZ_LANECTL(2), 18, 19),
+	REG_FIELD(WIZ_LANECTL(3), 18, 19),
+};
 static const struct reg_field p_mac_div_sel0[WIZ_MAX_LANES] = {
 	REG_FIELD(WIZ_LANEDIV(0), 16, 22),
 	REG_FIELD(WIZ_LANEDIV(1), 16, 22),
@@ -280,6 +300,9 @@ struct wiz {
 	struct regmap_field	*p_mac_div_sel0[WIZ_MAX_LANES];
 	struct regmap_field	*p_mac_div_sel1[WIZ_MAX_LANES];
 	struct regmap_field	*p0_fullrt_div[WIZ_MAX_LANES];
+	struct regmap_field	*p0_mac_src_sel[WIZ_MAX_LANES];
+	struct regmap_field	*p0_rxfclk_sel[WIZ_MAX_LANES];
+	struct regmap_field	*p0_refclk_sel[WIZ_MAX_LANES];
 	struct regmap_field	*pma_cmn_refclk_int_mode;
 	struct regmap_field	*pma_cmn_refclk_mode;
 	struct regmap_field	*pma_cmn_refclk_dig_div;
@@ -326,7 +349,8 @@ static int wiz_p_mac_div_sel(struct wiz *wiz)
 
 	for (i = 0; i < num_lanes; i++) {
 		if (wiz->lane_phy_type[i] == PHY_TYPE_SGMII ||
-		    wiz->lane_phy_type[i] == PHY_TYPE_QSGMII) {
+		    wiz->lane_phy_type[i] == PHY_TYPE_QSGMII ||
+		    wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
 			ret = regmap_field_write(wiz->p_mac_div_sel0[i], 1);
 			if (ret)
 				return ret;
@@ -355,6 +379,13 @@ static int wiz_mode_select(struct wiz *wiz)
 		else
 			continue;
 
+		if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
+			ret = regmap_field_write(wiz->p0_mac_src_sel[i], 0x3);
+			ret = regmap_field_write(wiz->p0_rxfclk_sel[i], 0x3);
+			ret = regmap_field_write(wiz->p0_refclk_sel[i], 0x3);
+			mode = LANE_MODE_GEN1;
+		}
+
 		ret = regmap_field_write(wiz->p_standard_mode[i], mode);
 		if (ret)
 			return ret;
@@ -524,6 +555,24 @@ static int wiz_regfield_init(struct wiz *wiz)
 			return PTR_ERR(wiz->p0_fullrt_div[i]);
 		}
 
+		wiz->p0_mac_src_sel[i] = devm_regmap_field_alloc(dev, regmap, p0_mac_src_sel[i]);
+		if (IS_ERR(wiz->p0_mac_src_sel[i])) {
+			dev_err(dev, "P%d_MAC_SRC_SEL reg field init failed\n", i);
+			return PTR_ERR(wiz->p0_mac_src_sel[i]);
+		}
+
+		wiz->p0_rxfclk_sel[i] = devm_regmap_field_alloc(dev, regmap, p0_rxfclk_sel[i]);
+		if (IS_ERR(wiz->p0_rxfclk_sel[i])) {
+			dev_err(dev, "P%d_RXFCLK_SEL reg field init failed\n", i);
+			return PTR_ERR(wiz->p0_rxfclk_sel[i]);
+		}
+
+		wiz->p0_refclk_sel[i] = devm_regmap_field_alloc(dev, regmap, p0_refclk_sel[i]);
+		if (IS_ERR(wiz->p0_refclk_sel[i])) {
+			dev_err(dev, "P%d_REFCLK_SEL reg field init failed\n", i);
+			return PTR_ERR(wiz->p0_refclk_sel[i]);
+		}
+
 		wiz->p_mac_div_sel0[i] =
 		  devm_regmap_field_alloc(dev, regmap, p_mac_div_sel0[i]);
 		if (IS_ERR(wiz->p_mac_div_sel0[i])) {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
