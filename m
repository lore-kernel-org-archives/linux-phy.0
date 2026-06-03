Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C1C1CD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaJ0FyoNAalMbqM/ZVpCMTVTa/DiTOfM6tdbEwixOP4=; b=lWdJevZWMdziRM
	Si5MG7WqaXLLN1lud+6zxbnmTpfBL/eFMBsz05r2rJYvBkQE9db80BOEwMY2pN99OLIdFAEEkncpC
	VeWLaOEOE/EQf90jyn8rhwkUqelD7P8EfUvDk5oiZa7ZjzkdvMzgFBMicKurkiF6tI27LoPcGMJhF
	jv8eGb0OBdUvE7Ph1BR3CED4BLhb2ags1lRO/lt7Sjf/zmK83d6S5521GTOVW7/5GylzoPGQB80kG
	JHycRXXN4GWHHPbe8q9LahNFZm8NB/1BKXT73ddlvWJftyoSZukAtN9ccTXsZaRhPk6CZWSp39oUA
	clbPqttr0SSfKuyD8yJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlWg-0000000FALC-1PVt;
	Wed, 03 Jun 2026 13:20:54 +0000
Received: from mail-northeuropeazon11011029.outbound.protection.outlook.com ([52.101.65.29] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlWc-0000000FAKC-2jqU
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:20:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k2q5FYTyJDBwcaTaWyX3oSyW4NCgiiJwnGNVdiSY3aBNqXe3cR5PunGw9N7mQ0Z2zpyjBjW4yIbPTa+VXf9xzsnZSjBBfRecGtxPC+yxu+aEisPJCaNLfo5lp7CWqK2qZ8qc6vxgxXCvNXZo9CXQSRqkL4B3HsYYqJoxLFKiH5J76BfJDFu4p7xs5fwYcGInjgvBWnzBpUaBsqOST9p07e1+aepOrgFSzUbPRc5GBKUOZ4aRbNVVKUgt+zWS+LcJXJsrhAICH06cBO1ceJBP7uP3MW02UI8hr/VemN6jZZJs+ElqZtVREvN3L+1MdWlFG2+DGRPeAAY3k/u7/cHqtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTk2mDWkXzk+ovB01XVuHputsZ4RNx4zlbGpCDuhQsk=;
 b=PqDYuG1yEhsAvXUPUi4L1wuZwyk/g7Nph8IdiyMk8/Ly1k2vCFwvkZ+IdomIngQ8dLPKOTRt68eeGjOgiwtc8NXQccUoGIidXDPjsNFjkvWlFsJTXf4Vchw3DR0xyWp0WLXzyvz16Z2C4arXANWOoryvVKHKIFy1Q9mKvo9QlsxyyzG2bDyyH24pDoBLyvRXWIkUnlA88TdU34ADmCxFBtqVkzDraX0ssnws/DAGFKBVsMkclGRpizyHG1jKGOlobBsMZvbLGQ7GdcdTbfD86HyHxE7h6JBQxxnYdBEFytTh3LWMET6ZmiJUn71LnvyyAWXdZNziuA4imG9wbUy+Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dTk2mDWkXzk+ovB01XVuHputsZ4RNx4zlbGpCDuhQsk=;
 b=AUGFjV2QkeihbyTiOUeB/ZdA+0YdHPW0+jHr0EJvl4FHW6b9k9Fix8MRckSNbjn73IYbo3aLg2i69FVYujwp5mCfVCpqfIxA2HTWTp2kub1gQsfDCgkDlwi2aqPTHhUsHp/DaBM0tw7SxRhYpXFvIl3s2FpFbPu2eHIkAfozwNF1ZiCcwdLG29mDz7zp+4FwRBVs+draT5+6nI+nYGmqQyysfaeslmtDV4qMye3B/RQ2ns/QMqEXvT8GA02ECXykfKQjcvnUIFg3UyLrQPGJET1y5/6YEjb2eBTMaJCPUdPptISz46oBsQjmXdybJogOxGjJFN4/GDLLkfgT0Uud8w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PA1PR04MB10225.eurprd04.prod.outlook.com (2603:10a6:102:467::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:20:45 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:20:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 12/16] phy: lynx-28g: optimize read-modify-write operation
Date: Wed,  3 Jun 2026 16:20:40 +0300
Message-Id: <20260603132040.503447-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR4P281CA0347.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::15) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PA1PR04MB10225:EE_
X-MS-Office365-Filtering-Correlation-Id: a948c7f5-3160-4156-7c6e-08dec172eb8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|19092799006|366016|1800799024|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: NGCZFm4RoNngREvGvfsDcX8qNatqYGNDnjuunOzuuhH9fWrO6GfLeecmb4msa71eqhe2O8U1wSgD7XbnjBJDLC91NPXEsjmDhCf9d9rIHFpVczOERpbPORqjJ6YHy9rnvdG01TvvP5RzmEO5h7kRuAn3T9Scjd7jwli/YKfWfykNRzmIzBYUS4ATv3Tbt+cEgeKUNSTTI7oUAQFYOf17idiIQ/vDytxLuz8QM6w1IkdTD7osReXeSRXOttQrGFnAVoBjBIwojDvlvw0P5HNY5EfbjVb0lvBNzdXZQmM5jjXyaRr449nDDVRVciLzNuqGmp2lslZyHVvlExwmlx4aFUCGe5p5lPHRGtYl89LBl6d7Ubv8n9ig3dZp76b4Dwh2WfY8U+1OK+yvpZ4C1paKCNG80A0Z7MAAaBgrNQe/X25nsQ3ihtG4JUwcc8/JfTcJ2vfu7ZT0qEyYjzEjE/GGmn4n77e1WPPH0mnwedfw6YNfc1LR7q11ff6DckL1qW3i77w3AV1ddxSkYEOsjK5QemUmtNd/P3skWjeCEmRnlQ/Mk7TScsy+TMqlBm/oIggnXWzWWO11wA4N28bzykIX17DI9fquLv3NEx64EssDcU5AMqHZ4NiPXGcBy5y+9losMKEfFnNlS9Vlp0MPHzb8mVGKQtnypepHonek4XYWoNVsDAQRbW3cHN+PvEuIBBZ+
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(366016)(1800799024)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4PzKFxWTCUD+UCFINlyGsIYEd8pCG8S5IAY2B9Kp5r/wwFRkLWI9npqbFhpR?=
 =?us-ascii?Q?j/sZEx+GmKjv+lvtZcngQWX82PwiM8itl6U5AlZIQTGful63c4wa2A0ShfzN?=
 =?us-ascii?Q?L0T42jINOKW/4/09kRVrdFKXDlyNHApdRKUdgpdkewmNaWA/8K2zLXf2J5xz?=
 =?us-ascii?Q?flkn6hmE08Y3eo1F/+74FT/i2g5DS3ESfP0euG68GczY/WeTH1wJ2GICN3PY?=
 =?us-ascii?Q?lUna4rxE/eSWrIhVHHwOAt2Lwsj2MG9bCuhBG05FQopa45S6j92k8MZUTBWE?=
 =?us-ascii?Q?0xc8ttVHmgz/GyNCQXTI9qTm6e45uca8EXvGzxxlHVg9OdKqH5rf2KTUV3m6?=
 =?us-ascii?Q?or7flQAVb06wEbtdFCjBr3Eu6KreX6Yny29NBOLtY7Zlh0QcEqXHEmnBTu6F?=
 =?us-ascii?Q?L9NkFML46Igx5jovCxj1ZqTQj/ws4IYZmfpVVYLHToeyki6BztdFLcyYvQg1?=
 =?us-ascii?Q?ClFl/eD7wf5K8lau4/arHG2hr2UBmvrkB37ReYL1fe92u1099ULY8fTRwcjJ?=
 =?us-ascii?Q?E7NdNtx5PppTTcJksDde/xY+lLyhqGozguD8r15S5AL4vw07yneq4h3ZIccw?=
 =?us-ascii?Q?UGjtIJxpQp+Yo1mSiimREME195Mv5ZipO2ma36HIEGoKTL/1EcqH221I3yDV?=
 =?us-ascii?Q?6qr9YyP2jt4p/zoSMLgDPuClWVUQLfap0ytR3bZwtj2kGeitaKAFYL878K0q?=
 =?us-ascii?Q?PliGS2d6N7A5/my3bI2335ZwRs38JrNRSEQesagb26xbPdTSZQO0ldkfdN8Q?=
 =?us-ascii?Q?zwSanFAJ+t5+c0bes5BrkvKJaDsQvJypgE0bvWsZni7b/+ywWIanRn2aPu9V?=
 =?us-ascii?Q?fyzhXgnjnQusTZdPNnjxbgrLCSQNxv0tIo5Xuj+joSur0A7QPZizXbCtXi/1?=
 =?us-ascii?Q?0QxCXc52BSfut0xXxTxOrIWBJNg1VaoEcOZeoFR7iwiBub2hpN03mXKPnMwK?=
 =?us-ascii?Q?kxm0TpITI1WHKWfgfo3rMDQkDlIxmpfZ6KwEbmrqst7yKXfK9TXoQQNSsNMo?=
 =?us-ascii?Q?kHjdulmxGtmwF1gl+fuNZyOv+gK2w0Yd1YCS9olRQtvC9kHNYhLpZ4YYHViD?=
 =?us-ascii?Q?QlQhWmdiETgkx5INjZI5mSuxOSFPG85oR30tyfp3lKDh/U5rCvB9s8jkR3xx?=
 =?us-ascii?Q?fkiavuLF/zf5LQUH73O9OtBy37GtQuReT8AcyCzO6n91XCWRCJtrFzu7REsW?=
 =?us-ascii?Q?VzBprzlu9SGpEzb1zuGob9PZH+WxlbKMPiIdwOql7Hu/3aCRluqgasCgtvw2?=
 =?us-ascii?Q?DMMUBmH/t9tSWgWPAgxtLBpJ6B2RYvww6nvWNlHs55GF+qOlkvBk2TtMW1ht?=
 =?us-ascii?Q?pj9qF89Lt/V0zOxC5YJQdbCE0eu2/z2vO87ZW3lL2nWNJcI43sMBMwloPR/f?=
 =?us-ascii?Q?kwNnVwYwAAah6hhlZ/vLxdukHNAnPSiQ2JT9SQveH8qYYE8961xKF8HJtQ+y?=
 =?us-ascii?Q?hKoKSKAKRXNLopZbWWhqYPdJqOZVop8JPJyMafyCUKU0uMTYWEb7k78ZiSr3?=
 =?us-ascii?Q?1W9NqkTKFaW8VVfy4V3ohdyc/+ZiX7DlPgP0g49bb0vhKqtzaLuCYuIwPrdY?=
 =?us-ascii?Q?flc0aZcT9vVWajDmgaeb9S1U/LGKraPowqtWmu7dCTp7H42Po2vzCesZO1U9?=
 =?us-ascii?Q?xuszTlOk3a5lZm98fpN+k/t7fYHyqxOIaX5Ec9yEgySTXkdOSWiro+iTMD/3?=
 =?us-ascii?Q?oKU0tOGn5yB1OT/1qAJq3MCfD/Zr/x3PHQbw41qQQBLXkVm7zRGyo7uwZJxV?=
 =?us-ascii?Q?g6XRd3TDrg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a948c7f5-3160-4156-7c6e-08dec172eb8c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:20:45.7407
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +dlSRwb4t/fCi+i0Jl0TthwYu5GQtp9Q7738SyOfcY8XWa6oDNZkDPvhR/4scu6lcc8UNpVclBjreS2TT6byew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_062050_690139_57FFE348 
X-CRM114-Status: GOOD (  10.11  )
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
v1->v3: none
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
