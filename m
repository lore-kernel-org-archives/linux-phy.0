Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 006E6CD6E6C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdJ9mih3H5ASVGjO/haFJDtQHLsXToSbB7MwonWNikk=; b=vDdg6EhcYSJUrH
	OR8A/vaaMB+AMR3fsxs1CTsB0DAhofLFPFD2WvEcwgT/fzNmLd308O3CmxOFgCDLAJdLNzTW2tgmc
	6FY8fU+B2gI0hkTAgeAhuSw+ghzeAA/915Cjyj0/OjMUR8phrkDZV0F4xzXG1jannB4+OhaNHFwIH
	wCuEY5Fj8QWLaYWQmVC7WHuHj8NDZ8SWb2nDT7jJ1T6Aiw/x3ZdLQlV4uunOnOzDDJIrIqjAwALLN
	gtjdBYEpyOASvRs1jnn6z6wN7FG3caTZ/AD1as5/FoilGVeDwTinIn8qiOVpWGQ5s7QMqhyItcUSd
	g2UeguzNgl9b3SufuN7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVS-0000000FA5o-3CoT;
	Wed, 03 Jun 2026 13:19:38 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVQ-0000000FA1L-3JI2
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HFggk44h5CEpSA9RqoBxaT5hwQZk+SktICVSBvrRBcO+1NcBrt/jlZNZKimc3VbbtIOO0SyfEgE1Rj2ihnTp4IHNcPyVbm06GZFHNaobrfZrwcTxCvZ9auXAqVl+nh4vXFyr7yb06XSSBuxt3SqJ9Xup4IRindyec4faQFtxFOeAmi+5ldloRwGqH5GQ2ObzDTfe2CWp/OiI7/6OWfhkd+PtiI40BXUjNwMLwHbk8eEyIbNaMSwPMIBfx3/umN1TdrJPt++Qrih8adHWsYPe7+O6KFQRKrUpE1/thqueMbcycv7F3hVsVAMsVLNixG7oBsnccwyFeeu4ysAeU3KcqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R12xHna32Ce40M+qSlNyLqUkwi5ZcdNUOFpIheIJ6ck=;
 b=ebMn6UbexIoankmrVlK0eqXTNyDSNmQPQmM2VTGvApTRx2BK7JUlOq3qwoSf9Rxq8PRNdmPmmXNMeYgyhVFist8WGvXdFdFOVLWUmqx6o2jOYLbg7nXO+vNrzMtUFZzsM5Y+wxJRKR2J8lYCSObMe8IkB3XE/kzUVaDBlZhJgokd/FLyDSwQ3dk9wRDE++ILgWEkXgyHqY3ufokKxyFXSiDZglsgFFmtoLStzkLuUpaqnpMkfxplWjlyWOVjga8NN3S6nOe+M2vEJG64h0taLmLL3M1tkSRKcQCjQJLrZilV9z46OZT2N2PmLd3AaR2B9+j5z5tReNIJk0M3a55ckQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R12xHna32Ce40M+qSlNyLqUkwi5ZcdNUOFpIheIJ6ck=;
 b=cIx512iT78JGaSqyOlnnBJy7g5G47kKoYpAExT1SUT5f3L5p5Ej4Tt0nUYQUWi9juncrDb8P7aiPripgbiyOuI17DC36eVzcPgIGY18uj6D+T9ucs0PFdgUqLj64e5sdbzHWMS6iy7IqmZcZhQnYcw5VA78hZnB0sqe84X5JMiXlGiYVx2uH2TrwGTC6eY7tVHkbdkE9VSrK/eVnKmMzBHr/uH5b3CQZwrqE6HnFWcNDFkgUcACRbHVahvbVKhpY44jZIDPme21w5SNXlgliMepG9TmNPOEKL9xLaZtVHScfmBvzhLtbzZfFsnBAvYNVWlBtBqghGAGF1tbHW5ZIaQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:32 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:32 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 05/16] phy: lynx-28g: common lynx_pll_get()
Date: Wed,  3 Jun 2026 16:19:03 +0300
Message-Id: <20260603131914.503053-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0042.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::21) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a068658-6adf-4dae-d1c1-08dec172bf8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|6133799003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: C+ktW3/HmQAKlFKSM9boWzVQUym90kdCO36PgH4eKSJQNynX2iV8LxaHt2of6C7tC3ffTIoqkyBF29wgDkUIm7clpLPuNvGqulMjoSETuuqq4TEJj0tefdU0z87NjaMKFsGh/JhzRzbL694Gg731jFNOiscdpnC4JKJXpBckg6cfq3SEpvCcS4OtEDsICKf3rlbWsVldCW6jFZ5NyDno9Fq7R9VoNgNF73qYGZm5eWUuOsMc85rU5OJww3R0fSc7Yu93xsE27olDWNG+rLXl37uzG8E+GyQoU4fObqXPkXndKChUoDj/792U/Lwa9RCzWPog9N+1r+Ma1+c6l66AsM2eB6Xv7y08SkDTZDVoWWHLmiMvs+blpJqzNBNy8trnn6pbO1lyh9n8EMCct6HiAJrn11xxrLJm9l7jGOvW90nkqyipEbbOMbAVN8alcHAgqIqtAyUOM2p7kDEMvxCsqvCw5wQEmo1Ma5lwAviULPg91NcqCxr5V4YyB4HKKIy2eFZikIvWOREI9CAoDE7bQGhDuiTn78D4qgRGohCVrlTbWk1M138G4r1pTkE7pxHPYZwH0v6HqDGyhUTf6t/S9UQRObYkuQqE3rrBtTD6W2KPGVk+aVSzR/F488wMm1d+lek8GuTYIACol306oqHx86asrXb9I2WAgVvoBwNk7jS/comK+mAj4zNc/nnlASyB
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J0H9ilrYEWHfiTg87Eh1sWySfhsgC8ZWAKxNM0Cz9eeaxDrUYxCOWhFpaFaO?=
 =?us-ascii?Q?WeY915OYzvSl9NSYn5qyJp+RVoybDkxAnO8ChhxiWUC2UyN61TuuCQvsSOM1?=
 =?us-ascii?Q?Bz9PsKzFU/yg8po1oaMEodD3fxiXhO4T3srRaXdSO8byZRIG22vt/aInutgE?=
 =?us-ascii?Q?5k4VWewMhNU2y0LbcbHU2P+pQtpNiQdCbdEmlDSXgUXS3Mm+Ed8vsWAZt229?=
 =?us-ascii?Q?9VBFpIJaEpfg9wBvJHDf31QtyQgocdfc+zEysYfuqVzyuSCw236yznqWcQ49?=
 =?us-ascii?Q?IiVzbyS0UPMkzN+ONLo2+D6XYUgi+OQTJqU1TTY6SXLFNBFldUC8+GTadvFy?=
 =?us-ascii?Q?Z6P9zFDofvkKGEOjztn4aITCoIKxQ5sQbuvVB9TjH7zhoXFlmrwDKI6AaSk8?=
 =?us-ascii?Q?6x3pcppLE4VKxSXxJ39Bfb8vIQUdzoSL2Dion2+TMTpic0GWbj8kN6Vywt+c?=
 =?us-ascii?Q?IDfiAmZ71Ud1XEV0CWxD/Ipd2z61hZ2CZI9yNCIHUXLH5G/S00iYTmIU2Mi5?=
 =?us-ascii?Q?Ocb/7eslkCXMACTm7xjicPFV7gVhumJs58T/Eqti1NEjwprA8K9IrLrPD/di?=
 =?us-ascii?Q?P9bIY6H3DUvCVvWnvCN9llzrqz6LDGRg7kBXykd74QL9Pqvm8C00SNF1Fz5L?=
 =?us-ascii?Q?hLYnBloQVfFNutz5/NBP/c64u/PYv/6KvIMtl5WgEnsPsGfg3Tc5GrYW0IgU?=
 =?us-ascii?Q?cHmrAscRZSZtl8Ec8p4pDeH8PuvukkE/wT3NOaZaIJnA9Cx+iXTzQ5eRcRAP?=
 =?us-ascii?Q?H8ECKjuVOB9PwHHFUBg3apT9Lu8/EUvFg08M+4keML1RQReirKVO2Asp/5qW?=
 =?us-ascii?Q?Y5JaUYEH5/TXwbVWDtOlO/ej03ktQ4BHSlNKwemdISeRXd8QyW40GTgni1Y+?=
 =?us-ascii?Q?ZLGKuBPxie7fJg9SGGoRJGHXUlojpYJrYBE9O59RsPiMaCx0LBrAOCl1/G1z?=
 =?us-ascii?Q?2nfeLKX6ESv04YvWbjZoX0lBBrboVTXN7FkyKbApQrzm9nUekLlfmFK0KnOg?=
 =?us-ascii?Q?7vBTg5k9jy//orr7kV1ogxGpT4w032i1zBWRxgktbqOLZBy8i/nrfqOPzzYr?=
 =?us-ascii?Q?XlLAGHP3wF50T1V3l/gcXf41B6L2nxpETcMrjXfFtHqPyGeiitiS1tzdMHW1?=
 =?us-ascii?Q?OTt10JTHR+B2Ve9AAJl7dsv5zsZfSIPef+BZNOLCFwv4pmolKYmjusryry4U?=
 =?us-ascii?Q?MExLSmMiq+XR4KCWMt2tCS/9wdVExL1O2URtfqatx1IzSezAKXGgK85gi/cC?=
 =?us-ascii?Q?L1daX1Yb8ZCmQW3huUu92xS6AF5F9Y1Bl1DrCTr0TxNGo9JXTqCsC9Pi6Nad?=
 =?us-ascii?Q?pl/LTuKTkKLSanxtq4R0sOMz0B8vNyIphRa08zhHnNsLDP1l83qkd5NuDbkk?=
 =?us-ascii?Q?VrG7lqalcT0g2fVL4g6dLse6h8hc+rsKHMZMwl07BDcQx1GD2spHRj0iAhQa?=
 =?us-ascii?Q?qtMYhnE0pIAy81gVbEiWwHpHVDH4KvOkhdIe3tlfA1zRlMAG4dlUGNArm6sU?=
 =?us-ascii?Q?M8e78UugaRIU2FKWmeCL+cVMDDnuVeiv3L02yzDoxp12hr7Yq02hMVNg5C6N?=
 =?us-ascii?Q?CVmxyaNIWZiJYQpkaJNI86hKgiOngw89cODqw0x4Mrx/gWM4FIO8/MZIVHZC?=
 =?us-ascii?Q?TJ3iW1XDTgsdt2fUPIRG9jXLMMP2XaY12Z56dfwECUsd8A8buoM17kd1jgxj?=
 =?us-ascii?Q?I9IpGA9ciead08FC0QyOphiya/kyRvpHK02mWVcfBKw9PbI8NXXdb21o4vJe?=
 =?us-ascii?Q?0PmDO2ubfw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a068658-6adf-4dae-d1c1-08dec172bf8c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:31.9797
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dN/FDeQ+NExixbbIgA7WYLtPcCjZyx2OPqkr+giIGycchvFaDVFfT+7OSTkc0ATShPZbR/ywk95JRMzVZJ7x3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061936_829344_91332354 
X-CRM114-Status: GOOD (  17.44  )
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

The logic should be absolutely unchanged in the new 10G Lynx SerDes
driver, so let's move this to phy-fsl-lynx-core.c and update the 28G
Lynx driver to use the common variant.

While at it, update the call site, lynx_28g_lane_remap_pll(), to use the
new data structures, and refactor the NULL pll pointer check (the
current form triggers a checkpatch CHECK).

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: none
v1->v2: add the drive-by refactoring
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 34 ++++-------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 24 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  2 ++
 3 files changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 570fa74daba0..5c473d6c233e 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -467,30 +467,6 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 	},
 };
 
-static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
-					     enum lynx_lane_mode mode)
-{
-	struct lynx_28g_pll *pll;
-	int i;
-
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		pll = &priv->pll[i];
-
-		if (!pll->enabled)
-			continue;
-
-		if (test_bit(mode, pll->supported))
-			return pll;
-	}
-
-	/* no pll supports requested mode, either caller forgot to check
-	 * lynx_lane_supports_mode(), or this is a bug.
-	 */
-	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
-		      lynx_lane_mode_str(mode));
-	return NULL;
-}
-
 static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    enum lynx_lane_mode lane_mode)
@@ -927,15 +903,15 @@ static int lynx_pcvt_rmw(struct lynx_28g_lane *lane,
 	return lynx_pcvt_write(lane, lane_mode, cr, tmp);
 }
 
-static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
+static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_28g_pll *pll;
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pll *pll;
 
 	/* Switch to the PLL that works with this interface type */
-	pll = lynx_28g_pll_get(priv, lane_mode);
-	if (unlikely(pll == NULL))
+	pll = lynx_pll_get(priv, lane_mode);
+	if (unlikely(!pll))
 		return;
 
 	lynx_28g_lane_set_pll(lane, pll);
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index de45b14d3fb6..5e5bcaa54d09 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -63,5 +63,29 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 }
 EXPORT_SYMBOL_NS_GPL(lynx_lane_supports_mode, "PHY_FSL_LYNX");
 
+struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode)
+{
+	struct lynx_pll *pll;
+	int i;
+
+	for (i = 0; i < LYNX_NUM_PLL; i++) {
+		pll = &priv->pll[i];
+
+		if (!pll->enabled)
+			continue;
+
+		if (test_bit(mode, pll->supported))
+			return pll;
+	}
+
+	/* no pll supports requested mode, either caller forgot to check
+	 * lynx_lane_supports_mode(), or this is a bug.
+	 */
+	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
+		      lynx_lane_mode_str(mode));
+	return NULL;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pll_get, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index f0cb3e805235..b726ff21972b 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -85,4 +85,6 @@ const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
 bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
+struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode);
+
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
