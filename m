Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB34DC6FD1C
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 01:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0THYJcF78X4VRcFlqthNT1L8g5DjF0RdE+1WBffotI=; b=IKwYFZvqYBfaof
	3MVtJucliFjgj+EuJuwZtYFMbO/Q/HJcudCKdbJqMazB48kaMfSkPKdfJXkN+hw3+aGLkVFNRQyZ3
	imb0kUiPPr6Ol0HEtWSJvgx0DeccWLiy3qXJpUm7CeC2qmajoA1tUHI5QcLglDnETsmewwTu07NfU
	CQFVqDgojBUbPSYTqIejrBVZcDfQK8Ddzb16jn1zRFc9Hz9+zVzzOo+OwREbD7HHrJ0D6UL8eX5de
	qEfH5NhXj1/b7t1CTZUgHRlFeS9kI6DhX3fxd21hFaM3zr5SMI39zlOD2unI+uv17uw6VKp4TbtcT
	OgZcL8PZkeaodTMzW2bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEy2-007l6M-1E;
	Sun, 26 Mar 2023 01:14:42 +0000
Received: from www381.your-server.de ([78.46.137.84])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgExz-007l50-0q
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 01:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	s=default2002; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=mg9EekErE9XveQ6PZOs1wU+lrwBdT73rOZxN9nspQBo=; b=NNfPT8NBzUpdpNPNJIycl6fk9F
	8RfCFch+AfMAYYfFCx96pGvQYVtB5+gopvyi1PtXwNDLOxHyaUgQhlptjvrP5PAoHcSNPUsbMoiZj
	2jqoJ5z5IKV7l9jhPFY4Ss7S6RqwQga7+LiXa/JdSxdXKuXdvK1bwKOCg7SrPGQp6E0eRU/uGBQVH
	iLlanlhn9Yn/NHy6f8Z19CzGpLuiZldlU1rCoV/WTrlMiINR1g+8USi/hDTIyo9pjIrpSgjBcJGhm
	ZRC+xLnoWJAM9Rg89DJBEejUew0OyKDhQhrCNtj8qCv6bBTI5iCX+PWC7Wzv5r444zaxU/v7d6Ixe
	v25uTR/g==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lars@metafoo.de>)
	id 1pgExs-000Hk9-V0; Sun, 26 Mar 2023 03:14:32 +0200
Received: from [2604:5500:c0e5:eb00:da5e:d3ff:feff:933b] (helo=lars-desktop.lan)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1pgExs-000BcE-Er; Sun, 26 Mar 2023 03:14:32 +0200
From: Lars-Peter Clausen <lars@metafoo.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Swapnil Jakhade <sjakhade@cadence.com>,
	linux-phy@lists.infradead.org,
	Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH 2/2] phy: cadence: Sierra: Use clk_parent_data to provide parent information
Date: Sat, 25 Mar 2023 18:14:16 -0700
Message-Id: <20230326011416.363318-2-lars@metafoo.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326011416.363318-1-lars@metafoo.de>
References: <20230326011416.363318-1-lars@metafoo.de>
MIME-Version: 1.0
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.8/26854/Sat Mar 25 08:22:39 2023)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_181439_324783_781DC72D 
X-CRM114-Status: GOOD (  16.09  )
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

Rather than requesting the parent reference clocks for the sierra PHY PLLs
and then assigning the parents as a struct clk. Use the clk_parent_data
feature for the clock framework and only specify the firmware names of the
parent clocks.

The clock framework internally will then translate this to the actual
clocks. This allows to remove a bit of boilerplate code.

It also allows to only specify a single reference clock for both PLLs,
which is a valid use case. The clock framework can handle the case where
not all inputs for a clock mux are connected, while the custom
implementation in the driver could not.

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 57 +++++++-----------------
 1 file changed, 15 insertions(+), 42 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 05abce477ce5..ab0a37618ef3 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -206,13 +206,11 @@
 #define PLL_LOCK_TIME					100000
 
 #define CDNS_SIERRA_OUTPUT_CLOCKS			3
-#define CDNS_SIERRA_INPUT_CLOCKS			5
+#define CDNS_SIERRA_INPUT_CLOCKS			3
 enum cdns_sierra_clock_input {
 	PHY_CLK,
 	CMN_REFCLK_DIG_DIV,
 	CMN_REFCLK1_DIG_DIV,
-	PLL0_REFCLK,
-	PLL1_REFCLK,
 };
 
 #define SIERRA_NUM_CMN_PLLC				2
@@ -274,9 +272,18 @@ struct cdns_sierra_pll_mux {
 #define to_cdns_sierra_pll_mux(_hw)	\
 			container_of(_hw, struct cdns_sierra_pll_mux, hw)
 
-static const int pll_mux_parent_index[][SIERRA_NUM_CMN_PLLC_PARENTS] = {
-	[CMN_PLLLC] = { PLL0_REFCLK, PLL1_REFCLK },
-	[CMN_PLLLC1] = { PLL1_REFCLK, PLL0_REFCLK },
+#define PLL0_REFCLK_NAME "pll0_refclk"
+#define PLL1_REFCLK_NAME "pll1_refclk"
+
+static const struct clk_parent_data pll_mux_parent_data[][SIERRA_NUM_CMN_PLLC_PARENTS] = {
+	[CMN_PLLLC] = {
+		{ .fw_name = PLL0_REFCLK_NAME },
+		{ .fw_name = PLL1_REFCLK_NAME }
+	},
+	[CMN_PLLLC1] = {
+		{ .fw_name = PLL1_REFCLK_NAME },
+		{ .fw_name = PLL0_REFCLK_NAME }
+	},
 };
 
 static u32 cdns_sierra_pll_mux_table[][SIERRA_NUM_CMN_PLLC_PARENTS] = {
@@ -722,39 +729,21 @@ static int cdns_sierra_pll_mux_register(struct cdns_sierra_phy *sp,
 	struct cdns_sierra_pll_mux *mux;
 	struct device *dev = sp->dev;
 	struct clk_init_data *init;
-	const char **parent_names;
-	unsigned int num_parents;
 	char clk_name[100];
-	struct clk *clk;
 	int ret;
-	int i;
 
 	mux = devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
 	if (!mux)
 		return -ENOMEM;
 
-	num_parents = SIERRA_NUM_CMN_PLLC_PARENTS;
-	parent_names = devm_kzalloc(dev, (sizeof(char *) * num_parents), GFP_KERNEL);
-	if (!parent_names)
-		return -ENOMEM;
-
-	for (i = 0; i < num_parents; i++) {
-		clk = sp->input_clks[pll_mux_parent_index[clk_index][i]];
-		if (IS_ERR_OR_NULL(clk)) {
-			dev_err(dev, "No parent clock for PLL mux clocks\n");
-			return IS_ERR(clk) ? PTR_ERR(clk) : -ENOENT;
-		}
-		parent_names[i] = __clk_get_name(clk);
-	}
-
 	snprintf(clk_name, sizeof(clk_name), "%s_%s", dev_name(dev), clk_names[clk_index]);
 
 	init = &mux->clk_data;
 
 	init->ops = &cdns_sierra_pll_mux_ops;
 	init->flags = CLK_SET_RATE_NO_REPARENT;
-	init->parent_names = parent_names;
-	init->num_parents = num_parents;
+	init->parent_data = pll_mux_parent_data[clk_index];
+	init->num_parents = SIERRA_NUM_CMN_PLLC_PARENTS;
 	init->name = clk_name;
 
 	mux->pfdclk_sel_preg = pfdclk1_sel_field;
@@ -1151,22 +1140,6 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
 	}
 	sp->input_clks[CMN_REFCLK1_DIG_DIV] = clk;
 
-	clk = devm_clk_get_optional(dev, "pll0_refclk");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "pll0_refclk clock not found\n");
-		ret = PTR_ERR(clk);
-		return ret;
-	}
-	sp->input_clks[PLL0_REFCLK] = clk;
-
-	clk = devm_clk_get_optional(dev, "pll1_refclk");
-	if (IS_ERR(clk)) {
-		dev_err(dev, "pll1_refclk clock not found\n");
-		ret = PTR_ERR(clk);
-		return ret;
-	}
-	sp->input_clks[PLL1_REFCLK] = clk;
-
 	return 0;
 }
 
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
