Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A14E8CD13D2
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 09:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1dhM7hGF6UHa4yphhfXpJXSwUYCY5tWj5an+qV4/YQ=; b=y2uuZSquZmYpDM
	OUw/lQyZMYpbqvuw00pIx1tnbjtHoWCIlozI1nEdyyGP+VvwQCjEDzPlbmnqVBCbSaW+savqfSaFm
	H3QIsBV5QzdHA/h3cZYPlzbYntTMdefIdBNjoC2OEYgTeIMx2DPO3yUmOQaOqGpR08xA5hXSbr0m5
	xmSCypTnFJ+cOb2ZMP0/Q3HP8yHFILOhbNpm9HnrLB0Jk42dmB7HuhMMi8j4ljq+OXN3RJpAzp1Dg
	YHC8tWOpfeTJVpTwQcoknLqucdJnr5zPNW5dbjmfALmJAg03Heb6CPG2/q6ZSKjbY67KvYUjBAfzt
	aTF6n5FSSkI65o/ICwGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO7E-000000055C9-1h8b;
	Mon, 10 Nov 2025 09:23:12 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO7B-0000000559f-48Q2
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 09:23:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LPVdKcr6t9qPRHDY2z5X15f+3m/cQkJkLfp5ndgk/tya+RJkHhjGXOecey/zWvaQOsAqOjjBEt6yn0YgkBQFVrjX+vbLnjnpfVJROb1Q2K381oqPCaUZ80OXAtFBHr7/MHNI7TRec5frs684dYfIwXt5NvfQC+VDH8/wveau38x/uIqqQUShTOPSj1h5Rz2v0e/BTEYpWTiImGTyr1KQ0dQ8rNRkG0qALD1KPZIk1FSAdwRI8lf4pV2rxX58waj1GPt1aZf+tNR+TwjLJqVrUsqebAKXWAKIS9v+mh5JrVF/VBCQZlRhnzdRDpSxc+2ALJ1iMypccUJKs5BX16wjWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cu5aeiBZD0KVnnsOYpy+xD4lq3f8edj1pz5+MaeyKoQ=;
 b=G+1QDb/6/tCWTzEQbcV9NsfIfkHSU/lBK7Zy0YGFJhLKoeza2aG6TaCUHpxAiruEDO6p2lwqN3gROZORVDZBXoIHUbfXXeMjOqpc6/DpPjPnDkSnsGd3Aj+eiznKoUkZP920+1l2N8A/C8Lvan0X0QJt0RsVTfy4BXdn2uHUv1JMglDopV1EEnO5MSPkvK49V8o4MQCh8BHnE8+aBZufbxPsHrD+Be1Vk/8G1gwD51B/6ta4FC1Fd1y0by8v1LAeRnRZAyLCaSQKK6aTVBkdXLKvd57vSX9CknaaqCyDCOZLO5gOnVN7aKszDNKJStBJr1fnWVdA4cBMl2YaDu6fFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cu5aeiBZD0KVnnsOYpy+xD4lq3f8edj1pz5+MaeyKoQ=;
 b=IQiAN7322E53bAREn8qG5V6EvByu1d1lN5pPRJoe+7aWwmtcyvnz7JnZ3dIOVgpUQteotW7Je2eTEKT7P03FVubTVmhqSGu1zs3PJ4nJ3B4DiGTE2tGw+fKkzv0PBvDkURS00Cenmpbx0b03zYkZtRktZdXyTjAwieUdCuqHOe6b32SudZCuu8FvRTNQiEXhN6zLOz/XaSnl+pFeJZ2jIXyox5pyKGwReeRuUwNEU5obQ9Sbdtvrd9jtB8EdrSnkyWGcqfx7OOd2uJTanWRJNekomTC/Cg0OehdDvg8dqF5aXhCHd2Uxa9IrZkodFpdg90hMO7KSidLedXZZXssJwA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA1PR04MB10468.eurprd04.prod.outlook.com (2603:10a6:102:448::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 09:23:00 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9298.010; Mon, 10 Nov 2025
 09:23:00 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy 05/16] phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg" with "val" and "mask"
Date: Mon, 10 Nov 2025 11:22:30 +0200
Message-Id: <20251110092241.1306838-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P190CA0026.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::31) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA1PR04MB10468:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f1fa3ca-4d00-4f0a-1c6d-08de203abdf1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|366016|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s4PtAeAjdwrJH0L80REIvnrdVDO0VDG4RtDplkB9nh/dsBgzX978cp5K8zrV?=
 =?us-ascii?Q?zyW881f1bYwZbUzDFMyVfm1xwICngMZ63bvABMA4ZcTZbBYqmz23gArvKq3z?=
 =?us-ascii?Q?eqCViXHvMrYimcAu6aqa+LfDUa34Rpo4YPbiV4NVG00gHeaB1haozzFLP4HR?=
 =?us-ascii?Q?SiapKKk2ue+oYoh8QU3dDKed6/5CK0MaDPyLZtjZgCJDwWaif0NP/INlDUN+?=
 =?us-ascii?Q?A0ZpDz6K2Z8uHt3gYKgUSZNU1rCrlN5csJTflxY8Mt2/hQ5jwlFyka+PVPdX?=
 =?us-ascii?Q?rgG8ETBWMbuosLDzh1s7wxU92f49QmaHwhgM2Z7C5/8INeYURoHSI/yaA83m?=
 =?us-ascii?Q?ndxR+U1hlNCCSd3nvNXxZITwhE9L8LkMaw90rCB4wSMGAakmUQmo0YDteEVX?=
 =?us-ascii?Q?HpnV5BQzuq5mZKmif6ly+Mh9MbfvOYUjMV8n+YyY1ov1XiHkwR641/UtAMPP?=
 =?us-ascii?Q?rR+lqY7vc8eFv2QDX/kGhkcOZJnoPpyAy0jby/EaJlAh5Zf2pw8aZEix9VIk?=
 =?us-ascii?Q?6gFwYttjJ3raEjU+mDgJYTjTTCajo0xjxNSPPtvQ8zsBWa1lVKCvznp98wMs?=
 =?us-ascii?Q?Jb2Ui0cIl4cFuhviyLuYgpcFl1iSl3TBbv5GqiGC8ic7sCmq5QEeftcu1DSk?=
 =?us-ascii?Q?FCIidQsoie+0WQ7RWVXSO0pL3306wC4Bky+FqU0vmI8jgGxGq+H484D9WJU2?=
 =?us-ascii?Q?GrXnwBynw4FUx16So+jbY84Oq1rDkr2wJiqcObsOGp1IsO/bFhqyUp6MZr8z?=
 =?us-ascii?Q?+kTA5+N6OPGYZMIcaII2bo8VXyo8N4jhwqd2mLPhUzOkxIl2xdk0gKK1rHnT?=
 =?us-ascii?Q?Hsc6rMS7sE5JSNICv6PIfgAIOREtWrnCOyJGBYt8xlb4GcS6cVAWGyCF8t7U?=
 =?us-ascii?Q?S/mz2iEhHSTR1U+lyJ0pRpDMLG1lrwGpxQtFWbNtLnRQxPTAAljwsIjYGEPR?=
 =?us-ascii?Q?TT2LpfBXE3ns3dE2BovQBUrGnNuFkArOic/MCgaxE51BvPvJlixAqQAyuXUd?=
 =?us-ascii?Q?v2gRiuDuZZNrGUkosG3/ix/y10WrFA8j//szvHvji3V15DOFWcN3beVB+XsT?=
 =?us-ascii?Q?9HqTyac1IuZv1W7leQhb17zZGFvJzjaFifTr0U3lmsgqhE0NWWETQHHHSLwI?=
 =?us-ascii?Q?ZBn/ybzG8vGCfDG+MkQfp2iIo+7AxLs51pcIFBXtHLNX8DsM+H1j9Smr6NDq?=
 =?us-ascii?Q?/J2mVgwFcEgHuYP9LWkucaPPhjXmMoq9Ed1QfWGqCkxmO1E3iPQT7A+4m4ao?=
 =?us-ascii?Q?9Bh2Z9mfbxfy6AfBClfc8M3+hoxor1QYvpZ4YqrWxUDKVu00qw2HR+dtskMO?=
 =?us-ascii?Q?DjcKjmY2EeOWGUgO9m8h8n1ZbiSCh4nz3/MIa55bYikrsmVPcu1sYdFC74Kd?=
 =?us-ascii?Q?pgrcFQafrSiWD6387hRonzMrzBYQxD4r6bq7Fa/Cw9nQQitR10KTLkntRkca?=
 =?us-ascii?Q?U0jFOEJfaeoT9DlVYOUo8bMTg9RL9QvCb0xiRiZqZ9UmFaHlGyo8to17k6t/?=
 =?us-ascii?Q?E/g6G6QhHiZjNVBukRqBW1OHMUoZbv9bKesn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(366016)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uCx0THccCDgI4EhdvA7NOxOQ1AGBy6DapXMgbTyLqLZdY5juhknkLEZrXXeS?=
 =?us-ascii?Q?H5O8G9Pt1cqlFv9Ljx7rsCtAl6OeGeDxzOhtKKr7PDJx8/rgWpKFprI6raKI?=
 =?us-ascii?Q?OqNySm63BUCITwPCpVON7Jg5Ad7K3grqGl6NjjBxuBeQ80oI3uTSqXVRIbKM?=
 =?us-ascii?Q?JK9+DpcrEd1WKE6QmLmV376GwneICSs3P4m39lFPgOXsdcf/WxmDngZfY0wK?=
 =?us-ascii?Q?c0Udp5Qfn/FpM+qbIn1e6APRuJtl0Eed8AvOee2/5/Oznil6+51M+dx6ACvO?=
 =?us-ascii?Q?Px3MJfeKzHaII3WX5AXfDH2g6FKErST3Q7rRj04nPu8R3XK4ZkQPxS+TuCVu?=
 =?us-ascii?Q?eWtP5Qh2y2rBYtWm+Sb61+sRXwC75kjXcjgZzCGsqbpe8vVf/5LzrW/DMjUK?=
 =?us-ascii?Q?HxCqNqrID7Cz5cvtAcyVsg5MTjDKocG2pfZsLkWPc/J7BAsA4yoaWi/O4dEe?=
 =?us-ascii?Q?jWOyUQunfW3V9pNMfEcse2rjcnjnEdhYluZSR10UBBh2RVxzOWJ2Qz07ix1L?=
 =?us-ascii?Q?Dy41s5eHeW2v1xKHbyO6RaX93YyTkmUxEVl9InpK7a4ZlkUvsOfS9nSpexml?=
 =?us-ascii?Q?kjfih9clUukWBkwOUjdntk3wgcCMEWdFUGacFRlFifueelDfCkwyk3Y6gPH2?=
 =?us-ascii?Q?uvj8x3BhFmGjXRZBtP5FEgJfzf13VOBw3uhsE3uy7890+dO7VNrYerARfsVA?=
 =?us-ascii?Q?1GN3Sh2532zvSms5Hd1ifJu02vZOO2JB6ByY6O8+5S10GpevJdPPt/lkwN9o?=
 =?us-ascii?Q?mjOw1N808U7KjiTA1rJylc7VdAUNXwtissS+mbajcwo1HPjTG7xgE+OpFFF1?=
 =?us-ascii?Q?eEHauu3wv4D7LjUse0EP2+deK7U3AUgAHsNxqbMX6xzCP5DyWIf8ZKjL+juD?=
 =?us-ascii?Q?vkHfuRNOc9pwrTmpxpYbDrPQPrMcequCztUBuF9KqlfGjPkz3XvuEIagO0xB?=
 =?us-ascii?Q?XxIBDiuRWEAHqIB6txY4bct2ZVoqXeZFQMlA+/aulxY1oHT96B/4eL2Z9/Is?=
 =?us-ascii?Q?NNNCgvQjFmk6bLrHa58czll0cZ7rhhzZfU5tCSooHaPFM0+/mR8ksjEVwL9/?=
 =?us-ascii?Q?SrmC+MpL8HpOmFky9VJQ2cFZJHo3AbUbHDqmkmyQXlLXUF+oHXREoPgznqUy?=
 =?us-ascii?Q?ncVvUWCaDj44hSXF3kvswtRHhkyEqTzomc1xkfBmG6l8R/esCzOeSSrSmVZ2?=
 =?us-ascii?Q?wa8TYqJ+Z9RiKxgD/oT0ysOjzzRLMfsagrQxE6zu0osY4iJgO/pxyODtpNCN?=
 =?us-ascii?Q?B6NMWpIqkPJpvgJ/vtGZ//gTT8osSC3xbQ+VA6Xi+MF/kJl3kUBpXX30F39G?=
 =?us-ascii?Q?kdkC4Rz/2EJd0k0ZVQL9gfDYdvlmUYSwQdOuh7DRk750HUEbP7G32FT/KM+T?=
 =?us-ascii?Q?f4vi9MPuOFpWB0laEM/Mdy2Kfcsws6biUaO+BY8YyAhTi4H5i8nfQssZJZ15?=
 =?us-ascii?Q?h/cmHOaQcylsc9f46T3khJNG6293LHT3opAXaHZ8yRV7rk/FGScKrrI7tXl/?=
 =?us-ascii?Q?BeU97QdLWDRfKIGYuqAIO7iReGVo4P6e3oa1Ryeli+t6FDdDvfcuFtCDxdTf?=
 =?us-ascii?Q?WUPzIZmf8UucTw0gjpevzSawY2RIAylBfl3L/t1IbjvnMyDBE8hb/Szn9KFs?=
 =?us-ascii?Q?fg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f1fa3ca-4d00-4f0a-1c6d-08de203abdf1
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 09:23:00.3271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1DNdXRiHrVOZTR377XoniCRos8iR+ae2AjJd9TRFqVsyUFzfK3VZqZAMqR0NnKIflDSJPxPGr3jC/3yBGzEcWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_012310_192855_0087A69D 
X-CRM114-Status: GOOD (  16.48  )
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

The last step in having lynx_28g_lane_rmw() arguments that fully point
to their definitions is the removal of the current concatenation logic,
by which e.g. "LNaTGCR0, N_RATE_QUARTER, N_RATE_MSK" is expanded to
"LNaTGCR0, LNaTGCR0_N_RATE_QUARTER, LNaTGCR0_N_RATE_MSK".

There are pros and cons to the above. An advantage is the impossibility
to mix up fields of one register with fields of another. For example
both LNaTGCR0 and LNaRGCR0 contain an N_RATE_QUARTER field (one for the
lane RX direction, one for the lane TX).

But the two notable disadvantages are:

1. the impossibility to write expressions such as logical OR between
   multiple fields. Practically, this forces us to perform more accesses
   to hardware registers than would otherwise be needed. See the LNaGCR0
   access for example.

2. the necessity to invent fields that don't exist, like SGMIIaCR1_SGPCS_DIS,
   in order to clear SGMIIaCR1_SGPCS_EN (the real field name). This is
   confusing, because sometimes, fields that end with _DIS really exist,
   and it's best to not invent new field names.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v4: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 60 +++++++++++++++---------
 1 file changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index c9bdd11cc48a..a5a76e0dff89 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -103,7 +103,6 @@
 
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
-#define SGMIIaCR1_SGPCS_DIS			0x0
 #define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
@@ -150,8 +149,7 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 }
 
 #define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, reg(lane->id), \
-		     reg##_##val, reg##_##mask)
+	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
 #define lynx_28g_lane_read(lane, reg)			\
 	ioread32((lane)->priv->base + reg((lane)->id))
 #define lynx_28g_pll_read(pll, reg)			\
@@ -205,8 +203,12 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, N_RATE_QUARTER, N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, N_RATE_QUARTER, N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  LNaTGCR0_N_RATE_QUARTER,
+					  LNaTGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  LNaRGCR0_N_RATE_QUARTER,
+					  LNaRGCR0_N_RATE_MSK);
 			break;
 		default:
 			break;
@@ -216,8 +218,10 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, N_RATE_FULL, N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, N_RATE_FULL, N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_N_RATE_FULL,
+					  LNaTGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_N_RATE_FULL,
+					  LNaRGCR0_N_RATE_MSK);
 			break;
 		default:
 			break;
@@ -232,11 +236,15 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 				  struct lynx_28g_pll *pll)
 {
 	if (pll->id == 0) {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, USE_PLLF, USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, USE_PLLF, USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLF,
+				  LNaTGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLF,
+				  LNaRGCR0_USE_PLL_MSK);
 	} else {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, USE_PLLS, USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, USE_PLLS, USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLS,
+				  LNaTGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLS,
+				  LNaRGCR0_USE_PLL_MSK);
 	}
 }
 
@@ -277,8 +285,9 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0, PROTO_SEL_SGMII, PROTO_SEL_MSK);
-	lynx_28g_lane_rmw(lane, LNaGCR0, IF_WIDTH_10_BIT, IF_WIDTH_MSK);
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  LNaGCR0_PROTO_SEL_SGMII | LNaGCR0_IF_WIDTH_10_BIT,
+			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
@@ -292,7 +301,8 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_SGMII);
 
 	/* Enable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_EN, SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
+			  SGMIIaCR1_SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
@@ -317,8 +327,9 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 		     GENMASK(3, 0) << lane_offset);
 
 	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0, PROTO_SEL_XFI, PROTO_SEL_MSK);
-	lynx_28g_lane_rmw(lane, LNaGCR0, IF_WIDTH_20_BIT, IF_WIDTH_MSK);
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  LNaGCR0_PROTO_SEL_XFI | LNaGCR0_IF_WIDTH_20_BIT,
+			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
@@ -332,7 +343,7 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
 
 	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGPCS_DIS, SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_MSK);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
@@ -352,8 +363,10 @@ static int lynx_28g_power_off(struct phy *phy)
 		return 0;
 
 	/* Issue a halt request */
-	lynx_28g_lane_rmw(lane, LNaTRSTCTL, HLT_REQ, HLT_REQ);
-	lynx_28g_lane_rmw(lane, LNaRRSTCTL, HLT_REQ, HLT_REQ);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_HLT_REQ,
+			  LNaTRSTCTL_HLT_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_HLT_REQ,
+			  LNaRRSTCTL_HLT_REQ);
 
 	/* Wait until the halting process is complete */
 	do {
@@ -376,8 +389,10 @@ static int lynx_28g_power_on(struct phy *phy)
 		return 0;
 
 	/* Issue a reset request on the lane */
-	lynx_28g_lane_rmw(lane, LNaTRSTCTL, RST_REQ, RST_REQ);
-	lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_RST_REQ,
+			  LNaTRSTCTL_RST_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+			  LNaRRSTCTL_RST_REQ);
 
 	/* Wait until the reset sequence is completed */
 	do {
@@ -537,7 +552,8 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
 
 		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
 		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
-			lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
+			lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+					  LNaRRSTCTL_RST_REQ);
 			do {
 				rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
 			} while (!(rrstctl & LNaRRSTCTL_RST_DONE));
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
