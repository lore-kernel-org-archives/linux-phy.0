Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0798AC433E0
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD87064EA4
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD87064EA4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SMHvxCB6PGKi7gHk6XYmZgdkejoU58b+OczcE5tNvJ8=; b=A8+hF+IuD+f2YJCfVyp84y8Z+
	RDCMY1eBVQKjVgvzgPMsvFRHVIR/TaTTbP3oa8r1TgSSKv2iDOvkLw+w1wU0KoiMQFz7jCLoEJ6vc
	fvLQqmPJvf45pXcUhqRXPSaJAi/yQOLRx6Xpljz5mko3ULuZoztyk+zl7FAfl3zIgFSrwt9kamCUr
	DmZE6F90N2T2/bjvFnCHOwLHCZxiD+EQTcaTFY4Qlpsl3FW6Fjyjc0GiaQMJeXvPfCnEs6wuES3lA
	Gv2f9UKnDxc1/qe2CgUelVEt0wIZI0Bs/jlonsMLQJtLqOcZACkS1jgKIk8JE2KTsEuDHw9OYPWVW
	Z950GKPmw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEUC-007Q0h-5o; Fri, 19 Mar 2021 12:44:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNESC-007Pt6-MO
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:44:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCg9al048382;
 Fri, 19 Mar 2021 07:42:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157729;
 bh=KmnGIy+wzvEVKK6JArtO53MShYBVQiVhCc6Cjf7/AXQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=GldvkJLuwcKM9W5So5XHtXB4DjTy11WqnS3GJXzrmtCWoCJeIfqQDqWlPcOQtgTe2
 JvqajzyYg/DThpGqQKMJc9eKkDw2cTVRryzP494CSj9nhoVR8SYkn12w1VazQdk3rx
 6TqkHxEEnr4v35vkIkobbOBNNN8UU8e3X82+Ofyc=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCg9jd086244
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:42:09 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:42:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:42:09 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTfA011913;
 Fri, 19 Mar 2021 07:42:05 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 09/13] phy: cadence: Sierra: Add array of input clocks in
 "struct cdns_sierra_phy"
Date: Fri, 19 Mar 2021 18:11:24 +0530
Message-ID: <20210319124128.13308-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124413_221695_4FD1E3DA 
X-CRM114-Status: GOOD (  13.00  )
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

Instead of having separate structure members for each input clock, add
an array for the input clocks within "struct cdns_sierra_phy". This is
in preparation for adding more input clocks required for supporting
additional clock combination.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 25 ++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 44c52a0842dc..a45278c30948 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -144,6 +144,13 @@
 #define SIERRA_MAX_LANES				16
 #define PLL_LOCK_TIME					100000
 
+#define CDNS_SIERRA_INPUT_CLOCKS			3
+enum cdns_sierra_clock_input {
+	PHY_CLK,
+	CMN_REFCLK_DIG_DIV,
+	CMN_REFCLK1_DIG_DIV,
+};
+
 static const struct reg_field macro_id_type =
 				REG_FIELD(SIERRA_MACRO_ID_REG, 0, 15);
 static const struct reg_field phy_pll_cfg_1 =
@@ -197,9 +204,7 @@ struct cdns_sierra_phy {
 	struct regmap_field *macro_id_type;
 	struct regmap_field *phy_pll_cfg_1;
 	struct regmap_field *pllctrl_lock[SIERRA_MAX_LANES];
-	struct clk *clk;
-	struct clk *cmn_refclk_dig_div;
-	struct clk *cmn_refclk1_dig_div;
+	struct clk *input_clks[CDNS_SIERRA_INPUT_CLOCKS];
 	int nsubnodes;
 	u32 num_lanes;
 	bool autoconf;
@@ -281,8 +286,8 @@ static int cdns_sierra_phy_init(struct phy *gphy)
 	if (phy->autoconf)
 		return 0;
 
-	clk_set_rate(phy->cmn_refclk_dig_div, 25000000);
-	clk_set_rate(phy->cmn_refclk1_dig_div, 25000000);
+	clk_set_rate(phy->input_clks[CMN_REFCLK_DIG_DIV], 25000000);
+	clk_set_rate(phy->input_clks[CMN_REFCLK1_DIG_DIV], 25000000);
 	if (ins->phy_type == PHY_TYPE_PCIE) {
 		num_cmn_regs = phy->init_data->pcie_cmn_regs;
 		num_ln_regs = phy->init_data->pcie_ln_regs;
@@ -488,7 +493,7 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
 		dev_err(dev, "failed to get clock phy_clk\n");
 		return PTR_ERR(clk);
 	}
-	sp->clk = clk;
+	sp->input_clks[PHY_CLK] = clk;
 
 	clk = devm_clk_get_optional(dev, "cmn_refclk_dig_div");
 	if (IS_ERR(clk)) {
@@ -496,7 +501,7 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
 		ret = PTR_ERR(clk);
 		return ret;
 	}
-	sp->cmn_refclk_dig_div = clk;
+	sp->input_clks[CMN_REFCLK_DIG_DIV] = clk;
 
 	clk = devm_clk_get_optional(dev, "cmn_refclk1_dig_div");
 	if (IS_ERR(clk)) {
@@ -504,7 +509,7 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
 		ret = PTR_ERR(clk);
 		return ret;
 	}
-	sp->cmn_refclk1_dig_div = clk;
+	sp->input_clks[CMN_REFCLK1_DIG_DIV] = clk;
 
 	return 0;
 }
@@ -585,7 +590,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(sp->clk);
+	ret = clk_prepare_enable(sp->input_clks[PHY_CLK]);
 	if (ret)
 		return ret;
 
@@ -662,7 +667,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 		reset_control_put(sp->phys[i].lnk_rst);
 	of_node_put(child);
 clk_disable:
-	clk_disable_unprepare(sp->clk);
+	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
 	reset_control_assert(sp->apb_rst);
 	return ret;
 }
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
