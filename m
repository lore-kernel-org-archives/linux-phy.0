Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA0CCD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wkJozWrD/Er4tnE+y/ApDzmWy4itS73D98hVXsUYIs=; b=xEoKhy083tXd7P
	4dfrDiuLcf1DEMKeqaaYR6qnZFZB6z8IEOfXQ7X/euD9MB+4G0ruCw8lzi3opbINuugkGb/5dsvul
	t8t3p/6jeztx5LSm/m5+9A0VgbJmzPP5+MRIhQumrXH32BUtNv7qr9GHOJUG0IyFjU3dEunXcN4L9
	GK6shkPX29cyyPKKXnYcHDDG3zWlOaYsklGAAT3y5Y4r2j/YZ9NqtRB8URagBE0qjby0tUSdPIpAU
	sdlduUOKS0O7FqUTQ90SQwWUlIzx+ZXm7CsqvAMO6nKfIOV7xpp9HWlxZDgu9+51jQI0n8MEw/DwL
	UNbEDZhVOGOFk6nfX55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTA-000000065Ux-2TqP;
	Thu, 28 May 2026 17:24:32 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT8-000000065T8-0r9N
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ENvsdVpLPk9LfGLi2o2cVNmJiFaDMXW6qQAT4G6wxHocHGgB8pzTp3goSBVqhCOy4Ve+oER7zn4kw94msCdasMo6WTe/UdVFcA1+oE/QpRt5TqGvxGQqBQ8fPmRpVbe4vHG34O8ia8hkT84NDXAeMHcPlQBxyUpW08CG3GAy0kCIwitPq8fQARRpA7UXkgs3T3/R/jbFyUDon5JTuiJwASb2jePSRQww3NB8IP0U5mLCnojaS2HvxC3kduMeLsnU0Coq4PY4+qnuYFt5adsc9ErVt5eyxdvnm6M5w770bGP8BCAvRrk4TYRFENwJwos//T65EmYupMaaa95aN93agA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwELAK+l3JqIFv+dK40xI2evP2ApDhKYiYdRtogU1uU=;
 b=D4+109GeL1GsuySZOaanBPXTNdLTXARJqErSXTOC9oG/HCbRRIy1zqzp/ku7nzR0qtWUWEXXqkysVvP/4kc2nHk+bUv+zbYVKH+0m0Oz/niEDi0lFI3XhVCMjtm3DtbhjAECFJbHJtxZRgdYpvkGOxPEu/WUOoOCA+ctR/DCAqgtXOtQTtkDo4YSvpYgWZqXzv/PMCZ9UROOwMU0QCq2FJtl5BRNSEOyAbl8B5HrtjdW3zTHIya59VUEnmPMEld134cIpaktvNzX8gZRumoRKE4foYzrI7zbt492d8Kog141R0OxK+p/qB0Rsxgy5Vq7cV95TaY26+x0AdLkNQ19fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwELAK+l3JqIFv+dK40xI2evP2ApDhKYiYdRtogU1uU=;
 b=Bmd4Ffv0ezfcTvll2/NY773Pq2tQaXjN68wN1DdMPhUfAlnuqTzMfA4HI5MkNfBHxI8B4gpSNidoujsCLnPWA5uwv+gde6OBSfEPTxEYsO1ixH2ivjvlnt91i91VKSoNwJ/bUYMl8X9w4DpE4p15r3Onb/+TPw4du025hAd5XuRhs3T97KWBWrMn2HqGTYNW8xF2CiMBJQOtFdnBsPJgzTa1KW6oBjdHGFBpFu6J1KIjJ7AiobQBwSNZPp0qg3zHqsDawfkOPbziNnZlX6ID2z7sqxZg3+1R8HUXenU2wpxT5o0wJbWCYFUY1B/2MDWdmSUIMliZnmdoBtooOyEq5w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB11931.eurprd04.prod.outlook.com (2603:10a6:20b:6fd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 17:24:25 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:25 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 10/13] phy: lynx-28g: add support for big endian register maps
Date: Thu, 28 May 2026 20:24:01 +0300
Message-Id: <20260528172404.733196-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0044.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::7) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB11931:EE_
X-MS-Office365-Filtering-Correlation-Id: 90d7b1be-3fd0-4a15-9bef-08debcddf71a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|376014|1800799024|10070799003|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: yVyK4yv9Rnm2Muqn/20v6c9G4m100mRcxk5Gv8/ukXLT06qkknwxE8SJ/uPLtO/dhdPwHUfjuoMqeXLWYjcJiwqwI+DW4kw3NrNkdPKHZWJaDVjs6lAXd6cB81Kv0mkq99drbfSlnaASFoKPRT6ZcxF8BsMOuuvs5mlGFRaEexuDEpXWOOVF+hrLMhd5XXGLzXbg42YZt96jmGfJ7q1T96fx9Wq1GLhrG5Cp6JKjFPGa9LDscyKl7XTEIWOqqieY34X7e/PJy0KPBGPtptwTFfqN5wrWF4Qv6m0woO6RX04SOrgcPfM0rljxsoyK7oxSYoV8AedFlrhvZjKbs+USKOLOgUbfCFFSxCNfmiwJ0pDBbZlQsSMb1Lw1muK3HdGpEN5lZIVLir64h1I63M6FpxUwNs2Jp9F7EsnXpVjvE88xeWaOyFe7UpvTv6eBsFy8IQA1c+l25Pn9uTrZ/+uPd2DZph1xYOP8FHbW+6I6t48T7czB5GH8ikls6ujMLwgJGuMqbRSoTYoRVNMjHcCPaYRED+TxlxCroKESOjaP1p4bHpItasrcErz5yGg4TrjPDffitPT8R4s3NSkdxsBSJ7/z7ZsrxWrMpTGx/tlFh9dBf2jfrX9zqLvFBA/3uqhvNgaMdx0B26Gyi+o4/yRXrPPlneijN3+I4xSaqyE8K2hmsp3FiEMSb6oaolBvgdyQ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(376014)(1800799024)(10070799003)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z+zC4OMybXwa9gjesgFqnywyqYlBQTiAkYxhRBxhuiYcHbvhWAqJVXnwoXEl?=
 =?us-ascii?Q?1dS+Grmxhgui4KQPWUG5l6qLANsWgc5hneeOOcc4CgYSzoSWkZ7PLTnnw43l?=
 =?us-ascii?Q?XDCejYIbMpaJMfTyX/tamr9LDEzoHoubfNQKrY1PguHc4qsif/ceR/+UzYa/?=
 =?us-ascii?Q?R8/8Y1R0DGEvZFSbl3bcv/7TB73jVkFseik3Chj0a87a8aIX3Y0NgPBJuWn+?=
 =?us-ascii?Q?U7s3KDDo0JU7NmCwoZUEGernvpOsUXVEwY1qeiEqIhCMXpb4Pi/tmyE4+i4S?=
 =?us-ascii?Q?NU6M9DA20Wg7P7cWg+E2WspOw4zSPc62n6vvYe3e6c3+UaeHeqDblCnpf+hy?=
 =?us-ascii?Q?WBJ4mGL9gHkfYUmVAa6RaritDoNW2tKZZ0uwi6fK8xOkMlBljTgM7++iXR7A?=
 =?us-ascii?Q?2Ib9fG55GGeSeCU7srO+PmTcAryxtSnuWAfqikn67+hKdMqY/8k5eNnxq98n?=
 =?us-ascii?Q?BE5v2ZVzNQindjjFv/j8f4hOiw+hMt0nu6N9Pkg1uZCVIPRuwVKq9LTJbvMs?=
 =?us-ascii?Q?noT1tpozJsVm3FKochYtQ3ur8tL4tJ8y+I7ObczpwqZseucp5Cv+hEUZLaaX?=
 =?us-ascii?Q?JEwnDlEv6vO8T561cVdQFYGtPBOcgXt1lQzuM/YB+q1PKAdUh1DshjdTg/cC?=
 =?us-ascii?Q?GYUsNG0Ml7/TBvUGE8QU5JSrokm3FYoi5ChJLz22aPjP1z3rUwh33ahTkNAH?=
 =?us-ascii?Q?QBLxXoWBPTS4IHEVSXm3Fui7Ur4V0XMwAqZOGv2hyKq0uad0bZIAm0YgVZWQ?=
 =?us-ascii?Q?gO+fuD3G+LjTA3a1bP072Yx6/DzNi/3FNeOapyhhOqB9D5mjI2xTgeh40PAZ?=
 =?us-ascii?Q?QtO6D96b7UYFcBhzNd15dYHKRXf8QSpQzsDxH3JMjtog2vu/YaPwWw0FOxFf?=
 =?us-ascii?Q?Pzv+CJtPDalamlR+2mwmpPzTCHLTDVurDookCoPUA22nQPLvGFE09xodgGa4?=
 =?us-ascii?Q?oWgm9lCQNg44CMF5Jh5JLyiFWWRp0WsiYF4vTH9MZLrb7DNCLgdnRdM0wxZx?=
 =?us-ascii?Q?0YnTlY3S2W29hgOVJbWwccx4rRZzX9kk3UFuTFBDAXLZ4lOCxTqPqqGWWlPs?=
 =?us-ascii?Q?iamnvhg9009Q84dhNzHk/qB8q6tTmsr/1nMC+YaWBvl2zphZsqNIhkZERo/E?=
 =?us-ascii?Q?Y3Qb9iHXtYjE4aeuIiz/+30k7i40yYC77d+u+kyd8nIcs4oQJFF2+e15f00G?=
 =?us-ascii?Q?+kzAaKuoE67dpNV+plW9e5SLUoUVc6kcVfTS6yLXu1zBQ7fYd0byPihtwYx6?=
 =?us-ascii?Q?8UmooJODMzwX9krK8pWJb21wnPMLQ4FKUTSTAcCtd7rBRUClc9O2OucX1btq?=
 =?us-ascii?Q?9NFvJRKrY29cTyXVwTuIQDqINAy3Oq/B42SSzJxqarrGcNgDPLtuuTo1BmpD?=
 =?us-ascii?Q?Wk06s8jo5PXQSss7fBvAhbC6D6C6NuZzEg5PI5yIDh15O7RBmmYVuf3hJuBR?=
 =?us-ascii?Q?Vaz1rBG7iTj4DtBT1sBS8FAKr7BhnMTMRcN1GsC1i6XQc+Jw4+tqtcX0SbAk?=
 =?us-ascii?Q?Cn+wSoXpPI8YFqQlJ1riRRKlvKBl3ZdIV9uEksok2JFNxJpDuEfveRzv6TyP?=
 =?us-ascii?Q?ozegQJB6iCe+HI0SlwDFcCrMbLFTM1RqnR9DZxKkvcKYES+xcp3jEB9ntVt0?=
 =?us-ascii?Q?J60hTQtvnTNXJugkrCkAx8suABMSVRy0lAsHdqcm+2NJATXsGHZB0QDqyUps?=
 =?us-ascii?Q?SuCV37MpdOJfISJXay5PZEmcOrY5thd05Sy10ZYIZXYJezy4aWcTvwOpPShn?=
 =?us-ascii?Q?BL0GY0wKWXZ8hZxRHah6PrJfJcrj3IaJ8boFIMha074vWqvpQSPJ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d7b1be-3fd0-4a15-9bef-08debcddf71a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:25.4273
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CzQY9GPJpvxUseUpECdUKOvs/ZFDQ9Ot6xClAQDUkirj3Wf/jZHeW2bRqqyH0ferh77yK2kNvl+xaoESaW+Ngw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB11931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102430_248110_F650D19D 
X-CRM114-Status: GOOD (  12.53  )
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
 drivers/phy/freescale/phy-fsl-lynx-core.c |  1 +
 drivers/phy/freescale/phy-fsl-lynx-core.h | 36 ++++++++++++++++-------
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index bd1cd78e80bb..ca523e59b167 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -292,6 +292,7 @@ int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
 
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
