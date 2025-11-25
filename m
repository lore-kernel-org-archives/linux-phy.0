Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1913AD0E6C4
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdJ5Uk0ZZaqLy3txnS/3iXON4uv3BkvUTcfQKi0wnPc=; b=FlR/e2JoHfLi6u
	5yy0bwwc/b5Ck9erwXGa/luY42eKI2mZntn9w7arSdebBi0LnkLOZ05RrLUTGHLdXqWALWAgrCDu4
	cyfwGOguV+IKHelvscgXcc000lXf7k3uCssB3+RYJEtf+4SDLiE4RkRMWWAqrDCS4V61P3veFA2Jw
	wMb5drsVqPlEKiWVoLgIZAjMCs26+bNuaEIDU1HEsCQsb0gh6Uow/xHe9ySRlfjUZgwY/GRST/+k3
	3j+KvTECEzMk/FNLUTztrzkXv5PS4ipo87XETm0dC4MrOkPWHUt8mel2xCgyuFLYAyJIJ6qITitIA
	retuYW4jRrZUGmtMjnQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYX-0000000DFHj-3Zhg;
	Tue, 25 Nov 2025 11:50:01 +0000
Received: from mail-francecentralazon11013068.outbound.protection.outlook.com ([40.107.162.68] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYT-0000000DF7R-2fZW
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FlvEyR6WEHCZ0EPISkghWr/KDTEJKVl61uMUMOSUNdaDRNSptLVqohWnJEty+W/jhyb2IeEQ5AmkkxjrWqLwUizMijzBCGZ/w6oAws6ab+uszpDy0irhWW/Nz2vjyNFbZaZzWDiRLlGs+f1p8TTZIwpooijk0IfgwYPMAwItk9Ebp2LER0M2fxhIIqsCvVpaTe/nVQ0i/npDix2Hm4utTAd3R0tcLU5NI0x2VatCK+g7p0l9Sato7j4yewY1O7xB2oePHDwRsMlp6BAuFHHGMeH5QEKjxgm3BJhYT9yAM/+Y4SIWs6JFZqYCOCOCtDSa1/+SuIGl4SJmzUBtsBCiSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YXIT6VRY7hzRvvV1KZODDJAjNEk7nw7WGBqxsZR+WOw=;
 b=nTTgmnnei26RplamPTQaEd3naGURGCc/ofPqPOPOyriqx2SlnmQD3sNdvZAVXXspdgbTzgo8Iy90qdqM6bhnUXbY63m5Q9E7ygNvnqYGhW6LxAzQkuPGyyLFo2QgX1W01rsS9liWTcJXrzs3UBunzPspdGg9hH5jjf+AHwvKH0vUyJhf/IwxznyDyBPpOAV4LPV4MUal+OYHxIhfFat62MClbtvl1DwQgxi57eMHfCiNNL/N8OIHy1jyV0t9QlrmZG52NIYeaoALREByMYoB3VsuSF2PH20L9Ga8rHIAe/rhCWa6iFAdbdrpWLZyJLUYUU3cE2ZCaFh1iJcu39/0cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXIT6VRY7hzRvvV1KZODDJAjNEk7nw7WGBqxsZR+WOw=;
 b=FWu3KhydRtwpo6fqnMXpiEoqERLjdC+9Yq6r+lyKYE7+M39J7XOA9cITQtgVGNrS7lJddxkj/gEHZzs4MiL5YLJGr0+rh/HYzbFneNKvWYcFRa2kQXW9OLeE1aq7RA+W72VqTS1MLp1I40lh5CR7bWqDoPTn3iAWQxlP/aZ///E4umdkeV/A3WFXTrCb6//EBzYP7B2E9gaClRXORPRKkRYFnoXJ4E0jA8XnceHSVUO6eDWG1tUpRsN711lBhZ1Fb8rcoDIVD0pUDXeIvd5eAPQoXnOQdaNhloQ8MX2w3CzofChl+2Gsv9CFAmKvKJt2X9AOMSHDtteWtFtteYhzjA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9201.eurprd04.prod.outlook.com (2603:10a6:102:232::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:50 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:50 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 13/15] phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
Date: Tue, 25 Nov 2025 13:48:45 +0200
Message-Id: <20251125114847.804961-14-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: e9b4f19f-a6f8-41d7-d203-08de2c18bd5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|52116014|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UQsAOIENiyCJHIIOc8KvXdTwhUaSbtX1/eXCBIStyMC7Q6WQDJaagZeXT9s0?=
 =?us-ascii?Q?YhLi4nnQdyfvbjfJgZHOpebv+uf2WANteqKxvOusMluulb05GYzYPXYBjRpT?=
 =?us-ascii?Q?lE0mxxkOEym4NC+YfFYo/8izD917GmPtpsoQlM8Z/hEK714z3ArDvsteFnYt?=
 =?us-ascii?Q?hzGaR4wmnb/qm4m1vTuSQY/NX6DG837RodaO8bmHer0f92GS6ykuUFrX9G8U?=
 =?us-ascii?Q?hT1BBOnJKTyxr70sOJtpni5vENZEWKGPwMB5BfXwmgkHnt9TTlPpHg8ZnPM5?=
 =?us-ascii?Q?bFXUMfe3Xtj5a96S9I948M+WdpOGKi+Un2Z9oQF1xMsncV08LsRYBQbIeM05?=
 =?us-ascii?Q?vbQerntLNLUot8tsEhyIINJ/4nnNrHpXHxF5nJyfNICYprMwzdhGfD3lHcLI?=
 =?us-ascii?Q?bQQ1G5lOW22jNnqhooW1uAKbO0iLoPnIlgP21a15tB7lC+dXP5XPH5xuBdt5?=
 =?us-ascii?Q?ug+kunlGhTmbFPwLwK3yUhuulfY7W8wHnG/R0LT1NU9trHrhcI5BmReYTmDU?=
 =?us-ascii?Q?Dl7SonZONDdNYV64yB8g5Lh1Agw9HUlqHV8L+JNiDYw3xp1JMA7m9FGt9F0j?=
 =?us-ascii?Q?8P0EW51cm+4/auskJZQqz/5rKTSUHG0sx7k51WcCA06ylufGf+z4IwKCZxs8?=
 =?us-ascii?Q?ucAxXPbqP0U+twnbVjJiwORVp0BIrh+U5Cod/cVzEFTf5RQcKjDd4LGDBKBS?=
 =?us-ascii?Q?yPgucBRb/5Rk2gAgtFpaVsEJrxRCtcJUPuIGm4ir3caI0IlTHm/JswNExcus?=
 =?us-ascii?Q?fHSJAb0mLuG160oDT+RcffFwbbmkgchSpJZ9Q+8PrIPBvO0ho0f3KD7xkgcF?=
 =?us-ascii?Q?7YJ5MilDxb7cP7BFxNvy36b6CkGMhKpnvVAdNwLu2e1vgjJbHzjIkqsynZL/?=
 =?us-ascii?Q?Bon3uWR51pOKsirtatRV4ORTgxekLlIPARPZkhZklivZfKAHIvsxOr77v4M7?=
 =?us-ascii?Q?gLMDcCOH69huhmX2nEYEIV2YjHQnhRDn3FaPMd9PMjK4vTsAQPXfRk5KxrcG?=
 =?us-ascii?Q?1FbBHYKfnVPQpVesLDmFaOgXgFNa/M7DKFIvgIeMLg5C93oEkL7cpaLwK+LD?=
 =?us-ascii?Q?kNuRSb69s3hY+pFyNtjAT5IasLiVgXj9SHkaSnC/MDIilCarFHRYlMG7U3mb?=
 =?us-ascii?Q?9bbjtSV2qME0pzfupGcvjHcBBYJqRU/Z10cKTZ2Ra1dzr3If9+VC3Tr4o57C?=
 =?us-ascii?Q?8zJS3c2NQxWnvnV9BBwpvuxtv3y/hC9CyqHgkuVUcqzMqnAk/1aIQZzOWW6V?=
 =?us-ascii?Q?d6cUfu0SRFGfGfRLDwLrns70rrATAdeRW+a7iUhdCeNn/U8Hgi48SqTfSdHR?=
 =?us-ascii?Q?y8B0wgLr2gx/kn7w9a/8IgamhhOFHthx98F5yFzZuf5/7NkaYzsn27SUdnTC?=
 =?us-ascii?Q?vo+ry/HY8wog138MMqffzwb7rqUj1vqiSK/I8u2FiYxJKzCXM1pjAdVqP2IN?=
 =?us-ascii?Q?sc0e0M6M32IJEePdf++3f2F6womqWK7e?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(52116014)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I7H8zPQCtqKWcRUw3cQ6FewLI+vMmY44ThX7xD764eRwczmo3V1+84FwMxn6?=
 =?us-ascii?Q?ZLoZm8g1pnT2rt5UUhVh3kFk2LBhlwmC9NM/AATuXsWWmQ+27YHEUXabmv1T?=
 =?us-ascii?Q?lNAl3pry8Zj5PrHo+wWEetnLCgclmh12S2GeeYpoCuz7z2lCMavoeGVw5R40?=
 =?us-ascii?Q?rrommnFLB81Z2kPSo8qjcXJiD/Tn0H9dSL7JXFDejm43drKYKNPJb1ERNIWh?=
 =?us-ascii?Q?1TCHsdmNvnWJZF7B76O34ktZlTaItkVyU+ytPfOlY8j3eP3igwSzh86Q1Oty?=
 =?us-ascii?Q?byFYkDV4U+MgUZaJdRrVrBsm5LAiWn9aNtjlKZ84X1CDkoFNqwO/joYTDN2B?=
 =?us-ascii?Q?0xC1et5467Zh6cDwswVoaCDZ9XmUaH2jDjoTdp8s+fXBM5AhzpAZakBNoM4x?=
 =?us-ascii?Q?214T+ID9tydCh7b2lni826hfhsbcsQKW40CUD3wIMVFvY0kwRGfxu2WibIPT?=
 =?us-ascii?Q?veFrX0ccMaWRstg0cTHV5K//oNvRe0cTg1Jt6cYo1u2Wd/+3v5MP+OCB3k0F?=
 =?us-ascii?Q?dU5H45JqhBWRC9WgNATt0wG2tWWMFPzcMAHpkK0Y8t+gugnrrCHLcBCwJHSD?=
 =?us-ascii?Q?oEqB1jQC+ZTrt6LWuUUnmSKfJlnnac8B5pWacNn355gswbI7fMmqEdaGS1m3?=
 =?us-ascii?Q?SA3QLZvFhtdcocPomVkUNWnvITakoEBaNlU3oiZTEEPlxjbNjRHEEOetZ8fK?=
 =?us-ascii?Q?4nu2fQ3ak6C25emH9ZWuj8aynhuFOHogH9hY6ZZi/HMnDT0FOTL8FyVJfS75?=
 =?us-ascii?Q?6j6uUCG4RDHdM5Ez3JStOr0H92GtHCgdfhBn7PrIsdViMPFKRPNZ8rLvqP7R?=
 =?us-ascii?Q?6jREa9dsoora6CPXBU5zx2hjJRn0Mfd26tr+i/We+rnLLQcn1FnR4jW4DmI8?=
 =?us-ascii?Q?Pk8PDZGLWCfUzLDdxjfh7SN5XgPM2REwkFiB0hnBuRUC1r23wH1PCT66ieBx?=
 =?us-ascii?Q?LqLoVm4s2Be3rMRvz/wVhS4uhwN4XKF42hdAi55XvD1EMGxXVEmE55/jgnTP?=
 =?us-ascii?Q?UJQx86XVbDDtEnUQLY4RsysEiALfp2I79szstWDXu/jWq1BKrKo2OR5Vx25F?=
 =?us-ascii?Q?mpla3ICOSRX+nMePOkcomcYBpjoNQaHVSy+Hf6XawxihqjEIKzobS6BISItf?=
 =?us-ascii?Q?MsOuIv3tL2Y6KpRRFxaqJGhtnL0uHd5cqxweLz3VVUTuWB6iuXvgTjVI8lDM?=
 =?us-ascii?Q?MeUzpYHuwIUoztK5EO+Jkd1hXOAbV2RT+XZHUdCQxBuEyRS9exGwLV8r2Hlq?=
 =?us-ascii?Q?9VA31O+g8lEL3Cv1Exxm3wmmzWNvGX9y3SFEgjKr7VgN11uqareYRPrhjLMx?=
 =?us-ascii?Q?vE+nHfquKaS67ovhL2w845mhqkABCdUN2owKGr30tlBQWjeChd3YHByqLEQ3?=
 =?us-ascii?Q?Fhd8kPuGh5bATuyy1KA0xZ/lWKtFOgc3uEGRKwPZhBYQOIvghhHzgwolHYIj?=
 =?us-ascii?Q?DMeOio5BIHPr0xTqbgDcBCBC7R+rXvmrK1yNzkTlFnMlEOuTuTq9eyU6SxzE?=
 =?us-ascii?Q?xIARAr01Qs0NaLR2jRz5qANin+JI+O0XYxpOkmrIRHZRQIdfeCWjQP5f8Bkh?=
 =?us-ascii?Q?WlmRt5dKpVDBaSriZCmfm3PYoqDzBxwjLY6Y5Xc8+TrnQr9k7Rfh9HGgWIFs?=
 =?us-ascii?Q?E6J6wrTp7TeINHDPBssMRn0=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b4f19f-a6f8-41d7-d203-08de2c18bd5b
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:50.2568
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AnXtnQtIFg+3arMflgQ5ZPOhlW+werDDiQDChJ6qW/nDGz3aXfrTfXY5CTfTSdGp4wp7Ifm3QthLOtUWkt6c1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034957_683139_6484EFD2 
X-CRM114-Status: GOOD (  15.03  )
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

From: Ioana Ciornei <ioana.ciornei@nxp.com>

While adding support for 25GbE, it was noticed that the RCCR0 and TTLCR0
registers have different values for this protocol than the 10GbE and
1GbE modes.

Expand the lynx_28g_proto_conf[] array with the expected values for the
currently supported protocols. These were dumped from a live system, and
are the out-of-reset values. It will ensure that the lane is configured
with these values when transitioning from 25GbE back into one of these
modes.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 01589a2bfe74..be804f9b7d5e 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -166,6 +166,18 @@
 #define LNaRECR4_EQ_BIN_DATA			GENMASK(8, 0) /* bit 9 is reserved */
 #define LNaRECR4_EQ_BIN_DATA_SGN		BIT(8)
 
+#define LNaRCCR0(lane)				(0x800 + (lane) * 0x100 + 0x68)
+#define LNaRCCR0_CAL_EN				BIT(31)
+#define LNaRCCR0_MEAS_EN			BIT(30)
+#define LNaRCCR0_CAL_BIN_SEL			BIT(28)
+#define LNaRCCR0_CAL_DC3_DIS			BIT(27)
+#define LNaRCCR0_CAL_DC2_DIS			BIT(26)
+#define LNaRCCR0_CAL_DC1_DIS			BIT(25)
+#define LNaRCCR0_CAL_DC0_DIS			BIT(24)
+#define LNaRCCR0_CAL_AC3_OV_EN			BIT(15)
+#define LNaRCCR0_CAL_AC3_OV			GENMASK(11, 8)
+#define LNaRCCR0_CAL_AC2_OV_EN			BIT(7)
+
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 #define LNaRSCCR0_SMP_OFF_EN			BIT(31)
 #define LNaRSCCR0_SMP_OFF_OV_EN			BIT(30)
@@ -180,6 +192,15 @@
 #define LNaRSCCR0_SMP_AUTOZ_EG1R		GENMASK(5, 4)
 #define LNaRSCCR0_SMP_AUTOZ_EG1F		GENMASK(1, 0)
 
+#define LNaTTLCR0(lane)				(0x800 + (lane) * 0x100 + 0x80)
+#define LNaTTLCR0_TTL_FLT_SEL			GENMASK(29, 24)
+#define LNaTTLCR0_TTL_SLO_PM_BYP		BIT(22)
+#define LNaTTLCR0_STALL_DET_DIS			BIT(21)
+#define LNaTTLCR0_INACT_MON_DIS			BIT(20)
+#define LNaTTLCR0_CDR_OV			GENMASK(18, 16)
+#define LNaTTLCR0_DATA_IN_SSC			BIT(15)
+#define LNaTTLCR0_CDR_MIN_SMP_ON		GENMASK(1, 0)
+
 #define LNaTCSR0(lane)				(0x800 + (lane) * 0x100 + 0xa0)
 #define LNaTCSR0_SD_STAT_OBS_EN			BIT(31)
 #define LNaTCSR0_SD_LPBK_SEL			GENMASK(29, 28)
@@ -286,6 +307,10 @@ struct lynx_28g_proto_conf {
 	/* LNaRSCCR0 */
 	int smp_autoz_d1r;
 	int smp_autoz_eg1r;
+	/* LNaRCCR0 */
+	int rccr0;
+	/* LNaTTLCR0 */
+	int ttlcr0;
 };
 
 static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
@@ -316,6 +341,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 0,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 	[LANE_MODE_USXGMII] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
@@ -344,6 +372,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 2,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 	[LANE_MODE_10GBASER] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
@@ -372,6 +403,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 2,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 };
 
@@ -829,6 +863,9 @@ static void lynx_28g_lane_change_proto_conf(struct lynx_28g_lane *lane,
 			  FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_EG1R, conf->smp_autoz_eg1r),
 			  LNaRSCCR0_SMP_AUTOZ_D1R |
 			  LNaRSCCR0_SMP_AUTOZ_EG1R);
+
+	lynx_28g_lane_write(lane, LNaRCCR0, conf->rccr0);
+	lynx_28g_lane_write(lane, LNaTTLCR0, conf->ttlcr0);
 }
 
 static int lynx_28g_lane_disable_pcvt(struct lynx_28g_lane *lane,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
