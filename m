Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 884CFC0015E
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 09:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3uLljHApsJwGMCc4Gho54vK+d3Q4vESxU4PRwl50KY=; b=g1PKq7bEy5DxgK
	50LKoH7/zta5H2VS0hq2IpeLpymfsLEfCU1zUtiLxH0Nv84dE0L5w4LH0vHwzlk1PtGZ9UmtdBWo3
	rIXYwfKN2TPB28ZeIVY84XjzEw33aLfiDpxD3c2zIUAMkuV+owe4yb2J+Krt0DrW0Pwjj01X14oiB
	ulMQLxPEIxLMmQvK/hGd+rEmqCkGPJ1CTJ0CfnqVaVGiGndt8OvjqH7muBka3dMlD/hoVIj412YDg
	funHAPKFIN3LCsrD2P+F/q+t63KYxFf0x5xjqg4sq5+56nTS009fJvjkrG1Mob5qL8ljUlpDDJxqF
	GWQRUiymNK7kokN1dVfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyOb-00FIJu-0f;
	Wed, 05 Jul 2023 09:01:57 +0000
Received: from mail-tyzapc01on20708.outbound.protection.outlook.com ([2a01:111:f403:704b::708] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyOV-00FIFK-1f
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 09:01:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5I4q+XD1ETMzQGeo1Hh8DFgA30539lIcQ6a86GhtYWJVNUwVgCtGqlPWSAsTWhn+p8aMEoqg8UZJLbKr0Z23potYSSNd/vSGSYMWX8Ot1k0fW1X2KW23zoZS8voCuL63nFn9/mI1Wfw2rcghJNjTHmVRA7nb6xdtRecVJBzfwnZ7eqvm0ckUtEClAW7h4FSPIPedBmp4argDCCX88cIOyUMl0ssaxEK2EPB5M0Dvpu8GptVX0R7rngBhs62RYPVPowUKkXXSJZGMiEEL2Vz9u3HPk6JU71ecpGBaXuiKOuEwVe3cNA322YJr8OdfHic/jWI16VlUelF+nnujGSG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzM3M2AMGRYBhhdgkF86J1BOluETaIU5fbdzSgyc4xk=;
 b=LQ6JLTtOwuNH5Ngzf7GW47k/yW9S7XbGROYkRbCiakS/xKKQRf0lOBeS6AEZ1k4pb4zbCdUGm6XV3ATO0GsTooOdW6vc9qsEEhxwal3reBCgd0OZFGW+pgsYQb4oVBVBbBY/gjO2hAqxLoI+eEtFPoV38rsf6z0B1zpBuzsPyabiJqRc7i8n5sq9c65eW6WKIISczLH8Pn8JGzGDslY7Vq3SBjHa5mEQG+ci5M4gQzSIOnJWurA1QqdYdeH9URLb2LSscEOfdWBoEBxThNbgskus1ky65Vk5Ay2Hl0fU0CYDqBCi1+OWGx5TEND1qxW+T2gYplKc1FM1sco/PQWMPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzM3M2AMGRYBhhdgkF86J1BOluETaIU5fbdzSgyc4xk=;
 b=U/3hByQuOPrCanzAR4DQHR5CyD8/XgS/7/2F1sRwOF/M5cLjbRw54r8Wz/argCnLkzrKcPC+x+eu/wOhm1y2S9MZaaZR9SESD1BnpKNHYt40lQ0czlY3vH4awh0sQ/qSVAEuVmc6Gvu+86/keTF/+9InzPWVQ7OvSiV4MwRgs9tm8p+KraW87KLbGv+KofNqhb5nhNAp5aNwHh4vM/9FhlB3Q1A9dcNPsv6ybKVArvehA2ow0u+eS9lWngWj1UquV43E6MrK0c0Seq260b3cHqiFJOZ51RnEZKbZuCE1FWFgALX6xB/MmV179RnP+XVX8Vjg6Vm8e+J2JAsqdJ+lzA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by KL1PR0601MB4354.apcprd06.prod.outlook.com (2603:1096:820:79::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Wed, 5 Jul
 2023 09:01:41 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.016; Wed, 5 Jul 2023
 09:01:41 +0000
From: Yangtao Li <frank.li@vivo.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yangtao Li <frank.li@vivo.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] phy: renesas: r8a779f0-ether-serdes: Convert to devm_platform_ioremap_resource()
Date: Wed,  5 Jul 2023 17:01:25 +0800
Message-Id: <20230705090126.26854-3-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230705090126.26854-1-frank.li@vivo.com>
References: <20230705090126.26854-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:3:18::19) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|KL1PR0601MB4354:EE_
X-MS-Office365-Filtering-Correlation-Id: fc2125e1-8bf9-4e61-6e4d-08db7d367241
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JE8fa8Dq9ijSsFcGjVXNAkNVGYmp2PLP+/qje1nKafu9x2gc70LrrYh0b2AJ4ZkrPzAd2zaBbtb7akycsxzfFwCNuLtoFhjbLS3ZHyITrCCVCor8Krgxt0kpni1LJnHnlYif+iqcFPBF2+6VAhjh/Zf4pE7DwYCvaAQpOfHCbee7yfLW/4xfcohn5b32oohpNXgVWQKjeGhYL2jqK1Q4nGHzCZDWIf0wVn00/4psNhkQhKozdWWvDhlPFylaEI59mX+VuVIKOI6tuLDyuf25dtjfEQ3dXtvcXfByXicsB4PIn03PpBp1pPznpDrSW575UTNeZesR2X7ncxx2fGB3E+VtH9C4oqF2w8DyhESO3kS56kefLj5zQCq0GY7ZxOW9WGDmmC1gnzZ3I38Hz9MHSmUH7EYEVwFeKEpn1K9Tq0FNt4bVSwIs9KI9Ai2UXKuZqRQIh3giVA18HfAcriB9BrHun9tNy77PanudpO/IzUuSmtEj1pU80ndYcksj5Gs2dmxuojpUv/vrSOMDz0/J3rwnqXEPnbddyzG9L5Hm/Z/wLLtuWXOGSmicFFKvMW5s1jQj6T3Pwt6G34+XLlOxxVI1yCL7Vc7IyQS9ci8fQGB15auhHrsmaIYKAHmDL2zO
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(451199021)(26005)(6666004)(478600001)(1076003)(6512007)(6506007)(2616005)(186003)(38100700002)(66556008)(38350700002)(66946007)(4326008)(66476007)(83380400001)(110136005)(6486002)(52116002)(316002)(86362001)(5660300002)(8936002)(8676002)(41300700001)(2906002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OmZKAen/9o8zatq2Nl5lhX8BdB98cesQ8qqYeorLiE9BRuSZRz/oHihnzZan?=
 =?us-ascii?Q?T6AfYpRZ5TiLBM/k53/oUk/COJvlG7ryvEobFExUCnBv2OLTcx0YLLQ0Wk6V?=
 =?us-ascii?Q?THcE+FdL2c7SAjWtv78ma29uCAXSUwEk2jpEW25pi6/YicFFF+kzt9h42NJX?=
 =?us-ascii?Q?kuVvyN+TYHnGb94v1UOPI3lhSVnhxng/JRuR155Z6ZuQRqJ2PVgWjAFZ9CIK?=
 =?us-ascii?Q?E4HCuVUHcQx35cHP+Q8QdW88kJYlwi6b7gnjjbgfnqB1xqAfCD3U917jUqHb?=
 =?us-ascii?Q?TLs7V8oJJcPAvj8rLB1RZw5slf1A7YCUUdtp8MAmWg0L8RYafjXPvmplaXJ4?=
 =?us-ascii?Q?HjVzfflMxNyE4BD/Zxf9ZQXD7YCZ1c+gqAB26tAKbCiK2O0cKP5oF21VTNeC?=
 =?us-ascii?Q?uzmQgeqP1nb1brPAA+1W9CSHXqTbK6JddOkmMhlDyGOieyC9y2q0OWTbKtZP?=
 =?us-ascii?Q?DGiNaUG2DZj6IM12ddYChiNp4jOg12vieMV+V14TV0pxFbeda6xfLdTesKno?=
 =?us-ascii?Q?pcLJSKcSAKtRRLPXKcCge4ZtbhJScOCFHB4i2pF5bh/0dB+LvXwV2ZLhyYwT?=
 =?us-ascii?Q?WZ6ZbVX+yg2e0XQU2CxxZfawgUIqBIVtqa7/kgFIDB4seuNsWKYx1t8+QZV6?=
 =?us-ascii?Q?BOqEwlLzZdT4SdrzSmnvvIwOuWhbIo4UC0Q4EjvXfMypPLpwv7bPxlHj44tv?=
 =?us-ascii?Q?5Zg9LWZ+S3oHgtwHXQqtReMuEAqj5dj5BYEFTOHM3D+EdH5Lvs4UyUw/kCln?=
 =?us-ascii?Q?OnfzYCGKvOoPtDzE0Mps3pmiQWkaAptPyv6a8HjrPf/QSsrS9bJuMN0J4TaB?=
 =?us-ascii?Q?aGR9EWK5sGLs1KbbB3lZB8GbvY5dYgSe0q3uVGGIVUPhnT9dSHtTLnV8sNNF?=
 =?us-ascii?Q?VcBMsUeST4wgsBztUqcAiSfdDqLTKHJs6x5QrRmoV+G2UjLnVxsd19ULpIcS?=
 =?us-ascii?Q?tLcgB1HVVxsopRf9Sx9WWN2mR24ee7p5oGZ58jNlBgw8kQSEb8tvZrvRs/00?=
 =?us-ascii?Q?giWhCTo3i00eq+flaiHs0FCBbguTQ1TSiXgthi/aB5N5S9aTfR/RsCcOEx2Y?=
 =?us-ascii?Q?5o8Ahv7dZtMOiO8yG4ncvS0yuEpea3jp3VFAwRZH/5BBe9zX03bmwpo+3zlX?=
 =?us-ascii?Q?2FSZTdwFVBPzpqdtaa2W3uoN5Qr3DahrdeTr01r/PjPQ0F6YDduT+11tpg2A?=
 =?us-ascii?Q?ziFJ5gT42zMe2HCku+dE1AQ0fpcrlyEYwUXXSC379wptfk2z1yvAjeVkW5C6?=
 =?us-ascii?Q?VxphAMDgca0qjBahFOw7DInwbY84cOROWMF4l/pLrxXllbb/qe5BtYFVU7hM?=
 =?us-ascii?Q?QeM5VtFpdJFuoD9J5WbteJLFfcpWqSLWTpZOlpa694CZNOko5qEzHJk7PSOB?=
 =?us-ascii?Q?+mtdidcOiFZJL2qI4aDJf08/+nCgnlLMQs2Pq2sw7sw99XI9lwOl7ZOFyk5f?=
 =?us-ascii?Q?Pczu9/o7n6FKnzIlKpy3vZNHaCHoLgBiNDj0knWoUXeeEAKJAsm8kXshUcdi?=
 =?us-ascii?Q?bd+Tl+662iYv6jPcIeIYVD3mNNDbL8U5sKtGT+8DKkkZDOhEHhOy+0hdbGBJ?=
 =?us-ascii?Q?WXiBlPB9Me2Z5z3+0kWi0leBzrgbj+ksZah9C9c9?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc2125e1-8bf9-4e61-6e4d-08db7d367241
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2023 09:01:40.3773
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fOvh/oRfKG2eEjypqLCJATSAqsFpGx8OT50gksQCONCwviNgv0g0nT+PZoS7OHDsvEpZd8L3LF0exef69dVfeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_020151_557899_8FD23690 
X-CRM114-Status: UNSURE (   8.45  )
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

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index 55b7bdfc10d3..67f4c6f8ff91 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -339,22 +339,15 @@ static int r8a779f0_eth_serdes_probe(struct platform_device *pdev)
 {
 	struct r8a779f0_eth_serdes_drv_data *dd;
 	struct phy_provider *provider;
-	struct resource *res;
 	int i;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		dev_err(&pdev->dev, "invalid resource\n");
-		return -EINVAL;
-	}
-
 	dd = devm_kzalloc(&pdev->dev, sizeof(*dd), GFP_KERNEL);
 	if (!dd)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, dd);
 	dd->pdev = pdev;
-	dd->addr = devm_ioremap_resource(&pdev->dev, res);
+	dd->addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(dd->addr))
 		return PTR_ERR(dd->addr);
 
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
