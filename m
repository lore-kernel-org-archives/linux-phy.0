Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E211FCCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 09:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HppJYnMobFqpedEiOYiFE+XSlr831saJ1OAymw9O3wI=; b=sKJVrtkG8ctAlF
	5WcT1NV7n/p3b/wGZVyetm/fwYgaKgFyzBhXhtlJ4l56XHcyX50hU+Pe3Z0PZu/OVsyhxcuAHYXHv
	aIiYzQGK87mFpGH7HHhgVApxmOImQ2bzuZ3LSDExzzUrn9jP7hEhuDHBzIU5KU22XBC4pHjgYljzo
	Tf9v69K82qSf9mAWk4kUOMmPceUaPA0OVowtZKt4FrK6+rweO2hqo+akm1Hq4dWKWFTewt3/Ey/2K
	OUn/TgAI+LvQ8rwsR+M3xo0/M4GhcRZEZ3+9ut3verkXQu8YKjY+7ihbWTo3jzQPJB6qizv0ln5bv
	B0XZeynU42c7YUT09Bvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO7G-000000055EM-2pnb;
	Mon, 10 Nov 2025 09:23:14 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO7E-0000000559f-289V
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 09:23:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dl3H9yMqTeZCyC1oIYYXbWZjom1KLa9WfOjz0Y5r0e+mddHjYpaDGVpGGhgsohSfeMnEnTQhPPFC1s1tMvJpzsb9WDTMs66vPjeSOGYlx3ptQ8LyGrAUBXw4JkgmDjWYEyui5SQs+Q21m+gvtCtqLfzRXXZS/JGanK2DQaavpBr/oDCRxfFCz+5BaLnfaGdrBZhkKEDD9aN+iZb2eq9JSbdps32PDWJ6I4Uwm2B9r1FN+JeGQ+8VdODbHXwq1CsfuD48lZqK0gy1MjxXVvAEAXxqf5BkBebkBr21pOwUeu5fO1XLg71t5SUOcyTfLC8CB3KS0HK57PGCHQsKaicDfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HqtThF9G2iwGhsF3bm35/cFTP49DYkDAe1JKOUCzkPo=;
 b=mfoc5ZDUw7naEaEAzoEfUqxPkshAT3E0psIBJfXS5pOEU9BDTjJ6+PalLfN7vcCPrv1XUL1y5IbJCRazX7q5VLIyvhF1tVMkYcEeL7/u0v6Db4QFjkkNfzqGQ882IGCgTLB34x+oTK+CwprzsIx3Mc+Zh/IzxddaV59zn06QY9g3ecctcX5kKpphRJsriw2e21wbCcpHM+EUdR2nfxQP8tU/gs4h73axO/B5hwdU8EboVZDcyfKXpVRt/ITI2u6SrYTupjZ7AakwDVDDDstAJjY4q+9EJNuKRmefEhTzZTsvZ0kExOT08OSfgBnpSyR2wIAui2INa0mJ2wYF8SJLZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HqtThF9G2iwGhsF3bm35/cFTP49DYkDAe1JKOUCzkPo=;
 b=Obie9vNInkwfGufjmNlPuk9Wp+0gxNTtrjH+aBiqhSbYKYm52d7qZOE2r/9RxYAsCM1RGBWsj4kmt/5fRI7nv35b+BoApcE5gl315W+B7mVYAIAqoMj9a+4in5fcJJKMccqj1poGET64Wk0+PefQjmwwBp4Fv1uCJxBUXqgMpeFL2og/9f7Dm+gehxQd3LFhckqbptl6WvSjLuOmCJQaMF4WVTfjFgDKt1q9HIPd8GN8BJB9zDPjDS7SUMAgatGQhkOBy394pzwg4CrXWDWaSm7oVP+3h8G2AME4x1oJvhdIb97xrsr6oiiCFYe+CyPI7vbsrzBvHzP2jn5TZ/LpTw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA1PR04MB10468.eurprd04.prod.outlook.com (2603:10a6:102:448::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 09:23:03 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9298.010; Mon, 10 Nov 2025
 09:23:03 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy 08/16] phy: lynx-28g: restructure protocol configuration register accesses
Date: Mon, 10 Nov 2025 11:22:33 +0200
Message-Id: <20251110092241.1306838-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P190CA0026.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::31) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA1PR04MB10468:EE_
X-MS-Office365-Filtering-Correlation-Id: bda334e7-1578-44b1-693d-08de203abfe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|366016|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vdPJfScyBOd0oKw4WFgtbvYp0663K/Fbp3t1qFLhbRx1tSewqkASarUyvu4D?=
 =?us-ascii?Q?jSX/dCikV3uD1Ga+ca+EnlEX39PQj5wuv5Yf3M8FUFehwQWPNJisW6MSwFNI?=
 =?us-ascii?Q?t4v8Sklbv6xrFZYJsASwHUKRpxWZwSy6G1e3Gf5NrGeTUDt91QP7bTnr7NzK?=
 =?us-ascii?Q?9BgC16H1J3bvqchh4pTApnTtIvq8GFTRr5t3zyQTY7oUPTKToD+Nv+JwvtaL?=
 =?us-ascii?Q?J1qEV4JYsoxfyvVSifKBe75raRKj5KgVLmEoMXs1AREwCEjy9MiKCNiU8wSZ?=
 =?us-ascii?Q?6ib7ABdSB5IYj/5c1/wsjLqeh1e2M1uZj66kSUg0FIsfGHAAyVlAks2sqcn3?=
 =?us-ascii?Q?H/7K5L01Fx1hyilOfDiuiuopn9IRr1yw+m8ytszXmmvCSivQliLToj/DOB4L?=
 =?us-ascii?Q?n9bwEHrk8XsT2rRTEi7zHPjJjRGMOlChl/T0+/ALYMxQURdagqBgLdpKP81g?=
 =?us-ascii?Q?Scdul0JiDTVhORxvesddCztFczhgowFWNjICiz7KKMCT9TF1K3JUbZp7FJbM?=
 =?us-ascii?Q?4TRaROk9R1p6fCGhVMMrGSvrAxDXzZ6mNP+wZvjEvR+tYckQv2pVtjusN/+4?=
 =?us-ascii?Q?dKfK6YDfkLam6Vzt0jH+A6IhRO9rGi7qxdWA6tI7ywdSq2Ek0gibosRS3Z9M?=
 =?us-ascii?Q?KQtldq8cDYxHHyw/a3YsJ7Q6n7/v7P2g2fAqvwEOIgdEu3HLV3hOiVZo2qoT?=
 =?us-ascii?Q?dnljQFmTdRukiTP+uYZrhhL4/qGOz4iXlYjiHkRmEkByy0sAvK7wrjyl2Xik?=
 =?us-ascii?Q?iM8yFKzdr0mHGp/jXwLTr46DGrAIZa+xchHbaA82M0omrbrs4Psy5k0URYw7?=
 =?us-ascii?Q?iq/+dRkpQ2iqBoVM2zBRzBlnxzc5YdDYbf+ov12QWRl3U3BChwiwaOm24pwk?=
 =?us-ascii?Q?NLr+5rFB8UezFCB0rdwGuCMZQq8OoVZkOqvoAUTLD7WR0sJFqx6iqSQua7p1?=
 =?us-ascii?Q?yahdknA04WKIqfSx6UyKwJvmLTfW5wj3xyRS20ZDrtjftPdRy8UUVTvxHuGn?=
 =?us-ascii?Q?1tUGT3PklN4uif5EMBdbpD+PHoMbnvAkKNMgdpN/N3uTY6eRdp/1wgMmLqu9?=
 =?us-ascii?Q?BBBt0Aq+tTmHinhps1kRI/Zin/JIFTdL2VEIaOml5/j9LgeJxljr/sL9owHW?=
 =?us-ascii?Q?BzFs71f9pruRpz8TXwHPhO6P1aftvAqal3hZYt1p6oIXaZI14RE64JW7bLUW?=
 =?us-ascii?Q?3XItelvDGEkdFTj897XzgwHwa6fG4VkTzRH8O3YQ+SBejHRjC/wVP6RotEWt?=
 =?us-ascii?Q?hhkmV0Dnq24m9iJ6WVug+jiSHfkm1kFQA2nZQTjysGyHZ1NC4+giCP6p+07e?=
 =?us-ascii?Q?QWYT3N/GLpWJMp6/Vx2WNIPG2P0V69wfpbI1Nhe8fKj56xId15DKzvM+Pv7E?=
 =?us-ascii?Q?zaPURWkbeT21aIUzxmJXNQEcybHnDs6fyoBmj6XGFph2wzMRUTcQP5DS4GYK?=
 =?us-ascii?Q?jc3hswrwM7oP8ViRdj7ukjanqurUC9ZkmsyhcmjfNvjchHQ2ButRldAgyWoD?=
 =?us-ascii?Q?q55WLFa9TNGBmX7/qmuWcxPBNOI021WINpX4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(366016)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+L0XLVx9eV7Flrdot9lsiSJ4PFNt3pAw2/uMK3yeFz91cNe1hLUVjaPRhkDH?=
 =?us-ascii?Q?zsf3sW+eW+FVjHeYnaB1tbmy6KSYEWithYDiRU1FbaP9GtQNfnORs0/Xxumr?=
 =?us-ascii?Q?BYiBDzkQBfQElH1WU1/8OghjKLwor0S/d0LacpToJSgPxFWbl7PNZJdlqK6R?=
 =?us-ascii?Q?rd46RfB/6oIMeFdK8PXFowtuA1K08eTZUBzHJdzINNANnxH83OTt59qn1BLQ?=
 =?us-ascii?Q?zMXvi/URDdKsAVxswx+aglGwitrFVPpXt/yOCI44X3yfr2D0t3pi+Cmz1da9?=
 =?us-ascii?Q?42wEGYfXIHx07S+MVzx/l3N5sleWWgQJ6veaQdSWquY0kH7jLhmHuHHyDI2c?=
 =?us-ascii?Q?an+R0M4CjsmvFUUjh44XQSF8FSxS6PuVxiOjweABlBng+z56w0u7MCOCHMXD?=
 =?us-ascii?Q?ebtxuY7TFJeuqaHvsnW/yH7RMsFx7bsQKajJsrPZBmCa9SZ30fDD2VT7f4Uk?=
 =?us-ascii?Q?dq22rUnoLuuxyP7QDnwleHS+Bw2WnPookkeHpRD56BClj/n4tRPiWN1NvTMF?=
 =?us-ascii?Q?SJcIoBUG7MaRpuIk0xu+hyWhI3Rxz957N4dtI2TFOX1vzPmdJTGfvaN0pcLe?=
 =?us-ascii?Q?l0vXTHt83ZWquy4P4Pj7Bxy6fA4CT8EXsXM10COmDHN1jbJN1YbsOzrcVDz2?=
 =?us-ascii?Q?dMEIbYFZRnRQAoM1eAbUocBX/68KrNKFqVg/eV9ovMWelaZ0cj5wibwMafB8?=
 =?us-ascii?Q?SlCT3O+FXHKZqm1wKUUUnSPT8vDUjmvhqNtB3rho4FItjfEL6W1B5dUU+vmB?=
 =?us-ascii?Q?PRs9cx7wjVHDSJ8jPk//+C581IFTbA7hIf8ObiktHgKy0G0sa0H/fE8uSOt7?=
 =?us-ascii?Q?jp/BZWAlhpreAwvuFc2fkP/O/un/rvmFcBIC3VzF4sAQRsJvta9d7hH/WpoX?=
 =?us-ascii?Q?nsXRDqV35D9P9Bcr0LJCCxilFo6IncVWHQ1KM6KS+vyie0LbAk3vo9WXvJ0D?=
 =?us-ascii?Q?Yixl8UEXpkHUX+RgXsJNthTyYuk//J70szuzXZY6wsfa6xNhn2YFSQ9NBAD+?=
 =?us-ascii?Q?yp4inharobIR6odX+t1iPmXXWHsOUBg9xmZdMT0PuNWBfKMldQvCZC7MuWGe?=
 =?us-ascii?Q?givYDEjej9zVkyXQWCYY8s/chKekifq78ZIDcVaP1iYoy3njJm0pwGxbL8XL?=
 =?us-ascii?Q?xoVEkB+RCjrWihudvQC1H3oljnwhIGKaviu3EEHZtl+k8z+4u/b0QlYX5mqw?=
 =?us-ascii?Q?7I0V6fh4g3sqJzOJLV4iWdzkm8IWZfFHI+Hq0UAKzrWKAWb7YTUv0mf+76vJ?=
 =?us-ascii?Q?2ODc5HW/yB7bj7ztOxvqj5a6eHTHWqrF3snJuhFZgv4TeXfec4CDYQZcwR6+?=
 =?us-ascii?Q?La94GZpLmQNPrPIv+1E/jdzTNQkjZ13MavIHqvVaFQnp2+pHOZXvS2rUYi3W?=
 =?us-ascii?Q?CfDlbrAbfJpdj3SJnJPlsaijIOL2y1xA0M4mZfwH5ZR9BcNBURo/9me2yflz?=
 =?us-ascii?Q?XzS1hiJ9dogrUp4GAvA5pvf5GlhT0ngQeIZ5kQFVlFs6kR/T52pREi7vRl4x?=
 =?us-ascii?Q?X9fS93XHZNprPCllCl/ioHHB64llnkYhJj4f1NSqgNf6GP8bhlM1fY1UwukF?=
 =?us-ascii?Q?S/iA3aSVtmI8r05vCm2gKOhjWNyD4KTY10OHdJPx9CFNr37Zl0Nq3Bi/jRVr?=
 =?us-ascii?Q?tw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bda334e7-1578-44b1-693d-08de203abfe7
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 09:23:03.4925
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1txtGN5wLsGyvOBXQ3I5QWmNTIsE+qVsDJi8iguQY5LzSDnl/2/jwkNKZWBRuey9vuv7etO77YaqWaoij1/WDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_012312_566573_713C664C 
X-CRM114-Status: GOOD (  13.00  )
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

Eliminate the need to calculate a lane_offset manually, and generate
some macros which access the protocol converter corresponding to the
correct lane in the PCC* registers.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v4: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 55 ++++++++++++++----------
 1 file changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 3b19b7d22b6a..bf06ce42e291 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,17 +12,32 @@
 #define LYNX_28G_NUM_LANE			8
 #define LYNX_28G_NUM_PLL			2
 
+#define LNa_PCC_OFFSET(lane)			(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
+
 /* General registers per SerDes block */
 #define PCC8					0x10a0
-#define PCC8_SGMII				0x1
-#define PCC8_SGMII_DIS				0x0
+#define PCC8_SGMIInCFG(lane, x)			(((x) & GENMASK(2, 0)) << LNa_PCC_OFFSET(lane))
+#define PCC8_SGMIInCFG_EN(lane)			PCC8_SGMIInCFG(lane, 1)
+#define PCC8_SGMIInCFG_MSK(lane)		PCC8_SGMIInCFG(lane, GENMASK(2, 0))
+#define PCC8_SGMIIn_KX(lane, x)			((((x) << 3) & BIT(3)) << LNa_PCC_OFFSET(lane))
+#define PCC8_SGMIIn_KX_MSK(lane)		PCC8_SGMIIn_KX(lane, 1)
+#define PCC8_MSK(lane)				PCC8_SGMIInCFG_MSK(lane) | \
+						PCC8_SGMIIn_KX_MSK(lane)
 
 #define PCCC					0x10b0
-#define PCCC_10GBASER				0x9
-#define PCCC_USXGMII				0x1
-#define PCCC_SXGMII_DIS				0x0
-
-#define LNa_PCC_OFFSET(lane)			(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
+#define PCCC_SXGMIInCFG(lane, x)		(((x) & GENMASK(2, 0)) << LNa_PCC_OFFSET(lane))
+#define PCCC_SXGMIInCFG_EN(lane)		PCCC_SXGMIInCFG(lane, 1)
+#define PCCC_SXGMIInCFG_MSK(lane)		PCCC_SXGMIInCFG(lane, GENMASK(2, 0))
+#define PCCC_SXGMIInCFG_XFI(lane, x)		((((x) << 3) & BIT(3)) << LNa_PCC_OFFSET(lane))
+#define PCCC_SXGMIInCFG_XFI_MSK(lane)		PCCC_SXGMIInCFG_XFI(lane, 1)
+#define PCCC_MSK(lane)				PCCC_SXGMIInCFG_MSK(lane) | \
+						PCCC_SXGMIInCFG_XFI_MSK(lane)
+
+#define PCCD					0x10b4
+#define PCCD_E25GnCFG(lane, x)			(((x) & GENMASK(2, 0)) << LNa_PCCD_OFFSET(lane))
+#define PCCD_E25GnCFG_EN(lane)			PCCD_E25GnCFG(lane, 1)
+#define PCCD_E25GnCFG_MSK(lane)			PCCD_E25GnCFG(lane, GENMASK(2, 0))
+#define PCCD_MSK(lane)				PCCD_E25GnCFG_MSK(lane)
 
 /* Per PLL registers */
 #define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
@@ -314,20 +329,21 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
 {
 	struct lynx_28g_priv *priv = lane->priv;
-	u32 lane_offset = LNa_PCC_OFFSET(lane);
 
 	/* Cleanup the protocol configuration registers of the current protocol */
 	switch (lane->interface) {
 	case PHY_INTERFACE_MODE_10GBASER:
-		lynx_28g_rmw(priv, PCCC,
-			     PCCC_SXGMII_DIS << lane_offset,
-			     GENMASK(3, 0) << lane_offset);
+		/* Cleanup the protocol configuration registers */
+		lynx_28g_rmw(priv, PCCC, 0, PCCC_MSK(lane));
 		break;
 	case PHY_INTERFACE_MODE_SGMII:
 	case PHY_INTERFACE_MODE_1000BASEX:
-		lynx_28g_rmw(priv, PCC8,
-			     PCC8_SGMII_DIS << lane_offset,
-			     GENMASK(3, 0) << lane_offset);
+		/* Cleanup the protocol configuration registers */
+		lynx_28g_rmw(priv, PCC8, 0, PCC8_MSK(lane));
+
+		/* Disable the SGMII PCS */
+		lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
+
 		break;
 	default:
 		break;
@@ -336,16 +352,13 @@ static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
 
 static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 {
-	u32 lane_offset = LNa_PCC_OFFSET(lane);
 	struct lynx_28g_priv *priv = lane->priv;
 	struct lynx_28g_pll *pll;
 
 	lynx_28g_cleanup_lane(lane);
 
 	/* Setup the lane to run in SGMII */
-	lynx_28g_rmw(priv, PCC8,
-		     PCC8_SGMII << lane_offset,
-		     GENMASK(3, 0) << lane_offset);
+	lynx_28g_rmw(priv, PCC8, PCC8_SGMIInCFG_EN(lane), PCC8_MSK(lane));
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
@@ -390,15 +403,13 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 {
 	struct lynx_28g_priv *priv = lane->priv;
-	u32 lane_offset = LNa_PCC_OFFSET(lane);
 	struct lynx_28g_pll *pll;
 
 	lynx_28g_cleanup_lane(lane);
 
 	/* Enable the SXGMII lane */
-	lynx_28g_rmw(priv, PCCC,
-		     PCCC_10GBASER << lane_offset,
-		     GENMASK(3, 0) << lane_offset);
+	lynx_28g_rmw(priv, PCCC, PCCC_SXGMIInCFG_EN(lane) |
+		     PCCC_SXGMIInCFG_XFI(lane, 1), PCCC_MSK(lane));
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
