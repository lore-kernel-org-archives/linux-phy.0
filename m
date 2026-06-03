Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60BCECD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8fz9UwA0s/f1HQ/MaPWPnFkjdlxLGwGHr2Vh47DrVQ=; b=Iy5Qvs3/jT+DPP
	oZciNF858vFdXVktlQeN6QuRt4eV+lQyiVb8v+pd4wi1WIBbOjwV3yX1VqZKLWNkdQs9ACNaGJLoX
	KyqQ506u+xDp/S4Lreq9S3QWQ/Yt8JNfKhafaq6tLavqbW5jAUHEMF62/OvchRUfolFRI0jtWPUI4
	GjAmCVSYjosF8OLLbmxDASRMYpoDuTVdVyXPH+kyDxzHY+ap77rw9JK6QEKNqJv9norFhUoVovR/o
	uvhDF5o+Wu4/ZP6f+Qn7SiNeouAWVAS7DiRvrhUkbn9V0HqbnBzp2CwXd/8YF/b2c3C4C8jb+/l6w
	FXSKm3Ax0dq4sNyxDNcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVa-0000000FA9J-0TBi;
	Wed, 03 Jun 2026 13:19:46 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVX-0000000FA1L-2Mdg
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aPkgzC8G+aFL+w3KbzaBL1SL6Y4cz1SSlQDJriYN9zfGM7+thacpVQEZ7bX5z45lBCwLIvCbaUPrkp2aIEyv8tSHwVZd18+3MYCesoSdT/XO91HU93yPG6eSjhir40BeIYYEgnNhtoSBFFd7+CL0SNiV448yHxjcBXtWTazciBCvGSJu5sUw6E2jx2lzuUlKe/GhaGCrJoKnwgzH9btwLLZxy60Xl8KwLUtl6po3u0UQZvEM5XFlnDlM3bSdrSaM2yLyPEqlunieFjvwDxmZkj3+IKukN13zRyKAT50iMlr9wJASyRLHoXmX3HmPaD4e9EnDL0XgO7mmXCwuVqCSdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZ1p840zfo1U2wP4ZXJ+sXRFYxwuwozuXhrm6+lhVKM=;
 b=xYTHQzWhUgrBkaTX+T3Ldc4IASoCTfDe/XzLttgWFiuOoEq9BXSpGLKHAJTFnlYXwMX8QjdE8eTSTunT9dJYMJHG2fDzHwJqA+js90VIBJ6XScU1K+UL3mGnDxjLDu0z7hdeLypBmn4AeWAhzb3WubZn7bI7rbuZDGXvvi9A6eVtLflAwdfFF4uPaWmzJpMPDSoUQ0bdb9LXHVuq0GAh4n9cLn5VNifk3ZhS+h19HodHz2yc7BdvY9fxrjQU28n1wHFfNAD2dhl8HkokD9+VdnXiIvUNVpjI8GwLvJbSYebh6DVynALbIbGtDRXPXtTl6ZioeuAsDRhoH23tS0rjsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XZ1p840zfo1U2wP4ZXJ+sXRFYxwuwozuXhrm6+lhVKM=;
 b=OHnqNlzYneRBsBoJ97o07RPVoAHJTgkMTN5TZgohvyAG6H1Ap/YwdXwwLNIWb2kZmHr4oQn4AYnWcy/721wm0kyexKhHMyNycf2Ie4DqasaA+JpSdw3E+WD9JoYErwfwkiiZITvAbqmGDSUUpMbv53HNUuhDq0VYwo69fkaoaeGGPHmNKjYT/4J9SxQxFO/q5USe1Uu/1oFgPk7SBp20AlmagAC8KtJIZwAsTPAO95kcYXjp+TsBURUTi4+nmYWBFUBh2tZAa23T2SAiJp7Z5aneHGEwprbbwjfp/d8NGOiQDgjuuCMfVb+VqxNxhTBaFxeFN/pLNyy1G+njPkK6Sw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:38 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:38 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 08/16] phy: lynx-28g: move struct lynx_info definitions downwards
Date: Wed,  3 Jun 2026 16:19:06 +0300
Message-Id: <20260603131914.503053-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P189CA0030.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::35) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 78c0df45-e6cf-4c7b-b2b8-08dec172c35c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: FQzkehMrNsWWunV5B2p4xzNpfDy+kAdr3+QmRpcvwL0qYsuYkNtrf1j2lsFHr29fYZjupUnOxr68AMOmE+W9H4B9AFzuKOnXji/RMHyojVWqtr0DfhGHTYHB8d6IIZ3AvN7HchvhrDN8JCTXmILzFW+Q9Th+kzQw7wxl36LzTxlaWHpL5bXTUgpzwBbpBm6TbVZBOru3nyYRs5ASaQhv8XUBMxdMTz3OhamUIf4hjtAswiTlb5xGgOgNOK4XGI54g6ZIsh51iZH9MdYBRjHY5e0p/qS4yoRfUFZypAuShvI0HPI52ypmDqTSvrl+sl1Sql0bLELd1kNarbrRLiyM2BLFFTdjY0dKxUphes7OqWdQ6k9gYbkTzDKOi9Xzhifob+s8zxitIwSLIlkxFSWMXUnoiFREWyIbZ2lnl4bYZhNmxv3t0/MiA5vmyfmhREBzA/m2bq3tGU8UQHpVGkSkCqSrYLcgLEj4YI9FolwbLFbWpBIvT/dXI6uh+T7vTFkREEC0keoytwrQS8ZK9Q4pQ9L7lt8Xyi3GUMmbDLLQBvA+Re+53gBl1tA7eId9BwLXapsTpUMNJzRXvne7aEGHdbHHYjyfQcGHKOC8BbP5pAGziZcCaHgYSPuiBJuGHvs7vSAbQAxGUwcg2MntXqrVB2F4YA8gMV0aUFd7fqqt5g3u/V3XRAXhkoZjBYSgd5MS
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HkBnGr6gGOHblmxJwNk+zsYZYme//+DYxw7UTu1F/C2le01euw/jFnj8/Evi?=
 =?us-ascii?Q?puSDWrVVK16g/sGzOwi/ehKgsRIFlQz/GIAl97eUrJW3pz9ix6z+QWEretdT?=
 =?us-ascii?Q?RmJJYsx9f4nD/NeAHtWWUkRyJqvJzI84Auknku+CV2FkRn7EIbQ5y+KOT0v4?=
 =?us-ascii?Q?mgP7NWEHZwlLHqTswBQkT0zlLyOwS0H876Mg99//swul6PLXU0R3Ff4lfTTt?=
 =?us-ascii?Q?cqQNo2NXyO2igEg0MbjCPixJmNXYQY592XEx3isBUWtPQ1T4aAH4hDcshcQ1?=
 =?us-ascii?Q?ktOH5ek3W1EMLsZoaosBLrYYxf75ZWStnyod2dJRWxEdifcUxugMB38uHn1j?=
 =?us-ascii?Q?1kWWerds9W2oqmt6LAhkhi0JRjU9uEHdyevHvJ3mH7+2RDdttTeINfqxjzI+?=
 =?us-ascii?Q?6CHLnvZJRjmZOkVDN6NWOrsq0eg3lE38U0+dzPEZjf+sV1RibcxPlnxfkiJY?=
 =?us-ascii?Q?tf9DUIutiglbvWuhxbH1hJkQflbbHVwMsnK4cwQhPzCoowTBzu4Dy1X7x42W?=
 =?us-ascii?Q?bEiAPvI/op8RPwRZQutaJqIlIyWs4k1orzRx/FbXkU5l+c4jpVB9Fu98WEUA?=
 =?us-ascii?Q?l8+mu71b3FOdN3HCRpA216zH9sEBqbR3luNv/dsMxegZ0jvs94IUR6qgNzXo?=
 =?us-ascii?Q?VlE3hFNEpUCyKB9bnVEux6y52goGl3vWOl4UFsmQsZzm13lPy1ODOEnf9qYH?=
 =?us-ascii?Q?FautFRbP7yJumkqrWJrOElOLlqgDFA7v77WZptHLPuIv+NijEcCDmhadjdVn?=
 =?us-ascii?Q?m1TbV8pJl/kGM2/KmLSKF9IjwmKPBqa+9z5ImwtiyIIMuxdDSjI/1cYz/YIn?=
 =?us-ascii?Q?L78NXk0K0eZSMFYa9JCKGzzWZA/2k0il38o6EQ5oBgWOtD1cvQi0q8YBsiAL?=
 =?us-ascii?Q?QYb+OUxCeVfaBPZPLKiGthPcEMxh+1HKIuAdk/jyLNh2KdamtoWGXdhovDGQ?=
 =?us-ascii?Q?2gwXMa50sInKTKLZxxj0XF7QSzz1X0ApOd2W4AojwEhz8nBP4BMvvUDvz+Bm?=
 =?us-ascii?Q?U6VIZ2SOe8gbekAbUXdKR4ql5zJUvsBPPV4EXJxlOOrbCeZ4JaPbIjytuWUR?=
 =?us-ascii?Q?Wwjp5p/KTk3J+YPn0glt9biwNY5paGzvmM+cxQtrKioy6BX5OMxGYOs+PQxo?=
 =?us-ascii?Q?U4OZO9byjowCfki0Ojpvjnt0KkRWi5ul5RUwnpdjSZEQMp4SskT8m5csZjkg?=
 =?us-ascii?Q?IZJ2y9SyEjAuZrNOlF6szpN8XrfSOnkTcA7cylDeFCKNoEBC21bOmZBsVjIx?=
 =?us-ascii?Q?CgdGMZz+uEGE4asP+SrOvSU2ArQOjppG2anc1PMQkYAT7LAlcGf8IQL0FPXL?=
 =?us-ascii?Q?8oMpLlPbkHBkf2qqp8rPNXBsJ7Vi+HiBCT3lkzCqxZE63pQ3dC89wVXxjR8K?=
 =?us-ascii?Q?R73htXhfYIRbm8MmVioiQ/xBF3jYmn6QvFWnEJnGfgL5Nv7JW3THgK3piPlm?=
 =?us-ascii?Q?/x3nFoSpolRLlnIvQs44tThLZ+CezIIY1Puv3htAJ7gWWAH7TO3fC9nOOH54?=
 =?us-ascii?Q?umTZPppFckrSILb/hmf2741kiH+KyEJo1tsDvvSOtDPWa59w43IC/ftynk4f?=
 =?us-ascii?Q?BN2ZMAqnHAqPwNGAqtFmxTFHcT7nyQTVYXAsKzLopvfUM35yA+lWP6yMuafK?=
 =?us-ascii?Q?CDiMN9hlMAM1zgll/cdN6JlLA4BoczzjiIFIQUGpzvZLFJzljD6hi1I7CxMJ?=
 =?us-ascii?Q?XSzWlWTSpD2MelrzNcVTZLAhqHNkjKM7U5Zk1JeEh2ZA2i53WW2sXITAYRsG?=
 =?us-ascii?Q?Ros5i2x3UA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c0df45-e6cf-4c7b-b2b8-08dec172c35c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:38.2736
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G4tcMcx6YSAwL0u6Birzayx4McSTxIxhTJ0bnpZpBAlF85wY4PDa9ay7+vhce+fowl84FZZtJ+qVr0xJBDBwmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061943_612009_C740FEF8 
X-CRM114-Status: GOOD (  12.04  )
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

We need to be able to reference more function pointers in upcoming
patches. The struct lynx_info definitions are currently placed a bit up
in lynx-28g.c in order to be able to do that without function prototype
forward declarations, so move them downward to avoid that situation.

No functional change intended.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: none
v1->v2: adapt to lynx_28g_lane_remap_pll() prototype change in context
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 86 ++++++++++++------------
 1 file changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 1de663283faf..a3fbd31d4dbf 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -782,49 +782,6 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 	}
 }
 
-static const struct lynx_info lynx_info_compat = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes1 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes2 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes3 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2162a_serdes1 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
-	.first_lane = 4,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2162a_serdes2 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
@@ -1248,6 +1205,49 @@ static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
 	return 0;
 }
 
+static const struct lynx_info lynx_info_compat = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes3 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2162a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
+	.first_lane = 4,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2162a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
