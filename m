Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A2A6C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 03:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbeE5tXWsr3o0J0r/MJcKize4m9kZ/z5SxrrtE3HA3Q=; b=KUxpF8I0AbsDWM
	fuxOEnp+/1ijuMspSmAqnvpS29v1W8S8FDcdU9WFPGmCNZlmkgOG+ReRBHHws4jnUyOdkrv06WvQC
	0J9xIfUA6tcygISM0ORx1H3SmHmjzaNvktjKHg60ys9SLXY/zSjWga+Jg+zTVGW6g2srDASjw1Pog
	GK8rQuGljPqPWqRb64DCwzBm6zWrCRKDsi859JRm1Ktc/y3U6uxLzWWgsbwvVd8y7FujXB5tGZdh9
	9Njuy5+F72TorsSBdH8PAMSnwm0PSLjEJOENffJhyQ4qNqxT7rqTbLPenCH68XS29Mlw/8qf2j6GL
	iXiP4uBXwhRbuqlch3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxgNt-00DSp0-RR; Wed, 23 Nov 2022 03:25:13 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxgNG-00DSg9-OX; Wed, 23 Nov 2022 03:24:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OSYn065690;
	Tue, 22 Nov 2022 21:24:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1669173868;
	bh=lSlFyACc8pnTPbW9h+gaanz6fodidSpFFxONniXYeQQ=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=MHzPdIci5j3GrThJzOryoajN9ewLE8QzTkUp6003239IU5dEvIZFZIgSxq1/Ym7Bm
	 1ruq9QTCAydczSLp8MeyELVl+pBxZnyS/BtXiEvWXhVWyML69ye2aPk8mcSEUxP20y
	 muVKNdbw0IjRVa+2MDMy99Q548dXRFcIrWvjm6DQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AN3OS8c072007
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Nov 2022 21:24:28 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 21:24:27 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 21:24:27 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OOHc012283;
	Tue, 22 Nov 2022 21:24:26 -0600
From: Matt Ranostay <mranostay@ti.com>
To: <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 2/2] phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support
Date: Tue, 22 Nov 2022 19:24:13 -0800
Message-ID: <20221123032413.1193961-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221123032413.1193961-1-mranostay@ti.com>
References: <20221123032413.1193961-1-mranostay@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_192434_939738_36E3567E 
X-CRM114-Status: GOOD (  11.47  )
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
