Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4E42CFD2F6
	for <linux-phy@archiver.kernel.org>; Tue,  2 Dec 2025 11:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:From:Cc:To:Subject:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YqYtYHlyxwGr9Tpj75Ui/PhE9NedmST33exRpF91u1U=; b=1h4E0AZNQm9HV68EPeduXPCptH
	oAqqKNgfe89O2CwRQrY++ZFuUBDBozJVBxxEm3Ye9xrlYMV3u7wF24lflx6r8stXiKoQNIeCX3anX
	M0cqmXP7y4rIy4Pj21ZhFD7kLFtlb3s9QtUTzylgEDXnQChKKJKTzr1vFQLQ/klefE8qG7jWN77p+
	hPX/PyBQ1y80yEy8o4sGU7wsAEnEA7BhEj0IZ/4zRH3/rIRrnkUKx/5Dn0x4hCxDvNAQfQDj2xLnc
	9pijD/FCXMmv68qVcJOwpi8cAJS6+qTcAllM1YHukaaVat13/NpiiMLJD4wi7VTEAdBh8A48nXavn
	3Up8J0Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOJ9-00000005Ijr-0mmk;
	Tue, 02 Dec 2025 11:12:35 +0000
Received: from mx07-0057a101.pphosted.com ([205.220.184.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOJ6-00000005IjY-22rT
	for linux-phy@lists.infradead.org;
	Tue, 02 Dec 2025 11:12:34 +0000
Received: from pps.filterd (m0214197.ppops.net [127.0.0.1])
	by mx07-0057a101.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B28Jx2K1153505;
	Tue, 2 Dec 2025 12:12:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=westermo.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=270620241; bh=zrP+QTEND/855jBVdLGZv2
	GQCrx6VC7ZX1beTbcwITE=; b=Xe23hxy9ewrdWw+qdwnr1vKvr6ZKxu/F4feWvT
	ykF0ig3ubgo54fQCGGpY8Ru95f53ZZeyuSx6khRTXS7aSQZHUw+H3lJr1V2ihhHu
	X6PiX7V/QrNKTKsnVLUQPWT9G72A83RdGNjtYJQkxskKQ2NfSJSzjqXfF1X+9CaN
	K51n/S3ofwZ1rJmyapPSB+yvGYQ4iUEuA9fRKbL35ltoTOJUsf4zcNAEsrqjn5eV
	TdNiyhQnk420s7Rptig9jln6HmWEfUE1mObdqig546GbDtsI6weYya3YD/w4Bp6n
	0rORlAB6IIAkeCoVEoBZL5Uz+eIPwnHRryNUd1VJeQR9u9GQ==
Received: from am0pr02cu008.outbound.protection.outlook.com (mail-westeuropeazon11023122.outbound.protection.outlook.com [52.101.72.122])
	by mx07-0057a101.pphosted.com (PPS) with ESMTPS id 4aqp2cb49d-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 02 Dec 2025 12:12:30 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KEPfoFX5pz7qc13dpVBQ1/1dIZYMIMRPeMmo0/WcPqOHt+IErYpZbJbtpqjCWfB3iacCD8HwYnQi/GovdFBu/6wi+5wtYPzaYEVtFfpIyYO33HapXfaGD7+bzqqaRubXzRRH2T9XsyTPfjPAzPGvQjzLpKTY8zzACf+HyrKlZ7XvwdCKygwLKNuXj0czZCGAyf5FPKXQRBB5QLH3nFsBe/y45JakgiGVEXrB9uE4NEWr/p3cRSvv61CSm8FPejBGV6pMtuU/c59CeZMlimpGUssckDZL+VNQ+SZpD7R5X9o+08W8Z3hnWZ6kK3FJmPpsxaY+ukRYHFxWHWWKQiMQGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrP+QTEND/855jBVdLGZv2GQCrx6VC7ZX1beTbcwITE=;
 b=xqtHTgseJqivyO46D6r1s1z63cYr2jPfQaFEIbUAgfmAgvDVGk3m5uUDQTyQuXdcbsswKQ4R427qxZ4AUjauscoTl41Jc724h6Y9CU9EfZ8r6rG9q5LGsUtcI8p9WMwM9ZVHGoYymIEWNCxP1PMEujdNRerYA0ZoxeJLFRZnMGogf1rosbIIeAP1AJv7oiKNWIqnm/Ol39vwv3SDpjRgpIUp0L5PUeooJk1LdELBqOMe6rQs8toxO59cLy1fdY54H7tC8ECbQ7tUurb47qh6PgbW2d5qullyp7C8Ufi5ABsT8LHYw84rN+ikL+TvVwq1amKlkdH2Brv3Z30FHKsTbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zrP+QTEND/855jBVdLGZv2GQCrx6VC7ZX1beTbcwITE=;
 b=WntjnN0P0WPB1Pb3kvSC30u5PiZ6aGHw1QYLSPCtIwwjdUoX3MXn2PC6mSnx8R670mB8e1yl9tzkYfqw1FHmxmCQnenQbh+Nqp6ZEwVO0LUg11QZhDJvXkDUJIkX3EFLECmg6NVTYrer1gFmXgaDmpincNMKUsy6LK7E7KfK2sI=
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:5a2::5) by
 AM4P192MB3251.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:6e5::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.17; Tue, 2 Dec 2025 11:12:28 +0000
Received: from DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313]) by DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 ([fe80::2fe7:101c:b862:7313%5]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 11:12:27 +0000
Message-ID: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
Date: Tue, 2 Dec 2025 12:12:26 +0100
User-Agent: Mozilla Thunderbird
Subject: Lynx 10G SerDes Driver on my kernel
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Content-Language: en-US
From: Tanjeff Moos <Tanjeff.Moos@westermo.com>
X-ClientProxiedBy: GV3P280CA0084.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::17) To DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:10:5a2::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0P192MB2856:EE_|AM4P192MB3251:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b625f7b-42f4-4a71-e8e6-08de3193ad87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Zk8xWndRNjkreGJMMnIyTU1CZ2JMSWRGUzBIQlFBa1JsRnUrNTBldXAySll6?=
 =?utf-8?B?cGJGbVRtWjJSNHk5RkVGOFpMUy9hZmU1MEJpZzhSNXJOOCt2K2MvNjQ4MU1U?=
 =?utf-8?B?OEhYQkZxRXdpSDkrbytqclVJWFMyUHBlWCtza2xyTnFCYzVHT0duOENDSnN4?=
 =?utf-8?B?UHRydi9FZlh6dHA1OXlmdjFadEFETVNCYngwdXNKYlA5YXZRQmp0K2xhdHA1?=
 =?utf-8?B?SnpPQmV4dlBvM1NqeUh1a2x2a1dFdXZqQys5UlIxTUhob3dqd2laaXNwRzB0?=
 =?utf-8?B?S3ZxWktJKzJEdFg3RnRHRkJYSnh6c1dVUDhoNG5WUWgvZ3hMWEQzbkt4V28w?=
 =?utf-8?B?Y09GR1RGTlpqUk9Hd3FBYVdYMnYvTUVZdXMxMHZTVVlOSnFCaExFRzI1K1B4?=
 =?utf-8?B?TGNyViswV1ZCUGt4dTBYRXZpaUpORTJ2dktYek9zUG5ZOG9NbFAzaHBQOUw2?=
 =?utf-8?B?QWFrMkJOejNlM0ZnMXNpR0FQNXpZbmcrYnBzYnZnbXVlckF6cytCZnlUWFlk?=
 =?utf-8?B?SUZEclFMd2lVQTFwdkQ5TEkzcm9hUnNtcUROU0VYNkN4Z0t0dkNKQjhNM0lF?=
 =?utf-8?B?UDlnWGFMcHM2M2pzZ3JjNGM0VUw4dzFaOTRXT2NObmFvQnpUc3ExdFRHZDZW?=
 =?utf-8?B?Q0ZCUmVFaWZWdUpkUG1Ka1J5azdPaVZrR3BkTU1qcUdISVU1cy9YdTMxQjZv?=
 =?utf-8?B?cmNqakhJc3g1MWdRdHE4aUtjUnVRMUFoNWtMTUlUeUM3eVV3NzIzU1lOT0R5?=
 =?utf-8?B?eWt6ZG5laURiUFRubTU0ZDZ1b3FsTDV4cXFsOGVXYTFKN201c0t0Uk5XSVZn?=
 =?utf-8?B?aVZWamJyL0hNTlJxTm1XRk1qTlpKd0lmWUMwVExOZ25Pdk9IZG9JZEtuN0w0?=
 =?utf-8?B?RWlMVE9yemlydTd5SDV4VnlHZEhyTFFDS3pDam92ZGFCU1pIOTBxUGVHTFM2?=
 =?utf-8?B?aEREY0FaaDFiY1ZlcHFVRDZTZWl5SUxkd3g0QkY0ZXNCeFZBaEczaDU5Zm1r?=
 =?utf-8?B?YlRiNm4wRVFZQVl4bVV0aTN4VXY4cGtTVU8wODlMcDJ1dzdDZEZPTlZqSHZn?=
 =?utf-8?B?K0wrMS9CbzBvc0hJWFRjK01RUEVjdVRCVm5Ub0FaWlROT0VUVXVMZGl5M01Y?=
 =?utf-8?B?T200UDgyQmMxRTlEbDY4c3ZFaUVha0ZEa1hSbDlIa1JYZ2NtZkZwT1dnYWRj?=
 =?utf-8?B?UjRsTW1FbmJKTTJrQmU3dVg4emZpSUtoZElMWHVYdGNuTlZIakNPaHVzZGRN?=
 =?utf-8?B?UG9KdmFPY0V6SHkxSUlyYmxvNGorMmF1S3NOZ0lwQ1J1SmJZQXgzZTNVeFpD?=
 =?utf-8?B?LzROMEl2ckRJUzRCWTJMZ3ZVc3ZYRzZDUS83dWQxeHJUcGlDSEZjaEpSZzcv?=
 =?utf-8?B?S1hhZzNEenVyWkpSazJHRWJ0L24rVlk1b0tjMUxuajFkZFYrVzJibkhUcm1V?=
 =?utf-8?B?U2RHWDZSMmxvRG5vY1FXYUNhV1BTbWpHckdHVThwSFJuazRBMWlXOG80bVNh?=
 =?utf-8?B?RmtjRnI3OWh4V1Z6VXBTMlZCYWVJYVJkdFRTenYvZjNqOHdwOW43NXd3cGU5?=
 =?utf-8?B?aURTNVJuaVlTSkZhREJTbXplc3VybWdMRDRnb3RXN2piYVpsQ0J0MzYyMWlv?=
 =?utf-8?B?NFhqNDhLOWU4V0l5MC9FMUFibnlDSHl1NGxrK05KcTJLYzNhOGdIVncvcnF2?=
 =?utf-8?B?MzBsTDFJZWZPTnN4SXVoVzBKcm1zRVV1ODZ1SG1zWEFKbENFOElJRkoxUzFy?=
 =?utf-8?B?Zk0wRkxhSnAzNDBHNElrMjM1RjR6ek50cXQ4enV3aldZRWhNMjlUcFB3UFFV?=
 =?utf-8?B?cSt5UVhpQUY1dlV0dFFTRFRrOWlOUThCaTUwdU1kbnJDbkc2TFZ3ckY2Rks4?=
 =?utf-8?B?My9DNUdxSFY1bTN6QVNVVzFodnhGN0R0UVNyREhsQ0pRTjZ2UTBSN1pRZ09a?=
 =?utf-8?B?cTEwbWNjbnZSMnpWQ0ZvdlRjbmlxc0VKZVEzeXVPaTZDakJxU2ZkSkE1d3FW?=
 =?utf-8?B?cEF4VHE3ZHNnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0P192MB2856.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFo4UkRQRTU5d3BxTGY5YkZMUEdDWUtRUlFJYTBHSndFSElGenI4U3pEQVp0?=
 =?utf-8?B?RjQzVkprTHdiUUtwaWFpaTBlZXY2NitPc0VvaFdSSmRRTWtZc3JuSXk1Y09y?=
 =?utf-8?B?OWttUTFaS0hSYjE3ZEVpeU5meG85YnRjSkNFTlcyZmpWMlZqOHptWWozd3I5?=
 =?utf-8?B?QXliRXdVd1ptWmtZbURSNEZRZXMra0dEWng0U01YREpZbWhRcCtGclgrWWZE?=
 =?utf-8?B?b2htQTJzeDVSV2d4eXljU0tmVGRrMFpPMXRibnBCVndjY2YzR1F6bmhuNW1X?=
 =?utf-8?B?RW1pN0xGbG4zbjVwRHhQOVdnSUlBei8rR0c1YnV0dWdDTDMyZlo3NEFyVmdh?=
 =?utf-8?B?UUJJZnVoRUZybnVPWlhaeE1wZE9MSXJUcVRvTllxZVBPWnlCdlU4TGFYTENi?=
 =?utf-8?B?Q1Zmc2ZZRThLVWVPZmpPank3aUV5WUxITkVZSXplM1FlL1FZd1FTZ2lsbDF6?=
 =?utf-8?B?RHhxSE50cjJWZVVOZS9oZkJvQ2x6MlVHWDQ2c0dTRWZoNlhKTDNaSlY0cmxv?=
 =?utf-8?B?ZG5mUlg1MVkxdUY4VE9xS0VuMjNqeFpPeElKcVJOSllUcXpLY01oTi9aZGZm?=
 =?utf-8?B?QmhDYnNWVlJEL0lWdXVXdVhTSTlDOFlPNi9pWUc4UVRDRUFHNlBVSVRwcEJn?=
 =?utf-8?B?YVUveHE2c1ZLMHJKSnpMWVdVWTFLNkg0U1RURDFkRUR2TW9hWFhQMHNTbmMw?=
 =?utf-8?B?dDNiQmRkbys0WTdJZ3ZBRWcxUFo3TjE1M0JWSi9oeUtCRzhyeStsOVNqSGIy?=
 =?utf-8?B?eGlSWURabzdZaW1Bd0tzYWxjWHoyZ1hlSkxOcDFDTUxnNlBzYkw4dndzR0hN?=
 =?utf-8?B?OVZieHYrVjNPQzN6VDk2MzNxT0RxS2trNFQrMmRvalhZbUU5TmtmRmE2eHNQ?=
 =?utf-8?B?KzIySjBSU0RZVXJEak1JclVja3VORkJNMndxcEVra0dKTEpjK080MklGQmNm?=
 =?utf-8?B?ZFA1YWJtK3p3TGJCODhlWnBDa2RWNkF0dUg2UTdRc3o4bUVwbGp3dG90bFA3?=
 =?utf-8?B?L1FGdUhKT0dLQXh2K0JzNzQ2UWtlLy9hWE00YUxzL082cUNnV3Y5M1ZpUklT?=
 =?utf-8?B?bFRobGVjRXZPRUVLS0hqNFJmbncvcUFsQVdkdWhmZnZDNlFubGRWSzVXa21W?=
 =?utf-8?B?a1ErKzF1YnNZZEhrV0hJZWV3N3ZtSmRpYU4vb1NsQ0pWaUI3VWJ4aUU2dUpR?=
 =?utf-8?B?cjd2ZFMySDRqUU1GZGlVM2d1Qk1FWElOUGcvdFZOUkg4SEJWNEkvR0xJVXVk?=
 =?utf-8?B?MzBjT0hHbW1LeGRkRjdZZWhMa2Q1aFhyUjhJc3JRc1pGRlJTTHJpbzk5M3Z4?=
 =?utf-8?B?RVZvZEpGbzJObFBBVjF1M2FMV2NBdGdsNm9NNFlxNG1kRGRKb0FMc3QxRlFt?=
 =?utf-8?B?YmxIbVZxWjM0ekpXSzNaOE1BVzBiejZ4RnkyWWhpK1ZuekJKdk5ZSlNDbjJU?=
 =?utf-8?B?bkN4T01TaGdEdzkxWjJzTmpzNWcrdmlVbThjWG1yZlFoQkZkMWdiYnR2VHFx?=
 =?utf-8?B?aHlvVlJFNThKSzMwVnNoNE12OHM5cS9CNEN3NTJTejYrSzYvTHBGenNGK1JW?=
 =?utf-8?B?WElmaDFFZDd1bHViODRCMUdvU1hISVovQU03RWVNOU9hc3doaEYvbHU4QmFr?=
 =?utf-8?B?a0lCZEwrYlhpa2F4UkpBOXl5ZUZUdHZEOVdGOHA1K1FxTHRCZDdlZ2UrTXpO?=
 =?utf-8?B?MXlLdkFNajlCZjY3Tk8wTXBsemQ0bjNNemFCTG56TnhwNHNzR1FBSFIwTW5S?=
 =?utf-8?B?ZVExYnNIRHk1Mm1hVWg4alNYWDFEb3psWlhGaE5OSEZMYlBTaW45Mk5HUHVO?=
 =?utf-8?B?TzlyZWpFMUNqMmMwZzNZRHFUU3kwM2tiTmUwYitjZ2NtWExtSUJkZURpdENt?=
 =?utf-8?B?MTZVQTVrbUp0Z3ZhZ1FCUHFaOUF0Q2t6WlZiaklXRUM1NkNCejJnOCs3TGZo?=
 =?utf-8?B?T1NRb2Y3YzJnZ0YydU1jMFN0UGc1VXBuZTNwK3Q4STY5azBuQkJxSmFPN2Rn?=
 =?utf-8?B?SEJHa20vQXZEOWIzSjJmbCtZYmNxMUdjWlh2TDJ0RWdNby9TeHNZWUo2dU85?=
 =?utf-8?B?bTFGRG84NDd1RzZFM28velBzbHlXVGI1Um5RVmZSS1E3QzFIVzVLVzRnVEZr?=
 =?utf-8?Q?AMlbvNtlBLgrE3nhWExmwPKUz?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3829PXrawAR9K4PS2e7Y+IEbaPPURrEa0aSF1GPZoZjZwPTEIOGRNR4l+VGB13MXsv2VNzfacWW64G60ay6lkYJ00Gxsp8euVb4VJWZPYPbjxNIgdtjT/dWeoRB5V7yeMdbSc2mZECgfyHL41f7WKKP2becoAo/TN+gk1+vddwjhKIsDyYT6W4o1alePZ+kkZuhPu4CJik58fywwsYQP4yyRcGSDwibj5CaZxGZed7jBn4iBkbPyNDcGLjv9wykdin1SBCzLVUFFmFgzQgMbUNyrSbSL/UmkEtKTDAt2L14Iv2O7I0fUnU67gqwy/bEu9PTvkMzHZ0X57hxY7B6jVZSjLMV3RIzXlc3mau/e27JOCtUIau71SBjIjLtD9+Osu/MYEJtdXL8PpqVOAxJL+7bo/akmlye3bQp/3vFa+FhVllUwiSb7UK51qxnRJ1b4XHmuVvJz7eEiBjC3/BR8+zFGCgw3/Jwoq17DBBFZ4Z+AtUpDkF2BpEYlXQA+n6RbqTxoNe/jWIfn4oyCUdhpsuLk9T+RW2YtDauGGM+d5AM7XhQS+CGL5zG4PpupRRi9EF09V6Az51pYqyYsreY9aWL84JI9CvbBQbFDoxtJyYFtAm+pWSrgRf39P9ZPPJAg
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b625f7b-42f4-4a71-e8e6-08de3193ad87
X-MS-Exchange-CrossTenant-AuthSource: DU0P192MB2856.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 11:12:27.5967
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WO7YTWrBQLA/b1nb2u3OzqlB0MxN34WXQBF/4tlVUnAiXMafI2URyEgFMGvxXFfbi+lE79BHCFJ6eDTNt6tIMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P192MB3251
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
X-OrganizationHeadersPreserved: AM4P192MB3251.EURP192.PROD.OUTLOOK.COM
X-Authority-Analysis: v=2.4 cv=TubrRTXh c=1 sm=1 tr=0 ts=692ec99e cx=c_pps
 a=0t1rpaASoZGTC5eYhzhugQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=8gLI3H-aZtYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=k1upMPiJGO1R-4EVG7kA:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: SJJT6cEJE4dJGt1sjDmt0Pm_r5cBr-kH
X-Proofpoint-GUID: SJJT6cEJE4dJGt1sjDmt0Pm_r5cBr-kH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA4OSBTYWx0ZWRfX99BIhnat/N+E
 rFIcnzN0TZE585RuNB8Cy2oRWC1xbj5cj9P6PTgI2DZ/8lcxrSwibmbjqSiFQP0DZuVhHLIYQAq
 pdxpAkbc9qYph0fAmssJYnPQOzGwga417nYUav1H+aHMVuaHDgCqsztheAr8lFdYH+AAyV3Z/x+
 dqL4I6fxPc3+NHnaV5moaTjTjapyfSDEgYUiJ1RrBKrC6aL/DgXo4UOfatbaqKrk7CcyhpNJMSd
 1j5W6phk9sB5xzHoro83i4IjE92uA+1C10QgvJWAxHzEO/lnQBFzXQ0A8RExdzxXfg8z6oPsEjG
 TNpF1fh2RDsPhHhPEPdTyqHBgaM06HGSeGE1ROE/LPlGkjLpsFEJxzYGiqyUworYGLFQvoJKzT8
 RkVoXRTpC6Swhv11hNitJ0ZX6gL1xA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_031232_834036_74753EB4 
X-CRM114-Status: UNSURE (   5.81  )
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

I want to use your Lynx 10G SerDes driver (plus fman and fsl_guts) on 
our OpenWRT kernel (6.6.110) and don't know how to integrate it properly.

I only found the driver in the NXP kernel[1]. Did you send patch to a 
linux kernel mailing list that I may apply?

Kind regards, Tanjeff


[1] https://github.com/nxp-imx/linux-imx.git


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
