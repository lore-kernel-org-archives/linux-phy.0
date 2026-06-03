Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E0C5CD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7GVEtjZdiMNMxA/Mces8QVS9JDttnt3zDPHEuKaECQ=; b=KMbPxo7q3aSrCD
	ojzNMZdW88iJM84dJHto4RypSyPb4nEj/gkYH1CmUDfXgZ131s6Y1s+tcmtnc0GFCvQ4bnEsfpMac
	tTvf14DvAo43VgMVlwDVKWHDCOgcI1afI68G8fqHNifOewmUTytJ/Ux+omFo4CILTm5RqDsTrOr75
	oaU1AGIRgtWi6wW+iaRJgczE54ZPi2mAy55WFnb2QH2GyI0yY2asFfK7nGMe0wTY2esJuQMuLODHr
	khrzbFA04mdml/+i0ZxIEBCC8x1UFkd4dy9ft3eDDt6hgPbmnWgclJzxsAjphdo48aZidJ3gsvTWj
	A/QT7X+IV+qIjIheDGCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVc-0000000FA9q-0fUF;
	Wed, 03 Jun 2026 13:19:48 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVZ-0000000FA1L-1nUI
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6fe6xYcR8iR5Zv4aQpUGQALgqJv4q1VF+REChaTz1VwZc/JNo4Mg9TkH3yZ5BC7PXNXuV20d1mCNEhB4ID9e7QzjFfEy2c+rqxBY2vgRIVAiymsgZaQKx9F4VfgGEqIdMI8aveVQ5Tkd+RBQA/WeTJAaILWaWS54oQtxKc9kUcABwPg4e+Sxp8AhYP/m48VEO7U7Bwl+oX5Kwn6+qAtSI9nw+dJcVZ45DfrcYRj9w5NeLBxVzOUkvSE/GLyYIpNe5xojXalY8VHVP/tVOyMSb94L7u5qJ9iB7D/iVsRBsqGZRGPRot31jWgv+Nq5IA1Ce9FMkljtRr4h2nk+MKRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fJBYn0SBa2zAiShY57WaSvQBdvSxaTe/5sU/paeeL5c=;
 b=csar8RX/DJeOPgYiKNa6bKyd1IixZPkswBFSF1qs+pkK+Qs9E6TA3p17AjVCn0BLZgSn6FD4+qXyh3F4PFiG8Uf4xgitHvY5Y9Rfh7zyhY+5rOmNwq35M/d9J0slH0tLNf0QFiOgJS5CIJvihWhjMbb1xdQYeKf5o1etxOGCgk6g6he4rBnq9OpQFRj1b6iEtKEXJDHjT6U9b6Gs18DzZGqlaf62V64b/r/G3rDlSPESnbI6v894hN+NKUD+8YpSeEVc+EdJ+aXNEbyYc4IbgxdBwKOf8gQIxjIpt5JIVyGxZqHOsPNpZcEs9stCwSRFGXfk8GAnbJBnAnurork9PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJBYn0SBa2zAiShY57WaSvQBdvSxaTe/5sU/paeeL5c=;
 b=NZCu+qNXosOO/SRUuII6r9I7BvZ2SqZh/qGUR1tiYY5xj3udntKJ4zwWMccFfEaITL09Jflt2dP2YL/OgnwvoAzjqmYOj9vpe796x+oqZhtxWMQhti7BOZxuDdP2C47uAIH184WWLwLYiZeYztb5cBamvXsW+rpWrLyco4nrzwZHhFE+aW79+O7M5WYPs0TzJvRbxUxZ6OtusSFzkaaWo2O3E7SJJtEDqVfCykuv4jzPRgNnJzZDIo8VA+pQLhL8zQPovlKFsnzNFnA6v2Rr/khPl6QRwvtsRlB0AH7+6VwG4VHHsHCOYtmMRS/AfRU1f0CoEagRNXKyzfggRGilpg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:40 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:40 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 09/16] phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
Date: Wed,  3 Jun 2026 16:19:07 +0300
Message-Id: <20260603131914.503053-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM9P192CA0030.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::35) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 4be68660-e841-44ba-6569-08dec172c4a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|6133799003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 02xC0+nVszWMi28Xs712Fzohl1iiiAl5wPcteULNQTp4teXqEv4hHPwckjvUtKCvF4ZZoJayrKtAnwunf5ydz9hlJ9vn8tfdaV2jRz9Cy5P524EoqtpEic/XObAJj1T9rnLu/5uNL040dSNgCfMIEYA3EPgnEYYGzb/hvPhDiK0AtjIHqGXSconzlCMMa+V8XwjJe1H7x2v2UDfXwLMozWWPGNlq4axFFYkoaaOn3Dz1s8Rq4PqU0VVk+aDqPkkM3vD2IdTIeMPbkAX3qsMzSADc/72SkCLG003IXX1EIEOEhO4cygdtoOHLGR1icSO8bqtq30SqtMnp92uvshDhA0TiNOMXvTn+PF7iB8sTLqGGesn0N5gbVXMZgMRNTYeRiNOhMKs3a5/x429a9bO5LAd97tSjXm2YWnFILKxiVV3pHyWK+x6scC3GJCEXqldpT1SS3VKq0UuNKJtS4ysrCoLn/ZWlVt3J75uafK6xpGnuoU8fzhP54KWAGXm0DWAHtpRlVXgHxC8vvr5vwtZchzv/cLe37qn1up6/NqxLBzLAEU2smKvRdEMaSFN0laJbEJwG7G65mMjMGQl4wefc11+7tA8XxKJnCRKPuTr1XpnA9H4VrzSFGQL0V0FJ57rMQJXMGqaUXogupuEufgrcb41Pd0S6uJfVb3YYSmOTZ4m+G1anlZqlVtos7cJYV/eE
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ux36tAQx9DcwFYLeXSlXsxoWOOtpUNcdBEZeYg5T/4UA27qdfs4K9epJ7/Xx?=
 =?us-ascii?Q?tmA7jEXJJkUL3u5Nm0QX0OWga4AV/qC1RWHgwZIlqiE3v64fNmwT1d86ynqf?=
 =?us-ascii?Q?ZfqLZWqEYYVRLNrD9E4LG4dJKEl6VX8o0R10/i15xoNTkOFVhvtT1QeejB+f?=
 =?us-ascii?Q?5tsE7zAElQAklWTvt5Cz7517xqb9wAl0wB+O8RgYbMltXndqMG0kA0Rhj6h7?=
 =?us-ascii?Q?WWtW+Bg7Sm5fxhBu1Wj1Mw4JmDq7vg5rqBhRZ5pcocRsiU/mzFBzbmlWFQOX?=
 =?us-ascii?Q?hv55wiwkuBut2Ud7/CZY7b9DqHjIv/wkz40g4T+COprBZlTu32B09ARt4CcA?=
 =?us-ascii?Q?s70PLOU7xyXXoKKPTMBfsCeP445d5jOklLgmju+lxbUfNKpyuvM2LCjEdXFl?=
 =?us-ascii?Q?l/b2PKAG0XMqqzV0YzwU4j5nRJVCk3yq+HqUT4z1DVZpj7L2NYoulyEfbdKl?=
 =?us-ascii?Q?k6uq5DggsP6kwZMgeaxmN+M1KMUP90uK+c92HI+VG7Z779JLBPXqb35usg1l?=
 =?us-ascii?Q?1y7l4+2lZRccQvUuANy87PT+hOqWGTX7bak7GDglD40WRESfEHjfhQPD/Qhe?=
 =?us-ascii?Q?Y83r/njqd03YV7a/qudQ/Ni9b2nP4vDgkY+9gZVeU4YPH6a4vlcEiUDTHKgi?=
 =?us-ascii?Q?lciUo7TRoDrY/G2y4saXYjT9DKowgpqY09xow1+q53CHx3rBEObVFUUNWpTP?=
 =?us-ascii?Q?345ByzmIALuaOuDH+73+8L0swWorNq3jDURHYmGRsvikWknqfNIsRyT5T9HN?=
 =?us-ascii?Q?jEUc24UdoUCdywYYT7MnOf3wfgksQV+/7vJOy4vHUTkhXJnDuUxAME887/6z?=
 =?us-ascii?Q?TcCXR+UjC8ocTfU5mdxeMwDIkTYR19jnUbrz2yUmOyRrK9yPY/iv9LayBrYl?=
 =?us-ascii?Q?o9+vZujR+3ZdMuARzepbIkgyWmvat7bu/0CRFicIEgjuifsS7DMtw09Jqzis?=
 =?us-ascii?Q?iRDhfje0Lu3aDaIY06CZ+hLo2w7OaXkbRnZ43/+O1qIgLNJJFHvZKbjbE22I?=
 =?us-ascii?Q?Ea2ED99xW5Oavo5Xv2jidV9wpYuCbcGJSOSuHpRVVP3QBoFVrNKVQKis6aPc?=
 =?us-ascii?Q?oRijPlQ73hRtRQ1P7sT+qvMUKrbh934BKxF6Eys0ntlPbepNYWaEDeQ1ZKxn?=
 =?us-ascii?Q?Wuv6X+u0kZdPMPURMuW4kXoKyF1t9aE2moRlTsLBIExiOqA9UbWem9BYAWac?=
 =?us-ascii?Q?Et7zGOuBo7+q3NIGCip6XAVS0wv5N9GjThpixYgPD5b1vgoJMdzrYqpRZxpo?=
 =?us-ascii?Q?VFkByA8Ovi9KoQAgxNo2qYSZ2r/wk/wMd64IFqRoVaARQRZ8ym59ZPQ3eewz?=
 =?us-ascii?Q?INcw9ZvujmBvRr7B0MOyvq4NbZodaKv0hTmQnh8IVpLm1z+tGonVt0FVy62k?=
 =?us-ascii?Q?m2eH9bK53v/8lecGTpVIzpt1X1FSTkvYOCYUs0r/YZZHxBXMwAOO5GCeIehh?=
 =?us-ascii?Q?SSbMukeNm6YN5wWk9kg3t/N/btCUTBB3oMcQvqCySc8fMvqmDVHvZwKDm7pD?=
 =?us-ascii?Q?AGfJ/dqGgpcn32rFD2rxDshK6lT2PkLF1Q7WVHyNK+ZgIxd4rFXFpl5IMKM+?=
 =?us-ascii?Q?ksXs+RNTjiBRBkPd2s74ul4tz3b0UpT5wqwxiwQVfL7yg1J26y+FFGCQv8Pt?=
 =?us-ascii?Q?ZZzjM/k0xWt0zLrHvZvxzIWjfAwqgEgFgNmO3nnf/sFpsbStPgIQYe8jWa16?=
 =?us-ascii?Q?rFNU6XoX1UJPY+GGnkFhmaU2cnzTUIjUkCpyG0wx/oFyx3c/A+toyje+w3oL?=
 =?us-ascii?Q?S9B67xTj0w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4be68660-e841-44ba-6569-08dec172c4a0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:40.6986
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hB3wUAhF15G20+tDb8ncaWXMIrAu7mHI+VPUghcuD+VIt+SVinIAcSxcjEztfEO/B4E7pWJjBXItyZ0WI8p9bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061945_466860_17264E2E 
X-CRM114-Status: GOOD (  16.74  )
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
v2->v3: none
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
