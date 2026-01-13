Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B75D2D11D
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 14:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ApjCIbfuxT8mlenP0Y53zPhk/FA9E8Fid2Zk7RChDBc=; b=AgqbcqNvqVS5bmVAaYkoeO0q6b
	qm2a6qGPH8Inx3lvSoCXcuzaVXSZp4sJQ+UBnlxRqQdDH5mENSC+/2xngQc0Q6E94dOLrKsrcJ8i2
	G3Ec7JV2AnljdGJSZFZyQwcZAnqsxhfNRr08r75CRrew+m2mCPmcOvefoCuogW0WedB+4Qn76GkEV
	cDpOiJdWnove06GwlrMfWiC9IYiJm3PPQBxqpnxpMtLCkAtG+YXOa1YIScpJboOjgnejYy4JYJjis
	2brjynEWW+hmPSvmPElP0LPknEiK+lJdAlFESeMKiW5G+gflOwvQdqo4CCBm1mNYP5dK79D4luMK4
	0WFSNNmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffik-00000007I1I-1GG7;
	Tue, 13 Jan 2026 14:50:10 +0000
Received: from mail-westcentralusazlp170100005.outbound.protection.outlook.com ([2a01:111:f403:c112::5] helo=CY7PR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffih-00000007I0y-2FkP
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 14:50:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N8HWHmkGYvx02R4oam6KA9IoSx7vqQQQZSxHhIqnhrqLSoKtueYDFsh2+aYvrAFSZ5tI4m4CXPYmH7p2X5oqVf5Nhv8izVKhtz5VW4DnighvM54kB3+rg6JEOIcuzCJt8NkIdje/MhuIsrULSg6jPmydq9rV/S3TRdiWWjxntCr9UwLr7vUqBErqNhEa+0vt/fdBzttBfvGV0i2xjBxgUgO3cuOeBrTRZh3n6xW/dzbkr1JfLRtTak7kAXBhZLnsjNSoCRxVixO4ppwXjZGtXR6O6/PHj+2AbSe/6M5GFRBHOURDiPTZpsU3lvqjRrXGwG+wwgYz2+brFShd+DKJig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GxIDDt0TR/oxyBgCO9AEbNvBS/MWzZguL4DsWBTZXc=;
 b=x9RKFTZVCabq5ljWH2Fi3LRttxeBy2h5EsB7DEZ9ahS1tg3VIzNF9iOPu30IdWn07LaRFWyiUxmcw2LSZg3pQ6HFTzqdtOhsa4LUU+K36uL/jCKXvG2sMGc1vMPgAjW7DVaIEfCo03jEFfFutss3btF2YnijjHP9wSW134WjYujz5D1UC6u7DE/DkQm1uvrwS8CprQ8Rqq9PftOlKMKYFiZc+cHWVOayhhAdvJXxwBng1D0ykx7Zwy/PkclVLK3O7hYoCv4HnLaFxKUde0O7UbQc11NDnL28vcSkzvrOE7KX6spb7mkN8KL2YPYnPxVZPnrDOSM9PNl41xVyjMT75g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GxIDDt0TR/oxyBgCO9AEbNvBS/MWzZguL4DsWBTZXc=;
 b=aYCrbr06S+6AWyQNePkbz0LUdMmhJrxcDOnSJk5mTM/PksOZootws4d9YzddtCsbRFfFVTVTjhUIT6I3Q8Vv+gbwRJ1keCsmF7a9ymtsBqz8gMT3Smk3g2vo4bwomdd+wOHcu6V6PBpzidhejfIke+DeekyEOYZ2a1Sj6SclTF+Ycx0C0FG5whf4Dz5JBqm1k0Ontoaglfv9Gl5DDSuZDVGsPsBVKa7j10wbnR3hWt32EccAsO/T8KKMWlntPwJqOfROcPTc4O2RfMg0r74GhCwCFzK3H+W0WC20cncSx/GlPLYX0j8nN7FFdGbbyuhhrUO1OCrspFtUxdzB9CWGtw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by SJ0PR12MB6943.namprd12.prod.outlook.com (2603:10b6:a03:44b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 14:50:03 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 14:50:03 +0000
Message-ID: <42df7bb1-c587-429f-88ac-1e5ffa7c2b3f@nvidia.com>
Date: Tue, 13 Jan 2026 14:49:59 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: tegra: smaug: Add usb-role-switch support
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
 <20251204-diogo-tegra_phy-v1-5-51a2016d0be8@tecnico.ulisboa.pt>
 <ea60f024-1f39-483c-87e3-36624bd58d49@nvidia.com>
 <ea4ee289-fb46-44be-b5e6-9d3beca7c0d8@tecnico.ulisboa.pt>
Content-Language: en-US
From: Jon Hunter <jonathanh@nvidia.com>
In-Reply-To: <ea4ee289-fb46-44be-b5e6-9d3beca7c0d8@tecnico.ulisboa.pt>
X-ClientProxiedBy: CH0PR13CA0040.namprd13.prod.outlook.com
 (2603:10b6:610:b2::15) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|SJ0PR12MB6943:EE_
X-MS-Office365-Filtering-Correlation-Id: f0251f01-55f9-4b67-0bd0-08de52b308e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|7053199007|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aytDZHBYS0pybG9pL25XS1RRbG1PblVXQndYVGxJNDd4emM2Zmhlb3U3WkIr?=
 =?utf-8?B?SERvN1F4N0pINVpGeXhTdnp4WlpPeUNxWkFFdW1RSWduMExJUHozUS92cmZN?=
 =?utf-8?B?L3JsL254bDYyWWlXYng0RkNKVnBoMXozUWczNnlEeWdXYlZUTkRDZUNyNE0r?=
 =?utf-8?B?Z0RNaVpaZFBmejJPdjBESUN6R21Wb1RBQ0VHNENtQ0k2Z0JQWE1JOXh5MFZT?=
 =?utf-8?B?MmQ2OFk2V1pwUFlKdEVTNzUrZFE4ZEt2bXBTWVUrN1g0cWdSYmVXRW8wb1Ev?=
 =?utf-8?B?QksrSTYwL3kwa1hYRFhNR0xHVzI4UStYTTJ6bWRoU2JCMW1RbTZ6aDExY3ds?=
 =?utf-8?B?eDlxeVBHWWVkVEFBNXZRQzFuYzV4NWFEYWtwQmJBU0VCbFp3Uy8vUzN5WnYr?=
 =?utf-8?B?T0IxQ2d5OXhuTVhmLzBQS2RqZkovSTdLUjZta0RwaUNSb3FaYlBFbmZkRncy?=
 =?utf-8?B?T2VlWTN5LzFlTlZQS1BQc1JTQ2U2MjFYcDNYTFBpMVZKelFqL2VuSUNkQ3pU?=
 =?utf-8?B?M1FSMXB0VWM3Q0pCZHF6Q3VNcVI3WXl5S3BncmllK1RvSXZuVUNLeFBxZW01?=
 =?utf-8?B?Qi80VVA2cU9lREJDbWE2V3pzZ2dYU01UWFYycVVWOWhGSmFyaW9DckJOaElL?=
 =?utf-8?B?UjdXV1I2L0RhSnJFZGN3Njg4Q2dBZk5tOUFPM091N1lzSXJ6MVRLOG5tajRh?=
 =?utf-8?B?MlRMV2l5dkx3MXlwdnZuVTBrR1p3QXpqcFVMSUJHWENzMnBkcjJ3anB3cGpQ?=
 =?utf-8?B?MkxNKytwZVpQQ3Z4S1NVOXYram5SZWFtRkVkVy9PSTViUkl5cHJiKzBjU09B?=
 =?utf-8?B?bDhHZmxBY2Q2Y01BWWJVSXJIZHJrb1lYZnVsNWpyT1o1R1Bwb2h5UTA5a3hp?=
 =?utf-8?B?VEVFM1JuK1hmQmc4R2ZJd0hJR0JSUzFHcEVsRmwxak1EUjNLTXBtVXN4czYv?=
 =?utf-8?B?eXJlUGRJVVI3U256RWFlbWVCakFldlZNVVBzVStsM3IycGxTYThkQkZiaS9S?=
 =?utf-8?B?ZExReFVxS2VKa3RYaTdiNmFwV0kzMkoyNWVNeXh4MlNTb2UyWERlekxYdDly?=
 =?utf-8?B?YW9Dcnc3bG5XdWVNNDF5cUdvUkFiMFF1MCsxQlVrK0tUVDhndHFPRUx6NzRN?=
 =?utf-8?B?cmd5alZEREF4QUpaSVdDZW1JMko0R3B2UUN1dE85eHhsN09lU1BvRXJoVEFU?=
 =?utf-8?B?RXVHcHRFbWRYbEQ3YWFxOGxudTlObTk1bi9YRk9ldW83VFNnZzdGaUhMMlNK?=
 =?utf-8?B?ZDhzMUE0QmpoOFNTMnlTVjZjTWdHMlFzZWZxWUZqVmZoaERvWnNCK3RvdmpH?=
 =?utf-8?B?Wlc0TUVBN0N6RFVvNGlSZXJiSnFTaFVOSHZzUCs5Sm1qMzlIQi9HbjFRUm44?=
 =?utf-8?B?YllIcFVJQy9XMjRyU1BzNGwzaUJQVlBwYm01S1NDTDgrb2FlUnVGWTNDK2R1?=
 =?utf-8?B?RDh6cnFiNHlVajQ2WFVHZDdqd29ocjhEREM1RXlYZCtNcCt6OHFHb1dTYkNl?=
 =?utf-8?B?UFRaZzJRanpRZjlWeEJDODRIWEZCS1N4clppYnVCaFAwWTFHYi9lRDB3c3Ir?=
 =?utf-8?B?NFpUTE1meHRLTWhVdUVvTWo4UGt6SWJZWEVEY3pHSmFkTmNCTEswNTd4MUd1?=
 =?utf-8?B?TVdXdE9kVG16THZDVEcwS0o4N3hRK2xEMi9rdFRBTEhWQkNSbjJoMUhlYWVa?=
 =?utf-8?B?RWh4Tm9EbVRnbnRPZDRHUUpwM1R6TnUwSVI0SVlDOFh1S3VuK09XWHFRSXZa?=
 =?utf-8?B?U1d4cnluMGRINnEwVEk0N0ZvRWtsK0dLckhSQUhieFR3QTlTUUJaZzJ0Z3Yy?=
 =?utf-8?B?WHZZVlFMeDBkNG9vdjQ3a0pwZ0hKbVNQcnQ4Y1pXYTFObm8zOXBxTUtYQ2xP?=
 =?utf-8?B?VGd0bFJPVnA2ZU16ZlhVbXQwanYyRnJ5eGgwTkFram1KVEtCaFVQU3U1eGdN?=
 =?utf-8?B?SDZxcEF1TUpveiszRXh5NlVVcjRwQ0ZrMERoc1lxZnZkaEJORDdkcEFhZ2Vo?=
 =?utf-8?Q?QPN2Ze7AXvgZGCPfdt6YnIubxTKRo0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXRjV21SeTBRT1NjblVJcHhVTGVZNzE5NGx6U2ZVa0dibExOb0Uzb0ZqblNJ?=
 =?utf-8?B?WnkycTV5MERTSERhVi90MjR3ZVdwLzhpVmdhYUFuYTE0WlJTK1J4YTY3ejJL?=
 =?utf-8?B?NUZsVDM0WmNlcm5tMEd2WldESlhqWi9ZTzYxQ2VIVTZ0eVVBUDdHandoSzdQ?=
 =?utf-8?B?WEVTYldSbElXbllxTjk4ZTBUaUhnbVJQT2M0eDh2UjF1VEJNZm5OaURqY0N6?=
 =?utf-8?B?K05WTEh4UCtJc3ljSVlPYXE4UTFtUkJFNU1XZFJEMlZsQWV5bi80aHRQZEdD?=
 =?utf-8?B?d01pSU1xREJpMllWak1SakhPRkFTakhmNy91elo3eDBTRitFYWV0UnZORlVV?=
 =?utf-8?B?ZU9lMmRUTmdBRncwZmtwVmJmOHh3amxhM21qcmtjSEpLNERkT0V4THdQU0Y3?=
 =?utf-8?B?aVFUUUdpL2lOWmEyZ21CZnQwdzNFVGdiL0dFbFBxQWdzMlBWUzRhcThrNjZK?=
 =?utf-8?B?KzdlMm90V0cvaEdyNlY0ZXVhdVRHT3hDYnBWOGx5R3c3RHphNS8vekNmM21I?=
 =?utf-8?B?UjFaM2FBUXAreFlrYktkR2xjOEtQenFQT3gwMjllZmQ3cXRHM29nR1IwRnNm?=
 =?utf-8?B?OTRaQkoxSlZQSWlUSEhNdFRwdHVIR2podkU2b2JQRzNGbjJKUXFtaW4yVUlB?=
 =?utf-8?B?bkxKWDFZMzBBRVlKVFRUUjNESGtLV0hvWXdtUEMwUGRhUEZIMFRaRDJKdkt2?=
 =?utf-8?B?Nk5CRTdqcnQyOXFWMmV6WHkxUkNySEJQNDZpTVU1Sk5xNXFnUVRjeFNzYk9h?=
 =?utf-8?B?Y3loUW5EUHJyaTFLQnUwNE1BNTV3WEw5NXhHS0x6QVBPb1kzcXFEV0hYN3Vy?=
 =?utf-8?B?U08zRnVDMDFvdW9uSUVIRmJnUVpnZXNGaUFWb1dsc2dkbmJXWWxha3FiNytL?=
 =?utf-8?B?dXRhVTlXUzJOeFFZL3QvYUZ0WmVJUkk1NGRLTzhPakZZSGE5c0Y1TWg3c0x3?=
 =?utf-8?B?b0FtZm9IRlA2OUwvVTVDdkU3TXVrOHVKUjBhVm55ZjRLTXNFS1RmeEpMR29G?=
 =?utf-8?B?bGhBR2tlYXZHUFg1T3A5SFkzYnhuYlc2WEpxa0E4UEQ1Z2N4N0tsZDRGQ2hK?=
 =?utf-8?B?WFRuOXRkeXZmbjY3WFR6Sjl4NktZREc4QVF3TXAxUFVyc2wvVXFib3p3SFZJ?=
 =?utf-8?B?a1JBek8wM1laTTFYVWV0bS83VGR1OFl2a3VaZ0J5NHhkUXArVFA4aVNvVCt1?=
 =?utf-8?B?YXRORjVTaEpPLyszeFlieUdXODVWSmdFc2YycHVERWNhUWZQLzRHemljaG9J?=
 =?utf-8?B?NlprenlSeWNzdnhGbm5KWXVqUU1XTnhwR3l5bFRkaThtalRhRzZzR0UrbjU4?=
 =?utf-8?B?NlRHQnN4c2piNCtkVjc4WEprZWRaYlcyUkRDOE9DTEdwYVc2YUkrQmhVTE9P?=
 =?utf-8?B?VXNFWVRibDlqL21IMGUzbGU1TVlGTFFqWUNYbkJnbTM1bmUzK1FEOUNQU3pu?=
 =?utf-8?B?a2Y4dXZwYXo4MGVDTFVqL295elMyUmpNSEUxRXZPTHJVK2QzMzRoQ3NEdzAz?=
 =?utf-8?B?dXRSOXVkV1NIVUFsUnNVUXZ1YlFjdmN6WjNDRWR2TjU5WCtyeWVnNExOUHZs?=
 =?utf-8?B?YmRjckNheFlOZSt4L29GMXhCTW9xZmM3SlJpZGdwVG83UmtxQ3RLZ2ExdmRK?=
 =?utf-8?B?Vm8xWHNrUDdHWFR1TVUrbS84WWt6U3o1T1VkZjFaemhrZDRlUjBNMENjSjBi?=
 =?utf-8?B?b1dlM1RKdGdOUWYrM3gzUkp4RUxXY2N2M3ZQMFBIMGVIVlNMcHpkcjFzWlpk?=
 =?utf-8?B?d2MwVi9GMEUzSUcvcmNxdWlCTW04c2ZuZmNnandqN2h5bDRwWmJLWkdSN0JG?=
 =?utf-8?B?bHFKUXRlOTYyRERuMFhJVm8rc2cwWVI1MW1MUFRTWmZiRExBbGt2VitSVnZs?=
 =?utf-8?B?NnY0UnJTbVYyK2RJVzBjekZKRVhYMW9sTWowYkRBL2JHNkM2ZVRibnoyM2Z1?=
 =?utf-8?B?blpwUitOVHpoZ3d4bnpJcllYU29rVnJjU3JUUjlpZDY0WUhUSHpBVFB1bVB5?=
 =?utf-8?B?Y0t5SHY1ZXl6SEN2VzB5L3JmQ2lTd1UzU01YcjljQ2d5WmdyTEtEdFJiMms4?=
 =?utf-8?B?U2syTGtjR0JpMmVvTU5JVEdDMDd2dDRTbDhFMFlLb0lraCtiVG92Y0hUL01S?=
 =?utf-8?B?WUlweVZkMWwzbW5EbGZKZ2Q2VzhXUnJ2b1RJVU1nRVB0Z0ttSTJSYnpmOGJu?=
 =?utf-8?B?TEdGL2pTejN4ZGVSd2lsYVRXSnNXR2pLSG9MV01wM25yME5GcGN5WUczTWY2?=
 =?utf-8?B?dUFibGZWbVg3Z2hjUHo5dGUzb0lNL1FJdGVHV0dYUG5zM2tJZGVrOGlFb2Rl?=
 =?utf-8?B?M2pDSjNVWnBSWjVvMnF1aVVWaXFWUm9LcjNZNVU4bjNWQ0RJcm5VQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0251f01-55f9-4b67-0bd0-08de52b308e3
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 14:50:03.6101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HpsRCjLemaT2myXyiyLAF2tc2SfnvtEuGtZWxO1Rxre6s1qe66HCWh11OcvnsyoxS2YOcATqIWpfol0ngbBaUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6943
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_065007_581847_37183E53 
X-CRM114-Status: GOOD (  22.60  )
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

Ck9uIDEzLzAxLzIwMjYgMTQ6MjAsIERpb2dvIEl2byB3cm90ZToKPiAKPiAKPiBPbiAxLzEyLzI2
IDIyOjAzLCBKb24gSHVudGVyIHdyb3RlOgo+Pgo+PiBPbiAwNC8xMi8yMDI1IDIxOjI3LCBEaW9n
byBJdm8gd3JvdGU6Cj4+PiBUaGUgVVNCMiBwb3J0IG9uIFNtYXVnIGlzIGNvbmZpZ3VyZWQgZm9y
IE9URyBvcGVyYXRpb24gYnV0IGxhY2tlZCB0aGUKPj4+IHJlcXVpcmVkICd1c2Itcm9sZS1zd2l0
Y2gnIHByb3BlcnR5LCBsZWFkaW5nIHRvIGEgZmFpbGVkIHByb2JlIGFuZCBhCj4+PiBub24tZnVu
Y3Rpb25pbmcgVVNCIHBvcnQuIEFkZCB0aGUgcHJvcGVydHkgYWxvbmcgd2l0aCBzZXR0aW5nIHRo
ZSAKPj4+IGRlZmF1bHQKPj4+IHJvbGUgdG8gaG9zdC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBE
aW9nbyBJdm8gPGRpb2dvLml2b0B0ZWNuaWNvLnVsaXNib2EucHQ+Cj4+PiAtLS0KPj4+IMKgIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvbnZpZGlhL3RlZ3JhMjEwLXNtYXVnLmR0cyB8IDIgKysKPj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9udmlkaWEvdGVncmEyMTAtc21hdWcuZHRzIGIvYXJjaC8gCj4+PiBh
cm02NC9ib290L2R0cy9udmlkaWEvdGVncmEyMTAtc21hdWcuZHRzCj4+PiBpbmRleCBiOGQ4NTRm
OTBiZTcuLjQ5YmYyM2Q2ZjU5MyAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bnZpZGlhL3RlZ3JhMjEwLXNtYXVnLmR0cwo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9u
dmlkaWEvdGVncmEyMTAtc21hdWcuZHRzCj4+PiBAQCAtMTgwOSw2ICsxODA5LDggQEAgdXNiMi0w
IHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXki
Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YnVzLXN1cHBseSA9IDwm
dXNiY192YnVzPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZSA9
ICJvdGciOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c2Itcm9sZS1zd2l0
Y2g7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJvbGUtc3dpdGNoLWRlZmF1
bHQtbW9kZSA9ICJob3N0IjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Cj4+
Cj4+IFRoaXMgY2hhbmdlIGRvZXMgYWRkIHRoZSBmb2xsb3dpbmcgd2FybmluZyB3aGVuIGJ1aWxk
aW5nIHdpdGggQ0hFQ0tfRFRCUwo+PiAuLi4KPj4KPj4gYXJjaC9hcm02NC9ib290L2R0cy9udmlk
aWEvdGVncmEyMTAtc21hdWcuZHRiOiBwYWRjdGxANzAwOWYwMDAgCj4+IChudmlkaWEsdGVncmEy
MTAteHVzYi1wYWRjdGwpOiBwb3J0czp1c2IyLTA6ICdyb2xlLXN3aXRjaC1kZWZhdWx0LSAKPj4g
bW9kZScgZG9lcyBub3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOiAnXnBpbmN0cmwtWzAtOV0r
JCcKPj4gwqDCoMKgwqAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2No
ZW1hcy9waHkvIAo+PiBudmlkaWEsdGVncmEyMTAtIHh1c2ItcGFkY3RsLnlhbWwKPj4KPj4gSSBr
bm93IHRoYXQgdGhlcmUgYXJlIG1hbnkgd2FybmluZ3Mgc2VlbiBmb3IgdGhlIHNtYXVnIERUQiwg
YnV0IGl0IHdvdWxkCj4+IGJlIGdvb2QgdG8gZW5zdXJlIHdlIGRvbid0IGFkZCBtb3JlLgo+IAo+
IFRoZSAncm9sZS1zd2l0Y2gtZGVmYXVsdC1tb2RlJyBwcm9wZXJ0eSBpcyByZWFkIGJ5IHRoZSBk
cml2ZXIgdG8gc2V0IHRoZQo+IGluaXRpYWwgcm9sZSBmb3IgdGhlIHBvcnQgWzBdIGFuZCBpcyBu
ZWVkZWQgaW4gb3JkZXIgZm9yIHRoZSBwb3J0IHRvIHdvcmsKPiB3aGVuIGJvb3Rpbmcgc28gaW4g
b3JkZXIgdG8gZml4IHRoZSB3YXJuaW5nIHRoaXMgcHJvcGVydHkgbmVlZHMgdG8gYmUgYWRkZWQK
PiB0byB0aGUgYmluZGluZy4KCkNvcnJlY3QuCgo+IEFzIGZvciB0aGUgb3RoZXIgd2FybmluZyAo
J2Nvbm5lY3RvcicgaXMgYSBkZXBlbmRlbmN5IG9mICd1c2Itcm9sZS1zd2l0Y2gnKQo+IGFnYWlu
IEkgdGhpbmsgdGhlIGJpbmRpbmcgbmVlZHMgdG8gYmUgYWRqdXN0ZWQgc2luY2UgaW4gdGhlIFBp
eGVsIEMgdGhlCj4gY29ubmVjdG9yIG5vZGUgc2hvdWxkIGJlIHVuZGVyIHRoZSAoYXMgZm9yIG5v
dyBub3QgcHJlc2VudCkKPiBjcm9zLWVjLXR5cGVjIG5vZGUgYW5kIHRoZSB1c2IyLTAgaXMgdGhl
biBtb2RlbGVkIGFzIGEgcmVtb3RlLWVuZHBvaW50Cj4gZm9yIHRoZSBmdWxsIGNvbm5lY3Rvci4g
SSBhbSBjdXJyZW50bHkgd29ya2luZyBvbiBmaXhpbmcgdGhlIGNyb3MtZWMtdHlwZWMKPiBkcml2
ZXIgYW5kIGFscmVhZHkgaGF2ZSBhIHdvcmtpbmcgZml4IGZvciBhdXRvbWF0aWMgcm9sZSBzd2l0
Y2hpbmcgYnV0Cj4gaW4gYW55IGNhc2UgSSB0aGluayB0aGUgYmluZGluZyBpcyB3aGF0IG5lZWRz
IGNoYW5naW5nLiBJZiB5b3UgYWdyZWUKPiB3aXRoIHRoaXMgdGhlbiBJIHdpbGwgYWRkIHRoZSBu
ZWNlc3NhcnkgY2hhbmdlcyB0byB0aGUgRFQgYmluZGluZyBpbiB2Mi4KClllcyBpbiBib3RoIGNh
c2VzIHdlIG5lZWQgZml4ZXMgdG8gdGhlIERUIGJpbmRpbmcgdGhhdCdzIGFsbC4KCkpvbgoKLS0g
Cm52cHVibGljCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
