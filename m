Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB79CD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBEO3Rh+emqUgJ0AdpZ3ry8VJ5M5lbC5s0qfz5B/lNQ=; b=oUxkque8vKZdKU
	SFVUiXgX3LbOelE9pnER+r9ry3k+Lv3jLxgMbtv5R69MGgzu1XiIOf1lvBXnq65Mpp9KIRmuTtlVH
	9vt8s014k0+ep5NbCRlMEf3/Ta6IJ2ER0OElkPMfTUj3JylosF4jaRHyxa+5F3EMulNEAV0EXlplH
	h9P3puF+1DaPVWPNqu9Lf+IChf89t3wG5ATY57Wmg4G5oS745HzJaqon0dYhbNJTy3AG1csezBbgr
	uH6sUJtQFVxpmKIzvhWLgHFnpsNdmsbiIw27hjizv0g0DTox6rSmFHhOIdFkFOCluBFA7wGzJVIFz
	fHtSPF+U8MVaUMZhOg/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVX-0000000FA7h-0HI9;
	Wed, 03 Jun 2026 13:19:43 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVU-0000000FA1L-2cqi
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEFNaoXXIOl1iWF88hKs2Qm7+VgHa9mTgRihDas1vd/qmB0qfCBctA/6L3pTV5uUBTXvxaKVThQXmQS6OlXN/Z7mc6E6IopoX0VqSz74+2V/F1RLn4On5Om2VXzzUXxfDpbLlfEvm7g4eeZWeh0baQXvupE1sC+Lj7XjWyIjBfc8jt1NpM7vdKm0mQLz91p5fGMKYjhD1TD3txEFKFdZwnCztH998EuKr81tRBbV808l0mavF2v+g4KXfUK/W68xHEUJIb3tO/R1WJp9FNDo8mYmIQDWWq42xiqAGfrjcwCqadwgTFVXvaeSzXjUE9cmB7xjr13GNIrRu242bmoG8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5YP2lFH+uwjZEREAQO3A6uvxj/aA92+TqzhwTJKQvM=;
 b=hy2oM6SoFwIHTVVY+FY/pMaeJP/bkSrOfXKJzV4L/q50suU4M43usraJ7lr/fX9yMjSIcSTc2CSPLFVmPOWakwwNLZpnhtHxVX2arzH21zSmoVZs+Ai33vTftRDQZ1cHftk79Z+ZR1JuDH+KPb7mrVv9WoanvTV6eDGsPyFmwPhppCYrZ2MThmkRrD4/NWxRFe6KgHmYJJjMS8VVY1g+o7uZndmnVgjmN6UW8jJuBuOFuPoGU+iwjQbVmItaqqxzGeCABwjGznGBBxgaeTSUfVDtTpc+xJFWACeVp55vktxczv2xjCqLY5vMsnM9M5N/s+OTH3GDSBiLyQQb4vRYQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t5YP2lFH+uwjZEREAQO3A6uvxj/aA92+TqzhwTJKQvM=;
 b=CN6ANvKm07RWbLm2AAGqsjpaj51JcG0Sp51xIF0fcYB158PSSPkU4h9YYX2MQjRlWBZnc9HwRxBh8mMgFr9MrTHcyw04X65lu8H8LuF1flPaUf6RNLlpsg5LSG31eD8mvH+4xMXKvlh43J1F7kvhd1utmq5+PcMpLYhMveJ5bBGc/CPP8CA28qd4bsR3oV3NBSsCEZVRuqjh+w4DTVFyaLZsWGVBaD+Ab/C7g5llEPc5FbQVPNoSuKBjjlntSCPeUCI8ZWOeNklFdCFtIhhz3O9ddp1xeoDIUX2tkUerZEIJa+wHwcKCqvvBfLZriwffV5bYiNqGvMvnRGa1/kZYxQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:36 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:36 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 07/16] phy: lynx-28g: provide default lynx_lane_supports_mode() implementation
Date: Wed,  3 Jun 2026 16:19:05 +0300
Message-Id: <20260603131914.503053-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0043.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::9) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 704a6137-570b-4c26-50d4-08dec172c1f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: zf2V45pCF1cQnHm/Hv1oZ0Qe3RRoKhaF6f8ut58DXkO0X3HKtp1Yp/kg8lsDZFjIEIsugFWRWvbt7iCKUfwfiTYfe1ysVjM62qMjTcr6vll58QCM1+Vb7iwbs978ZV/98/n6rD8G3DDJKRbiKhPSasQ2xxKweeiQHkf3ZfHRuRZagNgoS0T0gLCpXCZ/ca3fVKEoRf9sf4M53ICAQDc/mWCrZYMGLxnWehzzZWX84kS/lWTK9JDZ6fnxsxA9os3wr56+8KMUKuMBLhilzvpH+laIMM8kykVL8F4A0At2eaNt1e1RIfDS8ufiIaWGHhtmqUgGE2YRTJ/M3XeCvKbmEzr5F60m0wpmmqqnAilq5YoE651eho5oMzBtdIB75I+upT7/+Q7kj6Ump+zVV0G8kKtqzmbkdkq20L6fPMdZ7fQ0CXIVm+48C7/FaYS2LKL+CgkuBRUPEOFwZPijJdVEgXolCiCNNQlKksxSd7mq12VjIioT9vEyHwKTZh4LS5HQLMyiGnaJRUUvoIpjvnRy/2hkq2eSovUirgnZASipYxjLbPXvQN2/kCeo5Jj/qCHYc0ypv7cIWeGKPQ1CW9gfs/a7N61kWXItO4xQLo5V8Dw1Cj31GCewlS+fjdbNZU28swX6JJh6j/osI7uSRxMmny07FF1fZzExLCVv67KG3NsvIMI7DLItYJ8i/THXaMql
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QStZc9qcoJVxhxIFZvL5yz3GdwmdwSqyzryDztAFMDSldOLEQNlPGZvEgp+p?=
 =?us-ascii?Q?vVmhwftOIKQ2x/wlFMAepQWVy/rbGl0cg2Zgan0SdbBYKcjyg0js6Red9yhU?=
 =?us-ascii?Q?jqDBxJ8BSkJwzd1TslPrI/JNFKd5R33H2FNOD48aPGxNwxHYJRb6KzfbQu3F?=
 =?us-ascii?Q?i+z/bwqWy47rmhWUNDOwSM+R+bJy/nz0sjSiGSkg2RMTzoQuND05QYLVxwKF?=
 =?us-ascii?Q?pKkowYq6aZruSup5I13ht0dCylIv66f10fGvU/F3TcatcMas3qJIw9cbp7L5?=
 =?us-ascii?Q?uYG6tBTjLadmQ0E70/xxINbYZXsVdVrhtnyyEBg3DKyUB3mUWOltZh/Q7pNp?=
 =?us-ascii?Q?ytk2de1fz2jCIA7acO1ToFl1Vb2pM0ztp1c7BAIsvF/TLhuJyuD6wKfRRRlT?=
 =?us-ascii?Q?eGU75jyr54zLF1BaZNWavBiWqGJ/+M5/ew0r8w+KKq6zqjd8Z1IiGBdW6GL9?=
 =?us-ascii?Q?Hv+/USnxVHOEWHCxQHCd2GvgtdhYH15nA/z+8EbYv1Qz84YMfAYD0f2FvU8P?=
 =?us-ascii?Q?cgio0nzCDzPVaZTLVbYjQYmC5QG54szVA77dv22gJ1IAFvznZFwtyOY9i6g0?=
 =?us-ascii?Q?/LWvwAqWTGK4YS1mi+7JcTzbIHsTkYhR62a18mpkXDmvumOftknP9OhhVxr7?=
 =?us-ascii?Q?c9Xqcks8ZXM3+p4kyDmR2n8JXIUF1EPhGdp9a9Kxgrny0X/EVPVu7S/NaJDM?=
 =?us-ascii?Q?pba9+veTPYwAug7BPtqC1gvx0l8ybGyagGVDfSBNTL7SfjcoC17vvkqgsHYD?=
 =?us-ascii?Q?at6s6tGncZJWxdfPWMNcpps4dmiIGAlbT/cnC4n5IlfBuYxg+v+NfIv8qMne?=
 =?us-ascii?Q?28Hx1YnzJ5zejl4eon/zdfuqP4v03z3gmKxrCT+jamgdBMrfbeVFMdbpImSf?=
 =?us-ascii?Q?YMzaVVd43I0y3QXz5k+eX0EBZIYyDAeuI9AR+AT0vgul2mAmb+64AJ251sdz?=
 =?us-ascii?Q?eA4ZKfVAP9i1aOmiXZAuDDe6kFcTJt6mFv8uZ5czD15pve9UgeKvBbWGb42Z?=
 =?us-ascii?Q?DGHlW2inZ9jkCEBfpff7TWlQXvmnrf9JEk3jC5J4QIUGo955Db4aKgxmIMWU?=
 =?us-ascii?Q?ifzcPM1ldwPifN30ucvsEOtGlmeUbBl7PXkyKkqwAuFDklu5iImsp/bZwcdB?=
 =?us-ascii?Q?jtuaFg9x0l2vxEqIcnPEynncdOdgx++45zsElzXAzs4Vh57Xe0uArmHwazgF?=
 =?us-ascii?Q?TTEfa8tkd6N02NcOtr4f+9YGnokSjnlJz+6crATHW+Uw9mC39TAgZqyhkZHU?=
 =?us-ascii?Q?mtBpSS2qXBqz+zDwc1ODQxSOlsFHkuQ2jW0e/tc9NSBRxwwYW8B4jX9lPiEM?=
 =?us-ascii?Q?xyyRaczn8Ahc8H+khUS/HrzoXFPieK+j0GMuNjV2uD6YzC4TBjq5M+urbEYf?=
 =?us-ascii?Q?TKoo1PDqulpZvzDGwd3/tV0/nKsJ55lYx1HaFR81RKszVah6RkmnHfd7MbjG?=
 =?us-ascii?Q?/favfJyZZ+iiqxMb+P193Q1T+ZDSbhhzNkLdJWzQuY0ESQHQ1bdh5t+DgHAi?=
 =?us-ascii?Q?KydVYSrBtaFdcjizPz9ZL6vJZg+C3LPtM2ZWUhfu7ihStZY2T34TKSpmnkKg?=
 =?us-ascii?Q?Tx0UeBOIRJPvj4Wc32K6mB4E+eJJJvE+fXz1AExT7RB89GyWV+1npfmpwdQZ?=
 =?us-ascii?Q?x0s7EqtOIOGd1GlvdV8mAx6VQKuhmOay4w8M7rPvna+vZPqqstthpVu7dDfl?=
 =?us-ascii?Q?EbN+lfZ4ZKWJiulDxz3MWcZcETijUMRMIBmeehOXAmn6rnosj8/XqmPtdktu?=
 =?us-ascii?Q?4GA7vPii4g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 704a6137-570b-4c26-50d4-08dec172c1f5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:35.9921
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U0P86ezcACpBQqW/2LKmjj6Kr+sfp8u1gTie17k20YFx2sP2TQW9a5kHlGX4Oz7D6GhdKMFuE1qvOfNH/69Oqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061940_665842_61025BB8 
X-CRM114-Status: GOOD (  19.58  )
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

For the 28G Lynx, there are situations where a protocol is not supported
on a lane despite there being a PCCR register and protocol converter
available:
- LX2160A SerDes 1: reference manual documents PCCD fields E25GC_CFG and
  E25GD_CFG and protocol converter registers E25GCCR1..E25GCCR3 /
  E25GDCR1..E25GDCR3, but nonetheless, Table 289. SerDes 1 protocol
  mapping shows no RCW[SRDS_PRTCL_S1] value for which lanes C and D
  support 25G
- when using the "fsl,lynx-28g" fallback compatible string, we don't
  want to offer 25GbE because we don't know if the lane supports it,
  even though we know how to reach the PCCR and protocol converter
  registers for it.

But for the upcoming 10G Lynx SerDes, the above situations don't exist.
There, if we know how to reach the PCCR and protocol converter
registers on a lane, we implicitly know that the protocol is supported
there, so implementing priv->info->lane_supports_mode() would be
redundant.

Implement lynx_lane_supports_mode_default() which decides whether a lane
mode is supported just based on priv->info->get_pccr() and
priv->info->get_pcvt_offset().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v3: none
---
 drivers/phy/freescale/phy-fsl-lynx-core.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index f49d594622cb..802e32dc6dca 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,6 +40,27 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* By default, assume that if we know how to get the PCCR register and
+ * protocol converter for a lane, that protocol is supported.
+ */
+static bool lynx_lane_supports_mode_default(struct lynx_lane *lane,
+					    enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+
+	if (!priv->info->get_pccr || !priv->info->get_pcvt_offset)
+		return false;
+
+	if (priv->info->get_pccr(mode, lane->id, &pccr) < 0)
+		return false;
+
+	if (priv->info->get_pcvt_offset(lane->id, mode) < 0)
+		return false;
+
+	return true;
+}
+
 /* A lane mode is supported if we have a PLL that can provide its required
  * clock net, and if there is a protocol converter for that mode on that lane.
  */
@@ -48,8 +69,12 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 	struct lynx_priv *priv = lane->priv;
 	int i;
 
-	if (!priv->info->lane_supports_mode(lane->id, mode))
+	if (priv->info->lane_supports_mode) {
+		if (!priv->info->lane_supports_mode(lane->id, mode))
+			return false;
+	} else if (!lynx_lane_supports_mode_default(lane, mode)) {
 		return false;
+	}
 
 	for (i = 0; i < LYNX_NUM_PLL; i++) {
 		if (!priv->pll[i].enabled)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
