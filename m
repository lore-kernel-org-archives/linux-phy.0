Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B108D3B7E2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 16:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HqP7QTwzfj3EYq6mXX5jUT88PgM6QSfmjBCU5klznVI=; b=zJIIc5ZUj1O2DZj674FLu3B6Qa
	g0o54Hs60CaRQMhy/ldCc3C9w8tx6jzg1LDC+xSis5p65ekCONL5pKtenZid7czUgwFW8uK81Cqdg
	g5QFk09CrTQnPqInasBMGzM+KKt+408Togu8lx6uHRmFDspv5YCHyhdnyMLyC6S862uIILP2a3bIF
	bD1O+VYiLBD7zhe3nVyB9dwHy3X7d1m2pAgfirWkQG2qW45rUZaozhcbxMYNeNjekaRK7qiN3SOgU
	e1xdvWVN9kxYh+DIq6K+5PylkUSRSgasxTqEx1c0Lv4riTi1hvmNcsYcyimdF2Q66+UEAjjalZf3/
	PxtJt+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSeRL-0000000DKYt-0VWJ;
	Mon, 08 Dec 2025 16:50:23 +0000
Received: from mx07-0057a101.pphosted.com ([205.220.184.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSeRJ-0000000DKYV-03Hs
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 16:50:22 +0000
Received: from pps.filterd (m0214197.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8GSRVj3766637;
	Mon, 8 Dec 2025 17:50:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=270620241; bh=
	H+TATT5xJGXjmyvW4M8wa+Ymb/1NWiDNPyL6vwQ5m1U=; b=WS28PUUfhOIrHik7
	uHOU7X0WQe8OUWpxneDl8T3mm320nHveGQ3K+l/bOpol8t8lJ2hoeDfRDFZ7LHN5
	sgGEMXyDJz6y3XSZAcgChKZi86pqcnNAY9wxhYhXO6cf9ZxeRBJD0GT5WYfkChaM
	P3V/CV4sMNFPSu+OIkp2OTlNVA23rqzupgKk2pg0I6F4osSNErJTeJxpqVjI1ed4
	Ul5XFHAPkoTORPsEIFUH47rA8USGk3aaLDyOJya99Lj4KcPWelMmIt6KVxcjMfmC
	TTD4NFKkeBqGxjdAreO5fy5658VN4J83pm7md3EcuQzkjHSGN6HUpzYhRlXB/Le1
	dJRmxw==
Received: from gvxpr05cu001.outbound.protection.outlook.com (mail-swedencentralazon11023086.outbound.protection.outlook.com [52.101.83.86])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4avb6gj1nu-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 08 Dec 2025 17:50:14 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N9nsq5eA/FRjVDJUzV5E6u9AFpq+Uq0FHel440QgE0xMSJr4YIHllepbkgBQBEjBSGJkVBK2GKNqyobsQPG9ZLoMoOTCmVmzSbBBbY73OtZBAjyBR2R2RG1X66Gza5Am0d0/9WPCwsNUfbXW1sI7XSQJopmCQHnaZdrch2Qm6Gs5+BTFFP4JY22yH/Oq7ZJ9pR9tPR+6Y+e1aKd0UJTXE2FXXDDvdRaMDGuQwJB8IEE0Ut/JAwMnvC7/jHIhp5dPUJ3Svvew1YINVQoLShDTTaIKhmR4eTjr5pGU/sfJN0ti9KgMhqmCHgkrdZg54Cg/TgOEJdXOG3uRItdbC49TZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H+TATT5xJGXjmyvW4M8wa+Ymb/1NWiDNPyL6vwQ5m1U=;
 b=B+CiRTR8IcNqbr38NRxzENF7mcavF/bJZztLTzTJ6koYbnk4uBVXGIFQKV8zzJM5cHcz09ifN0oWvblfUf8O8zpZxA/SJhE0wSwLL5GtqovO/E7Xq2HlNPu7ix774hLZXwRFqzKEEM+Y0VUqdPjMvsjlosfnAcxLnTVnXBCIfp58haSbudiYLVkfrRvU2AXYNeH39xbBJfgNAQ57dAPSpKjRWn4fx0cNHQJGnmGAQlFLOGeBZgqUQe9S9PKKWA7x7jQagAerHXaucXhsBnBdrQVbWZ2eNgfFNcino7tPkOtYPto8X1RnqQNL49uVqr1U8aV+B6R6LubgHTnQo/Di8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H+TATT5xJGXjmyvW4M8wa+Ymb/1NWiDNPyL6vwQ5m1U=;
 b=fntWZW2VXn+Mi5aCmYtcvYHdG0xVuBduXpRw1T9QEiyNopWmW9RUtaazlbQXAZpeyoGSiojG6hNVTZqvK8tex5jNW3EjeWQv6I7AaaIdhxX7EkhlFfNeqQhgtV9t+r50wtVJGWxMimtIJT47l4hLFDEDI6UvN57kv9+hdpfuB74=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 DBAP192MB0889.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:1cd::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.14; Mon, 8 Dec 2025 16:50:12 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313%5]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 16:50:12 +0000
Message-ID: <6b1518c3-9d8f-4310-9e28-6661cbecdeca@westermo.com>
Date: Mon, 8 Dec 2025 17:50:08 +0100
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
X-ClientProxiedBy: GVX0EPF0004F090.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::629) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|DBAP192MB0889:EE_
X-MS-Office365-Filtering-Correlation-Id: 124da44c-38a5-4fc1-6226-08de3679dae9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmZoRWpGZlZIU0FSdVRwbEZleDNCSXA1c0ZDNFkrSjY0R0paYTBnVUppZXZi?=
 =?utf-8?B?WGtNcEwzNUR5c253OTQyYzNnenRXd3RiRWFYZ1RuQjdNZ2FYazBBK1p1UWRK?=
 =?utf-8?B?a3RHSXpJQjVlNnYvZHE0ZlBtdlZmampTVmRmdVVGSGc3Y0JHQ1liV00wbGZu?=
 =?utf-8?B?VDFwcm9vMjRDQXZiRjh0Umd5dXc0TE45c3luR1JTYzg1ek9wMnF5RXhlTTgx?=
 =?utf-8?B?TVB1L1hsUnNwMkdzUXIxaUhodC9mcVRtQm5xTnZKMGtBZFovL3N0TnZaTXlM?=
 =?utf-8?B?a0VIeTBHeHFKVGJXWG1rRUN5QjEybndkNDNlTDBZOEpCWk9zTXdkdWVZTXJn?=
 =?utf-8?B?djN4Y1V4Z3pkQmFZL2dpUGFLQ0p3cnVjcGhqZ0NBZEdIOGZsdVlLSmZuYkxp?=
 =?utf-8?B?eUZBQzFZdUhtNEovb2ovQmV5bXd4ZGpuak5yN1phdmd2RmNmZUdEbGxvOVZN?=
 =?utf-8?B?NUJWQVlBUXB5RUwwRkU3V0lGSlFQakgxMGpIdzM2T01idzd5dlM5S20wV2pM?=
 =?utf-8?B?WktHWm4zUVcvVHN2aHh2Y3czaGwwOWFUVG41MWZlUFZMVFBrTkpQa0o0TGN0?=
 =?utf-8?B?UDBWZ1NVQjlzY09GMXJoNEJ3RDM0SU5PdVZ0MkxZSzNiOGdQZlBySzROa1Ev?=
 =?utf-8?B?M2k4OEhsZU9vN1RvY2NCRlhvQUtUM3lWUERDTlJpa3VQMENTUElkZm1VeEtZ?=
 =?utf-8?B?SWtQNHdEbEQ1bzEwdlFubzdHSXBhYkRPZ2pzSG5GaTdpTHNLOHFzcEZVQTZC?=
 =?utf-8?B?cDUySEl2djNQVEdsRnM1S2Z3bDhnekg4OHBRalpmMDl0VDhGU3IzSVJGT0dV?=
 =?utf-8?B?dlZCbjNuU2ZUeGl4U05naWM1TmdKSVRxQldkWHh0cC84eDJBYkZaUXNzYlZH?=
 =?utf-8?B?WHlzeUVmNldVSGt6WTEwWlhRRWxhYW9iY1hGNExVRUl3UVhkaGxrbU9aTjgx?=
 =?utf-8?B?c2NybDRxZXdwRUJUNkZUdzJFWkFVb2s1THFETll2djZ2anRRSnhsOVJObUNX?=
 =?utf-8?B?cGg5cS9BOUQ1Q09nN1dybzdrZ0lKL1dRbGE2bk1rUFkvY2RjeERIc1VoYjc5?=
 =?utf-8?B?cHlLY25qYk5iYTNUZUFIMFpPTGZUWFk3eEtQY3FIUW9IdWJlK1FaZmRQaFBr?=
 =?utf-8?B?dFZ4bll3cFdpQ1lISjVob1ljamhVNkpsNXZYdlVnU2Q1M2FMVEdrVXE0WE90?=
 =?utf-8?B?UWdsaHdLSjg2aHRRaHRFdWJxdWdHN2lFNVlDTHUxaE5uK25qWFBBMmdvOWJX?=
 =?utf-8?B?NlplRmRvZXdrbS9hTFBaWWJOUEZQWHd1SVRUeWNXaFhSbUt4Zi9JL2lQaVRy?=
 =?utf-8?B?ZldESUJibmVBbmNiVjgzQmVpYTRUSi9MWDZ4SHhBeXJxdTNoUGF2ZG9kT1ox?=
 =?utf-8?B?TzdyOTh0c2VaeDdhdjZYMW1HR053b2pscUNhRUFhdFM2ZGJ1ZTd6WWZMblk1?=
 =?utf-8?B?Rkg0WmJZeUZ6eTlPQVFlcHVlUU9uY29icllwOXdWUUk0VXNjQy9Odi9GSEhJ?=
 =?utf-8?B?UDlaUkJVRzdDeGRuMVZCZGZqWTlhUWJOSFdEVGlNVmw5dnB6SUtlV252RWh2?=
 =?utf-8?B?UmJKc0lUeGlXYm9rd0FxUUw0ZC8rQXc0K0ovN1N1Y3FiWmRCUUp5WHg1V0Rh?=
 =?utf-8?B?REN2QjZ3NURPb1hsSG52Ym0rdGlOUWltVmRwdEpuWVRwRzFGNElEL0RMamp6?=
 =?utf-8?B?QUpGcUlSYndnQTlsQ2RvVExaaFI1ZE1SKzhPL08yY3VzZE96VmE2S1FmWmF0?=
 =?utf-8?B?dEU0WjFBTUd5R29YTkVmS3gvK0pYSFJ4UGI5NlIwZU9PVDAxQzhOVjREb1A5?=
 =?utf-8?B?YTZxNUhHSllPRzUyd3J6RG5YaDRuUnZYeFJZbHY5aXdrMlppS2JZTTUwY0dT?=
 =?utf-8?B?Ty9GTElYM2hYa2dKQU4velgzamM2R2M2N3RDYWNSOWI0VGdjc01ETmszMFdV?=
 =?utf-8?B?SmNDZ3BsQis3dlJobjRaSURZZFE4aEYwbDVVMDdiZHZmclpIRkhuZWZ3Nm1H?=
 =?utf-8?B?RWFKdFJTaWZBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVRKamZ1NldnZlJmVElJQlVNSFpCUUNqZlFnN0JrOWdiK0wxWjYxZEg0Q1VX?=
 =?utf-8?B?V2FEVHp4N3hTZU43QzRtVndLKzhJSjJtRHBLcXFmMEVzQWY1eVRsaWhNdkgv?=
 =?utf-8?B?akQ4MlVtdDlsTUcwSXFhY2ZvQnprTjRCWThqZFhJN080eEJ4QjhzcjRNWFE3?=
 =?utf-8?B?Rm5JdmoybVRkamg4VDFlZmpIdmVxdjUzNFhTdm1xUENSeERKWFBFOTdBbGNl?=
 =?utf-8?B?K3Uyb0ZscEluelk1SWFya3Z4aVFqMk0wdFJGOXpBZ3ZrTXBkVGlna3psVUUz?=
 =?utf-8?B?eW8yTGRxajRpRUxQWDNURjVMeXBsWkdBcXVMeHBXWWMvZitFbnlGTG1kc0VJ?=
 =?utf-8?B?TStaeXBVVTdUeGVCNmthWGhOVE5BSTNnd0NBV3lnS1J5bW5YNFRuMUJ6b1F6?=
 =?utf-8?B?bHVBblZmWVF6T2x0YTQwcGlaWndraUJQUnJmdFhyUGJxV1c0WXNyallraHpy?=
 =?utf-8?B?Vk9TTENWc0Q2SEhMMnQ1OXhBUm1hZmpuSnp5VEcvRXZkUW04cEpGWW5Ea3hJ?=
 =?utf-8?B?Y1UvWk1QVVRVVC9EZDFpbzJPV3pkdFN4QlJMbUJudlJhY21yQzRNRlFLd1hm?=
 =?utf-8?B?NHh5NXpIUzI3Q0J3bkZrdTk1cUt3RzhDa0taeC9TQzI2TTI1cGNtZWY5ckJV?=
 =?utf-8?B?Y0lrNkw3VmxyTkpPcEpnbWJDRTJSamNmYjlHcnNROTJCMDd2dEQvV0RQUXJj?=
 =?utf-8?B?eG1lT2hHWDRzZnpvak15U1FOMjBKallJZTQ5V2hPYS9VeDZzTnI5eSsxUXlu?=
 =?utf-8?B?eXAzNFdtSmhReTVybm1ZY05DMTZhcFV2eWhTK2V2akMxUGJuWGNrT2VNaGdR?=
 =?utf-8?B?aWJ2Mlc0SE5iVlo4MGIvSzZXdkRsZnRZclI4L3pxRlRyQVhLVEZxck1XeEV6?=
 =?utf-8?B?eFowNGFqKzBsRGNwZmtiZXRZRlhPWXlKQVdRZ2NncHNuQmVqb3dnQjJUV0xK?=
 =?utf-8?B?RzBBODZzeUVucXkxYUFJc2tmWW9uZ3VCOFU5N0Rwai9PR1kzeUM3YUtpOURR?=
 =?utf-8?B?RGVOUVhQbCticml5VUg2Z0NnNHUvbHJma1RRVXZ0Vm9KZEw5RFZnL3RFbTJF?=
 =?utf-8?B?REhxdkpyQU91eXRvKytPWE9NdmdhR3d5NHFSQUJVT3ZmVjFJcnkxcmFGbUtY?=
 =?utf-8?B?TEFwRGpaRXBIUGUrUlJ4b29xbi9RRVB2cjk3MmRWYWxHWlB4V1UrcXNqM1pk?=
 =?utf-8?B?eVBDM1FaVmUxR2Z5L0RPdzdNZ3hvNXhGazZkS0VoeUlmbDdNR3UxRFF1Ris2?=
 =?utf-8?B?YU5RWEhtWHNlR3V1ZWtGTmFaWjNHQ0VqK2Vta1RoSkJZTXNYQTNtQS9hVURw?=
 =?utf-8?B?cllwQ0lhQ3d2TkhmS3ZKdjlkSG9rV1JOT1A2RThjV2grWTNjM2RsY0xwbnQ5?=
 =?utf-8?B?NGEyTXlrVjNOcUFGc3FwcVl0QWd6L1VhRGpTMkk3NXdyVDZiZC95cmhyRXcx?=
 =?utf-8?B?WGtEWFZPM09QOUtqazEvMmhFcWNZRVdPVTlxUjJ1aHU3eWNzeHZJa0l2Y1Fv?=
 =?utf-8?B?SmFSK3lKT0N4Q2NnVFVlbTc5UVA3UjN6R3pUZ2k2b01LWXJXTkczM29vaXVS?=
 =?utf-8?B?dVBxM2MrMDUxVEJsNmYxNDVEV2FsWXN5eEhMNGNDZ2p1M0J3MnRCektXWS9K?=
 =?utf-8?B?Wnkva1hXbXViYmc4VGNpY3lTZEFIT212N0QweWIzaEN1YUkwV2RsYVNtVTRG?=
 =?utf-8?B?aFJIeHV1bER3bWtwVjUrL3VzLzhPR0xndGNobnVQcm5jbmdFci8ybTBmbktX?=
 =?utf-8?B?R0E0akw5RVFBYTkxRDlndmt0citRT2QrNE9ObkRtajltMXVSa2hDbjFGbEpw?=
 =?utf-8?B?VEN4QWhvUWlZcjgraStYNUtkSDdqRCtKa3BFTUlqQ3piRGY1ZU0zUy9tREZ6?=
 =?utf-8?B?ay9VMGdVemE2UU1oMkNTdVgvYWxpVFp4SjZ6bThkM2lKV3JmMnRuMk1QZ21D?=
 =?utf-8?B?VlVwR29FQ3BIUWlPZWIvZktwdzliUkhGTGVtcWtBSmxvSUZnSTFTMWpiNUVv?=
 =?utf-8?B?WmJtM2VtdWpQQzJRWE9nSUU3RUtDK1AzUjhSSmp2NWdJbmR4aTBnZnR5Lzcx?=
 =?utf-8?B?eFpkZERNcjBiS2c1NU9VOTVIY3ZVeFFNeStYK2J4b3BrVVpzcDJDVFNRQXBZ?=
 =?utf-8?Q?EanyO1vHQ3Brts7GDnAp9/IYv?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: AJEz+4uiY4popiapwvhf6AJkCt2miKWB3kT6Cb64TkIXJe3GU/pTG3qi2MwBbvI0QyDfJ9KDjXnTPdG+dBY02BLjWva0rZOspxcRywUqIBLK0Hpq6dgT+s7+qiCAm1R60XqReEHKhSsSoG4g4kRE8Zqw4aNuMzcENGEDdTbpHZvIlNerZaMwXxMwvFTuaNdP73VsaVuYeoJvkc7U06efeBSGUmiepuVpNy0ykd+/8+yJuFuJ0bR+Y5TbviVIlXbyEEbbHR63py1RkffRq96r7h6INtyKklKDY83g7n2Ie0W2gPCt2B4muiSLTWj6qEGJNbUXvYXKcLveSRzNLEdyND4Txlp02QzYhBnHkK1IlfO8F3KFx5uBcMp+TMADevxf2ndilJYKb0fFLzbGcKZcGAM8/1vkdic3J7CQU9kS4L04YPdo8KT3IqOtI3+lNYz67k5ftm26c5nN5UtL5E/U34MYLN/KclOiKmXRJCHLUu+1c54EVtUIZnU6BIMDpwQ0yCl2A4d14iNVnc5lijBSU18SIRorlNgiiiFNNuWcv/rPj6Uhj2bM5xLau8Z3H5iy3TX1SaP64VkOc+ZAS4o5EdbUsiyO58srkSwpqebf0LDUbthqiwzT/NA6RDI/TP8R
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 124da44c-38a5-4fc1-6226-08de3679dae9
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 16:50:12.5792
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lh9gelcCXdniyxf795eElRKL1zigb10nQbhEmg43qsyPBsB9Kz9eGCaI+VWdRpJEbvmGjeDW4RjZB8+XtNnX0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAP192MB0889
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
X-OrganizationHeadersPreserved: DBAP192MB0889.EURP192.PROD.OUTLOOK.COM
X-Proofpoint-ORIG-GUID: XlI0DY_YnWAt0tMkLHjSnIFS0AlxZ_7f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE0MiBTYWx0ZWRfX4OLq9oeZn9gD
 /pWI61xsLilphlbdT5NgoH+3iN1eZUmp7wb9E6Wq1cSyRPq5ih/6oREUe5XvEryAOiZHQ8BhaoE
 w3yj6iMBdemKosYvNLPJUXYZGCbPN4vDZl7QChjLyYIg4avo/L/MIMpN5uIwmHj/szZ0cLGcbZo
 NzHzr2j10LXePSV3CzwSCI8S1/E2d3pXElRRBY9jCXG7u6wOEyE6/M5S+eEqpaQzXRHYuVKm7da
 CD2fAla0elDN2WzhjPr68Xcuv8rmqDRibpuKLyeW2JXQjgSxlDaos0hziY10qc9pCSdmZ64b66R
 qPjuQqQDwCxMRhKJh0kOC+FpTmISkcdQGy8KgjWh1NfFthpgdMa+vREPtPKKiivvLVgy/e8YEHW
 wQ5UnFDNMOPkoPCnzXqHWsxJ7BB+iQ==
X-Proofpoint-GUID: XlI0DY_YnWAt0tMkLHjSnIFS0AlxZ_7f
X-Authority-Analysis: v=2.4 cv=EK8LElZC c=1 sm=1 tr=0 ts=693701c6 cx=c_pps
 a=NDlXlHM6WrayTpZMBqf2Ew==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=PZlmYtwksR2KM74-Y-0A:9
 a=QEXdDO2ut3YA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_085021_380914_6E53BD15 
X-CRM114-Status: GOOD (  11.28  )
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

On 12/5/25 13:44, Vladimir Oltean wrote:
> The latest is
> lf-6.12.49-2.2.0, which is what you should be looking at. 
On Dec 02 you wrote:

    To integrate the Lynx 10G driver, you'll need to do that on your own as
    patches. The correct git tree used by Layerscape boards in Linux Factory is:
    https://github.com/nxp-qoriq/linux/tree/lf-6.12.34-2.1.0

But since lf-6.12.49-2.2.0 is newer I rather choose this one.

> The truth is I don't have something ready-made to give you either, and
> some assembly will be required. The Linux Factory changes were made in
> chronological order, and it took me some time to disentangle the base
> SerDes patches from the backplane link training work (which require
> their own clause 72/73 API which I also had to introduce), and the
> resulting linearized changes are in my personal net-phy-upstreaming
> branch. If you want to take a look there, you can, but you are On Your
> Own in terms of figuring out what you need and integrating these changes
> into OpenWrt sadly.
I'll give it a try. Thanks a lot for your hints! I'll come back to you if I have questions :)

Regards, Tanjeff

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
