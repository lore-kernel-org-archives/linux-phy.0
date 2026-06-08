Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF4FDCD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xq0lbO5dnhlslS3veWHr4HLdQZavisQl10bRXk4UPrk=; b=YU5pz5sO2XMrrl
	RLfhdVL9Csuxy/HmMF93Fw0irtdjSRcb0gAARl4M0N1u94h19845YOf7Db98L8La2X4JZUFdMhE/l
	JcSAUxr/CkmNIsZnyCmFVMegN3CBnjlNwHc+dR6q4MM1A3IgzACcbT/yYKd+fqyDNKLO4w6YZLziD
	+SkDlM3x5XDT0A5VzzSi8lv5RLqgdSJWnxs3ki56d9oHCJx3tN+yS59ReAj53F2ATykodgJXNfkZX
	2RG2UEcROxb4q3n4gUKqJVD+WDMyp0MzkP0aCZioYVn1uLmp83tf0z/AmQR4QepceLk9Sj1EAIw+n
	mpotQZSFfTgpyobSrRRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI3-00000004U9U-1nKz;
	Mon, 08 Jun 2026 22:17:51 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI1-00000004U7x-3d5C
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eKdis00Fw0u0JolfiTBc04+F226EFglGzZG4mBlILTDqCrFRrWENc1CaWN6GywjEeq1nbzN1FzdnDjGKMjDVNFRnEnrMaE6FzPvSqD6OJw2PwcRw5y2FvaLZAUWGNggK+QXvN1Hfeg9hvSn6XnUXDPU1YMI4008CILsU/NPGRxE61v7dC0gItGo+qzMJjv77MG5KnTIDhyQ/1KammBzzkaBOW3+fuCONVnqYh0bRdUS98+c8W6bYoKlYDHznQMrqxRvs/cgmcZq1/jyBqNxYFXJZcQBPIcLqBRObcYinD9+s4fEK377Ky8JkZe91DaiM8MjxpfpXwNW1pwfJTw0UpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ckgs3x5iPqAyJW+wjRjReWGHhnSUCJml1jlRFFwRczI=;
 b=yqHsQBPIaA43/zKfHBZ1OL867j5h5dUO/WuQH6I7i6bHiqvGshfQFMwFcxDkx2mbNXy5oIOtT8lPhc/OallQCutZU4xm5Q0lXuth8Zpt2TLtHBGj+TCyCqwMtm8VTCZhEC5kGU/IEDlsUSnUyQK8ebsO2gjGIQSgBIoC/H+6a3DWU6um7GHbMsT8GwCh2sATpaD1A9R9vk2uPLjDPmGBST3Qmm6n4kqifLIz1Bhh6PQCqxeEePUbPQmG3oi9Zp6dYpGr91cH455j2DFVuXh0g3qXdsyvSsTHtGEQ3tLjZBeQNozhK1Cg3Baz1pEeuPaZ1+LKYU5LI4RwYjQTmIFHxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ckgs3x5iPqAyJW+wjRjReWGHhnSUCJml1jlRFFwRczI=;
 b=bsNI/svh1wF8smXPvEiopdoKE1X+FTwCsGzdQkbjbu/wxAZbRZMW1YhxaV/pgr3e4nfVOoCgJS1RKVITTNRY50Et0lJyzEJ2FZthqt0rWBgINZv0mIpRtGqGC8vlGcaho6qLNvoN0xif1zaPa2fGM2HVIDwS8fsFCQ70XXJNe1RmF6VmTXhhhxEidVKEJBepaUhNzpYlsbEL1BBtqXwDRHaGFSMIn5wTNp6bcJTdYMmoDjoD/ZLUmRBELTtCGeAuDWsZIXq8JtTOc2KGFUkZvS+Gox6ZrdeZgTiSc+wl4KY85rhr8IANB2I2oNgQHe5av9YAZftGr+aPNmS5qnLCgA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12070.eurprd04.prod.outlook.com (2603:10a6:501:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 22:17:46 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 09/16] phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
Date: Tue,  9 Jun 2026 01:17:03 +0300
Message-Id: <20260608221710.1572971-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR06CA0186.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::43) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12070:EE_
X-MS-Office365-Filtering-Correlation-Id: 20b17875-2774-49db-e13d-08dec5abc449
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|10070799003|366016|376014|6133799003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: kbIQSPfOCHbZnqDY9gixvfK/DAy3M+/TNvtqnOQL08/oNMzGjhXzjMlfk6Uzpw4vGut1xoVR0EW0Av5q3A1yCCv2n0b/VLjP1zRi8PxoXHWS7EqPz7AM/Ze0AvX8/ESZRGDncPH9P8nK33a33Z8LzQ4y4X/mEUrh1Ql/io9xy9l4B85PL+WR7rTW2tWaBqBeYDU/HXk0cN8LmyiSLsysr5E6OdLDZwaqKxeTl6sfmiCbPbiHid9wcPxQYNbLz608RI+PZ8F4YX8JuRNaWD2TmfNbGUg2+KwD92e+BhVvxHqkmSP+UQeDqCZA7DcuZd6WiStINCAwRGZQtt8MrqD0a0IKlvZjEBbc5SLbVi7W5B+PjRWuU+6PASVJXKJjpAkTlIGTbwCYOeemlgbfM4XghT7hZgoGjQtmY+zmkLDeonwRRRIdkja7GIJqXAOYc4LY20FMq4aTLnN3rXkIdOwBGSGU5rrBZ+p+g6dAE7j2ssxE5nhxPY6DnSVN8WJ52mYHPDR4CzNIxqNJhwKJXJ0kbSJlK0aUkHs+LYJrseNBUyZeKUAqUI0NB/IXATlfB1zTWV3vfoU8fkR5yKOxwwk8de1BlzxyLaWgdtbUdpw02X7qj1AtDqdGoA/J2S6McdVB+TzRuheRRtosWWXxsUElaFpgYJyPrTaZc6Z5SrAvE+VaxZfxUezVuibFYgi37w6l
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(10070799003)(366016)(376014)(6133799003)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6oA9+03AMmL98IxNOEDPIj/7kwEVyebRUfcgqvTcidvFWzsDaxDPjIakD62J?=
 =?us-ascii?Q?5RyO3RgY8w7G48c9RzEq9MUsW8ASIajIYm2CZBPL0Wmsym/L6AyhqzXLEHWY?=
 =?us-ascii?Q?43KdrD5coFI6y2ITzA6BJgAbiU7du07vSgcum47iKsIQRRPexJUXRm0S7nDm?=
 =?us-ascii?Q?F3qjA7zb7o+SPoXQ0NzZnUTvCbgBohn5mb6W/gGu/5Se5j5dRvqf/3yUaU3r?=
 =?us-ascii?Q?FavdSSMLwRaLB+hrSsUbXjG+xePL67XYwFhNoW3mv9JH42RHCvk51wlRq3Ni?=
 =?us-ascii?Q?d+gjmNKVtroomnQgiynK1HOXWKUff/b9Using0iNhNbspOdIqxnVSCXa8p7S?=
 =?us-ascii?Q?TYce3nUHJmQmJjkdH/OWdl3YcXC7iwfG+LTNG3R/DvZVOMQuRQ2wfZcqYNWn?=
 =?us-ascii?Q?5DLIGbW8LVAh1ZXeBUciLC+JN3d1Ag21MANifu0IjHZ4j5NGN2Xge7EMSJdr?=
 =?us-ascii?Q?yDuKnjh2WgSRx6Xb6fziYrLVOP6pacEpnoJmfbMblhPvH0/p92ysGjMWzo5V?=
 =?us-ascii?Q?1BM6i88zu9xJCni6UJjfwrDtRMDgREbxOhGPzp3LhAZxVLw69ZuCXQ9BcAzc?=
 =?us-ascii?Q?cbKIoXkuQ04QqZJ3EA/3iG3s2HYLuEHllkX7IkLZRnzRHeqHxfucbQIf9Vr8?=
 =?us-ascii?Q?K0M7/mXPjALwGROgHRAALoQfDmSx2DryLnqOY+cS7NuYPpNb+Rtq4xoMyKt6?=
 =?us-ascii?Q?Kk1UjV/88nZCWLbRcCY0uv01Da6kOvzpBiVcfCieRc6vAE28rSTS8JwVebfs?=
 =?us-ascii?Q?C+kw1X6+uweJlax61ugGh8eR1+Z2tU5cZ6iYa2Qua22swR/bYyMJvMq8AOJm?=
 =?us-ascii?Q?DD2Rbt5Wq2FS0+bW4qt0BQeiobFByXDNi14FZKYkc8Rg7Yl+AdKnS+wtpO87?=
 =?us-ascii?Q?Cpw+bdiSwNczkINLiPaYEP4NAjbhFbjexWYihf9hbzHn/UXSDeJVo1/MRHI6?=
 =?us-ascii?Q?T/epQPuM14pKfjFlVw5l7YP1mEsE1dbFJwGHhVFzvqnsy22T3S5ZmK9EvVZQ?=
 =?us-ascii?Q?SjbUK+37VvXtLhmKCBdHZM8AIvylhXmUVDehI4GGW6qwda66KfY63iKPw10j?=
 =?us-ascii?Q?B7NOoPLyJkVyXvf3Fb4jol0fhNwoeJOviNgEptjrdgtHBR54fxHvP9YZbpXT?=
 =?us-ascii?Q?B+Nh0WtnKrJCvqp2hO6SbYNsQP/IMzJJEGKzFL1HxpJkw0kBGuTSnkouHPeV?=
 =?us-ascii?Q?roLCeuRTisDw354a2eguRJUJ2UL1GuXsJrbZqhCm+tzTC0tfbHFPx6e12lav?=
 =?us-ascii?Q?fcXE4bz47zERrJNg6KhQ/DGD2aogXcikJkzdK5XHfENUdo0TuxxMJgMIbyTA?=
 =?us-ascii?Q?E6y9cmF86I1trui9gFwtLu+RynyxKs7eWFmaxo5A7TAM5oWqER4+Tio5B/VT?=
 =?us-ascii?Q?WR0WERt7q+Q2/fPtF+IrCyFjYJlQplzaYrJYsEsR5Wie2/SxcvQnoCoglAuo?=
 =?us-ascii?Q?OmfEo7qLRLR5wmlFHKvbs6eVZnB8vF80oa6dGyMQT/DWn2SN8uW38VAYrjoC?=
 =?us-ascii?Q?7gXrDM5940S5AWS/q1PK2N71fFD6Gy8ahOdbBNducW+kdF3ocSTiqKreWIuV?=
 =?us-ascii?Q?QHNtbJ6CPpTxFSV5yJEYcF5KzjKkzUkQgjhru34ltGtQZqWtS3hQSjEbCgmM?=
 =?us-ascii?Q?2gYtxQtl/CF2J4+yaM8R2HYv6HZMTmpq7hD3oCtj5TZDQFrUUzko5i/gmfBw?=
 =?us-ascii?Q?lha8Sd1/x11Q4emvQ0SyczFJKqHp/0j63Yshm0paDnfak1WsFw2a6BBei0JD?=
 =?us-ascii?Q?qkl/A3hJUV8VEqEJhlGcN5B0LPCH4Mevv2KxUhtTXFWUnxqrfiOZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b17875-2774-49db-e13d-08dec5abc449
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:45.7690
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fr6UqZtSvXsDaNBmEcFu/M13EfhYmxLTzH3MlGMrEafHi9Ud58QQlCIJgyPk2j5tbM5EJn8iY8lWJ3SzZ0vNfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151749_907275_5E42C568 
X-CRM114-Status: GOOD (  15.82  )
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
uniform. Change lynx_28g_pll_read_configuration() to also permit reading
the PLL configuration individually, and move the for loop at the call
site.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v4: none
v1->v2: fix typo in commit message (spotted by Sashiko)
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 73 ++++++++++++------------
 1 file changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index a3fbd31d4dbf..dbbadaa08cb6 100644
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
 
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		pll = &priv->pll[i];
-		pll->priv = priv;
-		pll->id = i;
+	val = lynx_pll_read(pll, PLLnRSTCTL);
+	pll->enabled = !(val & PLLnRSTCTL_DIS);
+	pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->enabled = !(val & PLLnRSTCTL_DIS);
-		pll->locked = !!(val & PLLnRSTCTL_LOCK);
+	val = lynx_pll_read(pll, PLLnCR0);
+	pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+	val = lynx_pll_read(pll, PLLnCR1);
+	pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
 
-		val = lynx_28g_pll_read(pll, PLLnCR1);
-		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
-
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
 
@@ -1291,7 +1282,13 @@ static int lynx_28g_probe(struct platform_device *pdev)
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
