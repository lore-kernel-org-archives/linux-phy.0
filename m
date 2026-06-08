Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F09D9CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVx37pxPDvAK3AuhZdxaFaeY9rRDpILNQ/KaALJmz08=; b=ZN0tpqEqBxyBBx
	SObY7V8xQAbuebQsa4SzZG2kDbeiYUZR1zHvJbWY0JrY2kgWtXcB+sa7KYGoQKW9IgjgzTawFaW0o
	Q+wGZF0bbg5Fhx7pltf66K46KDLcR4s9h7L6KamdZIYWORbijFxzHIVAfEo/QagVGLVeRBnxlqNaj
	6ll/4ur/Amssxkb+D4kzSMWNPhxvVzMDYNmVq8wuRkcuWLHn7odtbszPSpa5L10RwAJYsSi2geFfw
	B28fcb0DE4kmM4a6TEybfjXXV9fX30/8yOPh7hDYrZscF/ZTP7AiDe5+SRDMV/GHQU9rEF5HOhmV8
	DarSAQUGJfnHn+pMQt5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI8-00000004UCp-33Bn;
	Mon, 08 Jun 2026 22:17:56 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI6-00000004U7x-3YDf
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=naSzxSTDJry2pvnTHmMeIlulo6QdmrTAahAcqOXgQx97V2Xw4EiGDLFNk45LKN1kwo07skBuUYyVIDOANd6h5svmnhx+hbqBDZ+nFPmuCsJe5Aim1Z5+NVtKBjoxbQc1FDl2HoE9KgFT/uPe8LSN4Yg2xnnMaSDNZgXOXiAS5VfV82QqvETao/wrqnEuxZAPTFQmzB8qmif3BLh2WZiEjIzKlTLXbB2aCKzRkVRp0FJK96A3KRCN2M4vYGgnRVQ2vZI3ziAmc8PyBUeVlAPyTo/5SpIzjmq5cKaUmKzIYU12Winy5fBNQhZ4ArbGsyK+M7bS29ZUi+VMfjK5pAgWRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zayNUeiFq6gwgN4R3nI4LmkA0IANNRwkqlHcRBS/ehs=;
 b=YUKzsBwF0k9KKemQ/KNGMvNCd3fGtrK96bvBWduJq0s+C9wSTFrw/vft7xiS+0e01a6I+ejocNxBALAwQBnnh36IYtjkSZteGIsJ28icF0Hm6mHXzWvPvExsavnJFgqArTbA05B+5aUbj6tsV/bN7i68L+WqxjQdy4nv1dy55RsujQXW3qTRewyN8kKLPys51dCSuNtyKlzEJglXStYicpvJuNjEPcS4usVVFs6d7tIW2JF7MJpUB//X3Gbsno5XNfCpOHB6C81JApmXBz5HPgedetgXNX4kalW+UCyI+I7LrlyUR6WHuHJk7vVs4mkLKrYQIo52KeKlh9OwhtzZYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zayNUeiFq6gwgN4R3nI4LmkA0IANNRwkqlHcRBS/ehs=;
 b=Sx2tZw35Q8EDUoy7NyKrTClfWUtonwwp+nOaMxfFaYC8F4LJ7ahi8TLr0OHPT0E/qADHtdsOGzBlfh99yGBdPuMOpf4MH7p7gYpLv0gemxzApFTegnmQvayCgLexY6vfNzKnWRUdgg718+9c9VgpQCIx3zBZ+Nn5BGBFNMYA7/LuqAUZ2fL1vs1tAmQvMu+xnnUk+t0GvpnDeEdvAmKDCBu/qcdFD0b+7wYnBjL+gwptNph3x5Bdh/QwbTqjYrXvCuf2MIFUhBAWA6J5P2s1TLYaESqSu8jgdbCC9/k7F6Gj5db88EQrrB0UvGZq5gLLu6tPOy7QwlOoH9/xJ+vK6w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12070.eurprd04.prod.outlook.com (2603:10a6:501:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 22:17:51 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:51 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 12/16] phy: lynx-28g: optimize read-modify-write operation
Date: Tue,  9 Jun 2026 01:17:06 +0300
Message-Id: <20260608221710.1572971-13-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1P190CA0045.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::18) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12070:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fdbd2d7-161a-4696-e892-08dec5abc764
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|10070799003|366016|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: s/e0RogQ56PyD0ewBQ4Qt2bW5E6wOB2Dhz/sgnLc+gY/pbYLbdu/Y+fiqYyPmZlFlPJdz1nqb7kBE2gvEme46jXZH1CAhHVWHoDI3P9XvUDWmNbJuCZ/bDNvkRwtmTAHDpMJGuwIrTL0zuxbRF1I6VCaQ7J68XSL+7ZYdI96fXCTIVlDf/prXBSzZ/HneE4JuD1p3MGWeOmRhGreQnWQyttqrfCXuILjqzvhU85zcwRJLdVyIOqhsB3kmFDyvCAAzUvZu4Ua56l6JJWQBLXQHh12YjIiPSWIa9PaXAuEcP/QlAe3LOuXYjXreAdHroodR8ZVJRPrdUyP9YX70zW3VCRPfIyCeIxUwlWXsLPUZXkmykkEgzq4lTy58a75uZkOJY6DD92J60VsdsX9LMR6NGGERcyARWXxStkmeAHraRdh0OnZTWOyhHgpykPwI24kD2LPZK8EfoAcpWu/Rr7oqNrbY2UmcLDOR/sFx2PByb9GMS9E+fX9lH3vBIFWoKSZ8nB2HjcQQC3uDrXzIxPubmUJsqVBktKbU9BcD/WiphjjjAVkKRaa6ru7hGWdRgEHOemz02MiI3LEJdmld900+txOLFWDEgklLw/IDiUayTIFd9yfE3xr7exF1NNaOLTCY2nz/1ETvpx0lF/WKZvL1hBBS9xa4HhKX+17I4AfO8+z4LDLP1DJbay07Vp55c3L
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(10070799003)(366016)(376014)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y2JimQuxeLs2qd7ZXhqWAsnkXIGKj+1aapxmyoTRX4a9lu6SseKFCzU4M9tQ?=
 =?us-ascii?Q?wSWs3CXdN38NADCkstz3QLFRnCJ6NE97YBIK+d6Lcd7GKEdkD2/k09o1KUdb?=
 =?us-ascii?Q?+y22GAoQWzQvJpu2Bn9UtKQUisXY8WzEflr44T7qa2hwgTDlMzbh6uYJgz9C?=
 =?us-ascii?Q?gat9VbfZHbiUlNgJj/Bxycwj8UnnCBGZARjuaTCPJP6w1/kyrTccrhtYI07J?=
 =?us-ascii?Q?X55nl+jmafV4+Xnnszk72CxdULpGM0gLmME8JseBl8Ku0xnshkeLF2mupnK8?=
 =?us-ascii?Q?BnEq+2R4jt0YhUtIIN1a6rCNHC8EjzYHulCp+OAnAa8V1+lpOWQEDEeIeEXJ?=
 =?us-ascii?Q?5qxeDkg0Ad9C9cn3ZndY4DRFPgXPbAHmUKNCjhdfQQjkdkbpFCYX2z+a5yRx?=
 =?us-ascii?Q?XRKKymswUM16fSLNdExSXDrVRmvOpo9Yy4El5WANrv15iYC0MJM3Z3fLA6mT?=
 =?us-ascii?Q?kdpUy3KVfdDuJCKVvduP0ORHhvU3S/6Ish3qFWxkMK31dU2gjWblL6dctd3P?=
 =?us-ascii?Q?huosYhZxJTLW10MsJQ3FELmEJDNDnzoa8L7fVl4v9UW4neRSQqwukyEYTp1g?=
 =?us-ascii?Q?5lKhIEOrhBn+LVtHhX8tQHq7UahX+csKNPBWB7oZns/m0uOvN/+M/AIgRtGJ?=
 =?us-ascii?Q?OSzuKWcFHn7fvra0GwB1AFjBTq+jdMzp64PnB1PaY6W+AxCf8QiZbCRkshh9?=
 =?us-ascii?Q?FKWgv6OR96jgZilt72pzkhB8mMBcZsJBxXZTPU29Iabyuu147n4vVsajr7mq?=
 =?us-ascii?Q?IkjP5a54RKpwFeJQlqnHp44GQnnCoL0BnBK+rYf031Cs3Fth041pb+laJ8Bf?=
 =?us-ascii?Q?WWO+2v5hL3/Dbv6Ks1ijfG8efEPGpdoa2eFOyGV2h+whL4mne2oOkPmopDNt?=
 =?us-ascii?Q?1sMD7ktB9S3w6bOTNADykxjm/Y3fPzgZz/cDozDMed8z27TnZzzOsKW2oskT?=
 =?us-ascii?Q?hxsHowznQUQv/OBw87BkNcCJ1fTBqp8TW62vHG9UfvYUlkCBASJum5OH/Pvs?=
 =?us-ascii?Q?UBcNXUW8N4fVqlhD2wQnWb18TUtut3GD01txNnE7qWdfbwak8vWiMp9OWK3h?=
 =?us-ascii?Q?8pNRixzUNCu3oQLdVZ+jx+PqlHdFE4mbDYK/ZF/qvXvaFDC7VUW1+YBZ6xuo?=
 =?us-ascii?Q?vPdvfKJefXJ0b+jCIhWNb+Dyib+/o2gUKjwNG8LnKNPG58u+no6ynzAFa+RS?=
 =?us-ascii?Q?0MHlcKX6BsnIeoB1c36K0GwvkFDoZhJc637grIK5hjHxV4++O/bDlH40wE3U?=
 =?us-ascii?Q?rTfaugRS868kH1iGjf77fCOG4hmWzn/Su/w/5TTKnaSGBJGG9FtemzELN7ad?=
 =?us-ascii?Q?GiwLYAkavLr/Kt0AhWPQ/WpyhvqzajA0G7JoDGLjhy109P28HgzvHzOZw0CS?=
 =?us-ascii?Q?zzx7mghtFDpnf9M1WZDOl1WBjhu1p7urjz0EARpzMoyIdJy9nAcyj3jo29GR?=
 =?us-ascii?Q?jD6HwTxkEPmv1aqoq5XmGoIonFYgk1PiiXcZMD2Cn/Q6xfkv9QJqghcmDjWI?=
 =?us-ascii?Q?xRgDCP605RlmhQKc6tbhsxbWXAGY/gRZ2LwxwNOLeLjpwHegGoZ0a87c5gpl?=
 =?us-ascii?Q?eD6m7Wlqnx9YW/XtPsbPHMeCQhaW0Mg0QuBz9cPOfhRYGCZ8+UFmA/k4NtG7?=
 =?us-ascii?Q?zN3jn3eDiHrkQIVaDg7CX4BsIKFIEalAoHCz8mAZaneypTgL26P0cijK4eeD?=
 =?us-ascii?Q?wLMcEadyZcpUCvkIBpsCqbX+GvdYU4W/63N6valifonBhItMAnJ7FWhwVWuR?=
 =?us-ascii?Q?02xmzBaRa5OqAuKytQOqLx1shbjxGdGDb3ETHl+gOA3Hm9fqs2jb?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fdbd2d7-161a-4696-e892-08dec5abc764
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:50.9415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZAEJ5WvDQP3R1TWJP6TH7EAsY9NxRJhsjnAKFib2wOxDzU6Jq3bIWwAB5iuD+xog6nGET1mOw6/VBpS78e/nBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151754_888394_EFB77721 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
v1->v4: none
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
