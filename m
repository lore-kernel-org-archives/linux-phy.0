Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFACC3ABBF
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 11:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6nT/duZUK4fJi1jByZ9r2mfa/ml0dvdBQxVJNZxi9Vs=; b=L4VfktUqedBNZf3OYZQKUPQoEw
	cFHAEJh2M9Wh5mxYIanHiJfs1OzOfij7N1whBaotPkzYDGEKXZ8ziJ/86ExsT/hfVxlUeAjtqr0Gw
	uhsJGaXrWy+FtrOOijbIdIBPAJDX4IU7mrYkCLBi4s3bOJsS6kiqJq8zB+lXSUokCf0yFgMWb8tG1
	RIMeXQBSzp/d4M13miwdidrX4HVttUEM63NIU5e3uVLkRQB1qEbCZWWHpXeNi7MI3Dp9eItXKyDIw
	v4ey9P1Vtphw3QKq+rU1SxK9QCRHVk9cVGqkjA1A635NEJuNpabCwd4rmuMb42qAJ/4lT/V2JReaq
	ZjIjnpxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGMb-0000000BiQh-1XmA;
	Tue, 06 May 2025 11:21:29 +0000
Received: from mail-dm6nam04on20606.outbound.protection.outlook.com ([2a01:111:f403:2409::606] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCExa-0000000BSc9-43h6
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 09:51:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JPH0vMBfdcnIO7G5E5P5IbvmZf3VfV3CU5q+TfbVlW0KUQXdUNpqbJ8xY3oFsrFXqpkwtVok8Fqj0SLJEFZBhM9lQ/SIuQ4XaThmrYHPQXS3S2Y7vJ2SeVMD7CSt75kMk4Xu6Tqtcdpm4rem5crSxuzsYRNRMixFJNfapV05QPN4cSBsYtKHG4hDXwwmFNexn4+abzB6YKNwJXqkGOAZUA3aYDAZaw5wlkpy4s1wmr8RTVRfQIt7G4tvyTxH0yH5Wbq9yRyoShNdWt1+vQdVsbQIDPVkkmJwucBfoiXn1rj4KKvlZgfLUMkDorLAkeFxf5sjLZOTwkf+/xI9Y3aJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ujUANUnhI86BaBqeUkhvo1l/CQSgQFC8X68x4JTv80=;
 b=JoGW5NLTB+WzrTArz+gwwWmbQFIZ8IzPeiMQ3dle3HKUlaDvUThWfRaCBCa6c8fGJZGXMMfNSUSmcfeKebZtVySJgJfRk35741+I/vx1+58JtlNLZHB2g24+JDOJb73IdezvTaujWr2Dum8MBt6Ix96sSWBVa7RiBZC6AIXPoBqA1zIdm5Z/hQXD5amcP+nwS4Jotkl1vsdTaN7BkM2wrKPRFLdJYN89JguPUk9q2IkbvJ1vom/aIHd4u+2D7MIXjdpX43AK7G+WoweuiQs2oUCAwJL+8/10LHystRSmpO9eIWbqmTs3eJ5pkyB9gCe9FQ1s82/gpXyRMTmuLvYL9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ujUANUnhI86BaBqeUkhvo1l/CQSgQFC8X68x4JTv80=;
 b=QF+JV0netsuJePP5TLOgE9rOOzqW06Jr1wMmIWs+3aTgdYzXVuYThKFhn+dKLIsbqnNES/aiYPr5hFgAQYjuD5yBKHErSkD2YjZC5LZ/q85P5fsaNuJzPbkzmUVTDVg1QyxunbEy4sIZwMdW0JpRlSzdGR4aYZ2pmzweFwvhY8VcV1rdkrkhQ5MpFZakQt9fsKNhkI4tworH4WK8FXmzXUtpFaX2Ei1r7VB9zP4kSHVdd2fTZXXQH7P3+yRIVZOBeVfOA2ao/xLOdyDvFhRdICvjxJbIarG2ohlhSKtiPwLiliFZNuopDqThFu6GqPf0B2Z7z+7TYaGP1dn8dDFBig==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com (2603:10b6:a03:4d0::11)
 by CH3PR12MB7545.namprd12.prod.outlook.com (2603:10b6:610:146::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 09:51:23 +0000
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9]) by SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9%3]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 09:51:22 +0000
Message-ID: <66776953-ef1d-40ac-9d4b-a35a6ebae20c@nvidia.com>
Date: Tue, 6 May 2025 10:51:17 +0100
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
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <CALHNRZ96Cs8+gyyb=_jTpvCq--uF3P1s8_m7t25nN_vPx0ELXA@mail.gmail.com>
X-ClientProxiedBy: LO4P265CA0275.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37a::11) To SJ2PR12MB8784.namprd12.prod.outlook.com
 (2603:10b6:a03:4d0::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8784:EE_|CH3PR12MB7545:EE_
X-MS-Office365-Filtering-Correlation-Id: 92103ac9-5510-43ad-32a9-08dd8c838ef3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M200RjR1bE9Ub2pqdjZtdVF5SXZNRU5tZWdaQkNjcUhPOXc4WUw0ampuMCts?=
 =?utf-8?B?NStZV1N2ZDVFSjBpZUVPNTNkNnlZK1dZNEdMbE8vY1V5RkR6NEdydjBQRHQ5?=
 =?utf-8?B?ckdYSXVOdkJKdU5jYktMbmU2cDIwbk16S3BJRkVINGxQdWM4MEZnTjlscG5n?=
 =?utf-8?B?ZDJYVmxVcFl3bHpXbVJkVXRSaStVTnBZOG1tUStoWXRab2VvSXFpS24zZTE4?=
 =?utf-8?B?dmJMbmhHMHBJZ2NEM3V5bWJGYnJndHg4bVR0L0t6M1ZTbC81ZHA4cFNkTVJ6?=
 =?utf-8?B?WU5kYWk1bGpsVmRqajc5RjRDeHdDeXE3SThVS0RnYnMzZnlxaXQzWXI2QXZs?=
 =?utf-8?B?Q1FjalRDL3pqclJVSWxOYlRjSnAxQ0VQTzc5SitLZjZCSnBzQXhVQXlkcGk5?=
 =?utf-8?B?OWRYeHBpanJCdTN3d3l0U3JTNDN2SXZ5SUJpMEVQK2xSYzludEtMdWg1dC9x?=
 =?utf-8?B?YXRLV1pYK2ZSYThlMGYwQkV2NFY3ZXkrM0FVVkhxS0psUHlMb2l2TFV1Y3VR?=
 =?utf-8?B?TGNhaXZ3dXVDckszaTdodDBpTk5KZXc0dWtkRy8vamlTayt0djl3UzdVam5Q?=
 =?utf-8?B?TVQ4Q3pLZWtsQjJ4SnRxUW9MNzN2KzE3U3l2RmNjbFF1T0Jqc05tU0JKUnps?=
 =?utf-8?B?VmpxRCtwMDc3cmYzNWVzQWVXakowTGFxU3dxa2w2Wk92M3U3UzRkN0pEaGxG?=
 =?utf-8?B?MUd4NjZiR0dzaSttVHdmQWJGR2c3QXA2UUNydk5PaWw5elBQMEloREZlZzcx?=
 =?utf-8?B?R1hNeGxtV2xZNk93QllYb2Z5eGoxM2ZSbHA1S2V4VXpFVFh0WUVRV2lqOEhF?=
 =?utf-8?B?bzMxNnNJMzFZaG15UzNoemdRRG1JMjZ3b1JFbENRWHdZWCtvaE44RzhLaHQx?=
 =?utf-8?B?Z2J2Y3RRSzI3MnJlcS84NXBESFpPcXB6Slppdjd1SDhxUWxUV3V5SndGYjhC?=
 =?utf-8?B?eHN4ZEVjdmJ3TE5hTHorQ2RLd2ZrWlJ6eFJuVG1mMDlNMU5NM3VUQTVTRTVx?=
 =?utf-8?B?cGU5WGJaTVpOSUN3aGQza2NXZDllNnRyc3NQajZieHViWEhoSDJPQnpzQTVF?=
 =?utf-8?B?Q3BkSUpyODBuRzE0elYrd2lTUmZOQzJFUmZ4b1U4bzVrS1VZUXZBblAyaDhj?=
 =?utf-8?B?SEcxRkhxWVlEYUFEejB2Z1Ewb3RVVzZsWW96TlBkWFQ2bHl5NWRWNEFsWkIz?=
 =?utf-8?B?L21SS1RBZ0VZZTM5RjU3OHJpSjRxNjg3ejFBN011RUNMMzdIcHRyTlBtWVpV?=
 =?utf-8?B?a3FPNjd3TkJPdGU2L0F3andiREZLWVhPeG9oOTdVZFVTc2NWL2VZY0pKcFlL?=
 =?utf-8?B?TFJSYWUrcldFSEt1TnBnM0llUlUvQWRQNStHVnZsejJQUVh0ejF3VHB6bk8r?=
 =?utf-8?B?dXRlTjE5OWwxQlZHWW9Kc2UwSDkveWlLRUtVOFZTK2dTZ0JLbFN0bjhHRnR4?=
 =?utf-8?B?ZkR6dkJTMU5pSkpMZ1JpbVFyNmNPVENBOFZNVkREak4vT3Rmdk84b3ArMjl6?=
 =?utf-8?B?ak0xVFYxWC9ZWVozT3NnTXU4NlhhVEgxckpZVmxRczRZVkYvQ1RSaDNSaVhx?=
 =?utf-8?B?QWg0aTIzbzFWb2ZGL2J6TVBqU3lBcm5GNEZZbDBnZGx1NXRRbitxZCtXejZW?=
 =?utf-8?B?NTF0NDJESTJZRlN6SXFDb0pwODBOUDBBNGJZc1hPNnB4azE2dFJzdUV2dEpY?=
 =?utf-8?B?MDhRamFseEJhTnpER0NSVmJjc29wMXNQNlZlbzBLdnB3VlVjNnBBaFZpbkpV?=
 =?utf-8?B?bzN1OHdLQ3N3Q29UbEJCeFVkNHZCbGdOOFUyYlI0cVR5Y3ZtUFJCVHhmczRC?=
 =?utf-8?B?S3NCWVpYeVcvL2lkR1ZzMUFZcHNFY1RIcm5YV1I0UWkrcUYxd0N4MWJ5Z2pW?=
 =?utf-8?B?TEY2ajhCRE1FeHZSQmFWR1psMXkvYkJCWW5yUEpaMVpneUVGUGVQQjNjcUVa?=
 =?utf-8?Q?/LePLkczYd8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8784.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnFIN2RoK1dIMWZDQXFmMVBZUU5paUVGZUorVndLdkI3TGlkaHBteDkrLzlG?=
 =?utf-8?B?VDdXUmd2YldLRkJrQU5rTlV6TkljODFpQzFIZ3RNdVhJWmZ3dGE1SjhJNWxy?=
 =?utf-8?B?SWRwTDd1VFdKVzM5d2prWm0xQkpxaEFxZEx4c1V3WktNQlA5VnNKQk04RDJ0?=
 =?utf-8?B?Q3g3TEF3MmFCZDFyRFdFR0hxQnVsd2VBdjU2cXBqRkZWcDZIS21oN21obzY5?=
 =?utf-8?B?NUxhZ09iVjhYam5GcmErWXl1K1pRUnJ4a0JuK3B0S3pQVWFydk5YQXZXQVc1?=
 =?utf-8?B?RFhRcVBZdTV6YW5MdmtWckd5N0tGRzJFMWpKZExFMXN3N0Faek1qaGlLRDhC?=
 =?utf-8?B?bnhvSkNvU1p1cU0rZmhQWTRRWHo4cjRzU3dIa0FYcDVjVVFoczR6UjJBbUl2?=
 =?utf-8?B?NG02TUczMmNNN0NWUjJwTGFGMHlPOHFodGxyRVlBR2lUTnJrN2J2SGoxbjU2?=
 =?utf-8?B?blpRWUY2VFJSS1FiMXNYTERKeVorcjQ1Y1pSR24vSnpSSXo2SVYxeURhV1pr?=
 =?utf-8?B?dzZneUZOMmp4ZnI4bW9mNWtRcWVoQ24vczBEeStzZ2RZQ09XUjdIc3hyNUs4?=
 =?utf-8?B?VW41anlxUWp5ZmMyakJ4dkx3N1g1aFJWY1BZM0VxTmVKWnlmN3NZYXJtMUdo?=
 =?utf-8?B?OFBXSDFBQzdrU2RHOU02UVJKVE14bEd6ZGFaMk1EZGxnbUdDNHkwYW9BRHhF?=
 =?utf-8?B?MWJpQkQ0bjZtcUJpcnlsQ3BHK2x4dzNyNTAyWGRKRlRRR1hFM3RRNVBhKzkx?=
 =?utf-8?B?aTE1bTJPWk1lVzdkSmJpMm9DK0E4bHowcFRMbkd3dlZPSTV5NTFRZTdvRnNW?=
 =?utf-8?B?RjFIVllpYjNLeFV2UjF5WTNuaUlFeFIyZlJjUlNJYS9ac1l4Mk9PVGM2cjlF?=
 =?utf-8?B?U1BsWW5MaGk2NWI5RVVjc1NhNWtHQ3VoNGlxZUFzWGVKY0NHeTZoeHV5VWM1?=
 =?utf-8?B?MStpelJLc0ZsWEFETnIxVGpHZGprUWRBb3QyZXQ1c1pxS2I4MXZHbHlCckN1?=
 =?utf-8?B?NjNSUkFpZVY0NnZwajZBSHFnQnIrRy92Q0JVdENnekVsRnpXRU80eDRGaUZw?=
 =?utf-8?B?djlWZjhTZ2FodWZvRzZVcE9iZFpFcGFxaHhaTWdZMGp5MGdnaldYdFBxeklQ?=
 =?utf-8?B?MlQzRDJ0YmxwZXN0dlp5eHVORDhmUExWTHM1eGltMkxPdXpQTGZORmtwa0tj?=
 =?utf-8?B?b3lleHNKTUFyTk9HSGx1QS9DN2Y2SkQwS1R3TXplK01KNHBvM3ZjSTdBK1B1?=
 =?utf-8?B?cXU3UUFsT0gvR2N5YmhNMFJVSUpWeWxweHpEWGE0OVppMEZJVDh3ZldLUVQ3?=
 =?utf-8?B?VVRvVEJqbHBiY3c5anVZT3djcndNV2h3UGxwc00wWWdxMitpOUt3dlRDUThS?=
 =?utf-8?B?Tnc2dU0wSCtiNEdEdy9FRCtiakJZNTVEUG4vcHdMbkhXNVJZcmtuck53eVNG?=
 =?utf-8?B?QkIvMnBiRmxWRFI4NnZRNnozakFnaVpPYXYxM1h6UitFZG93S0tLeC90Rk9H?=
 =?utf-8?B?dnRCd2tJamF5Tnh4UUFRMkJBNm9DYVAvVWY4ZG9xMnlIOVAvQVY0U3dDTU9t?=
 =?utf-8?B?bGtTRURTRjJIYWJtdHA2Y1REaDA1MkZIRGwwRWlsRkQwL2FFOVFqMXl0UVE1?=
 =?utf-8?B?YURTQlR6RTZ1Z3BiTi9seFprM2ZZdUVPTFRnaXAyUHoya043OG9NYlhEcXBF?=
 =?utf-8?B?ZUtQaCtaTTQ1Ym9xSjZIVWw2VUlNVERtQ2RsT1l5U1pkNVl1clhpNlRRbENM?=
 =?utf-8?B?TjJma0NIN2F4NE5Sam1rOXVuUXB2dHRlV2RCL2FCK0toamVLQjlKRkVqRGhs?=
 =?utf-8?B?N2F5eGp1NUpVcWp4enFhY3Z5bDlGTklsb01NcHlQNXNyQjlXRzJRMFZWVkE3?=
 =?utf-8?B?Z1g4dmo5L0p1ZzVQejZpWEFxNDNQV05mRU1zSmhPNVlFUGFEOGluRDFzUWxC?=
 =?utf-8?B?Zml5TjhnQjR4dGdrTlMyQzJwbmZhWkRwQkRWR3RXTFg0cVJEYit0eHRKZXNB?=
 =?utf-8?B?RGZabzdCZlNtSjRxZktOeXFnZlVUM3hicmlZUzd5VkRDV1V4QTFsNVR6cTVN?=
 =?utf-8?B?TCtQd1Zqbm5lOHJFeE11Y2tTdTZWdS96aFRuRXF1THJFUlYwaWhPT1c5d0xL?=
 =?utf-8?B?UWE5RDRHcHJid0lmeUlwdjExdTBDeFRnMHY4SDREVjFLT2w5dGtPa1VOWFpz?=
 =?utf-8?Q?PiKBJAJYq/wq2IAxi3+bjjCTn5o6HZe/tVMJe+NNarWB?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92103ac9-5510-43ad-32a9-08dd8c838ef3
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8784.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 09:51:22.6057
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVhGZWyJQ+2SylJ0O5Vj4n9p/HIce8O8dTeU5HVA46hdLN2f19fE5gtrz490VcP19V0J4ixnmAYJe8wbjkIQAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_025135_005886_160FA8F3 
X-CRM114-Status: GOOD (  20.23  )
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

Ck9uIDA1LzA1LzIwMjUgMDg6NDQsIEFhcm9uIEtsaW5nIHdyb3RlOgo+IE9uIFN1biwgQXByIDIw
LCAyMDI1IGF0IDg6NDTigK9QTSBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPiB3
cm90ZToKPj4KPj4gT24gU3VuLCBBcHIgMTMsIDIwMjUgYXQgMTE6NDXigK9QTSBBYXJvbiBLbGlu
ZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBPbiBGcmksIEFwciA0LCAy
MDI1IGF0IDM6MTjigK9BTSBBYXJvbiBLbGluZyB2aWEgQjQgUmVsYXkKPj4+IDxkZXZudWxsK3dl
YmdlZWsxMjM0LmdtYWlsLmNvbUBrZXJuZWwub3JnPiB3cm90ZToKPj4+Pgo+Pj4+IEZyb206IEFh
cm9uIEtsaW5nIDx3ZWJnZWVrMTIzNEBnbWFpbC5jb20+Cj4+Pj4KPj4+PiBDdXJyZW50bHksIGlm
IHVzYi1yb2xlLXN3aXRjaCBpcyBzZXQgYW5kIHJvbGUtc3dpdGNoLWRlZmF1bHQtbW9kZSBpcwo+
Pj4+IG5vdCwgYSB4dXNiIHBvcnQgd2lsbCBiZSBpbm9wZXJhYmxlIHVudGlsIHRoYXQgcG9ydCBp
cyBob3RwbHVnZ2VkLAo+Pj4+IGJlY2F1c2UgdGhlIGRyaXZlciBkZWZhdWx0cyB0byByb2xlIG5v
bmUuIEluc3RlYWQgb2YgcmVxdWlyaW5nIGFsbAo+Pj4+IGRldmljZXMgdG8gc2V0IHRoZSBkZWZh
dWx0IG1vZGUsIGFzc3VtZSB0aGF0IHRoZSBwb3J0IGlzIHByaW1hcmlseQo+Pj4+IGludGVuZGVk
IGZvciB1c2UgaW4gZGV2aWNlIG1vZGUuIFRoaXMgYXNzdW1wdGlvbiBhbHJlYWR5IGhhcyBwcmVj
ZWRlbmNlCj4+Pj4gaW4gdGhlIHN5bm9wc3lzIGR3YzMgZHJpdmVyLgo+Pj4+Cj4+Pj4gU2lnbmVk
LW9mZi1ieTogQWFyb24gS2xpbmcgPHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+
PiAgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyB8IDggKysrLS0tLS0KPj4+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5j
Cj4+Pj4gaW5kZXggNzlkNDgxNGQ3NThkNWUxZjBlODIwMGQ2MWUxMzE2MDZhZGJiMGUyZC4uYzU2
ZTgzMjE2ZDBmNTY2YTA5YjY3Mzc3MTcyZmIwNGM4NDA2ZjRjZiAxMDA2NDQKPj4+PiAtLS0gYS9k
cml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPj4+PiArKysgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNi
LmMKPj4+PiBAQCAtNzMxLDEzICs3MzEsMTEgQEAgc3RhdGljIHZvaWQgdGVncmFfeHVzYl9wYXJz
ZV91c2Jfcm9sZV9kZWZhdWx0X21vZGUoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCkKPj4+
Pgo+Pj4+ICAgICAgICAgIGlmIChtb2RlID09IFVTQl9EUl9NT0RFX0hPU1QpCj4+Pj4gICAgICAg
ICAgICAgICAgICByb2xlID0gVVNCX1JPTEVfSE9TVDsKPj4+PiAtICAgICAgIGVsc2UgaWYgKG1v
ZGUgPT0gVVNCX0RSX01PREVfUEVSSVBIRVJBTCkKPj4+PiArICAgICAgIGVsc2UKPj4+PiAgICAg
ICAgICAgICAgICAgIHJvbGUgPSBVU0JfUk9MRV9ERVZJQ0U7Cj4+Pj4KPj4+PiAtICAgICAgIGlm
IChyb2xlICE9IFVTQl9ST0xFX05PTkUpIHsKPj4+PiAtICAgICAgICAgICAgICAgdXNiX3JvbGVf
c3dpdGNoX3NldF9yb2xlKHBvcnQtPnVzYl9yb2xlX3N3LCByb2xlKTsKPj4+PiAtICAgICAgICAg
ICAgICAgZGV2X2RiZygmcG9ydC0+ZGV2LCAidXNiIHJvbGUgZGVmYXVsdCBtb2RlIGlzICVzIiwg
bW9kZXNbbW9kZV0pOwo+Pj4+IC0gICAgICAgfQo+Pj4+ICsgICAgICAgdXNiX3JvbGVfc3dpdGNo
X3NldF9yb2xlKHBvcnQtPnVzYl9yb2xlX3N3LCByb2xlKTsKPj4+PiArICAgICAgIGRldl9kYmco
JnBvcnQtPmRldiwgInVzYiByb2xlIGRlZmF1bHQgbW9kZSBpcyAlcyIsIG1vZGVzW21vZGVdKTsK
Pj4+PiAgIH0KPj4+Pgo+Pj4+ICAgc3RhdGljIGludCB0ZWdyYV94dXNiX3VzYjJfcG9ydF9wYXJz
ZV9kdChzdHJ1Y3QgdGVncmFfeHVzYl91c2IyX3BvcnQgKnVzYjIpCj4+Pj4KPj4+PiAtLS0KPj4+
PiBiYXNlLWNvbW1pdDogOTFlNWJmZTMxN2Q4Zjg0NzFmYmFhM2U3MGNmNjZjYWUxMzE0YTUxNgo+
Pj4+IGNoYW5nZS1pZDogMjAyNTA0MDQteHVzYi1wZXJpcGhlcmFsLWM0NWIxNjM3ZjMzYgo+Pj4+
Cj4+Pj4gQmVzdCByZWdhcmRzLAo+Pj4+IC0tCj4+Pj4gQWFyb24gS2xpbmcgPHdlYmdlZWsxMjM0
QGdtYWlsLmNvbT4KPj4+Pgo+Pj4+Cj4+Pgo+Pj4gRnJpZW5kbHkgcmVtaW5kZXIgYWJvdXQgdGhp
cyBwYXRjaC4KPj4+Cj4+PiBTaW5jZXJlbHksCj4+PiBBYXJvbgo+Pgo+PiBGcmllbmRseSByZS1y
ZW1pbmRlciBhYm91dCB0aGlzIHNlcmllcy4KPj4KPj4gU2luY2VyZWx5LAo+PiBBYXJvbiBLbGlu
Zwo+IAo+IEl0IGhhcyBiZWVuIG92ZXIgYSBtb250aCBzaW5jZSB0aGlzIHBhdGNoIHdhcyBzdWJt
aXR0ZWQuIEFuZCBuZWl0aGVyCj4gdGhpcyBub3IgYW55IG90aGVyIHBhdGNoIEkndmUgc3VibWl0
dGVkIHNpbmNlIGhhdmUgYmVlbiByZXZpZXdlZCBvcgo+IHJlc3BvbmRlZCB0byBieSBhbnkgVGVn
cmEgc3Vic3lzdGVtIG1haW50YWluZXIuIElzIHRoZXJlIGFueW9uZSBlbHNlCj4gdGhhdCBjYW4g
cmV2aWV3IHRoZXNlIGFuZCBwaWNrIHRoZW0gdXA/IE9yIGlzIHRoZXJlIGFueSBvdGhlciBwYXRo
Cj4gZm9yd2FyZCBmb3Igc2VyaWVzIHRoYXQgZ2V0IGlnbm9yZWQgYnkgdGhlIHN1YnN5c3RlbSBt
YWludGFpbmVycz8KCgpTb3JyeSBmb3IgdGhlIGRlbGF5LiBJIGhhdmUgaGFkIGEgbG9vayBhdCB0
aGlzIHBhdGNoIGFuZCBJIGFtIG5vdCBzdXJlIAphYm91dCB0aGlzLiBUaGUgZnVuY3Rpb24geW91
IGFyZSBjaGFuZ2luZyBpcyBjYWxsZWQgCid0ZWdyYV94dXNiX3BhcnNlX3VzYl9yb2xlX2RlZmF1
bHRfbW9kZScgYW5kIGl0IGlzIGRvaW5nIHByZWNpc2VseSB3aGF0IAppdCB3YXMgaW50ZW5kZWQg
dG8gZG8uIEluIG90aGVyIHdvcmRzLCBwYXJzZSBkZXZpY2UtdHJlZSBhbmQgc2V0IHRoZSAKbW9k
ZSBhY2NvcmRpbmdseS4gU28gZm9yY2luZyB0aGUgbW9kZSBpbiB0aGlzIGZ1bmN0aW9uIGRvZXMg
bm90IGZlZWwgCmNvcnJlY3QuCgpBbHNvIGZyb20gdGhlIGRlc2NyaXB0aW9uIGl0IGlzIG5vdCAx
MDAlIGNsZWFyIHRvIG1lIHRoZSBleGFjdCBzY2VuYXJpbyAKd2hlcmUgdGhpcyBpcyByZWFsbHkg
YSBwcm9ibGVtLgoKSm9uCgotLSAKbnZwdWJsaWMKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
