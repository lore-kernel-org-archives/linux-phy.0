Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0801ECD98C6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdyjIO9zupjU+uFzticYZE2H+am2ursgq44TWCeMeGY=; b=i74p8Tu/mEKB1e
	eJx9LMcq8/Qzdy69zPYHMhLBGywHEI2n0fI5q3hTxmMC1PJoicNNHHYHdRV/s261hnGURa6GYsCsY
	LDL183a+jw9u/vh5Re/M3CONgy1OeK3HdAeA3wRBERBGuw5JJK2htsSzVFjVraYmlv3d6GP76vfNy
	1rezjCnW4yucioG48UYStg+Fkneewkwg9RLtlhERkatCT6sC1Xxq+8cr2xXu90453cqPQpeLzE1jO
	ql+o6y1qsKHD9WrUyWYkFrKm1ImTKCBpY2hxG1To6eftsp2k7U8GoMxtw8Ab9ZT3h93fD/XaWWuqO
	h4ZA1eS9/7YgwyG8YYew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj2-000000080VN-38AX;
	Wed, 10 Jun 2026 15:20:16 +0000
Received: from mail-northeuropeazon11010036.outbound.protection.outlook.com ([52.101.84.36] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiz-000000080P4-0ur0
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pPAMqORJMEfW8aQWzIMvQc1ZWOBOLAW+lVmFLVQscOrTHOLN4deINJuT6Y3INBOQvd3+o9cZvlGhDTaAajNiFNvLvRtp/Fx2dftMNLlvcL33SmsZUB3Cnyt5m6iEI6kxI6CEK/xvi75wYfbXd58pd6YOm8IezBplLO1tb91fCbihgTcikxlkERhvTVsGx93eg5NlkTjWbw7wMMV2Tw3cc1opV1ZCxbS8E141oZ+NKTKLvHA9qV/6XyvgrV6zciocRiCARKJ4HJBzI7AYkNt6yWjmuB9k3PaPJABul2BHLmNjxIHI7BRrRVKvHIv0yDxfhc1l0ZSgpqw45lBahPP4rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZdzBXpbd/o10eR9fRHtJuoZHag5HoDsQUyvhBmK3vE=;
 b=fmzaMWROvCwV+/qAezebe0h+emNCbBt6F4IT+0UWb+EGDQ1ujozMa+PKOQlh0KEaSzWIT51lML2dEBJr0w3LNlM23HHGG5584aVN+kZTCNdkOOpl6bSea/YzcgzIl5r/5BGdqfgrWEHkkbjqd/bO1wUyzoHq2IQbJRVkHeJMNDo7W9nHu2mkhjViXfWQi5m4mCvhvp5F8hvZYd3mNbO1UO22iLEPg501brse4lM6g6duwdPms2UNaZAhMxHemtQLFItUh6yAAZqd/YhAaRFEOvrdgvAf6Wb2K7aCU5fOpFMOp1oJmApknw1If9YLVYH5FCyRW72MDtm99uuEZrtQPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZdzBXpbd/o10eR9fRHtJuoZHag5HoDsQUyvhBmK3vE=;
 b=g0D7X5rDaEJpkc8NnS80Aqtwv6uiLsbMKdr43zM8QQO+bK/hLEfkfKVLMW8mTaVDbQDL5aXxA62XtjbBaAFa3+iOp15jOtjedTua88lvp9XrrQ9Li1wMwTSXv0dt246TaK/obBx5wFy2dWHUvFMc8eIRCDsXsQ7VmBnO6vfn39HHn1Gv0U6A0xZKxouiUvofSF2m3fiLtZtze/SGVrJ1rPXbq5q1XJr70DxQBeFBiSysQ8qxiTfi19UPc5QNdXDBNAXguw0Z7zAIQwl6cwQv/hSfrbrhR/Ol8SWaz7fY4/feRV5IqgS5LNDL3FyGYEGut4TltqxsShSF5CHwXpe6Eg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 15:20:06 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:06 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 05/16] phy: lynx-28g: common lynx_pll_get()
Date: Wed, 10 Jun 2026 18:19:41 +0300
Message-Id: <20260610151952.2141019-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0P190CA0012.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::22) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: e944c0e3-ddb6-4552-496f-08dec703c0c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|22082099003|18002099003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: bPIwyk3u8N7w12c7/XanPpqzmg/He1b2p2fsGkOA6xzcrXwuxEQQ5jwf2WKyfgzAQC0cq4cDXjP4b13iAzbvrUYL8qrnXg2Ys8trmcFdSuJjaxjAPtQYSBw+iiEQSsmTX8yVtZbbb1uhqhXJ1+Peeka5z9GAZ0gMYAUFYljO0CKpgNJ79ecTqzZPdFvwkdwIrxP6l4D6H22u6HFXt/EP9AEiD5ak1fLdq5BO5XskXnJVPeSE4ZQb4Tho3/EIpGtun1RgluR+tEuz/rCwQ8LMlkAGxWCx2VYRw0epoG97KiYtVtGsr84zX3xnDJHsRGNJ6IMWmNpnlbf6F5q28yS+XijWeuSMky0+m0BWKw48SDFMg6DZkDDHhH0WGgp1/15hlBnX+m0d+2h+5HCTDXc387W91CJBDSanl4IKCQ+aza8r0PGhBL+kmUI98KYm/lJ5CJbUba/78DcrV4+4YV4CxwWhhD3PQlcY6QOWFhrLsnL5LC2o/y/Ehl/uJAIhP5HR/zE3+jRtewx6fqC4hhayrn2EC5HZWxlr7iOWxU27fWxGHow54ppATCwMLs8feSHSo7Jt6IljnepgfweBENhOxDhd8YwLbkmT6gQ9POIQkS3/30cCRS9MUYYqC0JEPYxbZ1BQbv7/OFgW6rw0apDgXnEFY9YuR/P5ReTvqRUQvkRw8dUsqdfWzZN1wZyeiIuJ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(22082099003)(18002099003)(56012099006)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+ySY4C96V0V+PIszqDasNjhtJpIuy+CpRLACwRNsz9srl/Tv/Yw7nBSvgM+N?=
 =?us-ascii?Q?QlpxRWF9G/FNCfCKyzDaRxa2An49kxXekgfcFcsO899caCP37OdTweZn3VtU?=
 =?us-ascii?Q?vyk0ILMwczfr2WVdM1XIAjUnhkIKgeBAHXoMnPyRgiBIm6EgWfElgVC+uRM8?=
 =?us-ascii?Q?huUjPDA9iQ4ylicdfjkvVO0pgAoFslTindFtdJKqmuE3hK1qamV7/893PvWe?=
 =?us-ascii?Q?EDtIdqxac3WsBH8/XUENGyoC4uDyLYOMcXAx5MQUdcOxIgH1XSptDYP8q5q3?=
 =?us-ascii?Q?IGvPBGo/W49YTGvmvv+fZctzekJKYwAn+/31dVcBzVa+3bgAgijzJ+4L+p4B?=
 =?us-ascii?Q?/IOoB78ITuUK+N09MIYdpJOGuQTlH/0KswoycKkQV5iokKKFX5jQqGbkaBVk?=
 =?us-ascii?Q?RQjBxeyl32v//hJWjczaojpfZu/xT6nFY86CokfV1jTiNfNs2GIWCPAj3Gw1?=
 =?us-ascii?Q?eN//jzUUiVthWs+Z1ByvN4W8l0lqTSS6qR59AtirrD4zxONgARarbLv8Bh6m?=
 =?us-ascii?Q?iSbGu5vxWUFrEUDkqpk2Tea6llvJl9xsg7TbDZ06JCI8bbZj0IbrYXaDfZJp?=
 =?us-ascii?Q?xhvmZ2SdWlrzGf3iynpQxBlxvwbZq6QI3ZPo1SoCYNbKoOmNiBpanlut4TWO?=
 =?us-ascii?Q?nKFORZsK+SrBpufNU+sCwU4a8I+thtoRBupjoaxZ3LXzozMxpt3udimo3eWK?=
 =?us-ascii?Q?oQTE7Q1xq4qkauXibuS3ZX2q9563deIgmwOBY6XnRUbllkUP2LOp++cnTeDy?=
 =?us-ascii?Q?yIQu/AkTtNH4eJQ0O26UIU+PcOCzfp712wo08eQUIjOLJjIVRuos8lZhqfRy?=
 =?us-ascii?Q?1qycarwuUwGdBxm4w3vrdQdmH1Okhgad1PdugR+LrIR33XayXfOMcrn8AQi4?=
 =?us-ascii?Q?TlBOvJFu3jRT5kghHG1r8gGvKbfV4wH2ESX0i69Auff8/QYMMu5A5stoB11h?=
 =?us-ascii?Q?M3YNj1FWnpzOmjq/o6Zcl1QnmFs9lbQy2KgeOnCXTi0RpA6gov2aL4S8xfth?=
 =?us-ascii?Q?bOnf8VO1pB8xgWqnquSBhDhSd9YyRNWeUTLXD88MyoHCFoJafw/PbXQfT6hy?=
 =?us-ascii?Q?qJuzyPg2wZtD2w07+//XvGWy6cHNshbahH53HvdxfPA9rQDN2Ghw0V6Jx43z?=
 =?us-ascii?Q?dHfMa5NJrNup/h641I3OZ7MunJyiglg3ojLpOFAptsYJMDbEsKi1Pwj8nhrX?=
 =?us-ascii?Q?Wsf863OzWz/rutUTkF93Wqa/e58l+OkQzPHhQ7l9/QOZ3snjuR8Q7bK6ES8+?=
 =?us-ascii?Q?zub6xvl7Y3/74XYlB7PhuIXBhn1VworYQqtWaeEZVozWRH1TaZJYQvNODict?=
 =?us-ascii?Q?Pv+O8Ej1kx3z5I7Fq15eOZ3ijviEcBuZp09rQW/NkruAlP3jKP9PL5ZkqNLq?=
 =?us-ascii?Q?EL8Jx4D/h1KL8uwmtYB8HuUIO56RZVMINA6sunXf21ZVCtlH0jZKwYYkey0f?=
 =?us-ascii?Q?E4cmhOxbOdTUAodhfNeieR9fziICozXUkK53926fwlbS/yx7+Qf6ycf1QcVi?=
 =?us-ascii?Q?72W91bBuIXniZeMnIJfdYjA5etBcAbHGtETrLmj/0MBsv6uSeoxweDxsGyDk?=
 =?us-ascii?Q?spG2tLEjbHgB6iQdga+MxfmZkjcI+NY50DYVpezMY0j3TAYkTnuSlV/u7kUF?=
 =?us-ascii?Q?al5ipkvogmDp46oglErnjlrrgTYcl5R+H8dioSYNjOvmgh3Xgu7WDgapeROA?=
 =?us-ascii?Q?6g4Z8gU2OaRoB8Yorpahd3e+OPwVsSyyRcyqUBKJmtK3tSOVHg5Ov8a30HPN?=
 =?us-ascii?Q?MA66lbVaZw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e944c0e3-ddb6-4552-496f-08dec703c0c6
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:06.7947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cGD31J59aT9Gc5QhtS6saRKvXnSDt5oz63Fw3pvpapipNP+9CebgpdejBzI2chlZnbbDhMFS/zDChN3GBspRuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082013_272987_A068049A 
X-CRM114-Status: GOOD (  17.05  )
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
v2->v5: none
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
