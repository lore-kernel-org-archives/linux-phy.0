Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF20C3DA6D
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 12:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SHmtDVufU7UBAytIk/k4MHt2Sq1qJYRqpavg5UaXYmk=; b=QXyWEyH0u+Mk2+gnnsYl4hP+r0
	HWCyRZTsZG/YqFAbULmKNQnx/7H4UrMfyZ3WRLdRCRNy0WAGqxir6Rx3zc+pRFfBMN43NT7035hhT
	w57s08LjlVUGNSp4+jRArkBdZWKROG96TEtflXiQ/3S50k/cRUsOK6mXqk0MWJRrVxlUijLFdyvZN
	yCkU3AvaUm/3ivIofqQPa++s0K562SG70j/HXJtCQ3vB2bYRzaqFPld+jBphrq5F//fbwAIqXs1TP
	e+FBhq+chuACTY7Pv8xYenbAy/bndUVK6F9yN1B6s2SIDIFJDdLnYV/lPL+Tc2Zr44CzX5dy4IChO
	j3FaEwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHLjf-0000000Cnvd-3KXD;
	Tue, 20 May 2025 12:06:19 +0000
Received: from mail-mw2nam10on2060a.outbound.protection.outlook.com ([2a01:111:f403:2412::60a] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHLjc-0000000CnvI-2XsK
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 12:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OEbikQ2cXp8WLJsmR+OWxTihcePPtCpfnfyRZBu3DYAxpf9doIjBNJZ045g3ueRqD4VUWqpZ+WCg/dzysIc0OnMsYes0qDgGzYVJRyzHFp4/cnGiO3UFX9DOmSn5yfITzb+zPob2GigZoWhv1u4Ivrjp8+CmDUitgYYoqx7pL1xdWnu/mdh6MJlaleLs91uh7VVY5Oyy5DB192iywmm4fE++9kCnQRWZhQFRuLh5A1uYpdhv1s1+zXbLNj2l5pV1HfMAJ3km1/VFm3N+MvShJMX4K1A2sv0+GEcpiV7y0AuaWA08M9X6wvUJzSiaVNKAuVT7SOHJ/V2NvsZYyulVAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhPCanriSoDO/qSZ+V9r3G3EWN0Vt5XOjwz2ICCIODE=;
 b=yA38xMkp/htFtSvGZl1DtbonGT3cqzTxiDjguSzMdxwb5cOef/R45Tue904fIw/WW/JTUMo7Ffd642kTKkjbDEppHAxu/b5i4PP5XaiGxEp9qKVmMbOFb9QvCOqhKYlQYondEMPM12H6USWC3/ytSS3HxLArAMbqOFS1fevXCNFYaENse2BuobaVzZgqK93Z7uXLmruYOHBFrRTVmv3DTuWORHCPMlGrO1HH4ffbnyPg3uLn4NeIiN/RPW6Jq4n/cBu2/FQOuZH8ZFJnpCC6ul14OyZQcrn/ouNSZRsUDXW5S++a+/plpz7tR0NSO72e3G6xqekge382+LA50NrZKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OhPCanriSoDO/qSZ+V9r3G3EWN0Vt5XOjwz2ICCIODE=;
 b=D3ED9yj9ZukuI+ou66yDs1iwa6JWd2fMwBhRuwH3DrZGUR2utX6wA3DNAJnKJQNQZxRWJK6ocWGHMTt1IhGv9GhdUiKsclkcreVgNF3JdT0Tbu2SN0lGFqr6Bs92szjE8Q8y4jRl2j3dCIH8U9n1ngmEtqI5j2RZmVdMTRodH0mt09L3kVrT9u59A0sJsAr5TEf5FvwlQK5UcOzf1XHkRarG6PNEmpovDge7NC3nI9LogO+ZBXj6cBxU0VdeiUzrYhtMfWm3Rcr61uGOZZxmc1mPeWMggjYX8X/sw9CwaiOtRhFiGYrq0NlcMDh9zwn5xLbpkwjmwhaBHZm9DeHN7w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com (2603:10b6:a03:4d0::11)
 by CH2PR12MB4182.namprd12.prod.outlook.com (2603:10b6:610:ae::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.32; Tue, 20 May
 2025 12:06:10 +0000
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9]) by SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 12:06:10 +0000
Message-ID: <9d00d20f-f766-4b44-a162-35a70ebc6041@nvidia.com>
Date: Tue, 20 May 2025 13:06:04 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 0/2] Disable periodic tracking on Tegra234
To: Wayne Chang <waynec@nvidia.com>, jckuo@nvidia.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250519090929.3132456-1-waynec@nvidia.com>
Content-Language: en-US
From: Jon Hunter <jonathanh@nvidia.com>
In-Reply-To: <20250519090929.3132456-1-waynec@nvidia.com>
X-ClientProxiedBy: LO4P123CA0602.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:295::16) To SJ2PR12MB8784.namprd12.prod.outlook.com
 (2603:10b6:a03:4d0::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8784:EE_|CH2PR12MB4182:EE_
X-MS-Office365-Filtering-Correlation-Id: 1077a04f-19ac-43c9-7812-08dd9796b54d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2ZQOGZIL1djVzUrR2xra2tLaDUwZ0VZWWF4czNLaWVRQUJPWVdqSjI5MVFC?=
 =?utf-8?B?MXBCQmZDckEzVVlZYVdJOFR4V0FXZ3lTdWdMd0RONWxwYmxiY3lSS2xoNncx?=
 =?utf-8?B?aWtVbnJnbW9pRk91K1czaTlnM0o5SHRBQUpkRW1DZDRHanU3aDlRNklOeHps?=
 =?utf-8?B?bUFucFhrOVFhOUVHQ0JjY2VCbC90Z3lIUWd6YXk0clUrSkFvOEdGQ1VqSExS?=
 =?utf-8?B?SE94dGVqcHJaSWtQRFFjcVFqMjdDQWdtUEVwcTRORTZDSEFOemFjSzk0ays2?=
 =?utf-8?B?S1g4NWdFRWtkS0VTWWNWeVVnb2VpaHdTb0R3eUNTQUtScUF2aXhTQ3Y3QmJm?=
 =?utf-8?B?YUtQcnNSVnNrMVN5eGYxRHBsVnBvcnpaU0E5b2d3YzlSSCtZZ2hocUkwc1gy?=
 =?utf-8?B?eEo4eEQrdzFDYnVid2I4aVVBTlZGUU91dHR2aDY5dUpSTk9GL0REcmw1TlBs?=
 =?utf-8?B?c2dNNlk5d1ZMZDArTklQWW5URXFJYS92LysvRlp3eWo5RDAxcnlsQjVNaUFX?=
 =?utf-8?B?ZXpSRjBDcUh3Z1pyVHFBK0Mwc1Z5Sm96Y2l2bFhaUThUTWpHbmZiV3FlZ1c1?=
 =?utf-8?B?SFlQbjd3UXJnLzhDUDQ4ME55dng3eG5wY296a3pVME03TmF0SGd6UFdCeWtn?=
 =?utf-8?B?czhGLzZidVY1SmErWDlvZGtTdkFSL21BUlI4TlRpLzNoTXNDUFRUYjdoZzF1?=
 =?utf-8?B?OWJMbkhUMlh1dEc3WHJ2b2VtRWthOG9qdmJrcU5UeDIyUzg0RE9SYUM5elFX?=
 =?utf-8?B?RVE1U2hxeVBSQjVvTTNFK0s3Rk9EM3d3SGRZTFZMcGxXWHp2QUlLaC9zMjdm?=
 =?utf-8?B?c21vTFV4aDBOOUpLZ0JGRVFWRkpOUnJhWTlIbGF2TW9rRHB2b0xOTHlCNTZo?=
 =?utf-8?B?OXNIbzZQMWRMZW1FTnJ2MnNQNmdOenpMYU50aW4vQ2lxU2pkdDJFVnFweGo2?=
 =?utf-8?B?NDgycmVQZE8vL2pabllrUFF1SFB6QTZEZ3JZUC9WTnlvYlAwTkoyOWpzanRj?=
 =?utf-8?B?dFpZZDJVNUxQbjBDQ1ZabmNjdE9sd2YvN3ZISitDcURCczBHUThOQ0NQSkM2?=
 =?utf-8?B?ZG8wSFJhc2RwamZvNG1kQXo2TmRWYTlJdFhOenhEMHVFSGhRdUdBaER5OUJB?=
 =?utf-8?B?S0F5dCtBdy9oUGJYSVFZVkZXbnI3ZWVtQkJ4ZDJuTjg1TXJnWE40aUNSY2pL?=
 =?utf-8?B?ZTZXWG9SYThlbnRqSVBNK2x3ZEZOa25xK3VOcGQzWDZVQ3A5ekxpOUM3REpq?=
 =?utf-8?B?UXhpdVA0RGpYdW1GbC84ZjVFd3dHc1VScVZFRCsrc0VKcTEyZTZyUC9PQjNs?=
 =?utf-8?B?NGpSbHJEZ1lFcFVhbDNGVnhuZE5IckU5WnRTcWRrZWI0VS9hWnFFOG1UcWZa?=
 =?utf-8?B?dFVudXJxRXA3UFBWbitjZXBJQ2c4RVpicW9OemFIMTdyMG00STdZc2hRY0Za?=
 =?utf-8?B?WDF2aktTQkxTREpFQW9ER1NzM1NJM3l6dVRHcDNoam5rVGFhSjJKakxETStm?=
 =?utf-8?B?UzlaYXlidDZ2UVhINndPazFzaEJ3WUUxOUNNdkltd0tQditDMCtlZ3RJYmVz?=
 =?utf-8?B?ZDc1ck1MZzRPeVl2MnB2NzNUT21NT1VYMVhIMjNXMkxWZE1Veks5OEpPZWVW?=
 =?utf-8?B?UkdqQVVsdVdVQjR5UXROV0k1TkxpNWRBK1dHQk9iZjZORk4wTEtrYWN2ckU5?=
 =?utf-8?B?NVF0U1hQN3VxZGxGdVV3U0NSWnFYQWU1UWlhK0VZWEsxYkpIVWN5U0lBWkY2?=
 =?utf-8?B?STZ6NFRUbkVhYy9IMnp2RXBPL05IRk5XUENMcTdRNll4dzB3N0RBL3dEUjlE?=
 =?utf-8?B?WEk3N3hRNUhkUHh4bG9adkZCZHlCSW9LL2hHK0dUd3RKMEJsMUt5S1NTQlY4?=
 =?utf-8?B?YmtoQmNIOVJKRzdON3Q5anl5clhYRVFSYU9aWmRiTGlzcWJHVG0rTTlmMmNO?=
 =?utf-8?Q?vIonD5WsQkY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8784.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXNjK2d6dXhtSlpNb1NBWGg5TlZvMHd4aEVGYWs5aDUzL1hTN0dEcW9NQkpB?=
 =?utf-8?B?Z0JMTUdoYnpjVFZ3VW9pTVV1M25HcDJPanNFRnV1YVVDUEkrVGc2LzN2bFo1?=
 =?utf-8?B?MWRUazdNdVMrU2pLWm1GSFRRMW4raXhNZzd4TFg1S213RXJZdUlUS0VmSTc0?=
 =?utf-8?B?bEpkVzRIT3hPOGszaWhZU3N0OWd2ZE4va2h3T09tanI1QUpWaHJGY0o1dUxn?=
 =?utf-8?B?Wm8vU1F4Nkp1RWJTRDcydHBIZ3JtMVJOdHl6cHFUWEZvKzFqU2dLdFFyekxy?=
 =?utf-8?B?ZjV5Q043TkF4dmRWR2NjZTFFZi9jQXdYWHFwL3luZDQ4THJPYzJFbHFNUW94?=
 =?utf-8?B?TmJXKzFIb2RreW5zK1RRL0JvSTd5cU5IREVsNFlVRzdNM2NyNVI4bnJNOXk3?=
 =?utf-8?B?VHVhOHVWTk5DNEczajNFWVlsUk8zUkxIZkdLYWE4dXRBV1FyYy9kVEt3a3gw?=
 =?utf-8?B?UHJkdTJienVuV1JkSkVmTmZRbkFGS20yT1pwVjEzZEVKenl3NHljbytrc1Jw?=
 =?utf-8?B?WDZReEpYYS9BeHdFTHZ6WUxrUys5MUNhRStSN2ZVOFNibTd3ZGJrY2h5NE1x?=
 =?utf-8?B?MUt5aGp0KzAvUWpGY0hlR3BIRTBIc0M3MzZ0empyMzJnRit5WmFsdWFleDlW?=
 =?utf-8?B?emN2RGlLN1pFWEpKSmJ1SW45aS9JbEZrVXFvZk1wV2tUSndkOURIT2RMSmZD?=
 =?utf-8?B?Q2x6bXVBcnlodkFiVGlMdjIxZVYvNlVCT2cxSFZ5ZlNuaEZTOFpLVlQwU1Ev?=
 =?utf-8?B?WGtNY2I0Q3dZV1BKNjFlS0NFN21UQnQ5MjFmdDRkaWp1K0RrN0xsK0E4RHRr?=
 =?utf-8?B?eTkzVTdGUjB3WVhUbHllSnJ5L1dFa1Vnb1JOK241bUxwMW9zK042b3hqTWRj?=
 =?utf-8?B?TWFzS015ZmhVaUY5dWtxd3ZMWlRsVktjK0ZBeXVuSVlESHlWeWk4WlNtVkF1?=
 =?utf-8?B?VTJ4M2VKMk8vcGtrMjhLcXlNa2RkWnpTM0l6d0I4cTMvaC9aWkRNRmdwRHpF?=
 =?utf-8?B?Myt0MmFRZlZSM1lYdHZQbndNa1hrbGdVa1pXZExLSHJmMWQ5USt3eWdaUWlk?=
 =?utf-8?B?WktGQ21vU0ljZC9TQ1FPcEFZWTNDK0R0Nkd2aUdBVUxkaS9CcHFUclFVSDRt?=
 =?utf-8?B?MDVVU0t0cFJpb2JnbVY5ZXloZnZvRCsrNVo1c0gxY01GTzJlRGFzVTBWazl6?=
 =?utf-8?B?WU9zUkQ2STJuaXo0c1pnVEQzSDBONXlsOUZGSFAvc2xhcnE1RkVWSVQ3WVBu?=
 =?utf-8?B?QThsU09UVVk4UFVwaW5XZ0IvUmhEUWtnNkxMbFZleG42OFhaTjI0NG43QmJt?=
 =?utf-8?B?dDdXcUFhTkcyVFJZRWFKNFFwRVdNZEdoa0J1QnQyWnZDNzlEZUtTb051TkZH?=
 =?utf-8?B?cnM2c2c1amdNcTBNMW0wVmdiK3JJcGk3UGhWNjRDV2d0M3AwcENwZitHbmZ1?=
 =?utf-8?B?L3lGallacS9WMURZMmZmNnNIUHBUbGpseWdFY0k5K21EZkZ0M29nQndtUjVI?=
 =?utf-8?B?d2hWSW50bkk4Y3VMb3pISFVPMHF2ZWcwbFhGYXJzSWJROWFaTHpvcHlIYWpE?=
 =?utf-8?B?THcvNFhvOU9PQXlYSmFpalhDaVp0SlllUHQzcVBhbGs1YzJHdlcwaGhqTlNk?=
 =?utf-8?B?dzZlYnJUeVMyREJvMjY3L3BqQmwyUk9kVTQyYzRRL0F4LzdIa1cwSDFOV1g4?=
 =?utf-8?B?VXh3MnhLYXpjelNXa2xaZ0pua09GNTIxSTV0QnI2dGloV0x0VjVNdDlKN3dp?=
 =?utf-8?B?SDhPVUZPV1FUNjB1cWQ2RkNxK2NGQVBxd2RaN01BWTdzWlhKSnFQbmxQOWtC?=
 =?utf-8?B?ditkYUp0YWExUTRyamhMWlpWTjJxSW0ySVVpb3J1OVdORXV4dU5pY2Z3SS9T?=
 =?utf-8?B?UU9xZGxkREkwRU0xQzlvU0o1NkU1Wm5OMHdDa3EvVHRTYmFacVZmdUI4b3VS?=
 =?utf-8?B?U2kralVLbTNYaFpCVTd4Zzl6emdWT29taG1KNG54RjlyMEo2cVlYdmlxLzRv?=
 =?utf-8?B?d2F3RTZ6WE94dlFrSEZRWkRZdWc5SEpJN0lweE1CM1R5K0QwK2p5bVpZN2wv?=
 =?utf-8?B?TEZHVFloMk1yUFoxL0FoSUxRWVVXUVJkRk5xRnBORHFNRXAwZ0lIRVhPeGlL?=
 =?utf-8?B?SXNiNDVCVm5zcWNveWx5MURnV3gwTXgvaVpOMkFYb1lIWFdmQmlxOERoNHRw?=
 =?utf-8?B?L1h3L1YweCtTdnNmTklqNk5Vb1dYR1RxRi9JcVhRRWFMM2ZKVXhQanIrbDlQ?=
 =?utf-8?B?eXFnY3YzNGx3ZnNPV2VsbSs2MjBBPT0=?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1077a04f-19ac-43c9-7812-08dd9796b54d
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8784.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 12:06:10.2755
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N6VyYEmWRM58VHOsXPVpKrMEBAuRNCCBHtpLSw+fi3yPf9xspB/GkIINZL/FtZFT331z3aiDC/hjt/MKxC/LaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_050616_650916_976CF00D 
X-CRM114-Status: UNSURE (   6.75  )
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


On 19/05/2025 10:09, Wayne Chang wrote:
> Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from trk_hw_mode and disable
> periodic tracking on Tegra234
> 
> Haotien Hsu (1):
>    phy: tegra: xusb: Disable periodic tracking on Tegra234
> 
> Wayne Chang (1):
>    phy: tegra: xusb: Decouple CYA_TRK_CODE_UPDATE_ON_IDLE from
>      trk_hw_mode
> 
>   drivers/phy/tegra/xusb-tegra186.c | 16 +++++++++-------
>   drivers/phy/tegra/xusb.h          |  1 +
>   2 files changed, 10 insertions(+), 7 deletions(-)


For the series ...

Reviewed-by: Jon Hunter <jonathanh@nvidia.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>

Thanks!
Jon

-- 
nvpublic


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
