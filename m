Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D0FCD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/50N6J3pyylenmsJlkAXBetM4hLhrhVUxsMw4ZSuJ8k=; b=gCqX2kKxfPGWaP
	aXzup2iQxf96I0FqBr0iy3Y/3ARSzT9EgkxaNYlH7Zq8OdpDtStFVdURVG1izXMR9Ym3KYjpXCxt1
	lFxWYx+ItDvS94cTHVjLsLAskJ16+KJpCts1hgaV3U5aAUMSzqCiJA/dFdj62FMGbmKrtxTxQ2HcT
	udXwVWM7RXK7ILEvXSTd416Uxhp6RSYbx9AJiR/fMddnTw9aogjriZcTMfhMkpxSZkbjJ9iOZNuqT
	IpSX2zQ5TvVWjWa2ekA8H62sPz2rdKz6VFKkSnDvYWMYJI5Mg+fXzTiMDqlTsWb6Oidk9KEWPQgHj
	PTgTvo6fmOYpvTWOHgLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT4-000000065Rk-1Okm;
	Thu, 28 May 2026 17:24:26 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT1-000000065Mi-3Q67
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RCc2Zfo4hBO3cQqGJuhI8hfnCHQU2laytZNkZMDhivhUJ/BQs2acDzUL1WfAbXp0fma6vfMPwpL5RkUuU8P7HyxluBd7XH7lCmq4jsRft23YFW5gE97auhXoOaSSFVcuvSe8qyJKk13ouB+NZJCW0qacJfv3Z4/T12923Onp3uecPmdAsgksuFicYqxf7EuobMsca408vb0x4KuaGmVSi6BFNIJa3GIrOKVUHSKzIMEkUcUjB/Lpw0Ln/S0TBuwvsUoEQpvd2xrlXwNhnyWXGBPf7By1VDZmBYEJPVh7nzmb03hHLLLruAejR1A70KGAPTAk4b82moPJn/Vn8UsxRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VxzOnFW8LjMr/Q0OfhIxVXQ4NIkOpqsFIgbmifT8Slc=;
 b=Isorz+OzdMDuOQQFJKS1p7sv+4JMk34WGpujR2r/6/MRZtDUmoM0HpsMpbh1d/7YWncxbUNKBXotsVtfB0kAyAtBCYPbR+R41CGXbhAlD42MRSs99iuyM1ZU0MoUQuz8OMaKlauk2CGrDkiJwm+zdGVrottAR0Y1CIBLvctcZ6kETQAGD0B4ONiPM5usejoJPQ2QL4XBsSaIFQNpdXJ2rmwSy0pUh62Ak5s5hU96cpSpwT25xW59q9HL5zGMTW6pdiAWfsX+qqxKLWK9sRLQdMdpeOlljLat3/t4u7lBwWTWpOsX5+3NrW/Yoxx4R1Q09QGWuYgGnb0ZliNIXFXU2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxzOnFW8LjMr/Q0OfhIxVXQ4NIkOpqsFIgbmifT8Slc=;
 b=Ths0siURyCTbPfhv/nAy1C0WGhc4bkZwoOF+tfB1yVIjX37PyNEmJM9+cCC0RWJ+BgOtyQszs0VTiUO+mu1LXuJRa4t+2ENpzg8aJ6CQE6VXQInBMeskzYSzhOHSsvFanQOsQiQvSw8iqEwp0WXdsEvaHYtkNJcOLm/qT5QLmJtKplEtxzOTyCKqAZYltbv0r80+9KFoyQ7TcPmnAecTyCZ9tMnQHckLhcLYIQQtHiOSkGLM2o/7SlacJ4sGkhj/OgzTdhe3QHORikiqIU8Tb1deV6kXOtrY7Z+xQ3FENFaNLsr5cE04dMPyoPCtaBPUQ1IbhG8QnjM+/eFp7X7M7Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:14 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:14 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 04/13] phy: lynx-28g: common lynx_pll_get()
Date: Thu, 28 May 2026 20:23:55 +0300
Message-Id: <20260528172404.733196-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM4PR0302CA0030.eurprd03.prod.outlook.com
 (2603:10a6:205:2::43) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 2251ef4b-6884-4921-37ea-08debcddf0d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: J+mgGdwtMLKb7OTiPPIaX9aXybLLomSl99CtYP/PevMZaZN31ku3qWG5PBI80+vQGA8JL8Iq3Ee10sXvr3+CDp6AItzJsNHfOdTCnJICn3zGLcoqKQwxUyJyPhnr9J54egYKvjFtnkPuMuc07DMrAlqjUPb6WuJd+K+yWeFbXgTrpvgD/pgpZBbO0/qbTRR5PN1OI3YjyQw3yo6M8hjGWt8Dz38WV4QQnmlRnWKKwXJd9kfrMVEeV21C6hVqdAKwGUHyC2r/4+LtmFfZhzGLCek9qgGYPi0C0nXjW2Q03ishRG6Or8f2/tNIKYnI1nr1AajOsgk6t++bHZFwujQ+n2hvTM1OcAouWizpSzW83G1yxlu7kx3eLO9tq4BYyzcKoQtq+wjxAaU/tK0lz2PXyUooIWA/WyMflc/WRUkUc/TSdPAH1XqJYyfw425MQAZR0yO+3PCoBvG4NCD1vmlia7LwAmI/+m9LUD46eC1q3g8X8UXMuVMckEmJopnK5+CQUa7jmPIUMy2JiEQsc4RSHoIpWMc5Elc/GGwpt0yMAjLJtYJKNJycfYshGmCXMEBWrp7/W1gLpR32zSV9R6Iz4CgmcIXWEDnDbDufi0Z5ip4h9L6cdfdL3bkkrECZH/NbfZYFiqd+LmT9qetJmysRNUowfa3YAHqOHy6nFFNXtiyQj/m5Q8eRndpHjQbzloB9
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UgwehwgJwIOK3k6UAS17qdhXOLuQGpPHNiOy2EfySBWFGxki4bz/HkUDn1dF?=
 =?us-ascii?Q?GGampD51F++Owf8fPvc7BrWm0LDD9/4jrSrleJOV7HKWVZR36GbKE3YB8TzW?=
 =?us-ascii?Q?jdfTDSfCxc/DTBb75aXaQAj+IKbdnrrBHLOwdn4QlyYVUjEYKuLp56pAEUPs?=
 =?us-ascii?Q?H0BIcMaMJaFz1cjUM364R6qLRrklc04guL2aW6kTEXi+k5n1K0CjSDzpRiGp?=
 =?us-ascii?Q?bG5TBkwuImTOKABsk0E1LkdNyARvkPPERQIpSVQhhG1x47j8EBIwDxZKNPcP?=
 =?us-ascii?Q?0q/Wy0VWQagVuLgjoPLsHrIyF+tM0yfJvasn6TkZV9JrmMA/puyF4+gTaoGQ?=
 =?us-ascii?Q?YDXateFUCkDdW4l3fHpolsWpPSyxMSYgpI06JA6XiXz9ZeHqrPDhP+p51rlO?=
 =?us-ascii?Q?LaKNSIyFOSTvkJuU9qSmdrunRWOtOAuvvrY8dSk1iZ9LC6uPU222v2ktuY8s?=
 =?us-ascii?Q?b9KnVpA81fs/DyO7UkhfwDXVNs9ZXthni0pb5+IqBRmmyU7QT9IqmWuhMNeR?=
 =?us-ascii?Q?NEjNNm5h5F0SO0jJ4MjrsYl9p73Ipv3YZnzeW4o3+cJDZ60n5h0TEkz4gUnq?=
 =?us-ascii?Q?o2N7FDu6DBKFfvag3jIbhtsd/MGo51085JWQc2yY+TZwTb/aOGKDf3+TQNUV?=
 =?us-ascii?Q?LiXwsgyihYXDsA4xRkgT/VgW/bw6ktcWogEOp+HJi8/CZ7YElL6UvewhJwe5?=
 =?us-ascii?Q?ajhRVOcXJtnimEYcmC7t1s80IKFdEk1PQTLXaGyjcmcNs11hH4vEDN7z6SDz?=
 =?us-ascii?Q?zKVTTMiZFFGG+XxOUQPkMXAVWe4bMsG4yX1wc3sZdLjY1jShtnM4lGfZJmpT?=
 =?us-ascii?Q?JYzZFXPES9j5CWrfJ6i5yfDzh+ll7BIycMPhIo0FS59QYrX2qNwqRzUhgByH?=
 =?us-ascii?Q?g0Y4KyA81Lkzwej6tzoiWAPpuGEP8hs2C4Kr0jd5feMtisGEP2wF4EfWQut7?=
 =?us-ascii?Q?L6OsZtS/LcFTLEa+ZtWGhUgLVgQtIOcVm/PUAU2Q/umUwthYab2gwlMqyw8z?=
 =?us-ascii?Q?m122f8Hq6GEIsWbmgSEO8bBIm+Ov5wQkeeytcFanWipcZXzfuhMBsXlFcjfi?=
 =?us-ascii?Q?W8KDDStNX5y7pGcx63yVIVfKpVcZk2aXD9GzUCjQ4xf6Mg7c7Xr9589SS90c?=
 =?us-ascii?Q?IWIH1ZtiAPn8pqGQw1Nl2y7qSXhvWYOY2YQ83DxjsLKq6YLUYDw1E/rjI4sH?=
 =?us-ascii?Q?28DWaMY/NXokkalsRhJPxRzlmlF5q5q1Q2KORZRafHisi+mxpON4jjxfPdEx?=
 =?us-ascii?Q?lBShuF9VIftTPpmrT0pk6YvmffFlmAZMp+DdawRw+z1mfbdFRvF5kgDwmz3J?=
 =?us-ascii?Q?EhTlYRJhGCc1Bk6HzeICG6jQTW7CTc2rU/S7xHuWoAAXGMd3YKHEcU4UwT9Y?=
 =?us-ascii?Q?MQnCL6dOJNPUgycGRt8tsr8JyfXtujyJuoqvUiQ/qV9ypuqT/zzObTlWVKNo?=
 =?us-ascii?Q?aouPJ9C5WnFRdHpVHmwDctRIHobavA+HF6gdYn5W1D8BUPInKzdfdEOv/a28?=
 =?us-ascii?Q?PMLhRU70UTdUV1fJkC/hD0MIVxiEyJQi2QIbvep6N8mpxJRBBHtFWP7O0bT6?=
 =?us-ascii?Q?pLZxxTcI+BgyG2rAsIog8faFFd3zXfRBK9ZP5CRq6MD6Ne+eQqaJoU/bPF8S?=
 =?us-ascii?Q?ynEgn/Iip5JRDhb3aiKA6NAhmOjMSpbzwrX0lH9/oyK19gkTZxZGlTN84Pew?=
 =?us-ascii?Q?hUONc33uP/KA6Xr4Zzm2CZ93P8JnGXPhawayQhxzJgbnUD5ykyJ09UhixB6z?=
 =?us-ascii?Q?oUOhMlloeiekkJAukMtAWLPavqcHmNbaFBHZjcpV865jxFEHbw9N?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2251ef4b-6884-4921-37ea-08debcddf0d3
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:14.8536
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AnGvUDHWkuNfSVWdTWjKVTRsV+X1aSqZLFBI3A/oqBT3B52aUfUjmPT8EqFr+EvkqIDPzU09TLgA5v4PQ0EPwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102423_858782_4E757711 
X-CRM114-Status: GOOD (  16.63  )
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

The logic should be absolutely unchanged in the new 10G Lynx SerDes
driver, so let's move this to phy-fsl-lynx-core.c and update the 28G
Lynx driver to use the common variant.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 26 +----------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 24 +++++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  2 ++
 3 files changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index bca0db162a95..ab36df000804 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -467,30 +467,6 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 	},
 };
 
-static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
-					     enum lynx_lane_mode mode)
-{
-	struct lynx_28g_pll *pll;
-	int i;
-
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		pll = &priv->pll[i];
-
-		if (!pll->enabled)
-			continue;
-
-		if (test_bit(mode, pll->supported))
-			return pll;
-	}
-
-	/* no pll supports requested mode, either caller forgot to check
-	 * lynx_lane_supports_mode(), or this is a bug.
-	 */
-	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
-		      lynx_lane_mode_str(mode));
-	return NULL;
-}
-
 static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    enum lynx_lane_mode lane_mode)
@@ -934,7 +910,7 @@ static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
 	struct lynx_28g_pll *pll;
 
 	/* Switch to the PLL that works with this interface type */
-	pll = lynx_28g_pll_get(priv, lane_mode);
+	pll = lynx_pll_get(priv, lane_mode);
 	if (unlikely(pll == NULL))
 		return;
 
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index de45b14d3fb6..5e5bcaa54d09 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -63,5 +63,29 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 }
 EXPORT_SYMBOL_NS_GPL(lynx_lane_supports_mode, "PHY_FSL_LYNX");
 
+struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode)
+{
+	struct lynx_pll *pll;
+	int i;
+
+	for (i = 0; i < LYNX_NUM_PLL; i++) {
+		pll = &priv->pll[i];
+
+		if (!pll->enabled)
+			continue;
+
+		if (test_bit(mode, pll->supported))
+			return pll;
+	}
+
+	/* no pll supports requested mode, either caller forgot to check
+	 * lynx_lane_supports_mode(), or this is a bug.
+	 */
+	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
+		      lynx_lane_mode_str(mode));
+	return NULL;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pll_get, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index f0cb3e805235..b726ff21972b 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -85,4 +85,6 @@ const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
 bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
+struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode);
+
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
