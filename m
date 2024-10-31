Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 917D1E68959
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 07:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jq2XtlCpt8wduRDfBLoM2f2NbaRoMUt6G6W2hLmS9hU=; b=X+2MALw6hx+Lpw
	k169JLd93vMrrNMt2hHh47IyUl8z2FipwuNpD+RPlapnplGpMaxzQrm6L/Js9bSYBTbA0SQ8CKyu8
	tmunYuB9VCePsDy1V1Vy03MyQs7dTCEuXZkdinHzqS4aBZPdfTwah1MHusKRrSMtaaZZ2p4J4EHI5
	N5+aIABCjvPiLGsozieeSwuafII2NRPIJfjkVBRnsnzOLTqsv1/+ZAb4d2Wkl/9vpbbbUOC2XCccz
	cgzjmUoy4n41qNvy+Jo+dxhCUQ1AqtUIk1ImTGuAMtYo9XCX3uJkAtsffyrEKWnwa/7YhXROLPHOc
	R8LTNKEjiXjWUbrsCL7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Phy-00000002p4z-077w;
	Thu, 31 Oct 2024 07:35:06 +0000
Received: from mail-bjschn02on20727.outbound.protection.partner.outlook.cn ([2406:e500:4440:2::727] helo=CHN02-BJS-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Phu-00000002p1O-1hCJ
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 07:35:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OMEzdjJoVFT/UI/aszvwOxMk1kxlDtr6RAmQZbHmtvh5rVRkR+spdsXfjrwRSmfl0/YmGs3wi1r1kHL0FyWbLfInLZgN0H4Ha2eGpTnGJlBPbQ/ltSZuEtzp2NoOnDOlkrWvbf5fcLS5IESLgYRfWEXKuqBIaVcD6/eyRBC72GRO2/5kkg7Jh4W9Y79Gzg2CYSnQpWhOrLoLWUzbqmDjdiSezgib8L8JqjGkfmK7if0Y0/npa1ePEbELGOTNZEgVrKoDStAUvGxmS/5sNYyyy1z921oXi7JlQJFFkSdopCuAd9uWLkqcq9ebCLHl18Ky/ZplFg1FU1J9+5+AeTYOXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jvb8a1pEy3d/rfTM4LpGfFKt4wirQ/0ugSjLJQbNmp8=;
 b=ZuQ9hepjutyhNHiBiy/Y9ePaijkOcRUpDowNQVuoza9nkTs5PZvOWFeMnZ5E6rb6cuBszgFNmCteapdhBGqT7NFY7acidTIiMxA/GuMsnbNRW8JrVIAkhYdKp4gtrX9G2itl8GYgjLjwpuv/gYlJkqflmPznsOG45YnsuipoCNnZFqKWfgllCzr1I4x0fdRyTY1d1mN1oKsgyBZSUzf3pJWrTBfJAoNFUMnk/8j615U2iKI+vEHThIBN2rLnUW+F14S/cDL+TyM444cQUtIWxXIyylkhkVk0dUMFtVk9hT1Q2NCFk4ENJjcfZGdLkRcofEt3U5KpYIYvMRvReYH59Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::9) by ZQ0PR01MB1127.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.26; Thu, 31 Oct
 2024 07:34:46 +0000
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 ([fe80::64c5:50d8:4f2c:59aa]) by
 ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn ([fe80::64c5:50d8:4f2c:59aa%5])
 with mapi id 15.20.8069.034; Thu, 31 Oct 2024 07:34:46 +0000
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Keith Zhao <keith.zhao@starfivetech.com>,
	Changhuang Liang <changhuang.liang@starfivetech.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: starfive: jh7110-dphy-tx: Add missing clk_disable_unprepare()
Date: Thu, 31 Oct 2024 00:34:28 -0700
Message-Id: <20241031073428.266942-1-changhuang.liang@starfivetech.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: ZQ0PR01CA0022.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:2::23) To ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZQ0PR01MB1302:EE_|ZQ0PR01MB1127:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ed0e731-1a83-42bb-47cb-08dcf97e7e41
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|366016|41320700013|38350700014;
X-Microsoft-Antispam-Message-Info: ZITizZ2w1k8G8JcomXS38KxL+bsCXo65GxJSVSPPguP5VHX7IWOtfrmlq2hSPmArmRKtDMLxf+fakDLY17mUhBKm6JOlfJHYabp/9JbHP8Kdi4qK18HKi/zjd68QOBDO4O/fDPZraKMh2AqwYx3TvdvOiCuP2wgQUOH50dieS1e1QBJ+YdAoPPxwMgzdFdPSj8mLVEknUwCuaA3MJ8igL/kiz8gXN3p7h7qaQk4u1CRf0jROj4fz1zRc/qpZl70hqZp8Xp/stseRLC/GweU07cTPy7vWhIIEwBjx61s6n7wU48I8dqpUAs8rTv7xobBAtebZvI7ZODMs5Kx3W+TOIV0AAM3kiCPJ3S2l70TrQGo/8bKuctQiavgpXhMoTwnsKZ7oU1MnMUmVTj1qvgsjkghnsMJlBeSoDOhZLY4ruaPYrTBdj6LcM0CcyYVgaSdMRSfjeBHOGn/3I1AS64NIKqhRUqGHwUeiq8dk1TZypIU5sv8wV3LSzeSD/UETVPFDyD+Erz03QawOoUXRUlxq7w2+ZmrMdGg/8B0byZyNVx/xI4Q+deNBt1CbypNrQP4mwXYmKzP6MaGLge7ehXbtFJGBW92IrhvWcGDXmN3oARbzv/IhvUc485caC5kp/N8t
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(366016)(41320700013)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mpkoC8IC4/rcketUE3cE9CHGub0iYsifdMh4HRT8IsOooQMpnPUhNjXefc/v?=
 =?us-ascii?Q?ZKivnOKUTgqKLuyDTpwQZ84ZQPbt8ZKkdlpEqdKyhJW6hn+yg0wgrwYKB5ZX?=
 =?us-ascii?Q?ckbpVHt4kEPo7cJUgLUCqHpMbhgfbm2OdN5HLAS1j74DRcCpKTqybV7ifsaB?=
 =?us-ascii?Q?WedEzQcGmheCklhFXlHGWCUTPiUnyVkrNXH7UdeDyz8QJEMKjIdPKABftZba?=
 =?us-ascii?Q?if7GxTxWYQZQDzOUdW9GD2mkIZ05EQlAfuHI5LVubM7ks1MlwH5bzS9BOeq1?=
 =?us-ascii?Q?t6Wbw3HlIFGVRwDM3gRGcdbT8qqzN4DavljoKTh5jDKN+VbDQSoJcJyiXBEj?=
 =?us-ascii?Q?kL2XqZjwynnZKhNU0O3DXwby4huu2DtyZ6G/rcQOGnL8kNy9xbYD+QmV3FYX?=
 =?us-ascii?Q?cyNHBa7O5OfOF3w0BmOBr4QjdDzwc0A6ryLeziy34+6CeW7N0SLWzN5RQbnR?=
 =?us-ascii?Q?cYRSVAKstFalMpRIQhQ3QUZa+I1ka7r+TUz1itheyTQOye7cApR5LjqGSIS0?=
 =?us-ascii?Q?gWP+O27E03F8Hg9mgYRDlo30ZLY67qqwIajbMx1U82METtJlWAg9O8JbFbBu?=
 =?us-ascii?Q?YhOvYDNRPw6yqHYMEkWyWDTcNzANvHAcFYDkhy3Jxl8GdK2zzAnWKWaHljTw?=
 =?us-ascii?Q?zC8YKviD2VcjCzM1V8EmSkRoZ6qgJOQkYcoEEWGdtFtQRdBuoPt8FenuA4TL?=
 =?us-ascii?Q?Mfh5N4KASNv0st/iv20oh+9Ncf7CEuJxChG0aPRYMifbmVcj2MurG3CZ0r7t?=
 =?us-ascii?Q?Bo971sv+0CgtI87LRlUU2J8UWhAE4Krh8nbQh1mDFtaJnbr5exlMf6uT0NEE?=
 =?us-ascii?Q?Ox+dP1MGHFxW/yUcJY/rmo+dlc73b6aIn67JTgmvJlQkDEdx/3gsw2+sor5U?=
 =?us-ascii?Q?7+0/yT3XDfe139EWgPwuUDozgz+VXk3lVbzuQeWdwU4yGuS1Osor8EICjo3H?=
 =?us-ascii?Q?uMWX8m+K+HqOpA3F1mM3ditvfUENa5jMeVMtQjJjkgEYf8zhI2XMpMdtSGS5?=
 =?us-ascii?Q?8fJEhMISwwQmIH84FNZPvhdnMGLDcXWDNrUmcy7ErlmlBNiGKaW++lbJJasg?=
 =?us-ascii?Q?GoN4CrGS1+AKXgWfmX/NN3e4376PjG7WQQR4BDkVT/afymzfBMnHr0zh+UnK?=
 =?us-ascii?Q?QYe7dcTorq+3OfKOiruCArtUXYn7J5NVfCRkQcoqoTwy3a2x8Fop7a0yqj6N?=
 =?us-ascii?Q?GDPQtMRZpnwg0sawurLHToAegfsWFXoshAPEx51juU0q4P8tk2ADtFPRABQS?=
 =?us-ascii?Q?pW3/Pr23bsynI7TdrCzb/c+giXzTmtetiuZMPV8DrzwLcsF0rrWoZomKp10e?=
 =?us-ascii?Q?qT9AYhQ2Jyniqgb4CVT8CebofoXhiHkdtvANDKt9tDC+wX6PUuoSD8z9oGb6?=
 =?us-ascii?Q?O3CtLf4poUAu/npcvN1hGqTqrkYFW8wW4EqXY5YhhqwJoZVjNGsTIjB4Mpu7?=
 =?us-ascii?Q?E5xIgFa/001nsTvMgQeYvgUKymxB2yAT//zOjgA7XoYTN8IMI9Bjezt72uXL?=
 =?us-ascii?Q?2TzmedQvgC1TLoBxcJrsFbdWC5lAJXiJDWg8cXLICZHluEbugAThu1bKPkMS?=
 =?us-ascii?Q?79m8DcqPYLrTh9YW4ZFMYiGdrfV7kfEsBuyxTwS5BeyY7s1Y/72oDPP4jXS2?=
 =?us-ascii?Q?M5BTz81mxT8hXWmsRO9gNac=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ed0e731-1a83-42bb-47cb-08dcf97e7e41
X-MS-Exchange-CrossTenant-AuthSource: ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 07:34:46.0463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0hs+CS2v+wj6CeJ4JMxep0mDWtDZm1SScil8eQ3CUIFZDFbFe8VHDRP+Dyi5WxNjX8nB2cEBp/PzgIkGRxx5aZTEHqI20xP/smiQw/Syirns9u8PLg0jiq+STe8kGjgK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ0PR01MB1127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_003502_824215_67EF3D24 
X-CRM114-Status: UNSURE (   7.70  )
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

Once the reset_control_deassert() fails, we need to run the missing
clk_disable_unprepare() before return in stf_dphy_init().

Fixes: d3ab79553308 ("phy: starfive: Add mipi dphy tx support")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202410310715.duo3ShR4-lkp@intel.com/
Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
---
 drivers/phy/starfive/phy-jh7110-dphy-tx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
index c64d1c91b130..7b59496983d2 100644
--- a/drivers/phy/starfive/phy-jh7110-dphy-tx.c
+++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
@@ -330,6 +330,7 @@ static int stf_dphy_init(struct phy *phy)
 
 	ret = reset_control_deassert(dphy->sys_rst);
 	if (ret) {
+		clk_disable_unprepare(dphy->txesc_clk);
 		dev_err(dphy->dev, "Failed to deassert sys_rst\n");
 		return ret;
 	}
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
