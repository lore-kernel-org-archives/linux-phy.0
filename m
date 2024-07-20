Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67347C3DA49
	for <linux-phy@archiver.kernel.org>; Sat, 20 Jul 2024 14:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mNQcOeg1aBnMsb6ivas/ybmy5Ph7RRqTUrcW2ysBqls=; b=HmsM7HhZ34Jy4HOCG5UbrMJShX
	KxRUfTB/aoOjn9YkAMPjdo+oePLHafoOUT3x1/iTiO226B39g3PfBrcCz+aQkPJ/N8GRRBTQflsom
	LBQyG+skNvjqyGREpzQ9f771au+ZZaPLZYSimBK5J71eiZmH+ABIly7IW0p9PJ8ai6hbAW4lMZiXF
	wgCyT4b7kOD8fOiRo6m7Z9Po9mmxEjw4C4ZEQcPfq8AfOJjMFJsNutfj2kzypKQa2/g2tLR/p3hXa
	Vs3AY5V+TpTpPSXdfRKh1kcH5KUeMAkyrWiWcpu7gwddyQ0rn5n5Yt4ON/f0FUISu4E490KDp89Os
	4FdPZV8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVAxM-00000005EFP-0ME4;
	Sat, 20 Jul 2024 14:21:04 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVAw1-00000005Dm3-1CiI;
	Sat, 20 Jul 2024 14:19:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N4RvzW/ucw8zeQBnH8WupgjZtmz3K2nscZBDFDlOCEjPPtQFleXxzqscnDRq/X+jPAAv2/dK3EGOUtDr/Fq6yjWn/2U5y0Em0wUXwnQ/ePS6QsezWHqGB76sh5Yv1UxmmLZHh0s7EBd/cNqPujgV5N08qrJUGRP6LpT9+YhQOsG5IjDQlh8W93KOHiRniXnjx0A35xWEXVrqU6N/DS0A9fEmB41tQlL/PCL4sm3qlahc8ncF/v2pYcNd0IPdVOW1ohDVVNt8WTXE2/BgZLWa2DknKrRkKHY4tyYA7VdaLzHzLzOo0DgEiQE++BESVXB73N8nyDR6T9b2jhBHBYkb2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I6Hg8WBP57DRyJVp1BvPBKzTrjFGhBPj6kRTLtOW2vE=;
 b=oFpc8om4dNYLsvzDCG/xLnTuuvasukzj4sQyqgI7CtBRUPR0SPqCaz1alCsowzyf1EoRpjz2jEZ0wFbipfKfxNG0QTiPBOce7LuA2QaImYeYVd2SXPVV1fih3/0xiHeTGmxVipCaz9ge7S7PB8DZun92qCs73O5mojriT7qHog4dZNK5bImoJxPLSDFG/FYWB8Fb+uyBJsxmevqnkRSowYURwRSJfW/2cx7u05qhVYOLWYwPPLAiVAjS9Za3MIEeB4IP+VX7QIdaN+GpQZB6TSMsJasmQk25QLh40SWFI5m+TeH+0nIhUQK8ngYCUfnYNRur72Q8wHz4T9XAmCaBQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I6Hg8WBP57DRyJVp1BvPBKzTrjFGhBPj6kRTLtOW2vE=;
 b=mkf26Y1zdn6ShfOO77NUKiZCLP5w9m5z/vWIolEX+ofvzYuFywB1DQdTkzgd+KtXfQgzlMoeDH5/WLsrdsOYk5ApSOBy8cHF2qEBSGxd15JKSkR4pdBa64QZiIWd5X4Rg1CvDWFo3hb0wmqtB/47tLaYYEF/IoFsO9CJxrdlmgE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by VI0PR04MB10299.eurprd04.prod.outlook.com (2603:10a6:800:238::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Sat, 20 Jul
 2024 14:19:28 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Sat, 20 Jul 2024
 14:19:28 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Sat, 20 Jul 2024 16:19:19 +0200
Subject: [PATCH RFC v3 2/6] arm: dts: marvell: armada-388-clearfog-base:
 add rfkill for m.2
Message-Id: <20240720-a38x-utmi-phy-v3-2-4c16f9abdbdc@solid-run.com>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
In-Reply-To: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Konstantin Porotchkin <kostap@marvell.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: FR3P281CA0190.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::8) To AM9PR04MB7586.eurprd04.prod.outlook.com
 (2603:10a6:20b:2d5::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB7586:EE_|VI0PR04MB10299:EE_
X-MS-Office365-Filtering-Correlation-Id: 311e237d-e47f-422d-74dd-08dca8c6f719
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|376014|52116014|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEkyaWxxay9xZlFXUSs0eHNhc2NVdDB2M1kvMXdtUitoK0RVeWlvdjlpdk5G?=
 =?utf-8?B?Z2xPZHJ1eThmYU8xd0JGWm5wbElpc3NhcHBQNW44SlhOWEtiTW5VS1N3b0xS?=
 =?utf-8?B?UEU4VFhzdThYL1pka3M4RXlqQXVKWHhYaHB5WEljbWVrbXBqNmd4Um4rZ0I4?=
 =?utf-8?B?c0ZkRktNWkZUMkwvQ2xObW51NlA2NVEzZWdZNGxMM0tOOVdJMEZSd05NQk5K?=
 =?utf-8?B?dllUdElYUG8wMWt1L2pUQ2FrQTI4QURnNDI1Um14ekp2KzlORkVMdEVuK0o2?=
 =?utf-8?B?SG14bk9LemJwTU9NdlI1VVN6SGVGdXAyc2xlVElWcjJQbE45Smcvbm5uRUE3?=
 =?utf-8?B?NjJzeXYyMDBtdnpET3c2aFh4ZjhiOE5zeEUyeW9oM0IzQ3BoYTdJS0RLV3lE?=
 =?utf-8?B?cUxUNFFwNENwR2p0NUNVZVBrYWhRK3haY1ZVaHVSaHNLVHFwRHVyanpWWU5q?=
 =?utf-8?B?WXZOWGVXZ0x0UlMyMHRkTmZNSlBqTVkycHJ3bEhVUlUxcFRFSUxkWkNhSGsw?=
 =?utf-8?B?SktwNTJYcWhXa09DQ2ZZS3NOL2lyZEZ6bkk0ZlRRMkNsV1JRMjZVdFNZd1U3?=
 =?utf-8?B?QzVaSjk0L0lBNkROc1diYndTRjFJRWVIaUpGRzdzOUYvODRteWRBaWhHWTk1?=
 =?utf-8?B?YlduMEN6STNoWUpjVXB4c2dyUXhVVTRlN1cvWEY3VWIycDFpMzA2YkJQZmZ0?=
 =?utf-8?B?bXlVRGRvMi9wSHdlWFQ2L3AvREFBN1ZVVnQ0T3h2L1BnbW1RRGo3ZUFGa29Z?=
 =?utf-8?B?cmJYUmwyZGRZcVJlT2ZQWnF6djhVUE5YRnZvaWJGVU5MREcwMGI3YU9hL0lE?=
 =?utf-8?B?ZnZvTDBrK0dURFpsQkZDSi9yWnFHZXM5VnBzVCtXeTZEejJrOFpmY29uL09I?=
 =?utf-8?B?WkhDSTRXSUdqR0h3Zm9WcUVuQjVjZTIvek1UUnFPSEFIT0thay9UM25XSHlL?=
 =?utf-8?B?ZjFIY2JNNldodnZwdktBN1YzVGxza0RGb3ZkTWlVMWI2SXhvRmhSbDltTjRq?=
 =?utf-8?B?ZnRuSGpQb09oOWM5ZUlUK3lkN1JiNjRuQzA5YStRYU1CZ3pKV2c2dWxtZGRE?=
 =?utf-8?B?LzJqaGNVY2IzdVJ3TWZsOW9OeXNDdEI4eGtXcWlRVFN0eHFJekdoOWRCUGl0?=
 =?utf-8?B?NXhOWEhGdjFxZEp3ZXRYVXVUYTB3bDI3eHJYZ0NpTjRDSmJjK040M3hZMjlT?=
 =?utf-8?B?WUVCUys0akFHelQvcENEV2JVUTh0THhod1VNRHhyWG15Z29NdU92ME1IZGcz?=
 =?utf-8?B?bnJ0cTJnUlZnbkJLT1JIM3paeUFVb095OXlqSWVHTTlETVZRMXlYdzFqSEhn?=
 =?utf-8?B?aGVrR1pSam1TSWhwQVd0aGhRTDc3ZUFWV2R4UTBJL0JwZ3NEcThCWUNnTE9h?=
 =?utf-8?B?WGVuL3dGM3BwcGF6WUNidzdXbkxjZ0x5a1NDOE15N2p5TVREd2tMUE5pV3pj?=
 =?utf-8?B?K1M2VlBiNytZamIvOUtrbnk5MjRXUHlSMmVxKzFIYytOaU9lRTJSYWd5Si9T?=
 =?utf-8?B?SXBSalhhM0t0M1hhSXAwTm9XTHdSd05hWmlnd05ieGV3VC9lcTBoZDd5T2Vw?=
 =?utf-8?B?Zy80TG5iUThlNElDaE9MVXpsWXYxdFRnaklKL1h4NXZHOGVFQnJSM1ZId0d0?=
 =?utf-8?B?a0ZjSU5Kc1N1YUp2YVNvYmIxR3JKMGhjNlJWdy9WdEd2MHN1SU01bVd4aXc5?=
 =?utf-8?B?Nk9xNmhqSUlKcUxtWnBabzlkZ0tlZzAzUlVOL215NDRZMm5jTy82cVhMYmdh?=
 =?utf-8?B?ellXR2dEZ2Urc3JTRnIyclhNSTFiMkJWYkpKckFNSUxCNXJzQjIyQ1BGNG5Y?=
 =?utf-8?B?b2dvV0g3NWF2R3gwams2NVdmdWRCejRTbVJ2NFJBUnQ4Ny93dUdqaVhmcmtq?=
 =?utf-8?B?My9XbVQ5NW1MVW9mT1podUppVkNZdTB6bjhEMitRSVFmQ2pnMjN2bmhqVm9L?=
 =?utf-8?Q?NdtP36HPbYI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(52116014)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0NsUk1wa3oxSWthN0pXMVNpTkJsU0hSbGVhc0tTT3VhaUpLRGZVT0RLL2ZG?=
 =?utf-8?B?ZjhEc25mRmZrWnNwS2JCSTNIMUdoeWZCSzZ0UnQ3VEJhNjdTRmFOYmZaUE5W?=
 =?utf-8?B?dGVqSDU2U3ZiSjM4d3AzTngrT2FwQjdjQUYxWDVEMm1DY1RuZ24wc1pPaDlp?=
 =?utf-8?B?Mk5xVnc3MnA5UFIzL2c4UE9ZaVRSVG5LemJKOUJ1WHB3TTZ1ZzROQW5KNzNa?=
 =?utf-8?B?WjcyV09lN09DbmJKU01WM1NFWnNKNTJKVUgvRk14d2dzNEVFYTdQV3NiK2pn?=
 =?utf-8?B?bVdCN0UrU0VBNmhCVVJOR1ZncDdhelVMY0tLVWJNN2NjTm1RTzltbC9SSFJL?=
 =?utf-8?B?enZSNHBNUjJqRTlkV2Q2RlJQcjZwRTduNXlRNWJ5ZkNGNHBHVXo5Y212V2hm?=
 =?utf-8?B?MXNoN3RpMVllMWtYN01zQWFrYk5zenp2YWM3OFlCLzMwSS85K3hJMVlXa2J5?=
 =?utf-8?B?dDVkUTl6Qi9RV29KU0hJblRHd21NK0NzWldMdGhqajRKdDF5dVVDeTF4QVJy?=
 =?utf-8?B?ZEkvbHdXZXozTnM2MTFpV3dKbUxESVRDeDRGZjB2WWNRTWtBN2ZMbHpzcUdR?=
 =?utf-8?B?T1B4TjBkZk1sc0RpY2ZnK3QxQ3NYVzFvOTc3OVFjdXZVbno4NGJucWpOVWF4?=
 =?utf-8?B?MFl4aWo3cGM2dno1RVNEVWd4Q0o5VlVRbjBTd3ZDcU9lemQxMzBjc205SE5j?=
 =?utf-8?B?UkpuUE04S082dk96NzE3OUplZmdIOWFnYW95MWNDYVQyRjdjdHp6SnFrUDQv?=
 =?utf-8?B?U0JScUV6OFQzVU82b0RIOUVwMmlsYkJaeUo0ZjVYVkpGNjZwWXpudUZpZGx4?=
 =?utf-8?B?bG1NK1JpUXhBSTFQc0czQXRKRkFVcXFXaFA3TXpKdUtxS1htcjE3WXBUTGtj?=
 =?utf-8?B?akRKSUs1M0N0Z0xQeDdEUUhMVlpISmM4U0VsRXp3WnE5MjVrV0NSNnExVnRr?=
 =?utf-8?B?TFJMbVRwZEljMDZ1Qi9iVVN5QjJMN1JoU0pkdTBSZkpmUHBEYkhFR1Z1YlN2?=
 =?utf-8?B?aWpzYkJlY3Q1V0VvN3RaZVZtWFM0d21MdkEwOENTUVZocnlPVzRvSjVYU3VU?=
 =?utf-8?B?dEI4OFc3Q1p2TFFyUXNSZUtsUXMzaUlzb1Zjb3o4MnorNEVoNjVBMmp6RlJT?=
 =?utf-8?B?T2tZZnl0NWlmNUp2Ky94Nmt3bElKR0M2eC9QRVA2dXpkaGJpZENHQ25LbEVt?=
 =?utf-8?B?TkVSa1FmZDhjUStmaEoyckducmxKYnQ4UDlkZmo3N3duMWpjUmUvU0tPTzdt?=
 =?utf-8?B?d3psSk5TeGxkQS9QWHNFV1pzem5hb1Y1QUFUTDhGSDJNOFZNZjlIWlprWFFy?=
 =?utf-8?B?WnBMc2duWWVLR1BBbWZrWUg0c29EWUZnK2RsTzFMSnNqZzZCZ1dsSXdUM25q?=
 =?utf-8?B?VVdna2xJTkZ1K3pRdi9SejduNmNyKzhvcWpNbWlVSFUxNEk5QjFTWmJ3UE5S?=
 =?utf-8?B?ZkE3cFBtbGQ1MXZxZlhLMUphRzE4b2psNElMYTZwYTQ4M2g4VVQ1UlR4S3da?=
 =?utf-8?B?M3NuaGZUeVUxWktUbWxyUkk2c3RBVm9KT0JKNkMzdFZ3d1RjdUxVYktjMDN5?=
 =?utf-8?B?SEhiNTNOVnNGeGxWZHNVZUErNVdHdVZIUlpvRnZ4SmhrL0NXcFJCbEovNytB?=
 =?utf-8?B?T285NDFWZEhlR1g4M1R5ZG43T3pxaiswVHBtbnpKdklrME50UmpXR21ROEVW?=
 =?utf-8?B?VlhYcHRDY01tVVFYWExWN1hpUktyNmRmSzhGQlY5MWk1YVBJTUdFRDRPR2d5?=
 =?utf-8?B?KytLVFhDWkxlRlBUR1Q5Y2NYMGExTGxWMUgxRGRnWUhDWjYreTRGN0FiaTFx?=
 =?utf-8?B?azMrUWhVdDdrZ2ZVUGwzd2IyUU9wVXg5cTU1eTFQRVhkaFlZdlJEdGZrWG04?=
 =?utf-8?B?UEtFNnpGMFhNNU5LQzg1UDBPKzc2cjdBR00zYk5zU3ZrV3psRFJnTUlCWUlF?=
 =?utf-8?B?eTlOVi8vL2FVREtTY281dytKQnFCWnVRdW96WDErWkdTR2FwWk9lOUNlSnl2?=
 =?utf-8?B?RUpRN1FSMk1GekJNL3NQWHV1TCtlTGZiV1I2Wkg2OUV2dWpmS29QWXFwbjh0?=
 =?utf-8?B?bzBveTZiWnhOR0szYU9qTUhnR0F2VGlxdGwvYnRDK1F4V1ZiRk5DSDZMTmg0?=
 =?utf-8?Q?tsYbuy1lv6Fd6sQLQkEgtPsZO?=
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 311e237d-e47f-422d-74dd-08dca8c6f719
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2024 14:19:28.3106
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fr1As5pYzMQXlQRyeryaFcd5Bz/TMXHpX4W3x7iLCNLiRW4cybmlmjL3oXUhKfBb47p0rUT5FKTI7zUkrgioCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10299
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_071941_487480_7E337916 
X-CRM114-Status: UNSURE (   8.34  )
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

Armada 388 Clearfog Base has a USB-3.0 / SATA capable m.2 connector,
with various pins controlled by the host:

- FULL_CARD_POWER_OFF#: When low, M.2 LTE modules are switched off.
  Many modules include pull-down, thus it must be driven high actively.
- RESET#: Puts modules into reset when low. Modules are expected to
  include pull-up.
- GNSS_DISABLE#
- W_DISABLE#

Add rfkill devices for gnss and wwan.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts b/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
index 03153186c7bb..308ad9d1c70f 100644
--- a/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
@@ -27,6 +27,23 @@ button-0 {
 			linux,code = <BTN_0>;
 		};
 	};
+
+	rfkill-m2-gnss {
+		compatible = "rfkill-gpio";
+		label = "m.2 GNSS";
+		radio-type = "gps";
+		/* rfkill-gpio inverts internally */
+		shutdown-gpios = <&expander0 9 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* M.2 is B-keyed, so w-disable is for WWAN */
+	rfkill-m2-wwan {
+		compatible = "rfkill-gpio";
+		label = "m.2 WWAN";
+		radio-type = "wwan";
+		/* rfkill-gpio inverts internally */
+		shutdown-gpios = <&expander0 8 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 &eth1 {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
