Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 234FFD1CDAB
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SjGRPHWe0tGPTkWIt1sqNDi0PGrhUPONaUZvN/wcxOg=; b=Rq9ZIttbE5nJE0X8zpjQNbYoUi
	8jmY5KnxMrUcjP+7yNxSUAjcFH4HeuPdF8u8gVfxThRaXMxqK1lXm0NLa4bEfVzpsUgVELZK5zM3s
	7wv2pgLbOOUQFpHtpIIfzoh1jmpgfQO5TjCeQEd87zdk2hJJ/TIRoaco46N+L9c/D54F7gUWIdOqX
	0mQEFbnTiXQe+6qiS70v9S5l8zWbb9pzkWycue8U02MClNld8e6k4sKSUMRRnQWw7/1KjfOYuEz2r
	ZVqxmKOv52G4O8ulI7slMWqr2Ek07xel0/W9z86x/vNjTiRgdZAInnBe3LGtqD+/abXDqqUawOlyW
	QAt0lsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t38xF-00000009unq-0vfO;
	Tue, 22 Oct 2024 07:05:21 +0000
Received: from mail-vi1eur05on2070b.outbound.protection.outlook.com ([2a01:111:f403:2613::70b] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t38wW-00000009ug4-0xEx
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 07:04:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xhe0yM/ru+rGCybW+mHMlIwBs4GurQleIB6ok0zTL4LON4X78u+tTmQxN9Y6ZACg6DPE34o22yMOPtPMGsOTJ4F0Fmy8qhpTFeLCSb1JGEhBYCVFICvdPSWO4VwcO+n8yPqCAVZ2IhsFGYIIup65eksXU7WpI01WU1M4BCjQzE+2Ny2va2QBvr7zFZrfgomFDdg+UI8FTUz4g41XEMQ/NuP7yhQvR9hRI+Pt6RcbQ2SorFrtQDV4pRfPGFd17pZkOG2f/mseBS5vo5+U9+IykITD24YWkDsP9M8Gwd9SVcfadW5p8v0Fu10KuGCRmb8lwB7dj6rh8Q5s/QKnZr5NVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o84r58ga4K3wqvmDXZN8JiQf/SJCs8WpOW2Dr7z5vQo=;
 b=qEJXwM4Js4RMdOAA62aieQj87YrXqnVdlO7o9lsj1ToVOU3Bi1NKXD1YpffOc23ktnRFGkG5Lb+zf52gJOjoTUZTlD1iDej+QMPjrsdxJepvJfRa0+nnyaE1Ww52cvn6SzJTx/X78cRzsqTo1VTY+RznYDxG/VfascYb6O852ZiW7BufQCZ/TGGf2/COxaG48EEKHDM+K1g9lDAsJG414DOAKhTHJrMp9g6lM3zdzZF4rzKw3Drtit/6qHBLeI+W/BBAvGYS5xSQ0zA1QeYTxpe8NCA/HtXKN4ySFrcPmDTe/02g5D0vtpr+20xkQ/8wJLuqIHcso1MmepSSaGCo6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o84r58ga4K3wqvmDXZN8JiQf/SJCs8WpOW2Dr7z5vQo=;
 b=SgdxYycRNb3Jdy9R0mXqw2XN5xQ25n1jwosguoJgZxJ/cYLnyo+4fX7JbZTdT+kE86GvS+mQPFbkO9E3yNB8pxsYxdDOuqsHoAG5T9IZOTJHyrpkW3MNkuT5adAEt2QYITBMkM0n3hYfApEYwIgh/uw2R/mrxzln6fETHd11G4s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by AS4PR10MB5991.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:51e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.15; Tue, 22 Oct
 2024 07:04:32 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%4]) with mapi id 15.20.8093.013; Tue, 22 Oct 2024
 07:04:32 +0000
Message-ID: <4539cdd4-db5c-40ac-9c99-c15d4df49b70@kontron.de>
Date: Tue, 22 Oct 2024 09:04:30 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: freescale: fsl-samsung-hdmi: Expand Integer
 divider range
To: Adam Ford <aford173@gmail.com>, linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com, sandor.yu@nxp.com, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Dominique Martinet <dominique.martinet@atmark-techno.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20241020165102.340838-1-aford173@gmail.com>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20241020165102.340838-1-aford173@gmail.com>
X-ClientProxiedBy: FR4P281CA0133.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::14) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|AS4PR10MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: cc9389bf-992d-4041-2759-08dcf267c751
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N011YUg0UzVKT1BGZWxhVG1wNWlCMVY1VzhIV1RqRytRYWNWamNWTVRHYmhz?=
 =?utf-8?B?Yy9XVyt5NVh6UlJQM2RDcDJuQVJmQWFOK3dLb1JOL3cxODNBalFUR1pZd1E2?=
 =?utf-8?B?YXk5VjFOQllnZm5lK1pueUVndUl3RWs1djBPTXN5dy84THhVNDZUQmUwUXlu?=
 =?utf-8?B?S04xM29XWHp5OGRLZGFVRWxlY0lrSU02aDZ3V3JyU0I0a200VGpsdXo4bHY3?=
 =?utf-8?B?eEh3SStOL3RsN0EyRU1CNlRtQ0wxYk1iYWIxMjl4MDRKcFduVTFaZzNIcndP?=
 =?utf-8?B?MzFtMjZTS2pES1FCL1ZUakd2OWdzVVN0SW1yTEZHWWVkMHFiVVpuZ1JidTVM?=
 =?utf-8?B?L1FDR0loT2xEdFFsYzJ0Y094SHVhdDkrM2V4NDh0R084dXpsWHI3S2k4dUJx?=
 =?utf-8?B?NUZ4SnhjZFFPcDFncktRYjhCeElUQ0U4UnVYVHlrUXBjVlZ0NjR4QXZ0SG41?=
 =?utf-8?B?OUplSUFsQlViMjBQRHBJbjBPeDJHVmpQTHJqRGFOaTc4ZWpvTmJqc0NGOVhl?=
 =?utf-8?B?Wk5VZzhjZ2JoWWllNWxRdmVIQmlOOFNuSm0zM0FnUUxzR3I3TFNGdTFtYXl0?=
 =?utf-8?B?T2hSQ1NPOGh1bjBqTEZRcVpYU3JTSlZSL3BPY3hpbm5rUTdTWmhwOVBUTTkz?=
 =?utf-8?B?ZFVsb1lPVFM5dU5Ec24yYUl1Ymc0SlFuMXM4OXhhdGN0ek8wRDR2THhiUFla?=
 =?utf-8?B?dzM4UlJvejVBbVBXLzFaVFJ1VHB1bG5vZENuWGtQWjhOdUxSL2FjbTMrMk03?=
 =?utf-8?B?R3VoeWd1WGRpNjc5UmlUN0dIMURGNWhrckoxaXJqZUwyZ3FRaHhOK0I4Z1li?=
 =?utf-8?B?ZloyRE1uZ0ozbjN2U3BOUlpLZWg1a0t6dTIxLzZtNExEQ3J5RzJEY1FFQzJ0?=
 =?utf-8?B?R2NvUnhoOGZNRnhYK0xKNmlQaWZBTEdGZE9TR0dqQ3V1QkJBajlYbm5sdjNV?=
 =?utf-8?B?N3M2cnBVcEpVRFlMWVNFSG9TTFBkclhjYmE0eEtIZjViandlMXo3NUM1SWJh?=
 =?utf-8?B?eFJ3ZllSUkE0WkNFdWxpUGtTcWN5TUUzZjNpWXJVQVhubms4Y1htNFVXYnNl?=
 =?utf-8?B?UjJ1S05HSUNwYkxVQjl5RWFMRkRiaXJpR0duZzE5OE15WXhVYUdRV1FESGlz?=
 =?utf-8?B?eksxVXluVXdGbnltZEhCK2lIcWFMODd3WWM5d3FheWtpd3ArWW83eUhRaEVi?=
 =?utf-8?B?ZlMreW5raGFCV1JLcERsbHdLamFIaVo3eDh4VU9CWmtTdCtYNEpNNFZmUXEz?=
 =?utf-8?B?Tko5S3lXNEhSUTJDaG9lLzdEUTV5dTBOZWh3WDVvRUNOOE9xTmpPSXcyL2Uy?=
 =?utf-8?B?VytHNFVXRThCSkxFZkRYbFlteXBrZ1VOZDl2aFZ2OE1veisvbzYwWVRpWk9X?=
 =?utf-8?B?MlpKRVl6Z0RGYlZDTXBxdGwxem9MVTVhOEF2UDZISEhzRzJJTDBjSXZiY2d4?=
 =?utf-8?B?MWw0YmYwUEE2dy9pUWwrWmZtK3FraFBvZHVaODVueU8raEw4OXNSWkx3NHBw?=
 =?utf-8?B?Y3JtZ1lSd1dhZEVyNlNkL05QK094cDNkVkNxdWt0NHdOMW9RUDR1UjQ1Ykdt?=
 =?utf-8?B?aDA5UFNhdkRwTkRNTHlYS0Zwazc1ZUdwbjVRTHM0bi94VnFwaWRvYnZvcERs?=
 =?utf-8?B?QUsxQXZSRmt0TFlBSy8xK0Z4MVpSd3J3dVNTNXRISFRMeUtrc2laMmNtS2Jw?=
 =?utf-8?B?QTk4R2RwUW9QRlZJNnFZTklXSUpwNy9IdmNYQkVGZDVheU5sVlAzZVlNY21n?=
 =?utf-8?Q?Yay/vb6gXrMTvkyJc3V1CK0VfI2FxnlLzoVSgdT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVVwdTVBY2NFTGw2UkNZb0Y2NTBFQWZjdkxUdjBvL1JZV3NrWitFRnRZbUt1?=
 =?utf-8?B?TDl6YU42K1BKOU1xNzBQTWo0UXNxTWpzZ1VqUWdBUlRlTThKL0JDTlVUT01C?=
 =?utf-8?B?bDlqa000QjZZSngxV01uS1NMaXBrYldNYTJiLzkraHBpVHdvNW42bTRZY1h2?=
 =?utf-8?B?K1lISk1XN3JReVR4ZC9mVHBmRlpvY2ZoRGZzTkEvTDdiSUpMcEJ4Z2hkR0hi?=
 =?utf-8?B?MCt0ajlmeFprMUN3UVc3ZzRRejBZTW10K0R1M1NHd0lPc1RBdDBuMDluRmxQ?=
 =?utf-8?B?YXYySWo3a09UczlWSlQ2NERnamhxVVR4aGFJMEVHYjMzMXlIM3Jpa1VhMU55?=
 =?utf-8?B?SUloaXo0RWJxRWN1NEpBeHNWT29wWWtHUUdxeHd6RjZKNUg5eW85ZVpDN0xP?=
 =?utf-8?B?THdjbFlzYXh4R3NhcXJGWXg1LzM0aFNWWTRKUXBtZkxBeHlsRGs1YnJwb0Zm?=
 =?utf-8?B?QnZZTnBwUitybmxrV3QvNjFsbEM2eUMzT0E0cTBRczhySCtiZDNZK0JzbUJx?=
 =?utf-8?B?VElYc3lXTVZjazZ1SHNtTWNEKzBoQWVEVm52bjVkWkttZ1gvcktxVkNsbWJx?=
 =?utf-8?B?TVFrYUVHdTN5aEVwRkdUbVBKdW1jVFpJdnFxRlEvWnVxYzFYZEh3cURhRElD?=
 =?utf-8?B?K01nSytwN2picktISTZrOXNIdG5JdENjaVRMNzk4Z0oxd2lqcCtVM25Wb2Ri?=
 =?utf-8?B?ZWVsbUJVcUlDL0p4bHpwUUNacTlUWmtER3ovbytsVDdHNTk1WWNuaTJOQndz?=
 =?utf-8?B?U3o1YzhBeVkxLzdmQjRJTCttS2c2ZFVWQ2R6OHlyY3Vld256S3FsQzFmVGpS?=
 =?utf-8?B?UFdpZFBaM2Q4ZTJhaU5GNXhSS3hOQk5QZHhhbkJ0OVIzRHpDRDNHWnBwSFdF?=
 =?utf-8?B?UjFtR3QwOFFDaW40RzkxYVc2WW1WMDZWd0hIaHVjRDVzUTg5MFlHRjlLZE1U?=
 =?utf-8?B?R3BLeTRMTEE5SmVRUnpGa3hzL0k1eUNwZWprbm5GN2lqeTRUYUh4ZE9oNjZk?=
 =?utf-8?B?T2RxdlBnVjJsZldaMTN1b3BaanpsZGVNSWxQN1V0SVVYNmZ5RW1wSXpHTWFT?=
 =?utf-8?B?bWlqbzdPaXNKdlpTZjloWlM0M0ZEZHY4TTcxT2doYkdSTUkyRFNzNGdFaUhU?=
 =?utf-8?B?QzlQb1gvekNrbmdnbCtlMU16a0d5YXNNbFI5ZDhQUVVRemdRYlJ3d2NOV2N2?=
 =?utf-8?B?b1JTVnlCcHlaQ2tBWktkeTV2SjdDQVFhOXo2V0g3YUlieTNrbjJYNkFPdjNl?=
 =?utf-8?B?TEczanVlRVU0em0zK0RZSFZFS0hEQWFyaHdoSFBZQlVLMTZhaXlmd25yWjFS?=
 =?utf-8?B?YWdmbGxoRlEvQkFpaG91TC9zK1BsZnhJTm9nbnBWcnJiQ1RlMEZqUC9NTnFD?=
 =?utf-8?B?dUZXc0tiVU95L29hNnVOTVd4aVEweGpHUDRSQ2ZBVmU1OFBmclZqbHQ0eUpK?=
 =?utf-8?B?NW55OFFhMWJWNXN1bkVxaHlIR2tmVllOYVBpVWJYM0FtaUVTMmV1aVdXeVFB?=
 =?utf-8?B?d3U0SUl3WWhqem5ZWU5hQ0pZN2h5Q1pEQm9WWmlMWVFtczFsN1JFTnkrZ1hy?=
 =?utf-8?B?WGQzUjY3ak8rSnBLOFFoTlJ1RG12R00wZHlqTWo3SVRFQ2tWUjBCald1c2N1?=
 =?utf-8?B?MnVvTVowdU51U0p3NFhZWWI0VnNjOUsrSE01VFgvL2k2WFhjWjZLeld2ZllG?=
 =?utf-8?B?TXpsaUxod2V3RUJsK3JIaVNsNHhMQWlUZkJDMW1nblgvR2JxMzJRa0pxSEVG?=
 =?utf-8?B?VFUvdEtwWGEwMmZZY2RsZUZCSVVLaTBiT2dJeVNuaERIYytCUUF2WVE0MmVt?=
 =?utf-8?B?OFVXL2grL005aGdnVnJJdENHazFrcDdLMk9VVEVacFV1RFFsdEdxSksvQmFr?=
 =?utf-8?B?N2dqcGthdU82WGt2emJTbHIyZkNITFh6U1B6LzBtc3ZJdDZpSDgxMkNpRmZW?=
 =?utf-8?B?b1ovMVcvT2E5QzFNbERmUzRqdTFRQ25MM01kTGs5U2VHY3BRazlKdlhOeUZG?=
 =?utf-8?B?VGh4TzFtNWRHaEVCZ0huc1VhNHBzSTl5QlJtVXpidlBZTlhoR05EeDdicElS?=
 =?utf-8?B?Q3Q1djd6TytSbUxYZlhyaUZPQmRLNFhiOUlpNXlHbmNERmJiNG1RU3orWlh0?=
 =?utf-8?B?bDN0QlFuanI3VDg0b1VVMU9IbTl3Ym54VGFxaHoraEx0eVNWMzllbzBoaTRz?=
 =?utf-8?B?SGc9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: cc9389bf-992d-4041-2759-08dcf267c751
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 07:04:32.1282
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YPf3aKq2gpOzinEDwjKK/EnuFZtulNNjfy3hYYNf5G0o5ynP2VIoS5U192dIS0ZHbd4SGVEDIb/L0xjO18UISL1Ci0wd97AadQkF8tdPz08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_000436_339091_8127EDB1 
X-CRM114-Status: GOOD (  16.61  )
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

On 20.10.24 6:50 PM, Adam Ford wrote:
> The Integer divder uses values of P,M, and S to determine the PLL
> rate.  Currently, the range of M was set based on a series of
> table entries where the range was limited.  Since the ref manual
> shows it is 8-bit wide, expand the range to be up to 255.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

With the typo below fixed:

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>

> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 2c8038864357..3f9578f3f0ac 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -406,16 +406,15 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
>  				continue;
>  
>  			/*
> -			 * TODO: Ref Manual doesn't state the range of _m
> -			 * so this should be further refined if possible.
> -			 * This range was set based on the original values
> -			 * in the lookup table
> +			 * The Ref manual doesn't explicitly state the range of M,
> +			 * bit it does show it as an 8-bit value, so we'll reject

                           ^ but

> +			 * any value above 255.
>  			 */
>  			tmp = (u64)fout * (_p * _s);
>  			do_div(tmp, 24 * MHZ);
> -			_m = tmp;
> -			if (_m < 0x30 || _m > 0x7b)
> +			if (tmp > 255)
>  				continue;
> +			_m = tmp;
>  
>  			/*
>  			 * Rev 2 of the Ref Manual states the


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
