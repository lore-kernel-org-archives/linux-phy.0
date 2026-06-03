Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 141BACD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhGUyKlYQqQfrRWaUs2S7P8w6AGQI/yKsbUYKLdTjJw=; b=QCPhHFaQE5+u10
	ImrdPIgnkSvjzXerseP/IZUvOY+3hvr2j4/K1sdh4lQdYvkk6BOIvRG6DKiRsGgr0D/JFL+Vsz6no
	x0rDWgqHqauCW8LIMoDEJ6gKJLIA56l7ldl2N8vdF3embEvrwvM6SU74nQwQTI06YDx2bzpNK6EmI
	rSiNVmWMydnCjNyqSlzw/yDqELjjUg3wGgXbZRxZyf16rVYkmmMd12X6kn0couoAn6EhwX+0vhuKO
	suSSAlJiA3/OjBBqK0T6ioN50fbQfcQLjYffKWLyiyvjFjhrI1pjtzjgwll/hl2rNa4ss/ViNPpr1
	ADYCTZxmi3vPsm/uTOOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVU-0000000FA6q-3P8j;
	Wed, 03 Jun 2026 13:19:40 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVS-0000000FA1L-2L4p
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s3ogvVGhJYCJTP0UNbaIpG1zmuPqpxpkbaoWI9ZKJst9N0eTz7/5KlLGAzoMhMh411zv66N2j6d+dDw2jcLm3rlQrxStbMCTE7EpBGB56GzvXJFd6ngQozfrPQ9LjW1dp5vlTNzjGtoozVIqf9gL+kus80Rc6KDQlkmLmVeYB7Mw07f7lJzLUbFmgQC7+zC7/PBX9HrBtgK0Ya14BY/ZyruPbb9Nrl3arLfxW46NwjEqvXs8omK15I19fcrPYAh3SW1ydgIGl6HeO1uf7Fqp0d6T4Hs4mL4kA8CNt36Q8ZyBRRgBfvcySSBGLXfzu8sN1Ut97f6xSH1YptJYQ6ALLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hxYklS4oMoIszlgsN68sh3jnMBHQRnT5ezV1MABY460=;
 b=btYsecJUNoBHUeP1sccDbC0oCMRpmkOssTK1Jv5tkPbu32FP1iU9rtFnvK0gax8fbIywC3jUEObLLbJQfm3qNIV5ZFE5o6VVmJ9D33kxYa1oeFzoUiTUvPmCwlKFFpeptjKr7Rjy2kGwGmGDwAuLOLuPmKUBUOhiSa36jTN1LxvMkQB9e9XEX9rMfijmRdqOoMBavPl3Ly3VuTt0ahWlbDDG4p8nKmgwiIOl3bdGhh3/Qosup/ZF49nBMWMHSdllspyLYIoD91gxkurwJfBZE2Znzi38iAdyuKbA0xvMwmG8aPuRqk/VXR/U9fGjobWvk9f6WiAlJO7HlFmGIEUTEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hxYklS4oMoIszlgsN68sh3jnMBHQRnT5ezV1MABY460=;
 b=UI5lQj6orffy0f0brjEI6pyHD9nmXnbKJWem+pD5GmDqmDKNHgDtsFQXKYaOuA8dhPCk3XfNHPE9jme4uqp5K9ztt3PXrt45pX55GT/Trb3H3wGgZRbz2p3vJeTSESEL5I6RwaHw3iWXNzYlINJ4V7Uc29aMv9X3DyJpaNy+0/xyj1HzYxUi8/Eeq3+DR4/tleUqMhVohnE7W5OkD/F5ofgrCcFzkSqsVrszffCdtuIPjOlYJbiBUyQ8V+Stwzu6nHxv5Ou21zgtsUM6te8+k/Tu6hMW9ME4vykbUduTmSTZpFO7dIc0i5nLJYyN65EVydoj5CAM4sxsjCNl9h0Q3w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:34 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:33 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 06/16] phy: lynx-28g: generalize protocol converter accessors
Date: Wed,  3 Jun 2026 16:19:04 +0300
Message-Id: <20260603131914.503053-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0044.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::8) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 90bffd3c-7bc6-4070-f14b-08dec172c0c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: fDS4nqcXNd/Ufi5s9wR1uxHorH33YYG0m6q9cmx7LBMSax1bJdq06dBjAIcZVvZK/fXCIW0QNXYLYAhnwad6brpO9jUgAdMYiHGS0TaF3908fWcqYMt4pkoh9zYvGbu0T/julPPvY6cBE66WPpe9dROQwtQbdPc7MadCZfSlzTt9km8Oq3z1mq9IUqV4gEZEPthm4fpoqy3+8SGE1EaQ61MV2g6QXCHlsbuKVIH/Pi16tvNcK52vQu59qmK3AT+zcZxtjjgk+KnReZvJL4Pcgwqqf/QRyoSegKBZ9/L59Xphs0P0n0qavhaibLEC9Pj6ys7qxPDQThxWLKM7/QMjlRFvvMuhqVa+B7QuJUsEFQEa0HN1etwfz92OVePCxWwdGr/RSinOpWAABmnRyQfeMUPsykJq/e1gqlOnKSv5N2d3tGkAQLIh+AkoEguniriTkiH2TF8pV5rDyxWic8lM0QnO6jiWoXVw+q1thBjfpLx5YtdAeB2TBU5iAujT4mhhrPqDlJgHF36mYEtHOPq80MhlNsHsJ+OK8ja1O/Yl/b/UFE4VFY9avK7/vYc3WCG6L2U2ruUqRVw1Cs3DH9vnk8Bd4pJoUEzfXBe1EgGFvysDG/z4ylBS27sZLdp70v8D5UATmTVWvnA4MHp8Smt//nSDwZAfLtJCg1cO56H+jLPUbFYClIV2mJQ2b6V01TsS
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QpNcE5nY4JBUKNiXIdt2L5w2N5krmp2QpLRR65rrgOOOY99VrI7CkSVvUh06?=
 =?us-ascii?Q?ATCDXfrLDABiD4rhyMHZY+NBfUOxItG+HpRnBs2hSM6MFZAwOM/hjQB8rNR3?=
 =?us-ascii?Q?+s1gUhFOd8RycpugwZUFUAUIAhJZC+W/nQybqGTE8IRM/7SAlTJevmCJ4UoF?=
 =?us-ascii?Q?KWwBhaWhuTQN04lLQwPXlSVsD0Toya5YS+K3mGos1MzDIogHY/cjQFk/Xsiy?=
 =?us-ascii?Q?hY8hzFQNtzARKTCV8R2Of+U+AkvlffTHgTWePmyovcBqlebv8LseMsAAkZPy?=
 =?us-ascii?Q?nw/KnUw20fk7gymhZjlkngyNdtQh0s0ochxxPJNCcb4XvbYVAqQA3xkG+Tcn?=
 =?us-ascii?Q?KXJ3hE0iKRm19F35QCB078+0WlF2q5FNRYKKDHB7ohciZ4uvG2vnxzgVp4Uz?=
 =?us-ascii?Q?/5pR6RLE2/0N/+35DdTVtsx7MgieODcCOE8t1moIGhXzePGflLKD5yYoWlHu?=
 =?us-ascii?Q?tzs+vBUSHy6wtQFHi3dfP3/FAkwVsDEh7I9AmHjinv11YVgrG4fxh15NS231?=
 =?us-ascii?Q?QNiMzundAH6qXYIFVdCvtBzsxKjHkdn1QVDx9KMTNyOuzlplme7SPL2r8aeg?=
 =?us-ascii?Q?+PjBSEjatjMRFjibB74JH8G6N8I/mJd5IwNh0WWpfjnJnxd5iMhZtaDip3DS?=
 =?us-ascii?Q?GA0pFjS7fPWGbvqiwA9BFGJePqoTp/25IBrIsx7xoH7PqtVOgbk3wRVaA+9Z?=
 =?us-ascii?Q?sIOObSJ3d9rc7dqKA8ZN4a6sNTaHjWy46+hWhmXHc/skcIlhfcWCe4W9sKvO?=
 =?us-ascii?Q?17zD/ljV7qg926ckdXn89VL19EVZ3D5J81vAdUA7cIaHlsbOANipByRX57/u?=
 =?us-ascii?Q?To5ZBPYg31hMzrmxjbzvJbRucp3rXMATRLDBDhok+Gshxq9ExV5VNZLhy8ID?=
 =?us-ascii?Q?Y7L2KtAcjzdlxpsKWyrvm2WzV5fVzBL4sM5qvuLcHvXLavmgvw34NMwkjx4T?=
 =?us-ascii?Q?WbESEich7NeNMdQVMAkghaTor8WO0QC4eCNuNHLyW6MdKnxY8jxEPz304TnI?=
 =?us-ascii?Q?BUdwa7rnnTKFzkLKd61rDSqlNLIHlcrTJtWc2T4PnYDIA9q+xHSdjgOEo32Y?=
 =?us-ascii?Q?LAgTEhriTTJgIItABFgMntXMDF/mAB76JMPCDrCHKWJ/lmXhVPQfmpAcuscP?=
 =?us-ascii?Q?cWwWQrs0IU/tedal0gU2tbEgrLXTOH08KEWBSSzIgDB1uhe+yrPyZaBRFQny?=
 =?us-ascii?Q?QjgLRuYGOBkHGrkg5MwH/abBs2LZfLy6dDxOeGxYGIcZzbRRjgaTHHT8uk08?=
 =?us-ascii?Q?zm+nEnLB78O8NE72Ch7FqI5CZ8KljilYlLddXjjzlvAiQCPsjWuVkmIodIV7?=
 =?us-ascii?Q?knHDM1DVRGoo5nyUT0BfN6wM8cg8FFNYvr01UFGM5IO+IpsE5PR9ejNrIofN?=
 =?us-ascii?Q?S9A96Dbzk23iu1L7Uf0EeqkLCtHvBKhyfggXL2VPrRK4T0ynEXhP17fSHRnB?=
 =?us-ascii?Q?33kg+Y+U8T3YpogVsUXocmxGL2+frIaoum/Bw7QIi/vRPtLhrlI2Sh0gd3pq?=
 =?us-ascii?Q?ARR6RSydXEorPGOjNEJSgX4lIYeNvq/OWCSmcFBwuclyNTGnnaEBMXWcOlrJ?=
 =?us-ascii?Q?9b8BgIBg23dpIUO4at+g6qht4hLNSNhZMTtGzqfsI8MpC0s2dzAjxSuqXzDA?=
 =?us-ascii?Q?621UatzHa+dXvu13wtHi74i3uukP9Wf6dxAle5C5PzClgCcg3P+T8dG4fG+p?=
 =?us-ascii?Q?GyTU82Ph72hELFNXqcQI7My5yhghgnzYw+kT5ImIBMiOELutqez8mUlNcrVY?=
 =?us-ascii?Q?v58PRRvJcQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90bffd3c-7bc6-4070-f14b-08dec172c0c7
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:33.9065
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SWatDixcdY4Gj5wpiOSA0Znv+d3cIt1AJ/YyGlm++usYghFh2JuN590yVYcP1MmwTkM6/lqToKemC3sxjaVgBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061938_812547_C9EBFED4 
X-CRM114-Status: GOOD (  14.24  )
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

The protocol converters on the 10G Lynx are architecturally similar, but
different in layout from the 28G Lynx ones.

Move lynx_pccr_read(), lynx_pccr_write(), lynx_pcvt_read() and
lynx_pcvt_write() from the 28G Lynx driver to the common module, and
permit each SerDes driver to provide just its own bits in order to use
this common API.

Currently, that just means that the direct calls to
lynx_28g_get_pcvt_offset() are modified to go through the
lynx->info->get_pcvt_offset() indirect function call, and similarly,
lynx_28g_get_pccr() through lynx->info->get_pccr().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: none
v1->v2: adapt to lynx_28g_lane_remap_pll() prototype change in context
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 102 +++-------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  90 +++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  13 +++
 3 files changed, 115 insertions(+), 90 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 5c473d6c233e..1de663283faf 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -269,8 +269,6 @@
 #define LYNX_28G_LANE_STOP_SLEEP_US		100
 #define LYNX_28G_LANE_STOP_TIMEOUT_US		1000000
 
-#define lynx_28g_read				lynx_read
-#define lynx_28g_write				lynx_write
 #define lynx_28g_lane_rmw			lynx_lane_rmw
 #define lynx_28g_lane_read			lynx_lane_read
 #define lynx_28g_lane_write			lynx_lane_write
@@ -785,124 +783,48 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 }
 
 static const struct lynx_info lynx_info_compat = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes3 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
 	.first_lane = 4,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
-static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
-			  u32 *val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_pccr pccr;
-	u32 tmp;
-	int err;
-
-	err = lynx_28g_get_pccr(mode, lane->id, &pccr);
-	if (err)
-		return err;
-
-	tmp = lynx_28g_read(priv, pccr.offset);
-	*val = (tmp >> pccr.shift) & GENMASK(pccr.width - 1, 0);
-
-	return 0;
-}
-
-static int lynx_pccr_write(struct lynx_28g_lane *lane,
-			   enum lynx_lane_mode lane_mode, u32 val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_pccr pccr;
-	u32 old, tmp, mask;
-	int err;
-
-	err = lynx_28g_get_pccr(lane_mode, lane->id, &pccr);
-	if (err)
-		return err;
-
-	old = lynx_28g_read(priv, pccr.offset);
-	mask = GENMASK(pccr.width - 1, 0) << pccr.shift;
-	tmp = (old & ~mask) | (val << pccr.shift);
-	lynx_28g_write(priv, pccr.offset, tmp);
-
-	dev_dbg(&lane->phy->dev, "PCCR@0x%x: 0x%x -> 0x%x\n",
-		pccr.offset, old, tmp);
-
-	return 0;
-}
-
-static int lynx_pcvt_read(struct lynx_28g_lane *lane,
-			  enum lynx_lane_mode lane_mode, int cr, u32 *val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int offset;
-
-	offset = lynx_28g_get_pcvt_offset(lane->id, lane_mode);
-	if (offset < 0)
-		return offset;
-
-	*val = lynx_28g_read(priv, offset + cr);
-
-	return 0;
-}
-
-static int lynx_pcvt_write(struct lynx_28g_lane *lane,
-			   enum lynx_lane_mode lane_mode, int cr, u32 val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int offset;
-
-	offset = lynx_28g_get_pcvt_offset(lane->id, lane_mode);
-	if (offset < 0)
-		return offset;
-
-	lynx_28g_write(priv, offset + cr, val);
-
-	return 0;
-}
-
-static int lynx_pcvt_rmw(struct lynx_28g_lane *lane,
-			 enum lynx_lane_mode lane_mode,
-			 int cr, u32 val, u32 mask)
-{
-	int err;
-	u32 tmp;
-
-	err = lynx_pcvt_read(lane, lane_mode, cr, &tmp);
-	if (err)
-		return err;
-
-	tmp &= ~mask;
-	tmp |= val;
-
-	return lynx_pcvt_write(lane, lane_mode, cr, tmp);
-}
-
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 5e5bcaa54d09..f49d594622cb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -87,5 +87,95 @@ struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode)
 }
 EXPORT_SYMBOL_NS_GPL(lynx_pll_get, "PHY_FSL_LYNX");
 
+int lynx_pccr_read(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 *val)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+	u32 tmp;
+	int err;
+
+	err = priv->info->get_pccr(mode, lane->id, &pccr);
+	if (err)
+		return err;
+
+	tmp = lynx_read(priv, pccr.offset);
+	*val = (tmp >> pccr.shift) & GENMASK(pccr.width - 1, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pccr_read, "PHY_FSL_LYNX");
+
+int lynx_pccr_write(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 val)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+	u32 old, tmp, mask;
+	int err;
+
+	err = priv->info->get_pccr(mode, lane->id, &pccr);
+	if (err)
+		return err;
+
+	old = lynx_read(priv, pccr.offset);
+	mask = GENMASK(pccr.width - 1, 0) << pccr.shift;
+	tmp = (old & ~mask) | (val << pccr.shift);
+	lynx_write(priv, pccr.offset, tmp);
+
+	dev_dbg(&lane->phy->dev, "PCCR@0x%x: 0x%x -> 0x%x\n",
+		pccr.offset, old, tmp);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pccr_write, "PHY_FSL_LYNX");
+
+int lynx_pcvt_read(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		   u32 *val)
+{
+	struct lynx_priv *priv = lane->priv;
+	int offset;
+
+	offset = priv->info->get_pcvt_offset(lane->id, mode);
+	if (offset < 0)
+		return offset;
+
+	*val = lynx_read(priv, offset + cr);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pcvt_read, "PHY_FSL_LYNX");
+
+int lynx_pcvt_write(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		    u32 val)
+{
+	struct lynx_priv *priv = lane->priv;
+	int offset;
+
+	offset = priv->info->get_pcvt_offset(lane->id, mode);
+	if (offset < 0)
+		return offset;
+
+	lynx_write(priv, offset + cr, val);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pcvt_write, "PHY_FSL_LYNX");
+
+int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		  u32 val, u32 mask)
+{
+	int err;
+	u32 tmp;
+
+	err = lynx_pcvt_read(lane, mode, cr, &tmp);
+	if (err)
+		return err;
+
+	tmp &= ~mask;
+	tmp |= val;
+
+	return lynx_pcvt_write(lane, mode, cr, tmp);
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pcvt_rmw, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index b726ff21972b..5cd86c9543cb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -4,6 +4,7 @@
 #ifndef _PHY_FSL_LYNX_CORE_H
 #define _PHY_FSL_LYNX_CORE_H
 
+#include <linux/phy/phy.h>
 #include <linux/phy.h>
 #include <soc/fsl/phy-fsl-lynx.h>
 
@@ -37,6 +38,9 @@ struct lynx_lane {
 };
 
 struct lynx_info {
+	int (*get_pccr)(enum lynx_lane_mode lane_mode, int lane,
+			struct lynx_pccr *pccr);
+	int (*get_pcvt_offset)(int lane, enum lynx_lane_mode mode);
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
 	int first_lane;
 	int num_lanes;
@@ -87,4 +91,13 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
 struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode);
 
+int lynx_pccr_read(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 *val);
+int lynx_pccr_write(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 val);
+int lynx_pcvt_read(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		   u32 *val);
+int lynx_pcvt_write(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		    u32 val);
+int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		  u32 val, u32 mask);
+
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
