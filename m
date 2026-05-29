Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB902CD4F54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuxXH2WwaU2FYDKaE+ybsxDRw7QCIl8sGLyIJtSrRA8=; b=NsUMP35oR1wgm5
	lp+Pa/nzBRUjFq4LPStQOz0ERa76MyJCF811lisiJe112B/tv20/nvgJix3YyrcjaWzc/lGiKCjaa
	2C3VmwH2DHaF/zoC23lb/uHRkcJ/uWsicjccGdZ4UjnjM6TTzr81PfYQGMDi9CyjPMV15/5IEBNgm
	AGHbtAOQqLK1XibJZ+fYlQBaD3S7NqKnUFS5uODnUK0A8ta7IORDIdIsGTe4WvuUmWuLQ+yJr6miv
	1czxlDMXMbv1QIx6v4bXAS2HuhX8NTKfbdu1cqOI+bQVva+6iReJz1T5NY46JnB1e0gx8iCE/H/kF
	0D6dcujy37ReSTeHWNbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o2-00000007yJk-2JRJ;
	Fri, 29 May 2026 17:15:34 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0nw-00000007yDh-2z3S
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KURLyVHPexScP+jRANIJaBiDhQ3O+e88bMXRG6ScWPGcY/wrRwudBaHqtYW9zsLQIGcuGwSvz5P8dwt5eGmgdT0eafNdplLdvKT2sOYFlZJklp/SUCMnmK03ZVrBXUrEh+a9zvTnJZcn5Nuss2uilHiKban9BnPYK912bGLC03Z16wM8hKmR/EWGxM63+Aj4f8am/Zq+NeeLVEPTY3Rwzt7T7e3wH9pcwm7yYVSiebZEthWtad33omwtLjPgtYH/jO+5BCNEJo4EmJcqHq+bltlurf0+2fBnZhNeSDjRL5kxoLa14qwJ86zIjChTioKM4LjSJvlzc4C8H4RCF7qVGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T6iuXxU3BOSVbYNYc/TjM3jvPLzaIcvrBZp6VdkHrb4=;
 b=wlQIPw0ipzGF++ZtAdvmWgJRXmvDuW2GxtKVcBEZcMysvU0+XFlqjt6oJA3E2V9oaoPuQtndKUoPHtJZsgR2iqIu+fv1FkFpz5a2StdMjugzMqyboksN5twl/q2FZYHTPk8k+qWzc8huUd1qgVsMPOAuyrVLcRLXKzFn3Br5OEBmYqWJvfI2NdhJ70Spk+AL80gBP5hSiEyW0WfLxG5NySo/+wFUWinS5qQaM+8bx4gToOykp847usooZvDHXOlcKxjifK/KYAdZvELT1hUCg4SruskY6+ECJZ+yob6OaFKDNPl3arepXVSBFuHiqFKoEvhNMlNZCN42LLqacBvMLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T6iuXxU3BOSVbYNYc/TjM3jvPLzaIcvrBZp6VdkHrb4=;
 b=jAtgfzThNdzGoPxuOZkYTjXeZC7rkvdJRf616+AzxOG6HFZ9RNpVeHPTwn33LmqTzGfSRtKSDJZkgt9L0zQHDkvm0bAEtfJaDZtJOki0m8B++5pEQoKbTMzUFxC+F9mIgdMVEtnY9uR4DLmtQF0MVTU+noZYZYWwAWv6JwSs15SzdNU82Ty3NpBjzbMeKwmlt1a4A8x0a3z9XrwAjfNuOuohubjQB6Ext0wOqJ+9PpW+AjRQlW6WiyHmdDVAeoeEovO8M9rRbCqQJ9IawvhsKW4kPZEQVF4Ex/5+82DViHz9NlZXFd3fdY5VbvSDXAvfbpyDl5UJdqR9koflzJV6Sg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:20 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:20 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 04/15] phy: lynx-28g: common lynx_pll_get()
Date: Fri, 29 May 2026 20:14:58 +0300
Message-Id: <20260529171509.1163787-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0017.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::7) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 830c6a2b-1d6e-47d1-92aa-08debda5dcdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: CLbXAaK2v/I5Pe0/OBmSaUDZ+UMsfTuN8BKRM+MNfXvmZ48XaTUyj0hty8fiv/9fBZzcnRLHQ6vUqQCBnUZ3lx0XB9uDY5IKNmDKBl0gPElU28Ygm++2BCnhlk7BIHfd5D9i/1e72mEqfWAQ35qILuj6HXsRAysGZoTlrK0NIPY01GGNsdw6FaMh3eQZcKZ+8c6C4bFD3p9Evnx0F9x/a1BBY59LQAQQvV04nKkZb1iLtsV7U8fpmFKqMxqkqBfyyA4un+twCQUGnkZBL0B5xbjgikVOGXDbV5Mk+6O5Ug5alxV1geMXAmthDzhEHyx0n7qaIU6v0UL34wgfC4UdJzqD5byMIZdXIK/aCiLKg4UsN5ovMFfJNdeR40xKFK9mgf8Iw5kqP4mSrkMX/WhBrMxseyf1XFSX6iPoRyoZgGSwVe1N5yJpCe8rx706qmS+CWbzw7XPHrJfZ/bJhjy2HM77x6X1LF+RbYyUHixQ4/ilN5B9xBYZ5tLTKrZLOQOlhkm1+nkGup7xrfeAT65Xy+NapqxQK+aU66N7STXM7YF9OdWuMl6NZBCDcfolnb69FWjNgtrdQWGqKgIO4JT3LBWSTmLIVLFFdCIyE/ZBjT0Fq60SIx7fwLg1cu5LneVuvlKMVHChaF3iyA18m3qrJ/XbrAOTAwISyToX+XFWXI2PXL/6V7Awn2FQRfhnxV0+
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fK5OjOD/S7MJUFvwAK4krJ2bYbWFQUVypWbUOJQC1AiFNzjS41qR/uEwAuyh?=
 =?us-ascii?Q?uov6KP7y8/OyPINUFRkPO280WrI794J0HcEQEKZirZAZE4xA3Ka6W+Eh4kBG?=
 =?us-ascii?Q?mh11Vrta+cC2AiHFihnniBG6WzSLPl0bnlNqlLgddL+H5kV3HRCurUGSWnT8?=
 =?us-ascii?Q?gE/WuBf8r4BVyxYNZf30Da45eDv1xvliuUhWLIz9oemCmAN37tzZJLsBNziU?=
 =?us-ascii?Q?iZhFeiaJxgyyaxkWri3A+GcRHkRh/hwj3JXN1ZpMR2GCIG8svn6CdR5OZ1JH?=
 =?us-ascii?Q?yUw2957tTAqkVNaMi4PDMx5zyX+CVi43Sv7HbtyQqrd3WxmsXc3ZXSe2j9hG?=
 =?us-ascii?Q?0nrKZT4DGhvFUqvKlGpTiPH8d2hsXj7NuB05zMG+6B2OhmI6JI3FIqS1LMdt?=
 =?us-ascii?Q?E8i0aFaNoF5pu3PCwDpN0rOvLOcbalfNcNw+qgdDTiuQj/Docis+MgYAH7vI?=
 =?us-ascii?Q?Fk23yTzjjLBXBCqz7HzvD+zOA176lJEoJhj+DgI+Y3fkF9DbGNkDvxiZMzdF?=
 =?us-ascii?Q?FRLAXV/bCqPZkp6GU2icG1bnVJD6Fh2t4QcfAUsWPaGjHIiOK04Qgq0nhTRM?=
 =?us-ascii?Q?pfrIh9ns5pX8NXyWjln/rul6KF5gTa3DMNTqkZWdwFCyY70HGjgn7kU6Najm?=
 =?us-ascii?Q?ClAVSSo7MYtwkU4oyQRzMsBTXyMVxweIpI8riyALMlvm/bczS/ojK9bMQdQr?=
 =?us-ascii?Q?6oDda9AveOjjVDGNDYFhEIineKa8uZiHyOwZtCInvgXA3JqZUkTaur4e+bys?=
 =?us-ascii?Q?hErBkkrYfwFZfS7K7fGe5hYpvfD7+HenMfrRRVapyh2yqUsi/DUWm9bAmBEs?=
 =?us-ascii?Q?9O+1MVQKFbB3VdaRXeLTmiZMsWR9WfA2WzZSzJViYQy9S/2LfRcRK5axkiVU?=
 =?us-ascii?Q?0u95S1oa4X2DfTe47qkMJFa/yeQQjFQRuN1Q+50riOVPMPKuKHjPHcQjwLqv?=
 =?us-ascii?Q?9HB1VFeBWySRaYQ769duprIeFrD97g1a7U1SLkvoFwqvG1NSHZ/W8ziQTtMG?=
 =?us-ascii?Q?Wl19EUPUCu9JnxHravQxX27/nbU7QxGg29Oa1O3HbjieZX3NcieqbaiTOOTz?=
 =?us-ascii?Q?mO6s8YKpFaF80vhN6qPWfjSoTmyq/eUPUBPEJyKbUPsev+ir3htqAe6uxRmO?=
 =?us-ascii?Q?ozCuMVB+vNpQJYfEsNI7jx4+SLU4jUufEU5idykn3ACh8I1lZFBymTtthbi7?=
 =?us-ascii?Q?uny+kJanu8YEQiaRck0hGglk7d6TFgwuOd5dY9/cJgnkaIhYCv0z4ytGwY44?=
 =?us-ascii?Q?7B7xwkZTIMV7itG8zRI1iyp3URbNz7IdZRLidVylOTrRybuZTz2LEXYICqOn?=
 =?us-ascii?Q?v0xzvw1S0ipnnO1zKbrBK0xX9CdJQYQ6ibuaJzoc8C57MZs2cQTHFJqZJjOP?=
 =?us-ascii?Q?A11hoNWVUT/G9eSDKWMRLF8TZmWon/48AxgVcKF6V85Ws/8cLy1CyPON5Kk+?=
 =?us-ascii?Q?sWsjSXVgOlcJJqGPUcApK1WAi9ff0ZJMDTlPgNqV0Cw+BEPj5nmbQw6URVuj?=
 =?us-ascii?Q?ZHpNJghZF/yEGRMyPevvlIr/Y7ftmrF+l0L+Pagam+A9gEjoOGuKoqqx8idr?=
 =?us-ascii?Q?8ecLljAuJksZlMA9MQqDBjf2ttNa7LIRsR3YOLVgnL6qc0zpatdmO7lIEBoC?=
 =?us-ascii?Q?r4rs5AvFRWX/ELmsqduJXrFRT8JXAWDwSa4hPMbDawdQMktqOCpVpeZG9HIv?=
 =?us-ascii?Q?jzmx228vFXMY465FkfQgTgFcEieXTMT4YeZRczT+s/6b02oI1LZwSMVD9vwN?=
 =?us-ascii?Q?YLI+PvdSuYnVCKaIBroEJn2QxzNVfe5lDGTNiDa2g94fH4Bys3Q6?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830c6a2b-1d6e-47d1-92aa-08debda5dcdd
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:20.7232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pmgTUwQkTSIXmfCnSNIx7x0sC/CTLAT9d88n1iAXSPNe795WyjBQXFyC4YHUeIBVLDQHhkh5YL9z1v2OS4RiFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101532_438460_D96E0B88 
X-CRM114-Status: GOOD (  17.45  )
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

While at it, update the call site, lynx_28g_lane_remap_pll(), to use the
new data structures, and refactor the NULL pll pointer check (the
current form triggers a checkpatch CHECK).

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: add the drive-by refactoring
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 34 ++++-------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 24 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  2 ++
 3 files changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 482c5d8fdc6a..504d03ac8a0f 100644
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
@@ -927,15 +903,15 @@ static int lynx_pcvt_rmw(struct lynx_28g_lane *lane,
 	return lynx_pcvt_write(lane, lane_mode, cr, tmp);
 }
 
-static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
+static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_28g_pll *pll;
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pll *pll;
 
 	/* Switch to the PLL that works with this interface type */
-	pll = lynx_28g_pll_get(priv, lane_mode);
-	if (unlikely(pll == NULL))
+	pll = lynx_pll_get(priv, lane_mode);
+	if (unlikely(!pll))
 		return;
 
 	lynx_28g_lane_set_pll(lane, pll);
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
