Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E70C433E0
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:09:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6353864FE5
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 12:09:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6353864FE5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VkGLXa/07e5L9hIcEtp1yBRyE9ctxzuXLKwQVR7Wh5c=; b=QDDHHzg3LgTIZluhG7/CNFE1z
	8pc7HJPhVUiaRpTi+YqwYaJ7CbjjXzP+tcL6fnRz2r7/Jtn3ooa/N3KGjziLRPoIPT7z59BLvQd15
	OLRoB/Ic3/ewCBhKmlIuGKEkR5lowQUnIcq9/1boTuKARmuX86sQ+G3mzhup9lo74miDUZPVwtaLq
	ZU8BquOb7nmR8VoS/xdHZf7lLdk53XUdycedmnJ/yu+6ERAG2e9dPPZa+r0IOM3Xpb05MKn7FKMOy
	ubG1LF5DwViXzoUf/H6m9mklVXJUqYf/OYGH+VSF6YmdywEI6PYkCFE/LWroqG9XHiKcu81rJW7pZ
	u3ItiSECQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJxeJ-006n5X-Hg; Wed, 10 Mar 2021 12:09:11 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJxeD-006n3J-QQ
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 12:09:08 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AC92Dd031743;
 Wed, 10 Mar 2021 06:09:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615378142;
 bh=LgqkTSE9IpV02yTf8dTUWnXAEbh5vkZeANTOvYgN90s=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=C4uf2UIUj9lv0CWWl/O6jZeAFM9c8wf4VqgwKqHbsRzbIbfpi1YWEKt45ZUPVeHLh
 unQUJZ4OGWtJd5py2tmIrPrPUJss4SN/zruTtLVGqs1W4s6m+FWYcJK18gUPIVKKFg
 7KgFyQYKPkKXukDJZlc64TsbJL/rkUA5Qe/xJkKw=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AC92Xf039154
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 06:09:02 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 06:09:01 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 06:09:01 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AC8ghg017368;
 Wed, 10 Mar 2021 06:08:59 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, Lokesh
 Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 5/6] phy: ti: j721e-wiz: Enable reference clock output in
 cmn_refclk_<p/m>
Date: Wed, 10 Mar 2021 17:38:39 +0530
Message-ID: <20210310120840.16447-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310120840.16447-1-kishon@ti.com>
References: <20210310120840.16447-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_120906_534667_DE1109E5 
X-CRM114-Status: GOOD (  13.88  )
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

cmn_refclk_<p/m> lines in Torrent SERDES is used for connecting external
reference clock. cmn_refclk_<p/m> can also be configured to output the
reference clock. In order to drive the refclk out from the SERDES
(Cadence Torrent), PHY_EN_REFCLK should be set in SERDES_RST of WIZ.
Model PHY_EN_REFCLK as a clock, so that platforms like AM642 EVM can
enable it.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 89 ++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index f9299dcdbdb7..03896240a5d5 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -66,6 +66,7 @@ enum wiz_clock_input {
 
 static const struct reg_field por_en = REG_FIELD(WIZ_SERDES_CTRL, 31, 31);
 static const struct reg_field phy_reset_n = REG_FIELD(WIZ_SERDES_RST, 31, 31);
+static const struct reg_field phy_en_refclk = REG_FIELD(WIZ_SERDES_RST, 30, 30);
 static const struct reg_field pll1_refclk_mux_sel =
 					REG_FIELD(WIZ_SERDES_RST, 29, 29);
 static const struct reg_field pll0_refclk_mux_sel =
@@ -86,6 +87,7 @@ static const char * const output_clk_names[] = {
 	[TI_WIZ_PLL0_REFCLK] = "pll0-refclk",
 	[TI_WIZ_PLL1_REFCLK] = "pll1-refclk",
 	[TI_WIZ_REFCLK_DIG] = "refclk-dig",
+	[TI_WIZ_PHY_EN_REFCLK] = "phy-en-refclk",
 };
 
 static const struct reg_field p_enable[WIZ_MAX_LANES] = {
@@ -158,6 +160,14 @@ struct wiz_clk_div_sel {
 	const char		*node_name;
 };
 
+struct wiz_phy_en_refclk {
+	struct clk_hw		hw;
+	struct regmap_field	*phy_en_refclk;
+	struct clk_init_data	clk_data;
+};
+
+#define to_wiz_phy_en_refclk(_hw) container_of(_hw, struct wiz_phy_en_refclk, hw)
+
 static const struct wiz_clk_mux_sel clk_mux_sel_16g[] = {
 	{
 		/*
@@ -237,6 +247,7 @@ struct wiz {
 	unsigned int		clk_div_sel_num;
 	struct regmap_field	*por_en;
 	struct regmap_field	*phy_reset_n;
+	struct regmap_field	*phy_en_refclk;
 	struct regmap_field	*p_enable[WIZ_MAX_LANES];
 	struct regmap_field	*p_align[WIZ_MAX_LANES];
 	struct regmap_field	*p_raw_auto_start[WIZ_MAX_LANES];
@@ -469,6 +480,76 @@ static int wiz_regfield_init(struct wiz *wiz)
 		return PTR_ERR(wiz->typec_ln10_swap);
 	}
 
+	wiz->phy_en_refclk = devm_regmap_field_alloc(dev, regmap, phy_en_refclk);
+	if (IS_ERR(wiz->phy_en_refclk)) {
+		dev_err(dev, "PHY_EN_REFCLK reg field init failed\n");
+		return PTR_ERR(wiz->phy_en_refclk);
+	}
+
+	return 0;
+}
+
+static int wiz_phy_en_refclk_enable(struct clk_hw *hw)
+{
+	struct wiz_phy_en_refclk *wiz_phy_en_refclk = to_wiz_phy_en_refclk(hw);
+	struct regmap_field *phy_en_refclk = wiz_phy_en_refclk->phy_en_refclk;
+
+	regmap_field_write(phy_en_refclk, 1);
+
+	return 0;
+}
+
+static void wiz_phy_en_refclk_disable(struct clk_hw *hw)
+{
+	struct wiz_phy_en_refclk *wiz_phy_en_refclk = to_wiz_phy_en_refclk(hw);
+	struct regmap_field *phy_en_refclk = wiz_phy_en_refclk->phy_en_refclk;
+
+	regmap_field_write(phy_en_refclk, 0);
+}
+
+static int wiz_phy_en_refclk_is_enabled(struct clk_hw *hw)
+{
+	struct wiz_phy_en_refclk *wiz_phy_en_refclk = to_wiz_phy_en_refclk(hw);
+	struct regmap_field *phy_en_refclk = wiz_phy_en_refclk->phy_en_refclk;
+	int val;
+
+	regmap_field_read(phy_en_refclk, &val);
+
+	return !!val;
+}
+
+static const struct clk_ops wiz_phy_en_refclk_ops = {
+	.enable = wiz_phy_en_refclk_enable,
+	.disable = wiz_phy_en_refclk_disable,
+	.is_enabled = wiz_phy_en_refclk_is_enabled,
+};
+
+static int wiz_phy_en_refclk_register(struct wiz *wiz)
+{
+	struct wiz_phy_en_refclk *wiz_phy_en_refclk;
+	struct device *dev = wiz->dev;
+	struct clk_init_data *init;
+	struct clk *clk;
+
+	wiz_phy_en_refclk = devm_kzalloc(dev, sizeof(*wiz_phy_en_refclk), GFP_KERNEL);
+	if (!wiz_phy_en_refclk)
+		return -ENOMEM;
+
+	init = &wiz_phy_en_refclk->clk_data;
+
+	init->ops = &wiz_phy_en_refclk_ops;
+	init->flags = 0;
+	init->name = output_clk_names[TI_WIZ_PHY_EN_REFCLK];
+
+	wiz_phy_en_refclk->phy_en_refclk = wiz->phy_en_refclk;
+	wiz_phy_en_refclk->hw.init = init;
+
+	clk = devm_clk_register(dev, &wiz_phy_en_refclk->hw);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	wiz->output_clks[TI_WIZ_PHY_EN_REFCLK] = clk;
+
 	return 0;
 }
 
@@ -724,6 +805,8 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 		of_clk_del_provider(clk_node);
 		of_node_put(clk_node);
 	}
+
+	of_clk_del_provider(wiz->dev->of_node);
 }
 
 static int wiz_clock_register(struct wiz *wiz)
@@ -747,6 +830,12 @@ static int wiz_clock_register(struct wiz *wiz)
 		}
 	}
 
+	ret = wiz_phy_en_refclk_register(wiz);
+	if (ret) {
+		dev_err(dev, "Failed to add phy-en-refclk\n");
+		return ret;
+	}
+
 	wiz->clk_data.clks = wiz->output_clks;
 	wiz->clk_data.clk_num = WIZ_MAX_OUTPUT_CLOCKS;
 	ret = of_clk_add_provider(node, of_clk_src_onecell_get, &wiz->clk_data);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
