Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C24FCD98C6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h73pavDFrvPS2wjiBkKwz6JDI5xNTI3a7lYx3pNxE7Y=; b=IsBIrHhPGvuVuB
	2eQbbKisw26IWrYb/y+PW8Ui3Ymlj0AO3gKdiHmMtgQTmYkK7lrRj6Bpmy6qP5//Jsgb6Tx39nRnX
	cH50YroGPHniMMrAmrBMK8vupub8xp1S83jX2XIu6Hj3QoWRCeehDZTHeVjPCTD5jKUTvUdRLBRit
	8XwT6SG422VxJqc6IvgXTtk2aHxIAaZoyF2ViHoI0tkRRIpEoxlzOv8fkKsq9LU04r0TiZkLyoVw4
	dPEtCwDyLPU4trTj7hPOEblIW5GHtzjUO+1L2IBwt54O26h6jvkND48u6+2wBjGg55lbjLR7LIxT9
	qj51WyygdjSvkqceyUjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj8-000000080Ym-1Ykl;
	Wed, 10 Jun 2026 15:20:22 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj6-000000080SM-1v9J
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kU5gX72ORsufbkhtH5UMD/2DiZDn4WiR+Hf0pWTQtHYIsENfmenOJ0EnnKJdNByB6ZcBBj+PD5rPogxKF0yC3SeOzDuBaS0Dtlc2zNB9v4yOe/L4acqY+YoYSHx6zcp0bDOlf5PPjS/ZrZhNxVDE/Mv/noALjxwHgfgHXG6G/VOwqZ4qz2NwTAH5gtNnwKDCy91AOEh1aSC3ActR5f04TsqTgb9iBH7sMwyh2lMW+Z9D3D/MzZfo9sZT9GmkEsYDKISNDoyqTQJNso6aXBsXgg/uEdpEJA4hcc0Yqd/POGdwpi2iDUq90XpPi1cmc0IsEhMr9t3C91YBnRwKDXmxtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+hsj9UR+rZNaKM/q1sMXHFOoqo/KBkOEFcRe3kX+VE=;
 b=ltL1ltH/AvRtqnS/ZssL0Y8YD78q7BUswbvTmooANUN16LxTtkciVryXAacOXKEM7PbCj2cYNDH1UxcbIogsmAHjSN/I96UO5z5riN/ZkVp55oflIYhHZaUr22olHETT6Zt+gtoLnwOUAfm/u1Catb6fFHkDNUm0dv+rrfldRqTlXwVw9zQ9jAQX0niHl+4XoxmRiJuvqAVFqGTe6endcLRj29JtXmf8vnOxbDN/wJ1+YiRg+Lr4wvhiEtkGpnbzOPYYre/X/gD0OsL3FThas029nnz3IV0csDtPqp8g7bQZEDUdsqQe1Ha6kWx4uBypMpEZQDMpVhy1sN/2iDCDBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G+hsj9UR+rZNaKM/q1sMXHFOoqo/KBkOEFcRe3kX+VE=;
 b=hqetWPXKBdtkytPD+u1vBmknK2tvulCKFpLx8FuYdPG7XSiaU8gJUdAKX/FUAMjuI8cE4DYKm/yOYG3vN/LNx5sWPRuLz6xZZ0h4is2hznkQ3WI+9iB9hecL73Z4JasifZNi5x5e5IFwhd6HmAaroQCP2DCAYeCbsXIVVBt7dp7+heQyKG3bsFrK1f0UhT7xBhYkGnUU2nGVgKdfrOnXpKxP3+JVfbY/lplQFG0FsGv9+uUFjYRq19QiaagNKcRXC9ZSK4GV6SR7w4yVU/PpmZtTW7h6V1jpvVrMHQDQh7OnELWmnZ8D0YC0gVtvTPQQfoRqnqQfTd3Z7RPjmlxAuQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:15 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:15 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 10/16] phy: lynx-28g: common probe() and remove()
Date: Wed, 10 Jun 2026 18:19:46 +0300
Message-Id: <20260610151952.2141019-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0002.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d7::11) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: 249757cc-bdce-4666-5c85-08dec703c5f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|3023799007|6133799003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: x6DCy+kv24/+O0iNpgMOIIhXxEYTtBzT2GwcevUpfVgLmDb5ntD+0B4f+HrtappN38KxK0Z5lUScyHo925nTALfi1rqVb74vt7iN19lJyN+Ow9QhfN8TVlAOMcrI9Hy1cfg8kgTlOVtxupLxarGzWxilvGdMHz+F9gqY/dX+GQN9Tsb/N7RYq0rdcTRgGgplBcWN7YI7I9CkhWGYX4Sd6ZuNZ5eMjH6/F3RPTQ0PROwLnHwGjRRdyx2Z86/wz8+J0Kwcj7XTneyhbKZos8nekDUZggyNyZIUbImHtLKV3LUS3AbaDMpilmMS2UCKPLrVbSNSfxdrkQ5roWTHyUJhDkUWZdC3mdZ+x9TQl4cJQD/HC7Knau4VZDOZNe+QOukosZL7Z9kPC3RegZPUxQ0Ov9p12fGveSkNEafc8N5if47EDSThuGQ5jIRzbgjVCr01fFm4aMPi19RxzppDQSMu1A0T6eicOx8OBXAgNhsPyNRxPJYdmB6Ldsk0Mwg/krbsHBnqsIo4+UZpGeMdN5tvdV8Zv5T+t3mxc93xT1T0kPFRIRAY9/hYBHMa2Tvy69Qe4O60gVZsZkfADpOBvcJAQlLJVCyBLo/Z/xGmkyvGXgbhWs+BVh8n9dgoI9x/JJ5BJGqXk35MEA4bva4NB6h8btE7P0SBAvWR3B+V2JilP/4Tii2vOe60CfRNeJ78jD3j
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(3023799007)(6133799003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bCdktwdfrYDWDjiJRWrE8NzvQcnYbDn7nV0pyb6gGu14yPXs7L3Xh6o0xNjY?=
 =?us-ascii?Q?GAj/iXXQ+jfpssUCeYm3K2/04C/c5CDSuvro/xM2Sndu27YyOHXsk1z+3tlv?=
 =?us-ascii?Q?VQHdJhgteAGN7Ed/KU02j8Q9ZFkU/VLhJlKG0hS+M3Gv+nY0XmfJJeino9dw?=
 =?us-ascii?Q?k2pyZMJV5xCFtdYOTEMKAkkH37fS66L2/Vk4zcdxKaoWGfVfy7dpnF3eqRVv?=
 =?us-ascii?Q?GIYK7wmfjz8nPQa1bMbg8fxUg/d6LR2XQKzv6EIQiQ7kQKq9uQqlZRViOys3?=
 =?us-ascii?Q?WPjbpSev0iHf7vzjT5pa7YytQd/Yj3o2QQ00vhpvrbZaLTaYOB66jqNfxTwh?=
 =?us-ascii?Q?u50gI2fN39SSVG+Vc9b4Q9BD7Xwq3xhocqSoigHhxZ/Sdcx1bq858vD/HApw?=
 =?us-ascii?Q?lFACNefTL0sgx6tZlJVniudwUQ9QnDec5yBocZ+x0aeYKqVQhpFKHsiRU+FE?=
 =?us-ascii?Q?PlxoSHSW24SQmzJJoK2Nxnv+9duBRQsvA7ZoDkXjHJBNGUDoOrUnTkbNcJhd?=
 =?us-ascii?Q?gUvO6ctE3DT4524QxmbCkcbNJkE3LP388ya7eHEpKmTe8ypqyr4akSUywrI4?=
 =?us-ascii?Q?wKzgyAmRcP5O7cBwno3pC+kxbB34hOKTyu0jjv1o8gIfpqCv9tjbQpjXSzHO?=
 =?us-ascii?Q?vHYNWQ4AJRmWxC6vPz7n27NUG0dRvKWlI6upW3o0coUbaXrhOoXpubc9HDuG?=
 =?us-ascii?Q?HrcKPwawH/FbP/mOA31DaTm/bbYvjn7w7gQ+yoGee87tJyV1LzsOvdrM9/Jc?=
 =?us-ascii?Q?FtcsFIeF79Rd6TFsXCLEYtTZAcVoNh7tXWBkl0mcFJx2kxXP0n41V5DaftGj?=
 =?us-ascii?Q?MoPAEeBUkgNtYltdY2z0q+IxHO36Kg2fs4y1cuqtJXQ5NwgRoq9XJL71Il26?=
 =?us-ascii?Q?BFH27T1FF4HMvWkQnlYFZuNtvNaFnH8hqAWKavWIt0sQOBzE7kMTI0hWPYlV?=
 =?us-ascii?Q?qTZaHi1ouS5DHA5B45eujM681B4q0le56dvWSHGYd+4mUJzHnKcxIZiFxz5H?=
 =?us-ascii?Q?RVbf0sneYPOa/DUzf2XvoA1I8JG3N20c6vHd9I72islkTpvDfbMxNbMnqc/Y?=
 =?us-ascii?Q?EIkSAUlKs/LAFZDVjk4INN2kQ/sBbLSBIrPAWiEVX6teLfPIcMTvPTuNo5fN?=
 =?us-ascii?Q?8SkJmrNR2MMvOk4lA8fV2SFXqejqNFGkke6ZiaIllnclEOvLPBlDbxGXc+zg?=
 =?us-ascii?Q?fjuKa9HCzQxFR9vPOqMNQm8qj65kGmV4gLQMUdSaO563kePn+FnNUl+jEMJn?=
 =?us-ascii?Q?ISH6O9G/CTI8uQiSY7k9jRXLleeNk68LMTW9iL2lga0cWi2ljd4ar7EbzS6R?=
 =?us-ascii?Q?jaOqo1RrP0EfyXAqU6TzBZyys89YYkXF9LGOtpn757lFi5RWYTfAhBHReROo?=
 =?us-ascii?Q?rd8pGc0TLz88LELdzuE380T5oxWm2XvSz67XyQufuip/sksIPbQjVCF1g1kX?=
 =?us-ascii?Q?FyY0ahoNcVxWcx+EJR+fO9TKW4XnQ2of4lYYaU1lqP+iXGQKrmaviOWfu1xs?=
 =?us-ascii?Q?D3gsd1v0y7uHli8VCUB+Kchy/DecogbhfmK5uyxeUdgpdsKfDFtjiCaUHsBS?=
 =?us-ascii?Q?JA6obJVpuTUFWYcuDpCZIWo5o1rVHx/UvIzUAXNSW9l9HXx/F73c+w6M9zfU?=
 =?us-ascii?Q?OKM3OYt6dCDzh5zZlQsx1l4ViuZjPnNpg4qB8rxnIdrEi5Eh5EztKmYvV402?=
 =?us-ascii?Q?mKBno2TB/717qTcvzB2HeS01u4wZ7YowcUCOdyFRnog1BYX7eQEB0+usTAt/?=
 =?us-ascii?Q?wsE9O44f3w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 249757cc-bdce-4666-5c85-08dec703c5f2
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:15.4861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 15/Y69fwsEAX3xQGRMrW3XN/I0stqJgciLVYIy+fbDS4j/ZKCbrK5kd4cQZZuD8VBQL9BQ4SGWgTG8/yClving==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082020_514892_AD91A6F3 
X-CRM114-Status: GOOD (  18.73  )
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

Factor the device-agnostic logic from lynx_28g_probe() and
lynx_28g_remove() into lynx_probe() and lynx_remove() inside
phy-fsl-lynx-core.c. These will be shared with the 10G Lynx driver.

Since the PLL configuration, lane configuration and CDR lock detection
procedure are going to be different, introduce lynx_info function
pointers so that this code remains in the 28G Lynx driver.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v3->v5: none
v2->v3:
- adapt to lynx_28g_xlate() change to return ERR_PTR(-ENODEV)
v1->v2:
- adapt to the addition of a NULL check for the "info" pointer. Note
  that lynx_28g_probe() does not need to test for NULL because it only
  compares the pointer to a value.
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 225 +++++-----------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 170 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  12 +-
 3 files changed, 227 insertions(+), 180 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index dbbadaa08cb6..50b991870edb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,7 +12,6 @@
 #include "phy-fsl-lynx-core.h"
 
 #define LYNX_28G_NUM_LANE			8
-#define LYNX_28G_NUM_PLL			LYNX_NUM_PLL
 
 /* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
@@ -781,6 +780,30 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 	}
 }
 
+static void lynx_28g_cdr_lock_check(struct lynx_lane *lane)
+{
+	u32 rrstctl;
+	int err;
+
+	rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
+	if (!!(rrstctl & LNaRRSTCTL_CDR_LOCK))
+		return;
+
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+			  LNaRRSTCTL_RST_REQ);
+
+	err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
+				!!(rrstctl & LNaRRSTCTL_RST_DONE),
+				LYNX_28G_LANE_RESET_SLEEP_US,
+				LYNX_28G_LANE_RESET_TIMEOUT_US,
+				false, lane, LNaRRSTCTL);
+	if (err) {
+		dev_warn_once(&lane->phy->dev,
+			      "Lane %c receiver reset failed: %pe\n",
+			      'A' + lane->id, ERR_PTR(err));
+	}
+}
+
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
@@ -1088,50 +1111,6 @@ static void lynx_28g_pll_read_configuration(struct lynx_pll *pll)
 	}
 }
 
-#define work_to_lynx(w) container_of((w), struct lynx_28g_priv, cdr_check.work)
-
-static void lynx_28g_cdr_lock_check(struct work_struct *work)
-{
-	struct lynx_28g_priv *priv = work_to_lynx(work);
-	struct lynx_28g_lane *lane;
-	u32 rrstctl;
-	int err, i;
-
-	for (i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
-		lane = &priv->lane[i];
-		if (!lane->phy)
-			continue;
-
-		mutex_lock(&lane->phy->mutex);
-
-		if (!lane->init || !lane->powered_up) {
-			mutex_unlock(&lane->phy->mutex);
-			continue;
-		}
-
-		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
-			lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
-					  LNaRRSTCTL_RST_REQ);
-
-			err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
-						!!(rrstctl & LNaRRSTCTL_RST_DONE),
-						LYNX_28G_LANE_RESET_SLEEP_US,
-						LYNX_28G_LANE_RESET_TIMEOUT_US,
-						false, lane, LNaRRSTCTL);
-			if (err) {
-				dev_warn_once(&lane->phy->dev,
-					      "Lane %c receiver reset failed: %pe\n",
-					      'A' + lane->id, ERR_PTR(err));
-			}
-		}
-
-		mutex_unlock(&lane->phy->mutex);
-	}
-	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
-			   msecs_to_jiffies(1000));
-}
-
 static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 {
 	u32 pccr, pss, protocol;
@@ -1157,49 +1136,13 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	}
 }
 
-static struct phy *lynx_28g_xlate(struct device *dev,
-				  const struct of_phandle_args *args)
-{
-	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-	int idx;
-
-	if (args->args_count == 0)
-		return of_phy_simple_xlate(dev, args);
-	else if (args->args_count != 1)
-		return ERR_PTR(-ENODEV);
-
-	idx = args->args[0];
-
-	if (WARN_ON(idx >= LYNX_28G_NUM_LANE ||
-		    idx < priv->info->first_lane))
-		return ERR_PTR(-EINVAL);
-
-	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
-}
-
-static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
-			       struct device_node *dn)
-{
-	struct lynx_28g_lane *lane = &priv->lane[id];
-	struct phy *phy;
-
-	phy = devm_phy_create(priv->dev, dn, &lynx_28g_ops);
-	if (IS_ERR(phy))
-		return PTR_ERR(phy);
-
-	lane->priv = priv;
-	lane->phy = phy;
-	lane->id = id;
-	phy_set_drvdata(phy, lane);
-	lynx_28g_lane_read_configuration(lane);
-
-	return 0;
-}
-
 static const struct lynx_info lynx_info_compat = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1207,6 +1150,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes1 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1214,6 +1160,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes2 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1221,6 +1170,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes3 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1228,6 +1180,9 @@ static const struct lynx_info lynx_info_lx2162a_serdes1 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.first_lane = 4,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
@@ -1236,112 +1191,26 @@ static const struct lynx_info lynx_info_lx2162a_serdes2 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct phy_provider *provider;
-	struct lynx_28g_priv *priv;
-	struct device_node *dn;
-	int err;
-
-	dn = dev_of_node(dev);
-	if (!dn) {
-		dev_err(dev, "Device requires an OF node\n");
-		return -EINVAL;
-	}
-
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	priv->dev = dev;
-	priv->info = of_device_get_match_data(dev);
-	if (!priv->info)
-		return -ENODEV;
-
-	dev_set_drvdata(dev, priv);
-	spin_lock_init(&priv->pcc_lock);
-	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
+	const struct lynx_info *info;
 
 	/*
 	 * If we get here it means we probed on a device tree where
 	 * "fsl,lynx-28g" wasn't the fallback, but the sole compatible string.
 	 */
-	if (priv->info == &lynx_info_compat)
+	info = of_device_get_match_data(dev);
+	if (info == &lynx_info_compat)
 		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
 
-	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
-				  sizeof(*priv->lane), GFP_KERNEL);
-	if (!priv->lane)
-		return -ENOMEM;
-
-	priv->base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(priv->base))
-		return PTR_ERR(priv->base);
-
-	for (int i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		struct lynx_28g_pll *pll = &priv->pll[i];
-
-		pll->priv = priv;
-		pll->id = i;
-		lynx_28g_pll_read_configuration(pll);
-	}
-
-	if (of_get_child_count(dn)) {
-		struct device_node *child;
-
-		for_each_available_child_of_node(dn, child) {
-			u32 reg;
-
-			/* PHY subnode name must be 'phy'. */
-			if (!(of_node_name_eq(child, "phy")))
-				continue;
-
-			if (of_property_read_u32(child, "reg", &reg)) {
-				dev_err(dev, "No \"reg\" property for %pOF\n", child);
-				of_node_put(child);
-				return -EINVAL;
-			}
-
-			if (reg < priv->info->first_lane || reg >= LYNX_28G_NUM_LANE) {
-				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
-				of_node_put(child);
-				return -EINVAL;
-			}
-
-			err = lynx_28g_probe_lane(priv, reg, child);
-			if (err) {
-				of_node_put(child);
-				return err;
-			}
-		}
-	} else {
-		for (int i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
-			err = lynx_28g_probe_lane(priv, i, NULL);
-			if (err)
-				return err;
-		}
-	}
-
-	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
-	if (IS_ERR(provider))
-		return PTR_ERR(provider);
-
-	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
-			   msecs_to_jiffies(1000));
-
-	return 0;
-}
-
-static void lynx_28g_remove(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-
-	cancel_delayed_work_sync(&priv->cdr_check);
+	return lynx_probe(pdev, info, &lynx_28g_ops);
 }
 
 static const struct of_device_id lynx_28g_of_match_table[] = {
@@ -1357,7 +1226,7 @@ MODULE_DEVICE_TABLE(of, lynx_28g_of_match_table);
 
 static struct platform_driver lynx_28g_driver = {
 	.probe = lynx_28g_probe,
-	.remove = lynx_28g_remove,
+	.remove = lynx_remove,
 	.driver = {
 		.name = "lynx-28g",
 		.of_match_table = lynx_28g_of_match_table,
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 802e32dc6dca..3fb89bb4b0d6 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -2,6 +2,7 @@
 /* Copyright 2025-2026 NXP */
 
 #include <linux/module.h>
+#include <linux/platform_device.h>
 
 #include "phy-fsl-lynx-core.h"
 
@@ -202,5 +203,174 @@ int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
 }
 EXPORT_SYMBOL_NS_GPL(lynx_pcvt_rmw, "PHY_FSL_LYNX");
 
+#define work_to_lynx(w) container_of((w), struct lynx_priv, cdr_check.work)
+
+static void lynx_cdr_lock_check(struct work_struct *work)
+{
+	struct lynx_priv *priv = work_to_lynx(work);
+	struct lynx_lane *lane;
+
+	for (int i = priv->info->first_lane; i < priv->info->num_lanes; i++) {
+		lane = &priv->lane[i];
+		if (!lane->phy)
+			continue;
+
+		mutex_lock(&lane->phy->mutex);
+
+		if (!lane->init || !lane->powered_up) {
+			mutex_unlock(&lane->phy->mutex);
+			continue;
+		}
+
+		priv->info->cdr_lock_check(lane);
+
+		mutex_unlock(&lane->phy->mutex);
+	}
+
+	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
+			   msecs_to_jiffies(1000));
+}
+
+static struct phy *lynx_xlate(struct device *dev,
+			      const struct of_phandle_args *args)
+{
+	struct lynx_priv *priv = dev_get_drvdata(dev);
+	int idx;
+
+	if (args->args_count == 0)
+		return of_phy_simple_xlate(dev, args);
+	else if (args->args_count != 1)
+		return ERR_PTR(-ENODEV);
+
+	idx = args->args[0];
+
+	if (WARN_ON(idx >= priv->info->num_lanes ||
+		    idx < priv->info->first_lane))
+		return ERR_PTR(-EINVAL);
+
+	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
+}
+
+static int lynx_probe_lane(struct lynx_priv *priv, int id,
+			   struct device_node *dn,
+			   const struct phy_ops *phy_ops)
+{
+	struct lynx_lane *lane = &priv->lane[id];
+	struct phy *phy;
+
+	phy = devm_phy_create(priv->dev, dn, phy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	lane->priv = priv;
+	lane->phy = phy;
+	lane->id = id;
+	phy_set_drvdata(phy, lane);
+	priv->info->lane_read_configuration(lane);
+
+	return 0;
+}
+
+int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
+	       const struct phy_ops *phy_ops)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct device_node *dn;
+	struct lynx_priv *priv;
+	int err;
+
+	dn = dev_of_node(dev);
+	if (!dn) {
+		dev_err(dev, "Device requires an OF node\n");
+		return -EINVAL;
+	}
+
+	if (!info)
+		return -ENODEV;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->info = info;
+	dev_set_drvdata(dev, priv);
+	spin_lock_init(&priv->pcc_lock);
+	INIT_DELAYED_WORK(&priv->cdr_check, lynx_cdr_lock_check);
+
+	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
+				  sizeof(*priv->lane), GFP_KERNEL);
+	if (!priv->lane)
+		return -ENOMEM;
+
+	priv->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	for (int i = 0; i < LYNX_NUM_PLL; i++) {
+		struct lynx_pll *pll = &priv->pll[i];
+
+		pll->priv = priv;
+		pll->id = i;
+		priv->info->pll_read_configuration(pll);
+	}
+
+	if (of_get_child_count(dn)) {
+		struct device_node *child;
+
+		for_each_available_child_of_node(dn, child) {
+			u32 reg;
+
+			/* PHY subnode name must be 'phy'. */
+			if (!(of_node_name_eq(child, "phy")))
+				continue;
+
+			if (of_property_read_u32(child, "reg", &reg)) {
+				dev_err(dev, "No \"reg\" property for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			if (reg < priv->info->first_lane || reg >= priv->info->num_lanes) {
+				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			err = lynx_probe_lane(priv, reg, child, phy_ops);
+			if (err) {
+				of_node_put(child);
+				return err;
+			}
+		}
+	} else {
+		for (int i = priv->info->first_lane; i < priv->info->num_lanes; i++) {
+			err = lynx_probe_lane(priv, i, NULL, phy_ops);
+			if (err)
+				return err;
+		}
+	}
+
+	provider = devm_of_phy_provider_register(dev, lynx_xlate);
+	if (IS_ERR(provider))
+		return PTR_ERR(provider);
+
+	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
+			   msecs_to_jiffies(1000));
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_probe, "PHY_FSL_LYNX");
+
+void lynx_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct lynx_priv *priv = dev_get_drvdata(dev);
+
+	cancel_delayed_work_sync(&priv->cdr_check);
+}
+EXPORT_SYMBOL_NS_GPL(lynx_remove, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index 5cd86c9543cb..e8b280cc9b38 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -10,14 +10,15 @@
 
 #define LYNX_NUM_PLL				2
 
+struct lynx_priv;
+struct lynx_lane;
+
 struct lynx_pccr {
 	int offset;
 	int width;
 	int shift;
 };
 
-struct lynx_priv;
-
 struct lynx_pll {
 	struct lynx_priv *priv;
 	int id;
@@ -42,6 +43,9 @@ struct lynx_info {
 			struct lynx_pccr *pccr);
 	int (*get_pcvt_offset)(int lane, enum lynx_lane_mode mode);
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
+	void (*pll_read_configuration)(struct lynx_pll *pll);
+	void (*lane_read_configuration)(struct lynx_lane *lane);
+	void (*cdr_lock_check)(struct lynx_lane *lane);
 	int first_lane;
 	int num_lanes;
 };
@@ -85,6 +89,10 @@ static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
 #define lynx_pll_read(pll, reg)			\
 	ioread32((pll)->priv->base + reg((pll)->id))
 
+int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
+	       const struct phy_ops *phy_ops);
+void lynx_remove(struct platform_device *pdev);
+
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
 bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
