Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB36CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVPpbsAJKsb4ZovnmddF5wD9fQGZiDz2plcn7tvkYhs=; b=qMeioBPTG1W/My
	j1/1pgNyi8ve3NSzri2qTbNDvmT8ULMwdc0u7nbLqSHkVlix42Lvn/deuVTnBs8SDuyE6Kz5kLe5N
	smrLepfybrrJE0Hb9cd63xXK4g98MSFIdGcV3uAXlAkcvS03BvwJLiBSaQQ9HKScO1jFu2MT3VhlF
	ygcDYTGyyMt9LbzOLCJJEAuiy2cIemb2if4yJFHmtotzUm42mLZVBQhP36uQO915MQH5R9ITubAet
	Est6I2b17aqOIp0WD71sNpZymzB6hfuOPRzGWAMVrapJQQAtitIDn4ntMLzRhAK55syrKDelI9qgf
	SlYF/H1EN6Q/fIYXf59Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI0-00000004U7c-0fmN;
	Mon, 08 Jun 2026 22:17:48 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHx-00000004U2a-3rCi
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0rcRYkzuqtr8RR+11AJ9g0HYbEwQfexUC8oLhP/unuRisCtVC93IpofYjlAJl4N44EFEKHSlVdoLvt+CmuyYj7/Ql7QwF2xY9zNjxGCgUmL8N/LyHHqFJnOUL0WB90zfWtat0yrr2Xs70sjRtTJyk/uSpjtnNUVfxeEZ1zpqrL4k48fP0QoJC1YgRiSFoQ3lRY9e9EJJTJ+rbXy4/zH+dKQ+RnCHjQI+Rs2cK814HtSI/tc0bBN3CkDK0Z23v2mvSXVC6x7F0+/KnncUHdVXZffxLxsPQnk7oMRkPFMinBYQ5eJZ5qgVY5wr6qWWJXH2FiFq9fTF0bGld4UP7fN+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HATTRps3A9qK9r3cEf3m5MLWpFDeMWwNua0rf+X6SIs=;
 b=zIGpv2C4MP5acUlBg1WZDgcJzHXNX7R32XFFHmw7S/tyA6ha9DNINeEmOW1hJztdi7m7/UfxoGkOVZl9f83GpalT0Pnr4Syevi7fs+9+LQR5LBTjD4hAtiwSkYgkTwScoG/bWAeNsCZoTWwx/gCAKv3oN9y8JydfmRcZ2mX6jqjsELHVulvrgwzmmUhT7Eq/e1HIu8318ElBXWIAalQ4dAAckn4bhechJe4D9Is1/Mi0bZOIuUxxGtEpPlua6G3lo8F6Y6IW3WLuEKz4seDFWjMbOkLfzBTKx1zf6CpVhy6NWy1VcD7nC4aaJruWt3gVjRF2NSAshDD5y90avsrjFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HATTRps3A9qK9r3cEf3m5MLWpFDeMWwNua0rf+X6SIs=;
 b=NaumqfBSAcqxDpy+xp0YA7FJuoyG4Mud0+IGROJz+Ee6J0+SN2932EOGE4hibmKdBDZ6pnxDWgv8uMGigxlIzMniPtR72+sYw9WKN/lwdG95dJoVfcut4OnipkZuhW/lncAY4z7SFpcMcvCuQOFkvge3MlcgNzKe4e/g0ojAhwYq6CHsd8kjNB/OBxa4XDF//Ep8BEIOgPBOjBnFnBc8SyEPEOVJqladn92u7F8SAGS6oP6EXcqmjvpBcsU3hL4FHF0B1XFAkPcFzDmauEsveNpoMSZQMRoi8cCfPWp3sj3jvta6R7BpSuLE9OJwNoV1EsHnwHmXCprT6iUqOFi04g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:39 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:38 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 05/16] phy: lynx-28g: common lynx_pll_get()
Date: Tue,  9 Jun 2026 01:16:59 +0300
Message-Id: <20260608221710.1572971-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR08CA0221.eurprd08.prod.outlook.com
 (2603:10a6:802:15::30) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: e48cc561-e635-4b14-527f-08dec5abc030
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|6133799003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 86YiVTrKa3GDjSfNXIsnzZdH2LZbGRchyraL4bT5pofDPZryH9STVfnaUF20q+V7/squnNgwNfM1ljwW/7A7dId8Nbnr6uS++rWv5XdAjXiTENs5POsrpgKYI9eHKyipi0jBuIoPctOYFpnSyD0Jls3RsSeljBpnHCufyaHoXAXjpybQssd2P6RwqUePk3UeSZT/TPNt/3ypHeFcg8chopesyOzDWBUqD4+pfNjYs3yAuIDB/znOE1UXUDewHHV/CM6jRT0KlQTTPtp2HAPQ5w6xjNeC4ZhE9qv5K+230nIaJGFUQwtamMEbhbidwBBu4e5qFCszbp7N7gk6DOXfjPfbdhcaayvDhmmKUqzQsRohUx0H3ULe/I5/LKxfIj9C4b66HNS/AB+t5asQtL8eJ6FIyyqB03nxTIMoIPATbFoXzV2QftUiywDGefbZyhQhCSung6ZagwsfSVXJqCXmcvREnMXPotHFPW+xUTrHzYazBgnSWgPACCz/N1VNAxQQIE1TDI7Xwe2LI5K7mdYRg6e7xujzC4eI8PEriLqmp8iHozXqip+k9nuHwENulNTQk3MpdZbddf2ac1jX3EGPKmrzHSFmxZE0q0ylSgj4m/cwUJygMgIS+1SWlABHN520I7aEWaqgLH5Y2JUScXgOyc0OHTo7k2dlHX7bmtvJOK2vQSUVugLlhAqYUkIOlTNU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l7tYYfPElg7SY/AlBL9kuUNlOpTe8x7Nh9uay4Xo7PTMJgzvQ2EpqgKoxDDR?=
 =?us-ascii?Q?vZUb2LPYXdWTZI+ERa24lsbDILGg8KuTgN0ZENHKUKokiChp/gaBvYIVxIUH?=
 =?us-ascii?Q?WZ5AGU1NXxa65i2UsGj7vw9TEsbjEtCNcdXr84YrNXJqf5jDmRzMoIzkIpfS?=
 =?us-ascii?Q?oxc9RDwFEIssqDCsr61vo94BcFVc4tyhgWtLF4Epgmi1L14lxf0mcn6wDhjp?=
 =?us-ascii?Q?7R1CVgq9g/D8MAN8uhqaVPQg6b9L8lsMDqv6VL9vXd5e1X3L/NgZau8PllH/?=
 =?us-ascii?Q?sCPGhBFbCUeKKxDMaJtNGSHQSx2idEvZAnPMmNOqwq+GKkm3KsglUlZPUS1D?=
 =?us-ascii?Q?mLSFxeZc7nrTa/gEcUJ6komZnv0sUmkpna/ej8ai3H5b2yfpZGm5mCLQDAYi?=
 =?us-ascii?Q?gWYpyU1KTx8IzFN52s5goDYKRvo36FAkCklYqK1hOa5cKS1Ovl6/yRYTjpOH?=
 =?us-ascii?Q?Q5/bp5YacQVGahUbQpCdGmyx4li2EJa48qgXBxV6iOcI7SXKx2s1sQP4KgMN?=
 =?us-ascii?Q?5BpxR6OB/ADBlnyu/wiuVr9l+ZgFH/a4TmektzlyQ68CyvTrlNR/e5okDMIy?=
 =?us-ascii?Q?ft9t7/IeywNKOQAOwgSGy3lYFxJi+YYKMwW/hpbPtalztv+UOUlFUgSSNpUa?=
 =?us-ascii?Q?i7rllKRfGysxIHvnmeVtfhjSprqKF0m0pdJrCN0DJ9QLrxGNgQANAi9M5d83?=
 =?us-ascii?Q?Ree+ucWeMwn4AIeau+lr1EnAMEW55pl4BqkNoODeEkXPjM0k/1InmT5ANHBS?=
 =?us-ascii?Q?GDT70oNy20CEp3AautkiHoVl1PtzQ/pQPS2OEiTATtlG9cdeukbuTqiw1qSw?=
 =?us-ascii?Q?jqG2m0k6nFCqYPOsplNmj8yA8ch/rjuF2Rz/BpfjoqES0IkoTl6n1UTD0tyK?=
 =?us-ascii?Q?4jS0tIjhEQ2jp+W2M3iotygFsBQGz28sFcCIFyFeaGT/tirZT0AT+Wjcbabq?=
 =?us-ascii?Q?2g/S50lAMLszIXdM7T07js3QkrJc9e6WENKONYlroQxqAJ7gzIyqUraKzIVV?=
 =?us-ascii?Q?Bcgc4F3098bM4ys7/efUIKGhmTdd7/Y+TXtcPzH1wi2Yt6qkSdXbcVyZkT0x?=
 =?us-ascii?Q?P5l+hZh2Q63i3fj4BZCfpHags+Nlth3tm5GSn0tgL3wHRRklILcPgt7C6qQT?=
 =?us-ascii?Q?DhirDJe2+C8OoAxozG639kStT/8m1MswRie5oi9prpZypg6mEVRyzII6Rr9a?=
 =?us-ascii?Q?VOU7tnsnIu8iBZFR9aYcxiQ9aOKKTxp4i5T4YuA7EypBXX0l+aX5egs+20ls?=
 =?us-ascii?Q?Ve7Fw9vgrsUpdxG0e8/CKiVKOlkRIqhp+Wt1J3zxFkRXo0eB4NGeJUtYZUJw?=
 =?us-ascii?Q?Wf5clTNCptCwxLD41a7G/7rYRPKd9fE+/o3wUYbQDKS0hNz0QJb0/jDo+5Z4?=
 =?us-ascii?Q?VA3jEdSF7AfmG4x3kii8QCWfEuxGlyaWyOjEDR73+bXGSt/vcRGVjNCX8DtB?=
 =?us-ascii?Q?atCsuUwdEL92c7lhIX05kLIX4tMLAH0P2QQRYSTdk3bnEJR6jJX2kB2+Hs29?=
 =?us-ascii?Q?mWS7bQXakRKvzsglhIB8TEmhDYyvlpDtfTnLBVeD7Z5iMZTKeWADjsV8XagG?=
 =?us-ascii?Q?2vumiJc+1zLPJ6x/UNVKiSKJJKkZVGEKzqBR3hNX/Q5ekrBwWlIqjDvHyVFC?=
 =?us-ascii?Q?3iYUPmGyNEYzPDzcfnCdznsVlcXdMjMFYKeWxk9MJZFMA2KY/nCr6OPhMIIA?=
 =?us-ascii?Q?c8dNAA3Hp7MoqHB9sutWq1VXb4IPi9Xd0ywjtK52HG1TGTgI9RufRQeaZy8o?=
 =?us-ascii?Q?dO/Yp8QeXFWMs3xet8ddUb+2O4IcMnx/9CQ5xJ1aAzk4PNl0vOcy?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e48cc561-e635-4b14-527f-08dec5abc030
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:38.8879
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y/HBan983joRXKZw0Okebn9FuXm2YzFR4IApy+qOpHvTTB6xuHjgxVgZTkKFTsdAXiSbJC+GEwceLjnmJTZx5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151745_961125_D2AAE818 
X-CRM114-Status: GOOD (  16.54  )
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
v2->v4: none
v1->v2: add the drive-by refactoring
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 34 ++++-------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 24 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  2 ++
 3 files changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 570fa74daba0..5c473d6c233e 100644
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
