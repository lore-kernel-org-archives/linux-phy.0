Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE9BCD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WIn0mdR0oDtRfEannyw7tHvHWqpRBBa216iNZP4ETw=; b=mirtO/r3l42jUn
	ze8uUalwDSJ0h+Sin1ub5HoFBK7bvd637sn7l71xHiHyI26qJRwcDy/AwoJK9tPcpHfuTZxhSlR/O
	yJAEmnA8FP2IvDJhwavUam9TfJzEWpZihj8heWDj+diOprfgu1UfGk/9+EGJTJ6Ei1B3igAF0u2DO
	60kQ6CFYSQNzm2F3lonUrtFQ0+H+F3HaarnjdGAsQmMD8ZYX6lLF/AceXl9XmjzzaOktNusiVpoZ9
	0aSNogQSwXD6m6OHkHDF6+j3M0+1CZc194N/qbVzUQ2j6B4jd1AZR4DVednmTMP1hP+4rWrrULNni
	wrvxAgj2ZReHIJI6rMDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT6-000000065Sk-1beC;
	Thu, 28 May 2026 17:24:28 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT3-000000065Mi-3ymy
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VWS6BW7DM4pm7Ehzb2m+l7kEKnGQX4ptvlpbasno8Je237oJ+MFWR1qUL8BbGraoBYpzaGQPK9t9i4MCtjDd27Bmln02wpetQUb+INkycqtued/8R8slz7Jy6sTPLlZqadaPKRq6GVFW6+hZw+hnu7tK0hR2oTAeLZhahcsXKNmUhB0qd3WBvxB0fI394vkE+z4iXIzh39jRJtCAcYRq79uHc9RI7eZH43RNUbQFKUt9F0JPc9kDnHtI3hVuIobr/AhpONXm/8V+cvyk/eny55WvtdZJ62dnMjq6wXU3X/sOO7bZ+RwUVEH7+2XuCbaU85da5eXJKR0VqWjJLoQq0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVrUv/L5zm5eEIeetNmikF6YpVXKxK17pHF6eXD1OmU=;
 b=eKla22WDjcQQJl7Sry6Eaez+zcsdGCGgR2SS4ZFB+pB1dmY06H4kG/fVF0kji8om2eKFPvwiui2CU08MbnyFBa5yHTtMaaPtGWBpRBUsBt8tOvF52BraaqQsywDC72AlGRgZ+CNFxwJ/F69fVDNUDQ/s+NWNXLoz8G/El5hIiQ1VPNnhKpR7NlwcDLZKPtkWI3Lh1S5ZMMY5RMk9PY9B6giNImqdCou26sCMBokaZmjdl+v112BMgnjwC7Ol3bg63KRSgSCLFoswHCuw2AOp/Jc3YFtKP/ogPPhCWDj8ieAJeB0TeypMa09gWCdw7sRWbh95nxBLYZhPRKwx9j8KSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVrUv/L5zm5eEIeetNmikF6YpVXKxK17pHF6eXD1OmU=;
 b=nL/Xqvh0iDKM3NaodKgM7QHLIaNER7gbvr1QooE7l1/cVQ8MGCsYa2izHwZU7A/n3GBnTuMFGrxoOiEahRVFgDXSBm946fUe9w4UJEoeBkJixFdGVJBRTOelHEeTRKvAFiG+sODRe304kHxP9bCMHWs4fan1xS9IsYEU4ZNJH06QVtPhHxblm2xrqgSE5QX4I7DpJ7lIkom1xxYFMDs3DaWvyHYco8f3brWqGpkKQ41+0n6nphzbB28wUfq45z+IzlydU3plqR1y8YHP8PYFgYED8zlwYqJ+SmnTG0eNbyMzDga3m+WqDI7Ts8Tzvpqkgo+5NwQHiuVI9mVkl65gFg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:16 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:16 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 05/13] phy: lynx-28g: generalize protocol converter accessors
Date: Thu, 28 May 2026 20:23:56 +0300
Message-Id: <20260528172404.733196-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM4PR0302CA0011.eurprd03.prod.outlook.com
 (2603:10a6:205:2::24) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d5788cc-2953-489a-06b6-08debcddf1cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|3023799007|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: KppXNIR1+iyZlbCtFj6LLpHIBeGrYQVIGtCFblXmJzAQQNye0jf+bbVRoHlwjcGRvgDhQLiM8/GvV8PUKvFOVy33Bc0eMtv1+01gBvgVm8yWko71Xae5ec6G4E6Rg3ObVqa8VUH+Y6WgCCQ7eZMhUvsP/ktdYRQ0IuTMkDh1EJFSYaP7XJlVb9dia6CLXBgGVyC6YU8mJM2G4wceAW6JZ27PCcRc1//o06hbIw9ZrYM/SqdUalJgKrVVeHlzXnpZl3ISnQ7Uw/8cCOd1eXs7f8VCtbGgZy7VEMntfn8hR9/K7AuiKbk58V0XHPD4+f5xOkU2CV1M23uco2hSwZN4VviFEU3E+jXmbfNALHckGyVMTJIEO8v6y0C/ulGDXYZDPiZpxf6DpWcSIxKGmtKV+HOxhE4JgmmFDKTIFDkjdRCDnALZ53/h3cztZ+5Q1Ar19kb+j/iyGFN0/BJSsX22i1HLrWiU6xToW040xEOVDibYPoMGsCzoxK57ydDW7mQchK8g7PPCUdk2mXePHIQ3PspOQOLjTYMwC2ywUBN85HlAtOp9kVdQdQFWVAW6azTYjAXHJqGf48vI3mTxJrBhzhS+eftA1IKuPYuX1P71RnB9Ff5qjzW2F4SUpbLnGUTM47HLxfIE7fo+HS8NEIvIrIMLnmEA8tzOP1bXOZmhHPCYV99eQdxVEmsQVIHV2aba
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(3023799007)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ItJnWeLMcRCQAKCAIm7FFx9W+qK2fZl+Gq25LxOa6vqVu3LnWrXrvc4jKZir?=
 =?us-ascii?Q?O8yJNeyERoKXRQTd4UpYV4yH++mx3bdKSOLQCEzjeywe3BqMMMOyX1mbjYz4?=
 =?us-ascii?Q?HWYzWYU9Dm/vDKOwW7syo4Se18Hix+KxL5AzQdjhLhPNXG3lQy9P1amhKZIY?=
 =?us-ascii?Q?9Y/vMiETMNR+3ky1RJHVTnQqASUAvJzMDufCgZ/hb87Bmdcsfq78Ujg9XRzZ?=
 =?us-ascii?Q?lYC6ozVzW8rZGx/4D+JjPNqR6CbRFR+g6sUGP5uZo6Za30bG0td6FT2Emaj1?=
 =?us-ascii?Q?HN7kcGz8bjywRogloCVRWp/o95UxHwg5K4AiqvxlekUEEBn4L24j2p3zFUFN?=
 =?us-ascii?Q?rZkt4/W6KUFU10WYUnMRDJdiw7RFuBGnzqKNtmR8jfJOUc2+9QR8HhwPpHe3?=
 =?us-ascii?Q?QBE+fUYqeHI3NtzhHlZE7figIREHDNnS6sGV/OLNwlP9qc/VNjCXYTjD+NfA?=
 =?us-ascii?Q?g4Na2TrE5XMKt7iN/+8NveSZDDmGyv0B36to56y4tIMWXLtQvrL+ePtPryCK?=
 =?us-ascii?Q?jfrasp8t59CEc/czOu3EGbj9ocLc1zPFlGw3aYRXwx7Ivo62clvRCSexcn2B?=
 =?us-ascii?Q?gQmWnpOrub8E7qDg6kl+ApsYMHDTEKJiFkrf+ljhfZ8nlT8n1jcsuy4gJLl2?=
 =?us-ascii?Q?6hbotmSkRUlgL7w3AdsDLGHRHz2zlxq7NJHMg1zHMkanGap9fATbsCzk9oyt?=
 =?us-ascii?Q?2UHuiIYO64lS1AM+M8l1V/z5RaCOsQ2Gj0VrLZd1woK/ourY+gGoRRy3G46z?=
 =?us-ascii?Q?oqYL4RuxR57hAEbt3Nzgc0jPnJjWW/wQoMVtBk2jni0/KPoyqNktCZ3BC5fh?=
 =?us-ascii?Q?09Z2RGSLsfiNL+ZuaYGhU0iUToxu/wmFMxudVu8HqT7TQ+MUUBTq9FgI9pHG?=
 =?us-ascii?Q?wa0KaFC3qem0EcbqrBQp/6BV4VhLfqycxFT4778OM0PruHCRAZft7th+WY+7?=
 =?us-ascii?Q?T2UopleWEDiia9xF4TivR3bpSBZPWjVXhtvFdhIzwagi2vhvzVMMlipxh0cX?=
 =?us-ascii?Q?sGhiua1g0abyh4nKYQGZT50U4qmSmP7kPpO8H/HsOTCCvA65KjyydeDL4Ic+?=
 =?us-ascii?Q?tBSECN+vks1RPWcvWXeXCHojvFT8yUiAxKSC16yEbIA0+8ZWxLJhw+xpj3co?=
 =?us-ascii?Q?ZvPsAmwlBTi6lw64AsA9GlWqPsVUibhLGncuRhBfwm4xxziUYaKs7vTr/RMW?=
 =?us-ascii?Q?4OR/tBEY33z657RC00C57ckI3hXCBbVQw3iExnpc80Vu5P7VSQaKRA1AUKlG?=
 =?us-ascii?Q?a2KVYkq81LTechG/k8QmquY3gR/LiGAS66EMaZMb5zCZu7+ZDVyVI4IB+kmR?=
 =?us-ascii?Q?PjgQFw/Oolc3beE7zcNNWl4lwXyWG8WcVCCmnJ0BbGsKoHOZNq/hi8jWdQIb?=
 =?us-ascii?Q?oNjUswZVh4X9+9r3rIv2wt9jC+2dI7vfj5BvMEhEm9414MqoTbMak2EUlhTU?=
 =?us-ascii?Q?TYhm/il8zeNjpCdUQsatSDpptzcJ/Cfk2Ks8HUipY9TRNJ0BaINQAnQDVinw?=
 =?us-ascii?Q?YO9InMqQaLCwz5gqeLykWcJC9ylQGEGKr1QLw92SWPqIh7GBG/eBi56E9J0M?=
 =?us-ascii?Q?EG5LYNq5aw0e/2MMirV31p3spXb4abnE+AiXXj/aybE4yrCPfQT/F8RfK4Rm?=
 =?us-ascii?Q?IpdEkupavsfsf32BaFaxQYl5oLZTxWXngk9i7bRjToCYEWbn6zR9rA47iNfs?=
 =?us-ascii?Q?Yk8INGn1qr8i0iO3tyxH0owXjeRd4GyGqt8ebsX13rx9iyhMgFk6Q0NSHuum?=
 =?us-ascii?Q?XgkrWXcJuwtWromO7WkvgGOlHL0RLTcsgWWuqxDg6rkaougXpN5g?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d5788cc-2953-489a-06b6-08debcddf1cb
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:16.4956
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7cwzxYTDT1y8ag3+5lxMSPi0bQ+ZFSz2xeL/qFev/uxgVBEscU9EyYXngWJhP4yAbYn1I99WdF9uDCJm4Jy96Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102426_202320_9EB82EE5 
X-CRM114-Status: GOOD (  14.11  )
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
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 102 +++-------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  90 +++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  13 +++
 3 files changed, 115 insertions(+), 90 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index ab36df000804..84dce3026efc 100644
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
 static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
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
