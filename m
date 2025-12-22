Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 853C6E66886
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 02:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMfB3i+z7DHryubsxqytAmdOlEwc74YR0hi5A9w/50k=; b=FKp97f79fnGx0v
	1jD5cCe3QoD9cvaCi2wbcNrgs4yS6F7WIPvlim1XHfet6ZK51JMEOxU2poG88Gnuv4U18HLG7Jmvv
	C7rL2O+y6t62MH1+VV2JU1mywyCWVd3SP5o412egN+sZOyrZcU0XPNtKWYQ+YCrakzIgDg+89V5uo
	pPM21GrNiP82Dr5jp1PJTitQQmN+FgP76RaJaT8qGYsmBqUAdt01x/guyxZ9P54OrYJx7U2kNqI2m
	IRe/p8M03QFWTmDBeAwmXTWaenc8FeRGbqHh/a9A23Z8JRIvlkOwpNxGtD9eQaeBOEvS0+8LZ/6uz
	yCAAxGKcQuexh/dEk0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXVK4-0000000CySt-44h7;
	Mon, 22 Dec 2025 02:06:56 +0000
Received: from mail-northeuropeazon11012032.outbound.protection.outlook.com ([52.101.66.32] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXVK2-0000000CySB-0RrX;
	Mon, 22 Dec 2025 02:06:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jdqrqMkEbhpRa/KePIjbuaHZ2pwTuIpuxMutmY5YqmlyS9UflEnMzzbo8ZMZXe6iFiDLlaRk4jT2Nca3iJJ9ZsYeEjcjWdC2EY/uP+m7Lhm43FQgDAa960MOZPZ1JMv/kpLjEJ7ZEz9Tn1PJyEinsKcfhNM0oA4SUvzJX0SLSPVt4+3EY1tKxWHaIbR343KrdXUHmi5B+reW+645vEUSCpXDYbwgKHPAtKU3eqcSfUekc3Fjf527WRwv087pji+EvezYiBYJt+E7AtZVpwtZQYliUJr2LPXRvu6PsrR380TKi1h4bn+VkY2rIMrh6o2cLC6cjprbthtJtHAVdq4V9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UFWqxMWqijEyANpTG/Dze+PIH48mfYfp/YR6eZtBL6I=;
 b=fvUwL6fy6bVaFHpDKPnZlA9vvz1enadYcJO32OoWIJeSLWSxw+lhTifWcnlhe5Pogl4a5bOPyuBfBCmLjpbkpl//5LOi2a7UuqLcXiERdVw3g7spJXxW9kSJSCb1KkufSt1UgqpjYjGkv3QqpKsd23YlsfzG1ayW+ypZB+qZyoeCMcw/cDlkSnazjdzFGlQc6Xii2iQOYYDUkFUq3AD6pkKKmoC2LfZILIT+wVtB1xB+XAy5bSpUNrGzxJdpABINopqhw2ZYQ7Vv0x/iYRZfHmC4I8IxXRwDjmG03l+VOCJ3+OOsm3Niy/JDFZQR62EwlVQYmEno8YbcvkI7OYXAug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UFWqxMWqijEyANpTG/Dze+PIH48mfYfp/YR6eZtBL6I=;
 b=emDVHT/jV6Ryia4+ZqAtpBOdOoJm0F8lzicrPa3UL9nEeIOIamRrAlzKEAWBpdP9twRDwVIXLDKg0PykrXpn5506h/Z9g/hg+pxcmD0mxIkmvf1a0uMeRRBKtHqfY/wy2bGmvPq35PYpa3XRqXVYKdg9AVBJQaperngfqz0U+lXXhTOmEei15zl9LDaqNaN4xP71Dk4VyTiUgjB4RLCb+KpNo9zukEJo1/y8La3eHkZTsAfbAHQcYuGxXMyZp40vOMs1uLjiYAZnl1v/jih/BQD7/yzk+GZyDnDR9EojdkOAqZYai35r2SlaKG1byCY/4KMMIqtfbpKKkd8eI8cyYA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by GV1PR04MB10583.eurprd04.prod.outlook.com (2603:10a6:150:203::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 02:06:48 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce%5]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 02:06:48 +0000
Date: Mon, 22 Dec 2025 09:59:43 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, Frank.Li@nxp.com, 
	linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <6aj4j6sh2rystvtup7wmte557nhknwqs6n5qsa5lbd44sn3km7@ktkxzugnv777>
References: <20251219075447.3672833-1-xu.yang_2@nxp.com>
 <CAEnQRZCZJnkXCM2ACf3dXQ-ZynRB1q2zcarWLAZO_1TsL-1GcA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAEnQRZCZJnkXCM2ACf3dXQ-ZynRB1q2zcarWLAZO_1TsL-1GcA@mail.gmail.com>
X-ClientProxiedBy: AM0PR02CA0185.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::22) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|GV1PR04MB10583:EE_
X-MS-Office365-Filtering-Correlation-Id: b449b8af-bf94-4a4b-6884-08de40fec378
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|52116014|366016|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0pIZStBRmhnd0JRdmVYVjlhYVA3VUsrZUFYdlp1NjlNdlBiU3hFR0VJUWZt?=
 =?utf-8?B?SDBmWnhqanhuRU5DN2VTWDZSYk1Dcmx0dFQzVVhwVFdDNUxBdW4zTmVhbmhO?=
 =?utf-8?B?M2xUU3lhSWliNXUwTlJoR1VIS0tIUGdPNk1QcXZjdlZlVXdhdmliVkF0ZTlF?=
 =?utf-8?B?LzkxS0M3Mi9IK0M3YmFKWGZhZzhQRDcwWmFad2pzSW1jUWs1QWt1NlFFQTMr?=
 =?utf-8?B?QXFCb2tJQWRSSklHUFk1NlRDNUprQXVCcFkvWTVrTkw3blBkQnhrbzFQdCtH?=
 =?utf-8?B?TlNnNWxlcjFWN3kxangzNHZpTGJOTWwyamxCTStNdzFhMWsxaE9oREludzg5?=
 =?utf-8?B?Z29HUkNyYmlJUkFzUVBDWi92OE9RT1ZKdTBEKzlOazY1THdqVEw2NlpVK3FN?=
 =?utf-8?B?ODVQK0ZLME50Zi9tc3RxWENGRCs3WEhvanRaUEV1SG9zelg4UldXamhZTjdF?=
 =?utf-8?B?Tll4czMramFoMTVoOUIwY3JkS1YyS09Fakp6SUFDbk81U28vWkoxNjVYRjRx?=
 =?utf-8?B?QmI3cEoydTg2T0pEckpJTkd5TURoSmdZWUpOcU40cWdZcU93amdKYWJMcndB?=
 =?utf-8?B?THRqZWx2YmdyNlpMVGVkcy8veE9JWmMrajZkUXd1TXJVRlhCK0pSSjZzbFB1?=
 =?utf-8?B?cVdFUXM2UUFiOGpGOUtxTzNZem9RWDd2ZVZ0NXZtWFRUcENYNEZWM2xhQTFs?=
 =?utf-8?B?RFAyVkdrQk5iSFhDUXpONzA4RWJDTFNoTkNUOWJZckw1cjhiaENsR09FVG14?=
 =?utf-8?B?Z3RuaVdLUjdvN1FHVkJ1cko3MWNvRmFwbFlWdFVjMGp3MEY0RXJIRjMya0hW?=
 =?utf-8?B?WEVGMWJLdnV5bExCVG1CVExYRFlDTkVqWFNDb1NUOWRQcjFHdHVqbklrN2kz?=
 =?utf-8?B?TE9MMW5BVzdQWC9vYVJCTjVsU0svMktsMGREbEhxMWRCWXhLcDlEbGtRdkZy?=
 =?utf-8?B?a3VuYXpPYXlJWGJSd1c3R2hncWgyWWpUay9vOWxCYWNDcm1JVjNpK211WGVC?=
 =?utf-8?B?aGJSNzhabVpZT01kZEVMMDlXUWRXSGNDSkc0MTNCUFFvUmV2RFNGNjFKWkFX?=
 =?utf-8?B?dGVFcEYxMVpGZGZUWmhMM2QwVmEyZldoeTBJaVNjQm5BMzNoeVBvVU0zZElG?=
 =?utf-8?B?ekUvdnAzVG9YRytmTXhrd0U3N1ZEMGs4cUxueFdFc3h1V29Ud0F2N21VbHh2?=
 =?utf-8?B?ZWpFcFpyY0pWblVoaHIwM0dZMUhOY3BFNGlDV1oza3VYZkV3YUg2WnI2cDhx?=
 =?utf-8?B?Z3QwTzVsOG1xZndPdlhOL3psVUo5VGVkanA1NHorbkt0YU5DVXltMld1bnJt?=
 =?utf-8?B?UUtuWDBzWHJYd1RNQXAxanp1ZUZlc1N0L3VscG4wK3dlakRrRFFlUE9xSmVl?=
 =?utf-8?B?MHNFT1daeVdQcWhXb0dhMUdNWDBNYjA0SDZodEg4V0xtRDFLT1NvVjluekM5?=
 =?utf-8?B?eVM3OEUvV0JuRC9KSmwrZDY3WXdCRi9jWHhrQUlaeUxCbUJHUE5TMEJHdHla?=
 =?utf-8?B?UjYyMXoxSWN1OEtFa2pRaFRqL1VMdTdNcW9xVCt4ZVBOelNPSnJaVGZ3OGFU?=
 =?utf-8?B?YWR1NHlFVmxPSE9HWlZkUlhxVWJ3cjNqSEZZNlJrTklHNzhORThqTWE5bWhV?=
 =?utf-8?B?VnpFSnJwdCtMOVpDMGxHOGZtYzZ2MDZ6eWZGL210TDJwVk1adXYwNUNLaHNV?=
 =?utf-8?B?WnNQdWsySytCWFJaOXcwVjZuQTg0UnlaTVZIeC9sUE9lUWVaUkdiOS9MS08r?=
 =?utf-8?B?YThtU3lyVDZpV3pvSEpJYStQWFpYUmhlbkNLUm1GQ0hJZUFWN3UzUXZxZFhE?=
 =?utf-8?B?WjBrTVphcFpyT1ZtQnU3aVJXOS9IdHc4b3dMV3c2WVVlZ2JtakV1bmhXNFpS?=
 =?utf-8?B?M2RUcnBCRTU2bEhZWWNLQS9jeTRtQW5HcWZLUHBtc1U0NmFWTnAySUVORlkw?=
 =?utf-8?B?T2prNFlzZmYvMUpIN2huL2JWRlpxMWJqb2JWanB3QkFzNzZDZXhKd3d6VG0y?=
 =?utf-8?B?UFJwQ0x3QzV1WmpGd1I0aG8ySTBRSFBPT0lRKzRvaDBiakhtWUVDOVFKV2VO?=
 =?utf-8?Q?wWh14f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(52116014)(366016)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVhWYjlmNENnQkFyUy9OQk50Zy9pMnVvZkY5SksraU9lQjJSTzBhMU9SN2Fn?=
 =?utf-8?B?ejRLZTFZa05VSmVodFV4aEthWUlBKyt4R0lUcDNYbnhMbWprbW1TbGtQcEZH?=
 =?utf-8?B?c3lmN3ZUMUV0amNvMVdWRW9zQ0xhb2k1U0xDYiswTTJCRXh0bUE1SjhIRzd3?=
 =?utf-8?B?SzNVaDB6OE5oRHNFTlNVY085UXhyUVNEa0JmRUhqaUlJUUFna1ROV09pK21L?=
 =?utf-8?B?TE1iYzVCeFc2eGwvOS9GZmtiY0NlcU84dlRTWU83cGtEa1BXWnhvZWwyenA4?=
 =?utf-8?B?Z0ROUEFSTVBFK3U0U2xTZ2pyTVlWRElJb1NKNUpBWWJYTzZiSXZqNTVSMnlJ?=
 =?utf-8?B?R3JNbmVGVXVxbkgwMWl3WmswalNzOUovVWMvN2duOTNqbmZCMEI2K0ZGWEhU?=
 =?utf-8?B?d291dlY1dEN0MGJuTHFCOTkyT0FLSitQaUVsemZqOHpEVXdsZjlOTVVQR2Q4?=
 =?utf-8?B?RFdNdGxIeU0xVWhCSTFrVnV0VVV4aTJaazlpZmJ2MmY2bGQ1NXk4L2hncFFW?=
 =?utf-8?B?YlA4NkZ6QUpoWkdWMUdudUFKbURFZHRQSlduN2hhK3BFNUJCUHBxTzRtOWZU?=
 =?utf-8?B?SUVTOERsUmtDdGNYNWZSSEZVL0ErYkR0LzBUNWlnMjIrbzMwSFRZYnJ5R0Jp?=
 =?utf-8?B?b0VyVUc2ajYrZjBDeU13S3BtbDZUSVY0cHNrbHhGc2NsQVlvVzc3LzVsNWxE?=
 =?utf-8?B?dFJNMWZzUTZUZFVRQXFKUExIM0tsOGtXWHc4SW1MdFA0M3ZBa3hucG0veExj?=
 =?utf-8?B?S0ladTlpWFdNTEw2Q3BoaERKM3c1ZVcwYTFjZG9GZlNlUUxHd3FMWHU2UjV0?=
 =?utf-8?B?WXpJUGJiQTFKT0ZEMjdGNFRkOFJPQkkwejhCSnRiTXhZanJ3Mm9YVjZrK2lk?=
 =?utf-8?B?ZUUxNFI4NFFuNm84L3hRZkRsR2RZSVNLMWJlTXM5aml0ZXRyeDA2VFpJWElI?=
 =?utf-8?B?cW5FSUtuZjdHMjJMbXpXaU9obnhYVEU4OGFpT25oRGFxemd4MEVPZ1EvVUor?=
 =?utf-8?B?RGFzRHJ0dXVOWVdWMUM0NzlGQ1YxRERaanVmdS9QSnppcHRWc2t0L1duVkZF?=
 =?utf-8?B?WENuZjBTQ250QTZBQjcxSHJ6WTJPdUhHckhxZVA0ZUt4U2tsdW02WXArd290?=
 =?utf-8?B?OHNPaGMxMExSS1BPNGs4VnZ0aWQvM0hWS0xXcXpueE5VV0pmV0VabTMxT2Mr?=
 =?utf-8?B?NHBIR0NBRHE2ZE4zY05UenlvdEpGcEFDdnRITCtTQ0YrN2h0NEF6QXV1S3E5?=
 =?utf-8?B?TTh3NHZQemRCd1NXN0ZrRTNEazVzTXhPV2NERkVZdHF4UEdVYzZsZkZ3Sklo?=
 =?utf-8?B?b0dmMlZjeXVpejNBUGlPZ2ZzSVNzZjlyZXZXODJMbnlnak1GMGlZRTRBLzQ5?=
 =?utf-8?B?ekFXZEVCcExnYVRZNEtFMDg4S1dNY3NscXcwK0c2cGNPZTd2U1VWVTZKcGdU?=
 =?utf-8?B?V2I1ZGFqOGp5VmxaMlZ2MTZLek1kMGdJTkdWUTYvSVZwRm84RmhFQ3Azellm?=
 =?utf-8?B?a1M4RmRYZWdFZXp2a3ZJTnVzUmF2TWRIYWRTMGV6L09mYkliUlFORDFUU1Vx?=
 =?utf-8?B?V2FDVU95ejNsYVBHVDFPVFpsN2xlQlh1ME82NFhtUDBsMmpRc0g0dGUrLzlI?=
 =?utf-8?B?Mm9YSUNkbG9SV1dwcWxYTVFGT1V5c3NEVk9aMVl2UjF4YWkwaU5YYWswN3BR?=
 =?utf-8?B?ditERGk2d1hkWStHOHVEd1RpWEdUZjJGSU84clg3Wi9aM2d4RW15ZVExWjFJ?=
 =?utf-8?B?dUw1TkVLTWtVcWVJUE5DL2diajREMmFNWnRNT2VjMzlKRzdLcHlWQUswRGtI?=
 =?utf-8?B?MzRmTVNsZ2ZzSnZWS1FrMW1mSzZNSXZoKy85ZlJTYjNXL1hIUVV3MkM4ZGVr?=
 =?utf-8?B?RFdUTDFQdG12QiszQWhETkdzc2V3c1BzalFPaGR4TEZWUkhpVzlodVhoT3FH?=
 =?utf-8?B?d3BzNFVzb29IM2hxUi9INTVSSzZWUFFIRlp1UExMZDYwUXFnZkoyd2RtaHp2?=
 =?utf-8?B?Y3JiT1JBbEhyYTNZclFoSG9KYTVsYU16ZmVrbkVJU1FmcWJXV2lwY1hXblNT?=
 =?utf-8?B?U2xINXNZQzlzMjNDR0ppYmowNFBROFR2dk5mSGN0Y0V5SGtZVDhKWitTdHp5?=
 =?utf-8?B?azNzVm9qN1FzNzJDR3ZaaFRmYVNLV29DZTNpOEx5YzBZMFBXeEhsYTBXMlRP?=
 =?utf-8?B?TE8rL21VY3B0TE1xRXZKSjVvR3J0UmpQZVBPWGFUWmxsUVZTREs3akwvOGsw?=
 =?utf-8?B?cUMwR1MwT2xIaVovTG8xZEpkVE1ZTFRBSHpjRXd1N0FwSjJoN3VMZFg4SG1n?=
 =?utf-8?B?Mm56RzBPczczRE53ejQ3WGhCaGxDb0k0OHpvYWhqbzNZY2xQSFhXUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b449b8af-bf94-4a4b-6884-08de40fec378
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 02:06:48.0167
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gAE6xKG+D9mcaJsozOEGQve8YRQUBY7ajy70Z6dfrQbvwouAmOiWQXGqpyhIu93Y66dK/7FtbgN2T6hSZsYScQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_180654_157046_4F48FB54 
X-CRM114-Status: GOOD (  26.29  )
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

T24gRnJpLCBEZWMgMTksIDIwMjUgYXQgMTE6MzQ6NTZBTSArMDIwMCwgRGFuaWVsIEJhbHV0YSB3
cm90ZToKPiBPbiBGcmksIERlYyAxOSwgMjAyNSBhdCA5OjU24oCvQU0gWHUgWWFuZyA8eHUueWFu
Z18yQG54cC5jb20+IHdyb3RlOgo+ID4KPiA+IFRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJp
dCBkYXRhL2FkZHJlc3MgcGFyYWxsZWwgcG9ydCB0aGF0IGlzCj4gPiBwcm92aWRlZCBmb3Igb24t
Y2hpcCBhY2Nlc3MgdG8gdGhlIGNvbnRyb2wgcmVnaXN0ZXJzIGluc2lkZSB0aGUKPiA+IFVTQiAz
LjAgZmVtdG9QSFkuIFdoaWxlIGFjY2VzcyB0byB0aGVzZSByZWdpc3RlcnMgaXMgbm90IHJlcXVp
cmVkCj4gPiBmb3Igbm9ybWFsIFBIWSBvcGVyYXRpb24sIHRoaXMgaW50ZXJmYWNlIGVuYWJsZXMg
eW91IHRvIGFjY2Vzcwo+ID4gc29tZSBvZiB0aGUgUEhZ4oCZcyBkaWFnbm9zdGljIGZlYXR1cmVz
IGR1cmluZyBub3JtYWwgb3BlcmF0aW9uIG9yCj4gPiB0byBvdmVycmlkZSBzb21lIGJhc2ljIFBI
WSBjb250cm9sIHNpZ25hbHMuCj4gPgo+ID4gMyBkZWJ1Z2ZzIGZpbGVzIGFyZSBjcmVhdGVkIHRv
IHJlYWQgYW5kIHdyaXRlIGNvbnRyb2wgcmVnaXN0ZXJzLAo+ID4gYWxsIHVzZSBoZXhhZGVjaW1h
bCBmb3JtYXQ6Cj4gPiBjdHJsX3JlZ19iYXNlOiB0aGUgcmVnaXN0ZXIgb2Zmc2V0IHRvIHdyaXRl
LCBvciB0aGUgc3RhcnQgb2Zmc2V0Cj4gPiAgICAgICAgICAgICAgICB0byByZWFkLgo+ID4gY3Ry
bF9yZWdfY291bnQ6IGhvdyBtYW55IGNvbnRpbnVvdXMgcmVnaXN0ZXJzIHRvIGJlIHJlYWQuCj4g
PiBjdHJsX3JlZ192YWx1ZTogcmVhZCB0byBzaG93IHRoZSBjb250aW51b3VzIHJlZ2lzdGVycyB2
YWx1ZSBmcm9tCj4gPiAgICAgICAgICAgICAgICAgdGhlIG9mZnNldCBpbiBjdHJsX3JlZ19iYXNl
LCB0byBjdHJsX3JlZ19iYXNlCj4gPiAgICAgICAgICAgICAgICAgKyBjdHJsX3JlZ19jb3VudCAt
IDEsIG9uZSBsaW5lIGZvciBvbmUgcmVnaXN0ZXIuCj4gPiAgICAgICAgICAgICAgICAgd2hlbiB3
cml0ZSwgb3ZlcnJpZGUgdGhlIHJlZ2lzdGVyIGF0IGN0cmxfcmVnX2Jhc2UsCj4gPiAgICAgICAg
ICAgICAgICAgb25lIHRpbWUgY2FuIG9ubHkgY2hhbmdlIG9uZSAxNmJpdHMgcmVnaXN0ZXIuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogTGkgSnVuIDxqdW4ubGlAbnhwLmNvbT4KPiA+IFNpZ25lZC1v
ZmYtYnk6IFh1IFlhbmcgPHh1LnlhbmdfMkBueHAuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jIHwgMjIxICsrKysrKysrKysrKysrKysr
KysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4
bXEtdXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiA+
IGluZGV4IGFkOGE1NTAxMmU0Mi4uY2IyMzkyMDA4YWQyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gPiArKysgYi9kcml2ZXJzL3Bo
eS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiA+IEBAIC0xLDggKzEsOSBAQAo+ID4g
IC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ID4gLS8qIENvcHlyaWdodCAo
YykgMjAxNyBOWFAuICovCj4gPiArLyogQ29weXJpZ2h0IChjKSAyMDE3LTIwMjUgTlhQLiAqLwo+
IAo+IFdoaWxlIHlvdSBhcmUgYXQgaXQgY2FuIHlvdSByZW1vdmUgdGhlIChjKS4gTmV3IHBvbGlj
eQo+IGZyb20gTlhQIGlzIHRvIHVzZSBkaXJlY3RseToKPiAKPiBDb3B5cmlnaHQgMjAxNy0yMDI1
IE5YUC4KCgpTdXJlLiBXaWxsIGRvLgoKVGhhbmtzLApYdSBZYW5nCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
