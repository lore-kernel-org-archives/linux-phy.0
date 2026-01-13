Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A37D0C857
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 11:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oQC0JvkgVF56p3aGPGHDZJPs0mah3DML9OsR5y3QVkk=; b=35cEEYTj0kHhC4ZGU+y3RYCvgn
	EISOy1VSKCld7Qavv3ygtDSUSd8pb0gDbtDUcxlVul5Acc0LW1JNwb2bYwrbcR7Caqm/l3f+CVyKG
	A0rvHXZAkRkjyJnaMZg20U1rumC4oQuLDZkotMOZ/HqdkpNoTo73H9x9EN5Yf6uRzXHW54H7Su3E2
	S3z7FPTC6hmYOOBlLKZde8Ltysh/VZyssIuqrt+hbCMgeEi8ei+5gzdIk7KgK1jWlNt5xJwy5h3ve
	L1EDFaVECOcKaRLcW5RP0QNUkCmQVixBwf5zgRR/YHungOQjRUIupxeko4bGN0a8tDC6QvlqUJJdz
	v3/lNKdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcpb-0000000727d-2J3q;
	Tue, 13 Jan 2026 11:45:03 +0000
Received: from mail-eastusazon11012006.outbound.protection.outlook.com ([52.101.53.6] helo=BL0PR03CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcpZ-00000007270-1Utu
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 11:45:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r1OOkvx5CXtLSMMWldw+EssY0KJVW9HA83PGTXQrWLaanF4tMLTanUhjPCirIU8QxuhzAgJT6+9TbwHA6UjoppwZbKgPZXqwjxJysTLUzdfhxvk4qWnmE30g6SQ3CwmMzRb44EXD/F2JT+TmVFg3Ts6TPBJ4sMxfvPU+iRXyXswoCfuM3FiJKv+DW5BTLJcSGGICwbwyXrqCMhTKE9264o3cmlCtMmu4VEls+g3xvvTV1Am/QSFC8JwSEMD43I2qvs/8zlF7hpUo/f7oP0b3Iwj4ToN50dJE2ZEQ2CECDD5xcpJ4vPUDDK7q20VteddBekr4B4+wYZ2/Rn7jJrUlMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+q9s82g9kIa3hS7fkQecWGhdEnZQ/dk7sNSFf5Caaxg=;
 b=Knwk4956eaxf9ycDmdfDddRiurJdDlV+PqXiHmF7I+IKi5KMJRsVZ8zQJy6GuSLIKJ1kyp0gx4ygq81AfBqPMcI180bQ6PdHe7qKbQ1uNh0YrnCgWMYQx4FbonUhF4dqmpKoHBlAmfBwyFI1VDh5URvvAUqOJg8mmeS+5GdVLxFb72ElRa9GH2aGT28cKE0eYA5tuuDKilfvBcf5Nkhxg0g8epaQ2WVNKqjhfDp70u4bSdP7WI/tF+eDhffRHfK+fdjmXJ3XpfcTTtaIkwNVdus4eSh6CqxAlQRP/iuwOgIBYpPG71klISnibo5HMsfKzulT3vSS5uPTHZDBd2znoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+q9s82g9kIa3hS7fkQecWGhdEnZQ/dk7sNSFf5Caaxg=;
 b=QaClEiO8mgvurNvg6ss3PsncYK9bQuHhLD6p85tAIQJd2bwdixcpsTwTKuVgKNWuME+HKv3bjVvQ9RQ11F7Tf9rCNtkQ7d3zRO1fbPxiH26hgUb/NPjYlzvUFkHyfo2Hxx2XLyOmaT6dz4QNg9Rv8M0C8y30P1ya0twA/bNB+EqI7150QuedmToU31+x6M5Sin3Wwm5WsBuWWWbiUH3UxSJm16Yoil7knCnT3WNrgiaImmclzaZI2utTzyMgvQJbBge/2HQgbN531wlEYQvJUbfpcrWc07lovr4Q0TPTEs+nKbwIhuYRK9HOWIHn1DyV3k3wcu33kI38uUa+WEHGdQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by DS2PR12MB9566.namprd12.prod.outlook.com (2603:10b6:8:279::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 11:44:56 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 11:44:56 +0000
Message-ID: <6a0d379f-d215-4efc-bdd0-c9a74d31614a@nvidia.com>
Date: Tue, 13 Jan 2026 11:44:51 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
From: Jon Hunter <jonathanh@nvidia.com>
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
 <e9f18b0d-6462-43e7-955f-45337914b321@nvidia.com>
Content-Language: en-US
In-Reply-To: <e9f18b0d-6462-43e7-955f-45337914b321@nvidia.com>
X-ClientProxiedBy: CH0P221CA0026.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11d::6) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|DS2PR12MB9566:EE_
X-MS-Office365-Filtering-Correlation-Id: af7eb40b-6a9a-4671-47c3-08de52992c4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|921020|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnNkbXpQZXdhS1hVYy9HNEp4amkvcXlIczhkR2xtVzNqc01TbGVoYUNlb3lv?=
 =?utf-8?B?eFZFRzlEME5wVnlWSUNrZnAyam9obWhGUkwxLzZqbXV6dFp3cUVUSWV2TEhM?=
 =?utf-8?B?RlE5VHRqaG1TaUFSKzR3dFNQbStBTis4TGYxSUI2STk2eHRqNndnRHVVaVNS?=
 =?utf-8?B?cE1WY1ZUbVdNY3EwUHlkNlFMNEk5TXhCOGVSK2J1ZzBIMGE0dmRGbVgvUXcx?=
 =?utf-8?B?NEM3UEUvTTdKbU4xSEdBUk1IRmQ5SnpYQlhSWFU0RHZiWU1pZXlUV1RDaXdZ?=
 =?utf-8?B?ZmQ1NHlkWFY3QW1STGRLTmVzTlNVdkYvTU9STmVJWXpnWTg2NzVzb1dGTWpO?=
 =?utf-8?B?WTBUL28yZmpZT0Y5ajlpVU5NQTYyTWk0c1NQendoWXFYUXptQXBTc3IyS0Fu?=
 =?utf-8?B?UUpUMDVINE04dkZUT3IzYVQ1cEk1UkU4c1l5bU1mNTZrb096a2JsT3ZxZzB3?=
 =?utf-8?B?R1ZEN0E1VjZ6SDljZCtTQk96WTV1eTZNbEhWZkl6M1Boa2x6OXZoOWlQcVhV?=
 =?utf-8?B?VTVTYSt4VXNwODRDQXFqN3ZTMW5pOTVSSWo4NWt4TSthL3J4RkFBUll4cUgy?=
 =?utf-8?B?c2NUb29DeERPY0tUT2IxOU9NZm5CN2pRandtTS9RelRTTndtaGFSckVwNlZQ?=
 =?utf-8?B?T0pyRkFIZlFhTGNhRUFveDN5dXdFVXRSUklnNEtKMHhnY3F0b1hROUc2d3Nh?=
 =?utf-8?B?YVBEM2pPdWR4WXVZTUltTWdaaWNRa2pYd3l5RjVMbTZmQUtIRG5XbFhUSjZM?=
 =?utf-8?B?WS9JbDMrYmZKRFJkZjNtN0J3Z0NMYVZ3dmdVVVlOemFkWXJGeFZXaGgxRk1n?=
 =?utf-8?B?a05sbFY5b1NHQkEyY2JJQnBOVGpQMFZNNWsxY20rN3ErS3VabU5keFB3c1pZ?=
 =?utf-8?B?ZjR2ZlRxTVJKNGpBeGMrR2hUQmJMQVNSSWllWTFEUCtJWTVZdkpqOHE4ZXY2?=
 =?utf-8?B?OHlabmhOcTkrMUNMM0NMMkY3Y2lXa0FiZkhzMy84clZUNm5kUWIxRE5UL0JL?=
 =?utf-8?B?U3ZDK3NKN01uRElKV3ZhMU5nK3loQnRZc2lmbG1wblEzYTZCd2h2dk80eGUy?=
 =?utf-8?B?MW1Fb3lEd0o4bytiTEVLeGpqMmtBWDBSYkVSenlDZUNyRkRJdlUyYURuQWI4?=
 =?utf-8?B?SmZoa24zYVY4Vm51c1htL1hwaUdFYlcwNHFkdUllMTZGTGt2MUYvQkZwWksr?=
 =?utf-8?B?YkhCckp0dHZQYWVqSU1aamZVc0ZqMmlVQUJzWmpTdHBkcXNSNnBJU3VRSXVn?=
 =?utf-8?B?UU5rZmRKMThoZzFIRzl0QkFRNVp3YWd2aWc1ejV3aFNkbzhtTkkvenhyTGlF?=
 =?utf-8?B?Y1ducWFLWGYrRFNOQWpNQVdDSFJpcWh0dktkV1JmQjQ4VU03RmtSRDZlaSt2?=
 =?utf-8?B?TDBxVlNOandkNks0MVZxZmRJbm5qNzBEcEt5T0xKWW5YTlJIdElPYnZqWmFl?=
 =?utf-8?B?c21qK0hOcVRmOUlpYnZHNU5sL0dQYXd2ZHQ5WnFyaUdEcTk0NzUyN0xZL2VZ?=
 =?utf-8?B?d0l6cUNiNGgwaEpRNFh4RXB3R0orRjAzZ2ZTSDdpcTFZTFFYTCsycHRWVTdM?=
 =?utf-8?B?RDRFc1F2RXJka3NGWGNVZG12RyswSWZJMDdMSFlET3lPNWxGckNvWUQ4VXFG?=
 =?utf-8?B?QnFVZnFxSmREMXVQNm9wTWxvcUlHVy9lcS80OTl1VjZseTMwRlRoYSs4QWVZ?=
 =?utf-8?B?ZDlUaCtIN2pSbDVJeGk4a1NaVHZhczZ4NU9WNkp0VFdYeW1XK3BEZEcxYU9S?=
 =?utf-8?B?UUpiSDJ4bGpITDBnbEpKSXRseGlXbmRDNHQrK3YzMWVKTnZjSGJzckJQazZB?=
 =?utf-8?B?MHFhNkFuV2FES1FVTW9uMVpOZVlTWHRWWFNFajRidkczUlRPZXdjeTNrZlhi?=
 =?utf-8?B?Q0tqeTl4d21nVzRYTUZjQUNvdWZZemFUeDE1eFZOMmJjV3I0RG4yeFRXSEJS?=
 =?utf-8?B?L2U5NlBpL2RJZDY3OW05VFBrSVBiU2ZONG5xU1dLbGpZT3JZQ1gxU2tWdnBz?=
 =?utf-8?Q?mFUh+e2U1D6qOBkZx8fjN9OZ3lR8dY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUdqT0FkSHh4aG1iTnh3WWswWDhhYkdtNC91Y3hsaFhuWFl5d2RBOCthY1hS?=
 =?utf-8?B?MXFBakZDMFNNenZMdFlhdTRZOUpuR09iMndBNjFneUMzSkNXZjlWVURsVVBG?=
 =?utf-8?B?NGp6NUdwaERjM3hZZXVWQ2lZQlg1d0dYVGM4VjMyWUNrQ2lNakl4Z3Nzb29h?=
 =?utf-8?B?TFk5UlpNREpDenFlZjdEcUVmMUV2QlJqYUQ3M2RsSkhpc0lURHpUWDJXSmQ2?=
 =?utf-8?B?OEFNUXNBRTlON0JBMTRkVDNsRW9CWXVwWFRUdGVBaTRpeFZIQU41NmVzcXZQ?=
 =?utf-8?B?L1EzVUVXUUw5R1JSdXBGQnhzQ09pODZpdUErNVhpcE9tamZzbFB0a0NtbXJt?=
 =?utf-8?B?QlBqSUxCcWZtYjc5U2V1V3dmMVMvblFWb1RrYkxSZ21XOVlZanRWS1RtcEJn?=
 =?utf-8?B?S2c2TWNXWmtyS3lyYzVES2o5MHZPa3BYMjl0dkZIUGVkQmtHb1FGMk5QWGRq?=
 =?utf-8?B?S25EZXl6N0I2QWpEQ3h1MTF6a2pRcG9LZ200QWN3RkJEZERWMHYxdG9yUWpX?=
 =?utf-8?B?QUpTaEoraVJ5TUtMZ1lueHlkeVJNOTAwcnFoclJGa1FNNVJreXgxT3JodW04?=
 =?utf-8?B?bFlBN3RDeFFaWWdTWlBXNnhJRDNDMGxCNi9paTh3bnpaajg2WWpiUGtzVHRC?=
 =?utf-8?B?YlFobENYK3piSFRLZHlEbm55SHZ6cmUxRVkxdHRIVWJFTVRWczRrSy82UkYr?=
 =?utf-8?B?SmFONlRidndiQ2pjZ2w0RUYrcEZrMSt0dXM0clQzTXZTM3lQSTBjSUxLUlA5?=
 =?utf-8?B?TWRmV1dFYStwcFMwN2JieWNNSmtBempuanh2MGY0UTJ3b0NocVlzQndMRVl4?=
 =?utf-8?B?VjFEclU1ZURXMEZ2a1FHUTJlNnFRbGlObUd5byttb2lrU291TWRKNFVoeGNV?=
 =?utf-8?B?ZU0xczgveDBlY04xQ2pIRDVUUGtxQWtONWtjanZoOUc1eHgwa0w4c0l0TnZH?=
 =?utf-8?B?bjAzZlJDYzdYUHJhMjJCTDZBclE3c0pGZk1aVzJJb2ZjaU9PVzE3Y2dqZnJy?=
 =?utf-8?B?SlhCUW5HYWVoYWJJcW0ycEltZnV6VVVuZnN4TDVnT2xCaWVLVllUYkJZdTAx?=
 =?utf-8?B?N1l1ckNvbmI2Ti8yS2VJU2J0TndnbTg4T1BKMHNDQzF6WnhKbmZsTGVIV3hL?=
 =?utf-8?B?WDkzNTh6N0svVVkvcDVTMXVEckVqVEJxMnh6ditKYlloQzlYN1cvQVJsZ2Fo?=
 =?utf-8?B?THljMzJacnlKRTNKZEJWekNsa08rMFlLaHJKeEk2WWRvaFRuL3E3bmdwMldy?=
 =?utf-8?B?L2pLS1k1Z1FvWU9HaU4wSjNOWEd0UXg5QWdKTUhUSVpsYmM4TkllMFhUWWtt?=
 =?utf-8?B?ZzRvaGZBMDQ3MXZlOWdkSUc0SFFuZlREb0xCMHlINTlzSjRrSHIvUDFRVkFP?=
 =?utf-8?B?VFc1S2hPWk1MTThid3djU2dCc2w4WXFRVCtZcUU4U3dOQktmdW9GZS8wNGdV?=
 =?utf-8?B?ak9JaFpHTlRHQXZTUG1McTVlYW9LQThKbHBVWk9lZGJJY2lqWGF1TTg5ZFNa?=
 =?utf-8?B?MVFLODI5M0VYZk5iQWF6MzdMdG9hbTJKc2dYMFhCTEtNZlN1bHJhR0t1STBV?=
 =?utf-8?B?cGZ6eGVLalRSaE8vS0U3d1VmNzRXa01vQkc2UGYxbXdkd2s5cm9ac2RhdEx3?=
 =?utf-8?B?NGY2WlBXenlvTjFTamxxN01aN0VnNjBaWHVMMGhlS2xjYkJ6Mm9icmc5OEQy?=
 =?utf-8?B?ald5OTg5THdmbnI1aGQrdVZGNk1CNnlnZ3NrTzMwQlVlN0hJZ1FRbE94VTQw?=
 =?utf-8?B?UmdsRk9PTzBhWXJ2Z3hqZ2JlZ3E4VCt1VTZ4M1NQUXZpSzVDdUh5eDVBSkw0?=
 =?utf-8?B?cDlwQS95SXBEeWVsZWF0RElLcHlsdHl5TXpLOEI3Y2I0UU9UTTJYOUlaS1Er?=
 =?utf-8?B?QTIxWFhzcTNUTWRESEZVbWpRWUxjNXN3QXF6bEliakpETmw0d29oZ29iWUJu?=
 =?utf-8?B?OXZEVVY4dXQrUmRUeTA3NUY0Mjg1RHU2UWVYdDRES2ZQTGQ4K1lFOWs4ZzFs?=
 =?utf-8?B?emo3eEZCOVJEQmYyNmxGM1kvcDA1MzA1Z3VaSkpadFNReDlyMjlaUEJ2QUpv?=
 =?utf-8?B?NGdxVEJkOVZXa0U4U3NuUVhuOU1rWW8zeHAzSXlXRFp1eWYzRHc2RFVCZXRw?=
 =?utf-8?B?bFBYRWJxUWRqQ1BBMVBBVzcyNU14ZmRSdGx6clVDN3FLMzZORmlWU2JMcEVW?=
 =?utf-8?B?cm1zeVNYaDI2VGN4V2lDbE5BN1ltR3RnQmR6RE1yc0tMK3VoU0xOTUYyc2pk?=
 =?utf-8?B?SkRMdzZmbWFTcmRwTHBzYURnOVRYeVNOM0p5VDBreW1LeUpOa3EreWo1RFFV?=
 =?utf-8?B?N2hWSE9MMWJUaS91Z3V6NnlJR09LTGNLYmoyTzdkRERybEh3cHBTdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af7eb40b-6a9a-4671-47c3-08de52992c4b
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 11:44:56.0825
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VkGZMO6/8KwimXP9i8iuZJVuxdnKP/c0e9caYOsE8rwUOGEfT4AWZSrUPSm3lYMDSVDg2r/jwnreRTtPS+3VOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS2PR12MB9566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_034501_403136_FA74B8B5 
X-CRM114-Status: GOOD (  23.46  )
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

Ck9uIDEzLzAxLzIwMjYgMTE6MzUsIEpvbiBIdW50ZXIgd3JvdGU6Cj4gCj4gT24gMDQvMTIvMjAy
NSAyMToyNywgRGlvZ28gSXZvIHdyb3RlOgo+PiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBv
ZiBVU0IyIHJvbGUgc3dpdGNoaW5nIG9uIFRlZ3JhIHJlbGllcyBvbgo+PiB3aGljaGV2ZXIgdGhl
IHByZXZpb3VzIFVTQiBjb250cm9sbGVyIGRyaXZlciB3YXMgdXNpbmcgdGhlIFBIWSB0byBmaXJz
dAo+PiAieWllbGQiIGl0IGJhY2sgdG8gVVNCX1JPTEVfTk9ORSBiZWZvcmUgdGhlIG5leHQgY29u
dHJvbGxlciBjb25maWd1cmVzCj4+IGl0IGZvciB0aGUgbmV3IHJvbGUuIEhvd2V2ZXIsIG5vIG1l
Y2hhbmlzbSB0byBndWFyYW50ZWUgdGhpcyBvcmRlcmluZwo+PiB3YXMgaW1wbGVtZW50ZWQsIGFu
ZCBjdXJyZW50bHksIGluIHRoZSBnZW5lcmFsIGNhc2UsIHRoZSBjb25maWd1cmF0aW9uCj4+IGZ1
bmN0aW9ucyB0ZWdyYV94aGNpX2lkX3dvcmsoKSBhbmQgdGVncmFfeHVkY191c2Jfcm9sZV9zd193
b3JrKCkgZW5kIHVwCj4+IHJ1bm5pbmcgaW4gdGhlIHNhbWUgb3JkZXIgcmVnYXJkbGVzcyBvZiB0
aGUgdHJhbnNpdGlvbiBiZWluZyBIT1NULT5ERVZJQ0UKPj4gb3IgREVWSUNFLT5IT1NULCBsZWFk
aW5nIHRvIG9uZSBvZiB0aGVzZSB0cmFuc2l0aW9ucyBlbmRpbmcgdXAgaW4gYQo+PiBub24td29y
a2luZyBzdGF0ZSBkdWUgdG8gdGhlIG5ldyBjb25maWd1cmF0aW9uIGJlaW5nIGNsb2JiZXJlZCBi
eSB0aGUKPj4gcHJldmlvdXMgY29udHJvbGxlciBkcml2ZXIgc2V0dGluZyBVU0JfUk9MRV9OT05F
IGFmdGVyIHRoZSBmYWN0Lgo+Pgo+PiBGaXggdGhpcyBieSBpbnRyb2R1Y2luZyBhIGhlbHBlciB0
aGF0IHdhaXRzIGZvciB0aGUgVVNCMiBwb3J04oCZcyBjdXJyZW50Cj4+IHJvbGUgdG8gYmVjb21l
IFVTQl9ST0xFX05PTkUgYW5kIGFkZCBpdCBpbiB0aGUgY29uZmlndXJhdGlvbiBmdW5jdGlvbnMK
Pj4gYWJvdmUgYmVmb3JlIHNldHRpbmcgdGhlIHJvbGUgdG8gZWl0aGVyIFVTQl9ST0xFX0hPU1Qg
b3IKPj4gVVNCX1JPTEVfREVWSUNFLiBUaGUgc3BlY2lmaWMgcGFyYW1ldGVycyBvZiB0aGUgaGVs
cGVyIGZ1bmN0aW9uIGFyZQo+PiBjaG9pY2VzIHRoYXQgc2VlbSByZWFzb25hYmxlIGluIG15IHRl
c3RpbmcgYW5kIGhhdmUgbm8gb3RoZXIgYmFzaXMuCj4+Cj4+IFRoaXMgd2FzIHRlc3RlZCBvbiBh
IFRlZ3JhMjEwIHBsYXRmb3JtIChTbWF1ZykuIEhvd2V2ZXIsIGR1ZSB0byB0aGUgCj4+IHNpbWls
YXIKPj4gYXBwcm9hY2ggaW4gVGVncmExODYgaXQgaXMgbGlrZWx5IHRoYXQgbm90IG9ubHkgdGhp
cyBwcm9ibGVtIGV4aXN0cyB0aGVyZQo+PiBidXQgdGhhdCB0aGlzIHBhdGNoIGFsc28gZml4ZXMg
aXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERpb2dvIEl2byA8ZGlvZ28uaXZvQHRlY25pY28udWxp
c2JvYS5wdD4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCBkcml2ZXJzL3Vz
Yi9nYWRnZXQvdWRjL3RlZ3JhLXh1ZGMuYyB8wqAgNCArKysrCj4+IMKgIGRyaXZlcnMvdXNiL2hv
c3QveGhjaS10ZWdyYS5jwqDCoMKgwqDCoMKgIHwgMTUgKysrKysrKysrKy0tLS0tCj4+IMKgIGlu
Y2x1ZGUvbGludXgvcGh5L3RlZ3JhL3h1c2IuaMKgwqDCoMKgwqAgfMKgIDEgKwo+PiDCoCA0IGZp
bGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNi
LmMKPj4gaW5kZXggYzg5ZGY5NWFhNmNhLi5lMDVjM2YyZDE0MjEgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+PiArKysgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMK
Pj4gQEAgLTc0MCw2ICs3NDAsMjkgQEAgc3RhdGljIHZvaWQgCj4+IHRlZ3JhX3h1c2JfcGFyc2Vf
dXNiX3JvbGVfZGVmYXVsdF9tb2RlKHN0cnVjdCB0ZWdyYV94dXNiX3BvcnQgKnBvcnQpCj4+IMKg
wqDCoMKgwqAgfQo+PiDCoCB9Cj4+ICtib29sIHRlZ3JhX3h1c2JfdXNiMl9wb3J0X3dhaXRfcm9s
ZV9ub25lKHN0cnVjdCB0ZWdyYV94dXNiX3BhZGN0bCAKPj4gKnBhZGN0bCwgaW50IGluZGV4KQo+
PiArewo+PiArwqDCoMKgIHN0cnVjdCB0ZWdyYV94dXNiX3VzYjJfcG9ydCAqdXNiMiA9IAo+PiB0
ZWdyYV94dXNiX2ZpbmRfdXNiMl9wb3J0KHBhZGN0bCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlu
ZGV4KTsKPj4gK8KgwqDCoCBpbnQgcmV0cmllcyA9IDU7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoIXVz
YjIpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoJnVzYjItPmJhc2UuZGV2LCAibm8gcG9y
dCBmb3VuZCBmb3IgVVNCMiBsYW5lICV1XG4iLCAKPj4gaW5kZXgpOwo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGZhbHNlOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGRvIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIGlmICh1c2IyLT5yb2xlID09IFVTQl9ST0xFX05PTkUpCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCB1c2xl
ZXBfcmFuZ2UoNTAsIDYwKTsKPj4gK8KgwqDCoCB9IHdoaWxlIChyZXRyaWVzLS0pOwo+PiArCj4+
ICvCoMKgwqAgZGV2X2VycigmdXNiMi0+YmFzZS5kZXYsICJ0aW1lZCBvdXQgd2FpdGluZyBmb3Ig
VVNCX1JPTEVfTk9ORSIpOwo+PiArCj4+ICvCoMKgwqAgcmV0dXJuIGZhbHNlOwo+PiArfQo+IAo+
IAo+IFRoaXMgcGF0Y2ggaXMgY2F1c2luZyB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9yIHRvZGF5
IHdpdGggLW5leHQgLi4uCgpTb3JyeSB0aGlzIGlzIG5vdCBpbiAtbmV4dCwgSSBoYWQganVzdCBh
cHBsaWVkIGxvY2FsbHkgb24gdG9wIQoKPiAgwqAgTU9EUE9TVCBNb2R1bGUuc3ltdmVycwo+IEVS
Uk9SOiBtb2Rwb3N0OiAidGVncmFfeHVzYl91c2IyX3BvcnRfd2FpdF9yb2xlX25vbmUiIFtkcml2
ZXJzL3VzYi9ob3N0LyAKPiB4aGNpLXRlZ3JhLmtvXSB1bmRlZmluZWQhCj4gCj4gVGhlIGFib3Zl
IGZ1bmN0aW9uIHN5bWJvbCBuZWVkcyB0byBiZSBleHBvcnRlZC4KCk5vbmV0aGVsZXNzIHRoaXMg
bmVlZHMgdG8gYmUgZml4ZWQuCgpKb24KCi0tIApudnB1YmxpYwoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
