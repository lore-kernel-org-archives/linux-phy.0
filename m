Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44CF8CD6E54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+Y8P1fb1V0ZrnBXSBJ5PKgehpiJx8JyxYtgHPZGl5U=; b=H+Nfg3FQ4GU1e4
	vKU+BK7CYyvixOALWXnHJsQ8XLhXrRaxYyuqNwcGPIZYVNpPtNWMtkV2fIYos3UthUVlJaJ76aiNK
	iVTB2wjeDOi2sjdHfApXm/0ILrnHw4/ug7hxTQ7jeKvvhfd1uol8lXloXXU7id+J5Wb+duQ4ymTM5
	bIG4dzlHUqiUM1DQX49nqhwm8PFfN6+FbXaqo/5uDg2l8DUxmaS5Gw2BW/Ja6oErtNvqMI626mdgT
	hbHL1w74dTPzFCX3qqTs2R68nHzirwneJLWwqVEFqIK5nDD8RdMpW+TP0obDZaS2in3tFGlSkns8Z
	AGH2MTkv8jpQvI/RWMgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oC-00000007yPr-3nOO;
	Fri, 29 May 2026 17:15:44 +0000
Received: from mail-westeuropeazon11013021.outbound.protection.outlook.com ([52.101.72.21] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o9-00000007yHw-2ajb
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W6oRdfxDPy6ySfg/gDgWtBVwutGv63D007PWjKP8VKkRdkDDoX6PgdH5z1Q9Xg0lx0AZkbNF/BK/MDUVHYzXPN8f0bA4NO/5OGIZaV9UmYCISAJgUJj5jNGWy6yGqMmpHPnIhHj1eUvRCjF71xx3poG8ZzaxfRuWuaogJLn44EaLmcauToR18lLNdkPLHaOywfmL4S0+GpKpY9winZIQb2R9eanPKOlRFNta/mu51abWc3tT5seB1qpU2EWdJnWnngX2NmMJGJ0KqIlei0U7lTNDv52W3BRBV/hfCoCcfqp+IbhGaT8MDGj22Q7tP/BTID1WkGTBTtMiE3KBOYKVqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+Lf5u5E/oUAT232APAvT9ZA8pbpkvY/DerNQ2OQNJ4=;
 b=s3DMqGSa+1TN9kb8Why8FdrJnYH4UfaM8jNc4wCtVC5F6thygHAMbbwrvSXE+wbsTjCa8AW1lnfiDPSYV4g03iNfT8lNrctHFkNcDzKby8HDea5VVJuAkPoYo5oqBSJAUZMNo88V6/5W/iz3pU8Vjj/LIM77dd2YcmRcR6rM8HgsGAUBuQqzrTVlf/Z3nVH9fGRyQpZWPaaveHGfPbHb9eM+y5CVFdaXp4FHTg9vRfdBTBA4TT+J44eG+wYliVXDkoJ6KUx2P59Dywt8gVQnfWQE+ed2ManrRm3jWcqMMxBczr4r50sbsMAef4KJmnJJdTkxGzuAEfQpV7EJ+c6/kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+Lf5u5E/oUAT232APAvT9ZA8pbpkvY/DerNQ2OQNJ4=;
 b=jJFc8bpfyAMZ1Rdi4ycFaoO0zd9Xo+9WxjqP79Y6EL1wpSqzWXbDPexqah5PN94R8WOcXLGAJ21ALvwZPvmXoSrDB5668QIg7JZW3kWJUMDLvWiIIxAcZfM6w6UcKZIb7UC8wgD5sA5AAAeGYuBJ5G512Ny8HC8Z5HmfhD6o8UxDeIRZL9cb/4egzYemurMtUSkHwMj6ky+FYUEZhuaIByhYniuiYu0q8fM84Gjrdb1RFx1uD1CT3CpUEOGGNa/ZA0vEks24mR+JwqEiPOjSA2rOuk5W1CoLvBn/oqELjqQOzvfFZFQCoj8vLrwTv6HGdy0cWZFHbSOH25197XCj/w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:32 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:32 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 11/15] phy: lynx-28g: optimize read-modify-write operation
Date: Fri, 29 May 2026 20:15:05 +0300
Message-Id: <20260529171509.1163787-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0038.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::18) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 01de79e2-79ae-43ac-0677-08debda5e3dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: c7ma7cwC4smW7j/YgZuN4DphsyY4sWXv6EAEzapLZm9L7aIOWtlSBy4L7HbWDsjCVY0++7dSrtw+ge7Ar2l5uy0UFXXI5FlsBPBqEFxf5tTes7x4j+nzT/6TkCQESKMsAlvCx0TRO8PXLXUcW9iJcZRu43JoYb06SPUswy3macmKmvgclVXcO3kctR8G9/Gfu0z9WSOPuRwXQ+BAfGubUnmN19GIAsBns6NMjDP02syBbDIbIVc86Ty7BM9MyXdSHSLlpff6mwrugjB/7una/emNq9m4Ybsux89ZWlRLrar55kPu1fXZJjlqtsthvxGU4FS5v4uJ9VsZ0wPRukuJWO/fZ03vSk0G38i1zNfKIqK41ZZL0VmJmGEIXYiQy0WbpjTQDoxyWtqW5HudDRKAN2dmpBvtMOirN0tg9hIRXjp4HtAA/VhYjKgHvSLQkfp0ew/Q7k5gYQe/PGqRzMUnq5mC3TpEHs+5xef/Jqqun+cniy5wSLJ+24MwNKw/NTi/P2d0x309MTfSUzw38D1tsEBjZSiJbGgxoC1V7iup/mYxeDLulXYe0SukX6C3bBSIhqH8QgyR+eFWw82JkgdcwlPtlOfVSAcseQGlJ8Y/pAJ5b07GYG8IgsqKf3S3oTx6Xyhe9q4SCbt+dfEdsPergJ/CU0Ja/UDp9fdJshYSs3LIuW9AKOzQtYuiINzS99Lu
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kgw5PtzhQxkczS+g7ICeimlSJor1aWNjS1tgA0gaEI+3iuPsQYJEFEm+XyWT?=
 =?us-ascii?Q?DfKbMKE/2Od7DG9nBPVk6cJZDHyq+sz1oDXycWdYZqhfwmvI2/2xHU7ye3D6?=
 =?us-ascii?Q?KCXNXFjEpSM7fzSpxWBs1lDmXPP48dY4x2M1BAGkfGBk2zrUJmtQx3lLhdZB?=
 =?us-ascii?Q?5pxK/Znwe4xxkRiXIICpDwR+uJwN/nc5OAVVIJN8e6ivk6Ep9WsrZtIy3NP0?=
 =?us-ascii?Q?jLtdYVDSpZN44XDdKedjyO268Elwj6pK0GiDM7//4owdUWQsW4HIqPjZEG0y?=
 =?us-ascii?Q?oEw8JR0+DSXXQXQfH/Sb+0F9OCE2WN9JwQK7uYASjhw2Ej7GZTwO/01JElx3?=
 =?us-ascii?Q?wxioRln7SC978h8aS205S+YoovahBh206st6VBAZtTzaNBKIjgaPbCAr4xjt?=
 =?us-ascii?Q?7waO5J/cApkDVHQste4Hwfy0E7gyqxNvgDxz+n5kqfYwRDdNKMmXyG6iuB7S?=
 =?us-ascii?Q?yAmxRy3KZOCuIqt4CC9g1KiMouWzoSkulTdsGezSprJyxyMXfSDVDgI3pj9S?=
 =?us-ascii?Q?14p3E6f24GISQZZGEnQbxy62NRQ2w/kPh+EI3G+h5Gikpdf9WJ1SM5dwuLEf?=
 =?us-ascii?Q?hnM0eOOAwlVXDtS8OEvPDaz7pPZe6IPk2LioH02A05sNjAAFNo1j+zJT3zKy?=
 =?us-ascii?Q?HsO3pwicqJin2cFvo54UAKVZ+yd07wpbbjGFnxDjg1yiuybXIHAwdx0A2TOu?=
 =?us-ascii?Q?sWYvrckaN3lr4AwdBGaHg56dm1Y9YN9q3iZLFb+tPYoI/llSO/VscDNXzTdl?=
 =?us-ascii?Q?YJCrEC04vXalaDx3IgylcH9b3yTrOrxH2/oDrtr7x6aHHr4dm/TNUGvfGeNo?=
 =?us-ascii?Q?Q5HeRD/4aopYQ5JauEsyhVT0rlskqgX8jUOfOGqHwhRRsfjh9SmnatT69yxZ?=
 =?us-ascii?Q?nCmTnGOxGsv04R1JrkPYr36M6nxvrqyIqopXTVZ4ZF6YPHqK6rAdEb9fw5Iv?=
 =?us-ascii?Q?e6P1lhNhKtWBZLyDZ/mNXzhVHcQojN8dLMyVpKPMytZmCKDoMkR987BEy23E?=
 =?us-ascii?Q?OX2SVis2PK/nHAQmpX+CX3TSB9dldt94t/OZYG3k90honDYtQQ3fNwqYf9fM?=
 =?us-ascii?Q?F5PI8kGy3fK33fHjoolin9CHUmS8fzZf3zHZgxTST1EKUoi+TR2dpK0Sd0/T?=
 =?us-ascii?Q?PYS5EUrzWGr6yddytaqa+P/wmZ/wfFVfOExpNyyENhedqdmSqzmbogUiAWmH?=
 =?us-ascii?Q?4VIsemxC6v504F4BZMZwjJA9fxMTb5+TB+he+ih2DpZw1R8jayGL6dMIa2Lr?=
 =?us-ascii?Q?Np0e1Bpm6t9wSAmFoS45d2leURpsb7p33pUXyDc8NH4vMFIXDxIdIXNBJGOP?=
 =?us-ascii?Q?EOpjxFUJC4Suw/2yn0bdZ9zBr8dqBToZJOtMdfJOXA8IfOY6lD0DxLA71RPN?=
 =?us-ascii?Q?iyg9SwpLbUBzxuKkGO9/iatAbAN/EIKJt3MUN0fFVbhgwNqMv5Svx/CculZf?=
 =?us-ascii?Q?Ns9Tt9Zu0VMBcF8vX2ju/2gprJ3X3g58Sx0g4ToF1dXqXcTtVBV/oUX6x670?=
 =?us-ascii?Q?YhcpI8u0Eb+eZpEHwhoqWI3SGUQDf/PQA/DTksMRy6W38+pgcUzf7TDWbvxH?=
 =?us-ascii?Q?PchyKajG8j5OPWU+DaWdk6HEXdYGjcnClpPbX8pTzSNfAibH77xKINsKT5+5?=
 =?us-ascii?Q?JoT1nKjVRNP3ItW6vSYeH+ZInbVhIfT6eqm2uw5bO07edN60XbSAdsLYW6JU?=
 =?us-ascii?Q?/GHe42aj9zYZU0uyk5RRbh/c6mTJaYuOie7rz98T+rq3nDXtRUKu9e2IT/oM?=
 =?us-ascii?Q?lcSZMHwLOeU3f0NCLkCybpEuOqBrtN+skL/p2vjXWx0SL+dpVKhu?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01de79e2-79ae-43ac-0677-08debda5e3dc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:32.4194
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2iflSzf8VR6/9MyH6vVJwu181KX9+UXSpQq6QcHR5rb2hvRhz/+h1fbZ9z7oSRD0k0Loafbq44PEEKICTZtdiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101541_658271_260C240F 
X-CRM114-Status: GOOD (  10.12  )
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

It is unnecessary to rewrite a register if the masked field already
contains the desired value upon reading. The hardware behaviour does not
depend upon register writes with identical values.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: none
---
 drivers/phy/freescale/phy-fsl-lynx-core.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index d82e529fa65a..3d9508dfb2c1 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -93,7 +93,8 @@ static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
 	orig = lynx_read(priv, off);
 	tmp = orig & ~mask;
 	tmp |= val;
-	lynx_write(priv, off, tmp);
+	if (orig != tmp)
+		lynx_write(priv, off, tmp);
 }
 
 #define lynx_lane_rmw(lane, reg, val, mask)	\
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
