Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 066E4CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qQaG86OVpdGv19COG59q14wT9zAWN3/ABTT7k5iDoE=; b=IawiIUQntLIMOs
	gcJbM2ix6wF9RXiihqCQQTt7A+GfxFhXKKIx596UJfx1OSVlD6afkokheEDn0XUlW8iDC92kdK7kO
	RDS6QM67JgywH5+ZkckVU/ADwkOrLbGINKUrmgRucQ9koTKPwU/ogXgTYEe9VS0meb3RrJwgyLlV/
	KIWIn85k3oToMu+SpRp32QBDzDSpCowTMbJ/zOYz69kDkwHG05I4Y9HzQfNpxEj4hoQpcazsFw2oY
	PCmMG5G7bHHnz9Hhuj1+G2rsOtOj8iM0LTS+jNqM10eGwg+UVrbguvnEbHLqgwzWfunDIm+MFRZCS
	hGaBmreo2zl/jFcsmMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj1-000000080Ug-2lX3;
	Wed, 10 Jun 2026 15:20:15 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiy-000000080SM-2R2B
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i9EKjgzm/0Bc9zsTwtVqx/HQGxmuLvD6b9dG+9Fi8yIrN2IUi7Nnbf+VyT9qq0NBx7yyfzAhVtTixCl8i6nZHYQBilvk6xCKqC4/zcrVX8ITg/ETgYrRxWOdUbSHHBqyLZ3iwt3EqMIz9CBVvwQQUkgh31GftERJU82IwB80ES+JMh/YXcSDgUkqzfk9Py0Qi92rb792wae5ox26ZYn0Tbuv/e1vTrQFBrrN+SXBv1559yDG9jk3J0QZXT1HtdomJF7BehYOR6UWHV4TWhJVwR5myGqUVS2IMXH/KUx9nSz1FIsR9dwWXdTdXAMXuXts+2FQEU5eS483/2Cy/aVxoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQrmO9lMCe3eIf18Nlt5OzjaNvBIpsOVkJS7QpQ7LlY=;
 b=TGkpEb1Q7B6aEL+ciZLQ3Ist94OoIWo7uCjs09oFpGg72aQtV1juZtG9w2SQQvnogJCH7Y8mLw3oewi97cAfhkcROZ9lhLVml3lFCFKwhlMBv3RUi0qnnWXCRc1tBSL9AEc7IsM2U22ZIMKsxdEziULf41wugHGT59lWh4YXLrwMX/+1XjgGeRNYA8sJyq380ek+FJ21qXslAsA7CjhXKONN/vLrZgVoZX10QTfPTlrhFyEhRJsVdYNedetjBke+288NQHwkVMQPsZV1URrBt355M0ulNDfSMlOo5Cdwa+a6xfVyM4Z2lQq75y56ezBiUagtOPubKt03yOWtvbev4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQrmO9lMCe3eIf18Nlt5OzjaNvBIpsOVkJS7QpQ7LlY=;
 b=kKL5CQRBGgtjCI8nEQ6k/DjWjNWLt7gik69GlcmMSfyjRQ0vd8+CLbrgZP7qf4YArsBc4IDX/Nt+CcxSZzkUKEwCz7P6/F+joW30uYCLkTqdmp2iU/Jg/tTmLcUUywWezRyRRzmLmHsbBMQVdltGQNUu+EwaEExdvrhTp8hb9QSNjjT/q2dwVQgGJdTR26JZJqnLfhXLHU4fhs5/bmoRDW9SPbs0vOMV4YJuKyiVevW7BImNvkn2Vmo6VVX8Nc+Z0AM8AFOMKZDDTfkkbkP6q3ZH1ffaq+e7LNizlEzDvYLZ/V81nSZfnutz1IcQKgNjUAjybuqUS96tvWq1/Mc3MQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:08 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:08 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 06/16] phy: lynx-28g: generalize protocol converter accessors
Date: Wed, 10 Jun 2026 18:19:42 +0300
Message-Id: <20260610151952.2141019-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0P190CA0014.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::24) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: a2bf7e7a-eaf7-45bd-61ef-08dec703c1e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|3023799007|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: R5zo2TLE+r/eSYayuj13BAwqgAOcyF3kIj7B6dEKsr2dDVoPwOUVs98i6+x5nRK93MR1JCrfcUNP1fo5v8CugZwKH7E0SLN/y3F7+kXA8RKCfQKqzLhx9E45ZRmA22mMjMZzwWOH/KSMTCMOtfElHoJD8o38OdRZc0WUOz+ujE5r/0Io4bNgf7j1z2WN7dHgresF5rBWgd5pkCvm9/5IoNM3CyCbgnJyQHXStOEtnW3Gfms0dZhwizla2Ff+vZzByUcFOjhg0zS5vAkP2r4a8nMhwOG0XtLnZwbDIkaIiqzBWtbBE9eimwtDslWRmkPBZ9ZKHufEzwsR4NBSCAhCZdZhZob9lENbovPYXlTuI6TQPqIkybke+LX/siCCfE07UNIytvZpNiYMojr5Z7EN8nzaswSuYINs1sUILZDx2R2xQmSzEa5f4+KFcDRxCEYElvwsrgUnv5Y2542VfTVdZaRA2lQgFlnxLV2ek/t37V5h1I4aJOMpnO459gMXB1OOB/KdhEAM8Nb3VkPUpAjEERnCo+WTJj0XMTPB5gkPfjD51VUY31NxUDyJo18FCON5tD6eai8bic9uy0Gm/1PyE6NTQFh+GKMFxkAmWHhlNmyK1ofaPkogMkcW5obuhqDQP2KmRwQNfxPAN4MQBMWpbgMhPpEGSzDB09LkqBxi71Gk6Ixz1I5bNG2cw566yFRt
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(3023799007)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uSJu8KELe6HjmKOAmomDCJbWQ+lRZi9/WGQv40SCZcDTLKAQEI4auiDDPKi6?=
 =?us-ascii?Q?7gw0s+9g24AD6euEM/j1SLnBzpNmuC3c8mhnVYy7AyIXKEkUi6FfAr9e/4fx?=
 =?us-ascii?Q?z6e++ABAA+FShD+T0h/qFSGUmQRSJct3SbxW45gEt/uxroU4ss/4eeEf7gCR?=
 =?us-ascii?Q?0h7GQJghEzsaTXX/zZum65Ggh2XkCb6pWT2Mugt3b9Fx7fzdAws4Q62iPeHw?=
 =?us-ascii?Q?76QMpE3ZDY188Y7nNfNqJMW2GEax9Ip24zAkVLsZQbp6BhYeJddLPesu9R4y?=
 =?us-ascii?Q?OnW9VUOHC3HbdzZUDbqFopgnd0FHzC1BfHsf6GU/8damU9NF8N9DotPjwnZm?=
 =?us-ascii?Q?YAnQWLkdDqPlHCiN6N9Sc19v7kkUKO59F1/mBuj1ZCtHx1g8YGgfgdld/Tur?=
 =?us-ascii?Q?3NX89mlrKlA8s0fsJLGUnWPST3k+wgCmd7/lQ2gWUyXPktk0O8GRXzduQ7pY?=
 =?us-ascii?Q?B5cMKxiAbqKXV8KBxaC1kEXN92ClrS0GR0T5D9uDIruQZ/4RcjsaWa8ZHt9a?=
 =?us-ascii?Q?EFMMof25vsg6vtip3p9PdcRwaOCoJZ+1Btot/utvx+d4ncq7iwbYYNXLTTer?=
 =?us-ascii?Q?tHBIwviweeuyAAqSRWiy7FK/BOlxB/t5iebxJcnACQOBGe63pBrhk6BrNIeF?=
 =?us-ascii?Q?xiFtP4JodERiPYYzTqfZdtAh3g2kgXXD6Mn2KHlMuyqzupp4msgVkpCrEYRB?=
 =?us-ascii?Q?SL1n0nLGD2V4HqLGwdt8qRWgdChaglv83TUuA/1dCaHywoUanKr9eszBJA4o?=
 =?us-ascii?Q?9Nn87Z+T5N4AnvVc179IxKAC21+wJf06d9r9mCdhKnhEMUSAwEvCqttaKac9?=
 =?us-ascii?Q?ldkUpaMqWDOGQtqV9/lclW6kS2bO6Y9PrUHp4jhY+mfASWB0jl8lk/Z7Ot0i?=
 =?us-ascii?Q?s3Vj8qD6vAmzFzbzDv75uFemCkowiYWTiCQHopJB59QilFIT8X+ZNNCdSkS5?=
 =?us-ascii?Q?HPcxUGzoMlFYM/TbZeVWo0kWCYn1yIZD/Q4Q0XcEw7ZJSuLzrWyp9yAKtrcN?=
 =?us-ascii?Q?J68sppzwpewz8lksUyhOOjQyrJH0VUIyMBMf6OWMrkfp57q+5RupchR3c3u/?=
 =?us-ascii?Q?QqcHYU4HjNu3X6wcjuObAH/6SlHwkg8rUkgOASxisGUeE1Wcbawq1/28QbhO?=
 =?us-ascii?Q?NRuDKHqficc/0N9uMfFEz5kBthiTpSmGLU381D6ZaXvSK8FmbuBojk3zVxZ9?=
 =?us-ascii?Q?7VPyKHQM05KL824xOjXG9O9Qu7revFJq2eESjFI32kQtd0a3hZHdXKX6m62Z?=
 =?us-ascii?Q?TU6zsvPBXm7J60FCSJI7kWDV4NNO7OIzIpo7Pg2Uu+Ku8/ai5Skr+P4oUVDk?=
 =?us-ascii?Q?619UU0r9ebuJ8RZIyjl/RsQCJlNdc6bOjE+DfGEbbNziTNRmJjiUtgVKFed3?=
 =?us-ascii?Q?HZ9cAl4CVEBTapUzV4mvuIp45XAWAkm7IjmckTA4DSZB5nEcpIm+oD5KESu/?=
 =?us-ascii?Q?63h0BELqeKUmvVYtS+dRKQY27mvl20PGszCi20WwPpJgO6CuSNfzjeOXf5ug?=
 =?us-ascii?Q?+cW6EvMA1C8Neoid+j7IadG/Cv1lWJKUwz8XsyVZwcKDGMNw6SaHADaiIWNR?=
 =?us-ascii?Q?S50XAaamOX+XPm2NhukrNRylV+Y3haLodYD0kM2ZVQVyGAuw2o/lCg5bUs7n?=
 =?us-ascii?Q?5E5V7eTsN8EDLWwAwd9vnyjdKmXtKpO8eCthtfJT2zCOQe7vdXECQWPh7Rr3?=
 =?us-ascii?Q?mLTrVAITumOW1rXRHw8xXKWrT60uENMNc5s5BfcJMbcsRg4EaWVnU5yMzBmI?=
 =?us-ascii?Q?S5KugqT+xQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2bf7e7a-eaf7-45bd-61ef-08dec703c1e0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:08.6441
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u9laxHffFlFBEx3ZP+UjSgNXDF3gQYXZpsgVdISW4G7RhPtDCOx7Ul4GPY+/fGnjg4cdeRl7uq4jOd2qavxNWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082012_768608_DB7D7BA8 
X-CRM114-Status: GOOD (  13.95  )
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
v2->v5: none
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
