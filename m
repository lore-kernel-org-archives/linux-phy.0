Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E269CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4Iq06Mw0OCnct9jAeEOHsIy9KdiE1+b2tvJYidGgDQ=; b=hAWoxa8Pkobhci
	rnNmDHJEEpxdAeycMOSLfNIMvUjrVlhyGvul9+vPsxCzwknVYSQYjnCusOziB/EbYug6Rmzp3I0hZ
	mxH9oVLo6rJQ08Ay8dFjzvU8/dnxqhlcxJuV54+UWnPMCmMx3+6cUQHr4so3sTAEExUVldBt6sFv8
	JGnBPyshyyvhrJoH5kFoc+N1j+d7Q0bMHm/Ls9viFX9/6tCPeUFHvlY8ZNUXqxturupkVqT3JC2YS
	7yfWEq2PrzdHx+4UOH6CxUxGfZepPqHBkDuJonI3kPOA9d5/pOOg2NDlIieggZPMcHbzwbxwtk6Ue
	3Pb8HNh/L8C2QhSdCMFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj6-000000080Y5-4At1;
	Wed, 10 Jun 2026 15:20:20 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj4-000000080SM-3cth
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GKu7WhcCBz92kQXkDebkn+W5P6jJ/Blb7jcr/KRBUYsrV+Melem8ZTZztPPYGax93mFskyPlYuK9yOPy3fuz6CFS+Xb1UDRoVhZWSXywz/U9V6XnYJzW3G7pHIVptg/SLeV2u6qpcf86vLObjfRWNKZitDJ0VaYW4/nNkFbaJuNq3YrMEZ9Im4e5Y+FZvPl07YVumxh6XplVLoDNLTMW27YOO0Uvp9dEiIb9WkIvIQIbEWi9NM/I8C6iLiQl95BQa1+TDKANKG3IoZIGNS0fw67W5vzZJqpSYHS7ekQVfkr3deAkkNBLX6ailWIbM/4qe3aDY9b1EsTqMEMbQMMydA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CkA9WfURe5RsCQHJtrR8MrnEt3rDnYUqP01FZ/H2Ow8=;
 b=J+P568VelJPHOwxMAA/vfO2Z/1/7kUSddSbMhMYTrsLSWDEuSSDi4wsT4FZLtc4zjxoeShHXMzu60qfRVDp8U/bW0DMOv1N7sPwlUSZyimgL9N4BqkbLgxIpSZYYUvleURPkLr4qTjqSxgrqlfuksnYwAsTu0MIjNZMWdNy0ud+y7pmPGQqxo3dkE1Ga18YMu6G2NyME3YureyJa4QNWbraRLBbiDE4T7sN08a1KmsZn3cb81hPIgsztXwEzCfAiM8EhiRf334BTrWu4g8rPm8WlaZvMJV8SLz8NGaEaKq42DGrioQWU/bJdHveOKfWbK1W9G/ZQ5TH+tMnGynwqIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CkA9WfURe5RsCQHJtrR8MrnEt3rDnYUqP01FZ/H2Ow8=;
 b=S99d4aelYgMphWpSHj8YwBSQI/3WwThcps1N1ol0A3H0UALReBAtntbI87hENynDZNmDknIfyRjNpXw+NO7e7z0bju8ALGJBnb4Io6vS6PElZEM9btuu3N3HCUIFMBSeWNgxPUAPzYHTvkuwcrrdVMNg+0OWeOMgW3dfhQ0ir29OLdBJP/3I4gvF5k2ZIz3p1B2ftgEUh+y/7Y+ouNBYZWrVSzJ1AcxLwprm96Pt7j/20K8Pj/6Me77m+uH+00e7XJsnrT9bZujPqL4p55qRkAS4FfiQdBeFgbe3BThzv9oJBemNYEAflt/cr1CyQfnqcyYAgg9MVl+1u3KpqwXx+w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:15 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:13 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 09/16] phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
Date: Wed, 10 Jun 2026 18:19:45 +0300
Message-Id: <20260610151952.2141019-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0054.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::14) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: 35aa8112-2fa5-46eb-a3f5-08dec703c4fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|6133799003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: qXTtfwCiKHoNLmpnoJ1JSiiaWCjiiXq+SIEmiwYbEL8uKunL+pUxmbS/mwCn+hF5BPQYL41dctlMQWsyLMpT0GXJuTyf2NQ0lZW1x5R1DiGuS7+pcDg6woIBUm4GkOrKRXryRYiYVadgd6ZMOmDFJraTeteOmgW3OYi1KGf/OfUY43nWVNnsh0tw0yAWtjvm9p9WVpDMxmKhKx8PtCj2qOh9TMQ8CfsUCaPJ5wTRy759WCELV6TwRKXhDWkr0IKhBl4F71E0GhrYPCnP4vTqhdsG+TikExD8nWGSoKUJu9mdBVsHdKbJtuYcPcpuqfGO3GZh1bNarydJ1Ca26QcW7lTmh74KUROJBYaw6CvJDHG1WVj7Q5Nvs4nSFt5ebj6W0/wGXiYU8pLBFWfEDa+h8odrjDIWeoUVr93vNYQsuNC4ZTkV3Au6c82EUeD98ya5feyjUHeXwBbV4JhU+E2wH5/kzdf4XwzoCIyYyMc3gM+59bH+LGd6YPjNyCvjRDb0QSeoNjmTjavtxH6m7qvD2+khfYc/bXBiOQKPAPZGTA48Wauquf/6OJ7D3hLMdgThGSL4LMYlVj5CGZCVs5KACQfyTj39BHjUulZotB8aBPV1lPcExq81mBmyNIU6uHPVcF8moIbFlb89j/MssoEeb+DmPorp/S9EubBwhQthFfKzcDQUgjDHJmU2FxQbPR4S
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(6133799003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x3LlYKswfORiLDkRhhSPQVEJHplhPKU9LvDQRXm2K6YXVRG8sxLklbISM5WC?=
 =?us-ascii?Q?HV2jKMD8Db+onCpvoY+ggcbTuGwg5CETlGj5+6O2DHjT2AidmIZ6Q6fLHYvL?=
 =?us-ascii?Q?Cs0P016zHXgPLrHAPPZqF8O8r8STqzFUvhxtGg4rXWrEUx9sdcJNgOg15OYF?=
 =?us-ascii?Q?yCxsTZlrcYvdQGEiFe1liKueYZv0eITPS4Uys/QRz0bXbYHHjGwW34dQiihw?=
 =?us-ascii?Q?VjeLcg+zTCB8Ht47iziUdFJH/mcZxU/1G9WaJwLH4mdBm/37ThkpTn3SmHFi?=
 =?us-ascii?Q?f0Shyhy9c/qCZ5bWryclPlMlyO53ZAeHBO5kmM0PZKDDeJVRq5DuGc3mpb/X?=
 =?us-ascii?Q?bF6wVjpfzgmH52dPCYuAMvsfOSiFewjUJ1P/EKNL67m22VlnDH1uUe48euvG?=
 =?us-ascii?Q?vlJAGb++XvS0BolPezvgZSVDG/IryBJr5dLGUffyIFhdouh7uJPMmLP0n1pD?=
 =?us-ascii?Q?+TTsnDCyhRTVWY+BxFjRTYLWQBtUKnl6lafMljduFbWkLV+8WaCSti8H7ujW?=
 =?us-ascii?Q?49rVgxpk2pOtdxSLnDOv+Gq+q8Le8yfni3eiFVCXYx+3e7QnhLXmJX7H9VNN?=
 =?us-ascii?Q?02aadMWTeigEbtGGpKkPlJ7XwAFNZ9SJ6wT2zLrE7Pi8SfF1GTGLKOioCAHJ?=
 =?us-ascii?Q?P5CIEDhnl0rMRTdY8hPgo9gQ4xX00+2Xm9/HxFTiyU+6BzNsIcd8tlr6y4lZ?=
 =?us-ascii?Q?KB0qpjhqFmJQmYG13WzK2QZArC7QXD32JzZL6PBJ8c71Zk9ltsubwL2RVSwd?=
 =?us-ascii?Q?AaofkXlmHtaa+z4hd6ZiCl5PDTS9lcn0qTOvi3VPxpom8bheUWwKcRmax8o8?=
 =?us-ascii?Q?Oc/y/XbQ6P7krRuRzKmOCiAK5T/WJ4GTfwvesmZS2Y8scTt2ge2HeBEcbgUF?=
 =?us-ascii?Q?DVFDufXN+sdl4G7t3wHphb9G6FqQvNyjCoBmVi3DIO2ftcfOofReWFXfAfCk?=
 =?us-ascii?Q?Mh3J80o9dJJDdfqX+hGpQVINKKjz4ynhHV+iqwgiGWBiThQ05iPiWVIfIxYm?=
 =?us-ascii?Q?0KUMG0nJGbD0s1fiLeXjcc2siyfSH6NjITmgVVDRL4KK8cW6SxKscDqLNDmK?=
 =?us-ascii?Q?Wwcog25L2iPVLFLjKFeaA+I0w6bTIGrKiFYGjDIYMetKG6r+qQepO+GHm0l2?=
 =?us-ascii?Q?b5P3PFut3LC+VTcYHygxDNhyYhjTyJGyyhh/0WN8/xmh5mQde20wWqFuD4FW?=
 =?us-ascii?Q?ERUlICwCBDOqwH4kHpIngIPDAYaRXikgqBDn7CapbBVd80Tbqa1r12l9jdJ1?=
 =?us-ascii?Q?lxBqWVeQqUqzvlAFKli4RRLt/oNdfLDzMQ+vvhprwL5+00/j9aH/j1rPBJuX?=
 =?us-ascii?Q?Lhp6mxtXj6zPZGBnVjEcrlI7OMMUW7/oWK5jIYCFGBcd6K6oIz5kRZ3TPpfm?=
 =?us-ascii?Q?c1K9V5RHipga/oo4j/edHwQFxgcK7Zmv7g4XE2ZokqHiAGbMfmeTT+KZ+nDw?=
 =?us-ascii?Q?M2GrYhKFPLHqKfq4fXiIN3a1jQeT8tomBiYK7J/lX+tdQ59ndiaPcC+qrNN7?=
 =?us-ascii?Q?V33clDYYCayxlBRXCiKhCdvLMI2RGlSOMbQXnmrIDITtO6FJPUxCd0xN85k0?=
 =?us-ascii?Q?b6hR3huyaiB2RSdgPj8bhhO/ACoIALs9nJdRvm7xVCXGlMpL3XlXvSIYYoZw?=
 =?us-ascii?Q?yUZRqLLPqo1thWH+Qv3evgub/7ygJXlj7Lv9CIgpKoOc7veGS2MtNik0CkSq?=
 =?us-ascii?Q?lCy2PnL4O16wjXtU8FyRzSPxK1BS8S3ETWeveJUA+4+A/XCDxcKQHvPPrTqJ?=
 =?us-ascii?Q?9duwi842KQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35aa8112-2fa5-46eb-a3f5-08dec703c4fd
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:13.8509
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 652qi7Iy9yQP/Q1oaLzVtAzL3gbZX7C5tF0TCTTrBzcBUaD5bWFvxsvyHQnsIq5ZGsTNcyITcRiLRSnjAhdbaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082018_909308_BE1BA676 
X-CRM114-Status: GOOD (  16.35  )
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

In a future change, lynx_28g_pll_read_configuration() and
lynx_28g_lane_read_configuration() will be made methods of struct
lynx_info.

There is no functional reason, but lynx_28g_lane_read_configuration() is
called per lane and lynx_28g_pll_read_configuration() iterates over PLLs
internally. So the API exported by the lynx_info structure would not be
uniform. Change lynx_28g_pll_read_configuration() to also permit reading
the PLL configuration individually, and move the for loop at the call
site.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v5: none
v1->v2: fix typo in commit message (spotted by Sashiko)
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 73 ++++++++++++------------
 1 file changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index a3fbd31d4dbf..dbbadaa08cb6 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -272,7 +272,6 @@
 #define lynx_28g_lane_rmw			lynx_lane_rmw
 #define lynx_28g_lane_read			lynx_lane_read
 #define lynx_28g_lane_write			lynx_lane_write
-#define lynx_28g_pll_read			lynx_pll_read
 
 #define lynx_28g_priv				lynx_priv
 #define lynx_28g_lane				lynx_lane
@@ -1051,49 +1050,41 @@ static const struct phy_ops lynx_28g_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
+static void lynx_28g_pll_read_configuration(struct lynx_pll *pll)
 {
-	struct lynx_28g_pll *pll;
 	u32 val;
-	int i;
 
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		pll = &priv->pll[i];
-		pll->priv = priv;
-		pll->id = i;
+	val = lynx_pll_read(pll, PLLnRSTCTL);
+	pll->enabled = !(val & PLLnRSTCTL_DIS);
+	pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->enabled = !(val & PLLnRSTCTL_DIS);
-		pll->locked = !!(val & PLLnRSTCTL_LOCK);
+	val = lynx_pll_read(pll, PLLnCR0);
+	pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+	val = lynx_pll_read(pll, PLLnCR1);
+	pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR1);
-		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
-
-		if (!pll->enabled)
-			continue;
+	if (!pll->enabled)
+		return;
 
-		switch (pll->frate_sel) {
-		case PLLnCR1_FRATE_5G_10GVCO:
-		case PLLnCR1_FRATE_5G_25GVCO:
-			/* 5GHz clock net */
-			__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
-			break;
-		case PLLnCR1_FRATE_10G_20GVCO:
-			/* 10.3125GHz clock net */
-			__set_bit(LANE_MODE_10GBASER, pll->supported);
-			__set_bit(LANE_MODE_USXGMII, pll->supported);
-			break;
-		case PLLnCR1_FRATE_12G_25GVCO:
-			/* 12.890625GHz clock net */
-			__set_bit(LANE_MODE_25GBASER, pll->supported);
-			break;
-		default:
-			/* 6GHz, 8GHz */
-			break;
-		}
+	switch (pll->frate_sel) {
+	case PLLnCR1_FRATE_5G_10GVCO:
+	case PLLnCR1_FRATE_5G_25GVCO:
+		/* 5GHz clock net */
+		__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
+		break;
+	case PLLnCR1_FRATE_10G_20GVCO:
+		/* 10.3125GHz clock net */
+		__set_bit(LANE_MODE_10GBASER, pll->supported);
+		__set_bit(LANE_MODE_USXGMII, pll->supported);
+		break;
+	case PLLnCR1_FRATE_12G_25GVCO:
+		/* 12.890625GHz clock net */
+		__set_bit(LANE_MODE_25GBASER, pll->supported);
+		break;
+	default:
+		/* 6GHz, 8GHz */
+		break;
 	}
 }
 
@@ -1291,7 +1282,13 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	lynx_28g_pll_read_configuration(priv);
+	for (int i = 0; i < LYNX_28G_NUM_PLL; i++) {
+		struct lynx_28g_pll *pll = &priv->pll[i];
+
+		pll->priv = priv;
+		pll->id = i;
+		lynx_28g_pll_read_configuration(pll);
+	}
 
 	if (of_get_child_count(dn)) {
 		struct device_node *child;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
