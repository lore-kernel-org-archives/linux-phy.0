Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB5A5CCA470
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 21:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/viAfGGItVOHqBuhzjQnb5KKxI+xQfMxT1THS38nsg=; b=eR5GTS7FrKHYR9
	z1ErOQ5+eG8T4r2LP+dXrdiTcf/BlQSvacuZ000RhpuLE4SBEfYttmw5DgrR/nEb1fQl/7dZs8QbF
	/t6dC9nOuAlDNdoFoKom5wRmTP1UZwDY90LLtgEFHY3gRukiqzASLcmz0/AuMdD3qHX3NoMjIvrM/
	9xANsZwtU7+y/1uVNpOwMPm2Kh69yzFmCra+TfDHQfShVTMuwypjBNG+JYczYtoWMODfoXpwuJ080
	RpGT9kRUyCfPZG0tjZ6yc4vU5SmLcR7cIvMeN8n3oPGke+7R4qCx8F+T4zJiYNPxAX128DwDf6qmT
	bglmYRLnntJjAN0JlSYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44Nj-000000093M1-1tfT;
	Wed, 01 Oct 2025 21:29:03 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44Nh-000000093L5-0xQF
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 21:29:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j4bhd3Yl0CJVcksLpDgRkxUHJ4RU4lbq8XN4S+L9Hqx+N8FZ4yyDZd45IWmgMgCdlDIE0iFfOthR4PXNlW3qFIAu6yClnNbgzkBdoJ9sTipI5liynRVvLF3vAJ22UlI+bt7UQkHH2pg2zdkKPnz7962bQCh8P/UkaES0kzl4gJBvtiJ/ux8wjeERJzV2bF5dqiKeSJTzFz7Nj892dO+jveim3x3KdIwHi37UiLB+OvvLsy7zaGv0eBWmw6b7MSRn6fJ83ETEBDkayIO8Zo6Uvy9461uhz20Rwkqjw26iMOfHqHGjuethtd8fxCCYXqp1gc7v0RGLIczzEYXfwif68Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=13PRtF8GSgfi2dpVxWeJRNHJGcfIaYU8wo/4yptgzTM=;
 b=Apyrw4FFBIXWfGK02K+97oqDdWl0SQJUFVM9dS7bLj20GlRl24gpDfZDQpLYTp6q+a5WLZFl50jSJqBt9S93lDe2qtcRlXKK+RxrtoaI1ojX1InUkbWHcQ4cBQTIAz72gwrqPXcs2sWPqG4dG7obTMFP55xlo0wbbsJ0t1+ay+S1Q7bJA24/srnyCT9HHUZC7OA76xTHKTPdN2Bq8BzhLTtfXpydgoY05ZhgMuyRLvNE8raSQwwylrJVf//jmllhuUz+p55foiPT2AiDV1bluU7neQzXFGzW80r5aaeaw59oQzYY02006UKnQAvy8SygJl6X7oAxNJCHUMXQ9/vnjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=13PRtF8GSgfi2dpVxWeJRNHJGcfIaYU8wo/4yptgzTM=;
 b=hxDmW1Czwk/Pt2Y3F4XbO0WK+JahutbfTqBSqsGL9mO736subA453nerxuiCepDZxrdshQh5PsmqpCJJYCjLTYoyH+8T4XbIKp5UHL/r7kdqGKMvVvHLYA4WykPU++3t8uRHhoN5rUKUnPJUE1NTG0+b/M1KDO2dV9sBVZ38MCA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYWPR01MB8332.jpnprd01.prod.outlook.com (2603:1096:400:161::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 21:28:37 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 21:28:37 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 09/18] clk: renesas: r9a09g047: Add clock and reset entries for USB2
Date: Wed,  1 Oct 2025 23:26:53 +0200
Message-ID: <20251001212709.579080-10-tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0134.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::18) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYWPR01MB8332:EE_
X-MS-Office365-Filtering-Correlation-Id: 7932a28c-1958-43e7-c718-08de01317b43
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bRV7Rz4vdz0xms1kfP5uqLDfnk2bktaa5RKVWJhVKE1A+xHWyNiieXFjpn+F?=
 =?us-ascii?Q?SIS/VB+400IMSs58dNuqm8GSOxnSqgTI3v6Mzgw3h0HnoSkv3XPQPXcznoZC?=
 =?us-ascii?Q?STdp+bEPi1zsLDgkIlUVr51Buv9X8n43cCpod3evwInfgREfc2Q6U3xfLLyJ?=
 =?us-ascii?Q?u5oH5NLXKtKJKUF9+Fyo2cHCcEpQ12wKGlB/Y4ZdszMVw6foyFWMCnPdLcAR?=
 =?us-ascii?Q?hCjULuiDfytBCB6Yc2q+64twsimQEc550wEjR32MTtsA9FrE0eObjzSq9oGb?=
 =?us-ascii?Q?L3sm9acyu8LBjXmxsZXA5ILhtNGw6hnsxdO6Or/0SDE1o8ChUsRryEaamPLq?=
 =?us-ascii?Q?03Aw7k6Jz7lT6HaJ5gyuyzDyXiR8+SIk66F1wQQl1Y/ScwGdvjIyGisYTL2O?=
 =?us-ascii?Q?IdbYLFGPSSpkirDlJnsMLUtvX1RYTBE3VHMne2YZTbQRzeJtVBGOvNrwMYn3?=
 =?us-ascii?Q?XalvlmkqckklKN2z22U8tYmJkczbxq4DbpCWkVvFpCQsTQBPwjdpVfmMoLyW?=
 =?us-ascii?Q?O2n9Emu5rQbGNbeopTfvSciKm/rt5Jh7Wp0i4uYxNXEkMtBrf1rqI9c5blh3?=
 =?us-ascii?Q?HC8FbsMZyBrwMV5p3Ttucm2iF6oHnFOrvRL6z0JWSScDvDDjynzJyT7h60Mm?=
 =?us-ascii?Q?nDnVdIEf5gS75G1FonnVar9ID/7jEVa4+RLklyqu2pE9K2rwCHzKKWkLTzYQ?=
 =?us-ascii?Q?AWbNTQ2EujMMqXrgMZ6ZqRyAPOlGRvS8K91f/+LvBHnVCr/wzt/yG0cly/ww?=
 =?us-ascii?Q?eoKFgP3+Vnf3mY4RiwOpX1GZhIWPlPjr94ZPM+p90c7sN1vCZYj1KMmOmgcE?=
 =?us-ascii?Q?tpx/b1IryHeDY5ksi9Hzic3hvmgvi16uzyY1AT87YWouB5HuKcFSkiM9Rxtp?=
 =?us-ascii?Q?qyKZZ3292L1hF0Qtg4kpJgODy6PhRSgN4evZ6SksTxXzyzar7FkUKKDUyA+r?=
 =?us-ascii?Q?J6RTvPY23NlwgJVJhTIcGBkKNPAWpL5RlfNxiNhG8n7lgtLSwHUmQ07CPiHY?=
 =?us-ascii?Q?hbzYpa20W5wYWz65DhVVXyllm6REiNeqo99smO+o+xv2iUgZXM5AAih/69hx?=
 =?us-ascii?Q?Z9MJNYoZ+vKOsjIg6w1/eyocQ/lu2lwFh9oJ8otcDDO/2FlB8Rf69y1xHbXD?=
 =?us-ascii?Q?qFIdhzFjKDTIek35cKUAYJNsSjLYNQJ/F/ASJk/LWgU3NlTeSCEesT5inVSH?=
 =?us-ascii?Q?fQUfhQDugIBRvta3l9dnpTpPYn0bmfLCPb7k5hWy9E1rpa1DnCSa0ifEm6SL?=
 =?us-ascii?Q?r9eSRL5n+EQlc2xRXq3V8BUGQ4HpfKzI+hroG7s7AyZX9cPRMoY7TTdoC3Pj?=
 =?us-ascii?Q?av+TyblEMnyqljlgpdeE0VksaDychzVZfcGSESSjPt5njIkFTXT+7wGiuZa6?=
 =?us-ascii?Q?DoDRrQDCXaixLP1ktiGPr55+vqN5XOFB9j1Lrsgwk5d3Qu/ZpFHoqK9TwH9a?=
 =?us-ascii?Q?Y5ZLWn4bQoA+8qtL9iX7uoiIHPis4TZHpM4F/dOgP0xsqparbcPICal0E4g9?=
 =?us-ascii?Q?TfVRUv0SYIXH4pulczcojw+pe3N61ttDEQVw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?skflMvhHAnNBVHY/h75LDbMfN31vYDtvbEwe2SqMt1BNPSU/MHhHVRoQhnl3?=
 =?us-ascii?Q?MRwrE9dqylLObY+8DbjOhjL78fb0S7q61yRGs5uRg9jcqJKT5BLejLIqv7sj?=
 =?us-ascii?Q?18BanGuBU4HBaW4g3N30N7jz2Y52zMbvRN/21OK6KuktK9TYOOIbtrJ5DCnZ?=
 =?us-ascii?Q?o1J8Rxznp2iq3+h351pgd8v2P8p9R/7t1ir2zhikLZaUiP7jlEQ3A+s+5qDp?=
 =?us-ascii?Q?vziStaa0Et5lBquzX9gRVFlc//TSZr49zik8qUwXqpLzic99eUtJkXhvmN93?=
 =?us-ascii?Q?PDwafTdsH3nEQMbAah3ALX1jV+spt+WYXQ4IVEVgl+3iWnlLNZbdoM013WsE?=
 =?us-ascii?Q?BQiIXOIhgm8eIit5cht7lmG9+6dcm9dhFxn1Kx9lLLNlm5+y/xlW6bJ9/zYN?=
 =?us-ascii?Q?VgqKlLn9DXh7abcD/1ebzW68kt3kQEn47yXpcl6yCCsQ0OVSvm6upnzcRkMe?=
 =?us-ascii?Q?do2wGi6Woc7D09bn7zIDEWQ2ux3KYle/ABsS/4qo0UhUlO++uVNOWopajD/v?=
 =?us-ascii?Q?wyZoFRSU89W1l1u3fhp5XTdOIVm1JcztC2QIBswSCuk45nWb/2dltY8xjWdY?=
 =?us-ascii?Q?trwq2B1o4D8vBwfBX4VB29f+CSLmL9hXv6tWXpcI9rAKRY9Z7+vb12yJBnWf?=
 =?us-ascii?Q?ATy8oFYduvCKRCqLqW5DmKW2fOmBTpgNNzS9qlxfdhH3Xi0bROp9U2BMeKdq?=
 =?us-ascii?Q?NOLMegA3lSOEHV/9ZhUiZOEXHsJn/kHajR2OjwELCl4BpZfqG9jceYuLYRkk?=
 =?us-ascii?Q?f0tQvPtC9v3ylqMwQSMJeKGH3VifQfH2OqUSmUMdtkv6zUbkT/4eJ5bd0vzj?=
 =?us-ascii?Q?S8F5/7OnuXtIOIuUy9veGlLs6YA+n6TT5PDdJ6Z6pqxPKDUordPSW6p72QpG?=
 =?us-ascii?Q?Xm65oxJsG4R1nz8GyL87D9U7M5wlIPD4l2UbLyYrGSdzZZOEXfvgeN687Kha?=
 =?us-ascii?Q?zSSwwunxW44Idz2/t7nGx8Ti8zeC6TNrZQFUtlvk0G4xCK/sgnz+m01b2UxP?=
 =?us-ascii?Q?eqffmDKvPDfMhqmqsLStNUsvsGQs1yMkPOca30NqwiTh9YcRZOfOWHyL0623?=
 =?us-ascii?Q?tnd3W3bUU7aLakBSQMXqOX7wGCmfk5Akst4g/jdpnkFW6oTiARho2XBb559y?=
 =?us-ascii?Q?apamVlS4A+sTtMWl/nj+mPvbaWeD2f9tzQ4474rT94eck6BorFKS+Ci5cD7G?=
 =?us-ascii?Q?1wA17bIJmURC/+OmGIMKyyUrh07n6sczzE1FDF+wkdE710hw0/IYQ2MPSxBm?=
 =?us-ascii?Q?5gkatUG4aGBvYTOhVQhgkA+WtjqvvhT3z8GDrS4fUf201gkfo2+9ajRx88yv?=
 =?us-ascii?Q?N9jblqVkmOSqt7mwkZXPQ6qDF3EI/lGM1MvTGAGgbx8vdjIc0PxR7zbn5IMd?=
 =?us-ascii?Q?WCHewt4PVDwdmF5meMjwzbT/K5h3EZG/+TJJ4Yqckt4O7wXpTRDsQ8SUcJSq?=
 =?us-ascii?Q?eqm++htjaRGo2VVDCJJaHM1jVcU1D8McvM6XRA0O1dqJiGeQd0XnGHsiSFOa?=
 =?us-ascii?Q?z5VcItOU08UcFnAN/t5nN0Su2r1F9e5202shhBZhD1KsgJ0RUX7Itg04szAp?=
 =?us-ascii?Q?3L34ynsMEivb2nBR7fcG+DaltVavm0FOKRNHt/ErolKiwNWt5nyrGaSxZT6C?=
 =?us-ascii?Q?o6kbMz2CwfTwcpgFq/6PX0I=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7932a28c-1958-43e7-c718-08de01317b43
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 21:28:36.9726
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JVAw1Y1oigpnPIqh3AWmVmqOPDl9w6tBY5ev1oRpUwF4+eO7lWOMhz4Wh8+QmpLQKuN1UB0VUXx4dWO1CK7JqMAMln67QNW3TBIZ01MIf09TFMvR2oW8YF46yxfNQWPu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_142901_267273_1127592A 
X-CRM114-Status: UNSURE (   9.50  )
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

Add clock and reset entries for USB2.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
 drivers/clk/renesas/r9a09g047-cpg.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/renesas/r9a09g047-cpg.c b/drivers/clk/renesas/r9a09g047-cpg.c
index ef115f9ec0e6..68f8b08bd16f 100644
--- a/drivers/clk/renesas/r9a09g047-cpg.c
+++ b/drivers/clk/renesas/r9a09g047-cpg.c
@@ -16,7 +16,7 @@
 
 enum clk_ids {
 	/* Core Clock Outputs exported to DT */
-	LAST_DT_CORE_CLK = R9A09G047_USB3_0_CLKCORE,
+	LAST_DT_CORE_CLK = R9A09G047_USB2_0_CLK_CORE1,
 
 	/* External Input Clocks */
 	CLK_AUDIO_EXTAL,
@@ -177,6 +177,8 @@ static const struct cpg_core_clk r9a09g047_core_clks[] __initconst = {
 		 CDDIV1_DIVCTL3, dtable_1_8),
 	DEF_FIXED("iotop_0_shclk", R9A09G047_IOTOP_0_SHCLK, CLK_PLLCM33_DIV16, 1, 1),
 	DEF_FIXED("spi_clk_spi", R9A09G047_SPI_CLK_SPI, CLK_PLLCM33_XSPI, 1, 2),
+	DEF_FIXED("usb2_0_clk_core0", R9A09G047_USB2_0_CLK_CORE0, CLK_QEXTAL, 1, 1),
+	DEF_FIXED("usb2_0_clk_core1", R9A09G047_USB2_0_CLK_CORE1, CLK_QEXTAL, 1, 1),
 	DEF_FIXED("gbeth_0_clk_ptp_ref_i", R9A09G047_GBETH_0_CLK_PTP_REF_I,
 		  CLK_PLLETH_DIV_125_FIX, 1, 1),
 	DEF_FIXED("gbeth_1_clk_ptp_ref_i", R9A09G047_GBETH_1_CLK_PTP_REF_I,
@@ -282,6 +284,16 @@ static const struct rzv2h_mod_clk r9a09g047_mod_clks[] __initconst = {
 						BUS_MSTOP(7, BIT(12))),
 	DEF_MOD("usb3_0_pclk_usbtst",		CLK_PLLDTY_ACPU_DIV4, 11, 0, 5, 16,
 						BUS_MSTOP(7, BIT(14))),
+	DEF_MOD("usb2_0_u2h0_hclk",		CLK_PLLDTY_DIV8, 11, 3, 5, 19,
+						BUS_MSTOP(7, BIT(7))),
+	DEF_MOD("usb2_0_u2h1_hclk",		CLK_PLLDTY_DIV8, 11, 4, 5, 20,
+						BUS_MSTOP(7, BIT(8))),
+	DEF_MOD("usb2_0_u2p_exr_cpuclk",	CLK_PLLDTY_ACPU_DIV4, 11, 5, 5, 21,
+						BUS_MSTOP(7, BIT(9))),
+	DEF_MOD("usb2_0_pclk_usbtst0",		CLK_PLLDTY_ACPU_DIV4, 11, 6, 5, 22,
+						BUS_MSTOP(7, BIT(10))),
+	DEF_MOD("usb2_0_pclk_usbtst1",		CLK_PLLDTY_ACPU_DIV4, 11, 7, 5, 23,
+						BUS_MSTOP(7, BIT(11))),
 	DEF_MOD_MUX_EXTERNAL("gbeth_0_clk_tx_i", CLK_SMUX2_GBE0_TXCLK, 11, 8, 5, 24,
 						BUS_MSTOP(8, BIT(5)), 1),
 	DEF_MOD_MUX_EXTERNAL("gbeth_0_clk_rx_i", CLK_SMUX2_GBE0_RXCLK, 11, 9, 5, 25,
@@ -359,6 +371,10 @@ static const struct rzv2h_reset r9a09g047_resets[] __initconst = {
 	DEF_RST(10, 8, 4, 25),		/* SDHI_1_IXRST */
 	DEF_RST(10, 9, 4, 26),		/* SDHI_2_IXRST */
 	DEF_RST(10, 10, 4, 27),		/* USB3_0_ARESETN */
+	DEF_RST(10, 12, 4, 29),		/* USB2_0_U2H0_HRESETN */
+	DEF_RST(10, 13, 4, 30),		/* USB2_0_U2H1_HRESETN */
+	DEF_RST(10, 14, 4, 31),		/* USB2_0_U2P_EXL_SYSRST */
+	DEF_RST(10, 15, 5, 0),		/* USB2_0_PRESETN */
 	DEF_RST(11, 0, 5, 1),		/* GBETH_0_ARESETN_I */
 	DEF_RST(11, 1, 5, 2),		/* GBETH_1_ARESETN_I */
 	DEF_RST(12, 5, 5, 22),		/* CRU_0_PRESETN */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
