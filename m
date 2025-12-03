Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F36FD12D4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 11:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uyGqA94YlDhZ5XEbj6cs5VWQpC9V45OsHcr4UEZ3iZk=; b=YcBO5P88vS9vTtaxQEZksCFgcr
	O7+6jPSL+rzT4ROuFnsAR6sN26+PB0sqFD+YFixDoI4AD7mRjgOKjiHU5eVR2FSAmcHDdinIpWFyz
	dTSEklUB9eKuxcu9vHHVst6ICo9Bz9ojz7pFq/6qH0b4EWCtZw6Xjj8i+5gyVr1Ip2k6uX4LhL3fF
	rCpJJNCOIhznnCeBb7k9PbeuPPA/f1bcCxFq1sjn9/vO0+ZD1TrP7LxQJg2UgHpaIsYj62z+2Aqwp
	oBOsyW9PriStBvtMoFTkXvhZYrWS0YT+huGS8NQFIlBB1d+KKnTnI8RtlBwOJTKw6JKB6cYIF7lQm
	ebhWPhPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlEe-00000006VfC-2Sku;
	Wed, 03 Dec 2025 11:41:28 +0000
Received: from mx08-0057a101.pphosted.com ([185.183.31.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlEb-00000006Vek-15nL
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 11:41:26 +0000
Received: from pps.filterd (m0214196.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3512Sp2907141;
	Wed, 3 Dec 2025 12:41:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	xpE465sry/yizfzeWPBcByoiykyrb5vTkqhgJczmOLA=; b=m8nNwNJWYuY0pGnl
	XAFWH7cGOgQ+g0rzgpbEZMWVzMyGwCAN3evzkr9aLp9a0G6j1ONLCpMuzun9fTl1
	uZXD+sGUETa/RRApyCuc7Hwi7WBQNcLr3cAst2Q+SY7IsPVFkAW85ozXK94GZxKY
	k2/7Yagd0eKfUS91lSC76QNDVhhsHcmjUiAHdgisLDzZ7JO1JJ+QKbG9mraJpQvh
	sSbW2wUuLJPbnAhvmhN0OR4jL/7WddChH2TjzTWtDHi+HAsEiNpEkTI5SX9Y83uQ
	e2zDZxwnYfySXMe0LJE7z1wv1gXyNJ1KROBW7T7LEg/97W2Mx/Pv+IFuj1OZL6i4
	gakR7g==
Received: from am0pr83cu005.outbound.protection.outlook.com (mail-westeuropeazon11020087.outbound.protection.outlook.com [52.101.69.87])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4aqnq4utph-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 03 Dec 2025 12:41:19 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e1bH8RCjiPhMvQWCDJ1/XtL4kRM2yPqS1Lx3kPg5ST+6ez1bGeIaaD3lziJkInOZWksPbWjAtJrHe2PJ8R0BROw6Cgon0SRJ1KxcjoDTuxEtaLpE3+8IMO/vN8fe81e0jRNAX7vouOUSESkVh9cIF8Uwin2BdBfHIisxEYcDc2K8pd94PbP3uLHcsMVQy05hYui1QscHFIUg/aetpGbGvktkW2X/rlUDIorTx9nZl3v6LBsZzFPcrahTqnetcmVN4AqFDna9NSW8eq866miGFMOGkZWggqn8owWcW/WUkcmVLKS4iB1OxoAQ7RnwNeIkHt+nY+5hoS6ourvzlHTheQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xpE465sry/yizfzeWPBcByoiykyrb5vTkqhgJczmOLA=;
 b=DN14ZpV1upt/oJGqH4rGdyjzBotslLpFDi7UfQby5+VbL8SrMkBCreGFOh231w3IW/RHmjx6CcHUJ+OBsI7vrrlh7QvRrSJIPuUp1algOkesUcKzOcEBuGm5hb0iptBMNlz1379pFYV/GhYh1SeXIeOnD+fIDYeJuOo8sKzNwyZguiGJkFS+ccx9LDhrhNH6n7x/NV/aW4RmoRQuX28dU1dAO7XmvJXc94btxmbBojq/9rH2nrTVVL5qIqTZDtj463oLRldwonIrA5nuYUwTA4I9KxL038nhUZGVcMllKwLJsHO2jDQU//rpGl/Dui7ClnyOw0mfolGcNjIRhXYAqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xpE465sry/yizfzeWPBcByoiykyrb5vTkqhgJczmOLA=;
 b=IJ36+u4WV2j9nOGKYCXXjXDacIRWtxLHzbuxHbfCzjxcI7w1O6bbX2FSRnfPvdOGizIBjaGvHbCNCKPeOjWvVHIZ5lfkOLfUCuZZoB2SD291DvxNY/yWYQRAYvRmOmsPygjvy0yBMdUZxOXF8LGSlv4WaGLpmFzbMVaMBCrbLFI=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 PA6P192MB3325.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:513::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.17; Wed, 3 Dec 2025 11:41:18 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313%5]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 11:41:18 +0000
Message-ID: <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
Date: Wed, 3 Dec 2025 12:41:16 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: Lynx 10G SerDes Driver on my kernel
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
Content-Language: en-US
From: Tanjeff Moos <Tanjeff.Moos@westermo.com>
In-Reply-To: <20251202162919.ow53dn7c3x2lguqr@skbuf>
X-ClientProxiedBy: GVZP280CA0045.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:26f::16) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|PA6P192MB3325:EE_
X-MS-Office365-Filtering-Correlation-Id: ad07d238-d3db-4c8f-c369-08de3260df75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDQwWXZScEFqeGV6YXQ0V2Rad3pxb0Z1T3dzNm1vUUtUOXNvWHFQc3RLU05j?=
 =?utf-8?B?WDhCUFB6K1VMOGJWUENJNm5zWFA0ZXdFWFBxTUY2djVmY3o5aklwU2d2c3Nh?=
 =?utf-8?B?TzdkT0Nhd3hnZ1IzenhSQ0taUlJWU1MzYUQzb09VblVFUFUybWZZc3hMOTBY?=
 =?utf-8?B?b3pCektIUTZRL1IrbktNRXR5ajBsOVpnTTBna2RlaFVxUDROWkxMNGdFUjhS?=
 =?utf-8?B?UTY2N242YUNVaEIrZmVtbHcvUXVaTktpSi9RZk5hMkdkeTc0VittRTdoUVFu?=
 =?utf-8?B?ZU9FRkVldllpTEJheWRha2g1am85NS9zSyt4MGlpd0t1WXZqcG5DY2dUekJv?=
 =?utf-8?B?cmVYUlA2cUZHSXhoeWdwbFF3eVByTHh6RDV4N21JUkYzTXNQY3E5blBkbXFW?=
 =?utf-8?B?RWs0akpGYi92V3BDQ25PcVhQNURrcGZvM2ZlRjZSTUVodVlMMVdPQjRjSHhH?=
 =?utf-8?B?YmY2TWtWZURGaGRZMXJqTmQwMWJveGRqbk9ZTHFrVjVobERVRS9UcEgwTHY3?=
 =?utf-8?B?Slh2MW12YnVyTVlSQ3dWcHNqTkZBY2c3ejl5dEhTSHg0YlIwMkVqMi83bzM1?=
 =?utf-8?B?U1NHUWNFYkwxNlZYR2FpLytaZFhkaStmbXc3Y3N3dlpHd25aVHZvOStJTGZI?=
 =?utf-8?B?TlNQamJrSG9TVU9qZEV0bU5wcytuMVpUMlJ1cExndHlvZnc2WlZYNHA4Qlph?=
 =?utf-8?B?SFpxdzRUTjA2WFd4aDlGaEM1dG1KSjZ3WENhbVREdkFranZNNER1M1ZZNzV1?=
 =?utf-8?B?anFZRzdLaVBqU1Zzem9pT0Q5dUh4RUZnM0FuUklybS9XNmhkVlRoWFg1RHVj?=
 =?utf-8?B?Nklxa2pFeE5QTjcvZ09iUDlEK2xYU0lRY3JqQmpicDluVTlySlk2Qi9PcGky?=
 =?utf-8?B?Rldma0YrdjR0NU1CUHc0UTZGeGpKdnBxSENrVjNzbm82bWJMcEpiek5SMXVL?=
 =?utf-8?B?b3JSTWZjK3RzNVBNaEZTcGtrMXRMVU1XeTZzcGFTTjllOWhValRsVUdiRDZF?=
 =?utf-8?B?Wno5V25VRXVqcGp0WS9Xa2V2MDJqVjBFMk9JREJuS01GRzRWSEU1Vmp1N09h?=
 =?utf-8?B?UGRQRXZTZ2U5Y2huQXlTaTU0cUVrMnRLb3ROSFlucm5ackx1cm1GU05YK0lL?=
 =?utf-8?B?Y0Z0QVBWWHYvL1ozZ1RhSjMzWVplZ3F3bVZld1pVcHdrdDl4MWMraWtnS1hX?=
 =?utf-8?B?MlJNeTlJRWJXQWp3TTltSHlhQTJJL2lnaWRlV1hVR2kxZHpDYVRpUXlQZ21O?=
 =?utf-8?B?aGRITU1YWFBhS0xOcGRGOGw3aXFwSCtEanZEems0eWR3dlRYdmo4dFgrUEF0?=
 =?utf-8?B?bnk0YW9QTWFvM2F5NW1MRVFmd1hlNEtydkY1dGxSd3VGaXZDVU5wRWFTNnNH?=
 =?utf-8?B?WjRGSFdWZnFlQ0FUd2gyZWpmR3JRcmhwTFQxZXMybkRLNzl2aUNxSkxzQW80?=
 =?utf-8?B?Rk1vd1A2bjJtaS95ai8xWXJQVi9HTGpPMGxPUFVtTlFXazdDbStVQWM2S1hp?=
 =?utf-8?B?SzZBVGpqMzVrVVhQWHk2NHJoeGRmWFByeXQxK3g3djF5dGdPYnEzZ1A5SzJM?=
 =?utf-8?B?WHNKcTVMK2pRTi90YkcwanczYXdORVlXT3pjbktNeTZFRlRQcEpja2ZXZlFa?=
 =?utf-8?B?MEU2V0NKOTRBRE1aZ2JOTjVla1ViQ2lkaGhnWmNDVVJ5ZlpvcUFLMFJRNXZB?=
 =?utf-8?B?MllVd1dqQ0hIVlUvWWhuQWF1cGtFZU5uTFRkZWpyaXJHbm1YWWhib2c4VmZN?=
 =?utf-8?B?enE3QjQzMnovaEsxbTRjTks4MVhlWFhwYmxWcFhZNnh6SGpWdnhmUTNuc0FH?=
 =?utf-8?B?UFM0Kzd3MG0yQ1dIenB6WWl2bXFTV0ljdElCWk84L2dZWHJydU0wV2hzck1v?=
 =?utf-8?B?ZFRMdGVtODdYbUNzUTVSTm5DY0pQWUsvdzVWckVDU1hzaWZtVmNWUkU1RDEr?=
 =?utf-8?B?U1p4VlZKQ1BRaUhTeWVVLyszZDJuSjluSFM1cW8wR1RJMkJlUUF1WHkycCtn?=
 =?utf-8?B?eDYvRHVMSW5RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1E0UmxNR1lORk56QXBPd3psdTJMUE5kazRYK2tYdmNiTnNTaG91Q2hWaTl4?=
 =?utf-8?B?a2F4Yk5zOFluYmxCN05vOGh3WXZFa3JyMWdyTGtGQWNXaGVqS0k1cmF5M29E?=
 =?utf-8?B?aDFNZERlTXlMdXRwUzM0TitsNDR3bk1BTG1DUFVERENVcmx3VUNSaW1PZzgr?=
 =?utf-8?B?YWlVZ2NLZlU4c1JtZkI2VmU1cjdqYStyYTZLK2xwVEZCK1dqdU92YlFxZVFT?=
 =?utf-8?B?TXhrWHJZZi9td2k3SXU3empoSG8zSnA2Y3d1b0s3S1NlS2c4dlJZbTdtUDlo?=
 =?utf-8?B?WExJSVI5aS8zc3RFUUJGVnEyYit1RmJBYVE2cDZWQm1JRy91T0dlKy9XOXVq?=
 =?utf-8?B?Vlc4QUxRZ0FhbUx6NXU3RjMwajNvL2NTYUNXV3ZxSVdMbldVNkRvZTJCRVBm?=
 =?utf-8?B?TGV2YXRqZ2hxdllRZUVIRkFFMUhXUjBSTTJFbVFEcEhXTXlGcjgyNVJBTWh3?=
 =?utf-8?B?S3lhb3RramtPQ2ZnNytCOW0zd3cxZHRnSVZJSGx1bW9oWWIzWDZhNEIzUE5E?=
 =?utf-8?B?RkJyYW94OFBodzBEVGNjcXo5NW5ZWnpiZzMwNllVVkxNcGFkN1BuYjR2aGcr?=
 =?utf-8?B?NCtNanEzRjFySGYxT0hZb2pTcmpOcTlGTHBldVBIZzRISnU1TFJQVWtSZDM2?=
 =?utf-8?B?WEw0QjE4VzB2cXJBcjgzRy9zTStSTExTRGVFNGExUHY5a0xXNDBncFU1L3cv?=
 =?utf-8?B?SU5WY2tQcW1MZ2R5N0hFckp2ZEprQ0diL2ZLdFdNL2p2ZFQvMHUrTXNUY1hD?=
 =?utf-8?B?WVNNcm1WVzg3ZXM0RlpmNmtBWEhQVW9NQkJodmNuRlFTV050Vnc1aFI2bU9H?=
 =?utf-8?B?ZUI0T2o0R2xMb3QrakFoNVUyNDFRR3ZXM2hZSnlnWkVEVmlSREJud0tod3Nx?=
 =?utf-8?B?Nkg2MENxdjYreWc4dHF6NFhCQXI1ZTh5Z3VUbkNCWGdsbjVvOVNnQWdEYm0y?=
 =?utf-8?B?ZnlodTg3UDV0NDd5UE1rY1dpYy9rYjlTNEZ0NFFsd3ord1B1cUIvZG51eXp2?=
 =?utf-8?B?UWYvNndNcElISXptTW84RHAvam8wQU0vMkhnMjBmQTZ5eXVMaDUwZFl6Rk9s?=
 =?utf-8?B?U290c2NjVjM4QUUxaUdSZGQ0MjMzeFh4amN3WXlTWXp6YWcxN1h1OXl3eXB6?=
 =?utf-8?B?TW51UlBVYUhsY0lHNWozYy9LUU0zK004c29jdFNpMnk0aXYvQkFrREd3V3Jz?=
 =?utf-8?B?L0VQUHlKaWNvUk14UDBJRWVMUWZxdTJHUm1MQnVrSlMwUWlHSXRIRGlCNmpD?=
 =?utf-8?B?TGFqcGttcmlzWC92MlZEbE8vZ1h2UjBtVjBoa09iYkFsQzBwRXNUbGsyZTdH?=
 =?utf-8?B?VGRESzZpODBld090SjFmRUczbVExODhWdkFXNlFhZjdhWmZGQWhHeXBBNklR?=
 =?utf-8?B?NFo3cXkwdmNTQTBUdVRQdnpReUxyUHM1N2hyVk9LVWtybnZkRDh2L2xXNFB5?=
 =?utf-8?B?dC93T3o4djRsTWpIcXd6ZGJVZVJ2bjd1TldUTGpFQ2N1ZytKOUwwU09ZMWFt?=
 =?utf-8?B?amFONFQ2MWRPN3NqdUhjUzd2TTVaMjF0SkQwRllhMFY1WFlDMFgrSmIzVUhS?=
 =?utf-8?B?UlhHb1ZPUjlxd0piejhjU2xMbHJTYlhyRHlrdERsQ01RaFJwVjZTWTdjZDEy?=
 =?utf-8?B?MWNuZ3NEWTNFd2h4NjJzVkU3TitlajcyOXdZRlNSZ29FUlFrZ3c1UFM1WEN6?=
 =?utf-8?B?d29rRUxqajFzZWRlZVNqRHl2QXpqcDdJZ29icndoQTZNVXpqVGQyUk1QY0lo?=
 =?utf-8?B?WHpPS1lGeEFNUGlhRTJvQXUrbU1WUWQrR0pHaUt2Wk12R09IckVYbk5RV1R2?=
 =?utf-8?B?d3JmZndHYysvZlRTSExVVFhqb1RNcTZEbGMvc3kyRTVuaThaekQ1K3g3SWhh?=
 =?utf-8?B?L1o3RnRkL2c2aTc0Y3IrV041dHlNbHJuaVJxaEpWWjJVODFibkN1d29XMUQ1?=
 =?utf-8?B?d3JNd1ZudHFBZTJ0QXNWY2ZDZHg4UVJkK2hBV1ZGQTZkRXBpWjBxZzJnZkcy?=
 =?utf-8?B?TmV5VVJtTXYvdjFQMDdxRWZkTW5INXVrKzArNW1HK3pZb1EwRWhPYk9ncjBL?=
 =?utf-8?B?d3VoTW5oWXlWZ3pOQlVaVVJuQTRiOEVkVHZ5MkhSaHpzZG1wMGVxamFzOVlY?=
 =?utf-8?Q?ssu/pGPuJabOjSXD3MxME0TKS?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: PAZVyR1c7wQx3XfXQcpAAI6JReq+xGR/hZn6x0jhBPJBdb0i3N8jDlggZ1A6KqVmoyyMsuh3kxqG+QG+19Uv/odSGtI/GIE2fl+BwpXB4FjFW9cPloJH0RHgDVi3+PHd1t9FkN0c01PNWpI7dzwbFnPPWyi8xfyD/8GOzdoLTTXo8ZEzgV9YzAjgKoUL9cabXFfNnz/V632pAiakQU34OPfGZzcAX3WabbtXtePV2P13tXSG5nPVn/BfyLO1dwzpBcU7Hilo/a0mDIi3v83cC70yCipyaWYiYfM/oaaGsoH0oOaIa6Kyyxaf8WNwz+ryGVXnLib5CdUzF4u9lUilHABm8CPx5oV7CGku5IvjSS4czBj6j1id8JU1POm9+tToJ1cUaiYQQ7Am+XCyTlnbJ6SZQenYlb+uKNRcU9gLzrgrdrNPDtw3VvEzJVnLyVzYG3+Ox5y6CS863iPoUz6G51fKBcedzTQnPMUeP1ItfsfMG8t+9nhvkuJwdTapSqKw+FKlOyrQpepQp4eeVfqfkxn9gaaTLNJvWytpMVuQmOpSF+rWCGVzrRWGJggSFWojQwZSUsZTqhdHbcTx+NvfhFpC2JQHyvRQlUIP1Uaw3qGTMzQDG4v0Qgi1S1t7aCFg
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad07d238-d3db-4c8f-c369-08de3260df75
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 11:41:18.1232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XOE9FOElC0sbZsq1TadtN5yO20NF1fKqRf+4WEV/vhlHnd5VpSHy9ZMh9rUHR4sUhJqLL1ZQ6R4wUSGukOvTPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6P192MB3325
X-MS-Exchange-CrossPremises-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 14
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 104.151.95.196
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: PA6P192MB3325.EURP192.PROD.OUTLOOK.COM
X-Proofpoint-GUID: 0nOECR_SsRd8JkJvbVgKFIsmP0M0Ai3R
X-Authority-Analysis: v=2.4 cv=O8Y0fR9W c=1 sm=1 tr=0 ts=693021df cx=c_pps
 a=u6FPrn3+ZOgyttpAjmNOgQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8
 a=pGLkceISAAAA:8 a=r8OIAsvAQsj7wpmw2IgA:9 a=QEXdDO2ut3YA:10
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA5MiBTYWx0ZWRfX2K1jQZDuKbls
 Kyl29T1q4bidp9KWMfeEtoXyCQiRJYstDYmnZ2VZ5+Y6SPGh3nMixccm9iaztbVXG1RO8esfQYZ
 9vL0iVnELt4jlrcBknbKigiSJbZP6H/SJD4i4LybUdoqVB0eqpdwlay2EMr0kTcu5ZKHOcmCItA
 tCXJPI62jwcSmS9J8iK1BN7jR5fih3858yv9RIHVn7rq6MHhYhv10vkqoF92mbH5YSr31wK/DQl
 pvYH4zecnMOb7h3cApRucsmFQ1HQ01Sa3h+MgXPRD9Lvsup7/GjhwzXMAT8gXVBreC4Ee39Enm3
 0xDe8JetufafxxjZPOtALp5lKRj29m0lrUryN8nTgwEUrTZLHsdlc2XD9YNCBMKlgUQSiejeWIe
 bbAvDsIid6pqZOj0n8Losn2zYyOifg==
X-Proofpoint-ORIG-GUID: 0nOECR_SsRd8JkJvbVgKFIsmP0M0Ai3R
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_034125_610883_E4C0F7FF 
X-CRM114-Status: GOOD (  24.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Vladimir,

Am 02.12.25 um 17:29 schrieb Vladimir Oltean:
> Hi Tanjeff,
> 
> On Tue, Dec 02, 2025 at 12:12:26PM +0100, Tanjeff Moos wrote:
>> Hello Vladimir,
>>
>> I want to use your Lynx 10G SerDes driver (plus fman and fsl_guts) on
>> our OpenWRT kernel (6.6.110) and don't know how to integrate it properly.
>>
>> I only found the driver in the NXP kernel[1]. Did you send patch to a
>> linux kernel mailing list that I may apply?
>>
>> Kind regards, Tanjeff
>>
>>
>> [1] https://github.com/nxp-imx/linux-imx.git
>>
> 
> (I'm unsure why you CCed linux-phy, but OK)
> 
> Picking the right base kernel seems to be of utmost importance. From
> what I know, OpenWRT maintain their own kernel version and don't use
> vendor kernels (they import patches from vendor kernels as .patch files,
> however).
> 
> I see this commit in OpenWRT:
> 
> commit 6942ca412124a1f322e19e2289a59ed8e27b9c24
> Author: Pawel Dembicki <paweldembicki@gmail.com>
> Date:   Sat Nov 1 23:36:36 2025 +0100
> 
>      layerscape: switch to Linux 6.12
> 
>      Linux 6.12 has been validated on Layerscape platforms, including NXP
>      reference boards and multiple custom designs. Tests covered system
>      boot, networking, storage, and common peripherals, with no regressions
>      observed.
> 
>      Enable 6.12 as the default to continue broader testing and integration.
> 
>      Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
>      Link: https://github.com/openwrt/openwrt/pull/20614
>      Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
This commit is on the main branch, but not on a release branch. We base 
our OpenWRT build on the stable version v24.10.4, which still uses 
kernel v6.6 for layerscape.

Nevertheless I will consider updating the kernel.

> To integrate the Lynx 10G driver, you'll need to do that on your own as
> patches. The correct git tree used by Layerscape boards in Linux Factory is:
> https://github.com/nxp-qoriq/linux/tree/lf-6.12.34-2.1.0
>
> My strong recommendation, assuming you want something stable, is to
> integrate the NXP Linux Factory patches, which you'll receive some
> official NXP support for.
> 
> The rest of the email is just for the sake of full transparency. I will
> be talking about my development work, which I strongly recommend that
> you do not integrate into OpenWrt at this stage.
> 
> The SerDes patches (both for the 10G and the 28G Lynx) are being
> constantly reworked in an attempt to get as much upstream as possible.
> Since the 10G and the 28G Lynx SerDes blocks are very similar, they
> should share a lot of code. For that reason, adding a new driver for the
> 10G Lynx depends on some changes being made in the 28G Lynx.
> 
> I am keeping a personal development branch on top of linux-next here:
> https://github.com/vladimiroltean/linux/commits/net-phy-upstreaming
> *However* I modify it frequently, *and* I only retest those
> modifications rigorously when I need to (i.e. when I need to submit some
> patches upstream). I am doing this because any time I am making a change
> as a result of a review comment, it has to propagate during rebase like
> a shock wave through a huge stack of dishes.
> 
> So if you pick up the patches from this branch today, there is no
> guarantee you will find them in the same state next week.
> 
> The bottleneck is on the patches being accepted into linux-phy.
> Currently a group of 15 patches from this development branch have been
> submitted to the mailing list a week ago:
> https://lore.kernel.org/linux-phy/20251125114847.804961-1-vladimir.oltean@nxp.com/
> and that's about it. There are 22 more linux-phy patches on top of that
> to be accepted until mainline gains some support for the 10G Lynx. And
> that isn't considering:
> - device trees, which are also waiting for the acceptance of the driver
> - networking consumer driver changes (I'm moving SerDes handling into
>    the Lynx PCS driver, in order for not just dpaa-eth to benefit from
>    it, but also enetc, felix, dpaa2)
> 
> Out of curiosity, for what platform and what use case do you need the patches?
We build WLAN access points for railway (i.e. passenger WLAN). We design 
the hardware ourselves. Older models are still based on PowerPC QorIQ 
(T1024 and others), but the most recent model uses a Layerscape LS1046A. 
This is the one I work with.

We use OpenWRT with our own additions. We build binary images for all 
devices (PowerPC and ARM) from the same OpenWRT tree, using different 
configuration files. Currently, all devices use the same kernel version 
(v6.6.110 + OpenWRT patches + our patches).

Speaking of the device I'm working with, we connected two Broadcom 
BCM84891L PHYs (100M / 1G / 2.5G / 5G / 10G) to MAC9 and MAC10. The PHY 
supports different protocols for different speeds. The only protocol 
supporting all speeds is USXGMII, but this is not supported by LS1046A. 
Therefore we use SGMII (for 100M / 1G), 2500Base-X (for 2.5G) and XFI 
(for 2.5G / 5G / 10G). Yes, we use different protocols for 2.5G; see below.

So far I didn't manage to switch the LS1046A SerDes between SGMII and 
XFI protocols without changing the RCW. However, I can switch between 
SGMII and 2500Base-X at runtime. Therefore we provide different variants 
of the device:

- "Slow" Ethernet (100M / 1G / 2.5G), switching between SGMII and
   2500Base-X at runtime. Here we use the BCM54991L PHY (only up to 2.5G,
   otherwise identical), but this is not relevant for my problem.

- "Fast" Ethernet (2.5G / 5G / 10G), using XFI + rate limiting in the
   MAC.

I patched fman and fman_memac to alter SerDes settings when the PHY 
reports speed changes. This is rude, but worked...

I created the patches for kernel 5.15.167, and they do not apply on 
v6.6.110. Instead of reworking my patch, I'd rather use your work, which 
is much cleaner. Also I hope that it supports switching between SGMII 
and XFI, which would allow our "fast" variant to support all speeds from 
100M to 10G.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
