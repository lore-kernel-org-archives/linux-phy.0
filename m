Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3242CD8CAC
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EA8/pGvxSooQSj46IO5kEcvlRc26dV2gurfB2Krvx3Y=; b=qjZf5zjqD445MD
	I0oeaGt26WJdjDBDpwIDkwtQuRIzvb0ZpNPgRJTNEkDYVETkbtE+oNHy1a6oYwrVwRRYF5DYNYJG0
	ypWinlB7WH38csSqIspU4Gr/jRnjv0HLPimKuI9ZjOrsNg4LG6XEUmxQNAhji+3DlKO0SPHhq0+G3
	5n2Jv8G0xsOzQmg55qvGY5CZmfRkscjUd+1ugvjA30oYw8KSqLVIt/bMroU39SjMoAClbgIweSCWc
	eDra435PJTuZZpahOH7Y1qBGEhGlo64d9w0MuFZ2xIHzEpDyP0wq29qyiIqClmCu82fdFACDprxm5
	VEHt6GyKfaJT3yEIKB3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI5-00000004UAx-2IaD;
	Mon, 08 Jun 2026 22:17:53 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI3-00000004U7x-1v25
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hj0nvv6m4BAnJF8qBpx578gT6DRWf5PNheEhkXHQrK2OwTM9e8+HQFhpf6cFOuDHgzp6F71mQtzXCwMJ4pnkCH+GOF0s0Uk+/n7TAAejK8Sy8CvF/rGW8btAdoczT/Vy6uZ6z7GrmAT9fSduSEsHd8qlZyQSKaSFCoiZbkLQJTPDQcOHzYnbI40wFA2gnWE9iGu4fTrhynpBsYG+RA8LxOZYXdR0CQCTPHaMH9TyEHI/TvymxnBRwz8Ao4ilzDsEnsZ0TrQbBthQgyMHibx7pv88Bdha+2Ovn96Gk0jkYRpF7e5jEGu87FHl6TxnSsLCc/7FIQipXArfDP/wLxmB4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M8e9tykf9UPmRk0XbkkCITzVFKHakH4trnOQ+GrKZDQ=;
 b=qBcySsKFFl635743HX86F6nu6g6Dl7+M6B35GdFPRHZxBPWu1ADPfYhFfeP4XbTHXYBAb59+6xFdhPogVrYexZRY/TyXz/vW/ek+J/AUbwlYzOQ0kLjDsoKd0ARo5EmQtBKfGwDM6qtXeOOi8L+uiRkaQkcMumNLoVebQH/YHYqWxGgAjs5z8Ij6YZWtgMrXZXAnC0INuOZJvQOgek5xeQlVmTK14LsjONtMtE2Kmbp+F7IlixXYlW9zcFQOcnTUkzCklyVJ1+0gEte3iAYX2zW9rPL0iNrwV+5LQs84OOdGI/iDXRKLmORcJF0hi0x99rPQAHA4Juyo5l4S+bjzpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M8e9tykf9UPmRk0XbkkCITzVFKHakH4trnOQ+GrKZDQ=;
 b=GD7Ep96XkJ4urVabqu34XS+bF5rK0Bw7/CJQDzRmdszXI5T9d01gF3o37Y3LSZ2i1DiCm1iFIlPWvJ719y6R75NU09OZptP6G8zS4zkWtrq3l7lLxME5m/lxWXYSfinujwh3ABpAWY0nfVD2JvGF5/RIX0fIMFgJJMcxOpevQUIBwaaAVtIosncUaq1mvXjrTMdt+jfGupXCACnO8U/Kd3bZp2W8oKBus2VAGfYxatDQ9zWI1aWXx7Fr9u3kzerrjv2wNNFJ1QPpDNPAMuRMKAAMs5BDy8PFqWO0kz2y2td1aIFfh0WTOswXgf2uDuo/V4j4Ii/ENHSPcQkTdnPVGA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12070.eurprd04.prod.outlook.com (2603:10a6:501:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 22:17:47 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:47 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 10/16] phy: lynx-28g: common probe() and remove()
Date: Tue,  9 Jun 2026 01:17:04 +0300
Message-Id: <20260608221710.1572971-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VIYP296CA0007.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:29d::12) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12070:EE_
X-MS-Office365-Filtering-Correlation-Id: 151d9b1c-7ffe-4548-8719-08dec5abc560
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|10070799003|366016|376014|6133799003|3023799007|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: yNc4MSfY8Z/IfzzRV+MfxSiyEYnFO+KyqgYz5BewshPE2wACJBAwWxx8kD25tMiGuuexkIzXZArtwDigmv7Km4m2EyjDK9awTVjnpAIxtOSfyptxh8N/q7RHOYg46RCLX3dV3Nl/lDIt79kHNdhxXfadAj4YWQmMItZteQe7XRReXiyNXH1gLkq0C7RWvk+ASpNSvPxCpNSNXu1V9x0paHNEXxtvsVkFBf2tSF5aOupx5OTD1ICzQy1L4fG2f2An1sd5Pt5ArCASN/rDjT/l8KvPcNL7ofCZSNH4LS3DSd/7cKwEhE9VW0PfIbNYD1OXY+/07i8Dqrm84JURiQHU02qQlSE83HNnpMVeXesomGjKT4XtWLe9B8rb82cTbkIjIO1WXVF+s+nuLNYaPDJOODiO1Nmio9h4WXEmekBO3qPhHujSH6lUs2o8zHA2dvU/vb4bNkiIHLvsTKYE/tGMiLU87XeC8Gu8qAcER4yCuJ48eshXN9bgB34Z3L8zfVTmvjW8n7gKpyEQPgylX3XKcTKp3x8g58BzUBiOlKLo/QxnT/tnWrnvjSXoT6kJ5AKszKBeqB8/VuQ+3H8QWbSn47QCmMlDp1GGuz+yWU1qjg9IL+NsAH3xlp+QHfwd5rFPKBcaiwtkXYQdRknAa3RnbJIbtVINLB23ImjleFclorYsQrwrtGUjXvurCB5G8mua
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(10070799003)(366016)(376014)(6133799003)(3023799007)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q6y3nxtqH+E1XHj7f8VDspJsfAKdIyodQTq8bboor2b1zAtgHlLqWYdbHDpu?=
 =?us-ascii?Q?ElFnl3TTc5s7ZuWToEKUEyuLDkMpmeRBJA4INFN0hCBFcbqUy3Mejl5TyZj4?=
 =?us-ascii?Q?qCYtjR6x4sf5JaYAMN9abTBkevA/5afM6RvPCL4xu60Qrr6FouXYMQEngXtu?=
 =?us-ascii?Q?RJ9pJi25fML7ylbPSGEYsDDs7JZrtU2IqNuY+oz6AcaxGx11RhUvcSfPDSiu?=
 =?us-ascii?Q?qs9h7FyNkkv8DXNIhZbUWavFokbzIWoGqvYtQHiRpQR0XKyM5FtXx4eeX24I?=
 =?us-ascii?Q?6BFijW9TiCuWgWUqFm6rG/SxqFTduH37gbJJxo0pStsCcr3s4whLl5L39x3Q?=
 =?us-ascii?Q?Y6mXq5EzpFLvdq1pDz8BPsg6aWWrzzLPXLNBP2sbV7p41URD3pw6Ip+QAtqR?=
 =?us-ascii?Q?vBsx1VXH/JN6It5l9AQKrgdpVlj6xIPvUcxqIyaelKLa7CwdiHtSHC5uzITX?=
 =?us-ascii?Q?3JcQyhz7odr2fFNmGqrW0zPwyv6jyVGmQnhxOKvjI3SaHXhPZ1wW+Dr4mi63?=
 =?us-ascii?Q?lvD20OvJnhQtwseu/7OnsFsy708rkMME+e1wIZaTsF5MVnU2bZN0EDyljGhl?=
 =?us-ascii?Q?Mc9OecfA7jgjZvWivdaFuu7QIUViCZ+hl3CAsKjXFX27Rtt9cnZw873hTKCB?=
 =?us-ascii?Q?5PnfPvPtZNMIkIMfGkBfMgw/pDIMNMvVOr4jAjhTdKo7CUgydQoxtYJfCMA0?=
 =?us-ascii?Q?SoCmRx7pf/nyIvNBe3Wmh3sUswLKgRM1LzeRPq6/ArHex9yMAl/P35o5xJPt?=
 =?us-ascii?Q?swnRhqUZEjRWo1xYfjZVQtgFV1+nNLYxsFP5UQZGhfl8duA7uXVYpyc4Gfff?=
 =?us-ascii?Q?OAg7zylLY6VOTzVmThMisIouMSFuxm3L83SPRQ11J9q03lXE6jNCzN3UibgO?=
 =?us-ascii?Q?KLtjk4RWItWMua9dnFFJ3mRbLsobWxuTVimm3V/c/RODLdpjl5gBx0TaA8+f?=
 =?us-ascii?Q?4wAslcEwhQIGDrMT6/IzGIpjNQbeDJ3ycQ4B4gpgaPxQFUed7ENgKoYm9XDw?=
 =?us-ascii?Q?EiobFygSdBinCnHTUWXEhjdE1hfvzcKJ5CBSehBpI7pBh2iR5BR3I3x8kB/T?=
 =?us-ascii?Q?AFbbaexfbQd4aPyfxHpx7A1ayGK62WGZeJOt4qQrRk574GE3I5+WOCAyPYNq?=
 =?us-ascii?Q?tGvBgW09/ZBmDsIYWAVsV4LmVxc+EyNIpWFpxGw3KATuIQSsanpn6P6Zcll2?=
 =?us-ascii?Q?gzdSlA/hZlPp0b70nD/JZwE4FFkCERyPi/Fnmsx7At06szcZa8zABGBtCN7f?=
 =?us-ascii?Q?Sz/7lMdshWNOak3zWfWqXMMvQseCN4e+1sAJv41t4QHmMIY85ydsOMsNymzP?=
 =?us-ascii?Q?ueqI3ZIF8imEsqtMMD3TA6fHqekEQEqvi4VR1PXO8fRr4NvaxGs2MhjPlmgJ?=
 =?us-ascii?Q?ypvzOf1MUKW26pMwsewoqxfsNC2gjf8T9fJOaCEihlFMCgg3NB1KNgG3rc4f?=
 =?us-ascii?Q?ArBMHGFpwv8dpZckvAz1aO7AQZDCaQQQq2fTCew2wvCJoIeha3Cs4KoqBQm2?=
 =?us-ascii?Q?MXaZb+Lrom7pJu6oCmltwno11RaFnImHUZiQQg5EBD+2QVT1R5KpvGaarmXj?=
 =?us-ascii?Q?HqryFSu9U2wIWtUzpNI3KSV74+6eAoGMlvRenzQIz+8Ld0Kno0bEZlD7TTH8?=
 =?us-ascii?Q?qDmeXWeuR1oMcbOZ8J+xtE+jouJAnI4WG6sdnT8NAlXKtrKUfKGTxuTDQ2ow?=
 =?us-ascii?Q?CgWXXgAZqxeIocnhXQ9mZSA46pwav5U4DJqOwDJ9bp+pn3vK/3XnFYPYvdxx?=
 =?us-ascii?Q?HrrEjFVg+nc8UXiPJOonwkLM8VGY+i4Wh1eCH1CcPl5U/SIFt5TW?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 151d9b1c-7ffe-4548-8719-08dec5abc560
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:47.5730
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kgIuIamDt2w6bMqAK7RQYPZ8tkIN3tXP/ojMYVjq2RxYzJmux2+vCATUKZeneBjDOfk/6AlBeEJ9NJWXPk45+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151751_533133_9809D01B 
X-CRM114-Status: GOOD (  18.43  )
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
v3->v4: none
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
