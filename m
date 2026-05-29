Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0EFFCD6E4C
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gkEya/hG3jj2K0DiP4AWDUtJhOCfGuZaXzn2j6uq5o=; b=MuCTxlT3iVOOFJ
	g5xRqBKUJl4lLTSCj5NnCWf7yMDGKQ2oiFlISn5DjM1ux6eQxq1QOcy/T3aUDZhwew/a1WTbMfOo9
	4gBmL9cN28DrQtDlwH5pkvmCk4nIYMXK9TC23O7NL+hOyf1Br+EXm+61w1S3IGyU5RfHU9Cq5h1GD
	xyruVD+WXLkXS9ChVFMUrVZVxLKZ7z4E+g2LHR4aZicElObLCb8qt2of5SmN1nTm+rwycs6Cyh10B
	gjdGnf+53hZEHLED/jwjZ200AF08rrJRQX7RKhvk3a5JzRQmZ6cdTTgEdTs/wyx30FbjL4NEa66Rb
	W883U3Zxu/y6m2YKyuag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oA-00000007yNf-33Gs;
	Fri, 29 May 2026 17:15:42 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o7-00000007yDh-18it
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gqz3OKYbBNTflAZkt5PqfjR/v8BXBG+QQKescdE3w3a2zTzCKT+oQ9734i27LUwcWAWNNqgm+UiiQVibcDJREpVlcpF+z7onSzEaTdpIwf32yoC8pg/O1S8UVe6aMOiv2n8hEjOAmxf5Q0fugtjhcpOFCsDyzop/i4pGV9P88KcqG5KmF2wwsY9pBNxnNmE2oeamw8rvQb/N/7JClFoIDVVg8/ock+FZgehIfl7C8R8ovDwdQoeGeO0MN05w5+kuZug+++fx5wKeOW96JMHM+9QxxACUXmR1nE2K/2aFWoFpE3D7jP2zUJFAdCu+1423b2fFPsdXTZ96lV/FRJJC2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XtmOM3MW7rFkPSGCo2UXcsMYb8KWb1UwDmlDYD2YqlM=;
 b=a7xiFMgeMTVsoVula9GrJ7+HyqdG4ekcDn74uvV2yC2k7VCwDrf4F8A/5I7Ojw+vXzEBlxVE8sR6PGdPpxI58JC8pKA+cjelBmv7ghgO9YvbyTZm9SuKUE7vUkgILCHoxsnLDc44zIpt0wZr9ctGQgO4SzILQlysE6Ywytxgzu3bcF6h5uzJuIvDdpHtIy7rUichSZztCcLQSG5cG8A/r3+4S0/w+9I1LZpsEXBFzJqf6uXF7Gs/Oebr17Qwl60npCRd2er92DmqZySKg/0EyPyje/GiUlUMiJQeBoTbN1wTlwoa0UnzR+qGVHOfkZnzQa6PVSc5xEcFSEz1npx3Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtmOM3MW7rFkPSGCo2UXcsMYb8KWb1UwDmlDYD2YqlM=;
 b=kOd0UUZRI+ranThgDJ4I8Vm8epGYfruUg4bxsUm9nwimvpxP9qXhug2uFSwS+WhLQuv3/MgNboMuMLeXZ0d+Xm6OoZlTTyxLmfmB81FB147FbU4c58fFI7jdB4rxRGK2CqoMajRwDLWhXDi8twJkZTlvobdGyz6lpwp5kfIAecaVWX5eACAXi2Nsw48PkM97D1uEaAeSkR9w4EtvmOgkyGEmfGt1XjrRXQ1S67uBeoD2vhRg6SIdxBfcQgT2U+bJndxciWfTRcQGEIPha1MXXvG29ZiHvmceYqLwXS4WT6cp+CC0ziGUyOPrB2jfkkY4lqK08Ss1GM5udR1r35MVNg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:27 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:27 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 08/15] phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
Date: Fri, 29 May 2026 20:15:02 +0300
Message-Id: <20260529171509.1163787-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0037.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::17) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 27d3e0fe-f645-470d-e528-08debda5e0ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: wPArAXk1KgFQvv4A6wUdWemL+31qK92yMebh/n7/7+pvHEXhrAWKk3shUj3odzkYsHD7/TfiNlqgIgSg3Rc7l2cBo8gGCizffbJBPM33+nVwoO3mD3RM6piS5vIbBYt2zluPWL+5BsuFmJb31HIlWNCnMsBV1OiKJEBXMbzIZHh/irCmvaVP9w5GnU3sQOjItlXbUkJwhdtDPn9svk/+OgCbCOAPO1i51MnTQhXaya0UR6j9V0f6Y6+BkC3bO2655opBAaTqhzUuo7lPxTxZAiKBd0KKaaQGZD0sTYCQRsxVr56d9V8I5dnoMcmfNgktvSUBqFAtcaIIGd3YsvnGotvzIYJDtdhcNNndyRWRmowERK64kuxiKsD72SvUoVhIZhoacxE3NiUa2SE/VOY7nVkAUWxRNbCOkdDkEpqCGS4vNQ39WKdD2CGmeOImkfRMMqdsD59xsN+KF7v8cKwHtW0piVP+caGtWPP04JwPwdH0Pw5hJR3BWFNWIO21svleWasVn3UPZmFysC29MIqtkGS3bNgogyjbX9HU2Se0d7rYF8aFX4PzH0aZdI7AcWd1ek9U7kfSKoflP4AdMSfGbvXxPrNn0qFlgs3iR7QqHTBvi6jsOKijuKRqwQLWDalBu4PQOeVrqL8dMRGxor7J2/7qqTw8OrnnAuRwiY4q/F3eKbmsPllgoIAryqDlDUtJ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Yfj6WNTDBFHsyTRvbNGhI7tHuzzGUzL8LTyOz9VBs3MIuI8B343dT2EIZL3n?=
 =?us-ascii?Q?CYpUc/bh7dlUMTiFdWMMyczjfbxKs3KFKdJvU/9wbOZtp/Xr06wnvN8YkIek?=
 =?us-ascii?Q?6fJ0BsihdueEPQDAH2S4mGT9neSaCth2AmLzRf1eqJ4zaHfiJYI73EZkLUmx?=
 =?us-ascii?Q?kkwDTbPlFqt7Bk+MhBuN0vwspg9s3AzFkvuT92aeKFjwQc3L+CnflPMQ1QVr?=
 =?us-ascii?Q?DW6HcNinmSvqPDvjCg3Ry6+wyD03QzbLGOGTjmbE4QGn/teqwRtASzNT0ANK?=
 =?us-ascii?Q?YXu4hYQyk2DnT/QIAXeRi/oJ4s7g/kq/fy3zEhVVuoaESZg3k05s9zaSnqzq?=
 =?us-ascii?Q?O76KeReGnx85yrQxOX/wALTes5iLn430hCwf30XVA764kIemykGdkE5Wmmgv?=
 =?us-ascii?Q?OnuB+mqqGlErTHW1Z+8quMxFSZgkcje7LM2gzsHPt2YLThhEQdpE4nGobm8g?=
 =?us-ascii?Q?Nep32kXJkwAEZ52QUwrj2cvCxsgkqs22up/qaJ6T1FHdobMCWPaJsY6Pe540?=
 =?us-ascii?Q?3Ouz+2mt1nxzBrfi6cDGpDyBJvySJlQ1XqUZgWGq1WVrWZ+XgTekdH3N2iM2?=
 =?us-ascii?Q?gfPOENBLcbEBX3HCaz5p2lDCf+BD72/Pzhs6LJnJjeWNa5xWFH7hVOXOJlbK?=
 =?us-ascii?Q?Jp4c+6efzjxfPaY37vVXLJQRw8xxhY+iial5qRwT846O4bnF7YsMKT85GHAM?=
 =?us-ascii?Q?Ga4JYxF10RLuDcdW3Q1m/TigOHbljY/Xuey/fu0oXiEn6+vTSpdkYQTq17wz?=
 =?us-ascii?Q?MvYafPyaBTs7OmBuMkf2hR16gEwCbHRKsd0cTjeSj950/hxPsuQlCnhg4Zqd?=
 =?us-ascii?Q?/0XtN3v0A4MvX9Z6YkVJaPn3I+bomZEugvNORmT+1fKoCBquynnLnTid9cu9?=
 =?us-ascii?Q?PXiy9vRL1vmxMrq/odxcxGXUTiMyen6W5+CUM8fsOVosEwroXbG6YSQ0Dte2?=
 =?us-ascii?Q?Z1/NXdHbuAQbOtd9yyCrMv3NOHh8NetJStgP19DDrQz8Lh0Glg8mwwOvSMq8?=
 =?us-ascii?Q?5wUK/9ks2TOF09MpGj4YYZCWl6q2Ypv2GiKdOGpWXuDYSF0HsVtsWeX08KeC?=
 =?us-ascii?Q?QzJUpWvZi63ORVAAKAtneqCdJV1uO1hwMZPhqgKVqYpPqHDL0gi2GPsUi1iU?=
 =?us-ascii?Q?PLr9lUA7WolAlHosC/YrJWj6/LXwtPmwl7+P50dumzX4zm0rr7T6Ez82LAxu?=
 =?us-ascii?Q?vtVDUR7NP5SRLjlOjsTABL22Tc4ISZvKIVrmcYvKs4E4LPltL6qDUfnUHOx1?=
 =?us-ascii?Q?DJ1p0P2pTlTNTN5WuAlLVR2BUVGHfTRdvqwrOVsNvGE9pKzyCZxhpsN4UzZP?=
 =?us-ascii?Q?RvuS1IJenpTA9YO5IaG/v5WhW+4XvK1QSRmdksccGmpThyEuAJ0Kf4ofopwN?=
 =?us-ascii?Q?Me3LcDmNm7WD5n7TrbaswlhwgJjHgMPiogOcOO44LyOuALhVkYu5/qtXHh3m?=
 =?us-ascii?Q?Xb435UrKPWJWn0nMgY1M0O37Zm4XUGTwmKR8m6li2z25ztkTjpLMw7qdhZRQ?=
 =?us-ascii?Q?qqzkpgP3GXjvryyRGSmx4a835MRJjH5/L/elUx+cO0mRRP/d6+xu9xCf9Czs?=
 =?us-ascii?Q?i6MEv5RI9ReeVEmaUPQgE97VAswg232HEaGt8qmilo1sUErOco9N99sCGH4V?=
 =?us-ascii?Q?5icLn6qORRZUW7bq1UZr9WFRYK+dz+P3Wz0hLdkyhxt5KmODv2/6r1rqxJDP?=
 =?us-ascii?Q?QF0xU6DqqJq3heU98VVpqRL6k9Wwo7e3z4MdgsSBAjlM1X5IADAY5Q5bbH9T?=
 =?us-ascii?Q?qEmGDJjaLrVHHqMEQgLBiVINdlGhQBVHl95Lm+DGJFrR2MYGnzcA?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d3e0fe-f645-470d-e528-08debda5e0ed
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:27.4940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c0SmyzG/DeLS5vleYZRDj3XucZKKcuQkGtkNOea1xlwlF18MCW8rgp+XkzX5OQ82jjf0OpgqDlSx9hJsF/2O7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101539_311007_16372914 
X-CRM114-Status: GOOD (  16.75  )
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

In a future change, lynx_28g_pll_read_configuration() and
lynx_28g_lane_read_configuration() will be made methods of struct
lynx_info.

There is no functional reason, but lynx_28g_lane_read_configuration() is
called per lane and lynx_28g_pll_read_configuration() iterates over PLLs
internally. So the API exported by the lynx_info structure would not be
uniform. Change lynx_28g_pll_read_configuration() to also permit reading
the PLL configuration individually, and move the for loop at the call
site.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: fix typo in commit message (spotted by Sashiko)
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 73 ++++++++++++------------
 1 file changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 0076de537763..25aeab478d49 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -272,7 +272,6 @@
 #define lynx_28g_lane_rmw			lynx_lane_rmw
 #define lynx_28g_lane_read			lynx_lane_read
 #define lynx_28g_lane_write			lynx_lane_write
-#define lynx_28g_pll_read			lynx_pll_read
 
 #define lynx_28g_priv				lynx_priv
 #define lynx_28g_lane				lynx_lane
@@ -1051,49 +1050,41 @@ static const struct phy_ops lynx_28g_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
+static void lynx_28g_pll_read_configuration(struct lynx_pll *pll)
 {
-	struct lynx_28g_pll *pll;
 	u32 val;
-	int i;
 
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		pll = &priv->pll[i];
-		pll->priv = priv;
-		pll->id = i;
+	val = lynx_pll_read(pll, PLLnRSTCTL);
+	pll->enabled = !(val & PLLnRSTCTL_DIS);
+	pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->enabled = !(val & PLLnRSTCTL_DIS);
-		pll->locked = !!(val & PLLnRSTCTL_LOCK);
+	val = lynx_pll_read(pll, PLLnCR0);
+	pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+	val = lynx_pll_read(pll, PLLnCR1);
+	pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR1);
-		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
-
-		if (!pll->enabled)
-			continue;
+	if (!pll->enabled)
+		return;
 
-		switch (pll->frate_sel) {
-		case PLLnCR1_FRATE_5G_10GVCO:
-		case PLLnCR1_FRATE_5G_25GVCO:
-			/* 5GHz clock net */
-			__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
-			break;
-		case PLLnCR1_FRATE_10G_20GVCO:
-			/* 10.3125GHz clock net */
-			__set_bit(LANE_MODE_10GBASER, pll->supported);
-			__set_bit(LANE_MODE_USXGMII, pll->supported);
-			break;
-		case PLLnCR1_FRATE_12G_25GVCO:
-			/* 12.890625GHz clock net */
-			__set_bit(LANE_MODE_25GBASER, pll->supported);
-			break;
-		default:
-			/* 6GHz, 8GHz */
-			break;
-		}
+	switch (pll->frate_sel) {
+	case PLLnCR1_FRATE_5G_10GVCO:
+	case PLLnCR1_FRATE_5G_25GVCO:
+		/* 5GHz clock net */
+		__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
+		break;
+	case PLLnCR1_FRATE_10G_20GVCO:
+		/* 10.3125GHz clock net */
+		__set_bit(LANE_MODE_10GBASER, pll->supported);
+		__set_bit(LANE_MODE_USXGMII, pll->supported);
+		break;
+	case PLLnCR1_FRATE_12G_25GVCO:
+		/* 12.890625GHz clock net */
+		__set_bit(LANE_MODE_25GBASER, pll->supported);
+		break;
+	default:
+		/* 6GHz, 8GHz */
+		break;
 	}
 }
 
@@ -1291,7 +1282,13 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	lynx_28g_pll_read_configuration(priv);
+	for (int i = 0; i < LYNX_28G_NUM_PLL; i++) {
+		struct lynx_28g_pll *pll = &priv->pll[i];
+
+		pll->priv = priv;
+		pll->id = i;
+		lynx_28g_pll_read_configuration(pll);
+	}
 
 	if (of_get_child_count(dn)) {
 		struct device_node *child;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
