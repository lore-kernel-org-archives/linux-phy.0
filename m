Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A5CCC19F32
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 17:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CR9iDHBSLRT3ec01bTSyfqTWS6i1ulJUKmNkFaQl3O0=; b=ptOB+ILR5prf9Td4fA8oFd+Mo1
	CILcN1STGp8JjcHLnnH+99BBCEKkI7x3ALsRoHY/F5Uf3NV/mvmJvnmmIyV1F4JJYJ3pSL0WAvVL3
	UkZoT4bYj2xbKxaQO23J5oHlU3w4DVow/4CcdWh5e0eSrOi/LPacAvb8v4QHdjzxaagw527+sWnTK
	995m2/6GtsNy8ta3fTcZjWrBZNcgTB+tfrS/fOJJYJRmcTmb/FWc3zSAyTi3Qwf5UQtv9icG2dHXf
	V7jcKPA4zoTYveUKlox8sYYoHp095yb3utj1E/w82Tyks5YL+RIXnNqd+5Cam0/ssxbam77JwqE0e
	JB3mKnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpt22-00000008rSX-3A8C;
	Wed, 05 Mar 2025 17:59:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpsxb-00000008qrL-2iIm
	for linux-phy@bombadil.infradead.org;
	Wed, 05 Mar 2025 17:55:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WooY3fgCjk9rglRF+E2KzUYGbNktauhVlhD28ANQiQA=; b=YGi0syPOwaza353EGYshYakbEN
	6SHrBrcD6wXVd5B/UbT2QfC6XhEL2rZdljWlALw5HP8moY75kwEi3LOF8784zuiBxOVjp7Fty5jYv
	lN66j/qK6a0o6EJjPIU4yzS8c6MtbxuTFjB9ThA+FP4rICeQtr3N3OiJRd78EhwlSQvNjJSo6IzKl
	Or8XwKHq7bVpdqQD+QF7isPwjbz6azsEtcTCIbdPHNza0k7r6UuRGbP6zHJWdr9atU+V8VZ3G8HB/
	r+tSTeokFZKYugRElowX/BgK1Tn6Jz0FORDgcbLPmne7FcHaGFXmQqJY2O0t7RgFgfZZfcy400297
	2QjdQuzw==;
Received: from mail-bn8nam12olkn20800.outbound.protection.outlook.com ([2a01:111:f403:2c18::800] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpsxY-00000000fkp-2rqN
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 17:55:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aG+IfdjCeI/LHTuk+0DtIK2gi0djXMWaHLFgC0O65xMErzUEpaIQV0G3nATyMjylhHgwiX4Vb/rxCWjuo6btCqr1a/EzjqjXduJmCZLMz0X7kFAIKpiAHyfMeOnMCrTNn8HxajpHrphzyWUdrvPxj8U45uJueiqPI0Ed5zLUCiyL8lSiObmdIc7gXhpG96lT0jIpyE9G5eo+kzlR8zDw8gWfIpX1UlASrMG2hX86rc05wKp+SA5lMDsaAQ25NFQiN88eZzLbZ+IvaZPKAxdls+6jEhvdaWuxLQxGwVioWek9kWTmexSfyzBughV7oJxOdnJrHq7rafW0br57Dgw+/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WooY3fgCjk9rglRF+E2KzUYGbNktauhVlhD28ANQiQA=;
 b=mbSostjIVXYE4/JHuDPpGTpUoIEq8ETp2aaTBhSXp/Z2YEZv5qL3nmAi2FqNE6lIDgNTpvwkjSA+izCJw+GRLWcyDoSe4NGYvWl2dqXUfislPEWNZD53bMvOORdQlhjcEa3KGGghQApPmyxld9JU214EdqhAZmyajPIKSwL98yy4xe9Jzoye22yw3+xIYdlPRvO179F44fUBim9rJJyxW48eytAaFtMhnNHtj9pEY8MtimlXZi97HqvT0SSnFtmyEMMeSwGI00hcaga6YtZ9/Z2ahm5lVtLi3WzBZSg8fElvusc32hGCWiogD9ggtOSENc9XtgXGbvRP5V23Oi882Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WooY3fgCjk9rglRF+E2KzUYGbNktauhVlhD28ANQiQA=;
 b=hVTw/dZZMmeLakVoi9NLPZEyJl6I+T+a4+10IBtVLulFIgAa3tJ59FCFhedl8v698bS/5+Z6fiscQ4TDu3FZ8JQLUAudEGBdQrmGdMpb/8my1tVluil2nta2MVuSNpZI2/BBPvao+PpIJo6C/hT6CRfRXm5CtPpWhMBX5WiMbeIXgK+iyUYo4fkxf4olxPm7G5acalbrmVaZkwlQtOmHPb+jGBJgDs5moWE17aij6ai+2dyUJu/a6+g7IAc5/ogaylcPZlKzbIHSpUETw+ZnTQTwKKwFb1SHGLytBUbaOTtzdbBgnOr1QO//kQM42FINbu2LpFRvDiAXlmMsgnnBaQ==
Received: from DS7PR19MB8883.namprd19.prod.outlook.com (2603:10b6:8:253::16)
 by SA0PR19MB4556.namprd19.prod.outlook.com (2603:10b6:806:bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Wed, 5 Mar
 2025 17:55:01 +0000
Received: from DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305]) by DS7PR19MB8883.namprd19.prod.outlook.com
 ([fe80::e0c2:5b31:534:4305%6]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 17:55:00 +0000
Message-ID: <DS7PR19MB8883932996C1C2BBD84249BD9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
Date: Wed, 5 Mar 2025 21:54:47 +0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] Enable IPQ5018 PCI support
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, andersson@kernel.org, bhelgaas@google.com,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 dmitry.baryshkov@linaro.org, kishon@kernel.org, konradybcio@kernel.org,
 krzk+dt@kernel.org, kw@linux.com, lpieralisi@kernel.org,
 manivannan.sadhasivam@linaro.org, p.zabel@pengutronix.de,
 quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com,
 vkoul@kernel.org
Cc: quic_srichara@quicinc.com
References: <DS7PR19MB8883BC190797BECAA78EC50F9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <db186c37-e8f3-4a7d-8024-48832b1208f6@kernel.org>
Content-Language: en-US
From: George Moussalem <george.moussalem@outlook.com>
In-Reply-To: <db186c37-e8f3-4a7d-8024-48832b1208f6@kernel.org>
X-ClientProxiedBy: DX0P273CA0096.AREP273.PROD.OUTLOOK.COM
 (2603:1086:300:5c::17) To DS7PR19MB8883.namprd19.prod.outlook.com
 (2603:10b6:8:253::16)
X-Microsoft-Original-Message-ID: <cc065244-3a04-4422-9d09-e8b24875c1c6@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR19MB8883:EE_|SA0PR19MB4556:EE_
X-MS-Office365-Filtering-Correlation-Id: 17f48502-dd2d-44c3-10d2-08dd5c0ed91b
X-Microsoft-Antispam: BCL:0;ARA:14566002|8060799006|6090799003|5072599009|15080799006|19110799003|461199028|7092599003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YklGc2JCL3F4YUp4a29aQlErQ2Eyd2ZzN0tJQWxobk9mWDNNdTk3KzcrcjNM?=
 =?utf-8?B?cGo0UEc4V1pHOUdYbTNjcUhTN2pvOTlzSFhNMVFkTTZ6V3ppNVppYzU4a0xl?=
 =?utf-8?B?azhzeTN6K3grLysxbzFYaEQ2QjBLdnk4R2pTcWZDd2tzS2RsZ1JHdHBXL09Y?=
 =?utf-8?B?bmhuV3M0bm1CbDhTNGlDNmNraXF6VmIrVWlNY29LTTd3TGpvMGozdjQrZTIv?=
 =?utf-8?B?aTZ0VFJIM0pUZnhYRUxSN2RhYkV6K1dmMEFHV25UcHcxYnRPc0ZhSmw0WEdW?=
 =?utf-8?B?SVNrS2F6UWFqbjlUVytoTEdlVTl0ajA5VDc2aVYvZHVQUjhOTVg5WHpSeWhL?=
 =?utf-8?B?aUw4M3p3Y1U4R0FreERXUk1rbnV2MHg3dWtyZm0vR1hYZ0VYTDdISVBRdGU2?=
 =?utf-8?B?UzRINDBEUTdyTGVGa0ZSQTVOUnUySFZDU3JlWGgwVW5HRXJxbjU1RFNBRHVz?=
 =?utf-8?B?VXNHbXJsS1k0QUxPUXI3Q2FzRE1rRnZ2Sm9iY2Y1SGpNSU1oSEZxTjBaam43?=
 =?utf-8?B?Mzg2OHRESTBkVDd0WHdDM1NLdThsL2s0alhVdCtLaGdZTUNCempRdGEyODE5?=
 =?utf-8?B?Nmx4Zm9IVDhDK0luYytSZmVETGtQR084Z2lhWFFBUFlac3FXdUVzT3QvV3F2?=
 =?utf-8?B?Y3NmOHVEbjd2MjQzQ2VhbnV6TUduelFBbUdRVk5ydVBmMHZ2QTZwS240ZW9Q?=
 =?utf-8?B?WWdSYXg0WDdqaEE3QlVzOVpLdkFnRDJHR3FqSTRKQ0NTaG1IWEkxUXBpcjZF?=
 =?utf-8?B?TWNEaFowSE5udlNZRWhUZFZSS2ExbGp2TWM4OEVuVVVOeTdvbjE5WEl6dHU3?=
 =?utf-8?B?N3hzR2k0aitGY2ZITFBJaXNUV0MrK2w1MkJJR3RuV3N0ZE96d3NKazJvOFlS?=
 =?utf-8?B?RElzL2JUT2lsdzFNTWgxdjRjNi9PVmlDWXRVbm9ZWVowRnZpZlEzSmJJbjMv?=
 =?utf-8?B?UTU5eEY1N1NhWGxuc0Z4eUQ1Nk1YV1RmdUR2SFNhSGVOR2sreE42ZE5jWlow?=
 =?utf-8?B?UzBMQm5VbENCdE9WZWtrZk5xR3NpUFdUcnpjbGp5bnNSSHFkR1pEMUxUY3cz?=
 =?utf-8?B?b1pTTTJ3VWExWVZac1p0dWY4T1NVWnpSVXZBUVpneGFpMXYxSmpqS3R1UnFZ?=
 =?utf-8?B?OWlBMXMwWkU0VUF1MjBtdlMzWG1nb2xSdC9rV2J6aDN2VXdvNXpwNE54SitM?=
 =?utf-8?B?V1p3bEdMUTVGYmZXSURLU1NVd3NickNJSWhpdGIzeWRDS2hyb3gyOHNTcW1C?=
 =?utf-8?B?M25mZHYvd1ZpZmhXNk0xN0VUSUw4TzlZSGUvN1MwWWg5M2sxL3BwRzVPTzRs?=
 =?utf-8?B?K0p0eGxxcFlPYzhtcVVHWmovWnllZndhSlhZMlRnWnVmcWZvYko1WGVRYXRL?=
 =?utf-8?B?QUI5bVRGazZaaERpS0pWRndWL1JiSGZnTm56cnVyVHBqTG5JbWlzOXpxR01q?=
 =?utf-8?B?ZXdhUEplOFdMejUybTRLSEpTVE5DOEVvN1llcExRb0JzTXlWblB3bnB4UUVQ?=
 =?utf-8?Q?DRQQ/s=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzc2MkRoS0lRSDBrdTdHc2pwQ1dRc2tSWDg5ZXBVUEFWSGtWRTdDcytTck45?=
 =?utf-8?B?bVkvVmJFczVPTmNvOVRTWWIwbmxFc3NYVjB5b3I1dFQ1NmthT1EyRnRHVVdp?=
 =?utf-8?B?Zi9WaHh0M0VlQjFIRkFWeTZ4emxXbFpZV2xUOFBWMmFJaVRGWFhWMGJ5ejEy?=
 =?utf-8?B?YVgzUUErNSt0ejRuMDZNTE1QTjRabmxhNWdpQXZ3VlpsYXZ6VWpzQ3Bjbmhm?=
 =?utf-8?B?b3R3WUViUE9SR1J6TXQ5SU8wS3paZWxYc09HemRoWGlPV1pNNG16Y3EyTFVu?=
 =?utf-8?B?bWhhYnVPWTZLUXdWdm83NWNEeXoxSExPMGs2UWtyNGhib2Q5S1pjaG9OS1kx?=
 =?utf-8?B?VDF0eGNiZWI5eXZES1g5VVBWKzlGOUU3cURtZDMwZyt1SmdLejBXbjg1bXM1?=
 =?utf-8?B?RitjMCtIZTBzSG9XdmtHam9xMnlaNHNtN2oxeE5JcVlMeko1WGQxRzd3cDdv?=
 =?utf-8?B?V2RLaXNiYmxpazVQSFZvT3lGckpxSkRrbFY5d3dQNnA3ZzRWbVhHcXFuWmFt?=
 =?utf-8?B?THh6Z3FMT0lPaWpsSDFXS2Q2SXoxVXVRRk1jR2Ftb3BQSklmNEtSdmV4NWp2?=
 =?utf-8?B?QUlWc1RqMXVtQjNFdTFQSGJEVFphMnlpOG9vNnFoTTQzbjE4cFpLci9kcDBr?=
 =?utf-8?B?bE9UeURuU2FISFNtbDJhNFIzY0hMZzJScTNIRWZQNU9HWXFsUVNtRHZkeXVs?=
 =?utf-8?B?STZNZ2pZZXhaWWZJdC9XNVB3bkV3K3RobmJPK3AvK1duTnUrM1AzYmVkRUpQ?=
 =?utf-8?B?aHRYaHlKSVhqUHlzcDZ1aDNtdEh0NlF4eUc1M0c5YWh2cmdHakZzWnFicGVF?=
 =?utf-8?B?WkZYU0hSYTJzSnZxSTZ4QUVjeC9SSzFIMEpwNDR0L1gzQnpOQzJwTUtVMmxq?=
 =?utf-8?B?QUh3cldpR0Irb0w5NER6Mm80di8yeXVYcExpS05uZnhTMXR3TDVKTlJtdm1N?=
 =?utf-8?B?dVdCRDdDd1VkYkhJbFYycGJvbXZQd2NXbWNJNDdNNzZkUGMzbDU1eksyTHVZ?=
 =?utf-8?B?YmRaaVl1T0xMTk56STdDYTNWSTEvNkp1KzVYOUdtbzB3S29INDFLbVowZ1lw?=
 =?utf-8?B?dE9kQ0UwNHdaVnp0aEZnaGxnWitYZ2NnYlBuMFdNbkJZRURPYkdNeC9hZFJy?=
 =?utf-8?B?UDNpKzlNSmJpZHBVR3FTNG1jQXJyTUxhVzZZOC9EbmVNZUVlVytyREtFTWhl?=
 =?utf-8?B?K09kYVdvMDRGYk5XbXpyMm5GL1hNdStWc2NYNFA0MnB1THlWc2Fjbjd0WGNM?=
 =?utf-8?B?YkxNYmRERW4zcml2UjBFUEJqdGpkL1dXSUlvUktQcFBjd0xHZFZYVWhCWSsy?=
 =?utf-8?B?YTlBc2tVVXV4SlNXZ1cwbk9qUkxnL05WSFpKbnEwTUxsWTV4L0tmVDJieDZY?=
 =?utf-8?B?VWNJVU9VYVhvei95VHRKNDl6MUN5c05SZm1udzFlTFpaZTJlRWZqUVY5b1pj?=
 =?utf-8?B?Rm5BaWNRYjFCVlNMd2c1ZnRLaUM3WlkrQ2IrMHQ5aGRhVGluZUFuaEs2NXlx?=
 =?utf-8?B?WnJmQnpCRGlxZHhaMjVPbkMwOUxPUkVWeHJlTW93ZzVUTWF5YnhldWxaVmpU?=
 =?utf-8?B?dkpXeEFrT0JDL1MwWU9va01JYjFDOXZUYnRtMFowTldzV2g1Zlc3YjVOZmli?=
 =?utf-8?B?WEF5bGUwM0JkbnhGVjhzWmovMEFJbGg4WXhla1hnT1BiQmlnbDdUUGd0a1lI?=
 =?utf-8?Q?ZBJAuw0cFsnLY1kJnQox?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f48502-dd2d-44c3-10d2-08dd5c0ed91b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB8883.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 17:55:00.8473
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR19MB4556
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_175508_940495_975DA35C 
X-CRM114-Status: GOOD (  12.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 3/5/25 20:47, Krzysztof Kozlowski wrote:
> On 05/03/2025 14:41, George Moussalem wrote:
>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>
>> This patch series adds the relevant phy and controller
>> DT configurations for enabling PCI gen2 support
>> on IPQ5018. IPQ5018 has two phys and two controllers, 
>> one dual-lane and one single-lane.
>>
>> Last patch series (v2) submitted dates back to August 27, 2024.
>> As I've worked to add IPQ5018 platform support in OpenWrt, I'm
>> continuing the efforts to add Linux kernel support.
> Why is this changelog separate? We talked about this 5 revisions ago and
> you keep doing the same mistakes.
I've finally figured it out. It wasn't a git send-email bug I was running into.
I just analyzed the entire mail flow and found Outlook.com smtp servers replace the Message-ID
header value with the server name handling the email and places the actual Message-ID in another attribute
called X-Microsoft-Original-Message-ID. So when send-email sets the In-Reply-To header,
it uses the right one but the outlook.com mail servers replaced it with another value so threading breaks.

As a workaround, which I just tested, I will send the cover letter separately first, pick up the value
of Message-ID (which isn't the original one), and send the remaining patches with the --in-reply-to
argument of git send-email set to the newly replaced Message-ID.

This works. And apologies for the confusion/mess.
>
> Best regards,
> Krzysztof
Best regards,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
