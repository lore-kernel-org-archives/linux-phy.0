Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20BEECD6E45
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfZnpK/js7Ta9GjKxZRlQb0jDb1tEc3tlX483NdAOgs=; b=aBAZwWYoTOLcJL
	UXnbPfDp7rpzJwL0g39L1UPGQnkyrxeksovA7/yvxCjYKxAp/uJU/ehrfvzEZznB+tUsFsBL+w6k5
	O+jPFCzN+nodsDA68kMEYPVoGJq4WBlOgs7yRNIYdG+xjHK+xpSvqkVMX6ywaN6J3exn+w8aSG4Ny
	EXJWXQutcRSWXmmODU+aI3M4ggMeBRp/PeIAc8LD6arunfsah6BiNnn7BY5PXRqx4dmFDe9FaLnYy
	w6okavvy4zBpX9SRFR8aBUNOt/5r1yZqbZPNPhbTevWgeC9QAKVh9RfvoMqjVKumgXs9bUDJNHrhQ
	AQHwCUdj3lNSimqRMcuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTF-000000065Y3-3ezl;
	Thu, 28 May 2026 17:24:37 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTC-000000065Mi-3aBD
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jx4C9REYXU6hu7jmaC3H8relqXGxDntqkuMb4bYLdG55xwME4lLg4IuUctMIwCjxvUPZWKONcP0AUBjxiBCJGFHV4JXv+2xfQrZ5Q5f6CeVWZ4sur+VoxaRneV9m8NhBoxpkc6uNwYqoSFKOYawcPJVeGZ57c7cWvKlRztH9etn3Lv5pHAE7Kl5qYhjTk+tnI0xAdL8wjJodsenuGhSGonAMNt645Ox5KHna5syU7geRzwLH6es5ojwVzbqypdfZ2a4N/9QX9xy9v+F8q8wGbB4/g2zvO0YBFShBYgi67e1EGdZYn+LUpfn2eH4emoNuWRqRH+Usl7IHWjWGlLfueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHgPwjd8MZAfJmCaAUyjMboyeKDwLItVPXP501s1pzQ=;
 b=ykM4sCpIg1FTRvVHB4KRb+hQQ3MrqPmCwPI9nnBGxurMA6tbTglYgSmjXL9Dbbw7xfPbWWvu8t3gMYsN12CeWw94mNk/uTsOfdyCZSMcAgQ/0DkMi23EAdT/NImvmcRwxFfK+TAgCb+cwtk2R54vRQPwr+7w65h8JLFvLQWapip3bTCQDJ+dkBzc8g0YWjJZIBmXGpcOVy9vM5tlWpFFD3RmtdqXMiNoTi0TywQrsVdoY3z8HeQGtUzbPpYSdYoyoGEjC8EWgjK9/JYkadgiwcIyKB09ZWU6TOfJnGn74dlz4W94Y4QXrVO/u5jqPe+eUuMHIRriYWV0cME4jOXDmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bHgPwjd8MZAfJmCaAUyjMboyeKDwLItVPXP501s1pzQ=;
 b=W3dudCWm1vzs6OWyK2qWG11334PrP2HsPQ67LdOv6HtZF0squ/wjL1se3+kdEsLwNJF5ioD7SNayTDLDZq//2SfPgioiLHMGm2XpPQ3jibRTcuxO3DAEMdlMYs7OfUTHxHzLkgCf53VDQ7C7VLw5th8iXgbEw6ZqIBVsQJzkSO1gIHxY3OQIfShWPj+nm9Asd7ODgrp4EkUlh30YYGd8lxrSSdlIpdfmjRDX4QUfXEfdnB6eXW4Nq7tmtXo5KE/6H33kaMa8nzouVe+kYv0+9Ouik912syGpPN8y5lV0l4qgTrpBl2oY1yMcUtTeFIIvnM0Tg7dBktH39Bg3atXWuA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:23 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:23 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 09/13] phy: lynx-28g: common probe() and remove()
Date: Thu, 28 May 2026 20:24:00 +0300
Message-Id: <20260528172404.733196-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0043.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::11) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a120cc0-4d9b-496b-02c3-08debcddf601
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|6133799003|3023799007|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: r5OEnkLYgJm+lKX0ZQsTSKxjmboq7tV/sCXxQvOz4o4u97gGdKeCmRTTgu3vjsUT4+crkyiXOypQTXxtBv2bbPkHNXpzDkzSYhzeIpyy2NMoBE0z8nh68gywxGqSKO+NtDIIWnck+qXdAlcjhnyqTsZtK7f+5yuK8tjTqZ/D2GOKT42GJlmsT4Oz8ZnkOjknijFJs3ifyelwCE8PyK/11l+jnp43ejeSVqj0sFnYKYcxycxD9dtkg+bn8xL5tf/7Bo4o+IRDZx9MtCns/J6Ofs9DwNCSbquJFwaItUnlZpb3oMQXUH1h1Jd5q0JPuRSuqEv9crDz/JK85xXiB5JmuJXO0f8s51qKbx3hrWnGShy0loxhvEwjIeYWwUoweMQgc2H+IvK/uC03wsW1D8ZkwAvZ1DpFrm3n4AXQ8lA+bXODPFN8TtIpHe+1YoBS29PreuWrAS8rRZxV7VQtzooXuW0J2u83eMwNtG019/7l4zz1h8DGva5XwJh1Mg9KnA6zJ+Kn/H4fwHMeTknSwZn1qH19GZqs4abDml2oj4LPZ6FRAP6n7ajTF4/8ftrsWkGm/QkWgQmrJ1eSMUP5X8By4D6+t20SIYiU1ZknUSQjGH0DZbJLbH/hNPDi9gJIDJ4ncae4mLHLLUBFczRiP/hqSvGKHCNx/4Ku5kt8pYXymm13lLxjTU+mhBupMKGPKKUV
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(6133799003)(3023799007)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+aOg1CQA6CiDl2mkG7fOVbU7SyV+XqjNOT0BzUCWbV44SiUd0tJyEi1v0Nl2?=
 =?us-ascii?Q?pNQ8rpMnM7u8YEiP6k+pFQ028Z3DLK6Wg28ObMoqzFP+poptXeuLBTnbv/Kz?=
 =?us-ascii?Q?1xbiu0l8ZL8/Pvxqr0/vzdI0QkeVcB/jrJtcjDPr9w6cRaX3S8jZu25DLFM2?=
 =?us-ascii?Q?aorFQrm7xe2qIoglcPe+wKUbBX22dLsMANIGoUqprCg4u18jasmsQP4YkK22?=
 =?us-ascii?Q?gDJz0pUcBziP9OFhuof8BK4EthFTA2NgqgKAombAdk09KQrhoEGNICVsacrN?=
 =?us-ascii?Q?ElBCCUGCHC8t5J7tYkRuxjsDhUYe+oKLO6a6PJG3+Zpd7pv5+yhyF20blxZq?=
 =?us-ascii?Q?+WMxvX7aYscY/ecXv6WGv+qsdW/QpLqWoPgrWN9kAb1Pteqek+BA3yxWFTJ9?=
 =?us-ascii?Q?mQWE3Nsu+Fdp866Nt/3pmXUZa23Ph8hl/UlaELiwK5kQQl5hEALYwKbzyylj?=
 =?us-ascii?Q?CEq/CfhsUBjkXDL7XOBe/ciXf1VAGXXgYQkWjDFBSf0PmSvP0draSfhJlTT3?=
 =?us-ascii?Q?b49xWSImXcdYbcI2DjRRRPfm8idzk5ELCdv2Y2WPvkbeeAPnfinpHouJtk/2?=
 =?us-ascii?Q?SFOmSHcT0v6I1oCqAY78Pod+WSbEVMpz0FEYCsUGxO9Nhl59TDcbldwVjY56?=
 =?us-ascii?Q?w2c7QtXrE6TNvj2mWW9fJMMukplqK/v/aVGX/zxbCqjO7qKj99rQqTixpw81?=
 =?us-ascii?Q?mBrRLPSaQ5gwiBD6mn7c3ZEgHZ8ackfEmvsTCS10zVc23tYSr+Ay6cudfYbM?=
 =?us-ascii?Q?weqI+yvNGrEZX67vJAEfClMI1vaUnTXLBHfkyGh92WzzFHEk3AV1AVClmG/Q?=
 =?us-ascii?Q?NcgzGIiQqyA6W4K+A5LLDQVl8RnCoaz61gCX3F0uY26vTE3FPuFenR0hlum3?=
 =?us-ascii?Q?IwTUZRp4krih2Z1tuR/wMBazwyHo5H3WxLLfusqxJtBSAGCexfgvHpS2xnsK?=
 =?us-ascii?Q?R1CkM6TEDLdrAy3c1Zsn4en3+2eRsTPoYYJH+EYfPyk+lNU86LXQDnHjFPEo?=
 =?us-ascii?Q?EIsh6pDP5+9mAQbf3Sr27w2uxHs39mK7/67s510ecahewQbWJ1mYmcBR4ypD?=
 =?us-ascii?Q?cGBvDXAqr3cSQYjrJ6p0QADedr1kaR0QoAqh5nztONjPYPgrfOGMBFDBu5xH?=
 =?us-ascii?Q?hvkBZ9XtPKCs7HBNUxf01NTMu4elGqnPDeO/tnCnBS6xRKskhiE60KXDdJj7?=
 =?us-ascii?Q?eYaC+t1aGI/ntW2ihCH5IQcymin4XIQb8f5foQN21hUawaJdNK8OZfm9Hbds?=
 =?us-ascii?Q?JbgVa509zpfT0S+aiG6JqKEkWyBBO408n0FLItUB3kRcsCnCb+jRLgMMl93c?=
 =?us-ascii?Q?wW999dhJHTLx5WbL1mGSSQnDdaNRiaobqs+EkeCOFRtnPZ/wfmJo+ho0ClIE?=
 =?us-ascii?Q?h0FBXzfCQGYXWLDyRTl5bTEurYHQJPAhFe94R0LDILg6dfpiIHtqsw2ntYKX?=
 =?us-ascii?Q?+uGSY72V5mtFpWx2QlHES14vPV0t5yw4KVeOArWPHXBWliPqKUMgqXBNwEDW?=
 =?us-ascii?Q?JrEkrRNkcK3H2hTcvehe6Cr3+nzytQ41TvES1Okfap96d1XPQjY896BOq2E0?=
 =?us-ascii?Q?D5h31gZQQ7I/YKpBb4bMZWqzaqXcZlHsvwda/pGErQZyt9GMohuvqCZqJLxY?=
 =?us-ascii?Q?eBwWZJcpdXbd4DLmctRkzkY+1Vs1HjeeqbpXBR7y08UieSbyKCYt5zxhaQ3I?=
 =?us-ascii?Q?siFYmqZaMg+v2mxQ/YiCopWgJspJCng0LSvbNlsmzACqHIHJ38N74/w3MX5Q?=
 =?us-ascii?Q?5mQdBl5Bdt7dqmmm7WQAgn6hQMVPh0NEGaIbphy04ebaPfIxahDw?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a120cc0-4d9b-496b-02c3-08debcddf601
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:23.5670
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1T36njsNLCdt5XNb8PWE63kliFM5UXsEumzpl+9JkFIjON2FoU2TDu7Xy2AmeGbMWZrYV9lfSq27iJfheKa4Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102434_913877_7C866F79 
X-CRM114-Status: GOOD (  18.37  )
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
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 222 +++++-----------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 167 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  12 +-
 3 files changed, 224 insertions(+), 177 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 31598f0042da..84e7a92c888d 100644
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
 static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
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
-	return priv->lane[idx].phy;
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
@@ -1236,109 +1191,26 @@ static const struct lynx_info lynx_info_lx2162a_serdes2 = {
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
@@ -1354,7 +1226,7 @@ MODULE_DEVICE_TABLE(of, lynx_28g_of_match_table);
 
 static struct platform_driver lynx_28g_driver = {
 	.probe = lynx_28g_probe,
-	.remove = lynx_28g_remove,
+	.remove = lynx_remove,
 	.driver = {
 		.name = "lynx-28g",
 		.of_match_table = lynx_28g_of_match_table,
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 802e32dc6dca..bd1cd78e80bb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -2,6 +2,7 @@
 /* Copyright 2025-2026 NXP */
 
 #include <linux/module.h>
+#include <linux/platform_device.h>
 
 #include "phy-fsl-lynx-core.h"
 
@@ -202,5 +203,171 @@ int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
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
+	return priv->lane[idx].phy;
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
