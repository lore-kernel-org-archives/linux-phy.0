Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 071E2C3DA70
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jul 2024 09:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cr9bYDul47xhOg4YEO10uDREXVfWX9IMSWSF1A+GYg=; b=JZ8sW2VEZeG2Q0
	fEkjBE6fblcNLbs/758aQIxUZ4zbDxj3LCPOLVZdPIIc8PhkNSJaH2mrym60DhK08FseJg8nTtvvj
	zfLkaHZxNz0OvibyJ6917uKhEaGsBnoNLzGHbnJ9miencx7H4jOqKjbe5PG1jczbHGUwPEbcNRuoZ
	cengjNcwg5EewxiyNy86VrFsDWE+dnpa2oegWavrOyER/yhiS25Z590fAJZs1peBZYDKz8ktS6cbr
	P+FbATWbMO08EKit4GRFmSh4iN6pAlUhDod5vJuM6L55dgGcb3ibyzeGxBQjXZ2bewbnAF4vNuefH
	sE62TWakWKtSGJXQ9/dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYH0-0000000EvP9-2vjm;
	Wed, 24 Jul 2024 09:27:02 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYCw-0000000Etmb-3btq;
	Wed, 24 Jul 2024 09:22:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZrBMdgfSUVmBtKHG+JUB4UQ6EXdKnQHCgOSXBG77fylujkO4XmtweKmMVr4Vld8jo9WOE7IRx02kOqIh9ordlzDP0IENk/kEx7+eMHcw+eezZhQSmcMyyLO5aeK+CxHihALIlcUjbPN9M0rrEQRyk7YlO8MwRi1GrJthe9H75GqMj8wP6cWKBdZ/c1e26O+IYQQo+LSr3w+wRdL2Tv0sZxQZya4AyDOyk3k53ttBal39oi3ZrLUUKV9Huqa6riiEtnyTggWDFQkQlZJxrcYuKu5BCQOJ9dtc7dIIidw6bmzARLDFIlMN9B3KAp4HjXu7ydDd26JILB9ywrswq7BbEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/K+t5RR+X6GdzNPUTk3l2JUKm4Dj2+/7R9Mu2d3sI0=;
 b=tlCkLoK/X7XgulsfifSy5kEDnyXJWL0iuXuZOGt+nobx7sOgqk6qq+ZJZubha4JDbP1Vyw5X8Njd4RocUADEUqcBID6jYv+lI4ZJzAn3w78w3zbE0sc3rA3VWllqSeKIOIb0icbUKJ2efZlflu2abE6PBpXKkzV3++pDTpOI4FH6NWfrxpQLyOIS+QwtXjdaVBgsAknuMDCLGzHmgSAkusgzQfBdkX/YDbFLFZhJBY6iG8xqzs8NHF2u5CxAIanjBlFDHMo9Xp0c6uB1SXaStBmKmZFfbVZ+n/2LNcaBP8Gu0iyPLdG8dCrZmefOv1lHib5D/hkjrqhgY6D0jZSZuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K/K+t5RR+X6GdzNPUTk3l2JUKm4Dj2+/7R9Mu2d3sI0=;
 b=Mi9hybj2SmBvyBSpU1Fpr3Uccz4cV+x9NMwU4OjPQCSYkcZ04qcsu7XamWaJE/d89bSp4xJKte+yue3Qu3JbJR9ie7xc4kuL3CaKnhF5uRLLYKA/ECP7wTJR9ILM+FdD+1dxelp34hxkcynwL7kMh3PPbjb3DNlayuLIuoLkMnQHKrtNvV8TEejC8HVn36hcdId1l6dda+cu1CdxhiqbF6pmKKKDO7QUbdn/FCjQzL6gQ1D9M4YgdVAuhMkD0YF7b/UpYdcP0qVlOonNGGOKOmmVvR4r22bk1oGYeA1i7Ki+t5ue7xNI2biHgmOGRp756l0BVdq6tKgtU1nKdXQocg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8040.eurprd04.prod.outlook.com (2603:10a6:20b:2a9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 09:22:48 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 09:22:48 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	tglx@linutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	aisheng.dong@nxp.com,
	agx@sigxcpu.org,
	francesco@dolcini.it,
	frank.li@nxp.com
Subject: [DO NOT MERGE PATCH v3 15/19] dt-bindings: firmware: imx: Add SCU controlled display pixel link nodes
Date: Wed, 24 Jul 2024 17:29:46 +0800
Message-Id: <20240724092950.752536-16-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20240724092950.752536-1-victor.liu@nxp.com>
References: <20240724092950.752536-1-victor.liu@nxp.com>
X-ClientProxiedBy: SG2PR01CA0193.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::18) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8040:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c28d687-b4c3-4a7d-4d0e-08dcabc22f03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xjWf8UcKR7pIKeGLZeJI95eoA911+XYhfKL60M27exMYMzb5ILxSVt1bljG/?=
 =?us-ascii?Q?W/47aq4B85eFw2/NeaUVoBrX/ILkZ7vqBDmUAJ6JFDUfcTHYFggr5zRwSG+W?=
 =?us-ascii?Q?3mu4tT0bba2BIXpso26kJiUSf6a1xxxpDShN/0PVE/ToZtWKhXvDFGznOfyk?=
 =?us-ascii?Q?Lv7sy8I9yGvkyudl8L4YkEgAxp+LXK/lUWV81lio8+m8/X0R4Xef+24qzc3S?=
 =?us-ascii?Q?CXUSd854y0pEColIFfTq/C3faOtwCNXbocXKNtW/sJ9pRbAPJlHao/ab5MoI?=
 =?us-ascii?Q?QRwBJ/DdRwnXO0xiPxaNedl8mriXk43AWQZQajYs+gMxNqLJaNLwEC497AYu?=
 =?us-ascii?Q?6T3WXSiZuymZAq48vrRMIWaoRI326EXst0M96T3hIPsb+IALs/u2pqzGr1eA?=
 =?us-ascii?Q?Y0A/WXL0gD3b7MlCrgkzpPp5GDSFRP2dH4L/E0EHY2UzlhoL18leVgHJpv0P?=
 =?us-ascii?Q?KRoILqfc5PWzfg9w7MEQJ5VuPxrFdkHui/h8TvsWyDjKy3mpT8/RvkizjWh3?=
 =?us-ascii?Q?jdEqo7kjrMzUBl0iHyZ5bM+sngbGqYYgW7m0otDZ879XeOV3wZxc1YVfV088?=
 =?us-ascii?Q?eMbvv+PZLbi6s2i+Pj1al7Js31AEG+A5qXQQwCLolH+R+cDgvCbba0FiCYl9?=
 =?us-ascii?Q?N2T8A72Opey/rJMXknciFN/pbVvYjSVV+Mx4At/8lbvxFRGyFXolSSSYbVUN?=
 =?us-ascii?Q?scdtn4cAQVz/YoTxtI6JjFZVvheeJIWoIA0nWRxufFJ8R7o6g8/ZYzXKJR2n?=
 =?us-ascii?Q?38m6vgXG7gqlgOOpbOzdpN2Rvb8q2mJL+8kgTWabyX/7BpnA9yoXX0VEtEQu?=
 =?us-ascii?Q?0btqjXztjwM3v1HRF6jJkxgvdafk2v7PW/DbMRWget3Y+mMOXY4womda7lCT?=
 =?us-ascii?Q?uHPo7zjLCY/9ybfO5uj5Tg5HF+o6GsviHL9kWpjn0lR4qnf1CohelXLtJEFQ?=
 =?us-ascii?Q?ZS4Pzv5rx5DhkP/7HwZr8u5+Mer7FAvhBQO0SiDfe04fqhMMa5RykkeSA9TD?=
 =?us-ascii?Q?PzbW9aHS8l2OL5IPmc5nTKT2jWc7b7Jwg/4bGXm/aoWOTVyXEDEw4c6elevV?=
 =?us-ascii?Q?peuyz9efQYEcO7mwFAXznj5OlhsWMgjNLYkwwUDoR2kIQgGD/ha7yFH8SUq5?=
 =?us-ascii?Q?ylqpUKuGQ69xxyaTNkwVlUvthQHq06GbDDm2sdi1pSAL1LDz1TWoT4KhBi5J?=
 =?us-ascii?Q?zLQaEPVaObLhLSqcq0GynE+hStY+FzROzlrjmujHX8U1Kt/uh36VJASlZDOr?=
 =?us-ascii?Q?n95Eg0zFtgZKsaRgBGx39jV+DXc8QTkpgxKeL3+wH2vM36DU0IB1QMUxpNPX?=
 =?us-ascii?Q?hrIFJ0B0Dl0p0eugsBwOyHqME330csSevYgRhSCqvq9yNgklT3O+EUMnglv9?=
 =?us-ascii?Q?mtq+OarQItqRTBIZKkey0MHqI+Wz6q8Rd+0qG3TrXAPN2Kl9Bw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?833ie3kc4P71aJTKJt/4MnIoHGFCKtkiGqfWOcNfJEF5k1e0s+0RJiEA+x//?=
 =?us-ascii?Q?pNLy/1x5F29CPd1ea1ka3JSs291WzydHNC0gn3ZC8cKv8HaSfFCojrwr7Xyf?=
 =?us-ascii?Q?CQv/YvHG9nVeEA2G4SnRATicGl4vAojs+O9fvZCUDHegXJ93CAeZ2DNCzuem?=
 =?us-ascii?Q?eUOPJom1icAc5hlRWL0pN1bkkTNJdu4hpag5Pyicv8FM6H1PLhEHp0MnPPte?=
 =?us-ascii?Q?NrdWviA5h5X7DH34Tdrx7gBmLKZnBAeldjJLIOEoKDm0SKiCpOPdBjt3gq5b?=
 =?us-ascii?Q?lP96oPQ4Jzl4c6wgA6boJYnDSmIteGtQ74Lh4Jrr0lnFVNVk6LB+TLhwScdr?=
 =?us-ascii?Q?16qe/9rm6AiYvrCmi9xzjCDWrLMtJf0bO67YZcpwP4Ss4NndO7shGLAJ0dtm?=
 =?us-ascii?Q?Y0U+J/IqmYe28D1cKXQe6lkTOIOSMCZe5/9DS1He8rgLtXsBk9/0a/B1lAJ+?=
 =?us-ascii?Q?0WmXhMjcB44fzAMoMR64egn4TLgZMzG/Gs+rFiliXdM26cAKICg2PuI9VyHH?=
 =?us-ascii?Q?7qGMucDvyKhMH4X2pPgDjmYvPyWU5DEHzeTggilQW4zxkG1holjXRnyTGiKV?=
 =?us-ascii?Q?IUf1dma+EPX69BjnAp5RkOKOFOUfbMGYK61PkMYeqIhJWPQucUSErCksBSf+?=
 =?us-ascii?Q?GFiDSVvBH4lWbbdHw56KlLHDx+VHm60WYuH/hNPEUxKH0pr6f2cJ2kutYIyV?=
 =?us-ascii?Q?o4OFn+lBVAXxOPTjNRytyQTu9mOTH9EHY4UVVhKdNc8XNtN6YSp7aJLlDAjs?=
 =?us-ascii?Q?4MLgHOKAfsQToaQRKa0bqrnX+nn4Yc+fgl/Xf7xodpIdxjAegEEBotuxxP6g?=
 =?us-ascii?Q?hsOlpB8sPiNjjflu/uWyeKfY/g5H6AZ5lyesWcKy3fRDf3GBhc2a78WuJvQJ?=
 =?us-ascii?Q?4VPsTOEAYd6+ZEfXcbgT3mPVVQHj8VLgWooSdVKuWkcBzSICNjd2jIt3VL7p?=
 =?us-ascii?Q?e2lfJAfb2+vIkCQQbJ+XoTLiVwJtlRxAlq0jNYLtQfRVndWlXU5HYzRRdY+8?=
 =?us-ascii?Q?fgxewHupA/rI4KbSZ9u+1Yj+fkDLuvael2Jxv+mzpsmP6MDkBGwHSyNHDQub?=
 =?us-ascii?Q?aKRQr4wq6AhjNOQbZHL/GSUf3subpL36x6G+n9Ng9AuzE9eADiP1DdlDxjEY?=
 =?us-ascii?Q?bqgJzjQJltzNNEvtZaK/GxMN0iMK2/Xj9+x7TeLfEpjOz/8duRTQRM7sgTwG?=
 =?us-ascii?Q?OexXDDX8ZD4aq8PmKw3K7LixPTnCRnqiwcvTwcKWBJaIBl4ZMVtpz2oGmdhM?=
 =?us-ascii?Q?mYvfkcNTXYNG5gS+ou5mWn1ul/PmFrQMmz5vGdc44JKHYs2nXUsyZddrie0+?=
 =?us-ascii?Q?9bDVVLAvwuptR25zSmlI7qoutycuydva2tTiiFfCA4/JYJmmEGLA+IUIwmyx?=
 =?us-ascii?Q?p/f3Jd2VQ4glO5x7h35krqfX8BOfF9uY4oPL6beu8OHbguoknsnQJHwFHNZ7?=
 =?us-ascii?Q?r8vCtrknJMPpaI0DDw8EVy8WlFSXOAxtycQBBVB1vd0STEzrP5ft5E49LQrw?=
 =?us-ascii?Q?ZJTKxkw858YOqG27I2S7flL5ZEMpF49XbdZKbDDhlBvb5RbJ5cTZFdWyEE0O?=
 =?us-ascii?Q?/hrTsR8bm+jiuo0UcE7RHBLIhnR+3fVtBGeH3CUP?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c28d687-b4c3-4a7d-4d0e-08dcabc22f03
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 09:22:48.2117
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: enCmGDDOOQoxMUXhG5H2CV/phSN8Ga1ZfBlpG5a12/YTVHqRzBsz2fLkHNJIDyQ4ntrhsHj6svI5+eea2FVRMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_022251_020904_A8FA751C 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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

Document SCU controlled display pixel link child nodes.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v3:
* No change.

v2:
* New patch as needed by display controller subsystem device tree.

 .../devicetree/bindings/firmware/fsl,scu.yaml | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/fsl,scu.yaml b/Documentation/devicetree/bindings/firmware/fsl,scu.yaml
index 557e524786c2..1a920f013ad2 100644
--- a/Documentation/devicetree/bindings/firmware/fsl,scu.yaml
+++ b/Documentation/devicetree/bindings/firmware/fsl,scu.yaml
@@ -30,6 +30,26 @@ properties:
       Clock controller node that provides the clocks controlled by the SCU
     $ref: /schemas/clock/fsl,scu-clk.yaml
 
+  dc0-pixel-link0:
+    description:
+      Display pixel link0 in display controller subsystem0 controlled by the SCU
+    $ref: /schemas/display/bridge/fsl,imx8qxp-pixel-link.yaml
+
+  dc0-pixel-link1:
+    description:
+      Display pixel link1 in display controller subsystem0 controlled by the SCU
+    $ref: /schemas/display/bridge/fsl,imx8qxp-pixel-link.yaml
+
+  dc1-pixel-link0:
+    description:
+      Display pixel link0 in display controller subsystem1 controlled by the SCU
+    $ref: /schemas/display/bridge/fsl,imx8qxp-pixel-link.yaml
+
+  dc1-pixel-link1:
+    description:
+      Display pixel link1 in display controller subsystem1 controlled by the SCU
+    $ref: /schemas/display/bridge/fsl,imx8qxp-pixel-link.yaml
+
   gpio:
     description:
       Control the GPIO PINs on SCU domain over the firmware APIs
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
