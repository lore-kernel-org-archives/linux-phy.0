Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56CFFD0E6C7
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtynY/Rds4gXYRm/JJVMo1w4Dg3bSHDAtv3IdSL4ayc=; b=Z3Q8gBkAef90sh
	X8OApG5oxk1cwybJeaYAdktBdMjDkAXoARos+pqrhRxLUDtE50/c8KkJitOQzOZkfn3J+/cHM4Xyt
	vR1ars1Ky63ZbijDxNsYfIawPKBdyOigtlcS8IouqxzLBDxoygoiyl0ZrH3EAYAmFt9xzvHpKy2Wm
	mItEOoRehoPjhfN78BzIJK3Sa8gARe1wjQVV5GuIAthG6zq70wKkglAsazbYechloOMAIJqrOXjEm
	EwzzkBHDyYlSGlJJCPXPpRNnxMv1JePdgFS0xohpgifYylkD7U/fgJhOgpMjTVYgebXGvH6TZQZJV
	VXoJ/6VWvQpboNL04CvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYY-0000000DFI2-0PsO;
	Tue, 25 Nov 2025 11:50:02 +0000
Received: from mail-francecentralazon11013068.outbound.protection.outlook.com ([40.107.162.68] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYV-0000000DF7R-0xI9
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:50:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QcXFqP5ZCEOMlNba+ziDtQHjXohocSfK03+zIRV6SXYx/WzynibToG4PeRQgvklNB2NPeJAOUQFKncrzsS/2IAGK/2AQceoWLGNVdLthCSjVKrPV5qT/4qT4OQ9njFg7QobK7i2L9vTjfZ619xXKF/nl3GUTLWHMQMYo9u/IuKS+kOVEkN4JxUXLWIr5I7DGRy49+ytXmdqpIMmpPvZ2EcYC9GwRmZHtB0Ou4F/2JGXcJHX4mHvf/9GKelmFZRExb1cUoAS55jlSHstj/lbf37pyWkqetLyLZP5YG0JhcvF6pbdsDCW1kVw+Ey/NgTRam+j7CruTy/sZOae7AU8O0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZHB08HX8ysiFewo6aRGX8nmg02B7CZeinbVixhGRkc=;
 b=bCmGeL2JmeBbiMWoC0ti69+c0IjKHHDJt8605Y0ZyLprvrgioz4r6j6iMLQyyNG+m0VL5Yb+yL2FAC3FHGrZvA42WbWJk0PP5TjvqbQhliezMJxB0CWTe+eUwuKY99UsnkaaW8uj7hGFOZk7xQf4hnJFLkhxr4oeX0JjcVzHID9UDhpdWDcGZPw5fDjy7gZXzs6yspSurs9cmmx4S/FxgSjs3p2bpRHatR/8JB4e+6WE7HtrYkJuTlipmdncsmFViZasPgmf3rHOTgrIN9cI6Akkc+nNSaixQfDJhkYKV1eF2HkA/go0lEQSo0SE5QjQHN3G6TJZtIuiA+5ySjffDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CZHB08HX8ysiFewo6aRGX8nmg02B7CZeinbVixhGRkc=;
 b=beYhhCYwheHcDZK9AxIjz3/OK5wEC4DYhFCNXYwWugqyUl6lJUV36+ws0FwVJG7GrQk6g4yWw2FUkzOfY/1nfOz+FoFPJWN+2vzJPqEDyFsE50j5psZpymNgdJY+LEkP7p/G9KCHOew1ZcmbtrW5Z3an0zFgDE2R9PNkxeoCiJfpArC7z9+rUdJpU9tUVaeIDFU8yBqbzibRI4oKFFuJ7fnMNOr4H5DKTBHdjt//W6Tomh9zDkdZ/i1Kt/CuJwHV2VgCqslBsCjZseZeOEjr7HEv03AOmJVLlEnVTQJXNz5VhlwZUNYlDA3eHRNTEa3G0BmKbYO0O2k+atf5nvZJ2g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9201.eurprd04.prod.outlook.com (2603:10a6:102:232::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:51 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:51 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 14/15] phy: lynx-28g: use "dev" argument more in lynx_28g_probe()
Date: Tue, 25 Nov 2025 13:48:46 +0200
Message-Id: <20251125114847.804961-15-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: 066ce0ff-e5c2-4596-e831-08de2c18bdd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|52116014|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MCEPiEekXGpI3oCfxKkFhbbTxE8mN5yOteb+Bc1bnDvRgravAKn8JlPIlbFG?=
 =?us-ascii?Q?3/mri2Hcd/rtka3e9rlrnoiA3hsT0tkXv+GnnnVuKcamshAmYzDGgABmVDpP?=
 =?us-ascii?Q?mLYZOeV7F1znEiIvH56MR9Z1OTrg3NUvSlY2g7TKgcB8ejwRl/lDvTO4iX6I?=
 =?us-ascii?Q?HdvGKzeYJQCMoyyg4zEmJ3ZKxOLOY3fNvPqyLXdfZTn+QHYugjhQgVhDGMz0?=
 =?us-ascii?Q?4afYSMIQ/XpDUKcW0dhJQNOyXv5141RLTW8D6mO//t2lUTfpy4jRAsyjniYE?=
 =?us-ascii?Q?UKwiqtVTPkg9ERfoMYxK2yYX4i93gvCqhbCMdHD4ZHs058vlipA7flHUhq7i?=
 =?us-ascii?Q?+2CKsUU27Udl3FvxhVEZpF0PfrYyy6QO+2DF7DBOkKx5OtEwwpqHkEG/alEK?=
 =?us-ascii?Q?K/bKw6fnKfTJmXiOezh3julhFPHNgG/3fLjlp44gR/bdroMdAL+zymWKexZI?=
 =?us-ascii?Q?4dA7unZR64eHkK4zdb0u4M7mOMKruo9DuC/2JdBkO/Vrl9FtLmuBsBZ2hx/P?=
 =?us-ascii?Q?9ddQEICEwyrzf4Y07N+PbtqKvgrAsiIAKCZ5ajQF3YjZfUz+YNBGkW6sg8km?=
 =?us-ascii?Q?9KOqfFbMOK6CrA5ubkdHdJqAIbOqOtsq1kitdBFgVI8UWt+NT4Dd1IduRASZ?=
 =?us-ascii?Q?J6ieBKhm8nXz+w7KaiYPQXds/0ZRHK0H/1+7LJ5o634Hx7R6eQ3ZJ7Sbw5M9?=
 =?us-ascii?Q?YX4HQE3vGBiOpfH33vpCLa0AQ62Pj0y1/oMQ46PyIVnMLy1qfCCFWmaD7z8Q?=
 =?us-ascii?Q?sOPdOcdyi+irTr5vkvt/mwUNikQ5g8HvT62rd9bZULLVbQgt2FalpxRZ4tHn?=
 =?us-ascii?Q?ULLlWzYJkL0khNjr1K5TInqhymjOEkRAJKaHfocUfmMgadX0aUpHr9HTekWN?=
 =?us-ascii?Q?mGS0daaLTD5voWw6mdY9ja2In785Sogy5e9N1rVa7+ItReMPXiGPRJCEAUzy?=
 =?us-ascii?Q?V4wpFIIA/C7it3MF8LEfUQE6b5k0uBzBlfol4X0czKcQOTAMmwMwXZmmR2Fp?=
 =?us-ascii?Q?bK0NyLHjJw2NdSOHfSjpCsRuzzH8Xs9w2nWYK7N9eH9ImcbMLoKWb1Qg/5eC?=
 =?us-ascii?Q?c2wfsuAkCkyw0l3POCgCKg0STQTTXZz2zSrFhzb5iYxL/3j6IxtOUQI91kHm?=
 =?us-ascii?Q?g+SAmpT0J5pEsF/KtmqelN0oxBiUo5O1hV43i3fQ7H2ratTFTD8xVYn8lsox?=
 =?us-ascii?Q?+NXVN4m/sWUQKXwgqbLgD0aqVNpjilQ7v3ezu2m1iciBXBdvcZdCLS2YyKbY?=
 =?us-ascii?Q?SzOA/kcD5Pkb6lwhc/aNVJSMBx4dHZZEUQuz15QPgW+nzTdriEc2w+tH1lE3?=
 =?us-ascii?Q?iPzMN0SD+E0DRQmi2JkevO4Ae1hbyfsu+o8KRS2BhckZCYT8YWD0LmArLof3?=
 =?us-ascii?Q?hFuOb7CXR5vtKKY3behsK3wONb/Mmdlmd0Drhdrt3OnFZGgBbPkms5r9PTr/?=
 =?us-ascii?Q?oZRjXjxSqY/FKG6GceYyRduG4apL5Kh4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(52116014)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qMgJqjmWZhQRU6fxEDXXtGtTi5/cK+o+opfKmilhHQH+jF5/b9IL3hoz5rdz?=
 =?us-ascii?Q?Xuyf1QBsO4vwqeiybZvLzBm5JuHDzoXaNDw4AcSqFTYXko7YrC5TrrbVbiXO?=
 =?us-ascii?Q?7YzdMUku5J1D7940Noqq4Ozls6DM/Isq4n5dgkg3mza9PPE25gPkLf+PnqCi?=
 =?us-ascii?Q?59gB/eit3tGmAK5FeosN8NGKlNiREKA9QNbhpPjq5k3IG0QvtSAzp1ji5OZK?=
 =?us-ascii?Q?sGE1AdYP/9zP0kPw8y00NVjvYuoBTQHx165K0B02Z3gU1BSGglqU2WCO9mmR?=
 =?us-ascii?Q?aFAIYrsJekzFa4xYukSX8AKXsmuv1Z8QBVWQgFnBBrH3NKt+3wa9J0xORqVv?=
 =?us-ascii?Q?PtSb982iiQ2RClgciaXsVzJPWrl/USSQuwJbFHWH4x7pyUJbuto1mCGRRp3k?=
 =?us-ascii?Q?qVpDAurlSriBa5T3/LpJjTbJFi1zbTwvaNLzjVggQ8VcM/PQklzGMG+S555D?=
 =?us-ascii?Q?dOBZDqEj3pqcIIo2YB7pO+B7IjZingenNVBxOUOrKycDscbKEBfeIR1Jv8N/?=
 =?us-ascii?Q?57UV8Sgw5iM86y5O8/Ekp5I7kYE20hK3aWA5KS9QXl9bRSdf0X0oM39o3uez?=
 =?us-ascii?Q?0jmNu+3OMWjzmlwGma7mn2l79IYqRAkeuz2NnZcurNcyIUvd8JAMekbdaX03?=
 =?us-ascii?Q?CqtPywsqY78c+b4kE0gkSfwE/172Y8fsR3p6ozu20hkfQanj4UM3ZXyyxMqp?=
 =?us-ascii?Q?Z5SV55iSoU+kunaDLC+JpkOwERXT/WXYPEe6dZ3gPcIzg+sZiZr5twyuT79U?=
 =?us-ascii?Q?E911irMyGXq8WHPU4RufTJN6DA2VMmFzX6vnf6hoC247uYgyGgZGZ0Gz/SQK?=
 =?us-ascii?Q?1MAX6BdGaJ9jV32oK8D0EkHlP0KNBma2SmhJSIhnP2TPjSkmIr9s5++VL0Vt?=
 =?us-ascii?Q?iyCq/M6SaaqzQFfjX+DYiprtqvtM9wllAGCGZJWSdWuSqicx5oqOX+J34zTI?=
 =?us-ascii?Q?Na6wOCKPg/ZSKY6+RnGEznJqGj//igNWP0JIT8HKg3Q7JVdnSXIKJVCdcf/m?=
 =?us-ascii?Q?JfPuN2Lhx9+mrEXpoZIWQRdAtJgN3DCFlBV6djcdWAzRy9ikSLGxL2ffv8Jq?=
 =?us-ascii?Q?iwosdsOIn3z0SgdXkUdFmJrHHjJRwV4N7xary5+Lp2u8PZ9kp0fVAL7nh8yl?=
 =?us-ascii?Q?wzPdhx7MdFkh1DRevRZDPbXcDJ5tMbjX+VjFbDavVmvrTZw47eaewl1dSYO5?=
 =?us-ascii?Q?Q7t5Dkv3FQay2OBPD4JxMRxEactM91K6oemG8hRbzrEnk/ZBpVK05YM8y9n5?=
 =?us-ascii?Q?ki2FuI0xhK1jK8pjDXJZt+6LWTwiRpyE85QYjpQrap3ZiMIEu1DzyTNwARW5?=
 =?us-ascii?Q?BmbeUGPgULF9SNSwixLP3qZH3NawJNii0nByLMUgyZsAChudE2+gu8NJSqk8?=
 =?us-ascii?Q?vPd4l6VvaceVSgtZVfOjSUi+yEnu8aRF67UB7v/F9Ofn2Sq+ylOPeZqtU37J?=
 =?us-ascii?Q?n4BwZq/hrA62GYwks8jjIOVMyrR4DC4FgCWKu1cH9O/fKK7NXCSeiqeK9sRI?=
 =?us-ascii?Q?SHVdpYP4CdSCqbJyUkp+HeTcy6jeJtdWS3SnB0+TujyufOFY8dPrChcjt0hC?=
 =?us-ascii?Q?yCJKhd2aDXYB+ggq6cp0Cx2/M9vAFzwQMJXQCP61NTjNOVxLmpZt3QpEMpKa?=
 =?us-ascii?Q?laYm9Ooz1mtD3hNiBpwXM/M=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 066ce0ff-e5c2-4596-e831-08de2c18bdd7
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:51.0817
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3oeJKFN8K0f/zTAhpsJe2cTMoe/U+hQf7C1wVF3e1J2Z+vqXV62gsVdKl5T3D02f++UlGqy2KUgaUiEKkx6Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034959_288589_EC8F36CB 
X-CRM114-Status: GOOD (  11.34  )
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

We have "dev" which holds &pdev->dev, but we still dereference this
pointer 4 more times, instead of using the local variable.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none
v3->v4: adapt to the new patch order where "[PATCH v4 phy 03/16] phy:
        lynx-28g: support individual lanes as OF PHY providers" has
        moved some priv->dev dereferences to lynx_28g_probe_lane()
v2->v3: none
v1->v2: patch is new

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index be804f9b7d5e..423223371dd0 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1160,10 +1160,10 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	struct device_node *dn;
 	int err;
 
-	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
-	priv->dev = &pdev->dev;
+	priv->dev = dev;
 
 	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base))
@@ -1216,8 +1216,8 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
 			   msecs_to_jiffies(1000));
 
-	dev_set_drvdata(&pdev->dev, priv);
-	provider = devm_of_phy_provider_register(&pdev->dev, lynx_28g_xlate);
+	dev_set_drvdata(dev, priv);
+	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
 
 	return PTR_ERR_OR_ZERO(provider);
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
