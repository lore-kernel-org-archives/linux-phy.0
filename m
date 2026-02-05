Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C805ECD986
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=42j7jO2MXEKV2Xss4+x9atEeN9pd0RuXTLZKo8Y5nfA=; b=dbaSJh63P/OYf1EOsqTrxQ8OMy
	ZltWT6EM8KHzFPlF6qs/XQRV4z6cMayITFDxmBv+LcO4P85tI9EFaxgv04k2kA+RIOEco5uaycsRT
	NBuYypWFe3tXobhiPCvFKZ/ds9kWvwl2UAzo1wmsFHOajltjF8oCmXqSmQxcTFW4uP9ttJ8TboOw1
	HYPPjyok1e+c0fnil50HFG+JA7L2+4ozlEd5qsgQItJ/ATd/ITY75JWbsnYV9+Gogo3U4k6eMbyTD
	l1GZ+33Iu1MxnU1BQu1mfmje1ccGSxM4LEQTaBxDboFjL99vUP/UtrCte0DrkSXRIbdG7j/b/J760
	IwwS86Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo2Vr-0000000AFFf-2YaY;
	Thu, 05 Feb 2026 16:47:27 +0000
Received: from mx08-0057a101.pphosted.com ([185.183.31.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo2Vo-0000000AFFM-3hYt
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:47:26 +0000
Received: from pps.filterd (m0214196.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615GaNKk669330;
	Thu, 5 Feb 2026 17:47:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	TOO6WdJgDgp6eefMmDntqi6Oksflsfqdy9z/Op66uF8=; b=TmetU+D0TJVrIRfS
	a0wtvoPC4XbHjgD3hJJaNRm7afTt4ZatIuxgavCGvDUrKkzfijwA34Hc0kuQFbuL
	BPVoj5q99IgsXvCp2mhJO/VE/UZI+p6UFu41PHvN6fV0R31O9JiHDaELjXk80xOV
	XQ08GLriQOVzKdj8Oml5yjHlkB/q6ntCUZ98Ex9Imvk5USNCjI1qm7C0oohvSQIB
	k6ZDFAyJmiCUEEN1LzyiSusGemYYw6ZALOrT6T+NG52PDDlTQVT7bUyWrttdCUuY
	le2BKwT6IZy6WU5cWar5XUyFCAZmU/WDcgBXc9VSXDqOCQVftXIT7eN9GOO0Od35
	xxqGSg==
Received: from am0pr83cu005.outbound.protection.outlook.com (mail-westeuropeazon11020118.outbound.protection.outlook.com [52.101.69.118])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4c4tx0r7v1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 05 Feb 2026 17:47:20 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ONoL1N62TXcBgbuMTzTN5lzfgEJ8cDaaF3tAJKtZ4Mt3J4n95DT6yqDrUQfOgfObTHAi/avk0fEP/Qysv6mFqUC6gc22rMaqcyAH39zDmgF0SnGvBw/nskUL+qiFVXz6Ttd7Zs1vd8WmrTrJBDcuwTwlaFP3a/nKGh6aOflmB7E4Mwc5PU29UREayf8jyc0Bcl9aYygZ2fM+sOmaCezPfoe569BaW22h0XCIDaoV43BCAa4XtODXKSkKBY3kbmiDH2PJ9VqITsXmYNciNPsXiElfze6/CtVI+me3kA/2bR+OLWX14BAZIkDNK5WbmagY6grXMDgsIDJfFERvVK1OZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOO6WdJgDgp6eefMmDntqi6Oksflsfqdy9z/Op66uF8=;
 b=HK1Q2dayDTC4xmqgOnkLEKFZy7BtxM8k1UUXEQgHKu2b97j5zqE4mqe2O7CXDok/qNwtBPGOK1UY4hDlP/S8sXCuap83d1QDYdmm4FLZi8UnN8gT6qbnbXSx1Ar/zBVaFwcU9rYNl9XzrilaNGdg9tX818KjjPR14aMS0nswG52JGQC5+ZMBSSDSgMeC71aOlFj1Skku73UYFhKx60/Iej8vRFLkET+M+EwSZealfBVwZn/Zp9/J84LzoqS/QOw8byptDucJm1gaNk5X35IJIfogafItYfkP1PN/dzaBV8+Yw+Ns1e5seMas3dZWOlyOhYG2JjBNkXKRN4AX6mBuuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOO6WdJgDgp6eefMmDntqi6Oksflsfqdy9z/Op66uF8=;
 b=if0pe6KWKZHqOQLIyh+hAo+UOVyQlPjiFPB82lK0D+sLIX4hLTSesffDbL6GYe69iqx3Pp16aWmKNlMk2LIgEiU4a2j0/gKs8ATLTOgZvaO/NCoFhPfh3ic6xkll2twWR7jWgsHgvqWabK3FpOv8DAwxNI1yFnC6vy7CaJWerLE=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 DB9P192MB1873.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:39c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.12; Thu, 5 Feb 2026 16:47:18 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::665e:738f:4813:7ea0]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::665e:738f:4813:7ea0%6]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 16:47:18 +0000
Message-ID: <1e508f4e-d9a7-4e06-8308-e2d67099e927@westermo.com>
Date: Thu, 5 Feb 2026 17:47:12 +0100
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
 <72afdc4f-3f6d-4f2e-b054-ff3f2f8d5851@westermo.com>
 <20251205124423.gddjli3jtqlvkrkv@skbuf>
Content-Language: en-US
From: Tanjeff Moos <Tanjeff.Moos@westermo.com>
In-Reply-To: <20251205124423.gddjli3jtqlvkrkv@skbuf>
X-ClientProxiedBy: GV3P280CA0099.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::34) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|DB9P192MB1873:EE_
X-MS-Office365-Filtering-Correlation-Id: 422af5a4-5fff-4428-00e7-08de64d63937
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkM0ZW50S1pLZTZuSTRhNWpRbWdsUGFLU1J5bm0xSXlXNXNYTk5NSG9LcDVi?=
 =?utf-8?B?SE04RDhmREF6NVdSa3VMVCtYR0tFMkgzb2ZWWTM3RkJFUVhvZTlxMEdtOCtQ?=
 =?utf-8?B?RHBqSHVsQnV3WWJaUm43TEZvQ2RqK21sOWtJbi95cnErN0V5YW9MVzh3RGQy?=
 =?utf-8?B?QmR4MWFjdzV3YTRrdzIveEtGWCtadHBDcnJ1N2cwb3kwMnN1d1JoTzg3S1Rp?=
 =?utf-8?B?QktLTkFsNG1PZlBpR0MxWWxpOHBXRVNaM3BLQjU2aUVINlZEZTZ5UlRiazM0?=
 =?utf-8?B?akNDWWFTY1E2ZzNsNDRVQWdCNUlNUnJ4MHpqZk5ycDhRRDZZaFZyditSVjNR?=
 =?utf-8?B?YXBmMUNiL1FXMkxPU2JHYUV5VGlCdFMzYVFzL2NsNE9ldGVXSE1JQmFDaFVG?=
 =?utf-8?B?R1pOeGFENklRbnJwWFFwc1VCc3IzNE1VMzFQa1hNejEvZUc0WmhWR0Z0Ymt4?=
 =?utf-8?B?S1Fzd2tXb3E2OE1odC9rL0RxeEZGTVlLWWZGd1JBQlU2c0ZVMWZ2OWtQZjdr?=
 =?utf-8?B?QWVGMlZqaTNqVVZDWlVjNkUySnBFTlhSZnM1TVlCSHJmZDl0QWJNbU9FcFZv?=
 =?utf-8?B?Wm9FMUNiV3pyNVRKSWNuWHY2ZzQzRExHV0hQbERGeXpyOGN1UWZ2NlVWdDRQ?=
 =?utf-8?B?b0xFQ3VhbHlDOXNId1VaaVZCbmFaRXZVTW0rc2ZmMDdvNjNQMjdGVjBOMVc3?=
 =?utf-8?B?MDJkNUFwRVRiZWI0UjJ0ZkVsOW56VjVVRXRpNzgxSi9RRWM5bk1sSEpNSXpE?=
 =?utf-8?B?MTU4MWNTT2JTcUNtb21ZRkNhRi9PcTNHSGFqSmZvK2hHaVdLbDBad0txNTFH?=
 =?utf-8?B?V3dINFlEMVA1aTBCYnduRC9JejMvMG0yNjhqVkRhUDdQQ04yVU82TXl0YkJV?=
 =?utf-8?B?Q2VRK1lHTHhyc2xyVkdZS0h3a1pTa0hRbjAzNW5IN2VwM3dKQnBjNWdvZU0w?=
 =?utf-8?B?cnVEOFdxdUJiVElKeG50SlVNREZvM3lTZ1RTOXBhbmxiY0EzRlhrZWJncWg5?=
 =?utf-8?B?M0pjV0pnay9Wb3NzaGdEMnZ5aHdac0Vmc1E5dXpvYWVzUUtLb0Ruc0hhTm13?=
 =?utf-8?B?STVpcFlSMGI2RTZLRVovakgwZDYvR0h2TXpIWFN6TC9jVkFDWjJBSWdKUkhs?=
 =?utf-8?B?dkZNZEpOV3FlVWp1OXo4VnBId2w1dk9lejlUSUtZNDU0NlRTRWthRDRMV29M?=
 =?utf-8?B?a05MYWlnVy9weDNZRFN5V2NhenVwRzAxWnBwdElhenUxNUNFcHp0cUVPemZE?=
 =?utf-8?B?cjRZd0FxaklFU1NsNUZNdGRvMG1GVFUvVHUxazh0QmRoVlpid2dmUlU4dEww?=
 =?utf-8?B?cHp1Y3RVZGJ4QmpxNXhJell4YktYMmNOUFE0VE5kZDVHQzNvN0ZuamphQW51?=
 =?utf-8?B?V2xxOHU0QU1rNHpodGRSdnA0RkFVaHA4ajV0UGl3VnZGVVhrTm5pOWpmNHky?=
 =?utf-8?B?WUpTZ2hDR0lqNGNYTk9CbTd1R1Y0UGJ5S1VJUlE5clhma1dsZGdtRmU3QWMz?=
 =?utf-8?B?QlFBV250Ui9NekVrdHlPWmhIN28ybTF5K3gzZUVPOEU0NUV4dThlYXZaVmFn?=
 =?utf-8?B?eDRDRXp0Z1pDWW93dXVWU2hDNkhlTG9qZUl0MzR0M3lVazkxdmxScW9UcHl6?=
 =?utf-8?B?K3U0bWdWUzVwTTNLclltcU9tUmtRQzM0MWp5dmFFcnZ6Skt5WnpmNko4dFR6?=
 =?utf-8?B?RWxLaHkyakljZ1Y3REdxYVFacloxaTFiYXpTU1IyQjBBU0FGLy85L2pTY2sy?=
 =?utf-8?B?NHZPZHpUaEdORytOMGcwMFpxSVBQLzBYaEVOZ0lUUlloVjUxN1g3dHFpSURi?=
 =?utf-8?B?N2RqOHg0V3IybEpCcmRrMTZUcmZrdFFFcTRBczIvbThwWEg0N0lkNThpUHNm?=
 =?utf-8?B?WCtEa3QxWE5YUWVIZWpjQVF4MzJpaWdERWtZSEp1OGl6N2tzMXhQZEVaek56?=
 =?utf-8?B?TU05OGx0bk90bks1OXBvQ0RBbWNOVUs1UWk0WFlEbm9MVU81SnRXY2VUb241?=
 =?utf-8?B?NzlkVUFlc2F5SXBKWDArSi9FWEZXSkxkQjVKTU1VcU12ZWtKdDJodHRNenli?=
 =?utf-8?B?N1RaMTBPSWdpbys1TU9ZTVI3OWtvYzB4UGI4MEVTMmt5ajlKcWsxUHFKYS9D?=
 =?utf-8?Q?Bvus=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHVEL2JObUVrZlhvQUp6STJvbzNtTmE0YWlIdmM4cGtTK0dUKzR3bnE3S2NK?=
 =?utf-8?B?REZGcTQ5b09GaEFBTkZhNjBEaGovU0UxVHJiUzBhL2ZCMkdGSE5iSGRrWXFz?=
 =?utf-8?B?ZGNCaWQzek94ZEVRTnN5a0dUelJocmhqdVE2VHFETk9BMjhhYzJBWFk3QjNE?=
 =?utf-8?B?R2hzL09FOS9XVkJTS2tuRmdQc1BhSXFXaW1KRTMzSFQ2VHdWaWNtQTJHQ1VZ?=
 =?utf-8?B?Ujh2SVR3RzZERmtzM1AwamFOSEZCODJIVDRQamxzVDBSTW81cUZFUkxtYS9L?=
 =?utf-8?B?N3BJMTI5ck43QktXN1FaaVpSWXdYSCttRHhxaDhDVjFjWmc5YUMwRElJdFlC?=
 =?utf-8?B?UWcrTSs2bGpwV3N0RWc2UVJ2akZTSXl5YXVYWW5TaTJkTmNIZVE0R1Vvd0hB?=
 =?utf-8?B?MmxCNktxQnIxbXNVNVkzNXltN3BXSURadmlYRS9Sc1gzdTFKQWx3alArRTZT?=
 =?utf-8?B?cWVVU3J6VjlnZmQzRmZvZXZxRHp1TGZnWkcrVTlhY0k5NU1PSXZIeTQ3dXNR?=
 =?utf-8?B?d3pyczI4RnI2MDBqbEtHQkpSK2UrcVRwYjdqemYzVTdMTElJYkdJTzF5ZXNr?=
 =?utf-8?B?aFVKK3RXczRleDRTcW5MdTVPd01KdlFub1FmQVZVL1g0OG5VNjhhcnlCRHc4?=
 =?utf-8?B?UkNpYnZRbmswczc1LzZFekNwU1FVcjYxdkpWUTMwTW1YUTJtU1luUnBrdUlj?=
 =?utf-8?B?UGVYdHNSL1RKeVhxUWR2bi9QU1RTaFg3TUJPZ24wQy9tRHVFcVR2cFZjMzk1?=
 =?utf-8?B?WWptWVhTNGxOUGpicGxtc1U5RE5tRWpmZ3VVcnlyZFVXZkZ0dzVpTzRwS2l3?=
 =?utf-8?B?eXNxSWtEenBuV01rczk3UXJ1SURJRlYvb1RLa1RoZVNiZVBnaDFFWFg1VUky?=
 =?utf-8?B?UmJ3WUFwSEVabmprNE1oY2tFZDBWVUhkeDRpNXVlN1RTczF1Y0lZTmg2RUVR?=
 =?utf-8?B?VFduZVNIMGxoSUNyYmNveHNJd3M5RUljSUxjMmlvelBUM2ZjZnhjVU5yY1dR?=
 =?utf-8?B?alNHcWROQm5ZNTVTV01zN0JqRytHTS9ieDByNmY0R05NMVVzVS8rTFRqSFkw?=
 =?utf-8?B?VkN1Tld6L1U3d2xEVzNEeVdsdCtrMjZSNE8zcHhCWTBqMmkvM2U4YS9sZ2VZ?=
 =?utf-8?B?aDBkanFPR3l3WERwUEVqeTlac2ZwL0VSYmRJMHY0NVErMW9pVDlMR3BFV1Iy?=
 =?utf-8?B?OUhRSU81bDMvdS9oNE1mRzFQSVp4bUdjeitUT3U2L0JpZUZtM1ppc00zelN2?=
 =?utf-8?B?d1hCL29LMHcyZS9NWWZGTjRWbGFVME9lTGZUOTV3NzRlcm9RRWZTY1A3VGpx?=
 =?utf-8?B?OE4rT2ZmcXErMWlUUXNNSGhEbWZCdnlLbytBeUtCSE9VK1RJTGZ0VHBaUHJH?=
 =?utf-8?B?VFF2QlNROENLb2NuK2s0UWgvWU1rRDNnZGkzKzZlNFVNNUQyQTRTald0Q2w1?=
 =?utf-8?B?Q2xFdDBZbUxjWSs1SENxOFZ5YVdsekxHeDFaWUxWSk1nYVdhR0toU2lsamcv?=
 =?utf-8?B?d3ZXNXprQjBxTTRFdUhrOEF1OVNFOExBNjN4NnY5dVdqNDRvZ0hXQkNOQXkv?=
 =?utf-8?B?L1NIWWFZUnEyVkRSYTFBSFN3S2wwcmZxUnNOcFUzRm5CcEdxejJIV2ZpMzha?=
 =?utf-8?B?SElTdmQ4bEtONUx1Mkg5cEZiU0RHOWsxSXU2TEJPay9aSkZiS0xhTXQyZFIz?=
 =?utf-8?B?a1c4VElkMlQ3T21sUVBOcG8rcU1uWHlRWFFGN1Z0UkZqWGJFRkZDTkZwZm9C?=
 =?utf-8?B?VUdsL3NSYkJBamtldW1uRm5VeVV4Vi9WK0tjMDV5Q0tyUnU3TGE0ZnpiMFg3?=
 =?utf-8?B?bDI4bS9KUVJjUktpMzB4RXRZTHJWU2RNOUp5NzNoWDUyNHd3WG1pdXY1S2Vm?=
 =?utf-8?B?TjgvMzhHeGFpd1VSdGF6OXllMW5uZXg1NVFVYzI3UlBzTTdrNnNFWVRudUhl?=
 =?utf-8?B?YlBmeVBqSVVmektSOWRaZm1jajlFdVNwdVFxbEVrTTl3Zkl2ZzdmbnJnTVBP?=
 =?utf-8?B?dW1CSHpYckJPRlVaeXNLSjM4cjhReVBNSnJzVlQyc0Nlc3ZMWEYyU3M5Z0Z4?=
 =?utf-8?B?c05UckVzZ0RNWUxmTlVvd2RUWStxTy82U1E3dm1uSVIxOW1aZkJ4YldrR0Fp?=
 =?utf-8?B?b2JJcUhEWk8wUk53RFg5MStxeU1MM0FFb1dLS2x0WjB3UkEva0VGTW5Wcjkr?=
 =?utf-8?B?MG1vUzBjbHNIRzlXK0RkRjBNZlBPa3NSOGNxaGJwS2c4eklFSzNmRlVBOW0v?=
 =?utf-8?B?YzREZmF0UmFzMDNtcDdzL1NndHhsU04rU0dBUStNeUxhZG83aGxEL3I3NE9i?=
 =?utf-8?B?TGpwZkh2TE9uK2tnaGNvR285M1JoNnF0NUFSajUweklNT0RrS0JoUT09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Y9yxGy2T+riQMC3gNAXR1jXEPYck/mnbmMXt1F+b6ZCyILIY669waaz/eks1zR763yliuopPsy1p3RbdLjHouo5x/2e9HErompGTZ40IxW5X/Bdo99N1pA83nD87zeAGV3bM1rwVrvbJKBhmIBvYnUZnvbQCc6616APUH7rxTJizBg5q+slHKyJhdSM+ULKJXgfqXSfxOFbLly8YOJtgK1oVQ5GENuW4GXP1Omu+Mr1Gd8gQpFmzuPfX0PNSWi92T793atqU1A0Chkz4evfRSGKWLuiITtyedoUJVSl9m3qdQAmaItqGZb4FMwU9LKRpBeK5yt4lybgnLYTMuZoP+m9TxAVxYhOm7JKyNh8MutmsbH8hW1aAkzg4JlECfyifYdTe2ZYvtDQcd7KOiNV6SX4yn+mk7pJqBFGcVW/UkLRo1N+TxyoKbEOzBaYVyQSe7fWs2hfY0/J4hptzgG3so+08s+TiwRpkcTtm8RR/T42VBWuaQyOuG7tjVtOyXb+RFFYcw19joF1P9/+Eg/MM7AdH/tmrukwSGWMeOpPh0Vr4ZI1IZEA0do30dZh3rWSSVNMdH1b1sdX14LnfYX65CjI+DEPFnIRgBUSkUdlBVozlJb9onNjNjgm5uj1VIeKP
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 422af5a4-5fff-4428-00e7-08de64d63937
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 16:47:18.2883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jVpHyXqG53vIawzsjuN4Pm2j2sA+qBglKPXyNPiWJPykP93d/63q44zq7X0EXv4ecqFXeFYT1QGLzNi/1WY7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P192MB1873
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
X-OrganizationHeadersPreserved: DB9P192MB1873.EURP192.PROD.OUTLOOK.COM
X-Authority-Analysis: v=2.4 cv=E+fAZKdl c=1 sm=1 tr=0 ts=6984c998 cx=c_pps
 a=BwR1LiHKl8QdJQIFE2inWw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=oWP5n1C1y8Wsu8u6e9QA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyNyBTYWx0ZWRfX8QnbthXboqQJ
 yOTUDUPVTWEwNdAiv/IlFfmIpJJFOzv2i/Eyd8BnHah2aZE3i0ZZmVcUXqFCtCbbt2cY83zrfkL
 owrVfHi2y/CTt5sjFlidpyYH2K5yqYLp0wWKZz7fnd32QxxPsOwrnAtCef5sDCvjdgnkaEQc3xl
 7qaK05ZWJubHOOgHZr73UdrOs+pMji4z2oIA7zoP9tZze0ct/FFZerXoS9Y49dXuVR60nmC1lim
 9IBidLG3LvHOgON40IX/67zsEKEZ5VnnMOe/ZzVJZ+clUdSjsbPSAwMI8HVLTu9vl/45QLp89lc
 FOLzbFMHiu0VFItY3EouPDrE/a9BacSHf7RvulemfcQ6RxCqO0gCFlENhubm9GQm+kv4wHTBlZj
 UhaJ7RG7130U1fIvQeI8UutzZBGO1YI2laVPew//P+wQJzmbe/Vr7bFR8WlHTYEo8nRjQBqXOha
 iyM6FLxm0IN28+QpUCg==
X-Proofpoint-GUID: IYPsA-U08EzlWWBRE7o0MKUsnrB6MggF
X-Proofpoint-ORIG-GUID: IYPsA-U08EzlWWBRE7o0MKUsnrB6MggF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_084725_209408_D7D97530 
X-CRM114-Status: UNSURE (   6.40  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hello Vladimir,

I wish you a great year 2026!

Meanwhile I ported some of your code and I got my networking partially 
running. Details follow, but first I have a question.


== Question ==

The lynx-10g driver disables the managed lanes in lynx_10g_init(), and 
they are never enabled afterwards. Probably I didn't port the associated 
code, but can't find where it is.

I modified lynx_10g_init() to leave the lane enabled, which solves the 
problem, but this is a dirty hack.

Question: How is the lane supposed to be enabled?


== Status of my work ==

In case you are interested I provide some details here.

I ported only part of your code (tag lf-6.12.49-2.2.0), mainly the 
lynx-10g driver plus some changes you did in pcs-lynx.c, phy-core.c, 
guts.c, the dpaa drivers plus their associated header files. I 
deliberately omitted code dealing with c72 autonegotiation (for 
backplane), as I don't need it. I'm still working with kernel 6.6.119 
plus OpenWRT patches and cannot easily upgrade.

So far, I have a 2.5 GbE PHY and can run the following modes:
- 100M : SGMII
- 1G:    SGMII
- 2.5G:  2500BaseX

Switching forth and back the modes works seamlessly (with my dirty hack 
to power on the lane!). But I didn't test RCW rewriting as it is not 
needed in this scenario.

Kind regards so far, Tanjeff



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
