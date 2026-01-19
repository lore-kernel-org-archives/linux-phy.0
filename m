Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 639CDD29C2D
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 14:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ILkMzWl1MSF+rkP3ptNo0lQEY79tBmm43OtBi5TEpJU=; b=DmE7qM14PQ1cM59Wo6uZxarKdu
	SyWfWZWvYIPBEXiTOfyIY2RkbmuDbPW0cN7lFGleN3EjIrENw9Kz1Lf/q5QnAZLwQht3rHxXpHEXK
	+EStuHEI7O4abYjmEGOPpn9aMe3WOeS7/IQQMTWYK4VmhcJ17GBryc64GJ9HlRxrjTQCCqX1axF1t
	+0sKM7/AsebBST73Iav7iUo7nJrj5kF4CtthGXNB3uAsc+NkPeR7GlPaF3W1ZtlwE1Q6pZSbfbNS5
	tDWUqfKiGNLox1ZbQSd5stvaGgkm/31TYDC0qx71H053VFHOqYPlknsBXNO3zbE11bi5pGECwE6iu
	gV4lyj7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqIV-00000002Gbv-3Vsu;
	Mon, 19 Jan 2026 14:32:04 +0000
Received: from mail-southcentralusazon11011053.outbound.protection.outlook.com ([40.93.194.53] helo=SN4PR0501CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqIT-00000002GaY-2wm2
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 14:32:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jSKbPI2+wfhz0P+uCPY/EkMZGQJv3cCQgCSTUp/tdKbpeD6tN+T+I+56fl2ajqSrrI3Ck/JeHsBiarlEW9K1WEDbnWyEZ/5Ao6th+KpqmisbVdERz9ybZKHADpFCAM42adRHPnnREJfchZZhIhlXhGpei7PnHu31Tx9bEJkzM1RYXoGl0dNsHYW2rSgedbxw+C/hmWRd7jDsyAc7QxiRznXzhFJ0c8BKWTiF0oNduGr8xD5ggCmzYzSUEewmURmppu5KhM8e8xwpDm+iQmACZd5JmWldgW2kmspDYxJ2bTREKWVptne7m0sybT4KzA5LHIEjaRgDoCMcwhNPcyhqnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUt4rMheDTEXbzwVsShG8Zeau0zpWrjvxjTPYK8ZzXU=;
 b=iHYiHmpQcoGeTQ7Pc112Bhcgu0PjO5NdIX1K7QkXKGAjI6BFtUnBYL/sEcgi1ixBbsL/wWoZzAaY1mFbz93akKycRYL4joGnE5fENgm7P2rqlnH6ntEMZ6lNlo/yeRXyb17xjsyI+Sa3EhOUaM/D6colwTnm38k1jufFsT97tPZS9I6Xz/So1l3+IDIN4oLEQ5LNTdEGQNAyLCeaX735GVxzJOM7vu5EfNy8Ui42L/b9t8IuYKpD4lE6AGjcBue3hkNUrebxkgzWtL3qYGyc5UGDyTg4U2QsqXfa3A7TBJVgZ6X9QSgRlRouwfXXLsj4R7MQK5ahHuMwdJaeSgjHtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUt4rMheDTEXbzwVsShG8Zeau0zpWrjvxjTPYK8ZzXU=;
 b=bsl4IaTAUq4JPhlW5lt9U8uXjidNM18hqjxiizGs4Gbb+8nxSNTmIlW7Yo73inftrHqSDRc0P6qWV/x2m8/cnhjUxexUamqCdwngMQ7tXWjVc3YY0kKXCQ4oJZViNSLHeyhYvOqnKDfd2KCoAksXZnF9lDuJtoZ/u1BNywc2aUNd0Ax8o9f7RFtBvaL2KHql8NO933A+nZ+Tij8inUGNw9pwTxVHHiGscDUI3z4Ppn8j0wSu9aRsWgZsyJzfQdcmrsVIUvc2IwzZRT4YriWMhYo+K2dcI04+9Adizrc74Fyi1ssex8M3CqZw15g8dEtGjtOQWbeDOl6ZAXaVTAzGSg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by PH7PR12MB7210.namprd12.prod.outlook.com (2603:10b6:510:205::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.10; Mon, 19 Jan
 2026 14:31:56 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 14:31:56 +0000
Message-ID: <dc383e93-0040-419d-9d3b-15eb15df9dbf@nvidia.com>
Date: Mon, 19 Jan 2026 14:31:51 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
 <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
 <64c02ad1-9aac-488b-a846-fcb59ffd3f54@tecnico.ulisboa.pt>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <64c02ad1-9aac-488b-a846-fcb59ffd3f54@tecnico.ulisboa.pt>
X-ClientProxiedBy: LO4P123CA0360.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::23) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|PH7PR12MB7210:EE_
X-MS-Office365-Filtering-Correlation-Id: 9372a725-fec1-41ac-c9e6-08de57677f4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|10070799003|1800799024|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?anJYdGowc2pTc3h2QzJsa3lleWR0VHpDc3pHS2ZZZUFEVVU2eDdkazNyYlBC?=
 =?utf-8?B?NEh2WFYyY25aczlUOFkxbW11VStuUkxSeExVRHpPWFE3elU3TWROK0tsSlB6?=
 =?utf-8?B?cXVFaVI0OVMyNUJNaDl5ODFvNW5xd0NuSThocHBiVGFaQkpRY3FoVmFUVTc1?=
 =?utf-8?B?OUE0QkNCL1VJWXR6SElseU9QVjlHeU1hOU8zTng3ZFdEOU0yWW9YdW9DRjRW?=
 =?utf-8?B?dzBQSGFIbzdYM29ESEZBL1ZGRVhidVV0M3k0bjJaWXJTYzlseFM3alQxVGtF?=
 =?utf-8?B?bFR1YmZJUm9DcmFOZmprMkZ2aHBGWUsrUlp2aVNWTUN5RjE3ZjNRQ0cwcDgz?=
 =?utf-8?B?UU13SXJEU25oL0NOeUpTYUFpeEMrU0xmS0NYbjdXaytGMzhlUS9UZW1rT1Q4?=
 =?utf-8?B?OTRhdTZGZ29MYzlPMlB6RkJRcE8ya2tQVndnZkxSMXJnS2ZJUEthcXRmdHY0?=
 =?utf-8?B?aVdzOXB1eVZwalhGWldBVHJjbTZISW5jR0dNZis3QVBNK2FGaFlXU3BpQXZi?=
 =?utf-8?B?ZnhBMTBxL1hYeWVURSs0cndDdGpkU3poakl0MEdMNG5BTUhESHJiVmpFOXZG?=
 =?utf-8?B?ZEdWUkE5TUxPMzVJQ04wVTB5cjdHUDd5QVhjWkZremtvTm41Z0V6M3hEeEVq?=
 =?utf-8?B?T0YvQ1NWOUxDbTVZZVB2RzdQUmJZVU4wdmxDRUg0bXlIOWF3dWpWSFJqZ0pW?=
 =?utf-8?B?TjZOSmRhTmNEZnAxUWpXdFFPWmFRN1V3dFA1MVdSRW9ibXp6cTc1NjdRTEZV?=
 =?utf-8?B?ejU1US91QjA5Y0dmRTdlSjhmc0Q4TUUrK2xtRmJXRUJpNmpJQzNqTkZOa0ZW?=
 =?utf-8?B?VmZ2N29BcVY2dUlweVovQkJuQk5EUEZ3SlBwNlBLUDhZQVJVTG1UU3Y5NXlt?=
 =?utf-8?B?c0Q1ekE4M0tKWGhib1ZwalEvRUlhNGcwcUkvOWRoKzFnUjBrUDVMTldSa3ox?=
 =?utf-8?B?VlNMWmt3RExMcW54MkM4RjgxUVBobmpCa0Nvc1RESVJpUkZMUlpVMzR0bTN3?=
 =?utf-8?B?eHA1aWwrSUdZbW9nYzlUK2N2UXAwMXpFaWxYaUpGYlRYSmRoekxPdFhVREwy?=
 =?utf-8?B?NVV5bHg3MzRMV2xtbE9sQTNkTWVKeEVYbmVBaUVtV3NodkIvdisxSFI2WG5o?=
 =?utf-8?B?Nzhoc1VyaW9QMWZtQTVveFpJQU13WENTdmlUL09Vd3JhOG02TG5WU2w5dVQz?=
 =?utf-8?B?V0tpYW03Znk2c1ZkSm1SSVJFNmtEOGVaSFdycjJRdStBRmVMYU5IYlYvTTA2?=
 =?utf-8?B?UkpBTUc1dXdWY3UyZC8yS2JNUENZb3dyS0dKSllrOHA3K3JOajB5cUp4NWZH?=
 =?utf-8?B?dGhFUU5IR3BoWEo0MUpKeFhlTjVDam5xWGZKUGxjbzdkU29mbk1UZ0pvMGNZ?=
 =?utf-8?B?OXVhYXpRdi84R1FxSEU2NW5sVWdmUWMxZURMWVpzdjhBUGdKMEJuTHF0c21Q?=
 =?utf-8?B?OXRyWU5BbWIraEZqVko5Qmd2UmMzMnl4NndrY3JrdE5IdU9OWWRtWmVMTkF5?=
 =?utf-8?B?R2FUSXFsa3B6ODVoWTlsSnJ5NUVkU0pZTitHM0xZZEFYbjRxMytnNmVzOFhv?=
 =?utf-8?B?RFR5VjRYWUpvZHBJSHZTL0FiWndMMHFXdzdNdXNSQjVyZUd1RUJ4WHdyTG9l?=
 =?utf-8?B?WUZBYWdqSzNKM2lmUDZha0VpcVFCZWVsM3FBMEd2OFdHZC9PN3MvZFNxdlNG?=
 =?utf-8?B?M3JadTdHM1c1TWEzdkFuc2tTRXlIUWlxMFpaYXFCRkM5ZlNQYjhpMnBtb2NI?=
 =?utf-8?B?OTBPL2RPVDJuc1RUcnplU2VkNHkxWEZDY2UzYjdEWUhuS2xLbW1mdUpCNjBl?=
 =?utf-8?B?V2RJNG1VSEJZMmxMQm9NbjJzNE9vTkY1RXduallsY0xVUnlCTGtFUXNhemZk?=
 =?utf-8?B?ZklmRkJTaG9sZkF2SUlPWC8zdVJBMHQ1MTBsbTk1M01nTXlRRDRscjZKcllo?=
 =?utf-8?B?aXVwQVdrSHJzajQvZjVYVWVTZFFNM0N1TGxCaTJRYUNlWjZmK1BmUGhFdm9D?=
 =?utf-8?B?T0V4U083Uk12RExwZjhtd2YzSmRKVTZTOHBRWUNkQTRGaG15KzhJbTlSTkw3?=
 =?utf-8?B?VitSRWNyUkJ6SnlFcTFDV0E5cFduR0lVSSs5c2J1NHhVN2lLSXZkM1FzaEhP?=
 =?utf-8?B?N3dYWE5tU2ZLUGN1MzFsMGxyYzRVSnd0ck52RTk1N0pOYzRWR0pwRXJZcG83?=
 =?utf-8?B?a2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(10070799003)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXFneWROQXV1SzUvNnc3RVZOa1NJczdQN3RHQkFWRDVrN3NBTG96aXloSm84?=
 =?utf-8?B?aStFUTVPMkNKOG1PUE11MXRXSmY5Y1NHYkVQaTNJQklsREZic1B3Z3lLaU1r?=
 =?utf-8?B?ODFoQmNpOHFtZExmdFkxWVlzdTJ3aE5vSEZCUFF6cmdoS3NVSWc0RzdxOGRy?=
 =?utf-8?B?dklOUGZCbGF6SWg1eVNYbWxSQ09lN3JnZFcwSkZtcTg2ZDJHYnJibVppVFdx?=
 =?utf-8?B?L3RzNGNtaldxZzB3V2I3Zktlak1Mc0dXSmxEdkFZNkcyY0RjNzUrS0pUQ0Z0?=
 =?utf-8?B?ZkJ4Z3F3bkpsQWxxVGtoVWxjQVF5WncxcG9Jb1RRSHVnNG8rZmp2VXdXSStQ?=
 =?utf-8?B?MlBwVVBKQTc0MUtmMzRsWXcyUWhHaXQxanF3R2FoZHdvQUVuVzlCSkFpc2Qr?=
 =?utf-8?B?Qk5tenRkRXV2ZFFrYjV2V1YvUUh2bk16ZmtheThmNHJoVUJPclkrdXlHNmZj?=
 =?utf-8?B?TFNKcXg5ZVVoVGV5Qi9GSml0R05ENmMwMTBzNTNwSHlBcTJ5akFDRjE3N0ZO?=
 =?utf-8?B?RkYwK3E1TEQ2ZVZYRmlyR1FSU3pVL2NMbE5YRlZHRzN5RUJHZmY3V0M0WlU3?=
 =?utf-8?B?MjZJaWNtMHkxQzZ4YTJNb1I4NFltakYzZzJQam9SL2M5WWpYTjAzeG1TSms5?=
 =?utf-8?B?c2hrMHRWUm5RWDVGaWdjck00d0daM3FBVGg2NFRmV2tkSWtETzZSYm5pZHFx?=
 =?utf-8?B?OEVITWEySkt4V2NzMnRrSkxOazg4MjBjOWQzTFRzZ25TbDRjRS9SYlZzQksw?=
 =?utf-8?B?S2pXV1B3d1ZUVzgxZ01ZaW9VcXRtbzJ4KzB2OTgyb0lnV3hobnJ0L2F1dzdW?=
 =?utf-8?B?enBhUzFyMnJ3bysvWjFCbTd0aWlrZU1VRFN6RHlPNXlYU2ZQY01ZalJmQlll?=
 =?utf-8?B?NlU0dUtJQ1JmbkpZaE9zWGs4d1N3OU1TOUNTRDhuWXFaQldGRDJuNjFxUFBp?=
 =?utf-8?B?K3QrTHoyS3hEUEtFS2R1bjRGVGZsQWFxcVo5cWQxVWh3Y0w3dll3d1I4RWVm?=
 =?utf-8?B?MVVYMVlRTWVoVHpIcEdrUGRkU3FmVk44aEMxTHR5OVMzZm9EdlVKTmJpemdz?=
 =?utf-8?B?VTVSOW5BVUNmQllYRzU4UHEzajZERkdOYmg3VHBvZ2p0SW9mZFVqNm82Vlpl?=
 =?utf-8?B?VVhXMjVDZU02d2JoUm5EbUtVTEhIVzBBb2x5Q2NNQ3BNT2E5OVhkNU5VTlNY?=
 =?utf-8?B?QlYwYzVURWkzaVdZTXhPRW03bkplZjNNNEp5TnhBWERSRTZFWU41RTY5N2ZG?=
 =?utf-8?B?QnJWaVBzeStia0tVajdGSUtJNjhzaVI3YlpUdVQ4S3FPMDNtTENpeVVvTFlJ?=
 =?utf-8?B?SXJia2RoK1VhZWpDUDRzUG55dnVPajJwTHBFRVZXTnNDUytjWWZaWk9SS3lP?=
 =?utf-8?B?OFAvZGk1dmxmdks2QU9pa2lCQUdDT3E2ZjlpOFVheXlyNVVRcEUyOWQ0MzJw?=
 =?utf-8?B?TDVsVVljUncyT0twd2V3K0JkREdnaSs1MTN4b09yQzNFdEhyZ2tpclU2Sktv?=
 =?utf-8?B?cEVKTVlyWnBhL1VSUEsxaWt3WFRmS09OVk82UG5IQkVzZ3VhS2g5K0E0aHBu?=
 =?utf-8?B?RGxqdllmellaR3BUKzFqeTE4d1ZKeDQ3WEl0WTlQWVBsbm5qL0NqTVpHNlI1?=
 =?utf-8?B?VFE1MDJPMmNuZlZ5Z2RxaUF3cDRFc2hDWk1JSWs4aEVMdnJ3NllIZGYyc3NT?=
 =?utf-8?B?NUJHRkg5VHVaNlA2MUloMWI3Nk1SL2c3R1FFaHVoWGZXSThUN1Q3SkVMeklv?=
 =?utf-8?B?Vm5KSjJCVFh6QmdBc0h2TjVZdnVlYjJRMlMvQWNNKzE1ckJldU9EcGVyTHFI?=
 =?utf-8?B?ei9qdmhia3pKNXRZb2kweHV6VG5lZU5QS2N0ZGxycGg4aTBKUkg2eW5Id2Iy?=
 =?utf-8?B?KzhJZHJzS25HejU2UE9DWmdSRjZ1dkNyOGNjUExEV1Y5T0JmOGh3Y2ppbjlG?=
 =?utf-8?B?YW13V0xzWlJCdmRXdXRTQ3RIenVGNUtLb09RcXFrQmZWVmIxSlMrbW10KzJz?=
 =?utf-8?B?bWlVOEhndlpHWk1iSVZzNlNDUGF6aFA1R3dCOXJyMEViRzJNVjdxZk5Pbzl5?=
 =?utf-8?B?a1NFcXF3MURuS3RZU2JFRE5oL3UwY0VlSVp0Vis2NjU3NE40Q3JJd3RjYVpX?=
 =?utf-8?B?Z2pNdjlQY1MrRXo1N0lzS1M3Q1VTRzZyM0hxbFlNcE0rQXQwMDIwb0FTMnNJ?=
 =?utf-8?B?ODI5bDF4WTM5VVpFMlVPbm5jb01zNmpOV0dxS1NpZ0pFNysvQ3h5TGF3aXhW?=
 =?utf-8?B?K0ZTSkFqdDhCNCs4YkRmSFB4Wm4ybG9tN0tVQWRtK3RFcFBtUlJRWkJ4RGhR?=
 =?utf-8?B?NytwcmdvL0EyUUYzakgwTm9nUUVuWlhpMEs5SjY0RWovcjd0dlFGOStKbS93?=
 =?utf-8?Q?LuzUzXvvBAUEL+Sje6dp52Yuz+rZ7b0KsPZ5QXPty+4Vz?=
X-MS-Exchange-AntiSpam-MessageData-1: Lesqg1qHk+HJfA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9372a725-fec1-41ac-c9e6-08de57677f4b
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 14:31:56.3997
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EGWjWhriphdQuUa+6I0EBXaJsPjLye7/v4tBeOF8gKDOkte08qmCpjUlIJ3ppJ06l6/pgIJyD1qEw1LmKHy17A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_063201_742591_5559AC31 
X-CRM114-Status: GOOD (  19.40  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDE1LzAxLzIwMjYgMTE6MDYsIERpb2dvIEl2byB3cm90ZToKPiBIaSBKb25hdGhhbiwKPiAK
PiBPbiAxLzEzLzI2IDExOjU2LCBKb24gSHVudGVyIHdyb3RlOgo+Pgo+PiBPbiAwNC8xMi8yMDI1
IDIxOjI3LCBEaW9nbyBJdm8gd3JvdGU6Cj4+PiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBv
ZiBVU0IyIHJvbGUgc3dpdGNoaW5nIG9uIFRlZ3JhIHJlbGllcyBvbgo+Pj4gd2hpY2hldmVyIHRo
ZSBwcmV2aW91cyBVU0IgY29udHJvbGxlciBkcml2ZXIgd2FzIHVzaW5nIHRoZSBQSFkgdG8gZmly
c3QKPj4+ICJ5aWVsZCIgaXQgYmFjayB0byBVU0JfUk9MRV9OT05FIGJlZm9yZSB0aGUgbmV4dCBj
b250cm9sbGVyIGNvbmZpZ3VyZXMKPj4+IGl0IGZvciB0aGUgbmV3IHJvbGUuIEhvd2V2ZXIsIG5v
IG1lY2hhbmlzbSB0byBndWFyYW50ZWUgdGhpcyBvcmRlcmluZwo+Pj4gd2FzIGltcGxlbWVudGVk
LCBhbmQgY3VycmVudGx5LCBpbiB0aGUgZ2VuZXJhbCBjYXNlLCB0aGUgY29uZmlndXJhdGlvbgo+
Pj4gZnVuY3Rpb25zIHRlZ3JhX3hoY2lfaWRfd29yaygpIGFuZCB0ZWdyYV94dWRjX3VzYl9yb2xl
X3N3X3dvcmsoKSBlbmQgdXAKPj4+IHJ1bm5pbmcgaW4gdGhlIHNhbWUgb3JkZXIgcmVnYXJkbGVz
cyBvZiB0aGUgdHJhbnNpdGlvbiBiZWluZyBIT1NULSAKPj4+ID5ERVZJQ0UKPj4+IG9yIERFVklD
RS0+SE9TVCwgbGVhZGluZyB0byBvbmUgb2YgdGhlc2UgdHJhbnNpdGlvbnMgZW5kaW5nIHVwIGlu
IGEKPj4+IG5vbi13b3JraW5nIHN0YXRlIGR1ZSB0byB0aGUgbmV3IGNvbmZpZ3VyYXRpb24gYmVp
bmcgY2xvYmJlcmVkIGJ5IHRoZQo+Pj4gcHJldmlvdXMgY29udHJvbGxlciBkcml2ZXIgc2V0dGlu
ZyBVU0JfUk9MRV9OT05FIGFmdGVyIHRoZSBmYWN0Lgo+Pj4KPj4+IEZpeCB0aGlzIGJ5IGludHJv
ZHVjaW5nIGEgaGVscGVyIHRoYXQgd2FpdHMgZm9yIHRoZSBVU0IyIHBvcnTigJlzIGN1cnJlbnQK
Pj4+IHJvbGUgdG8gYmVjb21lIFVTQl9ST0xFX05PTkUgYW5kIGFkZCBpdCBpbiB0aGUgY29uZmln
dXJhdGlvbiBmdW5jdGlvbnMKPj4+IGFib3ZlIGJlZm9yZSBzZXR0aW5nIHRoZSByb2xlIHRvIGVp
dGhlciBVU0JfUk9MRV9IT1NUIG9yCj4+PiBVU0JfUk9MRV9ERVZJQ0UuIFRoZSBzcGVjaWZpYyBw
YXJhbWV0ZXJzIG9mIHRoZSBoZWxwZXIgZnVuY3Rpb24gYXJlCj4+PiBjaG9pY2VzIHRoYXQgc2Vl
bSByZWFzb25hYmxlIGluIG15IHRlc3RpbmcgYW5kIGhhdmUgbm8gb3RoZXIgYmFzaXMuCj4+Cj4+
IFRoaXMgaXMgbm8gaW5mb3JtYXRpb24gaGVyZSBhYm91dCB3aHkgNiAqIDUwLzYwdXMgaXMgZGVl
bWVkIHRvIGJlIAo+PiBzdWZmaWNpZW50PyBNYXkgYmUgaXQgaXMsIGJ1dCBhIGNvbW1lbnQgd291
bGQgYmUgbmljZS4KPiAKPiBJIG1pc3NlZCB0aGlzIHJldmlldyBjb21tZW50IGFuZCBJJ20gbm90
IHN1cmUgd2hhdCB5b3UgbWVhbiBoZXJlLiBEbyB5b3UKPiB3YW50IG1lIHRvIGNvbW1lbnQgb24g
dGhlIGNvbW1pdCBtZXNzYWdlIG9uIGhvdyBJIGNob3NlIHRoZXNlCj4gcGFyYW1ldGVycz8gSWYg
c28gaXQncyBhcyBzdGF0ZWQgaW4gdGhlIGN1cnJlbnQgbWVzc2FnZSwgSSBzaW1wbHkgdGVzdGVk
Cj4gd2l0aCB0aGVzZSBwYXJhbWV0ZXJzIGFuZCBpdCB3b3JrZWQgYW5kIEkgcmVhbGx5IGhhdmUg
bm8gYmV0dGVyIGJhc2lzCj4gZm9yIGNob29zaW5nIHRoZW0uIElmIHlvdSBtZWFuIGFkZGluZyBh
IGNvbW1lbnQgaW4gdGhlIGNvZGUgSSBjYW4gZG8KPiB0aGF0IGZvciB2Mi4KClllcyBwbGVhc2Ug
YmUgZXhwbGljaXQgYWJvdXQgaG93IHlvdSBhcnJpdmVkIGF0IHRoZXNlIG51bWJlcnMuIEllLiBi
YXNlZCAKdXBvbiB5b3VyIHRlc3Rpbmcgb24gd2hhdCBwbGF0Zm9ybSwgZXRjLgoKVGhhbmtzCkpv
bgoKLS0gCm52cHVibGljCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
