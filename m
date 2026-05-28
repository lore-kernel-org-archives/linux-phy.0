Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0069ACD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaqL5nDIhMNOgYYEA1wbT7Zt12lIQTxB5vJsR5/9lcA=; b=Yb7xTxvyPg2O3L
	JIVrfiZNM6g7fdrkhqb+/ZRhLfXK7TBVq6NanQ8y8wOOKsiQ6G6yvrqIL4c/dHs+ImV/MLBAICKFJ
	ZGt8D7XnRRsoBaY62hTRcSOq/perwbHAmehTsy11hIpzONovSVDow8Zv5TnW8hBk7g6vITzWJTbCa
	HTh4BqbVXhN7EMbgpNFkAb342CO+QDHMqXEnLUZSNm/tbUW/qlnSpvXd6pn7r/00/csyXVgkV/JfA
	DObxuhJjHrbplFgj5znyrg74zU3xfNH07DHIwuXUnUSNABI2LligUe3FAH7JdCQ3eTA1aLlFqEt2M
	lnPV83ms0rhNNqXlx6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTE-000000065XO-3BH7;
	Thu, 28 May 2026 17:24:36 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTA-000000065Mi-3gIQ
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oyrb3ccovqG9URtXXPF0xSOPPOFuTWb59Q5/pKbWkYxSe9QfVo1RNwf6kc41ZEC/KHMDn6tpsxyFoK5ahcvVNMSMsBKkvgcQ4fiPWwkEq/P5jcPEz6m6fa8GQV0iQNeUQlL0PlRTLOrhk12o4Hz1mSbELP/iXqvho10cx+Ojgs75iRwSbhJ3vV8J8YqKatOcW0sDqx942+3iHXa7MEwRwUzpxeXtB4diIjOsRi1v0xwYtTt3buE0NBNwPIJ60kMKuN7xIpNTzhW/NsabozdgGupf+tPUg45S4Pt2jBmpuaVN31TxhDeNabXbTz1CMw0se+9mxjDCNFiswPn+8oSBvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JLy7z01tymfXvEU9q/VmIOnIOYTGfOGzAKQoIpPtJDE=;
 b=f+KndZARPHGEAC/VwjcEUL4UBApLD9z4svuuJSTF6ZOAZwfiTYLMHHtEeLTRqMLZ2BgwH2FLe8cul5KnhL9MKhT3PGHzyXKtiMLpc1m22N9TfKQMLWXZojOsnQ7qezWqV3kV44oIW6Wq3SRnoaJV4hDiwJzOaS7Xww/gaySlRVyr0OBGC3BC+8QrUwFDazyIxFMBEyvbuAScpDOajVmawip7YEDZN8WA8i5AjvKuk+6QPLljd9w9Wl4I+DzNjmyudDFMcV9Cenbo5kiRGEOaoNsxDguhmYfzzn5L4liEfiNtjBdGBoI4wJjj7+6P39X0M6lE8qQhdsDCliicFpbU1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JLy7z01tymfXvEU9q/VmIOnIOYTGfOGzAKQoIpPtJDE=;
 b=VcSRLIfevEvi71MMrU1kHztmtLzmHcY/IpyKQmRljSChl29oBytaXlT8wokOQWvCYU6ytcOgoDUM9O4fiiyfFmkzUaN8vpXxWnOUVbu7fFxC3XkeuOygauWM3GDwM0jZEF2p3FGDiRK5BEyknQplKe3z8jz+OFNjGR7PdVgO2Z2r8VK9ksfgntW0IpkvAstcUT58tFhUbWeSDSfzDTlTecnXqNt21G/LBD6YmwxJarcVVIv19uVG9UsiSqzunZT8gQErbU7Rgjodlr6IlDG6Tn7j2PMDSr0T5UzOesCws18ZwaaUENBqg4xt67s5mlPSUb4fqMegZ0+7IVXWgA4Jcw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:21 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:21 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 08/13] phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
Date: Thu, 28 May 2026 20:23:59 +0300
Message-Id: <20260528172404.733196-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0054.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::14) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 1813adae-7dbc-4f02-6c5a-08debcddf4f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|6133799003|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: YPrLDofJM9FCYtKLxYbCStynt0e64JpNwp+v88IAYy46Sn3MY3g0uoF2/zyzTqTBk92NdCKqG6tXxwIXFC8jkbtowEjxHK61uqlpbzbqCTLTnRkhqrhtV/8oIy56JJicUja3pVoaQaG6UeSUO/CgN0wHTIszKS7LyCEiUK2O99oJsBqdg+3x/jF4ZyQO8xQIKLAXuvQazGgHN7RFFBSAaN+YA/ltKIkH5icsut1BH02PGcOWNJ8y/ilTMLvNDMCF/iPg4SydUEGNrKJ+6ia0BuuJLoQ1a62X7ZLVgcbVUfRUGxZh5bTqs977EJT7+YxgMmADOrKAYNAp9rouvlSk1i0vCOyRoCY8+sFm+THg3hrDAiYZwoLg96HJSkEei0K3tUD95clUu/2MDveff2coPYdGH9XYimuq1VTliIK0Xskbek85zi/yBakZDonrrAKWA9f3QDsvi6haGdHMrRYn7RXDYtAwc6PRAHmPHXd88HxV76IlPmaup4XK0Wzjz0hBO6bQCaU+1MW8MqRbGlhEmv+9ozWmX6KV7vQHL4A3CIXEK7nIN7mQ/8ezLnLvLPXpmdKZSXkSIVcdRiSGJHCxTlCT7RJ1fbz5n2C89aiS6/uoG21zAIsD1jAelXt6cHUTrHlSGVbXogAW3jKfRiFhV/gKgE4u99Ii/FcHZ+SMLLmrV2qOxvAZlAxnOIB3FHYL
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(6133799003)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ihjxuuoFY50Ri9kbBiZ6VoL6DXMuK8JgCffG0TnMAXn0JdTwsCgtNrTjUA7V?=
 =?us-ascii?Q?lkQ0+dGlR3HjKSsf7hKxSKn70gvNfOHjOhGT8VYtKgVufvJynPrKCLBPh+sk?=
 =?us-ascii?Q?6kMGtxuLHkcPpLEkqbOPHdEPwypIp1XxKy/x1fpRl7hhwDnWhQ7tY3p953rw?=
 =?us-ascii?Q?byOlN4j6QJmeUznxEMvnk5KXqkg0JgskzVY2w7Nunzv8Y2Art0ByGj0ZQlSH?=
 =?us-ascii?Q?1xa/mYr4MQLtAjoF1BO1/K23S0IKzqLJ0ph5XB/IA4afBchI9dJayHxVv7ly?=
 =?us-ascii?Q?UhdXUJjU9f3eHJ907NQhVSfQCLhSfKh/VW2sVBC5bjbiq2bGCYhNWfoYOuBT?=
 =?us-ascii?Q?KstFMjKpDhSG4WfXZVF8mxgA6nllijfQTfOsBh4Kv8SDyv77kAVms7hPVoKx?=
 =?us-ascii?Q?eX1/ztI15xeGPLWrbffktDRWFa0OPyway5yqAdMg1ZCAGkReIpj42rSHwyRJ?=
 =?us-ascii?Q?auRBNxR2e34h951l/FbL+oyfOLq5wTdQqtCPeIB93VZAMyZagaPE43f1qBAQ?=
 =?us-ascii?Q?Rbm4PlsptI3qC1RdhJTMUlBLJyx2DvcRRzypxa2URArV6ZZTWztOQmhrq3iM?=
 =?us-ascii?Q?1VwX193Xdt7/S/2q96VZPI1+o4rAgaj9aQKgKq5fF/xYLW5ws0GEqaYo4Q8W?=
 =?us-ascii?Q?JODbGpD0GnF8tUbiSubWOPBk/82Rtzu5xm8rnRkppIEE4V9F/yt3Mntk6VVm?=
 =?us-ascii?Q?kwfHD7OyPiPupSIUDnXNTf7cfWLMnu7jId5mReOFiGx4ABA4eCbLzfhp+J5e?=
 =?us-ascii?Q?Xvuk5byzlCWzPyyuYECftP8NwK6fF31Z1DX4CaxLPl46EvxlzrrKSxdM36r3?=
 =?us-ascii?Q?yucGTYejTDf02ashLb7tg8s1/2/QCKz+J2Q1BoZgnss8WN0q/UE7J4uKoehe?=
 =?us-ascii?Q?seClN+z7V41y7ds1hh9rjTsGInHX/B69pBO2Pz8L/CSUDhkgHv+Cyw7oHPxw?=
 =?us-ascii?Q?vY1fVvrr/O2AHp8UmKrHHW3Xi4GCrKirBOTDiawuTN0QQDuXO07cQrB+t/hH?=
 =?us-ascii?Q?dJh1gHxB6AWDhIuBEyOzBMa2iW3JvBTtVrbH9JQJF+W+0q669NFQ6gtgmUfm?=
 =?us-ascii?Q?CZpLnC4k22lrrrHLquckRI7aZLyJp0P26XnUWQUNr9YNz7CYsXySjG5upcn5?=
 =?us-ascii?Q?GAahbyKnfGzBCykTU43whfU0SMwO+JETB34kgzJRgFj4zYCO9pEO5KjJXRoL?=
 =?us-ascii?Q?vF6aH7FOxu/3CJNxuzJ8mFu5jM7Gm2AjbGf6ZVp1XZ0HrwjOcERsmYzoSKcP?=
 =?us-ascii?Q?v+aGHziWAbN5c8Oh693arHPEpag3OPF9nhudQ2LvMtYTl8EijwHhe2CDq9Jw?=
 =?us-ascii?Q?lttH87FoLIs/kQi7SXqORLdp1OH6qIvdIF64cQ50quYp8xpQueSqxZdQD6lI?=
 =?us-ascii?Q?+o5THsTc3oEFeXf44+EfKTIkfJTNr3s9zS4CQOaK1xLE8p9VmStHqR6xO2+7?=
 =?us-ascii?Q?sAhnk0rNCNAYj/WmTSIXA/na75ywAxMYxrZra5hsjEUuR/vVkkUKv42PYZQu?=
 =?us-ascii?Q?RauSzuEkJmBJaoZLJh/QxoqT9dZdSpp9ZW9zvt/ZqTIPKj9HCFid4RQodUeo?=
 =?us-ascii?Q?ZVEstbbLBmw6ogjP3MvbmLEERK5HJ4ZLzGgq4dH+Ha1nOKpRtvFsKwvjdA4R?=
 =?us-ascii?Q?jL8tBb2vWa3gJPO0SSzjKUhZ+vtHDne1VkyH1MA+iICAiNHxMmu6gxNNb1bC?=
 =?us-ascii?Q?5w9pyKGsHtyXW9F9Vl3RC1r+ON7gegRTFjJVQHApupJLZQ0+xmyB6erkXV+F?=
 =?us-ascii?Q?Vz84sE4t97K542EMiuwhSBR1IVufYyrvV4JMRLYyb28oDWB6tpuG?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1813adae-7dbc-4f02-6c5a-08debcddf4f0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:21.7947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FZDWBrKCCksxvWF21EazGFz3cIyo4LNY8upEQ+iWcc64r2fBQnRLgW1kDTBEb2GWXbFZ0XkxaRhFLf4PyefV4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102432_952386_295D8C95 
X-CRM114-Status: GOOD (  15.94  )
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

In a future change, lynx_28g_pll_read_configuration() and
lynx_28g_lane_read_configuration() will be made methods of struct
lynx_info.

There is no functional reason, but lynx_28g_lane_read_configuration() is
called per lane and lynx_28g_pll_read_configuration() iterates over PLLs
internally. So the API exported by the lynx_info structure would not be
uniform. Change lynx_28g_lane_read_configuration() to also permit
reading the PLL configuration individually, and move the for loop at the
call site.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 73 ++++++++++++------------
 1 file changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index e4c227e9ebdc..31598f0042da 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -272,7 +272,6 @@
 #define lynx_28g_lane_rmw			lynx_lane_rmw
 #define lynx_28g_lane_read			lynx_lane_read
 #define lynx_28g_lane_write			lynx_lane_write
-#define lynx_28g_pll_read			lynx_pll_read
 
 #define lynx_28g_priv				lynx_priv
 #define lynx_28g_lane				lynx_lane
@@ -1051,49 +1050,41 @@ static const struct phy_ops lynx_28g_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
+static void lynx_28g_pll_read_configuration(struct lynx_pll *pll)
 {
-	struct lynx_28g_pll *pll;
 	u32 val;
-	int i;
-
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		pll = &priv->pll[i];
-		pll->priv = priv;
-		pll->id = i;
 
-		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->enabled = !(val & PLLnRSTCTL_DIS);
-		pll->locked = !!(val & PLLnRSTCTL_LOCK);
+	val = lynx_pll_read(pll, PLLnRSTCTL);
+	pll->enabled = !(val & PLLnRSTCTL_DIS);
+	pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		val = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+	val = lynx_pll_read(pll, PLLnCR0);
+	pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR1);
-		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
+	val = lynx_pll_read(pll, PLLnCR1);
+	pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
 
-		if (!pll->enabled)
-			continue;
+	if (!pll->enabled)
+		return;
 
-		switch (pll->frate_sel) {
-		case PLLnCR1_FRATE_5G_10GVCO:
-		case PLLnCR1_FRATE_5G_25GVCO:
-			/* 5GHz clock net */
-			__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
-			break;
-		case PLLnCR1_FRATE_10G_20GVCO:
-			/* 10.3125GHz clock net */
-			__set_bit(LANE_MODE_10GBASER, pll->supported);
-			__set_bit(LANE_MODE_USXGMII, pll->supported);
-			break;
-		case PLLnCR1_FRATE_12G_25GVCO:
-			/* 12.890625GHz clock net */
-			__set_bit(LANE_MODE_25GBASER, pll->supported);
-			break;
-		default:
-			/* 6GHz, 8GHz */
-			break;
-		}
+	switch (pll->frate_sel) {
+	case PLLnCR1_FRATE_5G_10GVCO:
+	case PLLnCR1_FRATE_5G_25GVCO:
+		/* 5GHz clock net */
+		__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
+		break;
+	case PLLnCR1_FRATE_10G_20GVCO:
+		/* 10.3125GHz clock net */
+		__set_bit(LANE_MODE_10GBASER, pll->supported);
+		__set_bit(LANE_MODE_USXGMII, pll->supported);
+		break;
+	case PLLnCR1_FRATE_12G_25GVCO:
+		/* 12.890625GHz clock net */
+		__set_bit(LANE_MODE_25GBASER, pll->supported);
+		break;
+	default:
+		/* 6GHz, 8GHz */
+		break;
 	}
 }
 
@@ -1288,7 +1279,13 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	lynx_28g_pll_read_configuration(priv);
+	for (int i = 0; i < LYNX_28G_NUM_PLL; i++) {
+		struct lynx_28g_pll *pll = &priv->pll[i];
+
+		pll->priv = priv;
+		pll->id = i;
+		lynx_28g_pll_read_configuration(pll);
+	}
 
 	if (of_get_child_count(dn)) {
 		struct device_node *child;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
