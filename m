Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3D3C3ABBF
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 13:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HL9sfTMJsQhluD9NO+Lw8eCQ5fpVN6Yh6fQVH1JfbW8=; b=lStf5+IWXfGtTRU7nI2df600Gl
	Hjf/6MD7OQEvhTbvkFzUCiar7A9oPpFmDMTXh2ciK7jmyPy/hog6tW8Hlx2W41TbBP6d70FdyBnrY
	ubRent3qJ2tr0hvvIUMjwD6Agl/V0vLNoqw59T0Fi4q3Y99CztMaUg0dIXObh+m5/AS3LHDOEke1F
	bWLfwe8ODZmkwQ9nIvaJIbB7ztZC808a+NNBu7QNhKoiqFJFvtvmh+/8/L0sNMCCeYByo/itgtP4E
	2eCLWeWvZxeUhDOZBsTG4TbZy0PKXhiHI2QKDz5w7UzPpPYVxlP7bgdClKoIemwqWwJITmrL2wj/Q
	mNKh+S9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCIKp-0000000C6vg-0W3U;
	Tue, 06 May 2025 13:27:47 +0000
Received: from mail-bn8nam04on20631.outbound.protection.outlook.com ([2a01:111:f403:2408::631] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCG6L-0000000Bf4w-2dkW
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 11:04:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fjCMJSqkqQgSCUemCA7q+g1cnw2rLD6aGS55pl1DwUVf4uQgKgfj7a7oGiDpCefZRB2ORDtA0lMqlqBeZFdFswyJsXbPf75IlPXfWZquEnoct42D+FVzJLm1My98/8DgvFy1B3SaEOUX7IZ+ygIWewqdFO/RVJPpwJz5QcYGxieT0btn/TKZ+9tjY/WRS8LNioMWAGPbvC5VY1bxZPODbSPABVtzR9DNKg4DGhWFyUN+mZpLZnQcYcUovsHpNMz158MPMbzwFsFEDUjV6RquQbIJ7SuLN83JofBuXqIqviX6OMIAu5ajlsrn3B+WuF8VEIFYLBUAikDfZHdqrpkgsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rof/MOk49DfhVAGgwfxe16AxEo5YFpZ62+bZkM4rMU=;
 b=R3NMZW78xMsOaJn49ER4c39+dMw+0HvF0CcoUajwJ4YMl7ReAn0mtw7rxubywLwrOrVcHcWvq0PqrSpYRVXFbmtyamQpULXURwW2NYqlmMtOksAnEWxjeZbdR9bc/bvyNJZmysEESqEO3e7qZQDm0x7Fx9DRtAvBQKLrANdcfv12G8B9GFHpfFdxR34a2C7jaHiCrjQnhOsz6cmUXYEbg1jZYcgUfZUA+Ac/QOCK4IlRuxXX4UHpNhTxkfejsBwgwOIZXYejzK8HNPwsPBh0sBhmyL8vTyjBBw7gFiTeJToyOBQudnCvi+pYi7bfuSwxXhfcBvQd9fId9eiYoD/Yuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+rof/MOk49DfhVAGgwfxe16AxEo5YFpZ62+bZkM4rMU=;
 b=BVvqzmtKW4Rjb7gKSPfraxAQGm8y0utSKD8pimKWoaRlazS/5l1HTFbwzBq9C7OAFq/vU6utvnhii0J1U1I/qggCEQGYnUwthfUFEYT434viZs5TS4kMyITKEnwvn/g0Plwyfz4TloevsUidBDt5EzTeBqYJYCQ9g7TGN4/ErknVVr3sGqoj6Dvw/3ommTKrpAXHvMnhYt6T7gZT2Cg0Kqs2yuOna1JBb6RpP0hmUItn5JqdEWYhqAaPur1eLj2MdLkS/peGUFBZa9Kxt8oXeqxxg/mZzLjlAGqclMVBhv6KuJCQxRMnuld7sBohsh8AWiw7ZdK8Km8XwI7jCc/wYw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com (2603:10b6:a03:4d0::11)
 by SN7PR12MB6863.namprd12.prod.outlook.com (2603:10b6:806:264::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 11:04:18 +0000
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9]) by SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9%3]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 11:04:18 +0000
Message-ID: <53c531a4-5d75-4595-98d3-b3abf1b1243d@nvidia.com>
Date: Tue, 6 May 2025 12:04:13 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
To: Aaron Kling <webgeek1234@gmail.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
 <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com>
 <CALHNRZ9s5EdL3vapyJS4TdT=v5v_QG-=n8ABNJDLU4B-7w+wRw@mail.gmail.com>
 <CALHNRZ96Cs8+gyyb=_jTpvCq--uF3P1s8_m7t25nN_vPx0ELXA@mail.gmail.com>
 <66776953-ef1d-40ac-9d4b-a35a6ebae20c@nvidia.com>
 <CALHNRZ8uXZQObwQBC-sLudUdtprM24qU5yYdb4D3FEP2AQVkmQ@mail.gmail.com>
 <b96ab3b0-3afb-4918-8db8-f6cab45576fd@nvidia.com>
 <CALHNRZ9tgWTo8tUB1+Whf68CYu+qiMhO_S+KC2R0kFbDAjT9OQ@mail.gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <CALHNRZ9tgWTo8tUB1+Whf68CYu+qiMhO_S+KC2R0kFbDAjT9OQ@mail.gmail.com>
X-ClientProxiedBy: LO2P123CA0098.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:139::13) To SJ2PR12MB8784.namprd12.prod.outlook.com
 (2603:10b6:a03:4d0::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8784:EE_|SN7PR12MB6863:EE_
X-MS-Office365-Filtering-Correlation-Id: dc0044b9-efe4-4e4a-8b81-08dd8c8dbeec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2dIM01RVDExbmg0L0VFUlRYdkNuMDc1bVJvRjFMK0hNc3pjL2ZGYTIwQVNa?=
 =?utf-8?B?U0ZvaTlFMzY5UmZjMDRqWDhDSU9JN0NxZ3FNbzV2OFI0czdWQ1l1cUxIZjNB?=
 =?utf-8?B?N1lwY2xqRHoxV0hHNkFHSzlMR1p5UWxrL3FVWUUrK3BoUzJqTTFsMWY5bWIx?=
 =?utf-8?B?THpMMTkraGlwdVJ5UVZmSk1TNzNxTVdvbWtUYjEzeWdpUDRZS29JOGRGYzhh?=
 =?utf-8?B?S2phUXcwM21pT3ArMWhtNU5EKy9HZWdmTnA5cGp3SDUyYmJjRncrMklSdks1?=
 =?utf-8?B?Y0pYS1V0aGYyOFExWVdyUkVoRVdiWXppajdZazh5VXBHMUZxY2lXVTVIR3Ix?=
 =?utf-8?B?RlZkYitEQ0RsOW5oeU9jM2thMWJyVjZ0cmwyenZscnFKTzc0Wi9EaHRLVjdk?=
 =?utf-8?B?T3ZHQjdrUmJSSENKN0xOZkRsYUJuZ1dDaVFZOWFLdS9wVytMbXRJSjE2UVpN?=
 =?utf-8?B?WUdVSXgvaHRvKzljb3hJNUNNNjdTSUl3NnNQbklpeGRVUXMzYWIzeEhHVWx4?=
 =?utf-8?B?dXdaVkxGZWJ6NjlveVJ5dXN4Q29IQWJXZVdUdkY4eHRpVTB1T2tUeXJjVStw?=
 =?utf-8?B?MCtKV1RhZ0RNRE9pL3lQWmZSNHdjcXQzN1ROV2ZWK0U5bm9sV2ZlUWFmRHNF?=
 =?utf-8?B?RGxXZGtYMzQ4U241RUF6UEJEQVFWUTVTa0VUazBzWVlaMHdTUWtjRDJmTS8w?=
 =?utf-8?B?NGxjR3JidFpBOE1GQ1V1L3A4cm0yOFZkTThwNTg2Y28ya0NzaFJLdDNwRjRQ?=
 =?utf-8?B?K1lJTlhvSlpydk9yNTBCWURkNUc4Ty9Cc1VEN2kzNlFpZU5sNzhaZmREQTNI?=
 =?utf-8?B?RWEzVkh2VStqeDBtK2tUaUtUTkdyUUR4dEdUYTI4allGZDBaaGZiZTB6aWZF?=
 =?utf-8?B?SFB6VFpMU3haU20yeGZpT3o2RWJJNXd0Zm5hUEIvVFJtR3lsQzl5M092b1N3?=
 =?utf-8?B?Y3hPekxwZlJNY044aEV1VzVESWlmcEN0UmxTOVVXTnRUWCt2enYrR2ZESElU?=
 =?utf-8?B?TDBpK0oyUWhQMUdNcXp5OGRtQlk4S05xSEEyZVdzQk1HaHFnV2NyZjE0QmVl?=
 =?utf-8?B?ak1ZNzFYeUdoQUVOVm9rTDdKalB4OU01dVRzSHdkdXhiUVZQc21KaVR0VFpW?=
 =?utf-8?B?dElnTEJyb1ZsTHdCc0lmckJYejBnZHhnS1lQU0k2OEZJOXdiMURnWU90dW9j?=
 =?utf-8?B?SUZ6eTNLaUQrWE0vVnA0WXllQnpmUVUwaDFnWU5jS0F6MHNocHlJR1BaK3Vj?=
 =?utf-8?B?UlY5dlZveE5qVnV1bmszNEluNDJTM3VkZWJRaFpDQ2Fud2VuamFQOUdKK2JO?=
 =?utf-8?B?TnBaYjdxK2kwaDJQZmozemVHOEMrVW5NK1RZTVVuMTRWaWtjRWEwVWZhenRE?=
 =?utf-8?B?OGw4TGFrLy9SNHd1TjFQTm9rTk9rSWZlQUQ5dmtxRllKWkkwbnY0RTBrQUFP?=
 =?utf-8?B?UW1ZNUY1cXlRb2pycHpBQUFFSU1HaVdLcEF5OXk4eFZxQU9ISkYzT240VWxh?=
 =?utf-8?B?NWxvM3FEV2JHN3VoRUViY2J0ZWtFVVdJRTEydzFmTTNsWVV2K2J0d3E2UlJs?=
 =?utf-8?B?VGFLQTdCc3NpaVVLMTFzakdMZ21mQmtSajFaRi9mYTlISC8yQUw0OVhORHZM?=
 =?utf-8?B?YU5ZVnozd1NYRnA1ODB5T2lYQTRES3hSMmNiRFBqeWlTRGVWaVI5UmV3cVk0?=
 =?utf-8?B?L3JPMWJaRHRLbllIOWFmU1NBc3Mwa3M3L1JRK3NMZ0ZMNS9wMkQrdmI4c0s0?=
 =?utf-8?B?MUVsc2JQTGM2RjRmTWxLUXdiTXp6OGViR0RtVjNrWkRRWFVkZEpnMGd3eVQ0?=
 =?utf-8?B?MXI5TDQweERyYWJtUVAxWmlrbUJFL1BsK0ZhdVhHV1VEOCtVbXVLT3dMcWpP?=
 =?utf-8?B?UWFMZ0VJN2xYOHBXQ1MrZCtkYUw0ZllqZVBzc05RU1BaMXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8784.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkZhTDRuSkFRMnVvK0ROWnRCalFlN3lpRkFoOFN6MVk3NmhrTnR3WjRVWEtj?=
 =?utf-8?B?a0JiZkF5Q2dkWjZnT0dwWnliOGxMRXFWbGtsMENLVGlNSk5IQmxyQ0ozazZK?=
 =?utf-8?B?QUdneFR3WmUvUXNxajlXZzRlN1Y4SjRtUGh0Qi9VNzVVemNrQmFpVlZRdlBY?=
 =?utf-8?B?Q2svVjcyM2ZSck5oVjEvWmpPdjRWMG5iaFFvZ1J0a1lJVXg1ZEE4dC9CTlRJ?=
 =?utf-8?B?WGRyVjRvV1NCb3kwTmMzTG1SalBoMnBXdjdoSXQ0UEZpYno4bG1tdTlPVkJs?=
 =?utf-8?B?RUs1akU3S2tOa0tFcmJSRE1JUWlCeGxhZFZkUGthVnZLc0VIYUl2d3F5N3l4?=
 =?utf-8?B?U3lKM29ycVhLUzM4N0hVMzVmSWVsTlIzemRPOVM2cDBmOHRTejZ4dGVmOVNy?=
 =?utf-8?B?cHZUdkVZWjZmWjJxUlBzbHNQbXNXN0g1M3g4ckgvUGd5OVNrWGY2Y1RSOWUx?=
 =?utf-8?B?UTZlSjhndkg0QlArek9TdXR6aXcwTlFUZDRmem11dFFwQzZMNmJMbmthU01s?=
 =?utf-8?B?MEVMbFFQWkVYZG80K0R4dUlZbDBlNEdrcEljcDRvZVpPcEdJSlhFVFkxUEpL?=
 =?utf-8?B?ajBxQnVsTzNIRFRmN1lZN3V2c3hZRmpwSzYxSjBWa2lHbVNRTlhiN2NnWUtq?=
 =?utf-8?B?REV3ZGkyOGkxSHl6R2JRQ3Q2d0dxZU5nVTFDTm43cEF1VzlvdldreHJMeFIw?=
 =?utf-8?B?YXBXdGQ4cGUySlJJWENQNS82TjlFK056cDlBV2VBeWZyRFRySFY4TWd2eHFu?=
 =?utf-8?B?b25DcmtuazhGODZtSDkyWHFaTU1HSWZPMVhnZnFUUmpRWVFPUzJiTTc2eHZi?=
 =?utf-8?B?cVc1UGhtRWR4VzBzTTlVdXZaUk9HOVNWelRsR3F2RXVyK0JESGc1VHVEVlJ0?=
 =?utf-8?B?TXJPUWNSaEFhcXpHNnJHSDZoN0RaMkFwdVhOODVnRXFKY2FDYS9mWHBHQXpQ?=
 =?utf-8?B?L245eWRyOGRjUGk4RXlvTWIrMkJHN3ppdXU4ZXNtNE5CRzk5a2xhU0haQk5G?=
 =?utf-8?B?ck5xdnpQMDV0WDl3SU5LZHpSTm1lRWxqanpBRDVRb3A0eFlsOTQ0dUZvNjhO?=
 =?utf-8?B?QmpWVGR3RkozaDY0TTFsUHg1WVFWVUZLbEE1R3MyeVByOG5sdWo2SnRZdWdX?=
 =?utf-8?B?UHlmM3hOeS9Oa2lGS0lZOGJwczVKcEZNRFAwTXgvVloxbC9ma1JITUNxRHJ1?=
 =?utf-8?B?NUFSV2ZPMU1zdWhOY3pkeFd1cDNTVVdaNXk1cXlBSGdZVmV5aTFWWEZ5T0ht?=
 =?utf-8?B?NjF4Szc5SU9Dbkt1akVHbGNuYTJ0TytnRTQyTzZoR1dpcTZ2MllxUk9BODFK?=
 =?utf-8?B?dkpseDZUTnppV3lieXhNY0xHenF1MEZoMHFjN2FReVRkZ1BSUG9ITlZMeVhy?=
 =?utf-8?B?cTB5aGpPdThoS3JjbUQydUoxb3laNFJ1YW42T3hvMVYxL3QxVEJ4SDlMdUx5?=
 =?utf-8?B?VkI0ZDU4L01BWldxaHk1eXFoeXRIdDFaK2xBYXNrSVlOM0FHcElhQU8vU3JK?=
 =?utf-8?B?a1AzSUZONkZPcmRoZElVTU5ndG9xUVdQbE1qMjVSTkluR0JENnhYNU1xMHZx?=
 =?utf-8?B?MHRSRWwxNTZNOHVpQVNiQWRxZ1Uyc2lUVEpQbk1jbU5EeHcwTk5Ua0RtK3pw?=
 =?utf-8?B?dUhCTVZNbmtlSWR0Vk5odmZIbW1UOWYwWVN3QkRiMjhPMzFuNWdoajhFNk1I?=
 =?utf-8?B?YXpxZVhheGpsRXBnM2hLWVhYcEZNRjVyZHRlZE8wKytrU3BCRkhNWnRQdnZ1?=
 =?utf-8?B?Q0M4aFBURlJqWEh0RlRBZzJFSEhINUx1V09sYjlBTU5aN01vNUdHcDM4UjB1?=
 =?utf-8?B?NmVKb2hzOE1jcXJ2VDliQXFnUmdvOHZDMHB1T2g1WUtpeGRkT1VyNXhoVWdN?=
 =?utf-8?B?R1JGZVQ0WHNEaTFKR1R1UGY5c0hKTWVLWFQwd1IwblM0ZGEzSDkxdFFHRlVh?=
 =?utf-8?B?SmF6dkZudG1iMlVGNDE5Ri9SSGJHSGNZN2pFcUVCMHdtd3ZsRE9mbmRJeTBJ?=
 =?utf-8?B?c1MrZndpeFIyNC9CdGdwaitzN05YL2Znd2NEN1hnL01GSmFtVE9YSWcrODZq?=
 =?utf-8?B?VVJxaHlHSG0zSWxWbElvRUp3RytwaVdSZFRHYTV0R1R0NEYydTFpdnJOL0hB?=
 =?utf-8?B?WE9VcXpJaG5sb2RsWE4zQ3kwUnNwQ2p4OTRWZWdUdjk5MHZod3RNclB5NDVI?=
 =?utf-8?Q?D5ziqXKCnzrMq+q8resmV9MXL1oqyFUQjaMh/c9DsNsw?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc0044b9-efe4-4e4a-8b81-08dd8c8dbeec
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8784.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 11:04:18.0375
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xqSYoTBATO9vdYXN/z2l4w90dBiXGHLU2w42heFhMPjjxbHJv4p3gEm8aPUSzOW4pEGg7PiQ7kYgR7g52NavYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_040441_661190_BC461A66 
X-CRM114-Status: UNSURE (   8.25  )
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


On 06/05/2025 11:44, Aaron Kling wrote:

...

>> Rather than reference 'synopsys dwc3' which is not related to the Tegra,
>> it would be better to update the binding doc for Tegra XUSB padctl device
>> to list this property and define the default mode.
> 
> Let me make sure I understand you correctly. You're requesting to
> update the binding as above, listing peripheral as default when unset;
> fix my commit message; and leave my code change as-is? I'm unclear on
> if the code is okay as-is or not.

If the dt-binding doc states that the default is peripheral mode when 
the property is not present, then yes your patch should be OK as-is.

Jon

-- 
nvpublic


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
