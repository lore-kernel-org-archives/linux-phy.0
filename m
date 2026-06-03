Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A538CD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swPB36MqRzzip79LY4rAnzJIC4SIDxi8jmItOkat2Zk=; b=lojwP0/WyezjTG
	TpKwZ3hlLi58Jh0Eq+ddhn8K563+bxv1GnN85htzvNUXDF81Qv/GEvwGjiGhOxZCkXlAezzrnEUDs
	DdrMmM0zBvJy5cWY/MCVaymOQ6pREJrQsMU+CZAiLpZrm71Cl97BkMzWafrzAp6bPo+b3CwyuZeET
	D/MXYTg6IpylX0aRjBzf1Ju0FAIfw5g6pvW2ygXhe+Nlb4hSFK/cVO7dSZGWPbQ05TqzLmdJGmp0A
	NvWA9pvMKTBhiLvR7hEx1dFhkyADOzy02GJWcOBixb79DXNJINgFHUAz4Poy/hn+SVRJeBu5KnUw5
	0HZ0nssASXZnJVFa0O8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVh-0000000FABC-1NRC;
	Wed, 03 Jun 2026 13:19:53 +0000
Received: from mail-swedencentralazon11013016.outbound.protection.outlook.com ([52.101.83.16] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVf-0000000FAAL-3KmT
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Si817W05BEK42Wp2/ku/znk/vLPyO5fopYYPtlzBjJPMmf/ZsDVTNWeKgOhNhfRe5OrxstKHc1Q8LSvmhFn1FV/oG5kdIBUVq2XVcqmLma3DHcS8f5nzAJQ3eYHs3HU9h7DUGgzGxItscvKCJdf6wxbEGKk/k+lEvcr0syvYtrVQhh2qUlaZFecVCbyh9GLH9Tg3/sDzh0DdMGg+HnXUjSX1z5tGjHt+6O4CO3GGKx3L8O2P8fkASdFU4Gim7lz2sd1YXiUtdPGvtFCtcNOqwrlBEVjha2zlaQ0tLdyQIi8GDg5VM32UOjteLiaPMezb70PWVm27R8jV72ZBz6MdIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5Dkb7pPFuFzb5Ixa6o4E1VYi+ImhEJ/gWVvaruMDVk=;
 b=X9XSlb7dxweNucuZHmKr9Wep1yEwoFrP410lEVdf2shxv2NFKDMPxmr8pgDZ9DlgTN1ogG2Lpg75sy0IfFuEEevJH1MYPJuC5AXqzUocAsIV/nUFnUv5Vw6UF15xzbkU8uhJREpKPDhTd116KpfSca74Pgw3yWysYVxrIqziznif+NaCR/uY3kJmYOwH1+mSYnZN68dx2XakYsYVhB2MJEogR5iCL1QvNWn7Xbvox+LFYhNIjWDF+s6t6YzZ8DPAmktd9U46r4doJlPbkChvY7mBTXfCz2BBxoD/xQkZ4C4cOHc8UNxkQhIr9f9WnLXLNny2s5ltPodHw1ssx+Viyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j5Dkb7pPFuFzb5Ixa6o4E1VYi+ImhEJ/gWVvaruMDVk=;
 b=OAH+I4aw9DwfrTObcTRquQWYO5a8vl4s/6S8XyWBOzvxE5vD1535pAzLIaqHgkX5soQj4ZMoIjO9NTHGEV6F1d1KowMJuuRmMEa8rz1/PgUCssLbgckuz66x7i7AUFI0eF0t9WvTHsCR4Fq3GBOxbAokugUTrXkxhgp8pM8YTDiGw25elT2fAZ2d5pMu/blny0QNmdX57a4vrTkF8sA5DOVOg7u5nwGHzkzRbJ7WnAr0Hrd1UhtXXpTivYmTz+wRfLLfZpPBJowFOobtS3bt5Pmq/LjrEIObYzGi4NbWKW1PKR67lK6EWfQAOslSt6kVtXTaUkx6ruy08cEtlAjoXA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PA1PR04MB10225.eurprd04.prod.outlook.com (2603:10a6:102:467::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:44 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:42 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 10/16] phy: lynx-28g: common probe() and remove()
Date: Wed,  3 Jun 2026 16:19:08 +0300
Message-Id: <20260603131914.503053-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM9P192CA0008.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::13) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PA1PR04MB10225:EE_
X-MS-Office365-Filtering-Correlation-Id: 95db39c1-88fb-4d63-4c00-08dec172c606
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|19092799006|366016|1800799024|11063799006|56012099006|3023799007|22082099003|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info: WWwhYNdaBlAYh3SHAmYfRRH65gffPZS1RFK3zeffP9K9fdKK2D/pWmJObcG0w2/KYbCKbjJXpyMnZIcWwPtSFNl2wExfT7xwtNmum3hBsMdLuiNs2gmipjoKLwLJL3aq1WlHNzbh2SbGuKfLThVvxlyewloqP3vPOvj3+rUkF2RQp9BfT/gHUqVfGjEEWMvBWBZYCyQgEmRauvlZ8T+jiigY6zyuQ8XUI/dSg7aFLCLT/ZFEIwew/+E8kun8gzuP4/Q8uCXuCkartaiNaEhSXMYTqs+Id+PDMxwqSY174EU0s2iUcz2mF6pTgEivPoT24XEYP3UOUtZWYZrn7wydrgDmsGSOnpv4C0AFE44FTqahk1C+RRG7+/LM0Ti5QUG2Q0z5v8kTkWLvfCmAwp+M3Zl2FBnXtft066/jpS0aecLJCJl3Ylet42+8FMgWni85XgmBkKotJrcg4MylgkwPQ+0qGf5zJCT9LAPC3NSalNi3aKL0A8iEPI/uZeNci4CaOGeVi4tsMfL1VCaHjI63RydSFjARhx/mDyUbj3wvjHngah0t3yxPdEW6KuUfDxLRKX0ZoVwVkX4suf4FthVQV17FFXJwAy6lNx9as5GJ1J7Gx5O1rcV/SUvr7/dyiCTyY7pnTIpIOoYXte3SnlByZ0HtO3MKGl4v/670aApu6eBamompZw8hdUy2ASmZpwOC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(366016)(1800799024)(11063799006)(56012099006)(3023799007)(22082099003)(18002099003)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hCcrnNqbSOeaA00H9jgfaE2Zd3LTO9d2J1duFM7QFnHqU+g6k1L+PAY06nUX?=
 =?us-ascii?Q?KtDWeLQU/JYwijl5NAaLXc/yArWA/dW1HUEaWlHdyAYZDvSCTr+KmMr2E9t5?=
 =?us-ascii?Q?uTAOSj1F5lZSlSnZDsV2QtWV9hwDXS+SM6+yuvN3Rg+F1QPFVr6AZ9fxK5M9?=
 =?us-ascii?Q?ffm+5MtWmuOAxTFHDVpUrR1pYiqaypL21ThN1KL6MXi1RK+MJXCoHxMQSk/l?=
 =?us-ascii?Q?muDP0V+QyOSt9fm5Pp8+yNpot7Psm8w3Eniz1TRFkEwfjBH77xd/zmZkIIHo?=
 =?us-ascii?Q?nKU0H2i0Wy3MD5gMzshwAZPGdNz4HtVHl8VOG66Db/9aOEwlRN15htCUZQhM?=
 =?us-ascii?Q?2aXbRDJe0R4xz79JKnb43+t4675WZBaPQyRxSYPnoPzsMU7OzYn3RjU9QTlk?=
 =?us-ascii?Q?xNhEqkCP2/QmzfSfA/6tBM9yd9Q2CMKCl57ww3cHw5YAAC2jx3qYMpCsLvSp?=
 =?us-ascii?Q?EEZdaqYEOnv5/VxbjbbkcCGmunH9I92UpRKcPb0QYVTzfqnTnRWn6MWCqTZr?=
 =?us-ascii?Q?diYV9L8aZc64bELI54k/2BB/c2ab75MnnLZBIju9A0Tj86bQDtl6P516SdPJ?=
 =?us-ascii?Q?RHH++apK6B9H8gCGMBKLiDlttd16UgINVnxMqzxOHfLgz57tAcbhiKL8K/Km?=
 =?us-ascii?Q?YhyFDx8I8LB3BW+qtxh0XkK/60wAZNDwh2TQgFOQItEW3RMPmT65DNLYsaFE?=
 =?us-ascii?Q?kI0Ta6TFiuaXOzZ5JTs+C2jwmq1VZD7/g4NN1l8ryV0eRsw6wmObXf7N1apM?=
 =?us-ascii?Q?pBz7TnxJ3Bp/1PBR1gxiRWzkuLu4iKWRB1jPKGO+4pabElmXMOX34qNuSrdS?=
 =?us-ascii?Q?AU2ghEc0hmq8j2EyNhXzDZ8vCvWHeVDWxcRChFoxZ+1pON8ZiQITp/iYrfjG?=
 =?us-ascii?Q?CGcpb4IcM92aiDklrcQeXJjeZrGEf4p0uMHc2ihajVFz0BAmxPFtmUC2GNyC?=
 =?us-ascii?Q?W57vQIWpZvWUZGUEfXNVQHrYaO6d4RFD1m90ktAV82L07ZEdcSLDFU1ecf1n?=
 =?us-ascii?Q?YV519s+JExapXEmpzKpg/zP5cXzeyD2c/XQ+1+NA0PQM70lX/iKO4rzbcGey?=
 =?us-ascii?Q?xflZScdGPtqCUsMoo6nNN0n5FQHVpWqjc/ReqGjY4tJOhhTlikLwT0IbBmC5?=
 =?us-ascii?Q?U8JxY/TQ/ByNhwrzi/wObgx+SmF6roZPtm4oCi40R1u0vILS7ve60CWQfIoe?=
 =?us-ascii?Q?pK5oebw408BCETQ1/Ch7FC+eunlgQb5o9cIKsw79Yt2gvNOB9nTQkEhpaluk?=
 =?us-ascii?Q?X6ypLxOkhwVgJqn9veiwfre7EGHs88LolorXReMBG5+gnbUx2jxoCzC8vU05?=
 =?us-ascii?Q?AOnSbXo8bU8Lcj2X1cdKVGHHFhY6ld9RkVyud768ei0y38UmntgR2EsTiGaD?=
 =?us-ascii?Q?RhBLyKPb8c1+CnFem67oMkppT8jx4t4nK6dZTzd4to9XxupEgS3LBaWazDne?=
 =?us-ascii?Q?5IA1qNf9YfXvvsMpHrBcovHoHtJDrlAE+sgWco6Rt9s8eAjwnZp4tsZUzgPg?=
 =?us-ascii?Q?iDB++vclXIOk+8G/rBkzIl7bU8DqFgC+VOByZrZY+2s1WW4Fc1+7I9l3salZ?=
 =?us-ascii?Q?8TrSUNXu1uGoomsW1kcHv7pph6asg91pNuarwwOY7JxV433qkqTiwNJO0tuK?=
 =?us-ascii?Q?u4VwUrhANSi4WK2D7PmBQ9/+IfuXgpHctVElsVqmQMz8Ze6NdCfNtXM2OL6d?=
 =?us-ascii?Q?2gXnOsWmWqlVPBAofYoCy5HzLLOYB/FqxblJRbfOup0Y/JBcPsW7sw5xeuPd?=
 =?us-ascii?Q?4UmQVpBOOg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95db39c1-88fb-4d63-4c00-08dec172c606
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:42.7929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: COWiweaQixVfOtwxwvGAmK7HHBD0uTKIV//0Jw/HKfcnjWtcPvZRjrN7z2D7/iCTv2DnOmx4iBwWcu6B+UpyzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061951_846752_95099566 
X-CRM114-Status: GOOD (  19.08  )
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

Factor the device-agnostic logic from lynx_28g_probe() and
lynx_28g_remove() into lynx_probe() and lynx_remove() inside
phy-fsl-lynx-core.c. These will be shared with the 10G Lynx driver.

Since the PLL configuration, lane configuration and CDR lock detection
procedure are going to be different, introduce lynx_info function
pointers so that this code remains in the 28G Lynx driver.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3:
- adapt to lynx_28g_xlate() change to return ERR_PTR(-ENODEV)
v1->v2:
- adapt to the addition of a NULL check for the "info" pointer. Note
  that lynx_28g_probe() does not need to test for NULL because it only
  compares the pointer to a value.
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 225 +++++-----------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 170 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  12 +-
 3 files changed, 227 insertions(+), 180 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index dbbadaa08cb6..50b991870edb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,7 +12,6 @@
 #include "phy-fsl-lynx-core.h"
 
 #define LYNX_28G_NUM_LANE			8
-#define LYNX_28G_NUM_PLL			LYNX_NUM_PLL
 
 /* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
@@ -781,6 +780,30 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 	}
 }
 
+static void lynx_28g_cdr_lock_check(struct lynx_lane *lane)
+{
+	u32 rrstctl;
+	int err;
+
+	rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
+	if (!!(rrstctl & LNaRRSTCTL_CDR_LOCK))
+		return;
+
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+			  LNaRRSTCTL_RST_REQ);
+
+	err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
+				!!(rrstctl & LNaRRSTCTL_RST_DONE),
+				LYNX_28G_LANE_RESET_SLEEP_US,
+				LYNX_28G_LANE_RESET_TIMEOUT_US,
+				false, lane, LNaRRSTCTL);
+	if (err) {
+		dev_warn_once(&lane->phy->dev,
+			      "Lane %c receiver reset failed: %pe\n",
+			      'A' + lane->id, ERR_PTR(err));
+	}
+}
+
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
@@ -1088,50 +1111,6 @@ static void lynx_28g_pll_read_configuration(struct lynx_pll *pll)
 	}
 }
 
-#define work_to_lynx(w) container_of((w), struct lynx_28g_priv, cdr_check.work)
-
-static void lynx_28g_cdr_lock_check(struct work_struct *work)
-{
-	struct lynx_28g_priv *priv = work_to_lynx(work);
-	struct lynx_28g_lane *lane;
-	u32 rrstctl;
-	int err, i;
-
-	for (i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
-		lane = &priv->lane[i];
-		if (!lane->phy)
-			continue;
-
-		mutex_lock(&lane->phy->mutex);
-
-		if (!lane->init || !lane->powered_up) {
-			mutex_unlock(&lane->phy->mutex);
-			continue;
-		}
-
-		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
-			lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
-					  LNaRRSTCTL_RST_REQ);
-
-			err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
-						!!(rrstctl & LNaRRSTCTL_RST_DONE),
-						LYNX_28G_LANE_RESET_SLEEP_US,
-						LYNX_28G_LANE_RESET_TIMEOUT_US,
-						false, lane, LNaRRSTCTL);
-			if (err) {
-				dev_warn_once(&lane->phy->dev,
-					      "Lane %c receiver reset failed: %pe\n",
-					      'A' + lane->id, ERR_PTR(err));
-			}
-		}
-
-		mutex_unlock(&lane->phy->mutex);
-	}
-	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
-			   msecs_to_jiffies(1000));
-}
-
 static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 {
 	u32 pccr, pss, protocol;
@@ -1157,49 +1136,13 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	}
 }
 
-static struct phy *lynx_28g_xlate(struct device *dev,
-				  const struct of_phandle_args *args)
-{
-	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-	int idx;
-
-	if (args->args_count == 0)
-		return of_phy_simple_xlate(dev, args);
-	else if (args->args_count != 1)
-		return ERR_PTR(-ENODEV);
-
-	idx = args->args[0];
-
-	if (WARN_ON(idx >= LYNX_28G_NUM_LANE ||
-		    idx < priv->info->first_lane))
-		return ERR_PTR(-EINVAL);
-
-	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
-}
-
-static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
-			       struct device_node *dn)
-{
-	struct lynx_28g_lane *lane = &priv->lane[id];
-	struct phy *phy;
-
-	phy = devm_phy_create(priv->dev, dn, &lynx_28g_ops);
-	if (IS_ERR(phy))
-		return PTR_ERR(phy);
-
-	lane->priv = priv;
-	lane->phy = phy;
-	lane->id = id;
-	phy_set_drvdata(phy, lane);
-	lynx_28g_lane_read_configuration(lane);
-
-	return 0;
-}
-
 static const struct lynx_info lynx_info_compat = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1207,6 +1150,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes1 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1214,6 +1160,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes2 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1221,6 +1170,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes3 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1228,6 +1180,9 @@ static const struct lynx_info lynx_info_lx2162a_serdes1 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.first_lane = 4,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
@@ -1236,112 +1191,26 @@ static const struct lynx_info lynx_info_lx2162a_serdes2 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct phy_provider *provider;
-	struct lynx_28g_priv *priv;
-	struct device_node *dn;
-	int err;
-
-	dn = dev_of_node(dev);
-	if (!dn) {
-		dev_err(dev, "Device requires an OF node\n");
-		return -EINVAL;
-	}
-
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	priv->dev = dev;
-	priv->info = of_device_get_match_data(dev);
-	if (!priv->info)
-		return -ENODEV;
-
-	dev_set_drvdata(dev, priv);
-	spin_lock_init(&priv->pcc_lock);
-	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
+	const struct lynx_info *info;
 
 	/*
 	 * If we get here it means we probed on a device tree where
 	 * "fsl,lynx-28g" wasn't the fallback, but the sole compatible string.
 	 */
-	if (priv->info == &lynx_info_compat)
+	info = of_device_get_match_data(dev);
+	if (info == &lynx_info_compat)
 		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
 
-	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
-				  sizeof(*priv->lane), GFP_KERNEL);
-	if (!priv->lane)
-		return -ENOMEM;
-
-	priv->base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(priv->base))
-		return PTR_ERR(priv->base);
-
-	for (int i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		struct lynx_28g_pll *pll = &priv->pll[i];
-
-		pll->priv = priv;
-		pll->id = i;
-		lynx_28g_pll_read_configuration(pll);
-	}
-
-	if (of_get_child_count(dn)) {
-		struct device_node *child;
-
-		for_each_available_child_of_node(dn, child) {
-			u32 reg;
-
-			/* PHY subnode name must be 'phy'. */
-			if (!(of_node_name_eq(child, "phy")))
-				continue;
-
-			if (of_property_read_u32(child, "reg", &reg)) {
-				dev_err(dev, "No \"reg\" property for %pOF\n", child);
-				of_node_put(child);
-				return -EINVAL;
-			}
-
-			if (reg < priv->info->first_lane || reg >= LYNX_28G_NUM_LANE) {
-				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
-				of_node_put(child);
-				return -EINVAL;
-			}
-
-			err = lynx_28g_probe_lane(priv, reg, child);
-			if (err) {
-				of_node_put(child);
-				return err;
-			}
-		}
-	} else {
-		for (int i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
-			err = lynx_28g_probe_lane(priv, i, NULL);
-			if (err)
-				return err;
-		}
-	}
-
-	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
-	if (IS_ERR(provider))
-		return PTR_ERR(provider);
-
-	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
-			   msecs_to_jiffies(1000));
-
-	return 0;
-}
-
-static void lynx_28g_remove(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-
-	cancel_delayed_work_sync(&priv->cdr_check);
+	return lynx_probe(pdev, info, &lynx_28g_ops);
 }
 
 static const struct of_device_id lynx_28g_of_match_table[] = {
@@ -1357,7 +1226,7 @@ MODULE_DEVICE_TABLE(of, lynx_28g_of_match_table);
 
 static struct platform_driver lynx_28g_driver = {
 	.probe = lynx_28g_probe,
-	.remove = lynx_28g_remove,
+	.remove = lynx_remove,
 	.driver = {
 		.name = "lynx-28g",
 		.of_match_table = lynx_28g_of_match_table,
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 802e32dc6dca..3fb89bb4b0d6 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -2,6 +2,7 @@
 /* Copyright 2025-2026 NXP */
 
 #include <linux/module.h>
+#include <linux/platform_device.h>
 
 #include "phy-fsl-lynx-core.h"
 
@@ -202,5 +203,174 @@ int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
 }
 EXPORT_SYMBOL_NS_GPL(lynx_pcvt_rmw, "PHY_FSL_LYNX");
 
+#define work_to_lynx(w) container_of((w), struct lynx_priv, cdr_check.work)
+
+static void lynx_cdr_lock_check(struct work_struct *work)
+{
+	struct lynx_priv *priv = work_to_lynx(work);
+	struct lynx_lane *lane;
+
+	for (int i = priv->info->first_lane; i < priv->info->num_lanes; i++) {
+		lane = &priv->lane[i];
+		if (!lane->phy)
+			continue;
+
+		mutex_lock(&lane->phy->mutex);
+
+		if (!lane->init || !lane->powered_up) {
+			mutex_unlock(&lane->phy->mutex);
+			continue;
+		}
+
+		priv->info->cdr_lock_check(lane);
+
+		mutex_unlock(&lane->phy->mutex);
+	}
+
+	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
+			   msecs_to_jiffies(1000));
+}
+
+static struct phy *lynx_xlate(struct device *dev,
+			      const struct of_phandle_args *args)
+{
+	struct lynx_priv *priv = dev_get_drvdata(dev);
+	int idx;
+
+	if (args->args_count == 0)
+		return of_phy_simple_xlate(dev, args);
+	else if (args->args_count != 1)
+		return ERR_PTR(-ENODEV);
+
+	idx = args->args[0];
+
+	if (WARN_ON(idx >= priv->info->num_lanes ||
+		    idx < priv->info->first_lane))
+		return ERR_PTR(-EINVAL);
+
+	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
+}
+
+static int lynx_probe_lane(struct lynx_priv *priv, int id,
+			   struct device_node *dn,
+			   const struct phy_ops *phy_ops)
+{
+	struct lynx_lane *lane = &priv->lane[id];
+	struct phy *phy;
+
+	phy = devm_phy_create(priv->dev, dn, phy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	lane->priv = priv;
+	lane->phy = phy;
+	lane->id = id;
+	phy_set_drvdata(phy, lane);
+	priv->info->lane_read_configuration(lane);
+
+	return 0;
+}
+
+int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
+	       const struct phy_ops *phy_ops)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct device_node *dn;
+	struct lynx_priv *priv;
+	int err;
+
+	dn = dev_of_node(dev);
+	if (!dn) {
+		dev_err(dev, "Device requires an OF node\n");
+		return -EINVAL;
+	}
+
+	if (!info)
+		return -ENODEV;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->info = info;
+	dev_set_drvdata(dev, priv);
+	spin_lock_init(&priv->pcc_lock);
+	INIT_DELAYED_WORK(&priv->cdr_check, lynx_cdr_lock_check);
+
+	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
+				  sizeof(*priv->lane), GFP_KERNEL);
+	if (!priv->lane)
+		return -ENOMEM;
+
+	priv->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	for (int i = 0; i < LYNX_NUM_PLL; i++) {
+		struct lynx_pll *pll = &priv->pll[i];
+
+		pll->priv = priv;
+		pll->id = i;
+		priv->info->pll_read_configuration(pll);
+	}
+
+	if (of_get_child_count(dn)) {
+		struct device_node *child;
+
+		for_each_available_child_of_node(dn, child) {
+			u32 reg;
+
+			/* PHY subnode name must be 'phy'. */
+			if (!(of_node_name_eq(child, "phy")))
+				continue;
+
+			if (of_property_read_u32(child, "reg", &reg)) {
+				dev_err(dev, "No \"reg\" property for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			if (reg < priv->info->first_lane || reg >= priv->info->num_lanes) {
+				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			err = lynx_probe_lane(priv, reg, child, phy_ops);
+			if (err) {
+				of_node_put(child);
+				return err;
+			}
+		}
+	} else {
+		for (int i = priv->info->first_lane; i < priv->info->num_lanes; i++) {
+			err = lynx_probe_lane(priv, i, NULL, phy_ops);
+			if (err)
+				return err;
+		}
+	}
+
+	provider = devm_of_phy_provider_register(dev, lynx_xlate);
+	if (IS_ERR(provider))
+		return PTR_ERR(provider);
+
+	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
+			   msecs_to_jiffies(1000));
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_probe, "PHY_FSL_LYNX");
+
+void lynx_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct lynx_priv *priv = dev_get_drvdata(dev);
+
+	cancel_delayed_work_sync(&priv->cdr_check);
+}
+EXPORT_SYMBOL_NS_GPL(lynx_remove, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index 5cd86c9543cb..e8b280cc9b38 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -10,14 +10,15 @@
 
 #define LYNX_NUM_PLL				2
 
+struct lynx_priv;
+struct lynx_lane;
+
 struct lynx_pccr {
 	int offset;
 	int width;
 	int shift;
 };
 
-struct lynx_priv;
-
 struct lynx_pll {
 	struct lynx_priv *priv;
 	int id;
@@ -42,6 +43,9 @@ struct lynx_info {
 			struct lynx_pccr *pccr);
 	int (*get_pcvt_offset)(int lane, enum lynx_lane_mode mode);
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
+	void (*pll_read_configuration)(struct lynx_pll *pll);
+	void (*lane_read_configuration)(struct lynx_lane *lane);
+	void (*cdr_lock_check)(struct lynx_lane *lane);
 	int first_lane;
 	int num_lanes;
 };
@@ -85,6 +89,10 @@ static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
 #define lynx_pll_read(pll, reg)			\
 	ioread32((pll)->priv->base + reg((pll)->id))
 
+int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
+	       const struct phy_ops *phy_ops);
+void lynx_remove(struct platform_device *pdev);
+
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
 bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
