Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C642C761AF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 01:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=glvRqU+uqP3z+sYMEFoglurVXgpeJ1l7wubOUD9Hxyo=; b=l0MF79J6GLdorR
	lRRUNtFc1ogeeExWGmSGdJRkhg4H3NmVSkyVmga6Gum2ifjheS/nBbLk5WYOENBFhv/PSzhXebA3f
	WDPohbxbKj/ePeLLYS/e5DM32hn1+g9txqBf6uytvVTRK9laK5lrf8PyIQNlexOGXE2q+hKUyr19v
	g+l5DSbz+PeZtBP9l9Ct+oqSPgvvNmSK3y18LActbEEz/dcf266o+t31/oMBkwE7X7SVHF1PmKZTl
	mTfB0qhqDwEjzPWjzgZLMslRi/RCBfXJbETLpMeIkaTADc1/QZwKXAY0daTwan6rrImccN/rBHo79
	F2LZfJ0OUL7VA2F2XlxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEy2-007l6U-24;
	Sun, 26 Mar 2023 01:14:42 +0000
Received: from www381.your-server.de ([78.46.137.84])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgExz-007l4t-0m
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 01:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	s=default2002; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=WHdZt1ShChGTqZV6/DSiqKPtMYXa/vu0JsrQSvFZ2uM=; b=cgfoSdC5JWQiqaUhJ+hJHQwfeH
	5FQ/k52uFZoy74XSjUChSFG63k6UIn6PEUqCny9NsoSM8hh0mh4ywdlNm93GfE62/P0tPdJg7hBZJ
	fjXyf2KgOo8MNN+WuNBuFCWCbroKNcKdRFP4cgnkcks+HzsPeZffEl1bz4BZMY3S/1/mQaX1Q7tG8
	oFenETcDZpZmCihwub+NsFYu4kEF41pEYMTFQhfOn+c7LABpZtT20uuBrOBV+sjOHfGs3znzXWcZU
	xSk6S5zwXJNSaugrCkxT/FhJBs1GFR0Y5lLbKZrLW/iliDlfHWpXwAth+7lceDDrAb0POR4l5x77s
	0Ea+Irjg==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lars@metafoo.de>)
	id 1pgExr-000Hjr-Gr; Sun, 26 Mar 2023 03:14:31 +0200
Received: from [2604:5500:c0e5:eb00:da5e:d3ff:feff:933b] (helo=lars-desktop.lan)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1pgExr-000BcE-1X; Sun, 26 Mar 2023 03:14:31 +0200
From: Lars-Peter Clausen <lars@metafoo.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Swapnil Jakhade <sjakhade@cadence.com>,
	linux-phy@lists.infradead.org,
	Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH 1/2] phy: cadence: Sierra: Replace `clk_register(`) with `clk_hw_register()`
Date: Sat, 25 Mar 2023 18:14:15 -0700
Message-Id: <20230326011416.363318-1-lars@metafoo.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.8/26854/Sat Mar 25 08:22:39 2023)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_181439_324950_A732436C 
X-CRM114-Status: GOOD (  13.18  )
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

The `devm_clk_register()` API is deprecated. Switch to
`devm_clk_hw_register()`.

Since the driver enables its own internal PLLs using the clock API we
still need to get a reference to the PLL clocks using the
`devm_clk_hw_get_clk()` API.

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 46 +++++++++++++-----------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 294d59b9eaed..05abce477ce5 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -371,8 +371,8 @@ struct cdns_sierra_phy {
 	u32 num_lanes;
 	bool autoconf;
 	int already_configured;
-	struct clk_onecell_data clk_data;
-	struct clk *output_clks[CDNS_SIERRA_OUTPUT_CLOCKS];
+	struct clk *pll_clks[SIERRA_NUM_CMN_PLLC];
+	struct clk_hw_onecell_data clk_data;
 };
 
 static int cdns_regmap_write(void *context, unsigned int reg, unsigned int val)
@@ -726,6 +726,7 @@ static int cdns_sierra_pll_mux_register(struct cdns_sierra_phy *sp,
 	unsigned int num_parents;
 	char clk_name[100];
 	struct clk *clk;
+	int ret;
 	int i;
 
 	mux = devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
@@ -761,11 +762,14 @@ static int cdns_sierra_pll_mux_register(struct cdns_sierra_phy *sp,
 	mux->termen_field = termen_field;
 	mux->hw.init = init;
 
-	clk = devm_clk_register(dev, &mux->hw);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+	ret = devm_clk_hw_register(dev, &mux->hw);
+	if (ret)
+		return ret;
+
+	sp->clk_data.hws[clk_index] = &mux->hw;
 
-	sp->output_clks[clk_index] = clk;
+	sp->pll_clks[clk_index] = devm_clk_hw_get_clk(dev, &mux->hw,
+						      clk_names[clk_index]);
 
 	return 0;
 }
@@ -838,7 +842,7 @@ static int cdns_sierra_derived_refclk_register(struct cdns_sierra_phy *sp)
 	struct clk_init_data *init;
 	struct regmap *regmap;
 	char clk_name[100];
-	struct clk *clk;
+	int ret;
 
 	derived_refclk = devm_kzalloc(dev, sizeof(*derived_refclk), GFP_KERNEL);
 	if (!derived_refclk)
@@ -871,11 +875,11 @@ static int cdns_sierra_derived_refclk_register(struct cdns_sierra_phy *sp)
 
 	derived_refclk->hw.init = init;
 
-	clk = devm_clk_register(dev, &derived_refclk->hw);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+	ret = devm_clk_hw_register(dev, &derived_refclk->hw);
+	if (ret)
+		return ret;
 
-	sp->output_clks[CDNS_SIERRA_DERIVED_REFCLK] = clk;
+	sp->clk_data.hws[CDNS_SIERRA_DERIVED_REFCLK] = &derived_refclk->hw;
 
 	return 0;
 }
@@ -906,9 +910,9 @@ static int cdns_sierra_clk_register(struct cdns_sierra_phy *sp)
 		return ret;
 	}
 
-	sp->clk_data.clks = sp->output_clks;
-	sp->clk_data.clk_num = CDNS_SIERRA_OUTPUT_CLOCKS;
-	ret = of_clk_add_provider(node, of_clk_src_onecell_get, &sp->clk_data);
+	sp->clk_data.num = CDNS_SIERRA_OUTPUT_CLOCKS;
+	ret = of_clk_add_hw_provider(node, of_clk_hw_onecell_get,
+				     &sp->clk_data);
 	if (ret)
 		dev_err(dev, "Failed to add clock provider: %s\n", node->name);
 
@@ -1190,26 +1194,26 @@ static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
 {
 	int ret;
 
-	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
+	ret = clk_prepare_enable(sp->pll_clks[CDNS_SIERRA_PLL_CMNLC]);
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
+	ret = clk_prepare_enable(sp->pll_clks[CDNS_SIERRA_PLL_CMNLC1]);
 	if (ret)
 		goto err_pll_cmnlc1;
 
 	return 0;
 
 err_pll_cmnlc1:
-	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
+	clk_disable_unprepare(sp->pll_clks[CDNS_SIERRA_PLL_CMNLC]);
 
 	return ret;
 }
 
 static void cdns_sierra_phy_disable_clocks(struct cdns_sierra_phy *sp)
 {
-	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
-	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
+	clk_disable_unprepare(sp->pll_clks[CDNS_SIERRA_PLL_CMNLC1]);
+	clk_disable_unprepare(sp->pll_clks[CDNS_SIERRA_PLL_CMNLC]);
 	if (!sp->already_configured)
 		clk_disable_unprepare(sp->input_clks[PHY_CLK]);
 }
@@ -1370,7 +1374,9 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	if (!data)
 		return -EINVAL;
 
-	sp = devm_kzalloc(dev, sizeof(*sp), GFP_KERNEL);
+	sp = devm_kzalloc(dev, struct_size(sp, clk_data.hws,
+					   CDNS_SIERRA_OUTPUT_CLOCKS),
+			  GFP_KERNEL);
 	if (!sp)
 		return -ENOMEM;
 	dev_set_drvdata(dev, sp);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
