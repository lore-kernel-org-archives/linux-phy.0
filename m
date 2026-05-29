Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15972CD6E4A
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBHGM3u+u6I4UvnGtrvib1/z/wMfzJQqH2TMRyUEVX8=; b=Kr6/S2vrthQ9Vt
	hhCfVdgfzNe+8lnRIrfZyfy82rhdKp4IHYBo7/koS0xZ5RWDUaArYfe9PzAS/cnomeDC+zYwpJiW5
	5jLH5+lKtmRs7P5HD+L1NK8ntr/AQMSNV0q7+LjOGi1edgaxb2VaAaDYw36t2U5EBcVmr1uBnt2ij
	Swq4Je1ukotFrgrP5ioUQBImjySS9TrI4EfUP5xevKUstAg1IKMTdKRycE/HQLkNBlzxW/hvyxjUz
	kbzXW28JFTutMOPYNZbZB87UgwsM/+MtsHhNIddPaW7oC44/ReZYPs9aES08UnhpHtY6imnFCh+0C
	nB0PzicwlWdf3cfcZwxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oC-00000007yPb-3PrZ;
	Fri, 29 May 2026 17:15:44 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o9-00000007yDh-0Ik9
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t7S7xgAvEdLnPvfipxkin9rv7FGyFN9KmkKwbgOeafhpFTupj+0aPH4b1QkvgLOLxEUYzH/xEH2PPL+LSPTJZ1AgE6tSRLOfFCbcHFU4X5DEZLXGFrtUzgbvFqlcnR9B8raa6I3HuU+j4Kdvj0jOPBc88k5/Q+wptlppkhn8C4RfuYAfKzJLEfYKFUwP8jJ/3kJPgXkwovsbtEgbvZjqGg4dr4VrcwiGZNzLG5WX+D8tlVY9sfSPouBaEwf5Q7201y2uiyznfMV15TAenW6GMgTk8nl/OFqFXraIYLstyoovhWmfeJEoV71pGYw60ex2EuzuOzRlFcddXPowLN2Igw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swZc/KVwYAXVZMxYO5+B4gA3sgExw3WvUhW8di2GZuQ=;
 b=f8OMK3Hx5JjXZsopYG1lKtD3ZO1uKS9NBbfBIBw5aGW2d4nHcLsidH166zAllw8rPxBoSy6F+Bco8gfWZsR5S1+LzIPgVYn3viZqSZdtYQdYprQ0YQoOLrIk8E6QNcSZpsN2UOqVbdYyviM+/hyNGWE0o5orEvipfpf3A6el2HFXmuS3QEPMX+QT03AZVOD8Yzlft6FkIYA7cCSau9luRQlsQqgjcUzh6CqLpYqdp2hREWBc3F2Q/gnqfjpoMwyaj3b64QtX57dfjDRF6mnZNKNpikzH33UgEBIepbaEVIJiVzvyaNJV3pHQqB/2pCnhqpgT5eUiVIktEpQtiC+bpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=swZc/KVwYAXVZMxYO5+B4gA3sgExw3WvUhW8di2GZuQ=;
 b=GZif9ZmgAO6xNwC0zMbRXBFHEK1mKYi/upXr2CXWwMk4z//jEaZZsDcRy44netxx6C85mxsBTWlOBwW7DxkvYtjc6KunT2ZP8QQYZN53TuJQHf/giFUxFBRfZ4/MCsygNCFdbxphUxudTOacgaeP/DiqGgfnRsy1T+CAMR10wB5+VnaUWb5tU0TLSGJY/Dwl/Q2yHPOOdWi2d+2VL+1D86uDfp85nhdznKlUr4UjIdPJ7nbdKJB64Rm4IenJlH0buJ2KS0De8q06+1+8gxVqLz/DjxKBP8Sowe8I3Gm9rWlLzPSGWuq0e6yWGJfoiOF6aiQeXXAMrPpeMAM8In1k/g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:30 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:30 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 10/15] phy: lynx-28g: add support for big endian register maps
Date: Fri, 29 May 2026 20:15:04 +0300
Message-Id: <20260529171509.1163787-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0035.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::15) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: c6f0ef6d-1ffa-4352-c8a7-08debda5e2ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: tkEXiqSOaenEjDQ8vUk6STVzRG1IGOu5xpHI9/2fPKNBdaj/Iq/YePOMAzQHS/IdvuXp2TBxrcHJ9qGl6lHJl4v0dpNhDRclZmfWtKp77nnTnkiz/U7JJtrHeLrCNj/12ljPrjOQIdtz1ClwsDFFOgUvPPewJs1zCyglQyI+fYkwb4/7lKNHmAKgPf2ylZUuqiZwgET8ov9Wt0dYqVHqdDb9UzPZKPbPuQ17ggnrvsRKcjxQuamF/rRSDdvGJU/ut7nnKnw+KaLz3UDU9+rmG+JBM1C4Fmw83cZ+mSaC7iW5AWqI8O09ZqsabdYBo5fpdGtj1hSv7VVVSPaG1jVu8/W2ZrCSqjKSClAjMj7ukxQNDD9sB1Op49uYhfdouA7aGFGFb3rfmEFO6jRkmgjqixUdoT4Auw7Wr7ARb2e6SaFBKETsHqQFRdlxMhYzTvBhVDAryW6BWShg9v4doAq25iaJ7i/eaGNUuse/GhRQYUSFbyi0DypXGPLu78faj42MIvDKqA4GZSBxYrQ20GDof9CG+9F5nOf1M0Ei7js6HG5oyAI4s83r85DKqePeNpBlzvjpQeARFCrNQU4s1eyLHKCSbEJxxVPPWoMy+ZqfPJsDSudoHoohn+BHuK/j+OgrE44XxQEYqWc4XWfI5OD9RgDo7WDzETYNYVsW8R30onuoHW7liRrrqaR6Wi6YuJNqOEYTzMLwl0OSliIj1wxwrA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?20V17bhJ6NszAJwZ8qPl3vOiaX/PMhs+tVHGpRP1yNosEH5oIyN+E4996K8M?=
 =?us-ascii?Q?iSHcCrRFP96TkkanRA9iOyDW9XQPQ+VskJI36seiLenZaDjAHyx04M4u6fzW?=
 =?us-ascii?Q?aVvBBf8c2dHQyej6kYqXDZ+RYziFrWEW6XTbtDhq2pe+4xj31/NvtZmrpGya?=
 =?us-ascii?Q?En0zzMsX7MoLvo7dxtAIhMbjNr+9kJkRkgKKc8yM9FVAHdj1IcdrIq4EhzkL?=
 =?us-ascii?Q?K5x1E59m/SHoqdPyUbTkAeXo0nq3TvkcRmnPTedJD377lLSbaazKWb949g1A?=
 =?us-ascii?Q?7GXVRa0aad1ddo9qgZvtnw7SiQuVAGB0SeBUMvaFOMoc3ML5AUoX+51Uahb2?=
 =?us-ascii?Q?eiFDBeBRzA7PV5JXpb1zCxaaCfd9yISOEkigRt2UfdptKvYqU0bpN30O6Q2t?=
 =?us-ascii?Q?6F/yLaof3DFguOg5v4m0UVc/gjHa4+b6cRR42azBRJDubra0eckqz3Z49qtL?=
 =?us-ascii?Q?bsRpkVpbRQyBlkX1cZWzB3PiHU++y3H/ZTI/suWALPbvgyoazlm+DOBwyEFX?=
 =?us-ascii?Q?/8u3PVuvevz/Pi4lcIQmM4Dvw72Tcp+DtKNV3QrjDMf5AlAQorhHgChyCpCI?=
 =?us-ascii?Q?pTTjdxJpyTa9eEr0EDMdbXpp/CGZPTPqpFuseT2eBcs28GAYfdRj3lgBRC/z?=
 =?us-ascii?Q?YBM7PEgka+r9o/RI6Qit3xZL/TCpPaGBbcj66gF2M59qHgnPKYHLUKAzpvNg?=
 =?us-ascii?Q?ykG9sCqt4LQRZwot0KI/9VrOs8Hv+QRNV97pM8gmZP6G6FWoR0JBhiX0PhBK?=
 =?us-ascii?Q?j5cp2rq/8WH2u/jSloxopeQusP9BV7um85CJ/Sjz/FRp7Chks7C58UXT6GEY?=
 =?us-ascii?Q?6gxFLA2em6AZNtqBirfPvQh6lILrY3a+PhnTezwGSodx5lH7dHUBj1etSroT?=
 =?us-ascii?Q?72ldgA2c454BC5nC5JVr9OAoa0nRfkwW7avCxpczGhDcofVgfiRrwJdAbeVh?=
 =?us-ascii?Q?+SQLcb4kGd/U9GmVBfnjo2UzfHHCJJLuzNesX2cTuxRwpL+aE0/+V4VKY7tG?=
 =?us-ascii?Q?wh4g2h8W/4o4Kad40XLmvGSBq+5h2XS4o0ZYt7mBgWHuIWhqjHC0kutSA2Dk?=
 =?us-ascii?Q?A9tWTJPXqEJp4FfEw4ITqNPrXmV6dJsowB9XgrMX5Zw70ge/TFiqeI3EaoAS?=
 =?us-ascii?Q?muwRYpzDpAai0HsGqvs7uteS1NKz9aKH8ZYGUfimYILjOHna7VJPmmGgeLuY?=
 =?us-ascii?Q?s4ZEIWjSsdBGDzkBVqT2+v1y18MseHroEP3Uz1WA0z0Jrn0pYBHCQcEwA+Lh?=
 =?us-ascii?Q?JtgURrVnqsVTJWZTNcEIkWBD1RAfZD6aT8cB+NJZ2d3AEbIjciVkI4+oXQ8y?=
 =?us-ascii?Q?Itun3JaO3uWlzB+8ieXJfvzi1Dm0fixueKizWp9WQ8f0dtFpbRDJJcrJN/U0?=
 =?us-ascii?Q?0/OglWvbwWO2inqdRxWZIS/q6Q3wxLLHCrJ9dCh2nzNnBQhrpuhtnECW5HkU?=
 =?us-ascii?Q?7vpbyNH5+vjXUh5tN6r6st3XhfiAV/fnPJNhcf6trWbOtrqk95nLKzSFASRD?=
 =?us-ascii?Q?PuWxZnk2wGlBg5WJoAZHtrpxVVlvY/fE/bSPKQawLJCM4t/wkORllz6qB7bs?=
 =?us-ascii?Q?lVIQy7u98MotOjIo4k93MJBMjQ+lEZH2LYzH6UCRWQC+SQ5Pf0zHB3csu9v2?=
 =?us-ascii?Q?9xxWFsIBEnsH9C81X8ZuVQ/UOHofmwNGy5akTzH2c8fESfOrplEUCKQ3smnY?=
 =?us-ascii?Q?eBhFc75aB16rR1s+GXYEa9RkEhBpPtaJ2YkjsZlPUkOKioqJhSV3MCthMFbp?=
 =?us-ascii?Q?TIXoouh46Q7C1lCrLm36UZ/iQCcL64b7QyIUo26FNmAlN1IEgivo?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6f0ef6d-1ffa-4352-c8a7-08debda5e2ca
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:30.6940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: raZPdsiQtXu1wtS7gpk9qA8hDVKgteibibOTfAhH/k71ud4V3tmuuuv9Hj9w5GdJSN56VLzFH2FmR4VVeGIdsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101541_111695_5A3C18F4 
X-CRM114-Status: GOOD (  12.81  )
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
v1->v2:
- none. Deliberately ignoring this Sashiko feedback:
  https://lore.kernel.org/linux-phy/20260529120005.icj44ffdvdk25fjm@skbuf/
---
 drivers/phy/freescale/phy-fsl-lynx-core.c |  1 +
 drivers/phy/freescale/phy-fsl-lynx-core.h | 36 ++++++++++++++++-------
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index b14d67e574f7..92f8c82f5b8d 100644
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
