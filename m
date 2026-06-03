Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95C83CD6E6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7aCKo8zTKegfeffJt+ujD6LGDXtBAI7uHVAHAbIT3w=; b=ZE7/+mDDs6cgBa
	HgcxTQOgZcbMJCrF5+urB6mYSCVtRuLqy3thyJEnr4+UMSUXU7Aav+qjCbWCA1Oy/P9Ok9CQ4Ii2W
	s3MkMjFlxHNNb5Lho7yCWOemDiB+TdQ49Oi3zUx4ObLsxW+rZconYJACBB0x1g4ssZaxdOZHP/M/x
	3Ac7sLPdBQQJBtITY0jHFP443NmDIvhT4QrSk18oBuhWsJfVQ60kDbGqgWRhFfJuPNXiQ/T+4IR8O
	shva8IYk+4EktJIVef6taOQrSXlUs/6dJluuv1L4MLzPrVyw/ti6WH7K+a6lp56jQRblgcSj+KY/3
	E6A83CXgH6k1BjSUcsNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVj-0000000FABs-1agO;
	Wed, 03 Jun 2026 13:19:55 +0000
Received: from mail-swedencentralazon11013016.outbound.protection.outlook.com ([52.101.83.16] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVh-0000000FAAL-2xHV
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nOL2d+XX6qAw/RidJL3UNIomiqaE8vHTuoqAVt9SHAEakwhu55x19MPWE+MBC3FgO9W14RSa3hGepoX9Q5QDcwEJ6odjv6YE2BcWK5SbfWSKbfZCjfW4ez0Ygyjt3aTgIqXOkiGPAYmj8nJ4YvOCUGKgcqeQ2/Yw9dgnI6bJFCVtJb72mzJrXAxNzR7f/z5Uj6K2K6sg1shhf46jFkeSHGaLsj/3s2e2KcYy6OPCNlfIUwB3/cE/9aHjKaJGNfbzZcizWyxAy7z2+4hSM8jzgw9kvxS/Akdaa6o7rjnSPIvuySIL74744v77TVplBFWNkSxqb5JSPo1OyYExcUc7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nxZXd5Dln42BdJpt8amVMov+V3GnxhEHYbKEiXgm85k=;
 b=HBeqcWiMb9eYH+IDE+KwoVXz/HLmHzlWWlGXqn8CIHpDVqbNF0zviW22N2rMHL8a5YOWiUg5Qm2tXnBYOEwAwTsaibvuwBqUkCu+Cc9xqH1Drulx790QhpNv3/8UDsuWW7yAsnWmzlP3H9SQMoofFcsJs7VieICVFZ9/gnnGHD6dueJ0Bra4go/QuYkNKgztWQRhMavRYJtZBGF4fr5fcnmAbp7S+FOaeA1V/R/iNW0Iey8nkJScGq9oFMVdrYRI1zOi1GXzfIAwI7nR/Txr2MXbDcsE+laaSdBd+7R6SwmlRQdKkGS66NWC6ZoCpezhQ+zJ86XN/DM2w7CFcKybGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nxZXd5Dln42BdJpt8amVMov+V3GnxhEHYbKEiXgm85k=;
 b=Ul4CA7RV/s0Uy8vbFGRsafVhNZHITr6OU7NzgDJ9jKgXt6esWU9KtSGlo3Z1CVFF2s0mdAYGSyQIYw2D4++nRVHpfwrPPVr9vTEByjBxCBn9xrBKHVIPRtyUB2nnB5uFGjniqXMIy+EPOJ7Qz1Ja/y5Oi0HUH3QOORFkGNZdEeTofYrmuFp3sGYO5OTkJuIhofEy7J11jB9+omBfr2z/x/sG0k1PB96orOPIm9Rt4jjSXCbCiyOyXa+MR7G9P0rwSV43fKsggjZPkvpNUBT+F/YKQEnZgQsycCF384toKKnYpxTeGUDVDKn1jLnyE1cW9Ni1tP05DVowmrVS5ltFhQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PA1PR04MB10225.eurprd04.prod.outlook.com (2603:10a6:102:467::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:45 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 11/16] phy: lynx-28g: add support for big endian register maps
Date: Wed,  3 Jun 2026 16:19:09 +0300
Message-Id: <20260603131914.503053-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P189CA0025.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::30) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PA1PR04MB10225:EE_
X-MS-Office365-Filtering-Correlation-Id: 61bf412c-ab90-4cb7-ece4-08dec172c750
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|19092799006|366016|1800799024|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: HXuVBboQYe3yn3tCzYmpy0DhrFU2dUC+YIBiVJ+pPyIwu2Cd3VdipcLyO34LZlrnghwaJlog4fTHuNxIy7E9C4dWyQSKHJEPB5xkjCB/J/ODMMPY4Wmril4TSLrIqGsE0GQKS87lh7g6Uhr5JQUkz+taKhiZjGBqJUd61KcGfC4pSOPGGvKLMpvqiEqOubNIN3ifwB0zbKDEJLWM8o12gW235Z1P3SCHEUHc/vWdRT6+C/V9SS9s5s0xmK2VDH7xFSDDDzN+n+Vt4l7rgZdbwsUECupjBcrtYc0LvseG2iLH+uVQdPz8+U+BHBcQsWkirCyDPxavmWDHUTAEbg4gPZ+YfbuzqFej6GV815lZ+pYdBN2i1iUJygoJxul1uZCCG7LwLiqg+5mnWYR8e4GWJk28YqYgUXtPevUU+sC+icwqAx8fR6cpZiy/q0zNmrlobT+79m2jVc5NgPl+ZnZHUNC/4+WCXDuQHSqj2dOT9zPedPgDBqjkMrz7afB5kHItkOTvCVlP7Z+TbzccNT/7nK6PhHywEXZDT9yfn3r7401X+KNWdnqVEIka/Qt42it4pLgWiDj+cdxdtZ2cY/30qieBA3pROeWHkMtTQo2BTqWR6Sdiqh5VgPeJLzw0ugcf6U2ITHom95SOzttnUaCstNJcYPwwA5xquMBYP2jWXBg1xUBNWUiY2sDpUlZgwhNpbrmT/PQ1l89Hxj6yJ9vv7Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(366016)(1800799024)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gZF370UVWhIYSMIMFSwq4dwZqRwZmEQurbYzVC3uCU7MNM4b+qv8OnPuWU3U?=
 =?us-ascii?Q?ce9rmXYSGljm9g1pPsjZdMQgrwqMJodAnwpj785CjcdpSBfnAcFl+WVl01gw?=
 =?us-ascii?Q?dvhTq0rycbm6tXQSqLcVg3JFxzBYPQK/HyQe4p9bvpzOvXgYXShZ2i8my/OU?=
 =?us-ascii?Q?mwmDIRyazbTT70ftLfgHG7fKlkKJSQoDOWDRCqwIfDxFcrTuNFD/i8jpID36?=
 =?us-ascii?Q?5WqohqlLzjVs/38fO+0Uad5dTdMIznNqo0t4DhFmOW5I5Gs+5E/qT20utPPl?=
 =?us-ascii?Q?SE8PiiPeMvemHc9stWhKzPtirVznLuHggYDS1p1WjkxDeDfbrJdlWuXqtAHe?=
 =?us-ascii?Q?wNEzpo258/4VVEjRZGvLXKprsADr8xqeV0U0WIPugk+/szXr5aoMEu3Ytaq7?=
 =?us-ascii?Q?w/N6tYmI+GtwvDRvAuWxbsrm9qro+GRHlLnTGMy0sPB5p2FEpYagynKcwXp0?=
 =?us-ascii?Q?lTeUHo4diz4n8CvuIsKP3bBYcU88QrYNI4/GfCspjhh35gFam9UXI0jUWDlZ?=
 =?us-ascii?Q?H2W1uWKo0cHQV+I8sxXikrJoDv4KskqEXIpT1EWxh2Y7cim7oqtccsW4a0/I?=
 =?us-ascii?Q?KqVjobTDTEtmAVHUVVc13Av8NTgR2iOH7rF4gl+Eqazuh1+tb+CAoAknhZZE?=
 =?us-ascii?Q?WU7n0IFudVYHnLeakrA8ORriPEtg6rliZNZdupgFBMxUhgF9wPo+OcRELHiy?=
 =?us-ascii?Q?0uMFFmfAe6H7BfMulWKOOvlzaBcjfS/wqnJ4W1QsPQpzN9E9ap/kHD6o/RVK?=
 =?us-ascii?Q?dQj/Lhu5VjMHqDTR1V3DKVXlG+nE8+VJTNTMNULp73By7dPhHYxdMqtiAt49?=
 =?us-ascii?Q?AZ9t8XCSXuXDfJpUhklNeUw2Hyq8T/WtBuZhMh9WmOWRsClOlnMVIJk9IZsb?=
 =?us-ascii?Q?iaz2vam6pJ2qzG91lhJ9qgfxXizQAg6zSwwdQNdTNr5O46EsTLlBNylluqL7?=
 =?us-ascii?Q?szuMxyQnTwBviinjFEWJekkRtlqpD1sIsqpFMdI2ddi7hnVCuqvh+NfrBkrY?=
 =?us-ascii?Q?USHq9cqvNOzx8XbG2M/ILtIhJ+ppC1EKo5DxUZKF5wlX67zOEOkjbaetWrUM?=
 =?us-ascii?Q?FrEm3mDPrTfkh7grSlxl9dC0tlX4RscPmm0lAxyh+HBkp4yXIDIbjtDyC7L5?=
 =?us-ascii?Q?Z0AY8+qohf0ZYnR4mVLnaCIeipkCydaic7zxDwNGRql23cobiKr8KoaQNd6n?=
 =?us-ascii?Q?wAn59gskBFlL7cbE9xlcD4kaiYwdPzG8QzmG82Bs1jfuVjO2IxiXWm1rXRSi?=
 =?us-ascii?Q?0/MBUhSYZcj1pkmNWm0+9XoPjoWKJBQ33S40tf5ZLFalJ+ZlwztHkiYgEm3d?=
 =?us-ascii?Q?UpIZ3Ew7oOnRjswmaUDt1fOKVQ/tZPAO3VTLDsDZ4G38XflkZsxSYQn1BE7q?=
 =?us-ascii?Q?s8A4R6IwlzvXZL4/4L/8X4Fu/f1jt/+FL6plSXrWAS1+4OKy0ZUKoXnIb9UD?=
 =?us-ascii?Q?xhJHpgh/64rfnZ7mvsKU/ZU/PFlS8XcWzwQPqRNCncr9VH8bbxkjCArTudW6?=
 =?us-ascii?Q?Y51HBzvgfYojlSzPxL0w1ZKJE51QBS9rzUblqJ3UaKR+YRqnbTGz79zl8lyu?=
 =?us-ascii?Q?hrTGaOvVJMONef96i1wAmcnDWbI60t72sBKmfVrx4+Ywmp3sjIluiD8Knw7b?=
 =?us-ascii?Q?9kS+D3JY6LOW7IYW44DRx9zWD3nfSs11uOuk2fbpEOqeC9wJ8q5SEH3RZrGn?=
 =?us-ascii?Q?QbjrPraz1rHx5RDSq8wD6KlY2SUsmjYUlBkTVE50nDExZ2+8o/M0ofh8k0ZZ?=
 =?us-ascii?Q?QQedZDQyqw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61bf412c-ab90-4cb7-ece4-08dec172c750
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:44.8781
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03SQlRCFJDszZ9PbbiGCBQCp3CU+TriwjIqI1O6u88m1VJq4RZqecjh1TadAIXcGcIn5wNfO0OlJK4OmQYr5vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061953_751106_FD05C5AB 
X-CRM114-Status: GOOD (  12.90  )
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
v2->v3: none
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
