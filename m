Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E53D0E6CC
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob8cPrJ+Y4E0hltQlsRgZUgR2g6EV6yWPOLEUUeXZzg=; b=gRBflVMQfP3KXo
	XQVMy48/auG1/LKQQrkLv+jIpTfbFOMkMzQMtwE+hhvqzdcNJtiPVvEB4iU8e/VYxYjG+KcqVXqNm
	4fEaB8Xh8gAF2i9W1eoWnGEBj4pqphi/D9m/77+JI0jsDD24Jh6v3AJjhkiv8czjABlF2YyYAaYze
	vb81/DC3K7HkjXdpwFbYiAtETgKWcjz/UyIDGE09RdS07F5YayLtiAj+370p8AQVm9EDQsDkSVdgB
	DLkai7IdojtR7pk9wStpMWPnn4LZBqzkLRhRePk29RoLWCg7JgIxCZK11xYrTc0Nxzy3I1F9vC1bZ
	llYMX0ksFYK2t04EYx0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYO-0000000DF9U-1X35;
	Tue, 25 Nov 2025 11:49:52 +0000
Received: from mail-francecentralazon11013008.outbound.protection.outlook.com ([40.107.162.8] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYK-0000000DF3I-0pjq
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OxfLsZk6DaWPqn97U0Y2ZgInQom5gOLMOgbqTGddJpfwgrc3O4PqL4xxCjk9Fgr535WFZFxfF6NUZcJ9sPCyV979PVA7JpdGTidsK52XIJOu0i+nIQqabVx16VoAt1YHxItYCTB8RlmZDQ1tDdOkpxm877/VgLjSagAynFQaQPtbg5F0dsAt41KtULt738EFQqkuyV/9bpv+b03IrdOWi+HX0NFSDywPK41ahdboKT8KSI+GyMW08fXirK9HtTlyC1hoeMnzMItS1tMXHHdlOXd7ZYt0n8OnQY3MGjNcq/VyGZTNSS1nR0FdI9iD1lD4tYU9/4YIqS4i+CL45eyPDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oq3k87a4PYyLDENsk2qn5IKHN3p7LCJp+qu5Vt/BRnA=;
 b=kv1BSEsX0JjUpB4fkmZMhXhJbGR6F2gd5LYsNZdQew94jwDJN3JJ8uy25pMs58JVvLTaAtjqZnaqciszR8EYpMY0qZU7exbxvB0714M24y9KQyzrI3rpiFo/ClDtNLzvGPSXpyb0pPEnZblBQmWr97YlvtpXtc/BjJxo+DjnHT0OGKtoXPsWb3XBzLzcfW2T+AB7jeoILvHo4bLapZLxpAdN6AObWsT7ckvVybquHirON8nCciCKngl7RwCzroVvhjdwLd1/8eJ7XK61G1cCb6NkNapohREm3ENajoIybm9AcZ1CFOrPrzSTg7WJo49iPaIsfiVz8IyBp4EbAu7GHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oq3k87a4PYyLDENsk2qn5IKHN3p7LCJp+qu5Vt/BRnA=;
 b=nWtoYZU/Gml5QvBOqOoDBwDQ7Q0NdppehKKo5f9yiy/Ua0VK3XfWDLlJ1CmPbEpr2v9dm5xV4jNhjUQcdDEqUigpEb1YvqBUZ3w/dND8Qx/hxNypIE5hQ2hv1nONtoe4ZFDXC4c2OEk0KUaAHxr3rsRTE/Spu4ErQcSCuYDgr0AkzD5onpHI5wpW5NYRCjs0ciFySjEJPoFibkrPmvyyXrGO7NRWhycvo3Vzz3QBOqDdDF/bfijXuxvAk/gO6BO3Zrs86u/E5K1jay5rX3vFG27WaHvGG+jMKuvj23PqA2ZYvdtiDX3Vr4k4hc5mz0Qu5Ai5dyN3gpX/OUTyMkImfQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:41 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:41 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 05/15] phy: lynx-28g: remove LYNX_28G_ prefix from register names
Date: Tue, 25 Nov 2025 13:48:37 +0200
Message-Id: <20251125114847.804961-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: fa6ee03f-8bda-46de-8eb4-08de2c18b7fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xj+TCdvrQ2sCgOtt+rZmAYNxVaQETwm0MiOQwD54Ikh7kLk0XkJU1q4syKQb?=
 =?us-ascii?Q?ycZjbfzHiUA2DIj2AkZTFL3R8qV+HwfsJ44Y3GYzSA8CSg1grllW+ZqoY8dd?=
 =?us-ascii?Q?zU2R13dL2E/c8Yrd3HEqGHugaxTRl7P93Gxpif1ufSf0s+CM0Y6UwFNh8d2j?=
 =?us-ascii?Q?zH5TMYcFWoGL4dpsnqyx2Xa9qjb+M7v7YOa+uilFWSnBuTsh5GTqTZ7gBPba?=
 =?us-ascii?Q?QpuQHWxsOGKWmZbGKPi3g4pn7he4YjUuOR2JXTiyaKArn+46HRcw8x8lh7wn?=
 =?us-ascii?Q?D9u4hZBLLEeaoGS8ykHJcv6nL4BFQ4JHt1oXr6meW2kp9D4xcH3qH1QRQW/x?=
 =?us-ascii?Q?K1tsT6Se2o3MZ7pEU77bU3fwAuLC1uQRhKo2Pe1Swws6eJWGL5uAz0lHHT8/?=
 =?us-ascii?Q?bjIsl3iBahoj/B6V68sArpwbioiylfnzAVyF+wvxQ29GwPB27dASWKINXFQ9?=
 =?us-ascii?Q?EVvcejs8P6fRcIaa1DckKfY1t5AkA2wxKCNjiAMeLozeFR050i29nwDdC+NV?=
 =?us-ascii?Q?tsvbXg+ulLudUkXLXKqXZ8LTH8RYhZgAZ6dvUYgqWbhzFUZ9MZcRQiVsOEf5?=
 =?us-ascii?Q?+zo+Ko7mVy6uYA6QtWIT1ENHR3mxbRzw6tLAGVRInAwJ0GZKUAOqYdnc4ASZ?=
 =?us-ascii?Q?3VOyTe3Co5mibbkM1+xjQ5UIIz1sCgoPikzgl9gywL7STUs168QOIJH2b5/x?=
 =?us-ascii?Q?bhF2lfruGCW28hp7SxUiVtaz6vzswPB+DjUEap11EK6IXjn+JR4lVz5hK5yP?=
 =?us-ascii?Q?a9LMmQctxUPA0Xae3VGT3UmsEYQgVF/1lWSxLKdjrSTnijS1kS0nR/Qwxd9A?=
 =?us-ascii?Q?JZ+tZyLTqF1nMYWTM/uWxBJZENA4j6tY/XaPCydP3rLvY1oDiqPRYEui/k4s?=
 =?us-ascii?Q?ca2daiqDmM9r/9tb0iPsOINB4NTriHj16f1XRcLPtDxehc8gW0z8c6uLc7AD?=
 =?us-ascii?Q?Av7npvxDOSrMJIufeQIiyX4OG0U3+EYce6+vKPcxZVol0VbmzI62yfv2UAJ7?=
 =?us-ascii?Q?DV2jaPq5ntuaRJGlQduIu4/HHfUIBmbAJXSv8vzIyFEu6DaHbpSfZknRm0pl?=
 =?us-ascii?Q?c0fUgAVVKkruxBbwT0rfNTSf96m4tNl4gz9MW0sft9gPhAcldwX2IeN0ppt1?=
 =?us-ascii?Q?rke50v5dm5PUlBIpld8u71t2f9IHx7B/WUZSqbdQQM0ZdBNv6wG/jkTXy1PA?=
 =?us-ascii?Q?DvqYK0MGgp8uA51e6tKpVj8XedPVFjf5Qhg1hxWGuutIPNZ4uoeaNixg9TNo?=
 =?us-ascii?Q?l0jmZ9SsWer3BxSbb3ofsShMD+LSPZYdepNLMq4jIZfGy80ujruntInqlL6m?=
 =?us-ascii?Q?TNDEbtU5oGHdSulTz8Kh+g+fK3mOdVO29Jpw/N7IbQJCaox30z8SvUdhlCEU?=
 =?us-ascii?Q?zq6Ztq5fFF4XB7KCmVHdHodv2pJZoi/9iNtSP8ciFPrRxmzznUKBw8F1hoiM?=
 =?us-ascii?Q?imzaZ4L+xOHAqfMnNKryvyr5dAVCSR4q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aCsqQPM/m1vHhL5MBXpcxM5u6GDhX9X5TmQfbQqfNh3JDp8b10htsqy+Rops?=
 =?us-ascii?Q?HIVpelcT30Uyi+7638IYFxsDiW5byG4Lxn/LA6DAAyxfX75lW0jeUhyI02iC?=
 =?us-ascii?Q?iP2Si66FHSpKI1HVnZGSy4wy8RlQjUKKj4/o9e038e2uiIm3NBEXYAgns3fr?=
 =?us-ascii?Q?6ybhUhXVbF3WjEUo2vHQcnvdIVaT42ZSxVDh12ClzZrKmiVOE7gkkN06/9s5?=
 =?us-ascii?Q?t6y6W/ALtdKn0McK6ArKYzXqRgGTCossvALIUkNllqsjPv+SAb/cub/sGTys?=
 =?us-ascii?Q?EsqdV1hqWJEoitTL61QLM50HgSHiEbhhthOM2xfOsyDZR8Ug5KB3o74gVR8V?=
 =?us-ascii?Q?50f78t4SttdoPhaWYxjku34sYcyCO3gFWCuKSluMhRRwxtK3L+WF363aJ77c?=
 =?us-ascii?Q?jMwo9YjPbE8E0L4vblmBXaDYPYKBgdYT2lcZ+SIyBAmC55yCZPcoBoXMZU0t?=
 =?us-ascii?Q?P9NglDIy/vnf82fyvFk5cxSa3ttkMlWhsX6WZBM+xyFJAXcwJSzNhUGLypJh?=
 =?us-ascii?Q?kCN2SsKvBAISSH5d6sMrkuzlIFLsYdEUSiSFLp7XqcC0UX2mpyvnS05slg03?=
 =?us-ascii?Q?Em+PLWzIgT6bKLPSDHVsx4KZL2pLKvwJf7AgqSfcV1roRg9MJoAvu36Ml6aD?=
 =?us-ascii?Q?L180Lqyd3X4Gq6X9kPH16W/1nUkBMRUe6M18zJ+0tjngWRbXOSjkTp/bvNdC?=
 =?us-ascii?Q?L8hb0st55MV0ZYDT6AP6JsO+wrLH7IJ2jrqFhXCPpyYPlgm+EF8bc6G099Uh?=
 =?us-ascii?Q?L4R/eBjOsVrvHFNioOJ9M4L7QEvqSHIzSPMlFS0+F3hWamgmY9pSkVYR4SEs?=
 =?us-ascii?Q?kunI+CktOqvEJObtZJe4PdScg3s0TRLASzgXKu8+WTs91tMlnC4lPu7Lr/FI?=
 =?us-ascii?Q?quyLafvQkucO52gb7sbf4ijdrVlWcl6rp2ieZLxR/qhcR/RJIrRnJfEFpkK2?=
 =?us-ascii?Q?CvTS34yvYXerL21T2mnJbYL26ORTsKmv3be1k4SXQ5Y6rs8qEWWV2whp67Af?=
 =?us-ascii?Q?MOCgbpZ+W0KbdNkLsYneJx8gP0L4u2KHdVbsh/x3vENRVKLUFrQru0QAW5fz?=
 =?us-ascii?Q?96kVDwhPANjMlchlkqUvGJcSwOVGFeaikVKHlV1RZYeL7Nmye69kfGQQsGY7?=
 =?us-ascii?Q?k9iEdDw3QZ5cN8XL64hJJKxO2NNJZY/R5GgSDqxL+ZKOhHRlkP5sPXXR3b/S?=
 =?us-ascii?Q?E0QGYapjFm79gp+fjn4PWSe70TZMZXINMs/v4QbIM+JZMZRXPNP8zcGkCk3N?=
 =?us-ascii?Q?O5uROWxUUWtRSCDldi8/o9CVAXtRSS8S82LnZWYAvO2OhAWCUnqYqnnkuE35?=
 =?us-ascii?Q?VkKXHh51R1dwCknIsYgILKGWtM+jecWBSdL7tHHtTJgF9dDbcX5uZr1CcJN9?=
 =?us-ascii?Q?+BoXy7JvRhLWa9FEEu1p8oVk6NXPagltyrf6NFvNQxBCRk96+lMMFGFpRbCU?=
 =?us-ascii?Q?Y15TFmOUzl7OE9U7gCRG0zXfGeqMjdIQkWpc7+ZnDirWCke0VZO7nSRjuEAc?=
 =?us-ascii?Q?V1WPFcAMsiOsgdhWfECj90wMyqDbSun5P9zBAS8Io8gN1y08Kcsf5t/sS/5/?=
 =?us-ascii?Q?EXlFrDnpOlZEZByurAnQrHVbKmZltAJNZQmagf9j85f3BtqAAzGcDA1kSNxT?=
 =?us-ascii?Q?krMzx/EEjIpZ8GAC/30KXok=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa6ee03f-8bda-46de-8eb4-08de2c18b7fa
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:41.4265
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HU4v+WD+lGsCCFozzqTPFxn3eYsSKVszh2mc9LCJVziP7xGDY4Rz9DUYOj3/lWJjdn9qsiHXJBGOZ6VYbR0ezg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034948_251334_24BC483A 
X-CRM114-Status: GOOD (  12.90  )
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

Currently, in macros such as lynx_28g_lane_rmw(), the driver has
macros which concatenate the LYNX_28G_ prefix with the "val" and "mask"
arguments. This is done to shorten function calls and not have to spell
out LYNX_28G_ everywhere.

But outside of lynx_28g_lane_rmw(), lynx_28g_lane_read() and
lynx_28g_pll_read(), this is not done, leading to an inconsistency in
the code.

Also, the concatenation itself has the disadvantage that searching the
arguments of these functions as full words (like N_RATE_QUARTER) leads
us nowhere, since the real macro definition is LNaTGCR0_N_RATE_QUARTER.

Some maintainers want register definitions in drivers to contain the
driver name as a prefix, but here, this has the disadvantages listed
above, so just remove that prefix.

The only change made here is the removal of LYNX_28G_.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 248 +++++++++++------------
 1 file changed, 124 insertions(+), 124 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index f6e6ea1262bc..3cd6cd817e11 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,99 +12,99 @@
 #define LYNX_28G_NUM_PLL			2
 
 /* General registers per SerDes block */
-#define LYNX_28G_PCC8				0x10a0
-#define LYNX_28G_PCC8_SGMII			0x1
-#define LYNX_28G_PCC8_SGMII_DIS			0x0
+#define PCC8					0x10a0
+#define PCC8_SGMII				0x1
+#define PCC8_SGMII_DIS				0x0
 
-#define LYNX_28G_PCCC				0x10b0
-#define LYNX_28G_PCCC_10GBASER			0x9
-#define LYNX_28G_PCCC_USXGMII			0x1
-#define LYNX_28G_PCCC_SXGMII_DIS		0x0
+#define PCCC					0x10b0
+#define PCCC_10GBASER				0x9
+#define PCCC_USXGMII				0x1
+#define PCCC_SXGMII_DIS				0x0
 
-#define LYNX_28G_LNa_PCC_OFFSET(lane)		(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
+#define LNa_PCC_OFFSET(lane)			(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
 
 /* Per PLL registers */
-#define LYNX_28G_PLLnRSTCTL(pll)		(0x400 + (pll) * 0x100 + 0x0)
-#define LYNX_28G_PLLnRSTCTL_DIS(rstctl)		(((rstctl) & BIT(24)) >> 24)
-#define LYNX_28G_PLLnRSTCTL_LOCK(rstctl)	(((rstctl) & BIT(23)) >> 23)
-
-#define LYNX_28G_PLLnCR0(pll)			(0x400 + (pll) * 0x100 + 0x4)
-#define LYNX_28G_PLLnCR0_REFCLK_SEL(cr0)	(((cr0) & GENMASK(20, 16)))
-#define LYNX_28G_PLLnCR0_REFCLK_SEL_100MHZ	0x0
-#define LYNX_28G_PLLnCR0_REFCLK_SEL_125MHZ	0x10000
-#define LYNX_28G_PLLnCR0_REFCLK_SEL_156MHZ	0x20000
-#define LYNX_28G_PLLnCR0_REFCLK_SEL_150MHZ	0x30000
-#define LYNX_28G_PLLnCR0_REFCLK_SEL_161MHZ	0x40000
-
-#define LYNX_28G_PLLnCR1(pll)			(0x400 + (pll) * 0x100 + 0x8)
-#define LYNX_28G_PLLnCR1_FRATE_SEL(cr1)		(((cr1) & GENMASK(28, 24)))
-#define LYNX_28G_PLLnCR1_FRATE_5G_10GVCO	0x0
-#define LYNX_28G_PLLnCR1_FRATE_5G_25GVCO	0x10000000
-#define LYNX_28G_PLLnCR1_FRATE_10G_20GVCO	0x6000000
+#define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
+#define PLLnRSTCTL_DIS(rstctl)			(((rstctl) & BIT(24)) >> 24)
+#define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
+
+#define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
+#define PLLnCR0_REFCLK_SEL(cr0)			(((cr0) & GENMASK(20, 16)))
+#define PLLnCR0_REFCLK_SEL_100MHZ		0x0
+#define PLLnCR0_REFCLK_SEL_125MHZ		0x10000
+#define PLLnCR0_REFCLK_SEL_156MHZ		0x20000
+#define PLLnCR0_REFCLK_SEL_150MHZ		0x30000
+#define PLLnCR0_REFCLK_SEL_161MHZ		0x40000
+
+#define PLLnCR1(pll)				(0x400 + (pll) * 0x100 + 0x8)
+#define PLLnCR1_FRATE_SEL(cr1)			(((cr1) & GENMASK(28, 24)))
+#define PLLnCR1_FRATE_5G_10GVCO			0x0
+#define PLLnCR1_FRATE_5G_25GVCO			0x10000000
+#define PLLnCR1_FRATE_10G_20GVCO		0x6000000
 
 /* Per SerDes lane registers */
 /* Lane a General Control Register */
-#define LYNX_28G_LNaGCR0(lane)			(0x800 + (lane) * 0x100 + 0x0)
-#define LYNX_28G_LNaGCR0_PROTO_SEL_MSK		GENMASK(7, 3)
-#define LYNX_28G_LNaGCR0_PROTO_SEL_SGMII	0x8
-#define LYNX_28G_LNaGCR0_PROTO_SEL_XFI		0x50
-#define LYNX_28G_LNaGCR0_IF_WIDTH_MSK		GENMASK(2, 0)
-#define LYNX_28G_LNaGCR0_IF_WIDTH_10_BIT	0x0
-#define LYNX_28G_LNaGCR0_IF_WIDTH_20_BIT	0x2
+#define LNaGCR0(lane)				(0x800 + (lane) * 0x100 + 0x0)
+#define LNaGCR0_PROTO_SEL_MSK			GENMASK(7, 3)
+#define LNaGCR0_PROTO_SEL_SGMII			0x8
+#define LNaGCR0_PROTO_SEL_XFI			0x50
+#define LNaGCR0_IF_WIDTH_MSK			GENMASK(2, 0)
+#define LNaGCR0_IF_WIDTH_10_BIT			0x0
+#define LNaGCR0_IF_WIDTH_20_BIT			0x2
 
 /* Lane a Tx Reset Control Register */
-#define LYNX_28G_LNaTRSTCTL(lane)		(0x800 + (lane) * 0x100 + 0x20)
-#define LYNX_28G_LNaTRSTCTL_HLT_REQ		BIT(27)
-#define LYNX_28G_LNaTRSTCTL_RST_DONE		BIT(30)
-#define LYNX_28G_LNaTRSTCTL_RST_REQ		BIT(31)
+#define LNaTRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x20)
+#define LNaTRSTCTL_HLT_REQ			BIT(27)
+#define LNaTRSTCTL_RST_DONE			BIT(30)
+#define LNaTRSTCTL_RST_REQ			BIT(31)
 
 /* Lane a Tx General Control Register */
-#define LYNX_28G_LNaTGCR0(lane)			(0x800 + (lane) * 0x100 + 0x24)
-#define LYNX_28G_LNaTGCR0_USE_PLLF		0x0
-#define LYNX_28G_LNaTGCR0_USE_PLLS		BIT(28)
-#define LYNX_28G_LNaTGCR0_USE_PLL_MSK		BIT(28)
-#define LYNX_28G_LNaTGCR0_N_RATE_FULL		0x0
-#define LYNX_28G_LNaTGCR0_N_RATE_HALF		0x1000000
-#define LYNX_28G_LNaTGCR0_N_RATE_QUARTER	0x2000000
-#define LYNX_28G_LNaTGCR0_N_RATE_MSK		GENMASK(26, 24)
+#define LNaTGCR0(lane)				(0x800 + (lane) * 0x100 + 0x24)
+#define LNaTGCR0_USE_PLLF			0x0
+#define LNaTGCR0_USE_PLLS			BIT(28)
+#define LNaTGCR0_USE_PLL_MSK			BIT(28)
+#define LNaTGCR0_N_RATE_FULL			0x0
+#define LNaTGCR0_N_RATE_HALF			0x1000000
+#define LNaTGCR0_N_RATE_QUARTER			0x2000000
+#define LNaTGCR0_N_RATE_MSK			GENMASK(26, 24)
 
-#define LYNX_28G_LNaTECR0(lane)			(0x800 + (lane) * 0x100 + 0x30)
+#define LNaTECR0(lane)				(0x800 + (lane) * 0x100 + 0x30)
 
 /* Lane a Rx Reset Control Register */
-#define LYNX_28G_LNaRRSTCTL(lane)		(0x800 + (lane) * 0x100 + 0x40)
-#define LYNX_28G_LNaRRSTCTL_HLT_REQ		BIT(27)
-#define LYNX_28G_LNaRRSTCTL_RST_DONE		BIT(30)
-#define LYNX_28G_LNaRRSTCTL_RST_REQ		BIT(31)
-#define LYNX_28G_LNaRRSTCTL_CDR_LOCK		BIT(12)
+#define LNaRRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x40)
+#define LNaRRSTCTL_HLT_REQ			BIT(27)
+#define LNaRRSTCTL_RST_DONE			BIT(30)
+#define LNaRRSTCTL_RST_REQ			BIT(31)
+#define LNaRRSTCTL_CDR_LOCK			BIT(12)
 
 /* Lane a Rx General Control Register */
-#define LYNX_28G_LNaRGCR0(lane)			(0x800 + (lane) * 0x100 + 0x44)
-#define LYNX_28G_LNaRGCR0_USE_PLLF		0x0
-#define LYNX_28G_LNaRGCR0_USE_PLLS		BIT(28)
-#define LYNX_28G_LNaRGCR0_USE_PLL_MSK		BIT(28)
-#define LYNX_28G_LNaRGCR0_N_RATE_MSK		GENMASK(26, 24)
-#define LYNX_28G_LNaRGCR0_N_RATE_FULL		0x0
-#define LYNX_28G_LNaRGCR0_N_RATE_HALF		0x1000000
-#define LYNX_28G_LNaRGCR0_N_RATE_QUARTER	0x2000000
-#define LYNX_28G_LNaRGCR0_N_RATE_MSK		GENMASK(26, 24)
-
-#define LYNX_28G_LNaRGCR1(lane)			(0x800 + (lane) * 0x100 + 0x48)
-
-#define LYNX_28G_LNaRECR0(lane)			(0x800 + (lane) * 0x100 + 0x50)
-#define LYNX_28G_LNaRECR1(lane)			(0x800 + (lane) * 0x100 + 0x54)
-#define LYNX_28G_LNaRECR2(lane)			(0x800 + (lane) * 0x100 + 0x58)
-
-#define LYNX_28G_LNaRSCCR0(lane)		(0x800 + (lane) * 0x100 + 0x74)
-
-#define LYNX_28G_LNaPSS(lane)			(0x1000 + (lane) * 0x4)
-#define LYNX_28G_LNaPSS_TYPE(pss)		(((pss) & GENMASK(30, 24)) >> 24)
-#define LYNX_28G_LNaPSS_TYPE_SGMII		0x4
-#define LYNX_28G_LNaPSS_TYPE_XFI		0x28
-
-#define LYNX_28G_SGMIIaCR1(lane)		(0x1804 + (lane) * 0x10)
-#define LYNX_28G_SGMIIaCR1_SGPCS_EN		BIT(11)
-#define LYNX_28G_SGMIIaCR1_SGPCS_DIS		0x0
-#define LYNX_28G_SGMIIaCR1_SGPCS_MSK		BIT(11)
+#define LNaRGCR0(lane)				(0x800 + (lane) * 0x100 + 0x44)
+#define LNaRGCR0_USE_PLLF			0x0
+#define LNaRGCR0_USE_PLLS			BIT(28)
+#define LNaRGCR0_USE_PLL_MSK			BIT(28)
+#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_N_RATE_FULL			0x0
+#define LNaRGCR0_N_RATE_HALF			0x1000000
+#define LNaRGCR0_N_RATE_QUARTER			0x2000000
+#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+
+#define LNaRGCR1(lane)				(0x800 + (lane) * 0x100 + 0x48)
+
+#define LNaRECR0(lane)				(0x800 + (lane) * 0x100 + 0x50)
+#define LNaRECR1(lane)				(0x800 + (lane) * 0x100 + 0x54)
+#define LNaRECR2(lane)				(0x800 + (lane) * 0x100 + 0x58)
+
+#define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
+
+#define LNaPSS(lane)				(0x1000 + (lane) * 0x4)
+#define LNaPSS_TYPE(pss)			(((pss) & GENMASK(30, 24)) >> 24)
+#define LNaPSS_TYPE_SGMII			0x4
+#define LNaPSS_TYPE_XFI				0x28
+
+#define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
+#define SGMIIaCR1_SGPCS_EN			BIT(11)
+#define SGMIIaCR1_SGPCS_DIS			0x0
+#define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
 
@@ -150,19 +150,19 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 }
 
 #define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, LYNX_28G_##reg(lane->id), \
-		     LYNX_28G_##reg##_##val, LYNX_28G_##reg##_##mask)
+	lynx_28g_rmw((lane)->priv, reg(lane->id), \
+		     reg##_##val, reg##_##mask)
 #define lynx_28g_lane_read(lane, reg)			\
-	ioread32((lane)->priv->base + LYNX_28G_##reg((lane)->id))
+	ioread32((lane)->priv->base + reg((lane)->id))
 #define lynx_28g_pll_read(pll, reg)			\
-	ioread32((pll)->priv->base + LYNX_28G_##reg((pll)->id))
+	ioread32((pll)->priv->base + reg((pll)->id))
 
 static bool lynx_28g_supports_interface(struct lynx_28g_priv *priv, int intf)
 {
 	int i;
 
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		if (LYNX_28G_PLLnRSTCTL_DIS(priv->pll[i].rstctl))
+		if (PLLnRSTCTL_DIS(priv->pll[i].rstctl))
 			continue;
 
 		if (test_bit(intf, priv->pll[i].supported))
@@ -181,7 +181,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
 		pll = &priv->pll[i];
 
-		if (LYNX_28G_PLLnRSTCTL_DIS(pll->rstctl))
+		if (PLLnRSTCTL_DIS(pll->rstctl))
 			continue;
 
 		if (test_bit(intf, pll->supported))
@@ -199,9 +199,9 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    phy_interface_t intf)
 {
-	switch (LYNX_28G_PLLnCR1_FRATE_SEL(pll->cr1)) {
-	case LYNX_28G_PLLnCR1_FRATE_5G_10GVCO:
-	case LYNX_28G_PLLnCR1_FRATE_5G_25GVCO:
+	switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+	case PLLnCR1_FRATE_5G_10GVCO:
+	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
@@ -212,7 +212,7 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 			break;
 		}
 		break;
-	case LYNX_28G_PLLnCR1_FRATE_10G_20GVCO:
+	case PLLnCR1_FRATE_10G_20GVCO:
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
@@ -242,20 +242,20 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 
 static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
 {
-	u32 lane_offset = LYNX_28G_LNa_PCC_OFFSET(lane);
 	struct lynx_28g_priv *priv = lane->priv;
+	u32 lane_offset = LNa_PCC_OFFSET(lane);
 
 	/* Cleanup the protocol configuration registers of the current protocol */
 	switch (lane->interface) {
 	case PHY_INTERFACE_MODE_10GBASER:
-		lynx_28g_rmw(priv, LYNX_28G_PCCC,
-			     LYNX_28G_PCCC_SXGMII_DIS << lane_offset,
+		lynx_28g_rmw(priv, PCCC,
+			     PCCC_SXGMII_DIS << lane_offset,
 			     GENMASK(3, 0) << lane_offset);
 		break;
 	case PHY_INTERFACE_MODE_SGMII:
 	case PHY_INTERFACE_MODE_1000BASEX:
-		lynx_28g_rmw(priv, LYNX_28G_PCC8,
-			     LYNX_28G_PCC8_SGMII_DIS << lane_offset,
+		lynx_28g_rmw(priv, PCC8,
+			     PCC8_SGMII_DIS << lane_offset,
 			     GENMASK(3, 0) << lane_offset);
 		break;
 	default:
@@ -265,15 +265,15 @@ static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
 
 static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 {
-	u32 lane_offset = LYNX_28G_LNa_PCC_OFFSET(lane);
+	u32 lane_offset = LNa_PCC_OFFSET(lane);
 	struct lynx_28g_priv *priv = lane->priv;
 	struct lynx_28g_pll *pll;
 
 	lynx_28g_cleanup_lane(lane);
 
 	/* Setup the lane to run in SGMII */
-	lynx_28g_rmw(priv, LYNX_28G_PCC8,
-		     LYNX_28G_PCC8_SGMII << lane_offset,
+	lynx_28g_rmw(priv, PCC8,
+		     PCC8_SGMII << lane_offset,
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
@@ -295,25 +295,25 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_EN, SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
-	iowrite32(0x00808006, priv->base + LYNX_28G_LNaTECR0(lane->id));
-	iowrite32(0x04310000, priv->base + LYNX_28G_LNaRGCR1(lane->id));
-	iowrite32(0x9f800000, priv->base + LYNX_28G_LNaRECR0(lane->id));
-	iowrite32(0x001f0000, priv->base + LYNX_28G_LNaRECR1(lane->id));
-	iowrite32(0x00000000, priv->base + LYNX_28G_LNaRECR2(lane->id));
-	iowrite32(0x00000000, priv->base + LYNX_28G_LNaRSCCR0(lane->id));
+	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
+	iowrite32(0x04310000, priv->base + LNaRGCR1(lane->id));
+	iowrite32(0x9f800000, priv->base + LNaRECR0(lane->id));
+	iowrite32(0x001f0000, priv->base + LNaRECR1(lane->id));
+	iowrite32(0x00000000, priv->base + LNaRECR2(lane->id));
+	iowrite32(0x00000000, priv->base + LNaRSCCR0(lane->id));
 }
 
 static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 {
-	u32 lane_offset = LYNX_28G_LNa_PCC_OFFSET(lane);
 	struct lynx_28g_priv *priv = lane->priv;
+	u32 lane_offset = LNa_PCC_OFFSET(lane);
 	struct lynx_28g_pll *pll;
 
 	lynx_28g_cleanup_lane(lane);
 
 	/* Enable the SXGMII lane */
-	lynx_28g_rmw(priv, LYNX_28G_PCCC,
-		     LYNX_28G_PCCC_10GBASER << lane_offset,
+	lynx_28g_rmw(priv, PCCC,
+		     PCCC_10GBASER << lane_offset,
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
@@ -335,12 +335,12 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_DIS, SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
-	iowrite32(0x10808307, priv->base + LYNX_28G_LNaTECR0(lane->id));
-	iowrite32(0x10000000, priv->base + LYNX_28G_LNaRGCR1(lane->id));
-	iowrite32(0x00000000, priv->base + LYNX_28G_LNaRECR0(lane->id));
-	iowrite32(0x001f0000, priv->base + LYNX_28G_LNaRECR1(lane->id));
-	iowrite32(0x81000020, priv->base + LYNX_28G_LNaRECR2(lane->id));
-	iowrite32(0x00002000, priv->base + LYNX_28G_LNaRSCCR0(lane->id));
+	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
+	iowrite32(0x10000000, priv->base + LNaRGCR1(lane->id));
+	iowrite32(0x00000000, priv->base + LNaRECR0(lane->id));
+	iowrite32(0x001f0000, priv->base + LNaRECR1(lane->id));
+	iowrite32(0x81000020, priv->base + LNaRECR2(lane->id));
+	iowrite32(0x00002000, priv->base + LNaRSCCR0(lane->id));
 }
 
 static int lynx_28g_power_off(struct phy *phy)
@@ -359,8 +359,8 @@ static int lynx_28g_power_off(struct phy *phy)
 	do {
 		trstctl = lynx_28g_lane_read(lane, LNaTRSTCTL);
 		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-	} while ((trstctl & LYNX_28G_LNaTRSTCTL_HLT_REQ) ||
-		 (rrstctl & LYNX_28G_LNaRRSTCTL_HLT_REQ));
+	} while ((trstctl & LNaTRSTCTL_HLT_REQ) ||
+		 (rrstctl & LNaRRSTCTL_HLT_REQ));
 
 	lane->powered_up = false;
 
@@ -383,8 +383,8 @@ static int lynx_28g_power_on(struct phy *phy)
 	do {
 		trstctl = lynx_28g_lane_read(lane, LNaTRSTCTL);
 		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-	} while (!(trstctl & LYNX_28G_LNaTRSTCTL_RST_DONE) ||
-		 !(rrstctl & LYNX_28G_LNaRRSTCTL_RST_DONE));
+	} while (!(trstctl & LNaTRSTCTL_RST_DONE) ||
+		 !(rrstctl & LNaRRSTCTL_RST_DONE));
 
 	lane->powered_up = true;
 
@@ -495,17 +495,17 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		pll->cr0 = lynx_28g_pll_read(pll, PLLnCR0);
 		pll->cr1 = lynx_28g_pll_read(pll, PLLnCR1);
 
-		if (LYNX_28G_PLLnRSTCTL_DIS(pll->rstctl))
+		if (PLLnRSTCTL_DIS(pll->rstctl))
 			continue;
 
-		switch (LYNX_28G_PLLnCR1_FRATE_SEL(pll->cr1)) {
-		case LYNX_28G_PLLnCR1_FRATE_5G_10GVCO:
-		case LYNX_28G_PLLnCR1_FRATE_5G_25GVCO:
+		switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+		case PLLnCR1_FRATE_5G_10GVCO:
+		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
 			__set_bit(PHY_INTERFACE_MODE_1000BASEX, pll->supported);
 			__set_bit(PHY_INTERFACE_MODE_SGMII, pll->supported);
 			break;
-		case LYNX_28G_PLLnCR1_FRATE_10G_20GVCO:
+		case PLLnCR1_FRATE_10G_20GVCO:
 			/* 10.3125GHz clock net */
 			__set_bit(PHY_INTERFACE_MODE_10GBASER, pll->supported);
 			break;
@@ -536,11 +536,11 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
 		}
 
 		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-		if (!(rrstctl & LYNX_28G_LNaRRSTCTL_CDR_LOCK)) {
+		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
 			lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
 			do {
 				rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-			} while (!(rrstctl & LYNX_28G_LNaRRSTCTL_RST_DONE));
+			} while (!(rrstctl & LNaRRSTCTL_RST_DONE));
 		}
 
 		mutex_unlock(&lane->phy->mutex);
@@ -554,12 +554,12 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	u32 pss, protocol;
 
 	pss = lynx_28g_lane_read(lane, LNaPSS);
-	protocol = LYNX_28G_LNaPSS_TYPE(pss);
+	protocol = LNaPSS_TYPE(pss);
 	switch (protocol) {
-	case LYNX_28G_LNaPSS_TYPE_SGMII:
+	case LNaPSS_TYPE_SGMII:
 		lane->interface = PHY_INTERFACE_MODE_SGMII;
 		break;
-	case LYNX_28G_LNaPSS_TYPE_XFI:
+	case LNaPSS_TYPE_XFI:
 		lane->interface = PHY_INTERFACE_MODE_10GBASER;
 		break;
 	default:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
