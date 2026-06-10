Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DD2CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVNThORUHgVCzXLLpnDsRdktJFktBoeDFekEvFp9so0=; b=qQGOym7E/buKIW
	ZcCh7iLDvg50SNarANdioLsaTY9l1muY70IZHfcfFzkmVMhr6kyfIwk9d+4IMRVKiI5ikvR5yRcge
	jLAjtY/fuczOWhNdSU1GjClDl7ayOLHxw+suLsHb6fVqyYzLz+FKmGE+ghfQennq8JB4t061sqlUm
	lKYe8J6ukWMfOwD94XoM7QyLAefVcIENJ8iVFPLNRkBsL8pv7UCPVyvvZs/pBnkqzZ3YmULfOd/fI
	f1KcO0fUD2v0cD3ztNFJ8yHPP40TVnRfC7nOHzgt+MqyuTKmzr6d5gAkzFeQmGqGPAe7pVJ2L2uL6
	C46Kv1Ydvh9NCkhniMUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj5-000000080XI-3pNU;
	Wed, 10 Jun 2026 15:20:19 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj3-000000080SM-1OOR
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LWyplR1E+FOmgTfKujmUX0mBDwuAkOGuS0kVNVYdsO4AKQo5vrRUJGxnJq8GJkyqcKzNCKhN/nZryCcpBBYjZmt1ma1i+5yMIhtWI7e3rbVjf6WxmW0NtthkoIFk+MxwEdY8ymh2Fqvy3+RxZ6U4EkdjFCsuDJ1bl1vdyze1JkOS/7AtPBSOc8VVEwEov/0dgkUqgvW8j2QgimRuobdHVtW29J3jI7PTSOjJ+i9pGxglytbFwpMum0MbfNN+V313dZLo7vPq1cjFSkOmGL6dPKHrZgFHue0Q62Ogz7fSgv2uTkVHYlJ4afJn9CqPSR76dZbk0wHCLvwn8ka7dpG4SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ouKJb9Ni5jD6C+dNnkZ/rRYHO+OPxyZJEoePJsh1W9w=;
 b=rWguVvDKnCRfI16H8bIitFkahDWYa6oDxOjWg4fYW6EiThN2lsPMxARGnsiR9tg4ilCREuf9AVXp5QfvV5kSsfvy0XdgnQmDqTkFKKfls4ETpLDjMLUrbgesxV3yUrTNo/IElXnQC+wNtNsXQFGOiaP3TvCXcJNubhwRe4n5eDY9MfPZI/hRis4u6FCTGTCN1IO76q0iTg9rbGGXL7mjOGSWwF0kci098eJG66lnRww1UH9rUFXZWRyMca6RniE12taHCmhR3qFrDTadJ7SqIkwSSjukIVX9J3pGQt287jEhf91SyqebNw7pf4423bcuM3bDnYFbqW027o/4fv7YRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ouKJb9Ni5jD6C+dNnkZ/rRYHO+OPxyZJEoePJsh1W9w=;
 b=m7Nd2+hKCZTpZ4xcWU3wtcKck1bH7pBytjFx0oFpcfMMB4BdJdyhZVFfkIkVHUHh+ZWWpas/NqcS83v1Fe8/rHwXgY9jxbpmUF/tf+4WXv5Bu2FK5/+HbZakylAQQsZ0X/M11Vv3KGsfeGvqn5svcQ5yuzdNAl3a4EHOgr9OaHeiE49ibCA0Ng4f9B9WoP6/J/qBu5VYoL3mQW2fgnQPC9C8jZZOqMiMP6DYLt/CMXZ7/8BcqPZGbPy7Hj2N9LS3HDZ0EZBPCoR7hae7orXWWg5dE7pBErkzPSCkkXtVHPWCIPt5tzOpKmQKXd1TPdJ7uDBYRKFZYXg7Zqte4IeIqQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:12 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:12 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 08/16] phy: lynx-28g: move struct lynx_info definitions downwards
Date: Wed, 10 Jun 2026 18:19:44 +0300
Message-Id: <20260610151952.2141019-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0048.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::23) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ed7670e-519a-46d0-d9f9-08dec703c402
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: qwIuj7ChQkD7SIIv5WbuSpFM+QHiQ0qY0naBUCcz7hM1B4Wu9x0chQHU3AhlY4XvJrPGh9NeJijveKdL9mXI2AGxfSBijdAU2LG31DuZkp/8az27lbwGERaMHq2gNZwEcwjh/3X3XiTuJLYT1bH6Ubhb5rYOmAhsBClB87/uQkOfbyJzCzJVstWnt91SPLzO4umZErnMbofHoH9TyxaplxX8m55dJWLJ0+NnHgzkaicmGAv3tbmyy7+qpjHBJWaU6F+KbDjaBAUZjClrJQRqysM1rk8nepzBkJ0Nthmoa26EKicY6PyErKYdRRDYa9sTcEyT3CBHZgDI7pHj9SIpNo0bALdRxNbrhBxFT4xcewZS2Oy8WqU5GXsUFGIC/f6Nq2j+UqKqaK4cZ+xTo8PXXiyDBt5xMMPQ9ZYregGapoCOB4Mq3sHF/LBcnb3lHRQFIakpFvpBghls/OmK2xFpU94cy0U3puZbtKC4q+QTPjwvYfo/jIIuQ/UzuNELRXRHmeYKbN+7FGdZ8Xn/yEKR/FjxiYnVsnIUB3XZoIhHVJBpPWYlhjasXSE/otnVuqP4s7bEOgg/5jXooixDtoAB3ODJvinrLYGshGEu/Mm/+iXUfwCLm1qy9HuccvX90+cal7vP2ERupttCX37yE85nP17o/1qtC8YPGVQy9K9NovGb8Drm8QQ9FpipkR13NZiu
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JCuyW05d17l4X29P0QghK73VXci2Znm71tsenZTWH5B/sLQuiQrpsLNgGMB7?=
 =?us-ascii?Q?Qp5Dx5/j+8Sa0b7rh1a8l6h7s7rtFrkJ1I2k+xfh+28ziMqbXZ2CZp9xdkdD?=
 =?us-ascii?Q?WEhsBb7Ef05QUpzpKOhTBg5OlmnlZ6fWSpFCDvXg+HFsNXXiDxRHzH/viF/8?=
 =?us-ascii?Q?xIm4XYSHCPSNiaT6npaDtU87gQNGkf18556vJXtVHUXF7W2i9lxp3Vrp/9rk?=
 =?us-ascii?Q?yfZfOYfBbvQf3EEMUyDKvIUnfeEItOhwFLd1QTUO4/ZuQFLbrOtthu2r0MjB?=
 =?us-ascii?Q?FqWUCt3kqou17h75uXhjVJX4X9v591ZgnpdBxmLfXymsxr+lxZpBPsxFR6P4?=
 =?us-ascii?Q?+2YvPx6sCW5exrNLaKBsLLufDwj79++31QujE3vVsfvqwkTGs/dyu7I3iYyE?=
 =?us-ascii?Q?YNem9EKNMsLktsYyJnMZbNwyFmSQFgtBkrACdQ/aTYdi0dyenRh/VQTeHqOu?=
 =?us-ascii?Q?gQ1yjep7aH92FVOeqXQ0Nf0MjV/HXp/KYGCpEaMcob1f5BVjWKn0ac12Xuk6?=
 =?us-ascii?Q?9o3tpE1j4GLNn4aQb01DTjLuEL7rhG9NWF1lbyB/aqW8XbfZ1MnbIvvR3RbX?=
 =?us-ascii?Q?7zHwZOoc3WSdC6N1kQp8tnnFB6sj3GRezsLDVCWVn4P36zoy1qzOXPWe4t7S?=
 =?us-ascii?Q?bvju7KCRQvh4ZF70EcFWWURdU7mu98Fy2QoSb9I3ODnlnTSN+6yPimYyodD5?=
 =?us-ascii?Q?cjHSWO9WkF6l4xcCEzOs943aT2B+/Aei6ijK0xS5dJn2le35XLGe3bs9Ml6e?=
 =?us-ascii?Q?SoaFDweRG5JoawduUgdbUm//6ibFi6tH4YxV/2+rJ9+gfmBfoZ2CK4pGyQfh?=
 =?us-ascii?Q?qE8XeMiUgSRG4g8gr8crcQp4/8vpxdQzEKuLtevuB0FGGxNB0UNAP++Ci7U0?=
 =?us-ascii?Q?GxpXVrkpuho0bdq24Z6+zbAo0HodEeH0tMQVsiGdKbl+qxjaZr0JV8inqu2r?=
 =?us-ascii?Q?3/lQI4jqRCARR3ajDgN93MxG4FAg6G4A0pq1/ryAU5OZZcP0iEZyBlwn16jj?=
 =?us-ascii?Q?zn77+Q0g7V6AdhK53apfrS/fKNkpKOmCrMbvqBlmOBFwvUsk45lzM124KbLW?=
 =?us-ascii?Q?Woq4mHijuYiwgVZzP6b5VK1XW3w+jNyN8iOdZAkjfDHCmCN3XwaTyVRzlGIn?=
 =?us-ascii?Q?tAkStABiNLY59uvWwFqrhLnlLiP1epH11fZXHejRIS8y+et99ZC/oWbjgWbp?=
 =?us-ascii?Q?ESPZAGok+tuzPCEVdJnj8136BsaAEu4MWt38h0MTHdtagY49K8yppWa4bCQw?=
 =?us-ascii?Q?Ov45kAEMNbpgbn3pgFTzMm70a8lW2iqKOjmalxeuh2kdSKZz+rSyQqdEMYxJ?=
 =?us-ascii?Q?0Ti/p8Kz2hxYaaGkWy+zqjWvgkb1+RkmW4Fs+qvakzCXSnhPPiaGr6R6X4id?=
 =?us-ascii?Q?6+OYvBGin3k7skyyLYpOXQM4Pi9/y1DlqFdV+wxrtu7J5eMvGFLNa39EcAbx?=
 =?us-ascii?Q?XzOHHSQUBTCMYmdm2AXdApEFgxSl247XTyr4v/6wT/6o7lq2If1R+kCDaNEQ?=
 =?us-ascii?Q?YxUj/doomMCty83n0KMBhNl/5UFJC0bn15AYTcT8WF+PvnFgiRE91ytLCHpL?=
 =?us-ascii?Q?O7XAMb505SDp3L2HMLopRrUm+V4m0VQKsi230nF07uyvajlsyq1T9iwRpn2H?=
 =?us-ascii?Q?oWWu7Nerse1DBX1i/DEuGLkzEa7HyqtIGXDEN7gTndf6sGNepsh0667g8EhQ?=
 =?us-ascii?Q?QpmsYZ4c05rH1/+m1h3D/0JsT9Ea8a/zYsiIAC36avamsfZJl7xoOigRG0jC?=
 =?us-ascii?Q?jO6w5lJqPw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ed7670e-519a-46d0-d9f9-08dec703c402
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:12.1991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6eQNgdX0SNHh3qODx69ppHyUgnrcHhBC36Oh0c+XrkcSUSLPV8y8CMNtbet4cRm65GcHpuA5Ai0oi8o6CqatcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082017_382791_E09068A1 
X-CRM114-Status: GOOD (  11.76  )
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
v2->v5: none
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
