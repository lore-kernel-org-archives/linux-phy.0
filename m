Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2409C3DA60
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jul 2024 10:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NRz/RKdBhJ49Aa2UT1XV6g3rjtMtr1FHxXvNcHhVBQ=; b=FFVbkymBSUapxV
	oVz85OL6dCn7Gy09upo1mb34tVePivJe7/kWwEpoPCmYpCod2mHtP4FHlrnnxAWpkfWedg4rSJyza
	aUXX8Qh2dTRYAItQ8exwquPEQtcH64vnNDtQDe1U0kj1mMlBgqtRs/QrXC/PEx7oAlZy/EzsKLQ6f
	8aYSiltKesGSUJwobWSfg9kPl0/6N8Z4gzUt75rfWZXv6Qgh84qSlGlb8vXZGtIDsyk7YGyaa3XUI
	Dm0BhL+ocXaD442zu2KEF0BRV4INUYVlVXXkMy4/vPzXZ4CIkKlDZJfMiHjWqAfN9oFbFyTthzFp/
	iuSC7wVIffAHEgKj7/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUON6-0000000Ggwq-1NPd;
	Thu, 18 Jul 2024 10:28:24 +0000
Received: from mail-westeuropeazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c201::] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUOLk-0000000GgOB-0R2U;
	Thu, 18 Jul 2024 10:27:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FJm/qd78oblXtB0IVY9P2nl1gmqTZd7cnepnru4yhVFuKeYplh9wHjQ3ZE849C06hTKVsXlGIYHLxLmFIXpVeVGFYzCiswUlPkNITdDB/4WDkl4oaQYEpnmm8j2fpKzTrThg/VTUK77ALibe0PD7KAb1uOJZATYjbKz5ekogn3ul+bpIwea52VkZt69yYFoicpYmw2i3AVrh8ISonLRCGMk+itAV3ZsHbWl3J1FA44jNpX4dKlrSqUUdMVw1yG6iZKhUcG1PfG/ZFm8w71GgTRhUE899v7fWlLQLLaeh0bd1Tu35AGFIksZ3QIIyvp1RPBAM76HEd7/3HEycK1QV8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T8iiBZqWWOCgkBeIfi/qDwAyWhISq6BAWOpP+6iS0cI=;
 b=vdaJIySrjqmRLjjZ7qQY2kAB/sfv6qXvP+bBqE7Wnr1kulMEQMit2ZPJPpI7YG00I08ydSNoTlesMnQPXVIhlKFLs9rLPU4zBO7zfq9kt/cwDXNRwC2E9aSvHPosCSR7o+GxgAKfKKJQuJk+XpIbn8BrO9kgZLx9GoqIiIqvuRva/jGdNZUbwflQ/5KMbgVCaZ1uftvKvw4/vuPzNqanQTu4GDD/KlnkWOdxZHGox4vYihffxvLefJ5kaOd7RCOafL6y2dXTCxBCXLiskP1BFtxCS6CEO0ISWYc71eOGvZPKXWrFLed3WV8dNjo/9SIJuUrovV4e43K+k1NjgE+XAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T8iiBZqWWOCgkBeIfi/qDwAyWhISq6BAWOpP+6iS0cI=;
 b=Gi9hXxRv0uzyaXcUtJMOFrGDAkhriiD3QM/3v+NpzYfpNHX+kMzSp45XOsSTOj1FW6FwY3IOcxJ0SSVGpYQsDCrvMh5GSobeMKFMR9V+6BoE6Rqjy9PNbYH5A5T0bv1AijVbQhJgSbF80VSWKha3elq7T8yI0ywG5zJDMQqRmPk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by PAWPR04MB9886.eurprd04.prod.outlook.com (2603:10a6:102:37f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.18; Thu, 18 Jul
 2024 10:26:54 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7784.016; Thu, 18 Jul 2024
 10:26:54 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	gregkh@linuxfoundation.org,
	peter.chen@kernel.org,
	herve.codina@bootlin.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: [PATCH 6/6] ARM: dts: imx7ulp: add "nxp,sim" property for usbphy1
Date: Thu, 18 Jul 2024 18:26:37 +0800
Message-Id: <20240718102637.3964232-6-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240718102637.3964232-1-xu.yang_2@nxp.com>
References: <20240718102637.3964232-1-xu.yang_2@nxp.com>
X-ClientProxiedBy: SI2PR02CA0014.apcprd02.prod.outlook.com
 (2603:1096:4:194::19) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|PAWPR04MB9886:EE_
X-MS-Office365-Filtering-Correlation-Id: a8b60586-7649-456e-a99d-08dca71424f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|366016|1800799024|7416014|376014|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SlM4CJRpU4LQPM8T3/ywtDPETXdcT8HLBeqYlSN487jCeEKsWEwkvGK6r52S?=
 =?us-ascii?Q?fFaieD8RM6iLccsZz53Z31b6JALd7AbGnZ2vOU7hQNeoyiIVt4aW4wgVKk4Q?=
 =?us-ascii?Q?l5wJRmW9aW3FOBHphuiikd7Q4kZQQBb6OfPdXCav2we09yJUwHt25FfbAKot?=
 =?us-ascii?Q?o+9l8H1NrzhG8ptopyRdK/kT2bWUTmOjirwmEzEEZskhLwpQF0RdTjKozKlr?=
 =?us-ascii?Q?B/ww1aRVRWRfDL0u0S154/lgcL9nUqZ1CEPJyHOTkQKnYd+EKuS759xmv5g7?=
 =?us-ascii?Q?FRQQE3tTpSz7iMfecuQZeZ5mUhsHtZ3kcUsD5IGJbHj/J5OQw4oRVmoDrnkx?=
 =?us-ascii?Q?RtXpw23SVABb9bVQ+jvHwgFWSbOLtqoiHDHr7W9lKbg363xSkgXGcu6zjBRN?=
 =?us-ascii?Q?sbXxa+6jdP4IatpjA6xkRnK5CBmVER/4qo1iuYPyfTqQg2ywY1ncpJi67hGX?=
 =?us-ascii?Q?5ATtP5Wxf1k/TrKEFhkd+Xd+wBXIVw3XhnMKqbDugaMjXqFTrBHmMhWG8CdU?=
 =?us-ascii?Q?+/4Q7WbxNSg2v1E92aSYt+rvrbjmhetQ2+ZmcXDGzO2WuZYuJo0wRpMRg08N?=
 =?us-ascii?Q?5uDBwhtxZbnFYmHQXmHWPeAr+bpmtXZGoTTJZJH9Uf6t4qHsT103or36lXoN?=
 =?us-ascii?Q?cldf956CH2y/Y+FR1diGhMUdYDPmKO7ouHT8HWmbAQl0sJLTTSWRderSVhp5?=
 =?us-ascii?Q?OqN7GS8ILCaye8cawugd7ti6H47bu896zXoNa3Udy2I7Xb9RnxVBlB5qURpY?=
 =?us-ascii?Q?HS0pkhoa2XynXRHd1e3hrvoDUQcJrHB2l5g/21JG5IxONeUXYXLFXzpnctk4?=
 =?us-ascii?Q?SifZpxX70hsdrHR2w1g6q5tiKzPPvU+VI0NHgpQ4mfvp87VbDTUhMqIDTur4?=
 =?us-ascii?Q?X2SYviqXBOb4gtFtzAd/mnC4S2d16MwYd5gCinaOzxs3xVnAu9tv7uuF8Kig?=
 =?us-ascii?Q?rMOmG+BdoK1wn4fXU4D77Zl1mIl8Mh827ghEWbHZoxNNjDp9tkydmy7C82sx?=
 =?us-ascii?Q?jLJfK/s/DxUvgFehJjs0PRzcgx+Y9dbF+JYADiKP49m/QMM7lKHQOQKI+jLs?=
 =?us-ascii?Q?1BP0Kv7g9NnZ/epEAUSmvEg20brfwV4WZmXiO1C2Fuq6HI6YLS+YkLksX47x?=
 =?us-ascii?Q?2XvTQloyPVIxM9MjP0g7FH9XnB3G1Ptd0JlE6znBRqKh8U4mnq5PhiN5kE+w?=
 =?us-ascii?Q?dF9WRWt6uqfXmke80UOxwIqdQ+uxj4b3rvM9KHMRtIfm4pSjuVhzZhXxhNbe?=
 =?us-ascii?Q?d6mdIfNPBJIChUl15TLrxiKvinyMANSJmuRHQuB94I6xfcYl0+wd5ND/7FFz?=
 =?us-ascii?Q?YPW8lHkVWfCnONnYYVGSoRHGogrNQdFTJi1UahLJC3ly/He6802nmgyokUHR?=
 =?us-ascii?Q?bqnAzYL54FOx9IXdFFN5QJxxZ47f5aARyr4iDh1RB0V8b+SS3nD8EpcoAl/f?=
 =?us-ascii?Q?BNDoetUYlCk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(366016)(1800799024)(7416014)(376014)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5JUe401T+4P3O9s+9eKUwLz6RfORbyGwYGjCT/EMJb2ncUx88wuTfFBUqpe9?=
 =?us-ascii?Q?PrS2Fvc3WFnOeYXiaj1pQQO2h5b4C5aiyC8sS/9Jmzc8UalFbB4+Pfl9ou5p?=
 =?us-ascii?Q?8GPSTBGJwapAMnrPpoUQaWZxm08XFcYfarEtvQGUeXnYnXxMYyM7o9oY5gvU?=
 =?us-ascii?Q?2KtcniP5t9nrqQlKgyvgcAue/JERmU4EVFmN5v3OlgZURng5fOo0LTPxdNHz?=
 =?us-ascii?Q?0m5MTycf2+8edNMUDB1HYa3Pxlcecd+KtfqyHMatWO261Q8BfXIjdhE7hrwM?=
 =?us-ascii?Q?KvJ6kxuyeB9wG/HTJkjI/QEQKIQ8ZMJXQyHKHDwG/8ti4uOwLqPQDRNwz2UC?=
 =?us-ascii?Q?4I7U/V/bysJnlAieqm3ADPneN6CQbd9N7s2hlQXaD+lzLmXRZ7heglqNZKPD?=
 =?us-ascii?Q?MwOkKNENTCXknRgJekUFMYnYcsy/qsyEj0sCLBCjvbCRSq3tDhcKfah23rW1?=
 =?us-ascii?Q?FoMq0NNX7Pj47kEvzxdcGyjZ6bcSRY3w5qSpIPKm3LJqxon0/cmyxPiMLDtI?=
 =?us-ascii?Q?f8hUY+gjVKHpc/qcnzvbFnnRSXG8BL5tuIlQB5U0hr+hKKDsW+avTXlVUiSo?=
 =?us-ascii?Q?jG7oQxTCzkO1UjV0VcuXd0yWzh4c7eG/KIymoDB7/LxiMfRNuOOg3fdV0eJb?=
 =?us-ascii?Q?/4fRtNVqQ2OU2IBY5Riu/HvlPG0LnGnUGDo0Qqrv+l1KelU/WnbUXhMY84hC?=
 =?us-ascii?Q?rUS4iV6EuIb37j0HfIwGa5zX9fo+EqcwY30f9SMaSKp7FfmpcpZuqA1U7+CK?=
 =?us-ascii?Q?P+zN1r5ShFyijUDYXoWzzeugFOrjSCmLB7EG3YoZcARNnSi5WTPR47JtZvLn?=
 =?us-ascii?Q?EON/02V4gn9t083BSVbBBslsm/1356luTS44gigRdIPwEWfvNmc+5pbihLVs?=
 =?us-ascii?Q?R1AK/nZrwyp3rpnA1a4VBaMJykaQ+KnSN8DE86al8BddAtefBVBX7W2TyVUd?=
 =?us-ascii?Q?HApB7X3WSPbfksjELTIUgLoYTzblcy2XQfGLZentWfLd81cAleu7pDXEz7i3?=
 =?us-ascii?Q?WxwuG93L79JBLPscNmEUL+QEj2zizsX7PIBKVDf6ggCeXExvf1r2pSadyotb?=
 =?us-ascii?Q?qU8SYt69jKd706Oy2zR0r8sDRV/ZgxedCkzVHCYCcYkBFPDbPPo2Je1ov+09?=
 =?us-ascii?Q?3s4G8FUIDaVzoOf/oZote1PZ8EWe2ayRMjJCM+M9f//dafv84vn+FQtgltkr?=
 =?us-ascii?Q?88nNY+fn7vFwqpTKn2cwcLnrNhosIuNBlDaPwV6FZ9/AVC9/sZhPnjYDrIom?=
 =?us-ascii?Q?3Ewf9GltB0wxhXv/kyX9jbi2Sdiw3VvU6C/C0X2Cejuwxyc6ADeMU+DlvzT8?=
 =?us-ascii?Q?0387jZfdEGjh6113vuzBJkU7e6w4TIUH6t8KP/Mny78sTH+BV80KDjWqM6zr?=
 =?us-ascii?Q?sl91jGNcHdiMj7OPFskilqaXtQw6HvZNDRBygZW0XhlzRMOyMh6lNR6zDsT5?=
 =?us-ascii?Q?VVBVPTrt5F5lRkioMfg0c6gN6o636P9z1i4uhPhFeIDIuMiC7+9q/DH+vfeI?=
 =?us-ascii?Q?UOYgoTaqXyiDTZ/v970flevff6a0soWMLBmY6o3Ac5DauanmsTYQE2BHbsvh?=
 =?us-ascii?Q?32ULWc0HmK6xvzYBC11klu8bZMtu/UAGfQJ/VXlr?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b60586-7649-456e-a99d-08dca71424f4
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2024 10:26:54.5856
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1IWXopR1sSktG3yBPkXuM6Az/CXzGIxVwZq913E2vflN1FumWg/Ed2ARosZzUJ7LP8TLJszW21iv8eQk0cMN3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_032700_286655_9028FD32 
X-CRM114-Status: UNSURE (   9.02  )
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

i.MX7ULP need properly set System Integration Module(SIM) module to make
usb wakeup work well. This will add a "nxp,sim" property for usbphy1.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
index ac338320ac1d..b093f2a447ae 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
@@ -214,6 +214,7 @@ usbphy1: usb-phy@40350000 {
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
 			#phy-cells = <0>;
+			nxp,sim = <&sim>;
 		};
 
 		usdhc0: mmc@40370000 {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
