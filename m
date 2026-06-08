Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 571F4CD8CA8
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEND8Uw8BmgvQOz8cBofj8+ahJgpaS9Giv4BxLpobnM=; b=tXWHA5QPp2R1Pf
	6vbdoPCtIbf0RnGr+dXfhZOOuUGyuUb1Vb82AAW9aQ5hU5T7MS2LwB0LKiEkE8/1vP3daJm9Zsscs
	uP/LxJVuCaVOzk9FUe2LaY2JrTHcY64XmXDsgf/3qoAZi7bH9q9G2xLSdenlgSYcLoE8CM3uFT6ky
	PKwG8ZvLHW2Q66d9A89YGPENhhC6IXdhiJtz88ulNi8HWcILo6eaWOR36E1R9+mMsJmaOW2glym5J
	uqVgyUrh4Uf5fD8alZfb+msXusXMQF0WFXKlHBQOIdl31iThWQJxjp1N0YIUDv3IzItQJsTsu7FEQ
	gWamVFhsKgzXw9Rlv4cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHz-00000004U6m-0NqS;
	Mon, 08 Jun 2026 22:17:47 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHv-00000004U2a-42x6
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SPRLX/8F7hgFwCRmE3aX5516qkFkwdXFKKME6t48nqGKBGQEso4WOz+uOWoSAa97CtDc7jFoYUetTyLbSdYqGnD5zop44374AYSC7Wbijf7HUosn9EZfSvZHY18Dxe5qHs+k9vbeYw4tt13uBH3t8U56BqiK7b68K2DMZn3zFxjakq+cSuujc8F6gJcOIA4GSmUy5y6EAzw3UoXrghhTDxb5UmYgXFXlazCWLE/3QLmhg+K5LJcXIw5FAPH5JzBeEL4/XYc9PtBEhJVyUfUWPFNF3v9+sTOJCIkqNwNsgpQoUiGX6pbk6JBNe+btXCC/GkUWGJyEIhtvKQjwSOED0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N9Hhy4Zkc25555ylY2DwMRgRx+6tQtlqa75lQGp+voE=;
 b=OOnswE4fvw64mTt8Mptyu/N9j/7AsnEYscGTwrgvx67xJALGLmAZPYE0itRbSaUBngdMbBbn4QP7mr/ckO/NB9nREgt5xV3Y3N/p43tn2iLuko/jdii7DFe7J9seT4ngDG3p4vEcyhHHsE/KgrRWCKoPSG984mp41jLDZQEEXfeN32DYYukritAsbtZADizrn9Tkwu6PcStCZ3TYMwUJ4ddIr07ALtN5qoHRnEeHQTYtc47MCNw9VGbQEMAChc+KP9UFOp1YRDtNGWWvQ9RuUFQ1qTEJ0TxfMXybicadWe9AnWMPs8HgaNm4cQQbCVN66usKkaXFSFgV6fipP5DIFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N9Hhy4Zkc25555ylY2DwMRgRx+6tQtlqa75lQGp+voE=;
 b=PyTM9ByGSkt1pZt1NnMm9PQuj/wmPCnMWwHEzr+px8gBP7jjy5mXla40IYLyBeiuzLyQiJ2Qu07YUaLUflOrdS1cAU5MbkIJeUs8nTeTFeKTwqAnDv0GXq+tu9XdaED3xzl7cutYDKbOzomKcThdlfBRSYkF1rqWYDUD3ZZHcH1zU9IFEP8MLElPAOoS5pFOUexuNf5WcPtCmQ79q0PaMHYMx3hazy580fBr3Htg/rw2diChkYPiSqJEfmQLW+1It8MId3TwDPg+hVtHnfJS7X2YXIXLxdXB4/pYk/Co51+ztKVmNp2udzMdLboebdG+XKffQVQevX4MUb83Axvfhw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:37 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:37 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 04/16] phy: lynx-28g: move data structures to core
Date: Tue,  9 Jun 2026 01:16:58 +0300
Message-Id: <20260608221710.1572971-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR07CA0146.eurprd07.prod.outlook.com
 (2603:10a6:802:16::33) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c3f2081-f7cc-4219-af9f-08dec5abbf2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|6133799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: SYIS7v8nfKSltckcVp3vdVaDJxCSRlmzQy8GCewJ/WqCZWyL5U9SRMQ2QNFM/a9P/Ermg2uIhUI8i8YHW8iqIGi6R0US27+uEypOjnt0Z3loeShXswR0lSED1Kk0EhbcYPpBiRqwVeab8LBpimQgNZI5c1oYLfqsTIueiGiBRxbZSJX4B3z+zrgChjxFiZoqKaKKTCdJN+3M/oaQN+yQ9p/rhOFzi9QMPiz3c4HmcwxTw9urKsQmB+gc9erG9XLxblzhQ58qbMXpiA4ccJvdQ5I5az2SdS9V/TvB5rVhPmtIysdynfST6L/BJ2EsVIa/qSL1d8dNEuHtMhmWdXgMr3fS1PmbAYO1uYZvAjnPj35GQ30qCs7eHUKsRnCzA0RB4CUGQUAedWnPTjNbVtZDWTz1fJEIb+thJoamLJTxIyhpdkZaNFcstrJYdViz7tIiiCklwBNzjGW8hUUEtcY9C0uBjheFtJJGz5tjsDP4SB1Gfnd7PM7DH2lW43kHIj12XMcpqsKz8BsIoNJ3jED2mnWu7TrVTc3pAbhGK/ESP5VszEioU+QU0LlD22ykgSKOZ4ed0Z8TlOaXKD9NtiVU+pgs5utxjp9wHU1smkwUvUyj31Ec/xLxh3J3Y2IltvrdlIAJvx/l3/fFkaF7oscePWxWTOtNG5d+8JLOp7/NduD/ZUNv1zRXPrj6buMDUzfy
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iAxw8mxQmJCwRsH3iLNkBPf4nT2dwm7nxU4j9zOD0Lr0rXGHBLns8m1eCF8N?=
 =?us-ascii?Q?fW4TsWw3SRvcjaG1qw/hFgRBNAHHeIR2GNzQKowim0b8oWEKBjG1SOAeJr9v?=
 =?us-ascii?Q?4ZoCDs+Ij+ZdmIUnchimvTc0I7lmlSDsQWBotM0a+TSJOuwwC6NLRjsgbTIo?=
 =?us-ascii?Q?w6skz9/p7YsuriMPSS99rjjjAThT73HK5WEsmuGgh6U6YV3leUvVnrc3Apii?=
 =?us-ascii?Q?YD8iyzY/LtvbrID9/f4X6bCrtN5ksUfJNhJ7UZUjdT4YSQri3Ix7ejm/a/6d?=
 =?us-ascii?Q?7eZHXudR4MgI4dBzv439kC/QyhUM3DDcRJzbuvBrQWyQjOpH1VdYFmD4Whus?=
 =?us-ascii?Q?q4+YWA4e70bksElmMICh7Iy7vvYIeyn/lkfCEABiBlUSzZauk3awzx8HY8oy?=
 =?us-ascii?Q?RiBjE8o2MNzv5L67nfgIH3Tc54w0yZ97EsxgW19xAR7F08gWz+DSd/XeC65Z?=
 =?us-ascii?Q?lBeestMZ+vCiE44kBi/5Ht6GxjGcbPJdQdRXOqdDG1X0RxdJnwyUbD7SRLwA?=
 =?us-ascii?Q?uJzHNxK9QNpmNAEGP8g8yGL/8UnTpQqhE6toPfETb9sbrbRQx7WTRp9SagjL?=
 =?us-ascii?Q?8GZ64EHlu1SkR1tThOxLF/XL7xoOZcwwSQ3eu5pLvhjOVbPw2uamzcOPyLw8?=
 =?us-ascii?Q?gouDtQRUCA8owpz4zhIlPH6P7ukxPJdJUgcALxVdmChwCQYI6+nW8xpfjZiI?=
 =?us-ascii?Q?FBGdrDJSTc8HNIY0cUKh1zjjcObY+LH0HqvBLEXPGrGi254nP2DAHJ2gmgBl?=
 =?us-ascii?Q?mYiy/7ONQ/vzPYDr9xF52fPckmOwhThqMj6EucoJRyQyDau8irjW79o6iRgq?=
 =?us-ascii?Q?RuyAsTuBJg/Sf9cnqh5op6hqs4L6k5nhQvzBaTjkNdSGABDaqrhvmUOiueq5?=
 =?us-ascii?Q?CwEfwMvPFmWdpk/LkU6g2wACeUczWcAy5T5hLlC6sbnFpA6ptQCeiGoiPpVX?=
 =?us-ascii?Q?e9mQ9tizrpBpyPmvJmbGYKcZ+wz9K4x39Uj0wJVMGUAAovOMxdPZlo9NWjNt?=
 =?us-ascii?Q?6kd2n4hTgZ0CEdTDf6Qgspt/JQVKxAP+u3pCy1Seqa8DdcNcIPbRq7p7xv/L?=
 =?us-ascii?Q?pExITW+j+wExSZZhKlZeheiIzs0EUpS3VgSs2/JYXXE76t0BFOH37BFCJkMv?=
 =?us-ascii?Q?YdJu5refqJnDOli6I/3KF5b17N57RMdswsQ6Z8CznVsbTQqmeYnHzXY1l/2u?=
 =?us-ascii?Q?iR8dYJog5IXIpV5ecFKiZ4cNx72L86Td2UP4Y3WtRMEe2/a5agsvLlJONKJr?=
 =?us-ascii?Q?HbaXHp1Y+s9U35Fb8vraYc+vUEdSbIb1Brsp3np3I/3BtwnNv/Sst31DM5A3?=
 =?us-ascii?Q?N8JUmpi/vVwEsdgDc8Ym7E7awPXZ6TcaPTO8FMubyU3ovddxfD41NprtFQhL?=
 =?us-ascii?Q?smAU7YzI1SqXKSRVU3vkD3aLKWUE8RvjecjfwYcqKOvCZhVYs5trMosOhj2h?=
 =?us-ascii?Q?Jdzo2uWt07Gx3kSgwCu+Zq7HcrL/iXxTuhi9jzhZ/SXL0fld+U/20tYjTOpK?=
 =?us-ascii?Q?166b7pGN126RXxEpGtoB/IxZC0iX2j3GBoXmimEzOpx6oq2nr93D//qIcAO4?=
 =?us-ascii?Q?lnKI/QHa14tQoeZwlb3EQLS0irFM7R2omEaLvtsBmV4nHMYJ8S/PyNOkS0Aw?=
 =?us-ascii?Q?Ik/DLvItEN7QDuuOaq7HzQ2t2OG4dc7igg49zbMzElwov+7Di4oZLlwiYc8J?=
 =?us-ascii?Q?3NuWvqPEuUpFxYawL1SQfi5VOMIAmdJ5Ta4fUyEEs2ggXmyBHmwPE5b+07iP?=
 =?us-ascii?Q?E80aPF86G6pjD2LtMlTF+dCO91+4M4LlpcCnsh6k7gYBTCgsp9DX?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c3f2081-f7cc-4219-af9f-08dec5abbf2c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:37.1789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oalcXZuFO5/qvYPpgMWO0iZT4esniGLE6R2xEc+W09YGdd7uG6vE6OBg5z+u3KMC/O4KklAbpMTspn+kmAsPNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151744_014860_FC37894A 
X-CRM114-Status: GOOD (  21.52  )
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

The goal is to avoid duplicating the core data structures when
introducing the new lynx-10g driver.

We move the following to phy-fsl-lynx-core:
- struct lynx_28g_pll -> struct lynx_pll. This has some
  hardware-specific register fields which need to become hardware
  agnostic (the PLL register layout is different for Lynx 10G), So:
  - PLLnRSTCTL_DIS(pll->rstctl) becomes !pll->enabled
  - PLLnRSTCTL_LOCK(pll->rstctl) becomes pll->locked
  - FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1) becomes pll->frate_sel
  - FIELD_GET(PLLnCR0_REFCLK_SEL, pll->cr0) becomes pll->refclk_sel
- struct lynx_28g_lane -> struct lynx_lane
- struct lynx_28g_priv -> struct lynx_priv
  - field lane[LYNX_28G_NUM_LANE] has to be dynamically allocated. Not
    all Lynx 10G SerDes blocks have 8 lanes.
- LYNX_28G_NUM_PLL -> LYNX_NUM_PLL. This is an architectural constant
  which is the same for Lynx 10G as well.

To avoid major noise in the lynx-28g driver, we keep compatibility shims
(for now) where the old lynx_28g names are preserved, but translate to
the common data structures.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v4: none
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 135 +++++++---------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  23 ++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  64 ++++++++++
 3 files changed, 129 insertions(+), 93 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index d3f49d96340f..570fa74daba0 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,7 +12,7 @@
 #include "phy-fsl-lynx-core.h"
 
 #define LYNX_28G_NUM_LANE			8
-#define LYNX_28G_NUM_PLL			2
+#define LYNX_28G_NUM_PLL			LYNX_NUM_PLL
 
 /* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
@@ -43,8 +43,8 @@
 
 /* Per PLL registers */
 #define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
-#define PLLnRSTCTL_DIS(rstctl)			(((rstctl) & BIT(24)) >> 24)
-#define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
+#define PLLnRSTCTL_DIS				BIT(24)
+#define PLLnRSTCTL_LOCK				BIT(23)
 
 #define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
 #define PLLnCR0_REFCLK_SEL			GENMASK(20, 16)
@@ -269,6 +269,17 @@
 #define LYNX_28G_LANE_STOP_SLEEP_US		100
 #define LYNX_28G_LANE_STOP_TIMEOUT_US		1000000
 
+#define lynx_28g_read				lynx_read
+#define lynx_28g_write				lynx_write
+#define lynx_28g_lane_rmw			lynx_lane_rmw
+#define lynx_28g_lane_read			lynx_lane_read
+#define lynx_28g_lane_write			lynx_lane_write
+#define lynx_28g_pll_read			lynx_pll_read
+
+#define lynx_28g_priv				lynx_priv
+#define lynx_28g_lane				lynx_lane
+#define lynx_28g_pll				lynx_pll
+
 enum lynx_28g_eq_type {
 	EQ_TYPE_NO_EQ = 0,
 	EQ_TYPE_2TAP = 1,
@@ -456,86 +467,6 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 	},
 };
 
-struct lynx_28g_priv;
-
-struct lynx_28g_pll {
-	struct lynx_28g_priv *priv;
-	u32 rstctl, cr0, cr1;
-	int id;
-	DECLARE_BITMAP(supported, LANE_MODE_MAX);
-};
-
-struct lynx_28g_lane {
-	struct lynx_28g_priv *priv;
-	struct phy *phy;
-	bool powered_up;
-	bool init;
-	unsigned int id;
-	enum lynx_lane_mode mode;
-};
-
-struct lynx_28g_priv {
-	void __iomem *base;
-	struct device *dev;
-	const struct lynx_info *info;
-	/* Serialize concurrent access to registers shared between lanes,
-	 * like PCCn
-	 */
-	spinlock_t pcc_lock;
-	struct lynx_28g_pll pll[LYNX_28G_NUM_PLL];
-	struct lynx_28g_lane lane[LYNX_28G_NUM_LANE];
-
-	struct delayed_work cdr_check;
-};
-
-static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
-			 u32 val, u32 mask)
-{
-	void __iomem *reg = priv->base + off;
-	u32 orig, tmp;
-
-	orig = ioread32(reg);
-	tmp = orig & ~mask;
-	tmp |= val;
-	iowrite32(tmp, reg);
-}
-
-#define lynx_28g_read(priv, off) \
-	ioread32((priv)->base + (off))
-#define lynx_28g_write(priv, off, val) \
-	iowrite32(val, (priv)->base + (off))
-#define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
-#define lynx_28g_lane_read(lane, reg)			\
-	ioread32((lane)->priv->base + reg((lane)->id))
-#define lynx_28g_lane_write(lane, reg, val)		\
-	iowrite32(val, (lane)->priv->base + reg((lane)->id))
-#define lynx_28g_pll_read(pll, reg)			\
-	ioread32((pll)->priv->base + reg((pll)->id))
-
-/* A lane mode is supported if we have a PLL that can provide its required
- * clock net, and if there is a protocol converter for that mode on that lane.
- */
-static bool lynx_28g_supports_lane_mode(struct lynx_28g_lane *lane,
-					enum lynx_lane_mode mode)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int i;
-
-	if (!priv->info->lane_supports_mode(lane->id, mode))
-		return false;
-
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		if (PLLnRSTCTL_DIS(priv->pll[i].rstctl))
-			continue;
-
-		if (test_bit(mode, priv->pll[i].supported))
-			return true;
-	}
-
-	return false;
-}
-
 static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 					     enum lynx_lane_mode mode)
 {
@@ -545,7 +476,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
 		pll = &priv->pll[i];
 
-		if (PLLnRSTCTL_DIS(pll->rstctl))
+		if (!pll->enabled)
 			continue;
 
 		if (test_bit(mode, pll->supported))
@@ -553,7 +484,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	}
 
 	/* no pll supports requested mode, either caller forgot to check
-	 * lynx_28g_supports_lane_mode, or this is a bug.
+	 * lynx_lane_supports_mode(), or this is a bug.
 	 */
 	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
 		      lynx_lane_mode_str(mode));
@@ -564,7 +495,7 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    enum lynx_lane_mode lane_mode)
 {
-	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
+	switch (pll->frate_sel) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (lane_mode) {
@@ -879,27 +810,33 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 
 static const struct lynx_info lynx_info_compat = {
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes1 = {
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes2 = {
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes3 = {
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes1 = {
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
 	.first_lane = 4,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes2 = {
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
@@ -1168,7 +1105,7 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 		return -EOPNOTSUPP;
 
 	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
+	if (!lynx_lane_supports_mode(lane, lane_mode))
 		return -EOPNOTSUPP;
 
 	if (lane_mode == lane->mode)
@@ -1210,7 +1147,7 @@ static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
 		return -EOPNOTSUPP;
 
 	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
+	if (!lynx_lane_supports_mode(lane, lane_mode))
 		return -EOPNOTSUPP;
 
 	return 0;
@@ -1262,6 +1199,7 @@ static const struct phy_ops lynx_28g_ops = {
 static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 {
 	struct lynx_28g_pll *pll;
+	u32 val;
 	int i;
 
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
@@ -1269,14 +1207,20 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		pll->priv = priv;
 		pll->id = i;
 
-		pll->rstctl = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->cr0 = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->cr1 = lynx_28g_pll_read(pll, PLLnCR1);
+		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
+		pll->enabled = !(val & PLLnRSTCTL_DIS);
+		pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		if (PLLnRSTCTL_DIS(pll->rstctl))
+		val = lynx_28g_pll_read(pll, PLLnCR0);
+		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+
+		val = lynx_28g_pll_read(pll, PLLnCR1);
+		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
+
+		if (!pll->enabled)
 			continue;
 
-		switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
+		switch (pll->frate_sel) {
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
@@ -1440,6 +1384,11 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	if (priv->info == &lynx_info_compat)
 		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
 
+	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
+				  sizeof(*priv->lane), GFP_KERNEL);
+	if (!priv->lane)
+		return -ENOMEM;
+
 	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index d56f189c162d..de45b14d3fb6 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,5 +40,28 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* A lane mode is supported if we have a PLL that can provide its required
+ * clock net, and if there is a protocol converter for that mode on that lane.
+ */
+bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	int i;
+
+	if (!priv->info->lane_supports_mode(lane->id, mode))
+		return false;
+
+	for (i = 0; i < LYNX_NUM_PLL; i++) {
+		if (!priv->pll[i].enabled)
+			continue;
+
+		if (test_bit(mode, priv->pll[i].supported))
+			return true;
+	}
+
+	return false;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_lane_supports_mode, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index fe15986482b0..f0cb3e805235 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -7,18 +7,82 @@
 #include <linux/phy.h>
 #include <soc/fsl/phy-fsl-lynx.h>
 
+#define LYNX_NUM_PLL				2
+
 struct lynx_pccr {
 	int offset;
 	int width;
 	int shift;
 };
 
+struct lynx_priv;
+
+struct lynx_pll {
+	struct lynx_priv *priv;
+	int id;
+	int refclk_sel;
+	int frate_sel;
+	bool enabled;
+	bool locked;
+	DECLARE_BITMAP(supported, LANE_MODE_MAX);
+};
+
+struct lynx_lane {
+	struct lynx_priv *priv;
+	struct phy *phy;
+	bool powered_up;
+	bool init;
+	unsigned int id;
+	enum lynx_lane_mode mode;
+};
+
 struct lynx_info {
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
 	int first_lane;
+	int num_lanes;
 };
 
+struct lynx_priv {
+	void __iomem *base;
+	struct device *dev;
+	const struct lynx_info *info;
+	/* Serialize concurrent access to registers shared between lanes,
+	 * like PCCn
+	 */
+	spinlock_t pcc_lock;
+	struct lynx_pll pll[LYNX_NUM_PLL];
+	struct lynx_lane *lane;
+
+	struct delayed_work cdr_check;
+};
+
+static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
+			    u32 mask)
+{
+	void __iomem *reg = priv->base + off;
+	u32 orig, tmp;
+
+	orig = ioread32(reg);
+	tmp = orig & ~mask;
+	tmp |= val;
+	iowrite32(tmp, reg);
+}
+
+#define lynx_read(priv, off) \
+	ioread32((priv)->base + (off))
+#define lynx_write(priv, off, val) \
+	iowrite32(val, (priv)->base + (off))
+#define lynx_lane_rmw(lane, reg, val, mask)	\
+	lynx_rmw((lane)->priv, reg(lane->id), val, mask)
+#define lynx_lane_read(lane, reg)			\
+	ioread32((lane)->priv->base + reg((lane)->id))
+#define lynx_lane_write(lane, reg, val)		\
+	iowrite32(val, (lane)->priv->base + reg((lane)->id))
+#define lynx_pll_read(pll, reg)			\
+	ioread32((pll)->priv->base + reg((pll)->id))
+
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
+bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
