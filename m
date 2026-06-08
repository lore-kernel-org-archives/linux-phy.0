Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87282CD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gxxIHCr1PeYYi/WfagtWaSh2XPXEa1KW2TBgi4ot1I=; b=GQAnlshD+0RO2W
	U9eYSyiPTYR6215oUu+Zhojbe67yGdIOgagkoNbycttYV8JMqmNNtOwx2Dyu9f7eyYbJ6bckU8mCG
	suP8KIWDP5Sr8YTf53rfS/JxWs7tfpY3pJUBoSwI0YstrIjcFZNX2jcTcFBfS7iYcIdMyefoc+ecO
	t4OFAH9lyjgUiBe1xVmMqKx0xvNtCa6hMN6dp/lbmg/+hFAVXRLILPwsAMS5xB/g1lSn2A/9a6mjh
	H2cLhYrgjLkmSRgRPy1F2wi/I8a7pl6rf2q0Bzi4cCzRI/Av5fWHzSPK9bgKSAuWFxMcmgNnMX0vi
	JV8EYe7InbHyXMveDvBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI3-00000004U98-1AEi;
	Mon, 08 Jun 2026 22:17:51 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHz-00000004U2a-2X8O
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d1hmVNjxML5FtEGNtIMOftn2EZuY7argngK1rsIu3jnYghDlQIOZa8U21Bpcui1xf1zvaraxCLcvlmlSTagHByqNdJuLYyyPmXCqx0BhXCBMw+83DsZFXU3lUF9P55HGUxp1aHulAU59Apy7l/u61dcwirWUhaiET9ipjvppTNcd3G/8iuK18fnABX5sJ23PK7ohfFgagjriiTpdFFpJF4pDiWhcbQsN64NkWi6u2YweUSvFhxJ1YGJiSu57R/UnE94+OPA9auSrciBFLYgw1Df2hckO3ILuJnPlfkbuF+N0AriMHGyFMwOxMb2Ca5XXoMHkvEIT3oZIh5SQIOCGHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yu4rfOiPL1+g2i38t5o4I3ixXtrvefqw5N/ZQcLdJRE=;
 b=hCwu7rEAVS5FQyxiZXegvOLpExY9LYwbPJVVHXKuWAH7P/KAJVYIBzse+SbB50xYEU5heqqywrcJNf/ClluaeG4SEPoWWp86Jvu6oZpUCB4djprFf2Q3jT/d6Yh/NEo9Wz9sTTco0t9kROoVyzwQOvsu4vby4OVAyGJgNKJyw08vlPiKydF4Sni+NP+QegvYcL1jAXcpeQIMgP/gC1Al1Xcva53Oar1gEGLAt8a5lQ3FzpTfUPhGWa1VjWHT6NFcoVE52zId3ibbVWEpqsHGpp/sFclIrWjGWXEApQCEXvBV9RIlFuVl/SljUscet+XvNA83HhZWoa25nQfKnoADIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yu4rfOiPL1+g2i38t5o4I3ixXtrvefqw5N/ZQcLdJRE=;
 b=OnREANu1MaQ8NJajwZlbL8j9lmP/JXBpHfenc/WlQ6bEjUO9dBpBcVvzlcQux84P9GQ0s0b+24y2Ilv6dSve11MI8vcY9WtHMl+uiWNslpDf0S8e8Eigcwo0LkrF3wIBIIn/fiJjse/XQ/jrdBRIyUi/5d4Me+YTSHsezv3etEzDKfORsqXw2TIs6zIKDzzlZXlUdB0jGBQ9y1veVxDQ3TDLj2lw8ybEnhVyDVAtefEHqnwrbTlRhqU/XqqUG1kExlvGTreaJ9TASCU6Iqd8Vrq2iKfJcCZy8NgEFp9QV25Y46ep7aLUhhIwu+rYyyna6ZnoAgsm3zmyaBzuWp74iQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:40 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:40 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 06/16] phy: lynx-28g: generalize protocol converter accessors
Date: Tue,  9 Jun 2026 01:17:00 +0300
Message-Id: <20260608221710.1572971-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR06CA0177.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::34) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: 62d453c5-3b23-405f-ceee-08dec5abc12e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: eLxKjR0LcOhWy6XK0ty2a7oLWzAy4JWrp7Ggxi85Yfgpd8q9VXGRDVQi0V/smMPG86JFWhQYuu6YMVAYSQscib5pCpxB4RkfysvaH6tAo2eosr+B2lTfFkGdEX+IjIiI6EPNItAH6Qr/JkLa0kBI5DWv79HYUkP3/uYSk59sjVX3ddhTw9U37DZHpjYoEByEwGx1sYVkpooIFgqEpZBP2PUoNhlD2mD0bGou/P5kjRWFvVrTnvR3XEMUmUmrzpItz1dBJuPogyGkCCN36dDx7/K5Vy+6aHQuuqD+ZI9ch+55JpkZUxv2U6dH5kPikgjdndWZBK6NECeVZBIDxvmUwW7mWd1Q9WbNUY6A33y//H40Z3Lo4GutPoHkEP7ypL3EQthFdvbAz+rwHWELoVaGioeXPsPeTcaPPQbeapWPNODJK/S4da98yCxEvRJOsQDhscZmLvA1kNbrQohR7AS0oJYrR7TXdeEEPkUOq7vH+naM6+zQOeWaWZ1YXrxvNTUwKoj4MQkQTQ6oys45iv8DRVzhQHB5kbMRD8a3Y5F22WKYWDqbqXpekhXhL313TXa+O/GjfHEG47dcsod0D9/SaDRW5nVzj2IFPjCwSMWmHJqWd9sOz2y6DrsxZqm5i5hGwq0b/QE+NAcFQ4tVVqU0+l9cpfmIpUBsAZvBRHqTsbwKStn3A+eicvC+zYpk6BkL
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PGy/nqVp0fiyMo6BmgS0iIfxKU10tf+diuhuRgBbfNxRdvv4pwzYULLgm+60?=
 =?us-ascii?Q?tzzUDuJ9x+G7F8a4BcdFY1qpxE6VSagEr7VkCr6NdFl9TaLR4na/U1zbuYIU?=
 =?us-ascii?Q?83NH4aIcyKmiJg9fugtwTHSi4omtoc7l3J2N/EkBNWMDheUJsYfAPdT/NYfj?=
 =?us-ascii?Q?V6ovdVDgckLVt0HyQwDK61bjLTx0ak/OaJa97kCa/YUQ2mCLkpBzStKJXApt?=
 =?us-ascii?Q?ftTuWtbdgGcLntA3kxHBIwTD1PJaVGBZLcRttYccHYSyfRxeRD8tfvwCeEB0?=
 =?us-ascii?Q?8jh/yXCMFHR8XnGv+CYeXCpNVJ4ryvXqPmjPH4rL/e48IDlPl8e/j5xmZaNE?=
 =?us-ascii?Q?iVuEQ37a9M9arEumTYHkqJmnly2xL3neJ0r0XV5iLbJ5IIEjc5k9/3qt8HhB?=
 =?us-ascii?Q?yaxy3az8peSjdLOAR7VrQ1T0mw3uCSbHY1y+C/GjCawEW0tV3WeUi/m3oMeD?=
 =?us-ascii?Q?7YwzZ6ULvWDPgYrUp4g/8x/gpAhaJjXhwnj4eVXqDdEbXtK8d8CCeB27SKpe?=
 =?us-ascii?Q?MmCSstcdoOo1egLUgZhm2uMWiMqZhbQBKjiy2GmjkT8gAGJZD6VE355Iydeb?=
 =?us-ascii?Q?jkKcw6CEGTMknu1UG91il6R93B6nrf7pDJKgjaRdewAub1/4716y6wPCMlZ6?=
 =?us-ascii?Q?R3aqndfrSqXN6XxHQxBVfix1+PEOMgCqGlet14c7IpV7+Qb9lABkOjVEqq/D?=
 =?us-ascii?Q?b+qtw+0LQS5x4xFgkA1IOHHp0o4stB7XTjJPJLHh+idJvC+YappjuF+lExsw?=
 =?us-ascii?Q?+LIX2LBvPEHywrKTq54I31qRW6lMUTI4J/rKdQLyDLz7rnte7U+YA3gcUvxf?=
 =?us-ascii?Q?Cnd6ZiytaMkTZ7BygDG+mrArvBzs6LEYnBQlKHThNrzUNAN4itIuR3nOIX/o?=
 =?us-ascii?Q?fBcVpQB3Q5a9bG85WIUwDbufqYs5sNPb9B0vkXYJSV7+tDWmz3AY/Fn8lq7U?=
 =?us-ascii?Q?d4cULuKSNd5iygdHgOlZffJoNSbxlpEV562DqiwMyzT6EhnRXQnY4wDgFRsm?=
 =?us-ascii?Q?0JqdS0p9zYs5W3+/Kt00//Eb1aAtbMPGaAiGBStorSg2AG3k3LocSkZ+EGsh?=
 =?us-ascii?Q?O0E4kQdAw3q/O31RdFPh8BCwjOKVHkAjcut3BYChxMGLmgn14Hr0D7syqQUr?=
 =?us-ascii?Q?9nAswt2Cw/AmmSW+W/luTw46/ECDQg5oMv5iqKBfQdYO6UfsbEolY1MhRlRB?=
 =?us-ascii?Q?xa9qhqhhSLq0nCqlq9pTJLvhYjDH1RnS/0bPvG53LgpxX4GWXkKfCq8sUJtl?=
 =?us-ascii?Q?2qd0pubD1W4FSPWuCmqMaN9iHkWLJVanucqugdP2OO2rFWet8d1M1RrDDV5B?=
 =?us-ascii?Q?Gl7pFID6LhtTOko74fsy0Wj3clKu0pgb8NwPJLiB6b6Ui1nX84JYRkiI9sMH?=
 =?us-ascii?Q?jBZ0wYt0A09BCnlvI/MpA/o6vp+NEovBizOREQ9If4OUL3CT0jXFWs7/oRl8?=
 =?us-ascii?Q?NoizpMjuvXsPfjxREw7sihOlbPWd33/yOjd/7n4LjNpJjACtRKAw7WDubxyj?=
 =?us-ascii?Q?ChxA7/KxnYMadQvnjJaDKU+tFMYrrxA8RW2u7V0KLMn5nwdTEpyGNLbG3YFk?=
 =?us-ascii?Q?VBYSEFHp4hqOuungS5Ga2nzpKJUCYYk/qDb1kTboZmz3xeAAuhu78l0dI4Ag?=
 =?us-ascii?Q?WFWiPfXALLpJl4tx8AvcvWQHWAazk/+PhdTAM0kLshtttSNeW5FyCnFkP2FZ?=
 =?us-ascii?Q?C+lL1Cd5fvUQNuKCr1wJ4f71MhF7ffwb01+TYhfbOlP1/OGMzDC5xvD/c0F1?=
 =?us-ascii?Q?7jLBLXUz5K9XybnTMfIM6F1KMJABlnD7L8pQ0cHi+Wyn5rLSHBM6?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d453c5-3b23-405f-ceee-08dec5abc12e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:40.5351
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VgSg6EHzm8MSkX+qkqhfyQb2esK/itmm3uhultsexzRvyiDkAaucsoINGVbUi7bMIHr+Tij98SvgmqGfbFVCdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151747_980653_A376518A 
X-CRM114-Status: GOOD (  13.55  )
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
v2->v4: none
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
