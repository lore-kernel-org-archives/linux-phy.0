Return-Path: <SRS0=RVtz=HZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA047C43333
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B9F664E4B
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B9F664E4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0knp2uxeGi8AJR/AdLIeW0gl1LbjCQStqj3E5cR0Pjg=; b=KYTYLZ7uHmKGbkUmsw6rdysBC
	1SZDfif0oC2ashgRmktTUoUyQWif+qeRqW/0Ik3FkeVyJDLRNIANYW6mhf7V40Qhw2XRSLWsbWi1J
	8aoJcC0Ugwa1HT7WK/tl3Z6XFJt3BrqjpKNz3evBTn0ASMzh9wJFVcT08jWpQlqnUAbaDrVrjQzsO
	LMAwQe3R+1vSrlp+0E3kCAqF7F7haGuYrIf2dIaE0cv8Hep8VQRwuWdFD1JNluHI8/aGFTEs3hvim
	Rzrd7OZGgSj09t5qjWQDLF35oAwAo2c0GiccZj3zmhKu7exP8YeI9zrPHq7Rohwr6jYzqIiKv/hI5
	pGw4Nhwpg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEOrY-0005DN-Dy; Tue, 23 Feb 2021 03:59:52 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE9Jw-0004yl-HM
 for linux-phy@lists.infradead.org; Mon, 22 Feb 2021 11:24:09 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11MBO3Pn035141;
 Mon, 22 Feb 2021 05:24:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613993043;
 bh=RJ/ru4Y5zyF3fwA5nJ+aeTz0giCPiNPszXekIL+jVLw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=h9wQUoYeNOd1jWKfejWQqtf11tN3kUpGm8PjUSfFaeTG85biHkYL4CU2oct2Kvo86
 sc7OogJWP9PpDffFf6/CkRQMHW9NNBvbFZr9UPfZUiqFP/hPZN7OPTdjUw2PNWTL3/
 IS5ZMuca+meFLdIVspLzIAGhIGCMla5SaCKmIfOo=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11MBO37I101880
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Feb 2021 05:24:03 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 22
 Feb 2021 05:24:02 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 22 Feb 2021 05:24:03 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNFDi088010;
 Mon, 22 Feb 2021 05:23:59 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>
Subject: [PATCH v2 9/9] phy: cadence-torrent: Add support to drive refclk out
Date: Mon, 22 Feb 2021 16:53:14 +0530
Message-ID: <20210222112314.10772-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222112314.10772-1-kishon@ti.com>
References: <20210222112314.10772-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_062408_767720_2AA2338D 
X-CRM114-Status: GOOD (  19.30  )
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

cmn_refclk_<p/m> lines in Torrent SERDES is used for connecting external
reference clock. cmn_refclk_<p/m> can also be configured to output the
reference clock. Model this derived reference clock as a "clock" so that
platforms like AM642 EVM can enable it.

This is used by PCIe to use the same refclk both in local SERDES
and remote device. Add support here to drive refclk out.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 202 +++++++++++++++++++++-
 1 file changed, 199 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index f310e15d94cb..07eebdd90d4b 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -7,7 +7,9 @@
  */
 
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-cadence-torrent.h>
 #include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/io.h>
@@ -76,6 +78,8 @@
  * register offsets from SD0801 PHY register block base (i.e MHDP
  * register base + 0x500000)
  */
+#define CMN_CDIAG_REFCLK_OVRD		0x004CU
+#define CMN_CDIAG_REFCLK_DRV0_CTRL	0x0050U
 #define CMN_SSM_BANDGAP_TMR		0x0021U
 #define CMN_SSM_BIAS_TMR		0x0022U
 #define CMN_PLLSM0_PLLPRE_TMR		0x002AU
@@ -206,6 +210,8 @@
 #define RX_DIAG_ACYA			0x01FFU
 
 /* PHY PCS common registers */
+#define PHY_PIPE_CMN_CTRL1		0x0000U
+#define PHY_ISO_CMN_CTRL		0x0008U
 #define PHY_PLL_CFG			0x000EU
 #define PHY_PIPE_USB3_GEN2_PRE_CFG0	0x0020U
 #define PHY_PIPE_USB3_GEN2_POST_CFG0	0x0022U
@@ -216,6 +222,10 @@
 #define PHY_PMA_CMN_CTRL2		0x0001U
 #define PHY_PMA_PLL_RAW_CTRL		0x0003U
 
+static const char * const clk_names[] = {
+	[CDNS_TORRENT_REFCLK_DRIVER] = "refclk-driver",
+};
+
 static const struct reg_field phy_pll_cfg =
 				REG_FIELD(PHY_PLL_CFG, 0, 1);
 
@@ -231,6 +241,36 @@ static const struct reg_field phy_pma_pll_raw_ctrl =
 static const struct reg_field phy_reset_ctrl =
 				REG_FIELD(PHY_RESET, 8, 8);
 
+#define REFCLK_OUT_NUM_CONFIGURATIONS_PCS_CONFIG	2
+
+enum cdns_torrent_refclk_out_pcs {
+	PHY_ISO_CMN_CTRL_8,
+	PHY_PIPE_CMN_CTRL1_0,
+};
+
+#define REFCLK_OUT_NUM_CONFIGURATIONS_CMN_CONFIG	5
+
+enum cdns_torrent_refclk_out_cmn {
+	CMN_CDIAG_REFCLK_OVRD_4,
+	CMN_CDIAG_REFCLK_DRV0_CTRL_1,
+	CMN_CDIAG_REFCLK_DRV0_CTRL_4,
+	CMN_CDIAG_REFCLK_DRV0_CTRL_5,
+	CMN_CDIAG_REFCLK_DRV0_CTRL_6,
+};
+
+static const struct reg_field refclk_out_pcs_cfg[] = {
+	[PHY_ISO_CMN_CTRL_8]	= REG_FIELD(PHY_ISO_CMN_CTRL, 8, 8),
+	[PHY_PIPE_CMN_CTRL1_0]	= REG_FIELD(PHY_PIPE_CMN_CTRL1, 0, 0),
+};
+
+static const struct reg_field refclk_out_cmn_cfg[] = {
+	[CMN_CDIAG_REFCLK_OVRD_4]	= REG_FIELD(CMN_CDIAG_REFCLK_OVRD, 4, 4),
+	[CMN_CDIAG_REFCLK_DRV0_CTRL_1]	= REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 1, 1),
+	[CMN_CDIAG_REFCLK_DRV0_CTRL_4]	= REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 4, 4),
+	[CMN_CDIAG_REFCLK_DRV0_CTRL_5]  = REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 5, 5),
+	[CMN_CDIAG_REFCLK_DRV0_CTRL_6]	= REG_FIELD(CMN_CDIAG_REFCLK_DRV0_CTRL, 6, 6),
+};
+
 enum cdns_torrent_phy_type {
 	TYPE_NONE,
 	TYPE_DP,
@@ -279,6 +319,8 @@ struct cdns_torrent_phy {
 	struct regmap_field *phy_pma_cmn_ctrl_2;
 	struct regmap_field *phy_pma_pll_raw_ctrl;
 	struct regmap_field *phy_reset_ctrl;
+	struct clk *clks[CDNS_TORRENT_REFCLK_DRIVER + 1];
+	struct clk_onecell_data clk_data;
 };
 
 enum phy_powerstate {
@@ -288,6 +330,16 @@ enum phy_powerstate {
 	POWERSTATE_A3 = 3,
 };
 
+struct cdns_torrent_derived_refclk {
+	struct clk_hw		hw;
+	struct regmap_field	*pcs_fields[REFCLK_OUT_NUM_CONFIGURATIONS_PCS_CONFIG];
+	struct regmap_field	*cmn_fields[REFCLK_OUT_NUM_CONFIGURATIONS_CMN_CONFIG];
+	struct clk_init_data	clk_data;
+};
+
+#define to_cdns_torrent_derived_refclk(_hw)	\
+			container_of(_hw, struct cdns_torrent_derived_refclk, hw)
+
 static int cdns_torrent_phy_init(struct phy *phy);
 static int cdns_torrent_dp_init(struct phy *phy);
 static int cdns_torrent_dp_run(struct cdns_torrent_phy *cdns_phy,
@@ -1604,6 +1656,111 @@ static int cdns_torrent_dp_run(struct cdns_torrent_phy *cdns_phy, u32 num_lanes)
 	return ret;
 }
 
+static int cdns_torrent_derived_refclk_enable(struct clk_hw *hw)
+{
+	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
+
+	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_6], 0);
+	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4], 1);
+	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_5], 1);
+	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_1], 0);
+	regmap_field_write(derived_refclk->cmn_fields[CMN_CDIAG_REFCLK_OVRD_4], 1);
+	regmap_field_write(derived_refclk->pcs_fields[PHY_PIPE_CMN_CTRL1_0], 1);
+	regmap_field_write(derived_refclk->pcs_fields[PHY_ISO_CMN_CTRL_8], 1);
+
+	return 0;
+}
+
+static void cdns_torrent_derived_refclk_disable(struct clk_hw *hw)
+{
+	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
+
+	regmap_field_write(derived_refclk->pcs_fields[PHY_ISO_CMN_CTRL_8], 0);
+}
+
+static int cdns_torrent_derived_refclk_is_enabled(struct clk_hw *hw)
+{
+	struct cdns_torrent_derived_refclk *derived_refclk = to_cdns_torrent_derived_refclk(hw);
+	int val;
+
+	regmap_field_read(derived_refclk->pcs_fields[PHY_ISO_CMN_CTRL_8], &val);
+
+	return !!val;
+}
+
+static const struct clk_ops cdns_torrent_derived_refclk_ops = {
+	.enable = cdns_torrent_derived_refclk_enable,
+	.disable = cdns_torrent_derived_refclk_disable,
+	.is_enabled = cdns_torrent_derived_refclk_is_enabled,
+};
+
+static int cdns_torrent_derived_refclk_register(struct cdns_torrent_phy *cdns_phy)
+{
+	struct cdns_torrent_derived_refclk *derived_refclk;
+	struct device *dev = cdns_phy->dev;
+	struct regmap_field *field;
+	struct clk_init_data *init;
+	const char *parent_name;
+	struct regmap *regmap;
+	char clk_name[100];
+	struct clk *clk;
+	int i;
+
+	derived_refclk = devm_kzalloc(dev, sizeof(*derived_refclk), GFP_KERNEL);
+	if (!derived_refclk)
+		return -ENOMEM;
+
+	snprintf(clk_name, sizeof(clk_name), "%s_%s", dev_name(dev),
+		 clk_names[CDNS_TORRENT_REFCLK_DRIVER]);
+
+	clk = devm_clk_get_optional(dev, "phy_en_refclk");
+	if (IS_ERR(clk)) {
+		dev_err(dev, "No parent clock for derived_refclk\n");
+		return PTR_ERR(clk);
+	}
+
+	init = &derived_refclk->clk_data;
+
+	if (clk) {
+		parent_name = __clk_get_name(clk);
+		init->parent_names = &parent_name;
+		init->num_parents = 1;
+	}
+	init->ops = &cdns_torrent_derived_refclk_ops;
+	init->flags = 0;
+	init->name = clk_name;
+
+	regmap = cdns_phy->regmap_phy_pcs_common_cdb;
+	for (i = 0; i < REFCLK_OUT_NUM_CONFIGURATIONS_PCS_CONFIG; i++) {
+		field = devm_regmap_field_alloc(dev, regmap, refclk_out_pcs_cfg[i]);
+		if (IS_ERR(field)) {
+			dev_err(dev, "PCS reg field init failed\n");
+			return PTR_ERR(field);
+		}
+		derived_refclk->pcs_fields[i] = field;
+	}
+
+	regmap = cdns_phy->regmap_common_cdb;
+	for (i = 0; i < REFCLK_OUT_NUM_CONFIGURATIONS_CMN_CONFIG; i++) {
+		field = devm_regmap_field_alloc(dev, regmap, refclk_out_cmn_cfg[i]);
+		if (IS_ERR(field)) {
+			dev_err(dev, "CMN reg field init failed\n");
+			return PTR_ERR(field);
+		}
+		derived_refclk->cmn_fields[i] = field;
+	}
+
+	derived_refclk->hw.init = init;
+
+	clk = devm_clk_register(dev, &derived_refclk->hw);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	cdns_phy->clks[CDNS_TORRENT_REFCLK_DRIVER] = clk;
+
+	return 0;
+}
+
 static int cdns_torrent_phy_on(struct phy *phy)
 {
 	struct cdns_torrent_inst *inst = phy_get_drvdata(phy);
@@ -2071,6 +2228,37 @@ int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 	return 0;
 }
 
+static void cdns_torrent_clk_cleanup(struct cdns_torrent_phy *cdns_phy)
+{
+	struct device *dev = cdns_phy->dev;
+
+	of_clk_del_provider(dev->of_node);
+}
+
+static int cdns_torrent_clk_register(struct cdns_torrent_phy *cdns_phy)
+{
+	struct device *dev = cdns_phy->dev;
+	struct device_node *node = dev->of_node;
+	int ret;
+
+	ret = cdns_torrent_derived_refclk_register(cdns_phy);
+	if (ret) {
+		dev_err(dev, "failed to register derived refclk\n");
+		return ret;
+	}
+
+	cdns_phy->clk_data.clks = cdns_phy->clks;
+	cdns_phy->clk_data.clk_num = CDNS_TORRENT_REFCLK_DRIVER + 1;
+
+	ret = of_clk_add_provider(node, of_clk_src_onecell_get, &cdns_phy->clk_data);
+	if (ret) {
+		dev_err(dev, "Failed to add clock provider: %s\n", node->name);
+		return ret;
+	}
+
+	return 0;
+}
+
 static int cdns_torrent_phy_probe(struct platform_device *pdev)
 {
 	struct cdns_torrent_phy *cdns_phy;
@@ -2134,17 +2322,21 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = cdns_torrent_clk_register(cdns_phy);
+	if (ret)
+		return ret;
+
 	ret = clk_prepare_enable(cdns_phy->clk);
 	if (ret) {
 		dev_err(cdns_phy->dev, "Failed to prepare ref clock\n");
-		return ret;
+		goto clk_cleanup;
 	}
 
 	cdns_phy->ref_clk_rate = clk_get_rate(cdns_phy->clk);
 	if (!(cdns_phy->ref_clk_rate)) {
 		dev_err(cdns_phy->dev, "Failed to get ref clock rate\n");
-		clk_disable_unprepare(cdns_phy->clk);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto clk_disable;
 	}
 
 	/* Enable APB */
@@ -2322,7 +2514,10 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		reset_control_put(cdns_phy->phys[i].lnk_rst);
 	of_node_put(child);
 	reset_control_assert(cdns_phy->apb_rst);
+clk_disable:
 	clk_disable_unprepare(cdns_phy->clk);
+clk_cleanup:
+	cdns_torrent_clk_cleanup(cdns_phy);
 	return ret;
 }
 
@@ -2339,6 +2534,7 @@ static int cdns_torrent_phy_remove(struct platform_device *pdev)
 	}
 
 	clk_disable_unprepare(cdns_phy->clk);
+	cdns_torrent_clk_cleanup(cdns_phy);
 
 	return 0;
 }
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
