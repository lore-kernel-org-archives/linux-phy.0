Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A46F4C5B543
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jun 2025 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tZmvEwhZxo0ujrFlZzV8Wv8HX7utcPWqzJduPgsM4eY=; b=11NKvYwPqPF6A7yrYlnyNAqCrL
	u5ZCnc2iE2RFYmAnKrlnjY7ZsVWEhxJ40UUoT0UUgvIvBjNd8Hs3yVMoqXBmMd1cWQLnGd6RjpVbh
	cDD7nEakp8ww+w6Tq2N4PdaOZthPMOp8+Z9bpdgMcpYhDju5nvCCJvOhPKmU/VdFRn4D9hJyv+HVW
	NUlL8AQEuDryu6HYeLsK2hiByOjMc3StSoQRVnm5cbdNjtnlVD5tJDpCAJb/tr9Ux7JTGxAgHKpkz
	yOqPDmvG0I6CORBIXUGDdEvPGlki95Hww4EvCFTNH1XygCWO5zD3+TaLCSx5nIVmqNgzi3BThIBHP
	D9nijGRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP1y1-00000007UZN-1EH5;
	Tue, 10 Jun 2025 16:36:53 +0000
Received: from mail-dm6nam12on2062b.outbound.protection.outlook.com ([2a01:111:f403:2417::62b] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOzIm-000000071f2-0H94
	for linux-phy@lists.infradead.org;
	Tue, 10 Jun 2025 13:46:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gnw54mnXPECjANV/TQJ2G40CHlsJRSrIk4bSLYT4LnBM+vUUURIcQZqsl3bNo6tFDbLINdBzHytOu2ApaIHmi9rieJWHQnQEgz2MI/gUm9seIeZ4EYBlS6h2Hx9UEVlVtvuS+1wR/0v6VB0A/ta0ZT8Eac5ElAnlQT9jiHnpEHeYiOw0kUNka/x0rQFk25i/cOc36o4qZ4KL8rdtR05Gk1w6tRp8TxIGVBCCiK+NGSCwbY1sYf9cBptvNNHgYRtsj4mZ/Rcf2ocUmqXUbSyvuSdTphZjy0EEPcd7go3V3SDephffZlm+zdLJFBb8ndeiBTe++UdH/Hy5WlEvbnOxFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fxnCifcUdzV9Cdq5sQKlBhTfhON72k4s7QYuc0BxNxw=;
 b=CsUCFsghIS/oTLVj++7alqWPdDzeASvj+GqZ8dyWAv/PQboNj5zMMnBspeA+OEHfDjgHA4JfhiRW2uUdxM9OEMZ0cwJ3ycoi03cPEfYSHA34ZTMkEifO+Gx/JY6Zgb96egaE4Fpv3fV3a3Jo21KAR4w1poE2xM8vdf7KKcuyD5xtt+L08xvc62UR1BCoRbprC3Bh7w2Ca0LwCTjOytCLm5n0zASEYdsrEqttXfnTv5ZBdnUcefc6YRKx68OOCz1qCddej7SFkqOvQiXU0tshFuvJHHu8yvKFnz2fUOETrjZWtySU8Gjsc2RRS1tbIKN5T+GzrBUwFPPwaWFVbaa6Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fxnCifcUdzV9Cdq5sQKlBhTfhON72k4s7QYuc0BxNxw=;
 b=iAhqPT6zmsyDVdgSiavNTfPGqI341CT1KKv8OIus8g1rOTFk6VUPlCuNq0BtbHKxjBSE0n8s1jdpmBzxHLRAVbsCvqEx3MoVN3xdSDeMIhUoTTzHZCBIJGQmZsVaCTRYZQSxApo4KyEfoM6cITeOXe7V4cADbdbzt8dJOvafWc1nl+mkjhcVSRVEQRmFb9bL3Xm2lbK94qVH0k99tERE4arEHApVjdzoggRjDXs4jDSg0nqXXYidx/67HIkuvSj/DmjlIaarUgsACtmMHUu5ovUTUYORfP+wezEtiPsoMPO2mCB6de7jUJjGGCsVL2XS/meXBdOHf1TZ5eXAeqR6Ng==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com (2603:10b6:a03:4d0::11)
 by IA1PR12MB8312.namprd12.prod.outlook.com (2603:10b6:208:3fc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.36; Tue, 10 Jun
 2025 13:46:02 +0000
Received: from SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9]) by SJ2PR12MB8784.namprd12.prod.outlook.com
 ([fe80::1660:3173:eef6:6cd9%3]) with mapi id 15.20.8792.036; Tue, 10 Jun 2025
 13:46:01 +0000
Message-ID: <31989da4-0242-470c-b77f-2b0506cdb8cd@nvidia.com>
Date: Tue, 10 Jun 2025 14:45:56 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] phy: tegra: xusb: Fix unbalanced regulator disable in
 UTMI PHY mode
From: Jon Hunter <jonathanh@nvidia.com>
To: Wayne Chang <waynec@nvidia.com>, jckuo@nvidia.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20250502092606.2275682-1-waynec@nvidia.com>
 <b761ca95-906f-40f6-a51e-b9a1da379a3d@nvidia.com>
Content-Language: en-US
In-Reply-To: <b761ca95-906f-40f6-a51e-b9a1da379a3d@nvidia.com>
X-ClientProxiedBy: LO6P123CA0059.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:310::17) To SJ2PR12MB8784.namprd12.prod.outlook.com
 (2603:10b6:a03:4d0::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8784:EE_|IA1PR12MB8312:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c824d5e-98b1-4c2b-9f23-08dda825234a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3kremptZ3dmVEhtQXllMHJYR0JmSDg0LzN6K1lHbkRJUnVTOHIrRWZIUW0z?=
 =?utf-8?B?MHFFa1pmZS9lV1RJLytWcDRBQW90ZDE1TVNFZ3hMQTBVeDdZOG5HZnUyVGEw?=
 =?utf-8?B?SHArcmhURjJWVzVUVTFRTXM0dTZ2d1hUdFpGRVVnUkFRZW1XZWtYVGJyRlph?=
 =?utf-8?B?Z2ZVTmIrQWlvUEtMcVB3Ymg4S3RSOWlKMHJyYkZ0TDZrc2dZdTR1S1IxQXdU?=
 =?utf-8?B?ejUrc2doNnFUUUtGcDdjYnZVeW5DeHFvbjVRWUlaMys3V3RlRUluSkFRU21J?=
 =?utf-8?B?a2tBKytDQXFmcDVMOEVIYXpLMDVmTitQcEcvUEFMeHZTaVk1bHk4Z0JuOS9j?=
 =?utf-8?B?bldvZFBFUzNMU3hWMnlBRURVeHZKcnhQMFVUcHJkT1YzbTMySjI5Uk02ZXB6?=
 =?utf-8?B?bks0TDFOL09kZm51WDQxVG9MN1Z6R1U3ZUZxbnJIWVZVV0JkSGNNL3o5cEEx?=
 =?utf-8?B?NnpwSjc5eEp6TzdIczlLTnZPTUFaSnRKdnNxTW5HY1ZFN3FFMnJ1Z0NTMzJs?=
 =?utf-8?B?dUczVFcxaFBzc1QzVjI4Sm5XWGZLV2podzhuZVdJNXAvd0xFbWRTNDBienhp?=
 =?utf-8?B?R2M4eG1vTFc0OXY2bUZmV3U5aXZCSDR4eGFYRnFLSjNUVXpMN1BLWmxmU2Ix?=
 =?utf-8?B?VlgwMk1wZjNEZkFjZjlNSUhpSHg3MDUwNnF1bkkzOXcrMlRibnBqVUQ3NzlV?=
 =?utf-8?B?aHdPMTZIM2ZFMEkzT01nMmV6eGVkT0thUVJwdTNxb2ZaOHZCUG45VC9FYjhv?=
 =?utf-8?B?OUlKcEFCeGRxYU9rR0U0b0NyVHluaUFSY0VkanlSemgweW9tMDduWllIZjhB?=
 =?utf-8?B?VTRVWW03YXlzZzdicDYvMDdXaTdOVjdWMWsvV3NhZHIvTjBUSHc1UEJvRWdE?=
 =?utf-8?B?WTdHWGd4Z243ODNUbDFoUWJING9FYm5ST1U0b21XZTNNblYzRmlseS9Sc016?=
 =?utf-8?B?U2kyOFZ0WFp4R29NMlBxZ0xvem82ZU45ZHQ5L25ORGg2ZGJKb1FMdUsxYkJy?=
 =?utf-8?B?RDJmeDZSbXNFOTNIWTBieEhaNU1WaHdoSG1MZTNVbVNjUEpmRHhxMU1QZ0xx?=
 =?utf-8?B?R2hocjRCYnBCd0hiZ1FVMnloT1F1cmFCeVEwSHBBMWs4SUw2Tis2bTRjR0pu?=
 =?utf-8?B?aVRTYlVOZFc2bjlwZnAzNmlkUWJLbHFXUmI2cEV4V2l5WVJhZXlNUmJJSHBD?=
 =?utf-8?B?Vnc4b0RrWTF2eWJGaFpUVE5vYnF3enBXd0tVbThwak03akxHVUZWQ2cxSEps?=
 =?utf-8?B?NHpoVnpzWnVuazhobVBVQ0lSVWUrT1VCQ3IyUS9ISXJUY3JnSUlyQURYNExn?=
 =?utf-8?B?OHlMS09tNndHTmV1bVgyNC9TY1B1T2VTNXFKMGJDOUdGd3RDL2JxK256VXdW?=
 =?utf-8?B?Vm5OVnEzSXQ0QW9PaGwwTEtQa2hIWExaUit3aERIL2d5eW4rbkMxaW5UNDlZ?=
 =?utf-8?B?SDg5UGVCQlN4VGRENVZmZ3lOM3dmR01DUHk3ajZEbXJ0b0lleUo2cjY0Q1Y4?=
 =?utf-8?B?b2RzUWNuYlpQMzFEVXdwVWFYT1VqQlhjb2FxdHhzQzdQUjYzWnY2QlVHZlJT?=
 =?utf-8?B?aFIvaGNDdG1ybWowc3lkcHVaaERzNHhhbnBnWmJVT0dEckJJeGVKY3FmVnp0?=
 =?utf-8?B?b1U0ZEtpeDlRamJkdWRQZUJzdjR1WmM1VDJvVUx0RFFSWEVVeno1Z0VxTDhZ?=
 =?utf-8?B?OHhkRlJlMGM2YWozSG5TdWNPN0x1QXJibGxzU1lXVCsyT1J3OUUvQW1tQ2Vx?=
 =?utf-8?B?M2pVWWlHRlFaY2ZRV3NqWnhEa29CSkJxN0VmNFlVSTBvbC9kNG15VytBSmhR?=
 =?utf-8?B?S2xLUDJiSGVjK0tSZEhqZ01oUWk4V0lnZS9scHVJZnFiaUx2aFdRcm9rakw4?=
 =?utf-8?B?NGNqb0l4MURqcUdobzZsNVI5U0R0ODVDOXEwZzBMVVZvWEtURTRwTnRyNU1q?=
 =?utf-8?Q?EqcOw53tLz0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8784.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzB6S0NvV29ER0ExREVYTFZTbUJKUmpvVzZiNnZ1eitYSmhINnZEMkJ0cGty?=
 =?utf-8?B?Y3ZEbFJLU2lBbjlwWmpkNXVWNDkwcGdzZVBUTmt5T3orODRXVGJqdEdHejJP?=
 =?utf-8?B?TjYwUTAxQ0FrZi9nREYwYWluRWhrVndidEx1S3hvUzBOclRCZDJqK1dFQjln?=
 =?utf-8?B?SlZxNGpMaTlETGlBUFFWdVMyVmdVTEEremxOYW9LRjN3ZDB1dHA2UzZXQVdH?=
 =?utf-8?B?VnpxSEFaeElYLzhYeW9mKzBQb2hydzh5Z0lDVUhhSkNKVG5HNWxIQUVKSTRo?=
 =?utf-8?B?UE1jQ1llSkVudVR2QzdHbGs2T3JYYkI0cUZLQnR5OVM1WXU0czZQNk0rZ3RF?=
 =?utf-8?B?b1ZzNHZXM29zVzlaNWpOTkN0ano1dStPM2FMQUdUL0hrSVI3aUlTOFdwSndW?=
 =?utf-8?B?Q1ppL1R4ZTVrdG55ZVZ4WndkcjU1NlczcU5DUFRtdkxBTlo2MTdXa1JLUGsx?=
 =?utf-8?B?SVhjNnFKN1lXd1lTc3BObTNWQVFaZ0VwdjZNZzJudGxZbHYrenUvNWVPc2Ez?=
 =?utf-8?B?R1A0ODQweUdRSUVqUWdMTFNLSitYc1BEazZwYnFRVkM0WU95ZlU5aGprWXN3?=
 =?utf-8?B?VTd3c1JEWWdjbUJ6U1ZzMm9qQmZ0TzgzR1ZnLzA1ZXl2dWIzUTg3MW8zMDZi?=
 =?utf-8?B?bGJaVGRQRzZOZVJjQjVCM0tTZ1F2V0FGaC9wVmRiN1lzejJhVjQ4M3BzY3By?=
 =?utf-8?B?bVlGcTNyd213RHlMU0NlYi9CYWlQZkxsb3E4RG4xMkZqYWY5K2t0UHlrc0s3?=
 =?utf-8?B?dG9INHR3cUY2elhUaXhCckJzdERQeS8rSjFwRzNSdzVHbjVNeklTOGFHVFEx?=
 =?utf-8?B?TXdRQmVwWEJxN3VlQUpCUFZrdHhVcXlCL2xPNW9MTDJ1Sjd0dU9pcXA0RE9N?=
 =?utf-8?B?UUV0d1RPOWZmanZOcmUxbGlvL0VscjFNQnVvRGpuM3JCNnVjYzR1Y0hzNTJE?=
 =?utf-8?B?cUtmS2RBMFBKQ212cTVVUzd1UkErbnMvL0NNOU5LV2U5dWhHYnVvL3dQd3ZP?=
 =?utf-8?B?bmtzaGtBb2NWeHpiQ1U1Z1RpZDhrQ3lmWlllQlFhdjlEWllqRDB1ajdaakVT?=
 =?utf-8?B?U0hsK1RwbXo5WHo1RnViZGIzckNZV0xuZnk0bWQ4ZWRKRzRILzFBM3lDblhL?=
 =?utf-8?B?dDkxd3pCNDF5WTZsR3VtUlZGTWJkM2R5Wlova2RhM3ZFRUxLeVV1dUQrMDAx?=
 =?utf-8?B?TlYvcXQvT29Id0JNbGo4aG9JMUVFYklPNEFwRkE1MzJWVlRhSVdlRXBwUG5I?=
 =?utf-8?B?ZVFBWFhYcllIMnZ0OXVmc3BnVnA0QUJFRFZBcVdDUHQ3L1k5bStqN3lGU2RK?=
 =?utf-8?B?QkJXUkNnVnNOT21yVWhOaExReGUxRWcyZ2xUS1lwVUtEWnpRUzFOMDlmTm9W?=
 =?utf-8?B?aXpTNm9GTW9YVUF6S3BQNEdNbXhNZmw3WmozWDJpTkk0aURuTW9iZ2MzNWRj?=
 =?utf-8?B?NzVUVWZXMHQzOElGRFYzMEJtWGw5Vml1Y0lwQk5RcUJJSVQxcCtSeHNlZVJN?=
 =?utf-8?B?emZySnUrNHZJWjZYVU1JNm5URE16UTg1TW1adUx0by82bi9XdnRXTGNaZWU0?=
 =?utf-8?B?N3lNY0dQNWVlUFZNdGh0L0dPdTI2V1U2TW9ZcStyLzc1ODQ1Ti9keUl6Tzhk?=
 =?utf-8?B?aFV4VEV2Y2t0dnMwclF2NVN2QTgwSkJoNVQ5bWFkNlFBTTN6MUNzQ0pvdGxV?=
 =?utf-8?B?U2Uxd1JQMFR5VStlQ0ZSSXhWdDBkWDI0alVQNG5nempaUE1CdVFrSFh3YXhD?=
 =?utf-8?B?UC85aWtQV3FiQVBSU1ZISXlwQTBqdFJxRTVLNHdwUHpuMGhCY1I2ajlqamY4?=
 =?utf-8?B?d2x6SFFlSHFCRHZoTC95MzdJaS9McW4yb3RMVmxGY1RuMTFHOE5WaEdIMjUv?=
 =?utf-8?B?RCtyV20yNVdxODR4eHFIUHhYcWFoY3c1TzBPRDdQTUsrMGJrWisyUlE1d2Z5?=
 =?utf-8?B?RE80VU5yWjM5N3l0V1VObTVDRmVMUW01TWlQZ01TdDJmVHBpWWlldEZ0TUtj?=
 =?utf-8?B?N3NqTVhINmh6eVc0a1c1UHJ3Mk90cENLa1lQdnBJWkExUE5mcW5GTzM2Nlow?=
 =?utf-8?B?L2cyWmVrMkxzMTVDdGFhMUhxT2IrUjlWQlJQc01NQlZ4RTkwclVaWmZpWWg3?=
 =?utf-8?B?WElyRkNrQTVrZGpXdkJQakFYejlWUWN1ZEVYVHpIMGtzVGp3Y1d0SW96b2tt?=
 =?utf-8?Q?mJ2rnYO1gQ6Bs56P8cpPSPdontn+A/p4uMXcApRJtb3Z?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c824d5e-98b1-4c2b-9f23-08dda825234a
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8784.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 13:46:01.8452
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhf++c99Y5mQXLYzL4X5xUtpqCNzODQSfEwso979KpEGu3h2xGhz5qzNRTwJU19tSztKME/XQN+yXKuRhB2IEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_064608_159336_ACEA3C62 
X-CRM114-Status: GOOD (  19.21  )
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

SGkgVmlub2QsCgpPbiAxNS8wNS8yMDI1IDEyOjAzLCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9u
IDAyLzA1LzIwMjUgMTA6MjYsIFdheW5lIENoYW5nIHdyb3RlOgo+PiBXaGVuIHRyYW5zaXRpb25p
bmcgZnJvbSBVU0JfUk9MRV9ERVZJQ0UgdG8gVVNCX1JPTEVfTk9ORSwgdGhlIGNvZGUKPj4gYXNz
dW1lZCB0aGF0IHRoZSByZWd1bGF0b3Igc2hvdWxkIGJlIGRpc2FibGVkLiBIb3dldmVyLCBpZiB0
aGUgcmVndWxhdG9yCj4+IGlzIG1hcmtlZCBhcyBhbHdheXMtb24sIHJlZ3VsYXRvcl9pc19lbmFi
bGVkKCkgY29udGludWVzIHRvIHJldHVybiB0cnVlLAo+PiBsZWFkaW5nIHRvIGFuIGluY29ycmVj
dCBhdHRlbXB0IHRvIGRpc2FibGUgYSByZWd1bGF0b3Igd2hpY2ggaXMgbm90Cj4+IGVuYWJsZWQu
Cj4+Cj4+IFRoaXMgY2FuIHJlc3VsdCBpbiB3YXJuaW5ncyBzdWNoIGFzOgo+Pgo+PiBbwqAgMjUw
LjE1NTYyNF0gV0FSTklORzogQ1BVOiAxIFBJRDogNzMyNiBhdCBkcml2ZXJzL3JlZ3VsYXRvci9j
b3JlLmM6MzAwNAo+PiBfcmVndWxhdG9yX2Rpc2FibGUrMHhlNC8weDFhMAo+PiBbwqAgMjUwLjE1
NTY1Ml0gdW5iYWxhbmNlZCBkaXNhYmxlcyBmb3IgVklOX1NZU181VjAKPj4KPj4gVG8gZml4IHRo
aXMsIHdlIG1vdmUgdGhlIHJlZ3VsYXRvciBjb250cm9sIGxvZ2ljIGludG8KPj4gdGVncmExODZf
eHVzYl9wYWRjdGxfaWRfb3ZlcnJpZGUoKSBmdW5jdGlvbiBzaW5jZSBpdCdzIGRpcmVjdGx5IHJl
bGF0ZWQKPj4gdG8gdGhlIElEIG92ZXJyaWRlIHN0YXRlLiBUaGUgcmVndWxhdG9yIGlzIG5vdyBv
bmx5IGRpc2FibGVkIHdoZW4gdGhlIAo+PiByb2xlCj4+IHRyYW5zaXRpb25zIGZyb20gVVNCX1JP
TEVfSE9TVCB0byBVU0JfUk9MRV9OT05FLCBieSBjaGVja2luZyB0aGUgVkJVU19JRAo+PiByZWdp
c3Rlci4gVGhpcyBlbnN1cmVzIHRoYXQgcmVndWxhdG9yIGVuYWJsZS9kaXNhYmxlIG9wZXJhdGlv
bnMgYXJlCj4+IHByb3Blcmx5IGJhbGFuY2VkIGFuZCBvbmx5IG9jY3VyIHdoZW4gYWN0dWFsbHkg
dHJhbnNpdGlvbmluZyB0by9mcm9tIGhvc3QKPj4gbW9kZS4KPj4KPj4gRml4ZXM6IDQ5ZDQ2ZTNj
N2U1OSAoInBoeTogdGVncmE6IHh1c2I6IEFkZCBzZXRfbW9kZSBzdXBwb3J0IGZvciBVVE1JIAo+
PiBwaHkgb24gVGVncmExODYiKQo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+PiBTaWdu
ZWQtb2ZmLWJ5OiBXYXluZSBDaGFuZyA8d2F5bmVjQG52aWRpYS5jb20+Cj4+IC0tLQo+PiDCoCBk
cml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMgfCA1OSArKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCAyMiBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2ItdGVn
cmExODYuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhLyAKPj4geHVzYi10ZWdyYTE4Ni5jCj4+IGluZGV4
IGZhZTYyNDJhYTczMC4uMWIzNWQ1MDgyMWY3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS90
ZWdyYS94dXNiLXRlZ3JhMTg2LmMKPj4gKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdy
YTE4Ni5jCj4+IEBAIC03NzQsMTMgKzc3NCwxNSBAQCBzdGF0aWMgaW50IAo+PiB0ZWdyYTE4Nl94
dXNiX3BhZGN0bF92YnVzX292ZXJyaWRlKHN0cnVjdCB0ZWdyYV94dXNiX3BhZGN0bCAqcGFkY3Rs
LAo+PiDCoCB9Cj4+IMKgIHN0YXRpYyBpbnQgdGVncmExODZfeHVzYl9wYWRjdGxfaWRfb3ZlcnJp
ZGUoc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsIAo+PiAqcGFkY3RsLAo+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib29sIHN0YXR1cykKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHRlZ3JhX3h1
c2JfdXNiMl9wb3J0ICpwb3J0LCBib29sIHN0YXR1cykKPj4gwqAgewo+PiAtwqDCoMKgIHUzMiB2
YWx1ZTsKPj4gK8KgwqDCoCB1MzIgdmFsdWUsIGlkX292ZXJyaWRlOwo+PiArwqDCoMKgIGludCBl
cnIgPSAwOwo+PiDCoMKgwqDCoMKgIGRldl9kYmcocGFkY3RsLT5kZXYsICIlcyBpZCBvdmVycmlk
ZVxuIiwgc3RhdHVzID8gInNldCIgOiAiY2xlYXIiKTsKPj4gwqDCoMKgwqDCoCB2YWx1ZSA9IHBh
ZGN0bF9yZWFkbChwYWRjdGwsIFVTQjJfVkJVU19JRCk7Cj4+ICvCoMKgwqAgaWRfb3ZlcnJpZGUg
PSB2YWx1ZSAmIElEX09WRVJSSURFKH4wKTsKPj4gwqDCoMKgwqDCoCBpZiAoc3RhdHVzKSB7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodmFsdWUgJiBWQlVTX09WRVJSSURFKSB7Cj4+IEBAIC03
OTEsMTUgKzc5MywzNSBAQCBzdGF0aWMgaW50IAo+PiB0ZWdyYTE4Nl94dXNiX3BhZGN0bF9pZF9v
dmVycmlkZShzdHJ1Y3QgdGVncmFfeHVzYl9wYWRjdGwgKnBhZGN0bCwKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdmFsdWUgPSBwYWRjdGxfcmVhZGwocGFkY3RsLCBVU0IyX1ZCVVNfSUQp
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiAtwqDCoMKgwqDCoMKgwqAgdmFsdWUgJj0gfklE
X09WRVJSSURFKH4wKTsKPj4gLcKgwqDCoMKgwqDCoMKgIHZhbHVlIHw9IElEX09WRVJSSURFX0dS
T1VOREVEOwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGlkX292ZXJyaWRlICE9IElEX09WRVJSSURF
X0dST1VOREVEKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhbHVlICY9IH5JRF9PVkVS
UklERSh+MCk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhbHVlIHw9IElEX09WRVJSSURF
X0dST1VOREVEOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYWRjdGxfd3JpdGVsKHBhZGN0
bCwgdmFsdWUsIFVTQjJfVkJVU19JRCk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZXJyID0gcmVndWxhdG9yX2VuYWJsZShwb3J0LT5zdXBwbHkpOwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAoZXJyKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2
X2VycihwYWRjdGwtPmRldiwgIkZhaWxlZCB0byBlbmFibGUgcmVndWxhdG9yOiAKPj4gJWRcbiIs
IGVycik7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDC
oMKgIH0gZWxzZSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCB2YWx1ZSAmPSB+SURfT1ZFUlJJREUofjAp
Owo+PiAtwqDCoMKgwqDCoMKgwqAgdmFsdWUgfD0gSURfT1ZFUlJJREVfRkxPQVRJTkc7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBpZiAoaWRfb3ZlcnJpZGUgPT0gSURfT1ZFUlJJREVfR1JPVU5ERUQpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqIFRoZSByZWd1bGF0b3IgaXMgZGlzYWJsZWQgb25seSB3aGVuIHRoZSByb2xlIHRyYW5zaXRp
b25zCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBmcm9tIFVTQl9ST0xFX0hPU1QgdG8g
VVNCX1JPTEVfTk9ORS4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlcnIgPSByZWd1bGF0b3JfZGlzYWJsZShwb3J0LT5zdXBwbHkpOwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZXJyKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZGV2X2VycihwYWRjdGwtPmRldiwgIkZhaWxlZCB0byBkaXNhYmxlIHJl
Z3VsYXRvcjogCj4+ICVkXG4iLCBlcnIpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiBlcnI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gKwo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB2YWx1ZSAmPSB+SURfT1ZFUlJJREUofjApOwo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB2YWx1ZSB8PSBJRF9PVkVSUklERV9GTE9BVElORzsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcGFkY3RsX3dyaXRlbChwYWRjdGwsIHZhbHVlLCBVU0IyX1ZCVVNf
SUQpOwo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIH0KPj4gLcKgwqDCoCBwYWRj
dGxfd3JpdGVsKHBhZGN0bCwgdmFsdWUsIFVTQjJfVkJVU19JRCk7Cj4+IC0KPj4gwqDCoMKgwqDC
oCByZXR1cm4gMDsKPj4gwqAgfQo+PiBAQCAtODE4LDI3ICs4NDAsMjAgQEAgc3RhdGljIGludCB0
ZWdyYTE4Nl91dG1pX3BoeV9zZXRfbW9kZShzdHJ1Y3QgcGh5IAo+PiAqcGh5LCBlbnVtIHBoeV9t
b2RlIG1vZGUsCj4+IMKgwqDCoMKgwqAgaWYgKG1vZGUgPT0gUEhZX01PREVfVVNCX09URykgewo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHN1Ym1vZGUgPT0gVVNCX1JPTEVfSE9TVCkgewo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0ZWdyYTE4Nl94dXNiX3BhZGN0bF9pZF9vdmVycmlkZShw
YWRjdGwsIHRydWUpOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IHJlZ3Vs
YXRvcl9lbmFibGUocG9ydC0+c3VwcGx5KTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXJy
ID0gdGVncmExODZfeHVzYl9wYWRjdGxfaWRfb3ZlcnJpZGUocGFkY3RsLCBwb3J0LCB0cnVlKTsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0gZWxzZSBpZiAo
c3VibW9kZSA9PSBVU0JfUk9MRV9ERVZJQ0UpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdGVncmExODZfeHVzYl9wYWRjdGxfdmJ1c19vdmVycmlkZShwYWRjdGwsIHRydWUpOwo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgfSBlbHNlIGlmIChzdWJtb2RlID09IFVTQl9ST0xFX05PTkUpIHsK
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqIFdoZW4gcG9ydCBpcyBwZXJpcGhlcmFsIG9ubHkgb3Igcm9sZSB0cmFuc2l0aW9ucyB0bwo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogVVNCX1JPTEVfTk9ORSBmcm9tIFVTQl9ST0xF
X0RFVklDRSwgcmVndWxhdG9yIGlzIG5vdAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
ZW5hYmxlZC4KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAocmVndWxhdG9yX2lzX2VuYWJsZWQocG9ydC0+c3VwcGx5KSkKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3JfZGlzYWJsZShwb3J0LT5zdXBw
bHkpOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRlZ3JhMTg2X3h1c2JfcGFkY3Rs
X2lkX292ZXJyaWRlKHBhZGN0bCwgZmFsc2UpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBl
cnIgPSB0ZWdyYTE4Nl94dXNiX3BhZGN0bF9pZF9vdmVycmlkZShwYWRjdGwsIHBvcnQsIGZhbHNl
KTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dGVncmExODZfeHVzYl9wYWRjdGxfdmJ1c19vdmVycmlkZShwYWRjdGwsIGZhbHNlKTsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9Cj4+IC0KPj4gK291dDoKPj4gwqDCoMKg
wqDCoCBtdXRleF91bmxvY2soJnBhZGN0bC0+bG9jayk7Cj4+IC0KPj4gwqDCoMKgwqDCoCByZXR1
cm4gZXJyOwo+PiDCoCB9Cj4gCj4gCj4gUmV2aWV3ZWQtYnk6IEpvbiBIdW50ZXIgPGpvbmF0aGFu
aEBudmlkaWEuY29tPgo+IFRlc3RlZC1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5j
b20+Cj4gCj4gVGhhbmtzIGZvciBmaXhpbmcgdGhpcyEKCkNhbiB3ZSBnZXQgdGhpcyBpbnRvIC1u
ZXh0IG5vdz8KClRoYW5rcyEKCkpvbgoKLS0gCm52cHVibGljCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
