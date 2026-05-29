Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBACECD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WozfmuuLoS6G/QoFc3tpUeFpvviREzZx71NK3rCUYoM=; b=wjJJe7449xher1
	VoPopx4UnadP35iGl7Bgj72K7/IVExJcUAlMRGGW0JE8JdyVourqVY2IskiOsl389g5TFWyvNsP+g
	fe8/CeiE/txsAgcvtB/NnGIBwBDsmUTEpp+EcjgGNioLXs6Kamkrh63qZFNNHRSllVxGhbVPlsV08
	sDy5k1xrlMORU8oMBPjzSbEt47S8QLu92B2mjgOKMr4H1Gsddf2YtcR16BkudBnuMEjhDpirs474T
	+fwZLgwiXI5ljegvu935W44KSA8iziK7aiM68KcYr+yqx5+4SsE8VLUSsoO30p825saWa0VEqMnia
	gcgWnw0IF6+WAKcUv8qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o0-00000007yIR-207V;
	Fri, 29 May 2026 17:15:32 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0ns-00000007yDh-3ql0
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FgzGvqsU26ZE+6Z7PNFGGg9T34+r6wTwoHmOEwlj7Uqc1MKSU0qilkczjG5wtLVqEwEpiP1Mu5jgECllLuh8++da9wQqFQP3aiNNy2DN9UlL7Llptm4hm7MKuKtcPgd0ke5ieB+wI6CuZcxCR7nvPwJu8x+O3HIq44EQCiwVeTOF/aGJ6+i0uWz2qsJ/0VyaE5XNeERIOHYm35VVseFIWW+hglmVZ9/JJk6+zv8dwOp/bppxTe66EoWWI5dye5hQq6EFG4OcZR+qOuNXTDH+R7JSV2PcyNnNMDroh1q2ZqzYeCYuo/siol8PhP80OQj3y4xPX47WovYOeAgjzREERg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rMRRUffJ0HgSiHPUrMAktU0/asuZqEaDzynkMY0of7U=;
 b=nawrl75rKcwmb9YRrwW2XlU9W0AhGt7GnbMc+Za+a1vyV38Fbc4duOjZPjKpx12XX0OXHXNreKpgxz9ZZRuaaljV9a83l+liP5F53t1/k1JcPZaO6TC9ByysGFiu7citE59QO9W6ue1s//wnIALQhZlGOeHOrXnMPCdaSlAiTdPHDQUFhEbA/0sT2J4LGqm3GjwzfSyxS7YCGwsk+UE2eBJuK6Aw1TR+v17UOuHa1H+PbFyap2RDlSCxd2mtO6Kj5dVYzMsWC2WiPjp26C7BITZd/5smcD+3B9pMbeqDtkY8NwETJHImJItgg+6Olo4OX1q864HElbwdLu2q+W4CTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rMRRUffJ0HgSiHPUrMAktU0/asuZqEaDzynkMY0of7U=;
 b=mKPltXHe+S+pwmNuOUOU68QTKwex/rHEUh1S4VPomiCrD2FNLB7Z+Ik4OVPFfN4O7lEFefOD5sYu6ogPLacS8vxVg63sKdmreUnwI9ipWWULBK0tqMAdNSTbecTSNBKRFz1h5U3cTOvvYRwzOPK8RpTPGRKw1pBA9trnsQtr0JhozH+JafB4T3ZkkK+DcR1QJeZ/GtXgm3pkaWsILwbtyDiLD4PPiLcPRBZWU0pjZC0EnrmBDxHsZoI+fgxpsCcqXrrKWJa+UTFsKlL9+u++BL70tdckMHc+vcRccZZu7GwWU2gwofRSXcVmFp3AvdbWAB1c4CN+vChDvMitNuRHNQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:19 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:19 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 03/15] phy: lynx-28g: move data structures to core
Date: Fri, 29 May 2026 20:14:57 +0300
Message-Id: <20260529171509.1163787-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0017.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::7) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: cea6dd6a-1978-4f5c-bdee-08debda5dbee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|6133799003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: PKuSDgNyAatpAe+A/ijF/IYUk6Tub5Zdx3SRLoUJ8IJAHUh16QPKktzSEVsZFOaRZKZgWGAv+q0ul3/Uc0BPdcNK0s52jrI16MPIT71gUIA/9ZwFKSMVi51KQq4aM+yjISUUHshiqPwoXLhfmVRr8ITKLytDmWL0pamwYbQOQi00AY5p+auTFmezLl0YJNW+ySALfrHBcHBrcl0399nKScphjP5v0D2/aZmB4a+V2R/Tl8ENLDNIrFeZnl8cha2epPdB4/2gQHPznha3i+Hd0hjdmgg8kB4VzoEDhRdwU+h3ZPS6tCE4Ii17fqKEFjsizMnBDb3oHypRQWu+5WROgmM9J3d3TNEpi6+eCs7ou2gU7YFumZ7HsHwNSRnwEink4fyXxSUCXjGh7bd6qCFNSjVm3Su8YAPqVgLnn4XE8LSbzXqCCPjnP3tNzXmAjSheo2Kkspn5vdqNTL4Aujhft5CV4iiUaPr0GqXlykTGaeROpkYP7Wwp2OkWLA3G7wgyCcDA/GkDcQ91LuMb9Y1JEVlumWLwA5Xt3p0DHel+myhrsaHo58ZjJlmT9w3b/Yb6fZeVuvwRlXrukZeVrfiHu1w0PwRBPw0D+Ovrd1dL70NuZovLxZaP3nbm0WmFJJd4/Iet3WpIJNSEzSffkVOuVQ3ahkMKW2qiS18VIUdscswa6kl02+aASxWlOD7FOCC5
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R4agE4dJ+4qmA82Ae/Z6yDHfl2cWAqlRhco+OjQYhOAOHhMcn/oM3d902L0X?=
 =?us-ascii?Q?p661Dj4BTc9zNEucd7+nl24shtXQLW0kmkiaYRsU+DRFNdj2kFQpYWPMrOD2?=
 =?us-ascii?Q?u0Ip6jI2X4vFPpds/b+M5AKgr4gHPnFKHxqL/2CemtmyZBq1MkLLbh421Asg?=
 =?us-ascii?Q?xeo+QB25sa+lgCpwvnyv80a8p8qLiPCJJ3TF1kto7UVZSV6DDJBVH6JwmcvW?=
 =?us-ascii?Q?Dblln5Ucvs2mpZW0rdOKlva0hLUfj8/sRenm/daMlBrTtcSKsxkK5fSgDPme?=
 =?us-ascii?Q?gzKjwiec86CehP2AknPok/dJYavkc5mvKXmL7Znhh5B+IMRVjiagHuTVCTJN?=
 =?us-ascii?Q?vKCeGpjNJatdOa4lkbV36uwoFUYtdhxY8RTu9KbiiQHdzMNm0Ff3ZSpJt+tT?=
 =?us-ascii?Q?ENvJDOicnAGlFZPvQmgNpZ+/sW1VE42lA+DhJK8IxXTxTHoFF81S6V54yEZl?=
 =?us-ascii?Q?aOfO9umpgAIhoUFMQN1oWO+lN6+zZnv91CSdSzt6JcRapGOv+Lr7XomElpwf?=
 =?us-ascii?Q?j3n3gqUOf8+/OVpM7sDKLLqWNTrnN/rOB2uBuB6Q95E9NpCDtm4Oc6mmW0uK?=
 =?us-ascii?Q?PmNrEU8jsygpBb0NopZBtDcj1Fbwxonj6K38a36JHQ6ukRqAcQRBFlAD1rIg?=
 =?us-ascii?Q?7lRSXRyhfkaiB8Rfs/KxxgTnMtdscCxUO77MXGIGZboVxlFVbXoH7zlNS2IX?=
 =?us-ascii?Q?KrvDmi3LIYjVUbPvhfssH1cpenOXahn0SD45eAbQBYximFrx5v1H4WOV6msP?=
 =?us-ascii?Q?IT8Yuyg1iP7xPKOx3CH85GLjKssSElCICDMDWl6jEBcEVXJEhYksMuaJq8qk?=
 =?us-ascii?Q?6/rnNTfhVXSdTwry4lQsKe/N7J6fGltNOfHPtAr00fW834qRWJUmkoFOdpLc?=
 =?us-ascii?Q?SbtYlom5hUUUp5IYHqfNoZgSsYb4B6vEojwxrFGjSZY3QFbdm0ci/A3OL06P?=
 =?us-ascii?Q?gY294HqEsDPu/NByNLoWp01OQvguMYyF7YKE3MYLE5PuiGjDIv6xb4qNys6a?=
 =?us-ascii?Q?88bp8m1OytWyZ5c7/IfG7dcQJzkblg2NKnpoIt8dlDz2m2tcQMRcjLyIQ069?=
 =?us-ascii?Q?nrb83pds+ZT8jLZJ3mvnD16uQniZgz67/bbfW384z/5V8DEbWjuDZ1xEbjmk?=
 =?us-ascii?Q?W6ZSCUk3XKGRzrud95BrRMTsfJBdg90YDNprh1w9LO4O/weV38Nqnr/ATHkN?=
 =?us-ascii?Q?pNk3Ao2mbDP/IPguTXFvlMfXnPCzqN+1qgP4PDb0S8kqGc4iDkrrUNzR/CST?=
 =?us-ascii?Q?gHfFKQCeZvDht8g6LhGyhhxuHJRu0iLUi+pAPs6Ma2s2r4+hjujnkMY5pgd7?=
 =?us-ascii?Q?hUyW9v25qBvS8xvp4iAwvKUgCTl/3IGeDQn4g9ksJwZnS3MM1ix4weTS65a/?=
 =?us-ascii?Q?uU8nI0xZ1FCaURz/D9cUtNVohXNs9Aafn6XRs/gjQogeyPJHIViwzfV2A73T?=
 =?us-ascii?Q?UjMcF7DtwiDitqUoOP/i2roFtODBmriiKpSJH4LatqVrwezva0jHwuFntpHG?=
 =?us-ascii?Q?UFugupXRDfydAbyqCeIZ8OHZv+yrxXqz/CYtCEKviP3daD4k/YgCoWWzqsTL?=
 =?us-ascii?Q?ymJZY3+82dPUv58268LQVr/xo4TY1c18CBkiSStAYPZYfqhJ+v3oAxTAwOB/?=
 =?us-ascii?Q?T8dW2cedlPZMapBoHfnIPj0Vd0NigFki3omlKwEs1L43SRWgIIYg37xP2Aai?=
 =?us-ascii?Q?ie8rOkcH/grttJI6ED8H+8lSr6FfWmofOcgEeT+h8Tjhv5VIxJ//+kPtRTZG?=
 =?us-ascii?Q?YM1muWtj27yZjKXHyoJnTveKqx4uw42kG0xjBJamboEVfJYpxscz?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cea6dd6a-1978-4f5c-bdee-08debda5dbee
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:19.1532
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z5UcmvWPiiQOokJ90MMqdA1FzGHmwg+R/hsYTYGkx1cAXxdOiWnE0YMAd41UcC3IWEl8WOu0je3xNApdauYDPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101526_690415_D5FF0008 
X-CRM114-Status: GOOD (  22.16  )
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
v1->v2: none
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 135 +++++++---------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  23 ++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  64 ++++++++++
 3 files changed, 129 insertions(+), 93 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 27587ad87f22..482c5d8fdc6a 100644
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
