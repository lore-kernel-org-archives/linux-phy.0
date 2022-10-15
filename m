Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5490C43217
	for <linux-phy@archiver.kernel.org>; Sat, 15 Oct 2022 20:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paRb7MYDWFRTa/CSEBh0MnkMYPXx3jwU3l9TQMDrch8=; b=Ogqx8Rzm9sIdu0
	v1XQwKAY4OtZEpKBrUAS3qkQfgfZEWefosH40o2rQB8Ygzhcra/Skds0Scu0FlVRfeILRKuw7sRfP
	WKQTJ6B47o1Q5ba74mHbzjK2Xrvxc7j6e3DsLRYamcHM41pHY6QAMJwPOfvpiEP+sVBLABpSKc8hZ
	l2Wn+cAaKYDL0h28hNErAf1LecXjQIdotoIFeJNcH5kn0DbfXvwZtm113WRYL6JnUU5WoDU9LmL33
	Y4evqjwfrluuuIsBO20sF0N+AGew2eywQDsS8fNHxTjXvrq4pMrWpIoNuA4G+buNG1kplsCQEUPdB
	51g4jm0Hvcc4GZaoEhSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojnVZ-00HaHK-RP; Sat, 15 Oct 2022 20:11:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojnVX-00HaG4-72
	for linux-phy@lists.infradead.org; Sat, 15 Oct 2022 20:11:44 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBcLi097934;
	Sat, 15 Oct 2022 15:11:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1665864698;
	bh=AmGqfVhfyTJOrGbc3D1E6OPKuJNe0YkGpEBqdAYDZOQ=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=fd4MYacNPhuyJW5yVJUCwfNcB1lvf3kvVDzBAqVDlFt+KMAFd9ggyHiu8SlpWibTl
	 wVG8Wp8Jd69TEZw0c7btWrk2JSWmwM1m8d9GNDuxB2DCKJ/QZEwacuwoZKH3ZgfkBp
	 ZBn8Ovgc5Kku26KGUzB2orWZlU5kNKErDukdYlU4=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29FKBcrC085506
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 15 Oct 2022 15:11:38 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 15
 Oct 2022 15:11:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 15 Oct 2022 15:11:37 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBZ1M064560;
	Sat, 15 Oct 2022 15:11:36 -0500
From: Matt Ranostay <mranostay@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Matt
 Ranostay <mranostay@ti.com>, Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 2/2] phy: ti: phy-j721e-wiz: add j784s4-wiz-10g module support
Date: Sat, 15 Oct 2022 13:11:23 -0700
Message-ID: <20221015201123.195477-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
In-Reply-To: <20221015201123.195477-1-mranostay@ti.com>
References: <20221015201123.195477-1-mranostay@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_131143_375115_5ABC02F6 
X-CRM114-Status: GOOD (  11.12  )
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

Add support for j784s4-wiz-10g device which has two core reference
clocks (e.g core_ref_clk, core_ref1_clk) which requires an additional
mux selection option.

Acked-by: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 41725c6bcdf6..141b51af4427 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -81,14 +81,20 @@ static const struct reg_field phy_reset_n = REG_FIELD(WIZ_SERDES_RST, 31, 31);
 static const struct reg_field phy_en_refclk = REG_FIELD(WIZ_SERDES_RST, 30, 30);
 static const struct reg_field pll1_refclk_mux_sel =
 					REG_FIELD(WIZ_SERDES_RST, 29, 29);
+static const struct reg_field pll1_refclk_mux_sel_2 =
+					REG_FIELD(WIZ_SERDES_RST, 22, 23);
 static const struct reg_field pll0_refclk_mux_sel =
 					REG_FIELD(WIZ_SERDES_RST, 28, 28);
+static const struct reg_field pll0_refclk_mux_sel_2 =
+					REG_FIELD(WIZ_SERDES_RST, 28, 29);
 static const struct reg_field refclk_dig_sel_16g =
 					REG_FIELD(WIZ_SERDES_RST, 24, 25);
 static const struct reg_field refclk_dig_sel_10g =
 					REG_FIELD(WIZ_SERDES_RST, 24, 24);
 static const struct reg_field pma_cmn_refclk_int_mode =
 					REG_FIELD(WIZ_SERDES_TOP_CTRL, 28, 29);
+static const struct reg_field pma_cmn_refclk1_int_mode =
+					REG_FIELD(WIZ_SERDES_TOP_CTRL, 20, 21);
 static const struct reg_field pma_cmn_refclk_mode =
 					REG_FIELD(WIZ_SERDES_TOP_CTRL, 30, 31);
 static const struct reg_field pma_cmn_refclk_dig_div =
@@ -315,6 +321,7 @@ enum wiz_type {
 	J721E_WIZ_10G,	/* Also for J7200 SR1.0 */
 	AM64_WIZ_10G,
 	J7200_WIZ_10G,  /* J7200 SR2.0 */
+	J784S4_WIZ_10G,
 };
 
 struct wiz_data {
@@ -992,6 +999,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 	switch (wiz->type) {
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
+	case J784S4_WIZ_10G:
 		of_clk_del_provider(dev->of_node);
 		return;
 	default:
@@ -1123,6 +1131,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	switch (wiz->type) {
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
+	case J784S4_WIZ_10G:
 		ret = wiz_clock_register(wiz);
 		if (ret)
 			dev_err(dev, "Failed to register wiz clocks\n");
@@ -1299,6 +1308,16 @@ static struct wiz_data j7200_pg2_10g_data = {
 	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
 };
 
+static struct wiz_data j784s4_10g_data = {
+	.type = J784S4_WIZ_10G,
+	.pll0_refclk_mux_sel = &pll0_refclk_mux_sel_2,
+	.pll1_refclk_mux_sel = &pll1_refclk_mux_sel_2,
+	.refclk_dig_sel = &refclk_dig_sel_16g,
+	.pma_cmn_refclk1_int_mode = &pma_cmn_refclk1_int_mode,
+	.clk_mux_sel = clk_mux_sel_10g_2_refclk,
+	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
+};
+
 static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j721e-wiz-16g", .data = &j721e_16g_data,
@@ -1312,6 +1331,9 @@ static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j7200-wiz-10g", .data = &j7200_pg2_10g_data,
 	},
+	{
+		.compatible = "ti,j784s4-wiz-10g", .data = &j784s4_10g_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, wiz_id_table);
-- 
2.38.0.rc0.52.gdda7228a83


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
