Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705DECD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3LlJ60JwH3aCBAODzkzuUp0OqeoGpjbFGrs7aVuiNg=; b=WQcRRw+o2J2vYM
	LMDd/totoK7oU7J59pp2jFYBaDjl9HVl2ZlbAf2mwVOvIjHgn2AZ/1YlJKKlxzuDhfz02MuIAQ0Dr
	JfWvtJrvOY01jQ2tWcZ0V4KATsJDyDtwErczjIiUaWJjiwdYU4v/dc/M7eoGFHYFLJ5caeOI2fcLf
	skx4Tw2FxKfWFaAyc0649+zyZ+xg/DXEeciRVu0hjGPnsnoarArF8lCPcszTg4wzLLCHePYzGcw/d
	/aKwyaxNYDsg/0WrvQMQTv5Z6TneXq9mfuV24RsHt3PmMPhWM213gzPhJjJSOXvFmEcbyYwDMb4dx
	yHmH7O2AljGtB6IBv9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT3-000000065R3-0bsZ;
	Thu, 28 May 2026 17:24:25 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeSz-000000065Mi-3QSL
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8cTd0KXKsqJSO9TD7inojAnHOIYPOJvgI9jWKMaHucrnV4MhHi7Sxt9E9qNSbP4dyUTxMZwaRN2uoBF9zoqIrK4NTMlI7D4Yb3F2a9bZuiet/A6QikgZds9Iq8vNv/UUcWIc/ABW2i47ZVxzBQB40AKzp6gfHUsJGdQeZI5nP1CTgDDdMmWT+Z9UAba63EroId6RTY8IpKr3JFaAoQGbnw7oQQ0+cuT+UNeBndp97/hGn2Wq9hDARLtHfNT3pWO13rhrvm7Xj6KlnrpY8PCDqmxJFqwIrgJ7K4OMLH0vzyCwTbBkcwqYVLNgK/uv0KccuS649Yi0+WQyhuTmcJtmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IU+eJRg6B8Qi8JV3eAipIdvlf4SNawkdol4kK9pByD4=;
 b=WuXPhCnhO7u+M0DoBAwwa1TFJhNyLolpDWfXCimdfO7pidsRYNAVTZq4PEJGiaiQyKT21TXpIBRL5wZVXJYBIHNOzKAkI5afBJzYvg/PHAJvzbLixG9mApatywlYu1Y5qRkT2kgGpiHx/TeNvPKUYBo+2Cj4sy6zjySdy6U7OCOzS0Vw2JbXu62jC16q3aFag2bQVV0sL7qH9okNyNZRM0gKLuTnHiYzgS0lY5Og6afF1h1PL3t7dM/UUB77DhyuOoA5IvEbGJGJTZ22q82iqmBV4D32dNtrt5uN2sX/7tZw9XdbIKR7exxA/54qxehJ/zgBTgJOSruwSOpgOXmuLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IU+eJRg6B8Qi8JV3eAipIdvlf4SNawkdol4kK9pByD4=;
 b=PMozb7XAMn94qOHaLf7ZkW4x4KlU0OUXhHIVchgG0HDlaQs4fkb0PWByaflqRCtIwLxGNZepHpgE8l1hJ94WSdHS6hQ4x6FzLIvLyyFOjaip20Z4WqwcyEZVrGJsrlMW0JhHMbd8jYJHsN26H+50arKNdarLG2IODclTUQWPA+g4ebLyykTg6eXpcbUHTD74H9Puzqsle6OmL6yWE6ALMU/0n7O+Be3btp+dYHAY9hui9Po114hoKuE2+LM2BErOIqz6UeXMsikInRLiaGI1li8gmFpLUe09JT0ZNSe8S7BQwAf/l9ALiCXartnKM28LmZZXsiB6qWJU1/mJVb+eJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:13 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:13 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 03/13] phy: lynx-28g: move data structures to core
Date: Thu, 28 May 2026 20:23:54 +0300
Message-Id: <20260528172404.733196-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM4PR0302CA0035.eurprd03.prod.outlook.com
 (2603:10a6:205:2::48) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a38563b-909a-47c7-736c-08debcddefaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|6133799003|3023799007|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: sWeK7gErEsQb71ASsq5FMQxL25zSZOCrw8mG0DIe2b1cI20Sy+9KLAsRsbs1P3ZNMqnDyvEbPfgy/4L1yNdm3ndIc+7qOdyC4DXQUqR9OR7GsZY/NFZ0XZPbWOf6ggilqwlHQqcrGuLXeldwe/V0WEAX3nyiZydOYU527rZTFjvBWvOQNE93E3D36HSX76bJW79GzX506/O4uNN91LOH/5ngs6luLnct/3X+BCFo6AS9JhaqQs2mxqbiWvvZLDlE3wGebyMPeGrmyPeNGXwPBjSrQvM2FL6z31SzLhbir7cojom2KqqcG9tn90ECKK1b83RaAPN6fzQNx+hP48sAhcGcvr5aQGCTPehg4tlxMMaFoBYBHnwXMp0u21Sh1lJHoh0FvNcIfKyZ2adyFcCyn4FmhwYrQ8nTeRqgdnPnbJAbqE5m7QhUm49rMFK7lqf1wSYjxtBJ/x7bVg8j82vk6VOoGORMKSv410Kdm+XaeS5OtcgbNtLHRXm/VxHOBFPNU8Ha/SQZQwOxh+Roy3xp/7O0L8X8qXYKkWbAKK+eD3OdduvLxyhxIuZiHm7gNlblbHc9i4SsSU0NN5k4EWVFSm0IicU7u7FEnRhUymHI7y7IS80FwMr+S3WGYLNoMl/WhUzupNrJPcjZlExlqA/t23WGiKnH/2u3KCPUYHb0M/IlamqAYvi2+4gf0hN9hEj7
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(6133799003)(3023799007)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TYD8HgVpka5icgFlSJiI7iEeXVLWLaDB/tIlt5IlioRx1ML5THbxIsFnxECC?=
 =?us-ascii?Q?QzeY1Jwl8ilqxdmk2K9cC4A6+zCOKiMuFNkXqLmx8QsKDcE7RSJAajG0SQA8?=
 =?us-ascii?Q?2/f/LI5AOCwtRuA/O2XCPJDUSCu0TN5yp9RnLtYLGvnyAfUXKs3xHTtUmbpt?=
 =?us-ascii?Q?dGP20DI8hKO+1EflXeuJRZ6VDfXxCgOlW53vIpU/W8goc/Kis8upOsQOMbLQ?=
 =?us-ascii?Q?khmtQezt8V8fvpANdYcOmmTFD92GqKzG8gL3MjfbaLMdMMbHyKRov7ThrJXE?=
 =?us-ascii?Q?NHLORkHCSSpjDP0N5wgcAO7zFoVoLjDe0W+869xm1oFGVW6TtTz09BZKg7kO?=
 =?us-ascii?Q?8tBHlLTrwb45aJ9oiCPpqrvKJ/AMICJ4c2dzrWFEkEytEa6ZJkyVEqgZvHiP?=
 =?us-ascii?Q?WXq3c3moig+P7IiiOScbAaOBbcgUp9quWyI+Mi8Rza3578yZrf3v08T1GGli?=
 =?us-ascii?Q?ptpjvl5aDQ4YEEvaN2JvhrOBwYJ390aMLJlY+QphR39XA9cmk/B8IEu/19Ow?=
 =?us-ascii?Q?v9MOeNTZcu2eHLA+xw2H96TAorH8V6VCX+goIvMXObmo2avnzyQefhHe1KS9?=
 =?us-ascii?Q?GhOFet3AODcHoVH9ceefVsLNQru1hKK9ndcB3AmWULzt5qzniRV9OZ120lVF?=
 =?us-ascii?Q?OuwXegoIz4CC6wA5/6JDQJn9goFijTwYRpEdaM4F79dIQN1Ta2E6gk6vVADn?=
 =?us-ascii?Q?uiEbIvpdmX+khHaGm2WTkad2GoA4u4yCzUdU14kToNyXMsYtLopIWDECTtV4?=
 =?us-ascii?Q?Rr7uIbxQH3Kt+PBJ6Jz1fqQw4k2MaUxbhUMDkojsddTMsCaI1S6jRGCiM+l2?=
 =?us-ascii?Q?riS1TZ2JJ8P9xiPKln5f1xDVyRas7gTqEz5B2fqZ5MVIiIdGn3VGRz53a0ZM?=
 =?us-ascii?Q?Xg/MCZYglblwbys/YwW+OX+IoUGnCx13pPHUEdlJMED7lk9bbF+tGKjZ8G4J?=
 =?us-ascii?Q?Bdswnp1TnbEO22f9T4CFg4bQ/SVX1B+ut9ZvjTBLtKgu7F0AuKkW38Nv5a3k?=
 =?us-ascii?Q?UfmUgQMNeR/0RToVnyr+JfJh6eGPByAlIvdfBhEkbAwXxeLe+lQYryK1P8d8?=
 =?us-ascii?Q?JTE42Afzvey1a3JHlFzIM7vnVu724oYXXiyISM2nQJFbcOfZ+YAf0WALvMn9?=
 =?us-ascii?Q?UzwbVgj9dCO7+/HbhfGY4oQrjMnft/6Qhurjzznt9n+EQVkakLoU42WHoBUA?=
 =?us-ascii?Q?GO/P8LrfqGv60Myt90Rmk4oUZ0L5ROjnLQERi35tGuHxr4cDS+e5ELH1oIEm?=
 =?us-ascii?Q?sieuVIayvYOLHto5/dpYskBPRMCFRi48sSpfZrUP4fzX39NeaLr+zKUWfG3K?=
 =?us-ascii?Q?ekxoEo7WJTe3Ykn8Lf6Vkwzm+hl8xoRB25Sq2Wd1+COg/pF6oUZcQ0ykp4Mz?=
 =?us-ascii?Q?gXJ9nFODtxGcST+rIR/7Vj8aycHKEaTG9Wv3KCHyvLt+soYpC5UNApD/8OYE?=
 =?us-ascii?Q?44zAD3VSCceI80NMrCK2giXPi9eUUdH4jNq3134FC2TC6pXWY77NVf88PWDw?=
 =?us-ascii?Q?lmRcdcbIAOELHmeou3fP2XWnMwyDT63V5ILp1hbGHG08o3tPeztpW/1jDCgE?=
 =?us-ascii?Q?7DmpbLdZ0YX68viCTcgN/NpXv/vQq02pFRxq5lRJggSikCAlbUhJE85jSK7k?=
 =?us-ascii?Q?9QZKDCQ19+zwUbMDT0dz7pn0K8Pe7jno7R+IpHILyE/bw4nMPboVL31t1ErM?=
 =?us-ascii?Q?pXCvKmNKhMDwddLuDpIF3UbVrk6pdEKDua67t2a25eqXq9RRjvAKYdNShH6Q?=
 =?us-ascii?Q?WWhWWddadsf+ZdKoLGf3FSxHhrCVoikG3clk84MJGynmF85Iym5X?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a38563b-909a-47c7-736c-08debcddefaa
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:12.9777
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yALqUEk/f+QqSKK+zj9qoezWb8BxpnxPhYAiZbw5KY14cQ82CpCKG6gIKqNFsuj7ewR/vr4oL2fEWi3aNBGPAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102421_877411_8552FAC5 
X-CRM114-Status: GOOD (  21.90  )
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

The goal is to avoid duplicating the core data structures when
introducing the new lynx-10g driver.

We move the following to phy-fsl-lynx-core:
- struct lynx_28g_pll -> struct lynx_pll. This has some
  hardware-specific register fields which need to become hardware
  agnostic (the PLL register layout is different for Lynx 10G), So:
  - PLLnRSTCTL_DIS(pll->rstctl) becomes !pll->enabled
  - PLLnRSTCTL_LOCK(pll->rstctl) becomes pll->locked
  - FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1) becomes pll->frate_sel
  - FIELD_GET(PLLnCR0_REFCLK_SEL, pll->cr0) becomes pll->refclk_sel
- struct lynx_28g_lane -> struct lynx_lane
- struct lynx_28g_priv -> struct lynx_priv
  - field lane[LYNX_28G_NUM_LANE] has to be dynamically allocated. Not
    all Lynx 10G SerDes blocks have 8 lanes.
- LYNX_28G_NUM_PLL -> LYNX_NUM_PLL. This is an architectural constant
  which is the same for Lynx 10G as well.

To avoid major noise in the lynx-28g driver, we keep compatibility shims
(for now) where the old lynx_28g names are preserved, but translate to
the common data structures.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 135 +++++++---------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  23 ++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  64 ++++++++++
 3 files changed, 129 insertions(+), 93 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 0f7814b7224c..bca0db162a95 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,7 +12,7 @@
 #include "phy-fsl-lynx-core.h"
 
 #define LYNX_28G_NUM_LANE			8
-#define LYNX_28G_NUM_PLL			2
+#define LYNX_28G_NUM_PLL			LYNX_NUM_PLL
 
 /* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
@@ -43,8 +43,8 @@
 
 /* Per PLL registers */
 #define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
-#define PLLnRSTCTL_DIS(rstctl)			(((rstctl) & BIT(24)) >> 24)
-#define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
+#define PLLnRSTCTL_DIS				BIT(24)
+#define PLLnRSTCTL_LOCK				BIT(23)
 
 #define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
 #define PLLnCR0_REFCLK_SEL			GENMASK(20, 16)
@@ -269,6 +269,17 @@
 #define LYNX_28G_LANE_STOP_SLEEP_US		100
 #define LYNX_28G_LANE_STOP_TIMEOUT_US		1000000
 
+#define lynx_28g_read				lynx_read
+#define lynx_28g_write				lynx_write
+#define lynx_28g_lane_rmw			lynx_lane_rmw
+#define lynx_28g_lane_read			lynx_lane_read
+#define lynx_28g_lane_write			lynx_lane_write
+#define lynx_28g_pll_read			lynx_pll_read
+
+#define lynx_28g_priv				lynx_priv
+#define lynx_28g_lane				lynx_lane
+#define lynx_28g_pll				lynx_pll
+
 enum lynx_28g_eq_type {
 	EQ_TYPE_NO_EQ = 0,
 	EQ_TYPE_2TAP = 1,
@@ -456,86 +467,6 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 	},
 };
 
-struct lynx_28g_priv;
-
-struct lynx_28g_pll {
-	struct lynx_28g_priv *priv;
-	u32 rstctl, cr0, cr1;
-	int id;
-	DECLARE_BITMAP(supported, LANE_MODE_MAX);
-};
-
-struct lynx_28g_lane {
-	struct lynx_28g_priv *priv;
-	struct phy *phy;
-	bool powered_up;
-	bool init;
-	unsigned int id;
-	enum lynx_lane_mode mode;
-};
-
-struct lynx_28g_priv {
-	void __iomem *base;
-	struct device *dev;
-	const struct lynx_info *info;
-	/* Serialize concurrent access to registers shared between lanes,
-	 * like PCCn
-	 */
-	spinlock_t pcc_lock;
-	struct lynx_28g_pll pll[LYNX_28G_NUM_PLL];
-	struct lynx_28g_lane lane[LYNX_28G_NUM_LANE];
-
-	struct delayed_work cdr_check;
-};
-
-static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
-			 u32 val, u32 mask)
-{
-	void __iomem *reg = priv->base + off;
-	u32 orig, tmp;
-
-	orig = ioread32(reg);
-	tmp = orig & ~mask;
-	tmp |= val;
-	iowrite32(tmp, reg);
-}
-
-#define lynx_28g_read(priv, off) \
-	ioread32((priv)->base + (off))
-#define lynx_28g_write(priv, off, val) \
-	iowrite32(val, (priv)->base + (off))
-#define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
-#define lynx_28g_lane_read(lane, reg)			\
-	ioread32((lane)->priv->base + reg((lane)->id))
-#define lynx_28g_lane_write(lane, reg, val)		\
-	iowrite32(val, (lane)->priv->base + reg((lane)->id))
-#define lynx_28g_pll_read(pll, reg)			\
-	ioread32((pll)->priv->base + reg((pll)->id))
-
-/* A lane mode is supported if we have a PLL that can provide its required
- * clock net, and if there is a protocol converter for that mode on that lane.
- */
-static bool lynx_28g_supports_lane_mode(struct lynx_28g_lane *lane,
-					enum lynx_lane_mode mode)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int i;
-
-	if (!priv->info->lane_supports_mode(lane->id, mode))
-		return false;
-
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		if (PLLnRSTCTL_DIS(priv->pll[i].rstctl))
-			continue;
-
-		if (test_bit(mode, priv->pll[i].supported))
-			return true;
-	}
-
-	return false;
-}
-
 static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 					     enum lynx_lane_mode mode)
 {
@@ -545,7 +476,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
 		pll = &priv->pll[i];
 
-		if (PLLnRSTCTL_DIS(pll->rstctl))
+		if (!pll->enabled)
 			continue;
 
 		if (test_bit(mode, pll->supported))
@@ -553,7 +484,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	}
 
 	/* no pll supports requested mode, either caller forgot to check
-	 * lynx_28g_supports_lane_mode, or this is a bug.
+	 * lynx_lane_supports_mode(), or this is a bug.
 	 */
 	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
 		      lynx_lane_mode_str(mode));
@@ -564,7 +495,7 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    enum lynx_lane_mode lane_mode)
 {
-	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
+	switch (pll->frate_sel) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (lane_mode) {
@@ -879,27 +810,33 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 
 static const struct lynx_info lynx_info_compat = {
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes1 = {
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes2 = {
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes3 = {
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes1 = {
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
 	.first_lane = 4,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes2 = {
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
@@ -1168,7 +1105,7 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 		return -EOPNOTSUPP;
 
 	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
+	if (!lynx_lane_supports_mode(lane, lane_mode))
 		return -EOPNOTSUPP;
 
 	if (lane_mode == lane->mode)
@@ -1210,7 +1147,7 @@ static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
 		return -EOPNOTSUPP;
 
 	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
+	if (!lynx_lane_supports_mode(lane, lane_mode))
 		return -EOPNOTSUPP;
 
 	return 0;
@@ -1262,6 +1199,7 @@ static const struct phy_ops lynx_28g_ops = {
 static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 {
 	struct lynx_28g_pll *pll;
+	u32 val;
 	int i;
 
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
@@ -1269,14 +1207,20 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		pll->priv = priv;
 		pll->id = i;
 
-		pll->rstctl = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->cr0 = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->cr1 = lynx_28g_pll_read(pll, PLLnCR1);
+		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
+		pll->enabled = !(val & PLLnRSTCTL_DIS);
+		pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		if (PLLnRSTCTL_DIS(pll->rstctl))
+		val = lynx_28g_pll_read(pll, PLLnCR0);
+		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+
+		val = lynx_28g_pll_read(pll, PLLnCR1);
+		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
+
+		if (!pll->enabled)
 			continue;
 
-		switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
+		switch (pll->frate_sel) {
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
@@ -1437,6 +1381,11 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	if (priv->info == &lynx_info_compat)
 		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
 
+	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
+				  sizeof(*priv->lane), GFP_KERNEL);
+	if (!priv->lane)
+		return -ENOMEM;
+
 	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index d56f189c162d..de45b14d3fb6 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,5 +40,28 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* A lane mode is supported if we have a PLL that can provide its required
+ * clock net, and if there is a protocol converter for that mode on that lane.
+ */
+bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	int i;
+
+	if (!priv->info->lane_supports_mode(lane->id, mode))
+		return false;
+
+	for (i = 0; i < LYNX_NUM_PLL; i++) {
+		if (!priv->pll[i].enabled)
+			continue;
+
+		if (test_bit(mode, priv->pll[i].supported))
+			return true;
+	}
+
+	return false;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_lane_supports_mode, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index fe15986482b0..f0cb3e805235 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -7,18 +7,82 @@
 #include <linux/phy.h>
 #include <soc/fsl/phy-fsl-lynx.h>
 
+#define LYNX_NUM_PLL				2
+
 struct lynx_pccr {
 	int offset;
 	int width;
 	int shift;
 };
 
+struct lynx_priv;
+
+struct lynx_pll {
+	struct lynx_priv *priv;
+	int id;
+	int refclk_sel;
+	int frate_sel;
+	bool enabled;
+	bool locked;
+	DECLARE_BITMAP(supported, LANE_MODE_MAX);
+};
+
+struct lynx_lane {
+	struct lynx_priv *priv;
+	struct phy *phy;
+	bool powered_up;
+	bool init;
+	unsigned int id;
+	enum lynx_lane_mode mode;
+};
+
 struct lynx_info {
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
 	int first_lane;
+	int num_lanes;
 };
 
+struct lynx_priv {
+	void __iomem *base;
+	struct device *dev;
+	const struct lynx_info *info;
+	/* Serialize concurrent access to registers shared between lanes,
+	 * like PCCn
+	 */
+	spinlock_t pcc_lock;
+	struct lynx_pll pll[LYNX_NUM_PLL];
+	struct lynx_lane *lane;
+
+	struct delayed_work cdr_check;
+};
+
+static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
+			    u32 mask)
+{
+	void __iomem *reg = priv->base + off;
+	u32 orig, tmp;
+
+	orig = ioread32(reg);
+	tmp = orig & ~mask;
+	tmp |= val;
+	iowrite32(tmp, reg);
+}
+
+#define lynx_read(priv, off) \
+	ioread32((priv)->base + (off))
+#define lynx_write(priv, off, val) \
+	iowrite32(val, (priv)->base + (off))
+#define lynx_lane_rmw(lane, reg, val, mask)	\
+	lynx_rmw((lane)->priv, reg(lane->id), val, mask)
+#define lynx_lane_read(lane, reg)			\
+	ioread32((lane)->priv->base + reg((lane)->id))
+#define lynx_lane_write(lane, reg, val)		\
+	iowrite32(val, (lane)->priv->base + reg((lane)->id))
+#define lynx_pll_read(pll, reg)			\
+	ioread32((pll)->priv->base + reg((pll)->id))
+
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
+bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
