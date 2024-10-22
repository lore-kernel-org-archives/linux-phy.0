Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0152FD1CDAB
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eye5FJWMnhL2Xqitrwqcy9wimjKboz1fDGlsAt76G8M=; b=MNbaz3N83TwDu08Tlyn0diTjcf
	fuIjF8UUCElH0ccGl+1zomO5FCw3rlzjPBvyR+p00NUd5Z575a+1Ov0oSiW1kDoqjXYV67WDbIcMe
	MSNDuS2GuZG9L1+1CkoiulXnun7NHIgRLn3wdzFwmOCSArQxzYM3S4gFe+jXAAb5WGEWzqwclYcy+
	3CHi51YJYulED4YGp977NYX3N2DbHVNsrltgwoNhjAJcEX4HgA5X2xirmsg3n1lHZBYMeRE1lPPPn
	t7Ha1nHPwY9xRNEGIMDGP+FEAcJc4FfH7Thr5Qj1gKBu+Ne+gTjlaySWb23clI+XvPhTyPO7OixIB
	unCYSTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t38yE-00000009ux1-0qrv;
	Tue, 22 Oct 2024 07:06:22 +0000
Received: from mail-db8eur05on2071a.outbound.protection.outlook.com ([2a01:111:f403:2614::71a] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t38yB-00000009uwH-1WVH
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 07:06:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k3+so3eUZQXAckCEZrijArCJWMvKUAN5DYorWty+RJZrsGvsusVlB2KP6LBsIqxrD8NndIn9Cr/djZaUDha9HyVz/nFA8NXBGnvMgNRGkkVd0Fc1+AS8bOuk0dPZbEvTA7Tx+WMUHYvzLJqGFfYznbePUhKYYOX///F918Ls5vIBD/llcUzWDmT3jyVLoJwQ1Q5FbrfqdbcTGHWgqxErlIG2XI4gFfORrDQo81lgCEHesQGHurHPVs54jB7lAjMU3FimDae7RsMdd7l5cRKvbZ+HBc0lDuCkA9xw860Qr25PUU1CVTEebC6VVpow+D67kLe0PEWA/BEwT9MYkS7IpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Onq5Wh1MxDAJjGu2nvjhngeDrcAJb9zQaURY1N8Ucs=;
 b=J9xSMLXOBqah9C0KrT8I9NN2GJ6JkxKAW/iMhUi4hwltDynGr0t6LxMexmU8saA4KVpvuUPjBjv7CtqiYmE8NxvzPC1oRqXzi8BqmuyGX6lx4QUs7eoXTnM4RQqOlhqQwYlguEqaBsp26WeccO5ll+TOq0AMIndBm6DjOUdi9o5wKdgyel3xasbkfRisiFmNJj8C2X/kaUG8FRYb6r3C9ZmNu5zDKjdd+2kpe4hxePS2CexxqvDuEDk3+wMlzGXjoU1dtxpamAzfuPvuIshIWqkFviPtLKOaOa8VlGZ6TK+OwjvGDPUTsS2GUcI3IxQLSrh6lkd8KjxCVHDjCp9B4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Onq5Wh1MxDAJjGu2nvjhngeDrcAJb9zQaURY1N8Ucs=;
 b=lCcfsEFM6MsGS1DyfKBbGmsur+4tmm7EQP0iRQzGA+rYevKveeMY/Z3i/ZJXrXK7bftI3uiN0JLQT6zD7GZMX3HPzxZM8GbF/WJRS0XDf2reiHpD8bNlG5UmYHJU2zOPXyBOB0QBsndOQKVNcm1Q2zmj4x/uGX0kNmB9nFaBk38=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by GVXPR10MB8526.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1e5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 07:06:14 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%4]) with mapi id 15.20.8093.013; Tue, 22 Oct 2024
 07:06:14 +0000
Message-ID: <369722cf-834c-4a8f-a64b-622c75fa2537@kontron.de>
Date: Tue, 22 Oct 2024 09:06:13 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: freescale: fsl-samsung-hdmi: Stop searching when
 exact match is found
To: Adam Ford <aford173@gmail.com>, linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com, sandor.yu@nxp.com, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Dominique Martinet <dominique.martinet@atmark-techno.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20241020165102.340838-1-aford173@gmail.com>
 <20241020165102.340838-2-aford173@gmail.com>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20241020165102.340838-2-aford173@gmail.com>
X-ClientProxiedBy: FR4P281CA0121.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::19) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|GVXPR10MB8526:EE_
X-MS-Office365-Filtering-Correlation-Id: 97aa85ed-60ac-482f-374f-08dcf2680468
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2kxSit2VDh3Ym5jTm01dURMZkhWY0I0ZEVtSTkxbFUrWVljQU4vR0FjRmVZ?=
 =?utf-8?B?SnczM3JwN2pSUFFxc0VBZEMxb0ROQjhlSzRlcDNJTnNPWm41MG5QL2tOVEFy?=
 =?utf-8?B?K2JTeWFvUXp3Wm1NeG80cGg1QUFwbVBsdUNTbFFZL09UV001bkVKRExSUm1r?=
 =?utf-8?B?Y0ROdm5zek9ZcDlxZGdRQVJqYTFOQ3B5Vlg2eHNtWWFCUDB1a1k1dlR6QlBD?=
 =?utf-8?B?Z1BZcmJQK2JnR2lWWVFaOCtUV3B6RWZjZS9hQlkwcHFLaFZWSFpObVEyMWZy?=
 =?utf-8?B?UHZyeUV5VkhxZVQ4NHJOYXA5MzBzSU53RTRka2hyRTFBYitPbDc1YkZtNm1u?=
 =?utf-8?B?SmxId1JZUGZ6U0dUaU0yVGpkK0hYM1F2YmNmMkJTQU9VbmozREx3dE5ScGlE?=
 =?utf-8?B?NkN4M01UYjZKQzRBd0I1MlBRWTFhQkdySFZUSWd2R05XVGYvcmZYbTk2WFVx?=
 =?utf-8?B?emZVVDJDNzZCMlhDZFlQb3FrWGVXWlFOR3phVEc1eVFsbVpxdGJxbmswVUti?=
 =?utf-8?B?eWp6WS9IYnBkNlNXNzREOGllaGFYMVpWeHhkbmRKN0VQaFh2dzgxcEtMcS9Q?=
 =?utf-8?B?TUVWR3dpTFlzUTB0OHFHTTBDTm1wWm9MblRrV0VLZVRYZTk0QjQyTVZvaWEv?=
 =?utf-8?B?Tm9wSXBMSlBtU2RvbWd0Qyt4QnE5Z3ZxL2VsdGgzKzdERjVYTnpCaG5BYUQv?=
 =?utf-8?B?aEFjN2JYUU5OTjhaRFJkbFNod2YwQVVOSTFCbWVlL1NvVVVOZzB3Wkd6NGk2?=
 =?utf-8?B?WGdXbXlxaERVSldwSWRncFhnZXhEUHhrTUVsbXVacDBUZ2V4a3VtWUpDb2lI?=
 =?utf-8?B?OGNvUjhTYldGb0lvZWprYkhKWlo4M3dUdHlTV3JBdXhmLzBhdVdNL2pjOEtP?=
 =?utf-8?B?SGVZL2ZqTXg2bXZFSTB6R1NOSXFIR2hiaEE5K05maVQzeHNHbGl3N09rcHYz?=
 =?utf-8?B?V3Ric1dOZFRaekdlZUtyL2tkemIvS1ZmTnZMYzhJQlVwWnkybXJYelBoeDdK?=
 =?utf-8?B?RmFpWkJYSzdYNklhYVJ6RllxeldzNlZ5eGxaVlJpQ085a0oxdkEyOUY3MWow?=
 =?utf-8?B?akg3RDZZblFaNlJHRFhKcUZpSFZsTEpwMk1WZTVDNk1ZdGZrRG5FYW14UG5s?=
 =?utf-8?B?SVR4VkIzUDBoNVZMMHZzdGZCQmhHR2MwYVZKdEtUejdPS0ZJcTdDNWFwaXoy?=
 =?utf-8?B?QWV4V0pFR3VzdHd4dVhyL01RWVlKa1lsZGlSNVU3akEvdHRsTzF0d1ZteW1B?=
 =?utf-8?B?RmlJUndJSndWRXV5RDZvNk9QUjhRS20vcVBWRmh4R2QwaXZwSGVKTGhWTTVY?=
 =?utf-8?B?RU9Vc2tkSVp3eFhHelZtWWtYQXpDTEJyMzlzc1BReVJiTDQ4QXN0OVVycTls?=
 =?utf-8?B?OXZMTDU2elRMRVNBMTAwbUpEV1M4S3pPTTVYNEV2T3NPODJnTnJUbzVTZmhn?=
 =?utf-8?B?NjB6dElGS2UrVUszUWlKTlpiNG8vQVJTZExsa3ZHdER5ZFVvL2VaSGpXVmFv?=
 =?utf-8?B?Y0VTUVJZU0xrck5odWJ4ZzJoZTdMY2kxOW1GYkRBVitONC9LMEQzYWRza0Z4?=
 =?utf-8?B?TUFuYmRHb2YxQVFYZkkrSjVCQWZYZTgyVFFZQkpZV2VJSHRKNU5wTlhkVmJM?=
 =?utf-8?B?Vm5SdXZ5ZFlLK3N6cysvU2ZjRUJZWGZlLzZndlltWGFxcUlVYUZzUS81ODdl?=
 =?utf-8?B?bXpwV3ptNEpMeWk3dGF0alhUdGxaWXFoRy96blY2bnE3eE5STzlEdGRDSncr?=
 =?utf-8?Q?UbuZPiGTgMaDCPEHZ1svVv+2FzjxUhglzxQesVK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzhPaVEwRTNITmJjK01IZFlxTWZXd1VHNG1uR3BVbmVCb2YzRDhQbFB1bVBW?=
 =?utf-8?B?bjhYMzI4bzJxRklkTGUvelhMUzBnNzA2RUNmTTl0SzVaVXFuVEYzQ3V4YmJZ?=
 =?utf-8?B?WWtiRVlkanI0WkdkRmhJMENBVmRiVFE0RmUvTE5YMVNHdGdnNDNyOHpSaHZJ?=
 =?utf-8?B?NHE3Yi83SHEzaC9yQzJMSkdON1NScVZIRm9xU21NRWtZa3d4Z3BJQVpBdEpx?=
 =?utf-8?B?YVhRMk9WSWxEUXJpWkwyN2hkUS9STTV6bk9lMlBmSjR6QVd3QWI4M3Vqc3Uv?=
 =?utf-8?B?Q0dqeCtCZ25yR3dNd3ludThvb1dPOFVtemxVc3N0U051L0FwQU94SXdVSTNh?=
 =?utf-8?B?TVc3Ti8wYWF3QVVaaFFjRHdQSGdrMTRsMWcyTjZmZHB3azkyTnZxZWdobHVU?=
 =?utf-8?B?T0htaTJCaXFCaXJnbDBKNk0vQ1RhYVVUYVpFa1JJMzdxbDNrdXRybDlxZFk2?=
 =?utf-8?B?c3JpMmp1eWQ0UEhBbUtrVVZBUUFiZDhYdjg5Y3dTRDN6NDdPS0JTRHRRZm1v?=
 =?utf-8?B?TGwvRHhlcmJISVl3ZElCL1VsNE0wY3pLRXF3NGRoazJTdzlIQ3dGbUVyaEsx?=
 =?utf-8?B?YStuTG9SQVJTWU13WjFndE1RUnlocEU2SHdERzBHamZDQk52N0REOTRTUjFM?=
 =?utf-8?B?MGV4MExpUGRJSGMvaThia3hISXlEOWcrMUlnN0pZUmc5bnJVREs4WDdDZjBx?=
 =?utf-8?B?UWQvbWd2d2UxdHA5OHMyekJrcWl5Y3FlMEJUa0tOaGF5bC9SbjdWeC8yWkhh?=
 =?utf-8?B?U1BDYkxsVHlvb3orSXZtZ2lJWTcweDBTQ3pneWlLOERQa3ljWE5pSGQzTXUx?=
 =?utf-8?B?SUc1STNZY1JONFQ3VFVkQ0s2YSszS2pQNFJMMHB0L0gycnNIMzQxT3FXSkE3?=
 =?utf-8?B?VE5Ra1g2dUFyK3RDYWIwWEhHZTZiSUk2TWlZVmRPL1Q3bEo5RWtYbWgxVURP?=
 =?utf-8?B?RzV3RkRGS3JwZ1Fxa1psay9YQzI5UHNJQ2o1M2lNUTN2ZHFUQVFHT0FXelpk?=
 =?utf-8?B?SVp5U0F0S0IwRzJrUFRZV3BJWUo3eURQd09pVVRaNTVzRFp6Tkh6ZEt1cTdF?=
 =?utf-8?B?THM5Uno2d2MwMklYOW9vSHRYVEVkN3RlOWU1ZW1qNnE0RG1YQ2xwNnpPUW4y?=
 =?utf-8?B?UmhWMVBlVitpREdCNTlSN0JRYlBGWm5QL2hOcmFLK1FsSzg4L1luSkN2R2gw?=
 =?utf-8?B?bC93OGdCeWl2ZDZVOHZ3K2tmbElSRHdrRnFwNmpOZ3l2MXM5aU1KU0I1MXJW?=
 =?utf-8?B?aERxYllTVXUxdTBiNDVHUWdnSmJOc1ZkNHE1QmVodEZoWjE0VE44WmUxUVVw?=
 =?utf-8?B?cEwrUGNlOWNSdnduOXl5TGVhNExJY2lIU3Q0MzEyWW9GQzRVWkRzZkRlZ2Iy?=
 =?utf-8?B?VGh2OEMybzJqcEp5cjNYRGtRUWNEazB3MXljRnE1akxKK3FIZDFmODdBWlRH?=
 =?utf-8?B?bUFIS1Y1NUxvVkpOdk0rTStQMjQ2cER0elVEVnhCS0NPZE1sRkczRCtlK0pu?=
 =?utf-8?B?QU5HeDZTRytiWnE4NU9pL1BWdFZFbElZWGZDSm80MEU4bE5LMGR0dVFuMHBt?=
 =?utf-8?B?a1d2NEhOUnJMMG1ueXA5WlBWcm1yTXhVQk1LK0pER0RjZG1NbmJNdFFTVFB1?=
 =?utf-8?B?VjZDVDBHQ3oxSGdYL2pVbWV4eTJJdGVibFJETllrSjZkMWExM0lROHUvZzQ0?=
 =?utf-8?B?QWNKWStkaFFQTFIyM293S1IyT1J0VVNCZHVxQkRTdmphS1BpL09DWnFML3E4?=
 =?utf-8?B?SmY1WnhXVlpsdm55MVJiWEZkbkMvNGMrNkMxNnlSM2dieWkwS2RJRzNyZ251?=
 =?utf-8?B?YXIrMGxEUnlQd0ZJeUhENUh3cTkrR0FWVjc2VU00WXl2ZVYxblNZbjM1K0pJ?=
 =?utf-8?B?bTRNYWRmeDR3ZHZmeTBTZEtEajdvaUNPL1ZSRVkvNGtRdC9uQ0V5Um5VUlJy?=
 =?utf-8?B?Qkh5K1RBT016SWNhZ0htZXFRRHNoYkM1NTJ3MmdwaWVBd09hbm5ScnVzcWtI?=
 =?utf-8?B?T0pvMkVlbWdiQnJkT1VjQnhsOWxlQXVoejg4N29pNlNxK0cxOGVRRis1YTVy?=
 =?utf-8?B?ZGx5dTVpTkpnWGJvcFRYeHpJUDFZUjBBNEtCV1V1RnVKWklTZlIrdks4UmpU?=
 =?utf-8?B?M2tIOVdQM21LRm51UjZlbzM0cHVtQVUzcWNYT0dFcTBUamxqSzRoeG1wY2tj?=
 =?utf-8?B?MWc9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 97aa85ed-60ac-482f-374f-08dcf2680468
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 07:06:14.5333
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ylg4H7eKP/b2/KC8srIjtlxixBPA6kkmf1NfYbOHiPyVkQdDe0liuyXtx0N9Nt3CgjPnHftyC7lpSbPJOWFyD9njodB+M/CognAmCCrL7gc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR10MB8526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_000619_445424_97247818 
X-CRM114-Status: GOOD (  17.48  )
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

On 20.10.24 6:50 PM, Adam Ford wrote:
> There are a series of for-loops which check various values of P and S
> for the integer divder PLL.  The for loops search all entries and use
> the one closest to the nominal, but it continues to searches through
> all for loops even after the nominal is achieved.  Ending when the
> nominal value is found stops wasting time, since it will not find
> a better value than a deviation of 0 Hz.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>

> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 3f9578f3f0ac..719f8972cb5a 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -440,9 +440,13 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
>  				min_delta = delta;
>  				best_freq = tmp;
>  			}
> +
> +			/* If we have an exact match, stop looking for a better value */
> +			if (!delta)
> +				goto done;
>  		}
>  	}
> -
> +done:
>  	if (best_freq) {
>  		*p = best_p;
>  		*m = best_m;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
