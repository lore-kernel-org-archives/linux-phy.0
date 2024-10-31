Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12403D74958
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 12:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DNxJzpkWSKBzV2PHt6O+DPzhVNukjt1Q35zh4meQ9lc=; b=Cwn+9/C6dB809j
	w6dJ7r/T4AvADlovmoVhh7ZsnJu0fsCSbL+O7l0b/NmCDCxwQZQ6TbH/yhuiZ3pu0uo5htL6pou22
	SmErSl9bubk0PYh2Vxzz/mOgTFRFpnwmhGUaHi1LkBPNbAifpGastFwSPL1kSbxfDJNLDbVbKl+8x
	5uucWVug7rQK1KLGEqSFZYT6xzropnYPTb4Sdb3hepbJKtdWyQY9rsck0abNCYwXDIEULBrHXpET+
	E4d0z9nFIh5uPPkzxlpeSjo8dFBMsXGXlQ9XquMm1TLyB8sLT9J+Mq7NzdzNa4Hh/EP/QF8Rmc9G5
	xnCPYo75b+6/NNKv15PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Ugk-00000003bYa-24Hp;
	Thu, 31 Oct 2024 12:54:10 +0000
Received: from mail-sh0chn02on20708.outbound.protection.partner.outlook.cn ([2406:e500:4420:2::708] helo=CHN02-SH0-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6UQO-00000003XxQ-267o
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 12:37:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVc27ztzOsGy9D5eZq7ipaMZ2SiLiNeNHHI9u++7OkX+jc0gXbM4hxmew8pbW+TRRrl5jex5SncSCQPrMZnScfC7cJLbPLgL1cVXSeVdhRz43EJbqFQ+2uP4ySHYCbmzbQPPuHq3PChc9Oxz/Ps76k3ytGaVQLIvzmjob1KiBzmUgc8oAPNiu7DRdhQmUqHDQvK/F3+ic/vwSygfmbndIsscceiV1ot0KEsBAvEHPKZg6l6mAbCZsPoW0DK4SAp/LRklWqw43eTSkoN44mWF44heAjK5VnY0BUikFlzxWFoYgt5aCsF8uyVwo+nSbMqL1uIFfeRaf1Y2PAs7Bq9gbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ch3S/VXCwMKZsHUz4EyBDdnutgWO2D76qk6fZeFLXZ0=;
 b=J4hKQpeBTPXOsOjkIA1/VlI4Hb9KyXrqWzBJheMEwEzLjF4XrSrsB5UB0EPESNN50ye70X2iBI/TQn3FudJ1hkyP+MurE+EJWh4vNIZ7ZyD8UCJGI0VZEtoCpAq5ZFTbq0KXRzZY9sIgesvCJDayS8eZHAQJPPGBVqIEO8hhXvaN07Alxlqpelea7SftMuFCsnDbbGrc25Voxr4KmeJkltn27fHqZS9FbJHYRkASFNOf7tznQ8iRnKoFjJ2+tluxsX1bmoKH8rqDSrWIQqfkjKvartaJCxwSUfvTE1wwgNMTqclrREshi1fz2J0RU2VuLeqT7Zn1sV62OkQgYsWAdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::9) by ZQ0PR01MB1221.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1a::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.36; Thu, 31 Oct
 2024 12:37:01 +0000
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 ([fe80::64c5:50d8:4f2c:59aa]) by
 ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn ([fe80::64c5:50d8:4f2c:59aa%5])
 with mapi id 15.20.8069.034; Thu, 31 Oct 2024 12:37:01 +0000
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Changhuang Liang <changhuang.liang@starfivetech.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH] phy: dphy: Fix Unit Interval(UI) calculation formula
Date: Thu, 31 Oct 2024 05:36:43 -0700
Message-Id: <20241031123643.272111-1-changhuang.liang@starfivetech.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: BJSPR01CA0024.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:c::36) To ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZQ0PR01MB1302:EE_|ZQ0PR01MB1221:EE_
X-MS-Office365-Filtering-Correlation-Id: 337655bb-3d34-44a9-85cc-08dcf9a8b782
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|52116014|41320700013|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: EDCFvacxHLgPV3qt+XvWdfBPqYi03rBYYOdvk5z06jGq4lhZZzML4ImnCi/tVejdE8YA1Lsdbd1SAFKerZBZHCjeCcZmjdokC+DQk04LcYyKSbkBu60GsYHlijH9rLpzX50PiF8I3BzdEqbsr23Jfo6Y7PzPpEof6pQUgPtMHDzUQT6s9+pTkCA8yxTMpYwAMEvM3Ou7Us4G8an2U7YaETMo9Mp3lko2Xroo9JazeGA/lDr3t5XEiKINOnyaJDrIcHj7LTig2qmwgxmhaEmCwJkvSXGykxJgKWZLwNLONX6x/6CB/OGFKHR1qhXttuQBmBPPD+A3D1tl+EQwS63w4zCA047FfQSaISxVOERr5bAySq6FkaHHMxoGITDUNv9SU04IJE7kmtr2htDRpcXorAuYQ2ssS0HdBA27i4lJ9taBWGSif9xKpFLTvv2WOtI8xyudkR+TaSk/08pZssKxLVz3OH91ymaS7wXkRdsrTfbHvZKP11GcWAyR122vK/LcjBj8swz1ylyOzJL2x3XU3U+aW7wYkNFFJkwEILpnRCmez+gr4LgWw/NCXKdb0XP66eG/nGUlKthbddE+nygOc0IQB6UXJedExhSpMh9nrwslwQScp8gIBoFBgjTk8ov2
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(41320700013)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5+7B9d5K7ntULw+0XjVFngI/EMeBVVYA5pSIo9KD01Gz+vB8jr5+9lkJJvbx?=
 =?us-ascii?Q?f3eIpBNpJ9d56P956rWREvJyseennVIxEa4SETSP9/x/be82gDqnSx8klY+w?=
 =?us-ascii?Q?fiBrNsBdolblKJs/8ITjzTRuTXTTAJn2lqWvSC6+SrU96aFQd1mE9PsxHEwS?=
 =?us-ascii?Q?YEcNRVZwy7dvf4cKhsc4Td6sqN1s1fS89FOZr7yDmMotyoHVwjg+5tq6ERAv?=
 =?us-ascii?Q?tt5K2HEz+bEGUncCZU/eG3z504Tt+qhlTCA2OyyFoF6nsyppS4mfJP4McFFg?=
 =?us-ascii?Q?I/IqM/2PLLDD5CY6yfU2aeMZ1WcHsmawtAlsf3X1MU1sbfDKLESdo0x6wgW0?=
 =?us-ascii?Q?ORZ1Pyox8pzU4pTVrb2EaYU4M+EZF+axVMT8irXEgwNBqCA87AN5cgKqkgei?=
 =?us-ascii?Q?pc0O02NWDwvmd+BpvkSxtJOVXGpCIfiaNjnu+uOBK1TELPFr9xd2mr9AMc7K?=
 =?us-ascii?Q?8rUIiA38ldRi95jGXktxaf1rX/ha7yR4YAzzEM79oSKmZAI9ZTryK5vD4mYd?=
 =?us-ascii?Q?RqXfHXAdPfmUG7FTZqtoBhqyD68lmK6/KWuieMfNLDvu2QKR15ZSaY+7ThNM?=
 =?us-ascii?Q?pZ7uFEMJH4pW0Oy40dClXpVPYjlzB17wu+DNT8wSwI81YE1GgHV2dBWP/vdu?=
 =?us-ascii?Q?dWLJNj4sDLGscmandX96z/J63mig12rsECa7nw+XUynv8yA8eoMM3/96Oluz?=
 =?us-ascii?Q?VBoZIihzZ2oPFV72LmWaTeF+gkf7iXr9HUiOOt2vS1WtBNuWUxJ1h/CQel+0?=
 =?us-ascii?Q?C3UXG4rc0226GYW0Ml29M/FVePIgATnIssNIM6cKIocc+VKBFgZ25aAbeNBH?=
 =?us-ascii?Q?WANfWcbJcF6N4uzMTdqWvqe4JSzGFi+KYeIJx6iqM+7ZwNuRUrqvC6uZElVz?=
 =?us-ascii?Q?8cbASSLfEPm459RjLIDvImQjHBGjWEXYwyEwYLBjUK0hqpT8ggNj0X/4IqkA?=
 =?us-ascii?Q?Tml1ViMu3Dl0fBL6OQSarWLmhGUiOO1cl6Jbpdyuv/ELR5TJZZBnWvlxkinV?=
 =?us-ascii?Q?J+k3akoYORWxpgQyRjHdEAkQ0dow1r8A1aveixVU+gocQR0uB61QNruVAvGI?=
 =?us-ascii?Q?uQoRwLeqegqj9ngzbZZOgwMbXfarQxNBn2UK6TIr/DUpKwxvn8hvw8Zrb9Cw?=
 =?us-ascii?Q?CZAUMoLBkBwkDzvPzxG/UMlaXA6gcoZFvqhgyqfZNEfA6tVekm+1Zv0rrnIY?=
 =?us-ascii?Q?o3lKlFZeU1SbG7JDHtiduiFLPDHwFf3K1TM0HJbJCYxbEyQ1Oa885BmcBnyo?=
 =?us-ascii?Q?p0C53YUMQL9nzJLbX0fcdZSRCzJfqmvKV4g3bdcSdumvQgS7pvd/SG22ib7v?=
 =?us-ascii?Q?rexzdvcsQriIdYA/7XaYNQTvtEDwmdZ0KXJlFccuaje00uRUd3+lOSR6nDQX?=
 =?us-ascii?Q?yMhRfA1ZbtyRBxMkKId0ZiWupDHjT2rw8dk6MuopyjGPdgEAhgZGthfwe7xg?=
 =?us-ascii?Q?l/k6Ukfn9APf/i0dAuRuSJfXn7DZkOl5UG5QPygpsU8OXlNCatXFCTP5M6XD?=
 =?us-ascii?Q?gW03lAQFzBkvrkniafiiErlInhebFW3a7a0vgWSNViEJw2rWYJq0dCQyyIRg?=
 =?us-ascii?Q?bIJ7buHzriVfxnGEvmOx2y3G3/hrJdFsflAnKldWT8uqXlcZXlWhAFAKKQyx?=
 =?us-ascii?Q?+z4TI+43ePbuTuq62VdaFT8=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 337655bb-3d34-44a9-85cc-08dcf9a8b782
X-MS-Exchange-CrossTenant-AuthSource: ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 12:37:00.9296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yAzYDX4tBgA8XlcRseHV93PKu3A6+pDzkZtj/MtykGkA4Q7xkBYZmnJZnHdJwfen/HHKyhv1GnvgnLCWHq8RnK4VErx6EF8/PSPd8AuHlgZRPXl8Mrt/ZJs5bp72EvUB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ0PR01MB1221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_053716_567224_9B6AE9AE 
X-CRM114-Status: GOOD (  10.08  )
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

ALIGN() expects its second argument to be a power of 2, but in the
context, the hs_clk_rate will not satisfy this condition in most
cases. This may lead to unknown results in the UI calculation.

So, let fix the UI calculation formula.

Fixes: dddc97e82303 ("phy: dphy: Add configuration helpers")
Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
---

Hi, Maxime

This patch may require your careful review. I have no environmental test
so there is no guarantee of any effect.

This UI calculation is a reference to your patch:
https://lore.kernel.org/all/aa491b814100a670ad16b646765005efbdae05d9.1536138624.git-series.maxime.ripard@bootlin.com/

Best Regards,
Changhuang

 drivers/phy/phy-core-mipi-dphy.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/phy-core-mipi-dphy.c b/drivers/phy/phy-core-mipi-dphy.c
index f4956a417a47..c7712e594dbf 100644
--- a/drivers/phy/phy-core-mipi-dphy.c
+++ b/drivers/phy/phy-core-mipi-dphy.c
@@ -33,8 +33,7 @@ static int phy_mipi_dphy_calc_config(unsigned long pixel_clock,
 		do_div(hs_clk_rate, lanes);
 	}

-	ui = ALIGN(PSEC_PER_SEC, hs_clk_rate);
-	do_div(ui, hs_clk_rate);
+	ui = DIV_ROUND_UP(PSEC_PER_SEC, hs_clk_rate);

 	cfg->clk_miss = 0;
 	cfg->clk_post = 60000 + 52 * ui;
@@ -111,8 +110,7 @@ int phy_mipi_dphy_config_validate(struct phy_configure_opts_mipi_dphy *cfg)
 	if (!cfg)
 		return -EINVAL;

-	ui = ALIGN(PSEC_PER_SEC, cfg->hs_clk_rate);
-	do_div(ui, cfg->hs_clk_rate);
+	ui = DIV_ROUND_UP(PSEC_PER_SEC, cfg->hs_clk_rate);

 	if (cfg->clk_miss > 60000)
 		return -EINVAL;
--
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
