Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8AB4C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 09:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbeE5tXWsr3o0J0r/MJcKize4m9kZ/z5SxrrtE3HA3Q=; b=iXxXdkasJBlIhW
	Orp9PtLfPR6k81oKxBoX6WijWWhARCA+GcZOYeev/oYj/MIuPPMQmWuv/AI9yTGxdoxwMv8E68Q8H
	WKrzsMM5KM83AFOS2SOLgQ7ny8ymQgL0E8bSMK9zTLmD20ArNgabSBSUgUaMqyBQM/sb7xJARSx2o
	DkHBHoCdCAq5Wke8p9CA0hov6vH6ULD2/fKypI59oyTosgvBVSHHAGTvFahxjSiPsN+BnkmJzsrhE
	4ZN8lTZhCN6+vZnqxEqIk77ZNTHdRWbipvYC/kRsWfdoBfzY1PkIfg+/K5W7wXYTNbI98q0HK80zO
	2VRHgew3YMfGlp1IFpsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxPUU-006wLT-3S; Tue, 22 Nov 2022 09:22:54 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxPTz-006w6v-1E; Tue, 22 Nov 2022 09:22:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9MIBO105798;
	Tue, 22 Nov 2022 03:22:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1669108938;
	bh=lSlFyACc8pnTPbW9h+gaanz6fodidSpFFxONniXYeQQ=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=KPrMLJGfomPDxJ2UdVuRTkqtMFrkWSeuSrwHSC9M3Y6Xizsu/9msF1DrdzG71Sydu
	 LhDiZPuAN4eONrtFn1cI9MK2wDNJRTA7707uYHufuy74xweecdJpI3BvnJ0/4z5CbC
	 03jz3yZuXEO7Ku+ZVe7ecgGphhI06lA/Fc5MSUSs=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AM9MHjc043811
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Nov 2022 03:22:18 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 03:22:17 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 03:22:17 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9MEjt041152;
	Tue, 22 Nov 2022 03:22:16 -0600
From: Matt Ranostay <mranostay@ti.com>
To: <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 2/2] phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support
Date: Tue, 22 Nov 2022 01:22:03 -0800
Message-ID: <20221122092203.762308-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221122092203.762308-1-mranostay@ti.com>
References: <20221122092203.762308-1-mranostay@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_012223_230549_281717F5 
X-CRM114-Status: GOOD (  11.28  )
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

Add support for j721s2-wiz-10g device which is similar to j721e-wiz-10g but
uses clock-names interface versus explicitly defining clock nodes within
device tree node.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 141b51af4427..ddce5ef7711c 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -322,6 +322,7 @@ enum wiz_type {
 	AM64_WIZ_10G,
 	J7200_WIZ_10G,  /* J7200 SR2.0 */
 	J784S4_WIZ_10G,
+	J721S2_WIZ_10G,
 };
 
 struct wiz_data {
@@ -1000,6 +1001,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
 	case J784S4_WIZ_10G:
+	case J721S2_WIZ_10G:
 		of_clk_del_provider(dev->of_node);
 		return;
 	default:
@@ -1132,6 +1134,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	case AM64_WIZ_10G:
 	case J7200_WIZ_10G:
 	case J784S4_WIZ_10G:
+	case J721S2_WIZ_10G:
 		ret = wiz_clock_register(wiz);
 		if (ret)
 			dev_err(dev, "Failed to register wiz clocks\n");
@@ -1214,6 +1217,7 @@ static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
 		break;
 	case J721E_WIZ_10G:
 	case J7200_WIZ_10G:
+	case J721S2_WIZ_10G:
 		if (wiz->lane_phy_type[lane] == PHY_TYPE_SGMII)
 			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x2);
 		break;
@@ -1318,6 +1322,15 @@ static struct wiz_data j784s4_10g_data = {
 	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
 };
 
+static struct wiz_data j721s2_10g_data = {
+	.type = J721S2_WIZ_10G,
+	.pll0_refclk_mux_sel = &pll0_refclk_mux_sel,
+	.pll1_refclk_mux_sel = &pll1_refclk_mux_sel,
+	.refclk_dig_sel = &refclk_dig_sel_10g,
+	.clk_mux_sel = clk_mux_sel_10g,
+	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
+};
+
 static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j721e-wiz-16g", .data = &j721e_16g_data,
@@ -1334,6 +1347,9 @@ static const struct of_device_id wiz_id_table[] = {
 	{
 		.compatible = "ti,j784s4-wiz-10g", .data = &j784s4_10g_data,
 	},
+	{
+		.compatible = "ti,j721s2-wiz-10g", .data = &j721s2_10g_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, wiz_id_table);
-- 
2.38.GIT


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
