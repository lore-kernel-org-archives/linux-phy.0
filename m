Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C3C6C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 12:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Xmed1vmWFBd8UXqBDGNQDQMMjkJO7uuqWJlo6SqB9s=; b=KMZkpUXsOzEO8x
	9sv7eTeF07PSHdBQBVaQ+56LCpRwGIhNnWphgNpF/IefHjvWGp/3Vb1wsP1GbpfZk76eZCZ3UmMly
	f2UT+cOSn8wbQluwMTdN7p96h1CU2KFurzEHMKW70Ntv5zJg/06tjD7JTvhep2tNKr3Mo3xAhPZZ3
	CCvnxdh8brntBaAusPx5rMcyZDrKqxs6uyy4n0qYpV6Eu8QcvpjoGQ9WWJwhxHWrE8ojewpk8ULof
	OU7gpFfvSA5M6Qb1vtYhLkHVb7rQ9klvFNvl1Z0UOjZAtS8Z9z4ZuRTNVkKxqQOf6NoBuxo2tTV2+
	MiVMO9cg4FH4KlIxHDgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVBd-00000005FaV-38yL;
	Thu, 01 Aug 2024 12:45:41 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVBa-00000005FZk-0glv;
	Thu, 01 Aug 2024 12:45:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=btSLyfpv1C9Xnd5KaF9KvXcXCPD1VxHh4VN17m0GaBbXUj6cuR2LjfrLEbetqqEoFHKHRgYIpde83mFKXX/VITGkzdvy6JjUpqYWU45RwF70M0pkevsph6QmM8uELfsuyr/12h+zOaJKjpUZUQ89z6pY44cJvA/zF9qTpQOk4sOXInkOvFbzeVoNxTBoJNCthqYVk5oge3twtpHdedCpY9gR0qtf+MRKVClcBzkX/F0NBLTbGLGF59ap3ngxZvSyRMhpW/4hn/W1UogtOZ/JtyYzb19IYwrLUXE1RgbSX7WFBuXMvbyRhYOvxfGZ3liWuvl240CX9jzvdaQLaAc0bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=44SQXcaGn21QD0GYHQG5jVKvvFKtgWKaffq3wPxgZMQ=;
 b=HjJTTTnHtljUUl0XRZ5iiqElh7umN7215+5fgCGEc+hQwHjqySXyeujH3yDmxV770UdUTGnHVorVsfGTK8TsbG4h2R/VdLONVxfLs9+5UWHePxofjiABLa+Xl1CmdWjjtKxORNPkEOix8fbFBkedN6JtuWUxeXk9LwPDvwtJQLMO2LGGLILxBtc8a+qqghxSkMdGfa/lYLA+KfdcHJPbzkifi0HMJwS0r34nSZFe7GkDrdWldvUXICtZQ9vSFUuT0G1pPuRSfNZgDFVfT1qMrWd7i7HpcdDccwczyKgQtiPgrS7gVxYufoue5mECQEAjfhPgcydohRCVF+w8NC9Ouw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=44SQXcaGn21QD0GYHQG5jVKvvFKtgWKaffq3wPxgZMQ=;
 b=jj24ztLF5izcukPLulwreVtUyj/0okBEu9vyJaWDVOIr8OWDm4nTGzDtkDtAorh52PZNu3FWtzbE3tEppwI2m1RWkBVji6aN76SoDhH6KqJ84zooAbXuWUG7igiyZqDKC8F4jqSYtrZtdnGbNB5sHcIeST2el1REK+QxAzEYZMof5qcjDWCHo/yLWrP0tMIxyxh5KlO+7vZWg5lt0wdvvF3Q75QOjwNK6GtbdrncYjZn4Z1/ZinaVDgL9uKFiSKRy6lTmIzGZmePxCOfv7eKaOjSCWfHqBeTUPICL92MFX8cLNynAVk/Bm3hPlmkoTXTMCR90Mskl68vN/2+V0jPkg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com (2603:10a6:102:20c::17)
 by DBAPR04MB7464.eurprd04.prod.outlook.com (2603:10a6:10:1a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Thu, 1 Aug
 2024 12:45:30 +0000
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad]) by PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad%3]) with mapi id 15.20.7784.016; Thu, 1 Aug 2024
 12:45:28 +0000
Date: Thu, 1 Aug 2024 20:42:54 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	jun.li@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: fix tuning parameter name
Message-ID: <20240801124254.36sabvfg33kb4f2e@hippo>
References: <20240801110136.1031689-1-xu.yang_2@nxp.com>
 <14458406.uLZWGnKmhe@steina-w>
Content-Disposition: inline
In-Reply-To: <14458406.uLZWGnKmhe@steina-w>
X-ClientProxiedBy: SI2P153CA0034.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::17) To PAXPR04MB8829.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8829:EE_|DBAPR04MB7464:EE_
X-MS-Office365-Filtering-Correlation-Id: b15a0a53-1b55-442f-680e-08dcb227d22d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzNCb21Dd1RRVmQyaVZ0dlNYNnVlT3pHanozOUVsWkoxZy91SWEwTktlcGZR?=
 =?utf-8?B?ZVk0ZWxuNTVkK1luRFo5Ylg4cWJjWXNMSGE4VmhtV0VMWkRQRUlaZjR6Yi9E?=
 =?utf-8?B?VlV5RTFIQm5jZWx0VjVpdnMwejFIQ3Y1bmdQa0lUZjdSWXhqTUVaYXJYem05?=
 =?utf-8?B?dEk1N0FaeUcvUVVLTUdPb0tyMWFEQXhkejBIblVZTm16WWRkQWlyZTV6QTJU?=
 =?utf-8?B?eUtBRndkUzJOVU1EblB0d216S0dPTVpkT2FhQXpmcUlPdlRlNllBVVpabFlz?=
 =?utf-8?B?aWNQZ2RjK0ZENUtZT1QxOGpkS3FkUHdxbUpGREl4QmxDTDkxYnZHNmRHQ25B?=
 =?utf-8?B?c3gzU2VhMTE3eEE0MEpNUHFkSlpzSVc2QnJPSGRvWitxZEVGUk5qakEwZzZX?=
 =?utf-8?B?TG00N21NTDdFNmNhWVl5Sy9Vd2tLbmxzWWsrUmZzZUZyUEJBV0pyNUpPbDNu?=
 =?utf-8?B?dWluVUhBNXk3TFV2RXRhOXRDbit4T2lQbzczYUIrMDd5b2xtS0MzU2JZVEp3?=
 =?utf-8?B?aThTOW5CK0JQU1RxQndqRFJJN3k1N3Y0ajhTdkx3Nml6SHJXVzRDTldMelph?=
 =?utf-8?B?Q05JaUJoUkJKYStoK0Nad3l3Rm9peFVGRmR5TmxXVm52b3ZZelE0ZFJtN1I2?=
 =?utf-8?B?M0pYVHlVR3JpRVdHaGY1VWVOTlltbzMwZmJnWDFFSmZNc3pZcjdNMzhTdnJq?=
 =?utf-8?B?aVF4VUZLdFJ1dURkYlRNckJFSTdGOGtPdU5MV3BhaUp3SnZtK0IzTUNja2Zn?=
 =?utf-8?B?eHJxZGZvVU5VNzBVb1lYaUwxQ3Fpc0NYenJ5eGx5T3d0T1ZKaElsWm9Wb01E?=
 =?utf-8?B?djJ1aVQwQ3RXdUNZK0I1WCtwaGdvNG1IeDdHeWdCSkZ6aVVyQUM0U0hyNVhM?=
 =?utf-8?B?S0xxNkFoeFU2Y2pEY2VaN3lCb0YzRnZWWXhsV0FXMlExL0pRYlF0ZzZyNlVa?=
 =?utf-8?B?VkpBVWRITmw3MEk2Mk9RNG9ZSEZKVDNRT2JZeTNnRzRNNDJhR29FVGZHWUhH?=
 =?utf-8?B?ci9LODdMT25VQUk2REtZVlRSNmJIYlVqbG9QMXM4ZzZzWWt5NkExWTNtY3pU?=
 =?utf-8?B?WnBINDhCbHhOV1NSM3BlOFkzQW52RWtEbTM0Q0k2UnFoZ3lBU1J5Sjh3Zm02?=
 =?utf-8?B?QW5EVmxlQ0FQS0tJWVRwT1NyYVZBcWwyRVJPeFRGZWpla1N5Wnc1eFBGMjBn?=
 =?utf-8?B?UmZHOGZsV25tRTFJSndPQnR5Sk9Ubms1RWp4QkZibXpndUYrb2pjb2N6elMw?=
 =?utf-8?B?andNZkNjeGdpanJ3TTdPQmgrRXE3eU1nQkNwai9zZkpJRWFzVU9NVnVmbGY5?=
 =?utf-8?B?U3BhR2hQWDZHeTdWRk1hd2pqM2E0d0xWRmwvaXdYNWpTd29jZGk3cVR0eW9J?=
 =?utf-8?B?WFdnN0hPY1Z5c0NZZWllWE5Tb3J3M2R2aXJocDd6VERNd3pHZXY5bkhwTGFr?=
 =?utf-8?B?bWcrREJxM0QxeXNIWGJLYzVXZEtEU0hMWWhNK1BBWmZFeEFXRFdHNFJPaE1i?=
 =?utf-8?B?aGhiZlZQaWtZSnFkRW50cFRMWkJWanNXRHZFNHRpNHhvakZ3Unhyc29FMmx3?=
 =?utf-8?B?SnFMdVBneFJLVkxFMi9TQnNvWkVTS2tDK09mRVM0alBmQWlxRFlGdFRraUUw?=
 =?utf-8?B?MGhZdWZ6Y2RDMGJXN1VxVkRsR3hlY3ZDak9SZW5maUthR3BteTJDaFkyWjBX?=
 =?utf-8?B?MmxiL0VZcXpmdkw4cmNOS3kvWlJRNlh6dkFHM3lUS1JyWkkrSzhOS2N1Zlgw?=
 =?utf-8?B?LzVXYVdPRHphQUpsNitFSmdoRWZGbXlKVVNSTnpBTnJCazhSV1hieGorN2ZW?=
 =?utf-8?B?Y0R3dDdzdW1TeUpDdkJKZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8829.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dy9EUkszMjhHSXNHc1UyWkRLTUxETysya0FzUFFncjUwNU40RmhqaHZySjNC?=
 =?utf-8?B?elhlWnJYdVZnRlZndmhnRnVWcjFaRG5DMm04b3hWZGVYb3pMcWV5dGlaQzFW?=
 =?utf-8?B?UUl5dXpveXdENkc3bnB2REd0cG80d0w3WVpkSitxYmZnTEhMRStscEY3S0VT?=
 =?utf-8?B?NUt1THArbVQ5d2hZRmF0cy9GR1l5S3cvenk5MFdmVlorcFpjeXpzZ1RXY2V1?=
 =?utf-8?B?bkwrVjltcm8zWnBHd1ArUVRHZ2oxQXlQSStOcWx1b0hlM2RhK2pTTTNZRDlH?=
 =?utf-8?B?bFRGa1RNQUxhNnYxZVcrenVzaFp1YmN6SnJJOXpYQ1Ntek95cDJmR3JUSUNz?=
 =?utf-8?B?WWNQUG1HQ1c2dExmdG5vZ3pOS2N3MmdXY25kMS9CaGJIYTZUL3Zjc0dQem12?=
 =?utf-8?B?cnF0WmpwNVpvYTlXWTJpclRZanFabTF0Tzc4bnBQenByeC9PejV1RGxoRm90?=
 =?utf-8?B?cXRXMVVWZDlmNHNyTVhucWxRNzRJOUowb2dKSFJTeHlRV0pOYVV0ZXQ2dEF6?=
 =?utf-8?B?UGl5ZmVKUTBUamFlTmoydU95YmVJUFpiVk54a3F5Nk0xcG85a1p4SnY5MkNw?=
 =?utf-8?B?U1VCV3ZDMzVFQ2wrNXNqWTdLcTd6VjIvcGpiSkt1QTEyelJqa01Eck9mbGZz?=
 =?utf-8?B?Z2phN21UUlFMcDdjOGpPd0FsSHg1WnUya2I3QjNGeUlndlMwR0d5dElpSEc4?=
 =?utf-8?B?ZG54OGUyQ0VaNUJ0dnNhTEEzd1BncGpTbGluTC9nenIrejB1Uk8yc3RiQzJ0?=
 =?utf-8?B?bzEvSVFzalIyTmg3em9Hc1RKZnRZaDNkTVFLaXRPMy9hSVlTUTIvbXJrRjhP?=
 =?utf-8?B?Mnh3SzJKM3lmRUVHZUNuZGNVZ1doWnpvMFYwSnVuTUVkSHlRK1E4SVM2WTNJ?=
 =?utf-8?B?anU5dkU1SlpVQ1BjU2VBbGVOd3VUTkxvbW92ZFREdFA4UXJjVXlYb0ltMSsr?=
 =?utf-8?B?RUFCQ1dhem5DbWRaOTcxNlJBZXBoYXJIanppbVJHWXVWNktJSUZYZ3BqeHJ0?=
 =?utf-8?B?MkI2T3ZwUGExVVZHcWlLL0R3dVpkQysrOFlHMHFYTnBqOEswdmRIRDJzSm9Q?=
 =?utf-8?B?aStEM3U5a0o2WmxlL2xlWHVPV0J4alkzaVJsKy95dEdCT0VNRjVsQ3ZwUGI2?=
 =?utf-8?B?Y2lRQmgwUWJUbEx3Q2FVWVFoTDl1TVdSbnErcTY1ZEYxdTBEMzFpcDg1SFp2?=
 =?utf-8?B?RmlnOE1FbFpBM0pTeVhQWHdqSFRjQ01PVGxrK2ozMFNzdlFVMHlvcklYM2g2?=
 =?utf-8?B?QXBsWloybG42aDlnV2NkdHJqd0I4ZGNVK3NNamtlQmRVVUVQVk9WcjFqbklB?=
 =?utf-8?B?SzZUT0wxbG5VQVltVHRRTkQwa2p3RUlUSlJnd1hreDBXWmFVVmRnWkNqdGdm?=
 =?utf-8?B?Qm1yTFdZdkxkdHJyL24wcTlyODUyamd0bFMwUG9ZTDV0dW1PQ1lDYjAxVy92?=
 =?utf-8?B?V1hLRTZ4RFFBajY1NzlSNXh1TFdJdGdobHRsRThFeDZTd3VpU2VLcEt1R0dR?=
 =?utf-8?B?TkZrcTBvUU1wWjkxcDBvWHB1aUFndUYrVTZ1cjA2TWZka0ltRVdHOGcvdWM3?=
 =?utf-8?B?aFE5WkhvZGhXOTllTXNVenNrcFYwQ3k0ZisvTGtVbURwMzc1S3hTck5ma1BX?=
 =?utf-8?B?YjZvS1I2RlI2VlNidTZxSzAyQ1lqZnRFR1dBZ3orMUxLMG5PSlpYdzJPNE5k?=
 =?utf-8?B?UTVQWS9oMW95QnZMRlZRZWZqd0djWVg0WnBDemFHcndKRDhNdkU0Q0Vsalgy?=
 =?utf-8?B?YlpnekF4a1Nmb29KNDhaTmxST3NBUkZIbElNY3ljNW93dVdjSEx0c2V5bEYw?=
 =?utf-8?B?OVVlaXl1a0NoVDZXVzVWRGlyQjI3N0FTTEFuUWY2QjRQbzlEa3JZczRMSVBD?=
 =?utf-8?B?SFphdkcyaTdyN3luUHhVSDBYSm8rMWlLNzYzd2hJYk1PZk5nMmVVMTN0aEZI?=
 =?utf-8?B?VVJTY3l3RUFGcXdLSE00czQ5NlFTcmFaUWhHTWFyMHVpWnNxMFdoOEVvS00w?=
 =?utf-8?B?Ym0reDBNd2prZjBuM0xZMjJwUHJEVWRpNXZQcTJhT0xUekppRm4yK2d0ZS9F?=
 =?utf-8?B?Y3pCb29Lb0x4eU9YeFo5dmo4UE9yVHdwMXM0b2dIalBSMldKYllXNjRpT0Vz?=
 =?utf-8?Q?ZrrroU516sxoat5XrsoK6gxtB?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b15a0a53-1b55-442f-680e-08dcb227d22d
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8829.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 12:45:28.0762
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QfApgns3HoDO4/hBIUZ75RCmeXYnQdF2lqt0Gs5btkcgDuVgW/FVOHHA1IZE72nU0YibjpSP6O8d2NyfhQvZUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_054538_261975_A3E1013D 
X-CRM114-Status: GOOD (  21.38  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgMDEsIDIwMjQgYXQgMDI6MjQ6MTVQTSArMDIwMCwgQWxleGFuZGVyIFN0ZWlu
IHdyb3RlOgo+IEhpLAo+IAo+IEFtIERvbm5lcnN0YWcsIDEuIEF1Z3VzdCAyMDI0LCAxMzowMToz
NiBDRVNUIHNjaHJpZWIgWHUgWWFuZzoKPiA+IEFjY29yZGluZyB0byBmc2wsaW14OG1xLXVzYi1w
aHkueWFtbCwgdGhpcyB0dW5pbmcgcGFyYW1ldGVyIHNob3VsZCBiZQo+ID4gZnNsLHBoeS1wY3Mt
dHgtZGVlbXBoLTNwNWRiLWF0dGVudWF0aW9uLWRiLgo+ID4gCj4gPiBGaXhlczogYzk3MTg3NGE4
OWUxICgicGh5OiBmc2wtaW14OG1xLXVzYjogZml4IHR1bmluZyBwYXJhbWV0ZXIgbmFtZSIpCj4g
Cj4gTWF5YmUgeW91IGFjY2lkZW50bHkgc2VsZWN0ZWQgdGhlIHdyb25nIGNvbW1pdCBoZXJlLiBJ
IHRoaW5rIHRoaXMgc2hvdWxkIGJlCj4gRml4ZXM6IDYzYzg1YWQwY2Q4MTEgKCJwaHk6IGZzbC1p
bXg4bXAtdXNiOiBhZGQgc3VwcG9ydCBmb3IgcGh5IHR1bmluZyIpCgpUaGFuayB5b3UhIEkgZmlu
ZCB0aGUgY29tbWl0IGJ1dCB3cm9uZ2x5IHBhc3RlIGFub3RoZXIgb25lLgoKQmVzdCBSZWdhcmRz
LApYdSBZYW5nCgoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gQWxleGFuZGVyCj4gCj4gPiBDYzogc3Rh
YmxlQHZnZXIua2VybmVsLm9yZwo+ID4gU2lnbmVkLW9mZi1ieTogWHUgWWFuZyA8eHUueWFuZ18y
QG54cC5jb20+Cj4gPiAKPiA+IC0tLQo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+ICAtIGFkZCBmaXhl
cwo+ID4gLS0tCj4gPiAgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5j
IHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14
OG1xLXVzYi5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4g
PiBpbmRleCAwYjlhNTlkNWI4ZjAuLmFkYzYzOTQ2MjZjZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+ID4gKysrIGIvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gPiBAQCAtMTc2LDcgKzE3Niw3IEBA
IHN0YXRpYyB2b2lkIGlteDhtX2dldF9waHlfdHVuaW5nX2RhdGEoc3RydWN0IGlteDhtcV91c2Jf
cGh5ICppbXhfcGh5KQo+ID4gIAkJaW14X3BoeS0+Y29tcF9kaXNfdHVuZSA9Cj4gPiAgCQkJcGh5
X2NvbXBfZGlzX3R1bmVfZnJvbV9wcm9wZXJ0eShpbXhfcGh5LT5jb21wX2Rpc190dW5lKTsKPiA+
ICAKPiA+IC0JaWYgKGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJmc2wscGNzLXR4LWRl
ZW1waC0zcDVkYi1hdHRlbnVhdGlvbi1kYiIsCj4gPiArCWlmIChkZXZpY2VfcHJvcGVydHlfcmVh
ZF91MzIoZGV2LCAiZnNsLHBoeS1wY3MtdHgtZGVlbXBoLTNwNWRiLWF0dGVudWF0aW9uLWRiIiwK
PiA+ICAJCQkJICAgICAmaW14X3BoeS0+cGNzX3R4X2RlZW1waF8zcDVkYikpCj4gPiAgCQlpbXhf
cGh5LT5wY3NfdHhfZGVlbXBoXzNwNWRiID0gUEhZX1RVTkVfREVGQVVMVDsKPiA+ICAJZWxzZQo+
ID4gCj4gCj4gCj4gLS0gCj4gVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIsIEd1dCBE
ZWxsaW5nIHwgODIyMjkgU2VlZmVsZCwgR2VybWFueQo+IEFtdHNnZXJpY2h0IE3DvG5jaGVuLCBI
UkIgMTA1MDE4Cj4gR2VzY2jDpGZ0c2bDvGhyZXI6IERldGxlZiBTY2huZWlkZXIsIFLDvGRpZ2Vy
IFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCj4gaHR0cDovL3d3dy50cS1ncm91cC5jb20vCj4gCj4g
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
