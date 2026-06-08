Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6195CD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AH2CcSaLE8XX/wpO2E3pKRHDy9e9xwcTPR140kX8Yd8=; b=DIGCXNGa+cObLO
	+LFaB5XF1iQzG6E5d3r6KFwBioZtn1g2NNdXNFMLpnyNrYclXkvkamqib1QarIX7CleX46rudG7Ur
	bApi0idAr6OslaqpHtjv3EpnsQzUNxAWlDzrQFrYoWC9Ahd5REwA5nj7RAQTdnCkx9lLGID2sgOEw
	lW4h8qed49iFCOSXIepTB4Wv9XF1E7t4GrUA8EL+siDkWsifX1rknjIaxbzpd/fTIQ5JCiaT4efv+
	h8bksqnK+W6cbAf0Rig8V9csP6C2BYPTmId1blv3TGIp80k4EejirZLWq4UBu867Lp/bsPq2y3c16
	Vup48Gb63ywXk5V7B3lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI7-00000004UC6-2nSf;
	Mon, 08 Jun 2026 22:17:55 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI5-00000004U7x-0J5I
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xyTdMY9ferazKLYM97wKJyazkwlSIG7p0dLvPkTR90sf8ChLcOwy16UujOe/9SDQcwRVjDmQWx7vH16c01QFuSKyBdYXTWbgXZS42aRySw8KD+31Rz1/d6D9nhHXCOqkuPQUmoNjh8gaMhyQqshMoWJKSNTOAopltyT7hfiwJqspGh5jQBOw9JQqMziUqNsjtJd0xTpRxj3g05azE/9NKIZ6mk8R5bGjM8mU45eC2AXqCxCkWOKE8VS63jCPfKvHXkvpQ7kzEzuCKQ4q1oz+YwSoTli4PXssKn2UrS+AS0PHRC39XNUyxInc+fBihuxn0LRjfVwKJlu5VBsqlbayzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3sbSxPjNriwFpq2b+1JnPD7RsbEj5WSDRMC7xECspxY=;
 b=Lj3Jipxt09SgMNUMhkz6PWdEFB2QBOOtrAhzSPaUv4fFggk/zomjvFZkp2HSu2ufqhd5Uqcrrgkk1hsXdMpbpdlyXtoVYifVz+jN9ry0fTokxELqB54Y8vlIdnC4ps39egVN7MiOj9pdi2OXmvw/V9mPnBEPw4X05uYC2zIKJQ09ee4Q2/RShMVSaUnjpqYklPmEN6L7VogYzp6Ta6x7L1gI4mVx+QKiEIL4W8GhJN5CCzWgD3IyGKZL0gD/tBKb+AI8dpOQpuP5xfRmgetSuAERTNqcaGGGkrImB8qf8fsWEJbDXTCC5KZV5jwDXDlbmF7bhLmSYLcagiLvFu1Buw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3sbSxPjNriwFpq2b+1JnPD7RsbEj5WSDRMC7xECspxY=;
 b=hfyLxhaZiVV5846llHKZr1SeRbbiF2pondI3YSb4g2F1HEUbLbZNmOPUnQmMEIgxMJpH5O13jZPX4kRhgZ45frEXDYdh2KW9pV8kGHxX+92uhHaxawQ7pIrJD1pkTk3/QWryU0p/z9ubehM176tvq5HodG1FEG27tTua7OYktQ+Mhz3z7157ZAY7bCFpuYd9kePReQLPRrXHZF5K5Hz69to0WM5Zx1vP3RJg8jK9/pcY6EMLtcLzh+rXsfHm3TVQb834khBOVzVX6jI93o4YN9xvgXvK1YxbR9zsOmoM0uSmXW4IR8llX4XLtSdNvSojn+TYQF6XvlzKxiMeMyg1jg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12070.eurprd04.prod.outlook.com (2603:10a6:501:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 22:17:49 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:49 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 11/16] phy: lynx-28g: add support for big endian register maps
Date: Tue,  9 Jun 2026 01:17:05 +0300
Message-Id: <20260608221710.1572971-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1P190CA0046.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::11) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12070:EE_
X-MS-Office365-Filtering-Correlation-Id: ecc245e8-44d5-44c9-11ee-08dec5abc65e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|10070799003|366016|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 1RHFWrQpKmO7ZgtjujZwIf0+Ykch7XO8+TnbE8A25X0h3hvziczQyrS+NLdd6bO1ATjMnLZBAobe8PDKWm5nCb0DcdokNuOmQH2bbGD3su+z4rYHqDD8/npAxZPyJ2g+y5aOw6USH9UxPn9akwurw0ZjG42m/TVo742X1WTA5MlZvTuPWwW+S+Q+aySpYpcyXlz4w8/4KMOC1YQSByVqYr7OCWo7HTtZfM9+leAIjgigEYmb5rS6Lqzi5u4JWu7NEQ8tm78/ihEir29VFF746vQHlGeTTN3GmQ+NZuGvRcz5cs4o507+jmcMLpFTmovtCRZ1hImD0jPLboReNmeOB/S0FekmHLJizyO69YMoFU8+zElaDVgjLufDHr3J/xrc0o7wSHW7kdwGQH7mh87tBGGCWnNJeujUMlx7yYSTFlOdLvm7i4Tx8MX8JZl2R/fD0BkcONtXw9eRZPYYWfFk0bkApPi5hHgAb3DOPDzAX9ZCovLzzFKPBR0Sl8LkvyPqKQiccjEPzfLo8FGU+F9Wb3JTvJeXsUtYlbVabsfja6icbm0dv2GgoZJASoeVnRwCcLCE0mp0GjhyDKKFVD5sYDPULegTUjB+jWCsq8f6WwRZbPJmLlSAZCIv5oq4qt/hpiKQeAinNpLqMZ1APUTyXKSPQ5SBmXnq0/8BrH7kPOLcnAuJJdhsuTrv2pPZxo7YWloIh4KBx9+jld/E79bdoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(10070799003)(366016)(376014)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lCTvExjcLgITtFxJSxEJVdzZHoYbwXMuNPiffhr3NYo5MXlXgnu6+NsQDCfB?=
 =?us-ascii?Q?tjLV34mHq8rlgjJHayzcuTE/KM35u4LOvLdA8R771KTphiUouVaGNHgDDkQQ?=
 =?us-ascii?Q?qDesx3y65UsCPw+QtTNQO+lU+/aNhMJKQuFLNMwNYAn3iQuo8V6BP391cgIn?=
 =?us-ascii?Q?7RgJv1ogfw22XWT9RrIkbbeoylMlHhj+TRqzftYiReZ5dgeobLjLNXtczyYN?=
 =?us-ascii?Q?r1Cl/DJENus7zA1P6fWcxV1zeMPAHKxjugKzXOp4ivRQf/JXE2PGjlQIm2Xd?=
 =?us-ascii?Q?bs3O6Gvm/lYdbpngZ1bqatO92INh2ySzxU36lHppCqoU3uAYmwzr4XIh51Pg?=
 =?us-ascii?Q?n39a5qJKbAhM2bZSQrAzN94mw/hE4+kRDBv8cAWDCkeiBWT0xIcj7aWygKNw?=
 =?us-ascii?Q?GS4IvN6oJi72sahw3xXXKbvdB0LYS7OE+xGec+vsyE7BZjmpl4VIICJMb5Hx?=
 =?us-ascii?Q?nD1ZCtLMzhxwTdRoHBL5F3R9H6XujdzHwJKpX6XJJ4UMPODS8+/1RhrtPmjY?=
 =?us-ascii?Q?nYuV1P12Q4JBrXYysWXO+qtuINkpHGNzhDM4rKz1NnksBOiQ20b64Y3jhF11?=
 =?us-ascii?Q?alfDdcAkpZUVIsMSu69+eRwJ2h3jnVK8cwlnyDzuXyd8XzBIgT6jlqQ2Fz53?=
 =?us-ascii?Q?mynbevB2MKaAA+FGgEuYfh3VHAw44GqxNjMv0EldknigiVIxGyOvi9s9mS1Y?=
 =?us-ascii?Q?QmPaIRVKlnhH2vYVXwtiDJVVyaqteqJsTbpqCL/S5s7mhz1lTDWkze3bQFlm?=
 =?us-ascii?Q?aYMx9Gc5WT6aZA7qXpCTAP6sF5t+HtW0LqL2zpZnwOfj7LE+VD/CaGxPqu2I?=
 =?us-ascii?Q?WQKWHQounT7M7gCRkJZnC8QTqJnH7KjqDKblYgyTybSBcmj95wRNCn3CrhLu?=
 =?us-ascii?Q?RTmfzDXAjpL+EmADKAeG3ENqoaP0dNDaj33hpe5CY4tdTRTtxNHW36BKTRz7?=
 =?us-ascii?Q?2ZBrPYch3GT42ngzdpWVreYXF61FYOBiOwuvkvnyE9wiEUrTZcJdzOF3PzDm?=
 =?us-ascii?Q?eb5WjtfO3ANm/ykNzMeigVtF5xY2K84zWbQIfnweeImAF2nkYurtamPM2hui?=
 =?us-ascii?Q?5ljytsspu17q2WYsbo/etChX6fks/8+kamWtqjnJ77RaL5Ay9EWYRLImKWyP?=
 =?us-ascii?Q?K0IvTMnX3SDkDleKft/o+0fL4tNvDOF91PpA1rolKGERblUKOnO6wnFlByL9?=
 =?us-ascii?Q?4Nw6qIa+DWKGyYlzTMVn+UfP29pSaGWqD0sfHG/uu9j1K80PVxnL5pTed0jl?=
 =?us-ascii?Q?vwJHi12usFcatjjvxR2baCxLJDo+VKpCMoVXDrJH+dTyuWcTzZj8jJDPJ8L8?=
 =?us-ascii?Q?syZGIG2CQAXLb8h48/d314GbeMzSjfce1ykRpvwb3pjEgqQ/6e/CuOKXO4ml?=
 =?us-ascii?Q?SYsc3oXx1HxVhimL8Tfm5NDKdCHqU/xPEI+SrXJvKRLtkLiGOlbHw7Pg7n2r?=
 =?us-ascii?Q?EvDzApdplXUY8b7FWegNzIWGaOWYFU7GvM4l8qSvxYdm1rGGoTcdx7p1xvgJ?=
 =?us-ascii?Q?RT7mQJT7TGvszgofVUysHwf9c9Mxf+8EvmwBl7+LrpHzS9QGxCTfH7fjrp+G?=
 =?us-ascii?Q?5DDjfkb436U7AvrJ9MOu3YfR5J1eHsha7xwVL+T6r0AG49G+Qd8MVqqKoiCD?=
 =?us-ascii?Q?J5eFu6lILL0WOjGl3XZ1ic+i76+K2DiVt2F7k94U9Ow9jySE/5HpFANO1AYS?=
 =?us-ascii?Q?SVNisdf32pHhl2+8IIWt+AYkMm5X2yc/MuHN0I5WJgaSuXNXB+hQ26RGTA84?=
 =?us-ascii?Q?g3Jea0bU4oNp2tfSv0+r4i8tVckrCwLtcdA0YVbEOI2N8vMpQhmR?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc245e8-44d5-44c9-11ee-08dec5abc65e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:49.2490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6nY+WAt4j2huf5dgeATZLWr1Vt2p2j0GwHqUxFPWYjpnpawMzCvb4IrbTE90vJ5XiwrKJcIDRRx3SPnkQzbZSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151753_112781_A8EBDA4D 
X-CRM114-Status: GOOD (  12.10  )
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

Some 10G Lynx SerDes blocks are big endian and require byte swapping
because the CPUs are little endian armv8 (LS1046A). Parse the
"big-endian" device tree property, and modify the base lynx_read() and
lynx_write() accessors to test this property before issuing either the
ioread32() or ioread32be() variants (as per
Documentation/driver-api/device-io.rst).

All other accessors - lynx_rmw(), lynx_lane_read(), lynx_lane_write(),
lynx_lane_rmw(), lynx_pll_read() - need to go through these endian-aware
helpers.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v4: none
v1->v2:
- none. Deliberately ignoring this Sashiko feedback:
  https://lore.kernel.org/linux-phy/20260529120005.icj44ffdvdk25fjm@skbuf/
---
 drivers/phy/freescale/phy-fsl-lynx-core.c |  1 +
 drivers/phy/freescale/phy-fsl-lynx-core.h | 36 ++++++++++++++++-------
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 3fb89bb4b0d6..226b2af2b599 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -295,6 +295,7 @@ int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
 
 	priv->dev = dev;
 	priv->info = info;
+	priv->big_endian = device_property_read_bool(dev, "big-endian");
 	dev_set_drvdata(dev, priv);
 	spin_lock_init(&priv->pcc_lock);
 	INIT_DELAYED_WORK(&priv->cdr_check, lynx_cdr_lock_check);
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index e8b280cc9b38..d82e529fa65a 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -58,36 +58,52 @@ struct lynx_priv {
 	 * like PCCn
 	 */
 	spinlock_t pcc_lock;
+	bool big_endian;
 	struct lynx_pll pll[LYNX_NUM_PLL];
 	struct lynx_lane *lane;
 
 	struct delayed_work cdr_check;
 };
 
+static inline u32 lynx_read(struct lynx_priv *priv, unsigned long off)
+{
+	void __iomem *reg = priv->base + off;
+
+	if (priv->big_endian)
+		return ioread32be(reg);
+
+	return ioread32(reg);
+}
+
+static inline void lynx_write(struct lynx_priv *priv, unsigned long off, u32 val)
+{
+	void __iomem *reg = priv->base + off;
+
+	if (priv->big_endian)
+		return iowrite32be(val, reg);
+
+	return iowrite32(val, reg);
+}
+
 static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
 			    u32 mask)
 {
-	void __iomem *reg = priv->base + off;
 	u32 orig, tmp;
 
-	orig = ioread32(reg);
+	orig = lynx_read(priv, off);
 	tmp = orig & ~mask;
 	tmp |= val;
-	iowrite32(tmp, reg);
+	lynx_write(priv, off, tmp);
 }
 
-#define lynx_read(priv, off) \
-	ioread32((priv)->base + (off))
-#define lynx_write(priv, off, val) \
-	iowrite32(val, (priv)->base + (off))
 #define lynx_lane_rmw(lane, reg, val, mask)	\
 	lynx_rmw((lane)->priv, reg(lane->id), val, mask)
 #define lynx_lane_read(lane, reg)			\
-	ioread32((lane)->priv->base + reg((lane)->id))
+	lynx_read((lane)->priv, reg((lane)->id))
 #define lynx_lane_write(lane, reg, val)		\
-	iowrite32(val, (lane)->priv->base + reg((lane)->id))
+	lynx_write((lane)->priv, reg((lane)->id), val)
 #define lynx_pll_read(pll, reg)			\
-	ioread32((pll)->priv->base + reg((pll)->id))
+	lynx_read((pll)->priv, reg((pll)->id))
 
 int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
 	       const struct phy_ops *phy_ops);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
