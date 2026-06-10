Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE37CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2B7u7RolQDmFWjCHi7vI/nWnPndU6wGuGEJ12VB9HA=; b=IlAeU95srojnxs
	nsV2FSuc0ExXXqYqBz9RjODfDRltk6odinz1/5wR2MfRV+xqoY6e8Iboyk+Uk0kJ2FqsRnbcYVLmL
	Xm0M707fm/E+nQ69RbXgUYUIleblWn8zBEuWwlGOFi0NyUat9suLl/5lOputGAkZypvyZa/ClS36n
	YFu/a5JMaIFCin2jPijtqjjsh6rD+UB8gkbWGiO40Nzx3QR88zjwn/mTgVSR0KEK0bEtgziYTPWdq
	2RTOiK3i+t/RWQmedpTAGjWqL/eZy0oT6jncszOgWwqP9HSRgrcjI0+p8s0orx5iZJyfFl5Glid7+
	TZSEAJxtu1taQycEfBlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjA-000000080Zq-1pfH;
	Wed, 10 Jun 2026 15:20:24 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj8-000000080SM-26M8
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bZ4gEgMMf+CBbAIMG8lXpxs85Ydd8Wvc99M1voIT18k70DeC5vbF/wVBRjQ1rmayzBwbWgXLsdSwVAOD249dWWVpi3hEDFZanUX6KbSiJoFzssB0jsG8/3QA5EqWmi6Yvodpq5ef/2NLyTtzqBGnL6BQnjucnkFnXiHbn94Swjdl21235lN3OVcZ2oX6DnJS8MsgWWe/GpdjBoRPiKkqQTvlcm7Fildd2w9xBKTmpCo9F/JmR6WYwQ1noJaYvLs3RgrFosSwBywrKZVgWCOZIeO5R9gk22qcVd97NLezfb1wbCZSOOxyyXvdcgMBDx+3Jp1WO87cBIDVTKrMjdNb1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y2EpgWx7nE1TaGAJGAI68z3aaqfH/L7LbT2UHvcIK00=;
 b=rb1Urr0GQwW/vpkxdX2N+StomWYv00xwkiTG7uwHuq03hjHViGiZpxRTCj4g3vy56GWyzLnMUXyTyOfNRcrQYgJmfH0QVX1fLEdz0DvuA0pec6W5FbP9HhGm6SYGn0jVKlznN0tBEQEDqa5HlQ8rLju9rKE8da/TDPem3y2oMlkQDr8KSjChzTo+lqp7LYHVBrLi8aViRs8rsF5b9oz1X90FZaCDRiprzQIIpJBM9zs8ZC9FW6D0h0awXG1jIZ+cHCleqQC84xL3IOFFaiXMTc88aFgwVXPCA61R+BjHOMaldsoA8hfzbWgJHP9PHAGXWBGVFdgHVq4VyjHZFO1WLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2EpgWx7nE1TaGAJGAI68z3aaqfH/L7LbT2UHvcIK00=;
 b=nGABrP6GUjBzMAoRGxfMwYAidPlQwJCAOOMzVu31f2Ct5huMfyLfJTi8xuaPB3zmY67Cqkg70pTOGKDr7BEqLafhm1zb7NjxlrifCI4GI9lNUNrI0vYtIAgQliRS0+IZdHxsRb7I2emv2XblMt2l0yye7dLaxjjKUIfG2YB92Xqjpt+qIgurfL7IyNMgdvjkHK+cyLNArH6cKfThFYr3n3uxPBL7WHFMYP3RekzZ74kM6WMGGROcKEHeFnGF35hggjaofyuKBozH2N2Avv3byKoap6RByPNuQ7IXCBKpa8ySMBuQGNkZprsvccgRRK9K3qDr9Uw1oPVhHevqDgfZ3Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:17 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:17 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 11/16] phy: lynx-28g: add support for big endian register maps
Date: Wed, 10 Jun 2026 18:19:47 +0300
Message-Id: <20260610151952.2141019-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d7::20) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a5a36d0-afe4-4b4f-2dfa-08dec703c6ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: KW0u82MhzvfMqB7iuKDoa8Mn27kcnEloZfbqkBFgwsfiE3vnqZG6uf+rZe4niCciummyvxOFGGkxFGLRdL/o3euFR1GBgaNCyFLSPhrocIfxoNVevAGsJkeaDpBy+FgMM0OIviVN9PMiz+kAyX2fvLwpvPvIebzQbX0W3UG36T1pr5HHBdK0fAYXevdu+V6DSSXzqx9ltMPjQzc59nkZgNh9NzJWASilYXpgCqJ+SDpRQdzXLQDT4/rIKkNuJmEfHexIHkVFhtFwLW7omapxn71NJ6OxRMc+TN2REJcd8adV19A1ynxa3kXhnNFAXDde6iE34+U5NkkMmLj+CTfRri2g8V7O8Py6Pk0rmoTFgSgtAujkHWeG3MGf2OtQwx8+k6TqrYTYV6C9MejCZNt3xJt6NTVCCK7bRfuxMc8sJvBep4JBBZexNL4DSJiat3p1/NRu0LCfXGjOgzDYUqljLGCo4+T3rvMLHgoHf7WG5QfKqi+3qJj1Cb7B1i7SRpPUAmKbl23kCScpkuxYS2MiJ+8EjbD26TSagHm6UT57HJFx2vu7VvWGA9BB6Qi+8lH1kdvVmW1zn+3aMf7WsMfW+Fy7CiXb8eIOvS8SnSPrDhSXz1X25cvSPNrqv0uusNSzn0CQowzf1seSq8W6gj5fRmAgXY0R5YyfbkJTg/+sHwk56DJARLx5dTg4IcIxzz9TnqbxhF4B+EX5zS+oznZ0qg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kMyIacpVgV9p4DAhoKZ36bURnljwu8JLvzLyz4bO0JV1CBRpKTeOdHXroCMl?=
 =?us-ascii?Q?Kv0bjMFT0XSAyvKoc8tTjv3SpwVKD+7fm8ECjJi+rhultZ/Li/CHhLo/29aR?=
 =?us-ascii?Q?P0+J0Qz6AkSUWu1qzwTmP/wBs04+qZhtehcIUS8n66IeiL9gl7ARkrqjFk2N?=
 =?us-ascii?Q?oonY3xwVk0BxCNFkIf8mq2E7lvgiXaIxa+HUbH26Go0Dc6yU2w8OGGtEDJag?=
 =?us-ascii?Q?uD7tm2EcKLitwU8HCixPUXskRqvwElCDbkh6PT1c0WaxLPkxi/ZI/CiQiFcc?=
 =?us-ascii?Q?uJqc+ZgKi8cehQPUlvnIYA1Muh2Inu7qpxcW77nl222pUq3fKGOE87Z3Ycnk?=
 =?us-ascii?Q?Yv898H3QJ4Rym4JZuYTrU+aS3levHiPwnjcK7fz9DPLzKrXMX3BSzxxcPdpJ?=
 =?us-ascii?Q?aJrneBRvFYELKKpSrwb82Fro4w0pbSAXrIJPcvkeBRQ8HF2Pwueqq0Btj+J9?=
 =?us-ascii?Q?0mxQlUTtVOkAVsOZfq4BuSUDI8PFjPJLCzcPXqtj6mplubT/Taj1CPMtzrST?=
 =?us-ascii?Q?n/rIZoCAXIEud8UIiNjKXIN1sLYOJ05b4WisuhQN9tr7QQr9DYUG5zzQeq9M?=
 =?us-ascii?Q?QKouzHMjz3dnit+LTBfy9+3ROUnQpFhwdy3WAU0hHkD+3Nj8WxPlfeuU48cb?=
 =?us-ascii?Q?OE+0/9xKdIN875b2xy3wKEFpq7d0Wk0MXf0lL+1XP7PJiqxXlhHI5XbA6XlT?=
 =?us-ascii?Q?Qb3zIZ7IHv3btxsWzzdsZyFLaakBUaEPqB/1lTozSykc+f/0I+DIBa7HNTkt?=
 =?us-ascii?Q?tFekx5rb8RXorciXd8uOkzn4pwoasLzbltBgBuHZ/EjNvLM2XvTVg0U7dzxn?=
 =?us-ascii?Q?mjGpcE27BbdXfaIsueB7CX2ueyLJppB3pPdHOb7Z9xngFxrFESsRvGV+Jsmu?=
 =?us-ascii?Q?LXTDWyiGS/qcXT+u/nKWY82TtVTnIDWVfr8Q83m2IeXSfywk+wdgt9cWvx8L?=
 =?us-ascii?Q?PoFKcrinsm6hGwZwvSt2dGme4riFzduiERoyJx7Y1tGZr5sJrFP7H4+xHKso?=
 =?us-ascii?Q?+EU3jvQgJElnCy6arJSf/V10OWtmdTAtIKDRTAaCfOwvLWSjk3dEVznl3BjQ?=
 =?us-ascii?Q?YCEYf2U4JJnBTxlV+x9+VpcpQxJDANPDztXkgGi0R2vYYmqSeiXnuYHcsc4K?=
 =?us-ascii?Q?Hu6rnpibouj/LUmwZaHp/MxHNQCLp/dCR63QRqOxkzNhgyTFlWXu7igJhsbF?=
 =?us-ascii?Q?dpagrTXye/gdKNpMSh4hjoRzM25wen6mfDb9Vu6uT0wUeKDzG5lxRKrcYtSE?=
 =?us-ascii?Q?efJRfIHsxMyyPMi4M3E7JFbfheZDyPhIYjGTwhD2Mcv3QmRE5QSsXXJZlpkm?=
 =?us-ascii?Q?7qyp6nmxauaBq88KqL3s4tCOiq86TSgS9nd+1MxcTbNjU/b6QboOeGVXMAEI?=
 =?us-ascii?Q?S4wglLrPaii7jBlU/+fJ8lVWYYJRjCbMeE3M7Oj3Vl6VZNy2N2ZCi9onXXhh?=
 =?us-ascii?Q?pbBB8pXbH2F3hl4PP/zpB81HRExcFESn4VBBYaUFRyWk6tcmLIUr+rwrk17d?=
 =?us-ascii?Q?VJce4id9reMoVxyo64WuTRYlqVVUMk0ZhsyxV3X1ky1uMWwX13gJ2HBg3gE2?=
 =?us-ascii?Q?LL+DFhVC1aegcSiKemiovw3SHmYi6G1ngS6MIaU2+Ukj6OlCyFU7+v8TLm8f?=
 =?us-ascii?Q?CitnSbUOcO1mXWrpzX9+fGlV8G4lCeA9REcjon41dgEL98cG3zUBgrWShveX?=
 =?us-ascii?Q?PDl+RbzRrYveeqLUCqRIOceRLGDfs7nZ0YG0Q6JPXEuQR/iakDpBwT1VMTTl?=
 =?us-ascii?Q?+EczcEihog=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a5a36d0-afe4-4b4f-2dfa-08dec703c6ee
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:17.0908
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y5H0io5FSa8y45diGJj4II0wlQ7mWJHEl1uVhPeZznxRUNxQL7XnDP1+JGM6RI/0RxEi7wPvvBR+z1uKfH5c0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082022_546528_69F905A0 
X-CRM114-Status: GOOD (  12.86  )
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
v2->v5: none
v1->v2:
- none. Deliberately ignoring the Sashiko feedback that "return
  <function that returns void>()" is an antipattern:
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
