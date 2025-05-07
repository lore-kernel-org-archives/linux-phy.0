Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F3DBC3ABC0
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 10:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nIPFCg+/oZIRdceH3P8202+x4DC0wjUYEi3Cm3Kkq9g=; b=FQKkQyWVBGoN/IPnhJXh/bdp/c
	6KLfKkINiL+AZ6poUVng4sMc8Ho9GnGIe6BNqazSw2pV+BO4eS75wB9cBXRFSc14a7OqobE5FrF2G
	GrsDiR2ehswidrxTz1Bzf6eCRQGShM+iRhsLhNe2POSfF+K/EslwtSV6V1AXO3ZAG8Ojk0pFHuGb4
	EJiImJJZiyTPXV3iyb3g+aIGMoVMt36gw7Qn3KZeAUjik3Mm6SleUlRWrycH9L38Rk2hM3z1AMxf3
	ZlQnNGcpR8VGdd+5sEBuqkoa6gD3j2vFv/GFZbKpZ4gZcLCCGLZ7zOX1OeIDD9MeTh1kqDxHfcGnJ
	YGyjSeSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCcMy-0000000F9VJ-3HGN;
	Wed, 07 May 2025 10:51:20 +0000
Received: from mail-bn8nam12on20628.outbound.protection.outlook.com ([2a01:111:f403:2418::628] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCcKa-0000000F9CS-2tIg
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 10:48:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Epv7m0ZzDZMXLGX7Y78g45i5DG4r8vF+rXs80YkOITdsY7iHL4+SAwZQwlAVltYblgF4L+jj/oiE0dGiTGuBGoDmwMiKNXujQxEjVKCmDNzOvn3eNd49uk/lQoUEIHfk6aoUEhMykuTJFeesqkH27CYZeLUxwvjjkNP9cneh2p3npdOYDw3VU8IiZJKbgnZus1SqxYBOVFw+tw9+OEUMG+E05HcLaXetmzxTiKvk8ttjc53Ra6vBDzEVOB4lVsMKkqBMXfXzxgVWKlDOisac16zxTRfLFApp+LDLbV6uBkHo4mX7zIEa0Cd55EikxauRsnq5Kpt7VFcVF4LomIC1uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wq/bFXggcN17xmzvH7mH7TInF8q4TDAEw6/QNnsxZCE=;
 b=CRuIRlWDmwBbd4UfblhkAaBbJdAHkO2/wSBIBxnQVhvBQPIK78LikTJSfyMHK3YqHbF4oQa9pUJjvaZqDSGi0CJedk1qJ7JyU3lMIF32quqIB4Uut3lCh6xJD4+Vs3HOP3bXq32v5DyyfPBWpd/j/E/+dVmE+CVNgG5hsmZsKyvIdQAjJnVBZfQHJGAmm1a57Etq1hssvUPXJuVJOajddB8hOU31IzyLDXiGHRf2r+wKp5eVSXghKkBKRp5Q53FkeQe+/k+sl3TgkcToU9yLjL6Logd4Fd3jmHiBC3vmGtGuUE/MlgRNfhiVXi75CgjYX9oP1k4EjU/nlg3d1AFHDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wq/bFXggcN17xmzvH7mH7TInF8q4TDAEw6/QNnsxZCE=;
 b=KlkoVjew2rIr96380Bjfr5yoj/VWSMAbnz82Y2m8WSHIl2FJ7sQ1uCT7miJlcOfjAaRp3KJx0YLTeErrW31knqzheWmNyF+8VQys0Pj73ysleNB6qVG6mp/GOp2YDdm09L92gsXL1APYcHLMCLNeYTZdh3mUKlmzK7Tn951aGYgmtUA5XnOoIscwaD5GJs/ijm1ucV0Ge0Mx5NHkTbJ/ZKsIHTWNcMUqJqyC9Q6A07onLxxzeKKfressIPU5u4eU7rlYbcaKZgCiwf/hbgjn650QE0SGWpKhCPT6z4jSB2gq3aqKrJPVWciTamdaizoRgxWphHk/780uG8T/SUaykA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com (2603:10b6:a03:4d0::11)
 by CY5PR12MB6227.namprd12.prod.outlook.com (2603:10b6:930:21::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 10:48:42 +0000
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9]) by SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9%3]) with mapi id 15.20.8699.022; Wed, 7 May 2025
 10:48:41 +0000
Message-ID: <660c781a-6923-4cc9-876a-f33ba782c923@nvidia.com>
Date: Wed, 7 May 2025 11:48:35 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] phy: tegra: xusb: Default otg mode to peripheral
To: webgeek1234@gmail.com, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
X-ClientProxiedBy: LO4P265CA0137.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::15) To SJ2PR12MB8784.namprd12.prod.outlook.com
 (2603:10b6:a03:4d0::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8784:EE_|CY5PR12MB6227:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aea2abd-344f-4ae9-ef4c-08dd8d54bb39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|7416014|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ck81UVZvd244K0VtcmxlbDVkL0hSNmpXajMwMWU4VEZtTHk5TGszeEYxM0NV?=
 =?utf-8?B?NXdjck1tL09vcFovN044Zi9JMkpuQlVIcUplZmtiQkU0MHhVbWtpbUd5TVd5?=
 =?utf-8?B?VVl0bHR1Y0NWL2pTdVkvVWk4N1V1OEJ1M2NFZEdob0RvTUdmcXBUYXRMMWFs?=
 =?utf-8?B?QlF4SUlaTzhTU3JLSGp3UjFMN2E1L2pBMW1WWHp3aWQ4c3llaCtvQzQwb0pi?=
 =?utf-8?B?dFVIYTVqeUJrcFdNajNobXE0MXdXc2Q2cDVNZHIvQTZ4WWpsOUFIT1NhUVhY?=
 =?utf-8?B?MXNwcVhCYVQvRHA5MmJPMUhxYzB5bjBtQSsvc1p4OTJvSEFnRFFHaVVpTzF0?=
 =?utf-8?B?RmVtQnZrcGQwdGFWUEZYTWVhcEl4cXZPdC9TU3FPSDJGODZIRE9XZ3lCU3FT?=
 =?utf-8?B?ZE83ek1KcERYbmJPNG80L2ZNVlNrTUZjajllNWZNdnV6YXZ5QmdIVFRTSVFn?=
 =?utf-8?B?ZGlLNDlibSt5ODdXeGVKL3Z3MFIzYWxndks5OGJkVjk5VEtJYXgzYlgrMTNp?=
 =?utf-8?B?Y3BUdVpTMDMwTjRWUHh4S01OZ2ptRjNsOGEwcmN3eW9VdmRHbktjUXZjMnRE?=
 =?utf-8?B?dkZUZExtNUtBcyswRzgvUGU5bXNuZC93TDNGbElLNkpMQ1doOHRYdVg3dXdI?=
 =?utf-8?B?TmRsL282Vk9Ib2Z6ODJUb0pJenBHVlNQNFFVcitxYnlHclVKVExvNUV2ejl3?=
 =?utf-8?B?bjBYZ21SdGVoUE44MFVNZ3NRTHl1MjBvczlLZXNjVHd3cEVWTWxpUVEybTdR?=
 =?utf-8?B?Y3hINHAySW5YdHA5bDZmRzI2SVo2c3p6eEY4cDBkSU0vbG4rckFnY2V4akVh?=
 =?utf-8?B?UUlkajNZaG95WVhZVVlUcndsWUhTdWZpRStnVlRkRk1GYnpuNVVxNERTaXVx?=
 =?utf-8?B?SlZNYVF2TkhuMnBTM1VtVDlGTExVNUZOSjg1UHFvMlRRVE5oazNUWnloQk9M?=
 =?utf-8?B?VEhEekMwc0t0bFU5MWhFekxXZlNpaWhhZktMaGtyUWErOUJDUzhkNk1LWFQr?=
 =?utf-8?B?OHVsTE9DeGg1TnQwb2IzcnE3bEgzUGd4dkVmUnc5ajRQcmpZQXAvTFlNWWFt?=
 =?utf-8?B?VkZzd0RqUE0zQWF6dkdLSnduZTRHWGdYa29iakZVbERqNnB3b2JPM3RWVjI1?=
 =?utf-8?B?aUdFOXMzQnVQUTdLM2tRZWlvbU56SDRveWVDREdzOStMQnU1dUdHeDlxVUdM?=
 =?utf-8?B?NFJNanZqV2lCWU5IWk5mY2dmSDg2N2RhcmRSTUJWWkJhS2pCODdXK2JPeElP?=
 =?utf-8?B?dEZ3QVpmWmlJeFJ2Nnd5b2RQdkZFY255SlR0VXJMM3F1TjlVWXU5dnpXanN6?=
 =?utf-8?B?eFJiRlEwZ3ZJb2RXYzUrTFpFSS94QTVTNzVFa1IxQjg3dmRjbkFOUk5yMXB5?=
 =?utf-8?B?aFQ2OGR0bXNhbGxNdTVmclY3VERHYS9zRzM5ckFlMmdBa0luaHZSeTBHcVEw?=
 =?utf-8?B?MUNSRi9ZOWNsV2ZLTVh1NmJNSHN6dXFlOWsrcndoYmlVNk9QYXlJWm5vblJD?=
 =?utf-8?B?eVJiMlRBYVZ4NnZyN0doMlQ1VXVBTDM5cDBuYTRPbVhLRko4K2RDZWZjT1Z0?=
 =?utf-8?B?dURHaWtIRUxvakVHcVdLZXZSOTF0TnFlbE5hTlpCeXNzeHIySHJFQ0l6M3Vt?=
 =?utf-8?B?KzVFaTRsOWl0aHJsVFZ1eFY0WnR3VUU4dk4zNUoxTXJGUnVTd2lXSlk5RFh3?=
 =?utf-8?B?Q0J4cjhSYytOeFJGYSt2Rm9JQUtDR0N4Wko5eDJUWTkrQjM2WjhHVHFteXo5?=
 =?utf-8?B?dUl4bWxJdWM0eUlHU0dPR0pBWjRuZGlDYjRkZXQydU1hdjNia2NwNlA4WTZq?=
 =?utf-8?B?L2Y2R3c4ZExTMHVrOHlSclBJaG4vRkNNN0tGZGlNbXVpY1NRckRySytWczJO?=
 =?utf-8?B?SC80OUJmdGltTUdEZlJYRWhGR1VBdWR6MFlNcFRnRFArenl3ZGI4eW91VHZj?=
 =?utf-8?Q?BjCtuvoxYPs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8784.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(7416014)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXd3b2dvK0N5bjdUcXozcGtVeXZ5OUhoMnIyNytqWlg0MXVyZ0R3azRzWVJx?=
 =?utf-8?B?VnVieUZhT21zZzU2NDFaNHdWbDF1eWdFeStsYkIzQnpqVkJOWkVteDRzZEJ1?=
 =?utf-8?B?SlJoZm1mLzFpUkNjZ1E0RUpaRzdXVkxLMlN3ejV3Vy9Hcm5NZ0dTcFp6LzJU?=
 =?utf-8?B?c2xDYWNCUXJOeWgrWGkwNTFlbFArd3JROE94U2owcDFsc01za2tFT3kzUkJK?=
 =?utf-8?B?U1NlRTVIMTFKNkEvQ3V4Yk9VdDA3VkFidk1wSjJOdHVpajRuNGs3OEVwM21T?=
 =?utf-8?B?ZDN3alJwUWxObUVQRFNSRmdFR3BtSkVZN0M2WGw1UWVxY01nSFR2MHVRTlR2?=
 =?utf-8?B?c3NvUFhPYjhNRWw2M1pmczFpUFNIYWF5VGFhS0h2WjgreXdNNkVvNHFLeE41?=
 =?utf-8?B?SkttQ3pNU2h6YWkzQWZaZXZ4aDliampuWWpxTisvZG5MMGE2dW5PMWYxSlpv?=
 =?utf-8?B?blpMM0g5aDdUaFA3L0VUTGZUa3JQVkxMT2dOMWREVkpBYnhMckZOQjdKTlpr?=
 =?utf-8?B?RHdXdDVmVG5qcW5LWVNURXVIZTlpQ2pFZTVJZU8zUERvTFhnWmFXS01WTHFt?=
 =?utf-8?B?eDhEWG16SzR5TDVCNkNzQTVzaWZzUUVpdjdhbnFqRGFLd29IcFdPYzhRSHVn?=
 =?utf-8?B?Y2w4UUdXc0NpSHIzTWo5ZHZZQ3d6UUtLT0hkckpvblphQ2NGRVl2VVdmanpu?=
 =?utf-8?B?NWVQU0ErV1dlTllYZ1dOUEJjY2VPWElKbi8zV1lRZWl4YjFMS283QXRCaU40?=
 =?utf-8?B?RjI4OWt5bEtYVEhTWWRPTUMvRUtMcXlvUVBZUmNKTEZMNXZvSXlVWlFIRzZk?=
 =?utf-8?B?cDg5NDlzTXpaSGRXNUdRR2lYcSt6S1VaM1A4ZzVsdVVyRXNrR3BuTVBxdDdl?=
 =?utf-8?B?M3RsYTV2YmY2RDNSQnhueDVZelcxbUpLTDd4SHpWeHdtY05Zc2w0Sk9NVWNJ?=
 =?utf-8?B?U0NOOHl5RVhqbjRVRWFpRnl6Y0Qxc0tCUFdEQ3RvbC92Y3FMWFdUcUNGTVBR?=
 =?utf-8?B?NzBhNkJOUzhYakpjeVpRSHFEUlgrYmNNQk9zamt0UHFlUzMwYTlVWXpoQ0VR?=
 =?utf-8?B?dTBibXdRb0V5Y05qSWM0ZWhwdURBSFJKR0tqbS9qMWNUM0NweC9EZmJYelB1?=
 =?utf-8?B?cHdTb0dzNk5jTzFlYmJ4dUd0MytpSG1aUnFyZWRqb1I4MUhEOGJMU2ljSlp1?=
 =?utf-8?B?M2I0NjZ2dGd6Uk9ZcXJvN2hXZHVFOWQzRDJIWnJDSTYxaDJwUGxoMko4TFhT?=
 =?utf-8?B?dVhNT2NNNkR6b2pObTREWEZ6R3JzOWVMS1A3bjhWOUNzSER3NDN3WjRQOEtu?=
 =?utf-8?B?WFFGeDhpOUpBUEtrTXgrS2hTU3dUaVlXYTU4WmkyY0NBbC9nakhYRlg4cHQ2?=
 =?utf-8?B?VytQYVpOcWRVeFpSQjZ5ekduNXVIOENzelFId0xYQXdPOWxycFhTZmdoR2Zl?=
 =?utf-8?B?aGhBVzl3Qkg0Z0tteGpvMkgxL0JXMDE0UW1QdC9nOTEvNjEydGpkRW5tR0R5?=
 =?utf-8?B?RUs5eThManEwdWlhYlVnY253WGlDRHpvKzNnWElaUWdBbXlrRG5wVi9JdFdi?=
 =?utf-8?B?aW1qaWI1ZC9mK2NRd2RrbHpvYlBkd1IwVjh6dEhtVkNCc0VpN01td3VTOVEr?=
 =?utf-8?B?MEpkd3E1K3k4K3hxb0JLK25QRXhuNGtRVXRoZG1YbHQwOFYwOWpqWFRSTE9F?=
 =?utf-8?B?eFAycjhOemtXT2xHclRldUt1T0pNRVhRY3BzeU9HbVc1aGtieXJLQjZxTHdo?=
 =?utf-8?B?V3JDOEFBQVVBcCtYcDJyOHZPRU9XWEpWdEdaYUdOMnBuSHM4MWRIVExHMmNN?=
 =?utf-8?B?UklrMnhUbE5ORkdVSFRTYmhCM2R5MFNmb0UwdW9YQkhYSWtjRzlLUll5YWpF?=
 =?utf-8?B?Y01DMThKcnJGK2tlcXlzTXg3Wk1IdjErVHlVVHN0eXFSMWJWM2pqbWwxZy94?=
 =?utf-8?B?K3JwUU9pdUVGTGhma3FEWW5JUGV0Z0xnRXRFenkvR09mTG0vYzk5dXJjbk9j?=
 =?utf-8?B?WFJTSEZzWjdoNlBIQ2dEa1V4b0JzRXU0U0dpUW92eEVabHJOQUc5ME5iblUx?=
 =?utf-8?B?RFVXejNCWGV0TWozaStLVXBoZ3hvM0VDd0YrQWJwOGxMLzI5MmRsejhrNmMz?=
 =?utf-8?B?UTBwLzBLRU1hdWpuejdIbXpxbnowQmMydVVMSTFaWVluNFZCV0ZtOGJIYmIr?=
 =?utf-8?Q?Dw2uxWa2yOzIX+QSS86kBNbYxIw+RzfE9JcA8ghf+vwi?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aea2abd-344f-4ae9-ef4c-08dd8d54bb39
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8784.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 10:48:41.7352
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rwccys89FYf5lSAydSb3GrcYR16HJbia7UE2FCLtADqx1vGQEWwVShEQ7mL3mQHEiNDxQ/rtJYTatpOPsnO9fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6227
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_034852_733001_DDB8BCDC 
X-CRM114-Status: GOOD (  11.18  )
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

Ck9uIDA2LzA1LzIwMjUgMTg6MDksIEFhcm9uIEtsaW5nIHZpYSBCNCBSZWxheSB3cm90ZToKPiBT
aWduZWQtb2ZmLWJ5OiBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPgo+IC0tLQo+
IENoYW5nZXMgaW4gdjI6Cj4gLSBBZGQgbmV3IHBhdGNoIHRvIGRvY3VtZW50IHJvbGUtc3dpdGNo
LWRlZmF1bHQtbW9kZSBpbiB4dXNiIHBhZGN0bAo+IC0gU2ltcGxpZnkgY29kZSBjaGFuZ2UsIHBl
ciByZXZpZXcKPiAtIENvbW1lbnQgaW4gY29kZSB3aHkgZGV2aWNlIG1vZGUgaXMgZGVmYXVsdAo+
IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDQwNC14dXNiLXBl
cmlwaGVyYWwtdjEtMS05OWMxODRiOWJmNWZAZ21haWwuY29tCgoKSSBoYXZlIGJlZW4gYXNraW5n
IG91ciB0ZWFtIGFib3V0IHRoaXMgYW5kIHRoaXMgaXMgdGhlIGZlZWRiYWNrIEkgCnJlY2VpdmVk
IC4uLgoKIkJ5IGRlc2lnbiwgYSBwb3J04oCZcyBkYXRhIHJvbGUgc3RhcnRzIG91dCBhcyBVU0Jf
Uk9MRV9OT05FLgpJdCByZW1haW5zIGluIHRoYXQgc3RhdGUgdW50aWwgYSBkZWRpY2F0ZWQgcm9s
ZeKAkHN3aXRjaCBkcml2ZXIsIHN1Y2ggYXMgCnRoZSBHUElPLWJhc2VkIGRyaXZlciwgdXNiLWNv
bm4tZ3Bpbywgb3IgYSBUeXBlLUMgY29udHJvbGxlciBkcml2ZXIsIApDQ0csIHByb2JlcyBWQlVT
L0lEIG9yIENDIGxpbmVzIGFuZCB0ZWxscyB0aGUgVVNCIGNvcmUgd2hldGhlciB0byBzd2l0Y2gg
CnRvIGhvc3Qgb3IgZGV2aWNlLgpUaGUgcm9sZS1zd2l0Y2gtZGVmYXVsdC1tb2RlIERUIHByb3Bl
cnR5IGV4aXN0cyBwcmVjaXNlbHkgZm9yIGNvbnRyb2xsZWQgCnVzZSBjYXNlcyB3aGVyZSBhIGJv
YXJkIHRydWx5IG9ubHkgZXZlciBuZWVkcyBvbmUgcm9sZSBhbmQgZG9lc27igJl0IAppbmNsdWRl
IGFueSByb2xlLWRldGVjdGlvbiBoYXJkd2FyZS4KSW4gdGhhdCBzY2VuYXJpbywgeW914oCZcmUg
ZWZmZWN0aXZlbHkgb3B0aW5nIG91dCBvZiBkeW5hbWljIHJvbGUgc3dpdGNoaW5nLgpJbiB0aGUg
Z2VuZXJhbCBPVEcgY2FzZSwgdGhvdWdoLCB3ZSBzaG91bGRu4oCZdCBhc3N1bWUgdGhlIGRhdGEg
cm9sZSBvZiBhbiAKT1RHIHBvcnQuCgpJbiBoaXMgY2FzZSwgaGUgc2hvdWxkIHdvcmsgb3V0CjEu
IElmIGhpcyBwbGF0Zm9ybSBoYXMgYSByb2xlLXN3aXRjaCBjb21wb25lbnQsIHRoZW4gaGUgc2hv
dWxkIGVuYWJsZSBpdCAKcmF0aGVyIHRoYW4gYWRkaW5nIHRoaXMgY2hhbmdlLgoyLiBJZiBoaXMg
cGxhdGZvcm0gZG9lc27igJl0IGhhdmUgYSByb2xlLXN3aXRjaCBjb250cm9sbGVyLCBhZGQgCnJv
bGUtc3dpdGNoLWRlZmF1bHQtbW9kZSA9ICJwZXJpcGhlcmFsIjsgdG8gdGhlIFBIWSBub2RlIGlu
c3RlYWQgb2YgCmNoYW5naW5nIHRoZSBjb3JlIGRyaXZlci4iCgpTbyBJIGd1ZXNzIHRoZSBxdWVz
dGlvbiBpcywgZG9lcyB5b3VyIHBsYXRmb3JtIGhhdmUgYSByb2xlLXN3aXRjaCAKY29udHJvbGxl
cj8KClRoZSBib3R0b20gbGluZSBoZXJlIGlzIHRoYXQgd2UgZG9uJ3Qgd2FudCB0byBtYWtlIHRo
aXMgY2hhbmdlIGJ5IApkZWZhdWx0IGZvciBhbGwgVGVncmEgcGxhdGZvcm1zLgoKVGhhbmtzCkpv
bgoKLS0gCm52cHVibGljCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
