Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C174D2F7E3
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 11:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UGaqkTbGbuRx4g+6I7QLo2S9Jmedd4DJ0Z1cVSvTLS8=; b=e9xztuVZn/D11mXNBTALHShFFl
	6kKqdHQy1we05nF8waIC6twNkXwtC59a08Ur1HTglvn+bmKHQ3wTCI4J5CcIns6O5lbFqEqOAHmTf
	ejfIQGINxveT+GMJ1OO1XnHEVxgNYmILzpdWel40z6sAdv6Al6FnNh33lqWS51CIO20WuacQPVRt2
	BdU2JAAcAoZVGRRCi0GISwUCEBxn8uG60ZFZYrQZWMhwh8UFVhHVdjOLcBhQWzPcL7vlrqxna4rlN
	8BaOOoNyCf+UuYq6ET6WFM4hrELkDTgQj7pGqkwyCfKLCEptAEj9OBcbDPnOAbiFSV87wnMEfmhTM
	4nJPEw/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRU90-00000009R4N-2CGw;
	Fri, 05 Dec 2025 11:38:38 +0000
Received: from mx07-0057a101.pphosted.com ([205.220.184.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRU8x-00000009R3w-3u9z
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 11:38:37 +0000
Received: from pps.filterd (m0214197.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B55M7Q64186196;
	Fri, 5 Dec 2025 12:38:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	rEibjdDdObjJ2xPiaTG1t6sxFZZ7ovDvktFt881gqpQ=; b=Sy8Fygv/ut/LSce5
	v2MUSB748a5SBkPzp1BN/WQnvykO68G8CaLOXsRJME5DiO4OtaK2IIiuSF01m5YN
	8u9UqC9PvYem8l4zWy9cdBlF5soHBv87eVBe0ILW7jm4FhdjCVogKCaBiRIDxP1T
	0Fmc7uoc+34ihCisF57okVBD3ieTHcDKYM/cE2RpIYETm56bhxgxr1BS20FB4NAj
	cdAuxYyYfHLcJM/1trMcWimLqLA+mielr51JMlk3CTSU5ivDGINf/Q8MM8MoB6vl
	35zNYhlVDcQQ5gap6OjbybVl2Aqgi1uMDI7jODntjOcFtzgdYekjKy+INpVIC1a5
	zIs+ng==
Received: from gvxpr05cu001.outbound.protection.outlook.com (mail-swedencentralazon11023099.outbound.protection.outlook.com [52.101.83.99])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4au8wy93k1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 05 Dec 2025 12:38:33 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FkJQhcagrVj5uINu+4XJgRvWSRUFZ+RhcJ/OzqLp0WPJO1ZKy/2Dd/HSB/TuFXNSpWl2y5hDcr6n7uAlwn+gmveVXHixCFVDto6Jy0R3hNUmGiAd2tfkkvxC4d0s9Pdw/bDaz+BDWjpf4wIjkFTR/CtbeReY6sDDjLOBsMzhHqSbz7DRpDt9nhUP3Jee7/an973c5pfvv48rwmw6yGkPWhL9EpfXdZiHJznY51D+1Sh3VsUQKrmbdp/1A7PO1g3ogXGkLayJnrwT0A6xb7fGwQEBzIPlANxJ3sgZ3upWyhNO3D62xpDwSGcOjvzho1j4gHA7NuPJnZme6fSAakMm7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rEibjdDdObjJ2xPiaTG1t6sxFZZ7ovDvktFt881gqpQ=;
 b=HHLQ3N95L4zH0IFlRW58gaSFKNnLbUmbV87BY6GsltG0WW8qxQZBVh3SukJUxOWrSG4pVVTC7U5g2btcuiWsZUJHDzYvZR+yXQCmRd3ib1a516XynVnxsUmcX4qSaza97L3/va18jIEEeRal3kBO1jyMnoS/8ihkfmAPU+KC1Wjuj67If7NCt+e3MciOcZsNemKtXk3vNlI8TNMnP0kxp3MwbvbF28S3I2gAXFIIDN5SoELwxvX/mk1cX96PSGQXwQsb1rabOT077Bxlu6oqcCyzJfN3Nniltpn77+1TXDH2+qZdA1MIm3oS9lsabBobSTOdDAR+h8dhlOY8zgXO2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rEibjdDdObjJ2xPiaTG1t6sxFZZ7ovDvktFt881gqpQ=;
 b=jvLftGJ4XanMu2koOPUL9QMpVCoxbc2OW+SzP0MDjA4NNkECTd6qnu2QZA4jTUmGjoU0yzOGU9ueCgxXwmuksqJ1mXX2NS3WxraurCHDIIZywKmUs47eOgdJPCJyDAKXXAa7IQ61VC0MYYjC4rso/eGfC0A5MbDtrknjPdUeewk=
Received: from PA3P192MB2840.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:4d5::11)
 by AM8P192MB2824.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:32d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 11:38:19 +0000
Received: from PA3P192MB2840.EURP192.PROD.OUTLOOK.COM
 ([fe80::6bbd:3311:1132:dfda]) by PA3P192MB2840.EURP192.PROD.OUTLOOK.COM
 ([fe80::6bbd:3311:1132:dfda%5]) with mapi id 15.20.9388.009; Fri, 5 Dec 2025
 11:38:19 +0000
Message-ID: <72afdc4f-3f6d-4f2e-b054-ff3f2f8d5851@westermo.com>
Date: Fri, 5 Dec 2025 12:38:17 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: Lynx 10G SerDes Driver on my kernel
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
 <20251203180022.adhggfqgfj4wsoqi@skbuf>
 <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
 <20251204193415.d5zymxgziweiepgy@skbuf>
Content-Language: en-US
From: Tanjeff Moos <Tanjeff.Moos@westermo.com>
In-Reply-To: <20251204193415.d5zymxgziweiepgy@skbuf>
X-ClientProxiedBy: MM0P280CA0015.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:a::20) To PA3P192MB2840.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:4d5::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA3P192MB2840:EE_|AM8P192MB2824:EE_
X-MS-Office365-Filtering-Correlation-Id: cf0839ba-817a-49a0-34d4-08de33f2c980
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eDB5L0N6QzdKd3BjK3V6Z3hxSUxqVVhXYk80dU1JNU11d1d2NG41aGRXOWF2?=
 =?utf-8?B?UlQ2dzZGaUUwTFRML0dGWUZWWndwYUZ1QmU2Sk1GSERJaGpaSEpvOWp1M2Rz?=
 =?utf-8?B?TEdOSU56ZDkxdXN3a2p5TXNQbVJRWUtQMXNqdDY3VDl5WG1YMlJ4UzVpbXZQ?=
 =?utf-8?B?TEhWaTBOUFBRMmZsUEZQTVZTRWE2L1BsdzRYdGZZRDEvR0h4NjVNWDdKY0RL?=
 =?utf-8?B?NHNBaWkrVlpiYjVPMHhCMWd3NHQxYldtV0x2N3k2UlFZV1JmWkZ2UFVYVGdu?=
 =?utf-8?B?Tlo4Wlc2ckZ0cTdaUGZ6UjdQeklFOHkzRkw1UFRGVWwxM0pGZWhZclZ0cmxM?=
 =?utf-8?B?MUJiN1BFTEF6Tittd0ZabmNONGNGeTZqY2Yrb3JJVFNMWTJuWGxjajhnNGRI?=
 =?utf-8?B?RUhUNVIvamwxRzVPZEgwc0pOTkk3aU1FR3pScFdTTmYwY24wbTRVUTFDODJP?=
 =?utf-8?B?L2c5bEJ6V3N5VWdkekF0R2hNK3NrNTdqK1ZUVjN5eEw4VXdrWCtVa3ovdXpp?=
 =?utf-8?B?aG5NVmZNaDlXR3Jramt1Y0IvSlBBQWFuNDh3RzVLVzc1aVZlejBhcmhTc0Er?=
 =?utf-8?B?anR6azU5cnZCcEtKd0NPbEdlQUxBRUZtTVlkRjZIMVRWMStRUXprbjBVVzU4?=
 =?utf-8?B?cnJyQWo4MXVNK0k1d0VnZEFETkUzT3JwbFcvZG9vSjJ4akNFU3ZCT3l4azJo?=
 =?utf-8?B?ZHgwSnBSUXE2d01pYXFLQXloZ2lRSFdyRDU5blpCODgweXMwenVRKzZ3MmNH?=
 =?utf-8?B?am5JQlV4eiswbmUwK0VKV2xBSUk5NGJZMS9HL21WcWExa2ZuYWNBdHFvcnFp?=
 =?utf-8?B?ZTVicXBYZG5LUjUrWlArSTZnVTVHRkRWZjQwOEdXaWpyTkxET1NwMDBrZTB2?=
 =?utf-8?B?UWdzMWlUemljOTltZm50RUdWdnpObzZXVndMejdxbkFpVzEranoxVDQrWW50?=
 =?utf-8?B?Y1BxcVF5YzJoWFpvQys5ekVmWE1iSUZlSitWbTdDQVV0UXFoM1lXYVFtU0Jq?=
 =?utf-8?B?cE9qUkVsT2NCV25CNS94L1V6UDhZQlkvOXIrUkxlM3RjOGw5S2g0VHQvRmJl?=
 =?utf-8?B?clhLZE9ON3ZQMFJlOFNVbVU3MFZHUGVEWnBnZzNCTThueXhweVV6d1owWDNh?=
 =?utf-8?B?VUYwTmJVczkwTVlwOFQxNUFoR3pnYU9BTkJIZEVxY1BaQ0szVnpBTWE5bnRy?=
 =?utf-8?B?Zm9VZi9FYUlGU3NhNXdWU2lRQk9NYytZbU12QWhWZ1dQdUlSV1krb0JIWlVK?=
 =?utf-8?B?RDdsb3BpRkc2UHpHK1hJZHIyYU5uaXRkNXphbGRDcGRNLzlaQ2I2NkRSYjdn?=
 =?utf-8?B?bi9kbS9mZXpLYWdiZG41OUtLWEJHVDVyL2ttNnpBZXdMMGlvaWtlOFUvVFpB?=
 =?utf-8?B?UGRwUTliTHE5d2ZlYmFjU0o0dTNxL3NpaDdrd2xrNzNWYnZ5dHA0dk1qTWd5?=
 =?utf-8?B?ZWZ0a3JNREZOWlp5VEJJRHAzeERIdlN3UGt2dElxbEVDUElNVmtqNU9KRFZn?=
 =?utf-8?B?T2p6K0xSR1RWcjhqd0JKYzRNc0xOQm40V1FGT0lndmdXcjB5K045eUJUS01l?=
 =?utf-8?B?UHl3U1N3eTc4bHZPdGJORUtIczNMelpzSHNMYnplaGptQ0Q4QTFvRm0wdjRj?=
 =?utf-8?B?ZW1YZzZYaDQzcUlZYVVqT2oxYkhQeXZZUW41ZVhhSkNBblVlZjZEYUhmRnBt?=
 =?utf-8?B?ZGVXMEk5QjdtcngvanZvT3NGNGU4Y1FLSXVpcnFmcks1cERMRGpDVkl1SWRy?=
 =?utf-8?B?Ty9VSU5kb2JpN0gvWGY5a3FweEhGczdsWTA0K0RpUmFveWlkZUJYMjVjbFhC?=
 =?utf-8?B?NWkzWThlS0NYYjdCQVNWWUdRTmVzNk5HZXgvQUpHNEdOMlJILytZZlZWVytG?=
 =?utf-8?B?YndEVTRyc2JlRnczMmVBdjBGUExDVU1uSUVvRzJsOGFxNlJlSjU1bE95M2x0?=
 =?utf-8?Q?tnf7hXvGsa+beUPC84RfgjcuG/p/NFAa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA3P192MB2840.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkpaVDNJR3Y4clc1bjFQVlY5a0RKWVpIU2ROT2RJb2R0aXlLOFl6V0dpb29i?=
 =?utf-8?B?MFdWUXVCWEp6YWlCVGNFUG8yclZ5SUZOK0hlcFZMdU9QZHU0ZCtxSGdBSmFQ?=
 =?utf-8?B?NWRJWDlFV3NZTFdUdWJ6TkhFaENycTh2bHpnSWlUcU40a0lGeFZINm5vQ1Rr?=
 =?utf-8?B?NHJyQ2IzUUJaWGwvNHRGZlZsZmtzbkM0V3FYQUowd25kekZjQTBYaUtiWndo?=
 =?utf-8?B?aUpvVDlueFp2eVh3QkhBTnVUdm5lK1RXUUhXb3RzQTJnV3MweEJwZzltUXpH?=
 =?utf-8?B?L0N5WUJRVDBmQld6TTdzK2poL3NYZS8zdUVKaEs1QWR6ZHhaV1pDcjFTUTh2?=
 =?utf-8?B?a3NXTW1KaE1SdHBkRTdnbDkxelVWWWREUDVYMy95Yk9DeE1IUGRRUWNNYWlU?=
 =?utf-8?B?L0ozRERmYWRDUGtocnhRL0tqa3d1OHpHM0FldG9IYnBLZFBiZlIrNS9lS1dr?=
 =?utf-8?B?RS9LSmdhVmVobkpUZjJkc0xZZXFTNUx3cDZ5eVRIWDUwNUFCZ2RPVkRnSlQ1?=
 =?utf-8?B?cHZQeWVVU25hNC9Bc2IyWWJ6SUEzeTg3MXp1UmxKcjNXZEtxRG9ZbjdVYTZ0?=
 =?utf-8?B?dTB5UG5IbU1IemxQN21NN1I5bWRaV1hsNWdtTENHZWg1eTN0azBCVWpvaTRo?=
 =?utf-8?B?Y2xBY3ZncktXbThHM2hJeVdjV0FoL1k5RTNrYkZ3R0EyakxSVjl1SEVaSzlW?=
 =?utf-8?B?UFFVRVh1d244ZEllNGdKOWFzSXBSajVNZnZxSytWNmdzbUl3bGZGWEdmQS9G?=
 =?utf-8?B?TFNJYlpHc09UQ2VkdlRDMU5ZaUdQdGI3SjREcVIxUXBrbTJzNHRBSzRidzJC?=
 =?utf-8?B?SWMzNVZjZlFXQVFXZkhPNWVCTWx2M2tjUjFuNDNabXI2Q2pjZVpGUEZ3WDEw?=
 =?utf-8?B?NzV0WTNibzBQQ1phN0oyOFB6K1M2YTJJMXQrWktIQ0lOTlB3UVpzck5QWHgw?=
 =?utf-8?B?VHVxRllzZ043bkwvTEkvUG5PU3RycUUzaGhLNWp6RnROZmoybUdPRGFTM3FM?=
 =?utf-8?B?UUE4QmwyblpsbkViTDVNUytQbkJRMGZSbXhVVk1IbnJVNm54MXo2M0ZyT3gv?=
 =?utf-8?B?NHF6Z3E1VlNIekdGd2R1T2h5YUNHSGFEb3cvV09ucDQyZkg0NjA2NlpXQWc4?=
 =?utf-8?B?TTZXNHV6UnZzbDJreU9TaXJPMVhXL3FER2N5TjNpYVUzZFhGbXZTZStyOGor?=
 =?utf-8?B?L1JoT1VLYlJubnNIUmg1d3pWM21ET2ViWi9ETDhvTDVjU0YxVjV5VTl2UGYx?=
 =?utf-8?B?RlBSbWxseHFsNHJXQVI2Qlh2OGZGaWR6cWhTN3ZIQ1RZeElvaXJVNUl6WXFQ?=
 =?utf-8?B?U0RybUVJS2pPRnlZVXV6MWRmNW5jeU5rWU1xTjFrUFRRZ2Q1R1Ryd1BGSjZ5?=
 =?utf-8?B?Unh5SjhYSGN4L3RxNDNEbGc4NWg1TzlKZnFYZmVUL2t1MmVTQ01XNzdFemxR?=
 =?utf-8?B?VXBLRUw1bXB3Q0JUbSt0K1BTQ0NseFBFVVN1ZjVPeG5YdXRpL2t0SkNQZTdJ?=
 =?utf-8?B?SWNPNUJNN2tEcW1uYWJPSHEvMHNRYm0wV2ZKOUtyZlBwMW5pZnlZUDdzbkdM?=
 =?utf-8?B?MTFCcEwydXlsUldpbjhmdHAwaUtzZVF2Y1FRRlIyQjd0c0hsVkFEMHpCYUNR?=
 =?utf-8?B?NXhKQ1VpbXBXcktkOS9xV2JQME9DclhoU3E4NEIwTkRWN1hZd0xuSXQxUnVo?=
 =?utf-8?B?VzczUUZtRENUT0wyWElYd0YvSjJ5V21DdktjQk15T2hjWm5DOEJDeUdEZjhi?=
 =?utf-8?B?c3FHMmZ2MGxqVHRSRW9TOFBoODhrSXZNTWFnbFNhcklHUHduTGxOdktrSUFB?=
 =?utf-8?B?WlJFczFnSHJmNEZIM2x3Q3l5SnY4V2M4eXozMWk4L1EvNUNoaWUxQTJjOUdj?=
 =?utf-8?B?Vk1iVGg4YUhvOTcwS3lKQk1peE1JQkFSdnFyODlBZDBaQUdrV2RnREhTZHI5?=
 =?utf-8?B?bzJlY2FQQ3ZVcGRPUVlEaEhwWmRseWFvNWhoVFRjM3NzYUFwbDJuUjZJZy9Q?=
 =?utf-8?B?VklwZ20zbW0xdmovZTdXb2h2YU51NE5DZHM2WlEvVXhGbjRBVWtMSWtGRDJB?=
 =?utf-8?B?L0JZK0ZxMjFVNXhrWWU5WEgweHF6ZnBDcko5OVRBOG5jbW83Y3hsMDJiL3Jw?=
 =?utf-8?B?K2tLSklUcWtMWkRUQWMwYTFSaTRIWmIySGpzMUtPUHFqeU1FcU1KaWpYSE95?=
 =?utf-8?Q?bGhvxkS3vq8AvwTc/zaVih82rn06rVFLBETphO5w4JB+?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3ln8gsT7z0hDPsTDYWBAoNk+QUgPqN5CEVEZ7jgcYT/aUEipblfgV1CWEJCX11ECuHHdDD7YzwJu0/05+6QPM0F4USKGh+YcwlMkexq3XYSXYWk4rbh0HftmG/h1kb6HL3W4FifD4XuXbIxxExbxv60bWq2I9orF5Q0oMVUTXYNAVmgtX87FCAFF/uWIRXg1iA4sHnvGfh3l9P3tLsowlLu4LKgeuTLcMN10GS5I/2Itdf7rLSXgNAlMNRi6tL7+CE3L3XMy/S8eJ5XvF02U4y6kMYhuqfKBkZp/1sJfvEKipkGP+mwzow6gBiwA529kLRr4eBc1OBgx2s2KJ5uc1lnak0qsVQ3SeJkdXQTV1iSbH8z1KliziCK803lk3akun8SmwAKYJmvuYLmV0b6krurvWByKqkmjKHe0I/HB742nMrYJhqu30lkZv/ycCfCgzswbuiTLJOPhjsgN/7FETfPUEbWnHa/RoEv2IeNDTbn4DaiZv6xz0C7B2t2zELOqNfriOmBmg+w8iIsKH42w0QbxL54jw2NcZ2l4LXgxkDxVtbEpClHKvIaarz5qOO34qG6m2OzfB5hriC9xHTnq6lgxQFecV+62fOYY9UwUrYtm+e2TMz0dZ/QUaWPGvA4N
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf0839ba-817a-49a0-34d4-08de33f2c980
X-MS-Exchange-CrossTenant-AuthSource: PA3P192MB2840.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 11:38:18.9843
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t8IlwKuMg39a6oawZ5emMzBEMNwrB2KCVbgCXEgoaYbiQ79qafmLC5CFkUbDHv8MAL8+DJWOimo+M7Dv4zyEZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P192MB2824
X-MS-Exchange-CrossPremises-AuthSource: PA3P192MB2840.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 14
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 2a02:3100:6133:301:eb65:b489:e094:80c2
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AM8P192MB2824.EURP192.PROD.OUTLOOK.COM
X-Authority-Analysis: v=2.4 cv=Vokuwu2n c=1 sm=1 tr=0 ts=6932c439 cx=c_pps
 a=h9zxiV1OvkKBrs5DGhD9Gg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=eOjXPJ7qyqh6E9T-Z_YA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: bfmy3GqtB5BtI7K9XgH0TqJaei1nKT9C
X-Proofpoint-GUID: bfmy3GqtB5BtI7K9XgH0TqJaei1nKT9C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA4NSBTYWx0ZWRfXz9g+YC7Gnmns
 U047z1ZxUPNzUzFzsNW8T8oURTPJw6EfG0vcawFFAkNKlmps0FfgEnxNgUelK9JyKXSbblCZ6Qx
 C94N2avG606u7L6tLA6F/imi8wS2eIYEU6bFnCa/dCw8M9kjzeKnqv2McWxEjT0NQzWD3Xo6qRt
 tPfNw/GIDpKvgv2e+4G1xkJONdnn8feNuHqPu4/HvoqiLCG5Pk4wkJKV24snkWipz+zIw4rRzC+
 UuDZoUhTBHWzpHTsOAtfBBPvT+v1rPA87aj2dnkwk0wPmksvEZnKE062F5cwGRnL0UzqxXa9hCg
 2OkEMyn9+vGrfyso8UZdWuOvzT7Ei1VZQLXk9AbjSZokApm6uphebmM4nowAT+CMICsNhIFph7T
 IS6VJEfZPgDBcTqcFTTZBq4c/wyiGQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_033836_280282_8F477717 
X-CRM114-Status: GOOD (  21.31  )
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

On 12/4/25 20:34, Vladimir Oltean wrote:
> On Thu, Dec 04, 2025 at 08:01:10PM +0100, Tanjeff Moos wrote:
>> This worked for SGMII and 2.5SGMII, but I never managed to switch between SGMII to XFI.
> 
> Yes, the SoC architecture on devices with the 10G Lynx didn't initially
> target the use case of switching between SGMII and XFI, so you won't find
> documentation on how to do that. We've since validated that the use case
> works on LS1088A, LS2088A and LS1046A by implementing a procedure called
> "RCW override", where you use undocumented SoC features in drivers/soc/fsl/guts.c
> to essentially change the RCW[SRDS_PRTCL_S1] value to something different
> than what was originally loaded at boot time. We've tested the feature
> on the above SoCs and it is seamlessly integrated in the lynx-10g driver
> (it is not invasive, the user is essentially unaware that this is taking
> place).
Sounds promising!

> 
> As mentioned earlier, lynx-10g is in our upstreaming queue, but it may
> take a while to reach it. You can get the driver with the RCW override
> support from Linux Factory, though.
I'm still unsure how to get it. Probably I'm completely off track...

I tried flexbuild (https://github.com/nxp/flexbuild) to get sources, but
didn't find the patches.

I also tried 
repo init -u https://github.com/nxp-imx/imx-manifest -b imx-linux-walnascar -m imx-6.12.34-2.1.0.xml
to get the Yocto repo (LF is yocto-based, right?). The "IMX" looks suspicious,
since we are talking about qoriq, but I didn't find LF for qoriq.

The repo https://github.com/nxp-qoriq/linux.git has a branch net/phy which was
merged with commit 0229b2500383. So I will try to "extract" this branch with 
"git format-patch" so I can apply its commits to my OpenWRT-Repo.

BTW, I'm still working on getting my board running again after I upgraded to
kernel 6.12.34 (by merging the corresponding OpenWRT commit).

>>> By switching from 10GBase-R to SGMII it would support them all,
>>> wouldn't it?
>> I don't think so. SGMII does only support 100M and 1G. Tell me if I'm wrong.
> 
> I hope I didn't confuse you by naming XFI "10GBase-R". This is what the
> 10GbE SerDes protocol should truly be called - XFI is the name of an
> electrical standard.
I did grasp the meaning. But yeah, the terms are confusing, even data sheets mix 
them up. It took me some time to understand that my PHY does no SGMII (i.e. no
in-band autoneg) despite its manual claiming that it does.

Anyhow, thanks for clarifying it.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
