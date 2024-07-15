Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111CEC3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 17:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BvT1h4f+wQZikhBkM0L6gc/Ft/rC1ZbGIigXFfOszuQ=; b=Ep8vTDicscHx1r/OWdn6J47xPC
	nT7aOdXipKuGYSdbG273DKJ43dXdKKh2nWuiQr2jVf3Kner34CShz1eGB4gt0Hkz5sjPVI+DxvWmr
	Nd7qX12A1UxzruyO6TKd26lNF1bRcHCc0PdaioDn9K+X4prKh9EjxKblrsWv3RR4jRD7BG7ro/Drk
	V1QS8kXSNPggWWflmSfQclifTmkgzVpMVf0jcfkxj7B/dqluBJGESXJ3drkH+RKu9jebh3Z4a6Hjj
	ykZi+oqMWSVfQBRSkr6uYWX1y8nCSYJVn3kQ4YudQXjnGT1aM1aZUVCDL/bXRUQtPAXJ54P7+7Z/d
	RfJc9xTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTPoW-00000007vCz-2qQx;
	Mon, 15 Jul 2024 17:48:40 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTPnh-00000007ute-37bv;
	Mon, 15 Jul 2024 17:47:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qRoziaaXzzaT08ZB1EAphlDie9oVjdkDfOI1uY7qv4tmKYyQuFczu5uPhjxsLvPpHk/WIsoRL90/E0gVvM7p8sEJgZD+nXKVakxPbs/2z1ABUA9/GsCTX++NX2kgx/pKPTgcgwydRONpt1BmvU6CVlyDTKYsPnqM6pRnjN5RbIkKqdlhwFDQ3ATFiZOGCcYYBkZGgTJAnU/01roVRPrLMCYWKUt8UmemypzZnHqDgr3vhuzL9D+M0nOBGPeBuT9PAIS55yhtzBsiDq/h9HkOtGtq0Y5cIvAIeHgw7B6QRzxC8F2bGX5MOlyPf//I7ptNt1xQTP64b37Iov6Cx//0Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Oi3RouF20WfVOBahTNcNxtEwDcyD1SPtjLvRWqqGUE=;
 b=UhZoxu7vd7hk4zO9FYQmBkxOnd2aQ9ImE7VvnEFEKb8PdSIsDgM4qlDYyEYn2dvdwL8qM/4PZReSrxsN1WMgBG9s3ix5wDxbf4W1bzuqgxx8TiHTQGSkKB17/k1IZjjFwZehtMi9ulNgEmElj7G/okgVuyb0aDm/S1PkIiP3nW+yd4X3AxiAnG4+eUouL9eaOqdohzX965W5d04vhwZi4Z6qcp/dDYQRhQgk8w5VTjk4ZWWoccr0n/jtQTnoIwujbc8lqVfobUuOUKtxZe1lysDaONKhDYdOYMuXlUyBDS6ATgoxiLjQfnxMJot4SSL7TbfJ1DwqIPyo9D6UbGhVoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Oi3RouF20WfVOBahTNcNxtEwDcyD1SPtjLvRWqqGUE=;
 b=qx9b7V5kjK4w1lZM2MBhz44XLrA9xwwqhX5GZX/SkaP95HLHSaK2QAxXsV4C8j2YvjODewT1GIT1PKK8qF/TaD/FGXDCDxyJacMDLXIc3+Y6MurDLMpZkyzHjGfiBta2zHuyss6dD0ASi+HyY1wDtj0AnKEy7zX3EfxfgSoNPyk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by PA4PR04MB9271.eurprd04.prod.outlook.com (2603:10a6:102:2a6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Mon, 15 Jul
 2024 17:47:37 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Mon, 15 Jul 2024
 17:47:37 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Mon, 15 Jul 2024 19:47:30 +0200
Subject: [PATCH RFC 2/2] arm: dts: marvell: armada-38x: add description for
 usb phys
Message-Id: <20240715-a38x-utmi-phy-v1-2-d57250f53cf2@solid-run.com>
References: <20240715-a38x-utmi-phy-v1-0-d57250f53cf2@solid-run.com>
In-Reply-To: <20240715-a38x-utmi-phy-v1-0-d57250f53cf2@solid-run.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: FR0P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::13) To AM9PR04MB7586.eurprd04.prod.outlook.com
 (2603:10a6:20b:2d5::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB7586:EE_|PA4PR04MB9271:EE_
X-MS-Office365-Filtering-Correlation-Id: 34b326a1-fa00-4479-2047-08dca4f636a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|1800799024|7416014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTFGWC8rVGVWeUluT3lOaTZadkw0YjZYWEwzdDlkVTlvMHFuMlY5dzd3aXlJ?=
 =?utf-8?B?ekE5VkRwOFUrQmRybUcvbWtiVys2QjVSSTJtWC9tMFpnWjVmVFlYc2Z2TWlI?=
 =?utf-8?B?SGNxR2t1aWNjZngwTHhrMFJPUkpQcVgzVkNNZWdwMU9uam1YUWVmU2NHT28r?=
 =?utf-8?B?Z2ZMMUJvRE5oeXZJcEZjNGxmNm04OGZYUjBOd1l3Qy9Gdlg2NFZvOUVzSE1D?=
 =?utf-8?B?STBaSTNCK2RvemtmQytnTkVaWmE3dlpnS3VyMkRsbHdOSXhrblUvS3FSVHZE?=
 =?utf-8?B?NVBySUxHbmVVVmJNcjdzQzVRUmRWSUJqeUVjUHNGN28zdnVZOVBsT052cmdV?=
 =?utf-8?B?cEUwNnZKMStNL3ZzYWw0TEJUTTFaMnY4VStJdDE3WHdjdWdiNlBsZ0RBUlAx?=
 =?utf-8?B?YUtMYjhRa29KbUZuQy9sVStkZHlDaS85ODViTWFERTBEb3FIeXVYK3FCRDQ5?=
 =?utf-8?B?WXN5RmZXcHJGMzBwbTBYMms4cVBEaXA5WTh3dm1zMmI1ZEdqSUJGRzRub1cv?=
 =?utf-8?B?cVdnY3lxaERLbm1FandkTytITUoyQ2hNamRBWERKRGdnNjFzc2F2MU5sZk5N?=
 =?utf-8?B?dC9HT3AwanVUeUxKeGwzVGpKSGgvRXV1dzYybDlVNzVBcVZzRzdzYUF3WjNL?=
 =?utf-8?B?M1BwZURUaWZCdm0zdi9rNGhUck0vSVMxV1hZdXd0Smo1dW93L082SG1nNDAz?=
 =?utf-8?B?ZmdUMU9wY004M2ZpNmxNby93bFpYZWt0emhzWk5scjZ0WWVVQjJscjBobW9S?=
 =?utf-8?B?WVczcXQwQ21UUE5iQnlCV3JVT2lOcXBxUmRtV3hpWlJzanBxb2RJSXVQd2dG?=
 =?utf-8?B?ZURlcXhOUkFmWnljSVU3SXArOUd5MmVmQWhBU0VQOFpQT2Y2Wk8xUk91bDAv?=
 =?utf-8?B?UklyaE96UmFudEdpeVpxOStjbTJOL1pGeU9mclRGekRKT25VT3dTTEJWRHlj?=
 =?utf-8?B?ekw5RDNVQ3YzaklCUTVSRGYvOUlsZi9YU0kwdllTRVc2ZFp3NmJaUUJOVmto?=
 =?utf-8?B?MlVybE10OU5MMGpTSkY1eHJDOTQvb3gyRGxKQU92Uko5OWxnbURIWHFlNXk1?=
 =?utf-8?B?QTU3TFhKdmlPclZJOE5yeVdxSlB3UFNYa0lyWUY5dmx0OVp0ZE1BRC80NURZ?=
 =?utf-8?B?dDZNL0FERWp2Vnh4R1c1Y2xKMithWE81emNabUxwQ251VWRJTzA1b2lVWHd5?=
 =?utf-8?B?dkZaOHBqejNkbzZJdDNKNHczc1k4QWxIYzUyaHVVVnZVczZJelRKSnpRa25M?=
 =?utf-8?B?dTJQc2FVbVJCTjcrcFpRc2lUMHJKL01UZ3Nick1lek1PUXowRURLNXRIdjdZ?=
 =?utf-8?B?aHVQOFhDcTRjNlAzNEtwMGxJUmxwcG1tWUo2VzBGVFQxSU16Y0xRdjJlWjJQ?=
 =?utf-8?B?Ly9aSmorU2Z4M2JVRXhyNGs4TXA1MUQwT2NJMWg0UHZaM2k5akJwUnVPTFhj?=
 =?utf-8?B?K1ZvaXJuMlIyb2tXQTBRU3dPdWRlUy9PUUwyenIvSkdKMFdpT1JlZjlJR0h2?=
 =?utf-8?B?a1NlQVFVSzMxQUJ3T0MvTlo1MCtMeEZ6RENSU1lQTG1aTnkzbFVLVWR5anBt?=
 =?utf-8?B?Mmx1Uys5QWplelFUR01PT1g1WmZPaDkwejhBVkN5Y3BlY3d1b2xKOHcyQ0xN?=
 =?utf-8?B?NWdubXJuUXRVYVg1QnRBUytLV3VYNENIUUlXVDVtcmdFd0FEdWVsclJJK1dC?=
 =?utf-8?B?aHZNSFF3dElWT21maFl1blpWNDZaTGRXWVorQlp5cEN5Si9SUUVNeUhaZHF4?=
 =?utf-8?B?ZzR4UldVU3F0cXJRT1hrZjlsMUlvSGk0QjNPcFRlNEFkT0lzVXZRMk55SGMw?=
 =?utf-8?B?R3Y4cjlKZEFRUUlzOENUT1cveHIwL0MrRE5DZ0pVZDRPbXB2VmRIZWd0V2RQ?=
 =?utf-8?B?UGVqVWNWUlRLellQVXZ0QWZBWWdkL3BZYTFFa0tXdWJWQkE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(1800799024)(7416014)(376014)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTBYZDk1djlCYzk1ZVN6S0ZXR2lKa21adWpwU0FUeHd3d0tMejRZRjh5dlBW?=
 =?utf-8?B?LytLMW5TNjluUFpxMXkwbHM0OEJJcUZ0WVkvSGRURURIU1dwNXRVRzJxd1d5?=
 =?utf-8?B?QWtlQ201N3NxSjgreEZ3Z3lmNlNSU3BydnhnR0k4TUFXaGxSaDljU1EvbUlB?=
 =?utf-8?B?L1BYVjJGUzg3ODlXck9OQUN0Z21KTkZOYm1sa2g4bEdqRE9TcUhlZUFHK1M3?=
 =?utf-8?B?N3dDM3VoU3JpcWgzN3IwZnRndGwzTDVnMHhOSHZqM2lYUy9sYSs4M2tZeXlQ?=
 =?utf-8?B?c1dXczE1bXFXQjRSNzRFZEZhaVFyMXhnZ3RPSWZadEU3NjE0TFlBemNWYmY3?=
 =?utf-8?B?YlYxU0hxL1dxeUJBMFZBRFMvdmQ5RUNCZlY2U1VTOUwzRGd5UXUrL0N4SU05?=
 =?utf-8?B?NlF2eHoyZFJFT1BQSFlZSkFoaGdLbTNTSTQyZCszcFh0SXhBNWR3VVZGUTdq?=
 =?utf-8?B?VS9BRmRNMERuZGZaUWJXdHlES2VRWldWQTEyemsyTzBydG1ib1F3dGNnYWR0?=
 =?utf-8?B?azg5Zzd0dGlBbi84UFVZSFozSUtXNlU0T2c1eXJXM1NueDVYMk1Kem9xZnZy?=
 =?utf-8?B?OEg3ZUdTUDQrb1RKNDlSTVI3Qlk1akJsbDhScTRQaWc4MXVhZnVkSWVmR1gx?=
 =?utf-8?B?ZGVzSXh3S2RqR1MySmN4OSs1aGRvTXd0ZjBuVWplTEJJQm1WUU5qQ1hpdGQz?=
 =?utf-8?B?SG0zWFZWcW9JZmJidHpLamRZS2l3NmRGVWs3b0hwYjVxRHNJWlFkWXV3dmdU?=
 =?utf-8?B?MlFXNDRHcGFPYVQ4Ukk0MmtBY1NiS0NTbmRtVXJZSW1MaG9UUmo2TFlpMUhy?=
 =?utf-8?B?SmRCL3RRd1B5NUdPRGQ2TXBvWWxzOHBpOVAzaWNkMnQwbkdWY3M2SnVQMTFK?=
 =?utf-8?B?SHpIUG8zTXNBTDhteWltd0VVOGw0ZVNxd1dEUFNCTFJjSnI5aitBZmErcUFa?=
 =?utf-8?B?VG1XNndtQzBOS1ozbjRNbzBITUk5eWNCdXBjbHFFM2Qyc1lrTWJ0LzNQaGU4?=
 =?utf-8?B?U2tiMVBJUkxwMkU2WncvRUNocDFqTk1JR0g3VHFzTEFWaGFPRUJTZ2FkdTBs?=
 =?utf-8?B?RUhDSzZaNzZOTG9RMU4xb1BxSmdqbWVjRVI0U0ZJR0Q5RC9idlFFTTcyeFJG?=
 =?utf-8?B?U1NPelR6QUJsS1JaZnRtbVhndXVCUXc4SVdXNnBIRWVpdGtPR0VQRFVKK1V3?=
 =?utf-8?B?clUvWkM2cHNhWmZCa0d2cnBuSUhhU09EYzFSdkQxUW1NbndabE5CdmdneGN3?=
 =?utf-8?B?b00xZWtpVjN0bjJBUTZYbHB0eTByK3pJVVhrc2hFdTh0Vzg4a3pDYXJLNWZq?=
 =?utf-8?B?MXc0eHBxTUVaUjZweFpZU2RxUkFmR0tDS2psOTNNTytLRjkvN0xkdFphTkow?=
 =?utf-8?B?elF3NndSZXpOM1IzdzFDc3FqQ2xJUTQrWjJtcndUSkg4N2JxajJxUTVoZnpB?=
 =?utf-8?B?ekJWWkhwaitWS2dKQ3UwdEF1c3VaVGs2M0ZVbzdZcjhhNWRHbVZYUWI0MnUx?=
 =?utf-8?B?bVNac3poZFFETDh4aUI1VjN0ZmFEZUNXb1J3Um01anlwSUpvNEk0Q0lpK0ls?=
 =?utf-8?B?SHI0c3JSZjVnY09pY3FVOHRyS0gwRVRWNWlKU0d3eVU2a1hDSmJnb1R6cnZU?=
 =?utf-8?B?TE5KWXNNbTFmSW52OUEzMjRTaFRlUm1mQXFHa0xPSks2SXFZU2RkUkdIN2pN?=
 =?utf-8?B?ZFIwZHRkYWVhTGhFU2YzQmhsUmNQVWl1b1lmeVdWRjYySEgzR0t0VTA5d1Az?=
 =?utf-8?B?Z1JPTHdRczU2a2pLMmUwWGNkamJ1RTFERVJpd1hFSFJMbmJ5MGFid3NzRU9U?=
 =?utf-8?B?YUg5MDNlZDJNYk5BeVJqQ2M3bDBBVGhnRWJhSGdwOTcxdkxRQVh4Q1VNT1U0?=
 =?utf-8?B?NzFSNmNXNURNQWI2YmVmdHc0ekZIQkdOYWkzY2FqQUxxYUtPTUhCbTNqSGtu?=
 =?utf-8?B?em5QMGFLbnRvN1laQVk3RC9Xa0FhU3MzVWFjelBjNEdzbVZQQ2tmd2NIZFVn?=
 =?utf-8?B?WVYxZFR5WHpFM0EwdmJKQk81QWVDTEVLZWJaNUNXNFI5ei9uK3JKZTVkVFZ5?=
 =?utf-8?B?a3dZRzZ2WE0zeHU5d1NBQmdRYU5xOVc0YzYydldMQ0xzdTdpRWpSeU8vTG01?=
 =?utf-8?Q?496KM+weGiovr82rgrOLgsEmT?=
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34b326a1-fa00-4479-2047-08dca4f636a7
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 17:47:36.6862
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: grwpo3JR11XQhsatTzUWOCXewwr7vTSCoFCegJbrfS45s096QQjnHJuckTeNHU3iOT0b6AnDQ3o9Ld83SZXqhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_104749_824150_59E8B2BE 
X-CRM114-Status: GOOD (  11.64  )
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

Armada 38x has 3x USB-2.0 utmi phys. They are almost identical to the 2x
utmi phys on armada 8k.

Add descriptions for all 3 phy ports.

Also add a syscon node covering just the usb configuration registers.
Armada 8K have a syscon node covering configuration registers for
various functions including pinmux, woith dirvers using syscon framework
for register access.

Armada 388 has various drivers directly claiming some of those
configuration registers. Hence a similar syscon node would compete for
resources with these drivers.

This patch-set is marked RFC to figure out a solution. I have some
ideas:

1. Can syscon have holes, i.e. facilitate consumer drivers accessing
   certain offsets only?

2. Declare a tiny syscon (see this patch) covering just the area used by
   utmi phy driver: This impacts driver access offsets - can those be
   hard-coded - or is there a mechanism in device-tree?
   E.g. marvell,system-controller = <&syscon any-poffset-here>?

3. utmi phy driver access just three registers using syscon: all-ports
   power-up (probably enables clocks), device-mode mux, per-port power-up.

   Assign these registers individually to the phy device-node, and
   implement access in driver when syscon is not available.

   If this is preferred, which dt property should s[ecify their address?
   reg, ranges, ...?

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm/boot/dts/marvell/armada-38x.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-38x.dtsi b/arch/arm/boot/dts/marvell/armada-38x.dtsi
index 446861b6b17b..5cf9449162b1 100644
--- a/arch/arm/boot/dts/marvell/armada-38x.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-38x.dtsi
@@ -392,6 +392,11 @@ comphy5: phy@5 {
 				};
 			};
 
+			syscon0: system-controller@18400 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x18420 0x30>;
+			};
+
 			coreclk: mvebu-sar@18600 {
 				compatible = "marvell,armada-380-core-clock";
 				reg = <0x18600 0x04>;
@@ -580,6 +585,31 @@ ahci0: sata@a8000 {
 				status = "disabled";
 			};
 
+			utmi: utmi@c0000 {
+				compatible = "marvell,armada-380-utmi-phy";
+				reg = <0xc0000 0x6000>;
+				ranges = <0x18420>, <0x00018440>, <0x00018444>, <0x00018448>;
+				marvell,system-controller = <&syscon0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+
+				utmi0: usb-phy@0 {
+					reg = <0>;
+					#phy-cells = <0>;
+				};
+
+				utmi1: usb-phy@1 {
+					reg = <1>;
+					#phy-cells = <0>;
+				};
+
+				utmi2: usb-phy@2 {
+					reg = <2>;
+					#phy-cells = <0>;
+				};
+			};
+
 			bm: bm@c8000 {
 				compatible = "marvell,armada-380-neta-bm";
 				reg = <0xc8000 0xac>;

-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
