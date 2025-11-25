Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A7BD0E6CD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn6/p+vF9ou9DIX76u0vpZGCGpO//N7h78DYbeZ14rY=; b=ChaqRrB5HZMfZd
	26warIE1owPVMHu16CxxRqBSq/Snxw3w7+1LH8BgSm0fubEQohTvV/mogsY3J2CFLXyxfXrQN4eSo
	sBbwsW1fWWsYKgY9EkLB9mBxQ7Hn5crASd0ah0ao1lhAWHyTibc6tbYHtcmnJmfrJA2qnmw9fvSz7
	L34XNxFMcdCURP3t7PH6LcqQTXgScR8zoknrXTDoEeWYlU6KI9gWNDMOYi3ZZ8jO7InA5a6jv+0qz
	Ass1gRvb9QLWFP+ckHtN+k0oL1QOLM06LSKm9xPlbOj97I7q8coF4cC7oRd7IDosCU4W/HWZ7bk/0
	waQeCaIgSD0MT+MSrNcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYR-0000000DFCB-0wHQ;
	Tue, 25 Nov 2025 11:49:55 +0000
Received: from mail-francecentralazon11013068.outbound.protection.outlook.com ([40.107.162.68] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYO-0000000DF7R-0uDx
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KlKoiuiOMyNBvIsrDpdfIm8fHSz8R1e9b9qgITluhiTq+MIxC5l9pDX8fguZRUSaTsOAKsLPaomh3U7WF+AKcwv3fpKtX804LOHJNq1buWoXnYCplVZIrPWa03fii5JX8aoqPh9cisLAf9bybSSi4rf1Avn44TADQxckNSXGuwu/Tl9cAZfGbN/O2YdqHcWA00k/WZh6X7LdyJ3K27XD90pCMR/N8lMiVGQ0aFhJUM/qPJ0TtV3zJ2vMxFiLS3M4pJGurKig775hpyRItS8icAFRX+3mtzvewhCYeoDpCqmwGbbokYLJmWFy0/sff572h1xReq4Iq5MLGGnO5a2lBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GqVBI+KgTO3Sv2mdJA/2h8HM2jTHoNLiW5vIvg0RoWA=;
 b=UWoJ2C83KBkZVbzgcOI/0916fDt6OvIC6wBBGqbXEqIyWZoICC0DIgitaXHeVhXrfpmTRMHgoJy6cyjlP7b9Oip1uB+8ikNCreb+7TUIcNQbE6jfjZFyUIQuc+nlCgyEhQrKn4wP/M3VX/nzRenyUQOt2mWMbJ9jGK4rLqqXqrJZBoReuz/ISiRx3DAMQO7BTV5k+nG4wi5umw2LPXB0wW2g/RsG69qosl8jd/hG/L28rQjFSBux8tdc2u6rKCVOCVuoGg4bIOCfKBLQrUK2qUyeCA2O+R5cRIcwx3tZqyONtX8qeGdJh6uQFE3cpy21tsKzBAk2f7JeIhSUtpi7kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqVBI+KgTO3Sv2mdJA/2h8HM2jTHoNLiW5vIvg0RoWA=;
 b=nfUgUdjm8gvgEktu/w9djYFlfvCI7fRYPeXP6Rv6JwYJnX1htbvFshka/EsjOPc7kxdJJMs87GXaUKQaX2JeWiQCsVv4ds5SS/lb6AuwI6ZaWRM84aa8NRsh3h3plflYfKzlmGsFhekaEdP9TkstCRMw8xydQ7NOaIpwyPHjreZxS7SXEU4HlYERde89SMu5qsYT67yiSXo7b4rGrp/AUk7TL3l2d6tsEVZBQ+KmSCSflDdJS057i8gw/ZLJ75F7ufv/XZ5ybn6cCZdW6SvlXASXToyiT4qTS/HNp/Jddtf3DqwaeUp8TU7q6WMqIB2XOUUW/n6zDNILOqMwEfkWcQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9201.eurprd04.prod.outlook.com (2603:10a6:102:232::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:46 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:46 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 09/15] phy: lynx-28g: restructure protocol configuration register accesses
Date: Tue, 25 Nov 2025 13:48:41 +0200
Message-Id: <20251125114847.804961-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: 442edc0b-f228-45a3-733a-08de2c18bb06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|52116014|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s12ZTefUVmFx/y6IiiCPtUnLEqLgSHWN+9bT0xX6ZyUjBAiroXNrXNtACm+S?=
 =?us-ascii?Q?rSSr4U9H6vcRpFbbRwngKV/Mgn2twmsiDwhb4uQVwFHGsI8KpJoyy2o1t0Fh?=
 =?us-ascii?Q?FavH+a/5TkwawBb8i+AqxLGVXZ11OKe5475TkHByCZ/3kb/DOVqnaoFoo+F9?=
 =?us-ascii?Q?UEgiAN3d6Di2SPJE+Vbbk+Z1kpuDJA/5sNIeoGsnMquFp9WKyx5NDXV8F0fq?=
 =?us-ascii?Q?jOgMJFTmApq9YFdUyEdodk3ypzeEOh+X1/K+LzfkMI+s6z8bcHdEQs84SC9u?=
 =?us-ascii?Q?AWi10BkogwPt8GQ7pkWubc4dEttFB435ropMHhmIiQlMLjqD/7qNQVhuXxGK?=
 =?us-ascii?Q?lMtstknBPjqz80KJ8un3amibOwUZ1RFWKfAPxV3xZumEqFiqSRYXUKe2kLl9?=
 =?us-ascii?Q?V/ZLQUoaiz6bA4PQ1KQL0iqVCIlmbskx/vDj0+jYpE/wSiNCbskePy8UcFK2?=
 =?us-ascii?Q?PJgAKSVYlkxZN0V5Hyz3FdHQ5XELBayBzR+/I/i0b7yO0ZsDuJy02JrU6oVx?=
 =?us-ascii?Q?NCZhfnbTXbB0MDdbvBd4QjPptulaFLpNlrrGfJ1cmcC5ROl4WGMoL0LcT6qn?=
 =?us-ascii?Q?LiXmDum5QAD07aR2dRAiIs1IdyDHLtCu+SRYKbKWQUXFQK3rKBOC/xJ40Qbn?=
 =?us-ascii?Q?ZkRixx/Y8EDD9i5ZeAvJdvLr6K1qEmX9wF9PM8kV2w2ZVMD8RBfMHnZ2NljI?=
 =?us-ascii?Q?7SF0sunVXadrBW7KONriEpwShr2IFV98V9El3cni45p7tUOGvBNcOyCSjMo0?=
 =?us-ascii?Q?yvwMQJhkMe5N7nCR6hYrHDz3pNKLXg2CPVKrOW4oY1Py1mY6XtTEVOnhoeFw?=
 =?us-ascii?Q?k3qcYUwg7kBsuvlFbuD1w04WqjWA9xqqETkorPcdPq8T4NrmwrjQi3x5VGgf?=
 =?us-ascii?Q?qrWEfkg0BwTmNhfi4dTYXdnQgposCM3yXgkmufm8GU4EFQ8utyviNoOntV7n?=
 =?us-ascii?Q?XoPiEq4BC4JJf6Mf0XChdAwkgnGC+0rSFdndUuRdOpgoN+t3SwuD8fQoIiAh?=
 =?us-ascii?Q?ES6isnWi3tm2dSro30HcojIJm4Uk9Hjf+YHkesWwt1NGu9YDzlv3rxHPhYDm?=
 =?us-ascii?Q?FKavpOXmg8V3YhtMgDZaryKT2g6r0ZSGQLsoLw6Efb+J7Dmti6or1+8oaTtV?=
 =?us-ascii?Q?E4b4sdZS0yvs1ITgpG9aL4sZ4PLchc+wCh4uMfc7fGwgjX5tiBV8R46CAsgY?=
 =?us-ascii?Q?ORsfWz4BrH7zLZDL8f1c+BNJFVCSKU3lqwMCpXE5ukwuirUiSqP8rOpwZabi?=
 =?us-ascii?Q?MZarHevoFIqj9m4lFL4Ici464YrEmZKWsx4/DXwlfN1ke/Ath8+GrFZ+mz+0?=
 =?us-ascii?Q?UwlIev8MrTYrQ4njXHGMMHlPu443bf8A4/aTFHGxfAI5t7HBoNzLkWrYnVaI?=
 =?us-ascii?Q?tssw6J2rlqbPIa4IlrU7YTHM+yC6YGjgooDWoDmgMthOizYH8FffVK1DSv41?=
 =?us-ascii?Q?j4S7HX2eTmGiKeS+1Vtd/GB2alAS/Ofn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(52116014)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9a6U5QXED8RlyFWUuK3bi5NDqQLPd5GJjX/U+oBED5sGAbb9x4VPQCndkxPL?=
 =?us-ascii?Q?8PSuZUFGyeA0gwBK0/onuPAh4pMWmvB90OfR6On7pskdfWDolgC86wLnE4wN?=
 =?us-ascii?Q?+tyUX1XSXUK53UbojJnTS/R2yZK9DUx0lt5p1KvVz9K3Qr5tKCt+ofd6uqhl?=
 =?us-ascii?Q?uPgDVTQyfgkmyye97yHusBJiOeaeySqUPj7O4Ateq45rojmV9Ibsak/O6Ksc?=
 =?us-ascii?Q?Msmm/0f6LC3vhrweSPSQJh5ns5EqYb208t469eFWfHlIkiCA+InjokzdxaZX?=
 =?us-ascii?Q?GkHKpQ4jG0Wn6RnJmcYE9pC0iG+bzHkgfPG+muatYPgB8bKiJ1rZVHt9yla0?=
 =?us-ascii?Q?+pgTZPJHfIpuRcwIs0roGYfZ+FFJCED2FWO11km3sNs1ozELZnr+n17+WUxk?=
 =?us-ascii?Q?1pbEQiGEd5wCfi81HqwPhA7qXc6ME3OeMqhcXpaKcNPvmmH8jrIu6A4cQdEj?=
 =?us-ascii?Q?WSZJjg8dIdgQiTokbK2vQ7MP1c2B57fE4XbQCo7hFylIP9o+comn1Gu9lXw5?=
 =?us-ascii?Q?0e30/dJbLhRonvw2d6/CeJCtidxDNvtPALBqBdvRZrUYcJr+FE89/3LnvIoB?=
 =?us-ascii?Q?GsywUMFS74vFFG9Der3B9LYALBOEww+US27CrvfjQWeHFwOv9Q+MIqbBm/eM?=
 =?us-ascii?Q?jCI8jQtEhqbgaR/5zbLBth8PapyGJCxjoQP1GF3iKzbl7JVIdq4vAPkhTdP3?=
 =?us-ascii?Q?0SKxVmJi6C+VS9D8Syj0ZuswHjfUUXl30S9CdXJGVHW2YpdBQ1lXDKgF/uP2?=
 =?us-ascii?Q?XVQoNCX/0itvd3PjrzY3IKppWA4VA8Utm2vwDjkvZVr12MvMfEcz86vj+GsX?=
 =?us-ascii?Q?2MzL3S82ne+Ay+SZQwsla43qBaa2CNMVKr6nC/J0N1Or54yLZTRAVw7zR7JF?=
 =?us-ascii?Q?i1olZzh6pxA7QGtUUktTE2vAJ1RBqQb/PJTB9ZxARQvGU6KKByaJIOA+s6oD?=
 =?us-ascii?Q?8S4mzl4YXkVYZSuxtp1/bBRsM4vi4exMkYlneSj6vZnGzrEuTcqR7eafiBJK?=
 =?us-ascii?Q?JlsD0D/hY+IimSYJ8+NASZDz0fSA1EytJpqqMXE4NKytnivNw4CpJXQ9ARqj?=
 =?us-ascii?Q?hvi7zp7gJGK/9VZhBD7U1/izL3P7BGVc5P/sZUvC9Ob7/X3FOovngjkgK7FF?=
 =?us-ascii?Q?TabapHbm67Xa1zQBSQzMOUE1ATPg7zs74RHseaOKQM9O1dgQKfoRT6A5eyAu?=
 =?us-ascii?Q?PsiQFdPc3dEUCgSnmV7bUUyh4pZKz71GofXmMuoXQGghQdmR6kYhb1r/Lbjv?=
 =?us-ascii?Q?lIapPwMeN2C2+klGhbeJ2ATjKxXSmM8/o9tTWH1mVG72vFjm0PP1jSoyDKTE?=
 =?us-ascii?Q?k4PhB+TD+RgAj84tYRW8YqrsY5aokOU8X4wkp2vSanYOB6+dKPQR9+Ddl62g?=
 =?us-ascii?Q?ISyOF3KRZwmjqR/h6qGdxVqPz1KN5hT1QnqP7PYu00fmVc45jZpCyo/YjFqn?=
 =?us-ascii?Q?RoPmc446T9USYSdn0N5QSXW4pfy75zhz1kFrjDdiifvAfajsfpuiLQRp0G82?=
 =?us-ascii?Q?v2N9yY6wGjlTL3BSi7Pkb2tDcggtdGV1qgr25GZ9D5DMy+tzGlcmWo9UPeFx?=
 =?us-ascii?Q?izraDAOr5AKNGafMFeFg908tr/P6HmvmcaTGWhEs4OySWs1fLyf+/wGz7J4H?=
 =?us-ascii?Q?2mEPaR92jQJ65N3ygCXlcj8=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 442edc0b-f228-45a3-733a-08de2c18bb06
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:46.3816
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: No5DFA7VXRbmTeKFTEPAXR0IXvDwsRPfQV6pAHkWm0NQt1YZpcN7jkVfoLC03ttqOFD5lQuQGNpSvC3e8pd8jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034952_287116_31ADF56D 
X-CRM114-Status: GOOD (  12.74  )
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
v1->v5: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 55 ++++++++++++++----------
 1 file changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index def91c64a6ac..5692ed8fc65f 100644
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
