Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D710DCD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhVvHbH6YDMBVwNUrWbvwhWvhvfFDd6fkm2091Je5gI=; b=yXKJj9NY8eLOFs
	tciGEws5pYSD9gTFX6BPItE+Kaydq5zjaMxa6ve/J+2AJrvkRgC4oVmwUQ//kfTSqE2FpItTXN+/n
	NLvmnDiU/tuDF6KlpZhgboxKJ+G3FDLPvBoJTxc5CL1cs2vwu1HSjHczb3MBqG5dukn3JiWtglVVO
	zAxfbCSzXpSYGMQK46DUemcejkzFWmyt9D1r8ByKpQX29hQMIRlQ2u3UHLjHiRWJWMUS3DZDhD5hX
	IP6kZ7QFQdN6OAWQSZ641t2X+Rtq+84yTrxuvVP4tR3yUq0oJBwjZ2EwpuWKM9WjO0xH4iYk4J1XW
	aew1YHQD10qVLe/p/8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVR-0000000FA5E-2emW;
	Wed, 03 Jun 2026 13:19:37 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVO-0000000FA1L-41y2
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eCOwG0CGAFJzeMWJ3oJ872wqjUHG2oB3lcbNurMuZrzk1Or705oRwW0XmbG1U8a1xUUK5radHQDRbJur9hkEg1aJprYRAzkk+qjmOtxhJ///gZLiSqmH84M0NyR9mMrsC3M0omE1rF1VlSni8rwdbc/rN1eGUqMoLWMsqNmMZRZwUTWvJQbuZV1BiVznvMlV3RBuW68uwNVqJfzZpsnodTfxELPXhRfRR9+rNjDzb8NOMUGhzDfoPFgcwIxBIvMzNe1ueIBUwdes9pMDoDBoBU6wsPFNFTOMSwYo+D0xIdJUTqdeHSs3xO0175hGT1vUkzc5WgkG6p0TAx2Y9AS5NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqm+ZDINlXQ6e1Mfq2mR/0mL1Yb2lZQFcWaSJWJJVEA=;
 b=T6uMEB5MgbR7HkyBdSbQ8ci7wN784UnqjA3+3wcrjq3FGgvsPyutsTEokuRmR35ba4xPwOAOFHOx71fCIEc6DaaGO3Z2GXgemi/L8qt0nnW49eJo+E+FUiDye5n6DdHfEU0jCrW6RBfXu7AwWQmIN3yToMq/y+1Z9+rsJA3bIrcotvEgSIKjPQAFFJ9g1bbPiLalz7iul/BFwWYLG7cbymnQKLlVk+9yd1FmbKWo0xx1RWKfqj1TxWVNpEBYtaHVWNi08DaokdBWVVXM6KRzi+H5/PijOvsccBjFcZbMs6KZ9ChvXlcThqKI4w9Z079U/Z28GjniUynbTGh9fx8Siw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqm+ZDINlXQ6e1Mfq2mR/0mL1Yb2lZQFcWaSJWJJVEA=;
 b=dnLGFq0AEWg3avtQabpFzx62UaFbivjyJUjgLLxlvcGCjYRd9FGI+pTBZQGvTmzwWT6BoQSlu+92Wy17JZeamG1KXCwNTB3HFofYBjkWxa7QnNryNRenVOSnXZFjN8U95myUK98aORS8e9FuORrbNZDJhKzSaSIj1AlBzKT2EnM9uY0ejAjj7M/0VgC/SDeSwY2qWfpdq58HZyjI2DE0PZBgRIEEspeDYly4p1B13BcVYuDxG1PIx+qD9oaBt7zILHRoEDKw1NZKOg+P7N60O06EMRkhg1CFZLZIEc5XTr2DCpbgCLAhC0LTJ+AFAZYieUG4t/C+N3KWz9y3GGHHGw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:29 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:29 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 04/16] phy: lynx-28g: move data structures to core
Date: Wed,  3 Jun 2026 16:19:02 +0300
Message-Id: <20260603131914.503053-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0040.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::16) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: d096584a-fdb2-41f6-1113-08dec172be24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|6133799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: KA9RpZg7dp+MRY3qTgSkzxCG6PGWIi3r1ovuRR3Nu7uWqdSqV6VmHNCRyB3uq9LzIESirTpcyLk7VfQRcM+UyPkjCqqesJCKQDvzGBaORAett2hHHKhpF4TbMQ+5SS7kJiG71YBe/9+7rotfJo6J1CH7AScQcIqP9RhrG7CzWkU5aMt8bb9Y9dC0Tgl8yGAVbKVNonTnHTvgu+O9VnUtMwaXssP/++OPkdPW/NscxkRKham/1+tWrvu27IF3G3cD30CLPGvUqUkO81i6eAJBDS6WmNDsdvfkqX6Z067Xr41Xy/fgxCPluU/94cX4KpURkByjZmPXTskB0SsE/7CdwqY3h/X4yApgoedcUu8c9ZysjHZP7I2cH8QkySGFA1fHr+++gYjOiInaMZX7uIeCtff3NwIIjINtUGd4oG0CwMj7NeS1ZQ+lBNmDEoVdeu+MWC2zuBAi1hi8dmLbC8bkXvYWawTfGbVAgdtp+8T7gEhNwsYz60O9FopjVkrwYTVQy6dc75KQzdH7HxDCw+MqQmpvV0aWHMw3G2gJysSnipG+VLD3ed3V2dwUnPCswdhTKqr6phC9A0VDVVaE/bajaj58eaDu/0r81o3ya3YakxUawhiHbcQ/MfncWBKM84P5TLWHjvC04VIZ8xfHhZU476apV/cay8ugP/+UEv+r0iLGfinoxSIHsH6gBURyyFtg
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bLRJJRiZctUxTRhguCcOW7lRRmktxFI6nqe1CS/gIgky4QBKn1cIc7tV/xPi?=
 =?us-ascii?Q?C53ESWUY4ll0d61masTqO2Dkn85Yjy0qP4sg2DjwsocqhWFKQnyVUoTVn5Mg?=
 =?us-ascii?Q?aOF/0B9fUzeWKBzav0nAdSTnzVfrhog6XxLvtAXiGLW+sb+vJ7OHMAKgXjSL?=
 =?us-ascii?Q?HkSxA0rLNj/RQrQS2AbUWAPR3fCypRXAAjekIF3AUc8DQJbE4ZVmNNgIBNBH?=
 =?us-ascii?Q?aMAJW46ZvnAIeAljh9JrRcEh8ApGitjTsMRN/s+zGJxJLIYyRG1Q4PbDNDVV?=
 =?us-ascii?Q?Rk6L+JMcyLn8BD33JapKBuVNPJ4+6LhW4YoHO5wI8PCzLp4tzVXYHPCvjFnM?=
 =?us-ascii?Q?zUoksRlmT6mlrks3x/V/gvXnUHn2D+qoPv8m0Mm26t0NHqJ2QE2cbLokqEVv?=
 =?us-ascii?Q?OwCNaSRQFR1EuGrydGofFpzVSPaHY1x4fUbNSFyXbPL0rcfZcA15t1Ac7neJ?=
 =?us-ascii?Q?qwAXwQcW7Uul69lrMCfIXpaxWqBnTQcFxxq1TDKqn/pxjhCveeYRs7zMzCGM?=
 =?us-ascii?Q?kmFblzqkvg+Ox/3QHb9gbW/QYuFv4w6qUBYmnFvLxuxL+gJ/M0l606fMfURy?=
 =?us-ascii?Q?wChSxMgebv3zJswgVq9t7C5sT8+QjZocsOMGTERFLww+zoayqaqboMdwqbaM?=
 =?us-ascii?Q?JOGaOKAEdHfSZCjn4L2jwelWPd4jH6XDUCNIDCkIzlL2gj0ayIe3nsH/r8Jf?=
 =?us-ascii?Q?UVXEaNY49QCXROQx0x5X9/cCTVpbwnBFrRXTe18E+wWtNy/Wt/s+Lex8/knf?=
 =?us-ascii?Q?Mjb62JZtGhKX0V+D60DYOpMNHGTB7VspnKYiJsHYNaJlnWxuA81GiZKQr/Ky?=
 =?us-ascii?Q?V8LIGVm1fWBD+CpPtV5gT6Cko5IX8kPG24cpCnCesHKa0SoDM8+CQ6V/I14i?=
 =?us-ascii?Q?PLD5ajrrwEWHYOMciikQb2nbFCkh1DHCClDq05+fWuePc9dg3i8CARXr+b5k?=
 =?us-ascii?Q?biJeQUZKFLGpTubvxgj5pwJwmffzKDhUNV7Ked17kPxEJjn+8laaJ5qPmOq4?=
 =?us-ascii?Q?HkSxSVeAYbbGJfw0rIrXn9RqQfkTQNPNke1cRUpnb8yvOKQkcZGs8FUq5pd3?=
 =?us-ascii?Q?rphTMWPwcnw6UIpio7Yh6z91ohGnpBapMcXtV8p2+PDjan1sHA+hdmtijrsA?=
 =?us-ascii?Q?6GMk9fdyxPwqHAGveedXYW6I05UpIbN470eZmU6byPAwtW+N9OMgNxlMATIm?=
 =?us-ascii?Q?7TG7wtOdR2CMn+IodNzrX5B5qjn33kOqnMvaZIKgx6kQB4qmW/mvYbOxGv8a?=
 =?us-ascii?Q?PsMeYygcVpebfxkP0psFa+ehOKXCk3n2/+th2CzWkd1KJ8YcQUZ96cDt0HYN?=
 =?us-ascii?Q?Q3+0g4N+AFr6xW7Ri7goFqyFp0dHRbBo3E2oszdTjlpxxSkkm+RDswAPIDh3?=
 =?us-ascii?Q?0OZthhs/z4qsB6LdpfWVAAPemZKsSw52GRNkGA1M0VkCCEDKB1731/9qDuMl?=
 =?us-ascii?Q?hrBK+0nVAuoZtCAWXqp/E4B+34wmNWzbLp+ER4/U/YzRP3k5s0lEQuumPtUu?=
 =?us-ascii?Q?5s55U9aOWVDgI4vDfk+yHgZtVtW2zY2oVC0A3Jeh2rwuKGACOHzHY1oEXma8?=
 =?us-ascii?Q?4/1cCBTF4/bEurBLwcYJM066IyK3kb1rqq1gdZUVOANVHZcUn8K2rkZJkHSD?=
 =?us-ascii?Q?da6woxA7kwlkr7rE1g5C1P5v/LXxG26xyoJCar0bspG9e/bi2fD51K+HF+9d?=
 =?us-ascii?Q?7lVmx5PAt4bz+fVrQyDWZ2jbW8C9R6nsE3S6JCGUVoYTKJG+Njcxr0ZlF5WB?=
 =?us-ascii?Q?Uxnme1VacA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d096584a-fdb2-41f6-1113-08dec172be24
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:29.5273
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3OvSBZk+r0hz5aZ7iaS5arZGChSYzkxsayu3Kr8HIzmGwpj92pMayN08xOnJq66eju6oPtPn00KF/6sNd94PRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061935_007344_949AE2C9 
X-CRM114-Status: GOOD (  22.30  )
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
v1->v3: none
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 135 +++++++---------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  23 ++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  64 ++++++++++
 3 files changed, 129 insertions(+), 93 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index d3f49d96340f..570fa74daba0 100644
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
@@ -1440,6 +1384,11 @@ static int lynx_28g_probe(struct platform_device *pdev)
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
