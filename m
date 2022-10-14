Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A36DBC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 09:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIat+l59NnHZSJhYZrx9kMn6h7/m2DxfPitsO7FJb7g=; b=w7EY7MoD8Ar5vs
	Wj0MA2YDu8995shFb1RPmkV3xhJNuvEgJ+C6M8yidQf2C0cAEw6FuS18CbfZgbikSnDSb4FNA5IxM
	kFRloJE80rM7l9CFjjohiUezSdiSFIi3+Wz5CRsxLn7i7qCjoE/eGXkUpayGP0whtRiEn97qwz+ub
	Y6bAxfILPDvPZF4Ps+4v9OYxpUF7UUggSbXLH/Mbc3eqDU6dpk4JZG+43e/qwULQs4g30OFUimRy0
	+G26j8KGwJeomn26WCbQI0CwG/mkuR4uJnHVdAVEVdqk7SWwnGuzeJlbobIgl4Bzfz5cAZQUCvn8P
	61oAwStSWRB/twghiSrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojHP8-00EKxd-PE; Fri, 14 Oct 2022 09:54:58 +0000
Received: from mail-vi1eur05on2057.outbound.protection.outlook.com ([40.107.21.57] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojHOe-00EKnU-LH; Fri, 14 Oct 2022 09:54:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CAexdU24Ew+wS5AanXCdf70Pt4R+GcBsYagl4CEQ4YhFjpO4c+BYtoneaXgN7QD80TJJ1dEu101JQaKTzZfdbOGdNN+YpiG6yL9NFpXRL2+8xF0YArTgVOP2OrDCQbgjAUBa7YnxuzCBRfiDT+U1wLwoSs52Ckcb9L41fHjGgFscMNMEk+hPe3pJ4h4FlywXFqNd4A+Ty69oU4T4mEsztJ0NEH/sAKj5bvmF4GGRXhrkgNs7APxh+AQ+OmVKXT9JYAJ91lxxyaGZV42LfKCOWyg+YI4+uzVQByx0hiv2CUtz1FUEGl+TsvV3Th3BnSQUoDDe/vY4U+3i4kyxRrXNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LIbQPGgXlN7KVDuEao8GqUcJtwjyrr7E4PnwAa3AXb8=;
 b=EPAzqaEFYnQg9G4owGXfFCW4zqqF729m+q0hZpiGdVSs4dX42Og8+Mq2v2ZBynf0ChgFujJgfCvVEqph2PPBY9dmegU3A4JWWW/U6S36IUysAkPOxuew+nkZUP2/2fEx2Onj9QVdamOjkj4vsG1Ymxq0upsg7UmFMRG7tsgCkAJeFzFJxf4JhW6TUo4KpBM+uDU8LfOOL0pv9peZmWH0S2H98Gh2kyd3FYkpCGhc0vm63na5nK2DdZ+97AOfOQSLiuEPRd4M2V9CRPR7+jERx+K9bGUSdU3k+t7ndp8fWkzgCv/TPt/d9RRHzK9kBh7owUOqxxZFmBg0tcn6nKFdfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LIbQPGgXlN7KVDuEao8GqUcJtwjyrr7E4PnwAa3AXb8=;
 b=hnqY1yI0/xJNUBvOcU1DZuLyLjCA48IGRuqfVmKt1oci/yV3IKBddqGx2mBRiCGIMLLCvtadsKTVPUQi5RfsKOuOru0nJeCoHdg3JGE1cJ3cKRX79N7jQQ3xZTHD5gy9idjpT18RSVieaGZTaEKzFBT8GbIZUuPlII5tC44zLhw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AM0PR04MB7074.eurprd04.prod.outlook.com (2603:10a6:208:196::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Fri, 14 Oct
 2022 09:54:23 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::ba6:d7ae:a7c9:7a3a]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::ba6:d7ae:a7c9:7a3a%4]) with mapi id 15.20.5676.028; Fri, 14 Oct 2022
 09:54:22 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	xu.yang_2@nxp.com,
	kishon@ti.com,
	vkoul@kernel.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	jun.li@nxp.com,
	linux-phy@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: [PATCH] dt-bindings: phy: imx8mq-usb: add power-domains property
Date: Fri, 14 Oct 2022 17:55:50 +0800
Message-Id: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
X-Mailer: git-send-email 2.37.1
X-ClientProxiedBy: SI2PR01CA0037.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::9) To DU0PR04MB9417.eurprd04.prod.outlook.com
 (2603:10a6:10:358::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9417:EE_|AM0PR04MB7074:EE_
X-MS-Office365-Filtering-Correlation-Id: bbb3893b-edd3-4d36-2090-08daadca11d0
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ptC9y2JAt8WQJk1nvlEBq/wvy3n1NKTS0bvR7HS5kDFKDtQrnp48mV2wG2TUfXxaQlUk29n7U49s5HO7siBpVh/QlDKPLL/8i9nO63X0jaKXrzN5DaAZRcka/PmjQ7TRnUZKMs35+aHrxPIrUC6uHmHFAthNf6nR29wb3+AjymTBRC9uHhR4i5rm+YbyO+73sIwJkw8G0cdZhyGkRGSO51/GCxKBxhCrfU9YrgO6IpvynvbYfEsvb9ZBSdkHJVEVpsCZzV5sGMrzG83Ql0rQyoNmIExyRVYVAHt6rXMr2bHP6N1mYm8u2bfZRTcyye8NaeRNGC2H2qoNJ6soItMEWDviZsQ0MySai69xq1KQBK0bZPT3F0kbR2VTM1MErCySQNx+MKq4CAMCfXTwYL6B87ldBdH9qrfbsVFxiFMcR2dteCF9ffng+7XGDpIdXg5hmx54LGXV1oj62JzHTTv0VbyWxNZ/3aPDNyJRi5CjVCD9EbudreM3cU4WBaxuNubCcdcCTzkeeUrlNxr6fjL46wZvkQUin/njm66NfjhDQCvKtoK9Obo8oiv9lXWLoNuN+W24ntO8LqVSU6OrDMlNxCCrZTN60vfZMZki/4SPa2i9+iTtwBXMv9huzpgtYM1/MLM84F7X1XGDawkXa/roEsnYwTAh5mtgbNNvrnDQaX8X6SPxYtkBkcz8S0QfqeHJhuwi/MGVJqW9Gs8b4Thf+3RlU9Z5EaSytgptAPDXC3gyuwDkRTcToYyuJN09RrgkSWXAyARiHL0CQs5k7Zy87cypYlsDP6qfBXmTYx01p+U=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(451199015)(478600001)(38350700002)(4744005)(1076003)(186003)(6486002)(7416002)(38100700002)(5660300002)(8936002)(316002)(26005)(2906002)(2616005)(6512007)(52116002)(66556008)(6666004)(4326008)(6506007)(66946007)(8676002)(86362001)(66476007)(41300700001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?/jaa3MKsM6yjtoCiDIR9e7pzvj4qPMqVKo/YkarwbCnvo16BtQ87HHr6MOoo?=
 =?us-ascii?Q?Zc4BqN526jIruj8CnuoNzEE//JohzU4Kf6d/GvQuOxV74F0Re7jXbl0y+mRw?=
 =?us-ascii?Q?x10Y2x8TyHCgA0PdwYCFdn2Rl18LdfnBJ9NadLk9yJLJN2PE6ptU/yUNfacQ?=
 =?us-ascii?Q?oEAZwClZiEcRZDq49fMrVv60IjD7mbFElRvkP3egSmRH4Fqfb9Rf1TYJtH5g?=
 =?us-ascii?Q?otLkaM+2Lte52Tyyd909hG/sgv15j2kpoWbgjHxoQBrJyU+uKJMCnHVPj2qo?=
 =?us-ascii?Q?t8/sXIDNH8+kFaaSAaDZlSk78z2hbsjUmXxwlPpoZJEs6cjw+x+l9OBoFbSJ?=
 =?us-ascii?Q?Zc7A91WYLn0a3jrOBMWOZH7gi6bpbBjdIHs5hYjImZWjvPhx3Pc4sjx3IWqd?=
 =?us-ascii?Q?JakbrSYrm1rN4qO2pY2kv+IQK+0QlTrLT2S4BZiwlVjW7aBtPRpEm/GwlU0D?=
 =?us-ascii?Q?aI+WuPrxhYxO5ud0lCMqjqZJyYSJB6uDOxIjIkgfm/BnG6J2OfKy4rFTklr/?=
 =?us-ascii?Q?xCopzgFshxIc1RwHDJlI5GO4p7+5iquR+ooR/VvP9qtuMhDdK9XdzcvxECHQ?=
 =?us-ascii?Q?AZJ6AN1p2xn9kQSUkohKzmg1gs/Z+BphvZfLSwfuq3+GNt+UBmowLeYg7uTN?=
 =?us-ascii?Q?Wh4ECX7RRIB1sSzRLPZEs7Azo7NVd5UmT2ZE5tg9966l4JlLNUBaqFESmLR3?=
 =?us-ascii?Q?ggWG536SyHDNBVg5VX5plygd1Tq1SL0PmcCv6s3CNTBNSWQJ5XL6eDTVg/6t?=
 =?us-ascii?Q?YjA7yHrAt4qm/y9fmAuz5J3rJVmci5WlkphkDy6FEdmG6KeJPoV0FgfFpI2L?=
 =?us-ascii?Q?wO/7pQyee9P2hu2IjoWtBqc1a/uxDn+5qXeW+dxTgUdJTv569pV/HIbMG95w?=
 =?us-ascii?Q?aD94CaEno94ZmrUwaN7rvUcHaE6iVdosaHzrteWsTE2xrjlUKOaJGEWINTZf?=
 =?us-ascii?Q?iJlZPCn+2X18u78V7m7W6dIGL/G8AYLBU03fSuZSGg499Y0SCojWGxTH5SJf?=
 =?us-ascii?Q?MDIDjDRKOgYALPLmvxwTytUH78ymlARkFWtPQ18ehQdxq5V+bDJlSVf+ORT8?=
 =?us-ascii?Q?E9ofvY2VQnoIDJ8tb/TITNeWht3lhcY2yU1ATKXMPNG++UbkJYjNRp6RH4vP?=
 =?us-ascii?Q?xuvUb2eivujz+kxrKYt2tjbtFVPQNGJrlMiPpvqD2+TCz/iXK/8EQV+tFIN2?=
 =?us-ascii?Q?3ZtXiSG4WdnzHi15gGQqyqdatuR6MVGpERcS2QEj1Pyq2chgo/w7VHkRQHKL?=
 =?us-ascii?Q?ApuvN5BmFTSXdFRNcgIkLlcMY+uK5c3vRO+gEA7V1dwhhyWnvya4vCx7w/U8?=
 =?us-ascii?Q?9ZEqzcNCodoOQ/PO8ORnqHDWqZXBG2xfgp9XbPEVuZwOL9IBcC+/1nlV0Op+?=
 =?us-ascii?Q?e7c00yQkBVx1f4imlWQd1i69QlDtk1NVDtOaBUr32fBtMdqOC7rWC73k3oO7?=
 =?us-ascii?Q?5ZsbTwzZlLJXwh6R6Gjg/cylHse+bdF8DW/pEzY06uV4GB3eQTLvjwj0xrJg?=
 =?us-ascii?Q?d5Ww9lHpUZEkRn60EPHh7ogNMJxD2sKu7HO93hRLiFe+42SbEZicP175aOi5?=
 =?us-ascii?Q?Kjc7zqZIVBeGFX2YbRYQJzUWkE7x94ohKJRxzcB4?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbb3893b-edd3-4d36-2090-08daadca11d0
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 09:54:22.3947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TwbX+MTBHzE9g7jsmQmK+CmLjwlBuQbWYpgZiWXQ9x5ivaxlh64fvLPYufb9UW6K7VP9xKk/0phrAXRPpomUug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_025428_755762_CF867676 
X-CRM114-Status: UNSURE (   6.15  )
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

From: Peng Fan <peng.fan@nxp.com>

Add optional power-domains property for usb phy.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 2936f3510a6a..5ba9570ad7bf 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -28,6 +28,9 @@ properties:
     items:
       - const: phy
 
+  power-domains:
+    maxItems: 1
+
   vbus-supply:
     description:
       A phandle to the regulator for USB VBUS.
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
