Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B090AC3DA5D
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jul 2024 08:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvjv5ohor4GHMfHrT6ouaCOP0Gp2JIU0O1P4H0IJQfA=; b=DGXfN7SL1Ftiwu
	6vs1OBGw+YrlCK3ymaLazo+jR6TxghGM9crExHgdthD9L4ul5Ixx5U+4sv4qF9ChuF8Jwk2TrF9jZ
	LnSZtkRS+kzDbtme5gZ70H866hhrt/JEiw0DfvviPL4lvqFkoLyT5xOlbhOpCbq2/Ns9xaMVGG5Dc
	ZX885XyjD/qWJiOWWIdMK3HsMBM6ayoT/mdt/Eb0wGIT9mQtgyzEaoal7HPJ1gSKLDXemE0nO5Nlo
	/NUTGx5AUuCP7nbJyeg4j9RYBsuxk6+S+/a1HUilsm8jb2c3uQXultkXPkA+kX7JDcvELQSJSXf0T
	gYZ5zgM/s60kU6d7NG7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWtze-00000000MST-1Ept;
	Thu, 25 Jul 2024 08:38:34 +0000
Received: from mail-db8eur05on20725.outbound.protection.outlook.com ([2a01:111:f400:7e1a::725] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWtzZ-00000000MQD-0xS0;
	Thu, 25 Jul 2024 08:38:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QdbeIEFrpdNalv7nWHRNn9m1aXX//R0SlQi7guGhudhTrAbZDk/AHVOpVTYf2uECHe5pQ0BoywPYGZ5vYqcbyH6PmGn36HVoQKAMr03IWAbvih3flEU1/9r06j5L/x4hgKdqaMTxL32M8fcnAVRGhnUeP6LsikvUzbz8xa1R0PCFZg4VtLPKpT1q/CwLZPowlJxxiSQf/b8hXf8AM7NRKDVjzST3W5qk1EtUZo+fKs/Z1iGo+nUdgzohvdaBiGFZmuy0KF4AFie7o9voyNv8QuDCmztHACLxv8yNrQTE8KsrNgA2iH8QHCekIxO/dnsYOch+oCYGC34Sl5nF2y0Zfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NUawvQiU19X6jTankySPtlF8hcZA+HAgI39YKeDwExo=;
 b=dPWJwAuqwb0e7GTaBx/Hpp54RRO5pIgh7KNZVPPBPECCbAJnSmDso2kq5D9BsCo7XSvCkOh/m4BNIu80DYlBiYCOWDiqRiCMNSJIpA2luh9pow3DyENCI2srpW88Vtbf/1sg9f5zx5vRmTprEPYxMe9SX4pnAnGbNphB77E+V2sdsXTHHjcpvgB/9EsdtSuGFvRRTh2Nf+FC0cPQN2zldh+8ALz57y2ddIb7SLZYziI6ads/TmbOOWWCBEGjqbNZFumAp3kS6cioFteAXEVrD7Jz/YoSHzJIpQXECSJBLDXf8zn5O4ZKL7P8TY9UT8j+6MkX+FPzz1ZQkrEsFrQTAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NUawvQiU19X6jTankySPtlF8hcZA+HAgI39YKeDwExo=;
 b=EA2UGL2DufxOj/HEg761Ll6v/ezqUFFKAXsL8JYU58efQlvPwvud1AteP/oQ1m0kd4BFjR0rCmNop3uakEoCPyZQPKd5Gkrma/F0m81Yo+TG0lamTxmcMGElv54UD6WUUiMGmd4+wcIpeCfpWDnCtOpBFrEfoHN6B/ZbB+rUZRQ=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by AM7PR04MB6984.eurprd04.prod.outlook.com (2603:10a6:20b:de::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Thu, 25 Jul
 2024 08:38:17 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%4]) with mapi id 15.20.7784.017; Thu, 25 Jul 2024
 08:38:17 +0000
From: Josua Mayer <josua@solid-run.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
	<sebastian.hesselbarth@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Konstantin Porotchkin <kostap@marvell.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v3 5/6] phy: mvebu-cp110-utmi: add support for
 armada-380 utmi phys
Thread-Topic: [PATCH RFC v3 5/6] phy: mvebu-cp110-utmi: add support for
 armada-380 utmi phys
Thread-Index: AQHa2q/Vtoneh6aWQUOMDvvIJSKujrIHBqYAgAAf9gA=
Date: Thu, 25 Jul 2024 08:38:17 +0000
Message-ID: <f4835ad8-08c1-49f0-ae85-4f870ad90a8e@solid-run.com>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-5-4c16f9abdbdc@solid-run.com>
 <ZqH0KDVjCILr3A6r@matsya>
In-Reply-To: <ZqH0KDVjCILr3A6r@matsya>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|AM7PR04MB6984:EE_
x-ms-office365-filtering-correlation-id: b249aed4-d2b0-4f97-e528-08dcac852170
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Zk9JcDJYeXBrQzlnTjlYdGUvQ0dJcnFnVXdhS3NIZDJDQkIwbGx6cXRJMEkw?=
 =?utf-8?B?bjdtQS9BWEQrZVBFOGIyZUhVdGNaQStDZmZkb0VCU3BsSXZUVm1mdVYrVkV5?=
 =?utf-8?B?ZDdJU0FYOGt2RmhxTTdHRzRVOElzWWQ1bDNBdms3ZjlWQ2VlOEQ0cE0vZUJn?=
 =?utf-8?B?UllDOGg3d3poWTdRZ2poeHBHY2luVXlyREw2VmNCUnZvS3ZrazQ4S2JCd2No?=
 =?utf-8?B?amhOcVVUZHJPc2pCMzk0SVoxRHdKNkF4Y1hka2FWK0tJd1ozTlVkWjM4VHpx?=
 =?utf-8?B?TDBsQmJkQXQwMjhiZWdpM3hTZ3ZKMm51Qjk0TDdDaGJLQmtyQ3lrdWdjWnM0?=
 =?utf-8?B?Wmw1Y3R6YSsrMTVZU3dHV0l3Y3NoUmpJVkkwLzc5WXVSRG5ocUVoN0ZqQXZi?=
 =?utf-8?B?S1BrTWJLNTV4NmdWeDFBWXBNMy84VzRzUGtDV3QwcWFjVWFRVHd3ZEFHVXg4?=
 =?utf-8?B?STlRaWtRU1JReG9qLy81Y1RTQTQ0SXlCUWVoZUlod1NBSTBqRyt5UThSSmxZ?=
 =?utf-8?B?LzZ6TzY5TWJqQ1BxRjJtVFBvUFZ6VTZqUTEzOG1BaDhtVmVvblNFYkMzeVBp?=
 =?utf-8?B?Z2twU0F6eVhpT2g3Z1d5ZE1BWmNSTEY2Vzk4OU1DQlQ2SkpleThjajhkZEN5?=
 =?utf-8?B?K3VZdkJyZlFSQ2VDQjZ2aHBzUlAvbk9hVEpKZDFQYlpCMVBBQ3VHOFB6amJY?=
 =?utf-8?B?LzM2RWlwVzk3a2huam9iQTB5R09URmFMbEZVdXhoNnlGdXBGcEd1TnF2QnBa?=
 =?utf-8?B?RGROdmZIVnJmSGkwb3kwZDFnMXQ4cm1FRGtEdmJoU1NtS09keFU1S3hWSy91?=
 =?utf-8?B?K29xRXNPOHJiZjJ4enBMVlZ4V3JQN0RJemxhaDJWTzlrbDhnSGVaT1hHWjdY?=
 =?utf-8?B?YUVuVXF4NFZobVE4OEVQSWhSQ3Yvdll0dlIwZnBMc3h2cmpkNW9SZyt3OVRv?=
 =?utf-8?B?Y1RYRVdSNm0rOVE0SjRWR1pkNUwzQkJoTXJFY0k0MnMrc3g3QTR3VzdjcklO?=
 =?utf-8?B?S1haLzcrY3hCVHgwbnBhS3RXUGF3NWkwSURuWk0vajFyTkRMUzNoWUcxUE51?=
 =?utf-8?B?Tm1vbnl5ZVhDVnJBQmV5UGUwRm50dnE5eElzQmRwNzNJRVdRcFh4VmROcHJE?=
 =?utf-8?B?eE5WcjRGMXdOeWpPb0VpeFdIQkxPMm1SVm9vY2tYYVVmL3NQSEhRMHdNWjBr?=
 =?utf-8?B?TW9MS2FQa0prT21wQUhqT3lnbm1OdmdNaVJPNFVpVFhkTnFPVldLTkg4Y2Jq?=
 =?utf-8?B?TnFrU29rdXM1Q2hkUm40L1RHWUhDN1VBUGdXY3Boc0FGZmdCVlBmWGxLMUg5?=
 =?utf-8?B?eXM1VWNYUWNELzhoT0FmbWlCM3dBTnJXVlpOSFIrL3BMeFgrZjZzUzFCR080?=
 =?utf-8?B?cnBkTDdrd3FsSGxrZUFHV2x1NXFrbS9rTXBST3lXMXhMSFRHZXVzWHFZcmNF?=
 =?utf-8?B?UldBRzhud3g5enZBU2xiVWpsd2t2bTBYMU1DMmttcnZacE9NTUg1SDJWUENV?=
 =?utf-8?B?ZGZBZU95eXhBNDh2UHp1cEl0T2xXZ2NkSko2UHFLNVpMMzRNZ0pSTGVqT1Fn?=
 =?utf-8?B?TXBZZHo3Rk5ieWNSeHVyUG1UOVorMUcrdVJPTEJRU1pnZDBBK1NzZnlVWUdB?=
 =?utf-8?B?bUNJbWFjU3J6RGVMUE9YRG05NkxncTVOVGY0dCtIZ1RMdGxFRmNaZzA5cjJZ?=
 =?utf-8?B?OFlDeERmNjNFOUliVllZRVU5MGFrRnF5aVhkeGxNeTFnT080OWZSYmJ5WERW?=
 =?utf-8?B?di8yVVp1N0pGQjBWeUd0VGdJVDhPUGIwNWowQWFNeTRIaGdHNHk0cU5HTm5r?=
 =?utf-8?B?RThaWU8wWXRkaStaZlBrSTRkdFZVdktTeUFKeSsySHJCOHJ5bUlCcXlSbVpt?=
 =?utf-8?B?c01vbG1wYWxvVGY4bzFXUDlXU2ZkRENnNk11QzV3ajhFSkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eld4d0RteVczY25lek1hbWtxd2Nib2xraHVrSFRYaUlZQW52NzVCUHlnalNr?=
 =?utf-8?B?THhUTTg4MlJlaGZhcGs4MTNxWnZLNmhaNktiQ251bGZRNWowSElUS2FIaDRP?=
 =?utf-8?B?cDJMSjFFVTJVRmdhSFdQSXhjdE5iZ09xeXFzN1M3U3VmNTRIeDdCWlgyakFK?=
 =?utf-8?B?YnFPRjh4NU1VZmdqOHpMa21IZWlYdkNBTUJFck9ucy9pYmtJR0ZLQ1NONjZl?=
 =?utf-8?B?RENucGxmUEpIcEE5K00yUHlOZCtWa3pxY01rdERZZnhSKzl5VVBFbmM2MlFz?=
 =?utf-8?B?M3A4RzVPZVBuSGZhRUdabDU5OUJxWEVCS0J3SmZ0bW1nUGo4N25BNW1idTNF?=
 =?utf-8?B?cmtiV3NVYXQ3NGhXSUV0dFphbU5hVHQ4S2FiaW9ubmwzTVp0Nk5yMk5Tam9a?=
 =?utf-8?B?VHc3T2ZpaE5OWDF3SVRUcHVLQzVhazdkWFUvTVNJNzRuUEJWem5laHQzWGNN?=
 =?utf-8?B?S3VwUXA0QVY2UmNETTVYKzE3ejVONkttOEpEbXZ0V2laVGVHWWVNck9YTC9h?=
 =?utf-8?B?Qkx2djg5ZWordzZPbDEyZnRlRmNwaSt0aW5EZGR1YzNpcDBDalhDR1RLemFV?=
 =?utf-8?B?N2N6WDJyTTVZVElmeVhvbEtiV0p4Slkrb1J0SG9EaDQrMmdkcnlpdjRoWUty?=
 =?utf-8?B?R0xSdkxURC8xV2l3THZpaUFINFhnWWpTMGdXaVRsb1hoTUZrUStuYmFBQkJ2?=
 =?utf-8?B?QmJGYzFFTEwwL29JRU01eHkvd0NhSjNGY2M5WWYzNFB3OThRMWhmaElFb3I0?=
 =?utf-8?B?Sm1jR0YraVQzZVJxYW15Qy8zU012dnY0eTd5RVgxNEk0NktPR28veElMTVlS?=
 =?utf-8?B?OXB4cjA0bTV1ZmFrRGUwU3FEeEliL0phK3FtdFZBN0dRV0FPQ2xqZi9kWWMz?=
 =?utf-8?B?VkpCZVNVU0tBQ015QXFRSjRWYXZ0T0lqQndQZUJQNDBacjFsMmIxYi9iM2pE?=
 =?utf-8?B?SXEvUmUrcGY5S3lwRXJHZWdmQXYxbmdYcUJja3lOd3JxRlpJRlAvU3dNaHpx?=
 =?utf-8?B?T0xRSkVKL3N2U0RyNlBKVjVEMmZlbjRTYzE5WlVqeWtjQmZaSm1yNS94WWp4?=
 =?utf-8?B?UzFSWjNhblhjM1d6UTQrZUh4TUp0ZjhjWStkaVYzM0ZiT3hhOEpVNTBpY2ps?=
 =?utf-8?B?OTVIK1dxQ0lkVHcvSmVML2RiQ2NmMkgzcVhwS21vSzdDWVE1MG5GaGxQUmwx?=
 =?utf-8?B?cWxVNnFPS2JrdVNMbUsvSHB5MWwydFhvVmdzRjhGS3VkUVhGMTlQREl2NHBT?=
 =?utf-8?B?cHpHS1RIWHZLejduaUNzOWtzOWdHbVVLS1F4TGJJK0kyczBFY281NGJUY1h1?=
 =?utf-8?B?TGxIMEhrd1RaY3RKVEwzRHBTekw2V0pLeXRUSXdHTUp1N2tIaFJuZjF0Rmg1?=
 =?utf-8?B?ZFVzYTRBY25ybnp0NVdLbXBCVGpjZUVWTE5sYnoveUtKaXliTGFMR2ZSaFNL?=
 =?utf-8?B?WUlpdFFJU2h0Z0w4eWRQcXgvNktySVpmRDNzcWJteWFmbnhJbEdTVDMvdXFm?=
 =?utf-8?B?VEd2cE1pQzhDY3lPY1EyUEZoTHFoR1ZtUUN3SlptcG45ZVRyUWZKZXNGN0xs?=
 =?utf-8?B?Vm96YTA5V1FBRzJIY1pLam96QldSd3AxcDMvUlVLcmNrM2ljNmxqNndwN25D?=
 =?utf-8?B?Q09zSHUxTWpZVkZ3SE1KQ1ZQVE1JWjhoUFNqQkFiTWFhUEQxcnZQTksyazlR?=
 =?utf-8?B?WXlnU2RtMElITklrVDlxaGpVem5TSUVZMmdOc3Y4bWg2OHJYd2IyWWx4RkU3?=
 =?utf-8?B?bjRiT2hYT0l2WHZBMTh2VFNaODVyMnlhQ0hyeHhzNWNhWVkzZHhEMXUwUnda?=
 =?utf-8?B?aG56S1E0Vm40WnNuUVZrekhTWnQzaXhaaWJNdEtYV3dwaDF0WDJKZ3ZmbEQv?=
 =?utf-8?B?TzNKMW9QdWFnN0NkclNub05nTWNjbXlLQW5XUTVpZm1admloQlg0S0UxSEw5?=
 =?utf-8?B?Ukl2TEVUMGMybzMxMG44dmY5U3RQbmc1cC9IWGxZa2tSSXlvMlZ0NTI4bG54?=
 =?utf-8?B?YmszTVVCRnhueXBZbndZNUREa2twUDBYOUsxVnFtcDFJYlBoRk42d0I1cVk0?=
 =?utf-8?B?NGtjSnBYRitLUG9LcTdSdnRndzY4TEg0TFNGbW5oYThpNzZZaWgwNkhCN0l4?=
 =?utf-8?Q?Y8GU=3D?=
Content-ID: <4415CCC90C688D4C9A573E8C6BDB036A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b249aed4-d2b0-4f97-e528-08dcac852170
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 08:38:17.1071
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZR6tLrL902Bi4O7XGrKAMaCUZWfYcLNaVwNH+iL0n+XUTP+koZzL17NuFEL6SHu+MPeZdxGqqODQMftWBAnEUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_013829_470080_8D132AAB 
X-CRM114-Status: GOOD (  19.95  )
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

Am 25.07.24 um 08:43 schrieb Vinod Koul:
> On 20-07-24, 16:19, Josua Mayer wrote:
>> Armada 380 has similar USB-2.0 PHYs as CP-110. The differences are:
>> - register base addresses
>> - gap between port registers
>> - number of ports: 388 has three, cp110 two
>> - device-mode mux bit refers to different ports
>> - syscon register's base address (offsets identical)
>> - armada-8k uses syscon for various drivers, a38x not
>>
>> Differentiation uses of_match_data with distinct compatible strings.
>>
>> Add support for Armada 380 PHYs by partially restructuting the driver:
>> - Port register pointers are moved to the per-port private data.
>> - Add armada-38x-specific compatible string and store enum value in
>>   of_match_data for differentiation.
>> - Add support for optional regs usb-cfg and utmi-cfg, to be used instead
>>   of syscon.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> ---
>>  drivers/phy/marvell/phy-mvebu-cp110-utmi.c | 209 +++++++++++++++++++++++------
>>  1 file changed, 166 insertions(+), 43 deletions(-)
>>
>> diff --git a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
>> index 4922a5f3327d..4341923e85bc 100644
>> --- a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
>> +++ b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
>> @@ -19,7 +19,7 @@
>>  #include <linux/usb/of.h>
>>  #include <linux/usb/otg.h>
>>  
>> -#define UTMI_PHY_PORTS				2
>> +#define UTMI_PHY_PORTS				3
>>  
>>  /* CP110 UTMI register macro definetions */
>>  #define SYSCON_USB_CFG_REG			0x420
>> @@ -76,32 +76,44 @@
>>  #define PLL_LOCK_DELAY_US			10000
>>  #define PLL_LOCK_TIMEOUT_US			1000000
>>  
>> -#define PORT_REGS(p)				((p)->priv->regs + (p)->id * 0x1000)
>> +enum mvebu_cp110_utmi_type {
>> +	/* 0 is reserved to avoid clashing with NULL */
>> +	A380_UTMI = 1,
>> +	CP110_UTMI = 2,
>> +};
>> +
>> +struct mvebu_cp110_utmi_port;
> why forward declare and not move the structs instead?
Seemed like the smaller change / more readable as diff.
I can move the struct instead!
>
>>  
>>  /**
>>   * struct mvebu_cp110_utmi - PHY driver data
>>   *
>> - * @regs: PHY registers
>> + * @regs_usb: USB configuration register
>>   * @syscon: Regmap with system controller registers
>>   * @dev: device driver handle
>>   * @ops: phy ops
>> + * @ports: phy object for each port
>>   */
>>  struct mvebu_cp110_utmi {
>> -	void __iomem *regs;
>> +	void __iomem *regs_usb;
>>  	struct regmap *syscon;
>>  	struct device *dev;
>>  	const struct phy_ops *ops;
>> +	struct mvebu_cp110_utmi_port *ports[UTMI_PHY_PORTS];
>>  };
>>  
>>  /**
>>   * struct mvebu_cp110_utmi_port - PHY port data
>>   *
>> + * @regs: PHY registers
>> + * @regs_cfg: PHY config register
>>   * @priv: PHY driver data
>>   * @id: PHY port ID
>>   * @dr_mode: PHY connection: USB_DR_MODE_HOST or USB_DR_MODE_PERIPHERAL
>>   */
>>  struct mvebu_cp110_utmi_port {
>>  	struct mvebu_cp110_utmi *priv;
>> +	void __iomem *regs;
>> +	void __iomem *regs_cfg;
>>  	u32 id;
>>  	enum usb_dr_mode dr_mode;
>>  };
>> @@ -118,47 +130,47 @@ static void mvebu_cp110_utmi_port_setup(struct mvebu_cp110_utmi_port *port)
>>  	 * The crystal used for all platform boards is now 25MHz.
>>  	 * See the functional specification for details.
>>  	 */
>> -	reg = readl(PORT_REGS(port) + UTMI_PLL_CTRL_REG);
>> +	reg = readl(port->regs + UTMI_PLL_CTRL_REG);
> why not handle this as a preparatory patch for this? Helps in review

Will do!

>
>>  	reg &= ~(PLL_REFDIV_MASK | PLL_FBDIV_MASK | PLL_SEL_LPFR_MASK);
>>  	reg |= (PLL_REFDIV_VAL << PLL_REFDIV_OFFSET) |
>>  	       (PLL_FBDIV_VAL << PLL_FBDIV_OFFSET);
>> -	writel(reg, PORT_REGS(port) + UTMI_PLL_CTRL_REG);
>> +	writel(reg, port->regs + UTMI_PLL_CTRL_REG);
>>  
>>  	/* Impedance Calibration Threshold Setting */
>> -	reg = readl(PORT_REGS(port) + UTMI_CAL_CTRL_REG);
>> +	reg = readl(port->regs + UTMI_CAL_CTRL_REG);
>>  	reg &= ~IMPCAL_VTH_MASK;
>>  	reg |= IMPCAL_VTH_VAL << IMPCAL_VTH_OFFSET;
>> -	writel(reg, PORT_REGS(port) + UTMI_CAL_CTRL_REG);
>> +	writel(reg, port->regs + UTMI_CAL_CTRL_REG);
>>  
>>  	/* Set LS TX driver strength coarse control */
>> -	reg = readl(PORT_REGS(port) + UTMI_TX_CH_CTRL_REG);
>> +	reg = readl(port->regs + UTMI_TX_CH_CTRL_REG);
>>  	reg &= ~TX_AMP_MASK;
>>  	reg |= TX_AMP_VAL << TX_AMP_OFFSET;
>> -	writel(reg, PORT_REGS(port) + UTMI_TX_CH_CTRL_REG);
>> +	writel(reg, port->regs + UTMI_TX_CH_CTRL_REG);
>>  
>>  	/* Disable SQ and enable analog squelch detect */
>> -	reg = readl(PORT_REGS(port) + UTMI_RX_CH_CTRL0_REG);
>> +	reg = readl(port->regs + UTMI_RX_CH_CTRL0_REG);
>>  	reg &= ~SQ_DET_EN;
>>  	reg |= SQ_ANA_DTC_SEL;
>> -	writel(reg, PORT_REGS(port) + UTMI_RX_CH_CTRL0_REG);
>> +	writel(reg, port->regs + UTMI_RX_CH_CTRL0_REG);
>>  
>>  	/*
>>  	 * Set External squelch calibration number and
>>  	 * enable the External squelch calibration
>>  	 */
>> -	reg = readl(PORT_REGS(port) + UTMI_RX_CH_CTRL1_REG);
>> +	reg = readl(port->regs + UTMI_RX_CH_CTRL1_REG);
>>  	reg &= ~SQ_AMP_CAL_MASK;
>>  	reg |= (SQ_AMP_CAL_VAL << SQ_AMP_CAL_OFFSET) | SQ_AMP_CAL_EN;
>> -	writel(reg, PORT_REGS(port) + UTMI_RX_CH_CTRL1_REG);
>> +	writel(reg, port->regs + UTMI_RX_CH_CTRL1_REG);
>>  
>>  	/*
>>  	 * Set Control VDAT Reference Voltage - 0.325V and
>>  	 * Control VSRC Reference Voltage - 0.6V
>>  	 */
>> -	reg = readl(PORT_REGS(port) + UTMI_CHGDTC_CTRL_REG);
>> +	reg = readl(port->regs + UTMI_CHGDTC_CTRL_REG);
>>  	reg &= ~(VDAT_MASK | VSRC_MASK);
>>  	reg |= (VDAT_VAL << VDAT_OFFSET) | (VSRC_VAL << VSRC_OFFSET);
>> -	writel(reg, PORT_REGS(port) + UTMI_CHGDTC_CTRL_REG);
>> +	writel(reg, port->regs + UTMI_CHGDTC_CTRL_REG);
>>  }
>>  
>>  static int mvebu_cp110_utmi_phy_power_off(struct phy *phy)
>> @@ -166,22 +178,38 @@ static int mvebu_cp110_utmi_phy_power_off(struct phy *phy)
>>  	struct mvebu_cp110_utmi_port *port = phy_get_drvdata(phy);
>>  	struct mvebu_cp110_utmi *utmi = port->priv;
>>  	int i;
>> +	int reg;
>>  
>>  	/* Power down UTMI PHY port */
>> -	regmap_clear_bits(utmi->syscon, SYSCON_UTMI_CFG_REG(port->id),
>> -			  UTMI_PHY_CFG_PU_MASK);
>> +	if (!IS_ERR(port->regs_cfg)) {
>> +		reg = readl(port->regs_cfg);
>> +		reg &= ~(UTMI_PHY_CFG_PU_MASK);
>> +		writel(reg, port->regs_cfg);
>> +	} else
>> +		regmap_clear_bits(utmi->syscon, SYSCON_UTMI_CFG_REG(port->id),
>> +				  UTMI_PHY_CFG_PU_MASK);
> why are we doing both raw register read/write and regmap ops... that
> does not sound correct to me
Indeed.

The next question would be why for Armada 8K / CP110 syscon was chosen.
From what I could find the registers accessed by utmi driver
are not accessed by other drivers.

I am adding raw register access as an alternative,

to keep supporting old device-tree specifying syscon handle.

I considered writing helper functions for the if-not-error-syscon-else-raw,
but between set_bits, clear_bits, global and per-port regs
would have ended up with too many.

>
>>  
>>  	for (i = 0; i < UTMI_PHY_PORTS; i++) {
>> -		int test = regmap_test_bits(utmi->syscon,
>> -					    SYSCON_UTMI_CFG_REG(i),
>> -					    UTMI_PHY_CFG_PU_MASK);
>> +		if (!utmi->ports[i])
>> +			continue;
>> +
>> +		if (!IS_ERR(utmi->ports[i]->regs_cfg))
>> +			reg = readl(utmi->ports[i]->regs_cfg);
>> +		else
>> +			regmap_read(utmi->syscon, SYSCON_UTMI_CFG_REG(i), &reg);
>> +		int test = reg & UTMI_PHY_CFG_PU_MASK;
>>  		/* skip PLL shutdown if there are active UTMI PHY ports */
>>  		if (test != 0)
>>  			return 0;
>>  	}
>>  
>>  	/* PLL Power down if all UTMI PHYs are down */
>> -	regmap_clear_bits(utmi->syscon, SYSCON_USB_CFG_REG, USB_CFG_PLL_MASK);
>> +	if (!IS_ERR(utmi->regs_usb)) {
>> +		reg = readl(utmi->regs_usb);
>> +		reg &= ~(USB_CFG_PLL_MASK);
>> +		writel(reg, utmi->regs_usb);
>> +	} else
>> +		regmap_clear_bits(utmi->syscon, SYSCON_USB_CFG_REG, USB_CFG_PLL_MASK);
>>  
>>  	return 0;
>>  }
>> @@ -191,8 +219,15 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	struct mvebu_cp110_utmi_port *port = phy_get_drvdata(phy);
>>  	struct mvebu_cp110_utmi *utmi = port->priv;
>>  	struct device *dev = &phy->dev;
>> +	const void *match;
>> +	enum mvebu_cp110_utmi_type type;
>>  	int ret;
>>  	u32 reg;
>> +	u32 sel;
>> +
>> +	match = device_get_match_data(utmi->dev);
>> +	if (match)
>> +		type = (enum mvebu_cp110_utmi_type)(uintptr_t)match;
>>  
>>  	/* It is necessary to power off UTMI before configuration */
>>  	ret = mvebu_cp110_utmi_phy_power_off(phy);
>> @@ -208,16 +243,45 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	 * to UTMI0 or to UTMI1 PHY port, but not to both.
>>  	 */
>>  	if (port->dr_mode == USB_DR_MODE_PERIPHERAL) {
>> -		regmap_update_bits(utmi->syscon, SYSCON_USB_CFG_REG,
>> -				   USB_CFG_DEVICE_EN_MASK | USB_CFG_DEVICE_MUX_MASK,
>> -				   USB_CFG_DEVICE_EN_MASK |
>> -				   (port->id << USB_CFG_DEVICE_MUX_OFFSET));
>> +		switch (type) {
>> +		case A380_UTMI:
>> +			/*
>> +			 * A380 muxes between ports 0/2:
>> +			 * - 0: Device mode on Port 2
>> +			 * - 1: Device mode on Port 0
>> +			 */
>> +			if (port->id == 1)
>> +				return -EINVAL;
>> +			sel = !!(port->id == 0);
>> +			break;
>> +		case CP110_UTMI:
>> +			/*
>> +			 * CP110 muxes between ports 0/1:
>> +			 * - 0: Device mode on Port 0
>> +			 * - 1: Device mode on Port 1
>> +			 */
>> +			sel = port->id;
>> +			break;
>> +		default:
>> +			return -EINVAL;
>> +		}
>> +		if (!IS_ERR(utmi->regs_usb)) {
>> +			reg = readl(utmi->regs_usb);
>> +			reg &= ~(USB_CFG_DEVICE_EN_MASK | USB_CFG_DEVICE_MUX_MASK);
>> +			reg |= USB_CFG_DEVICE_EN_MASK;
>> +			reg |= (sel << USB_CFG_DEVICE_MUX_OFFSET);
>> +			writel(reg, utmi->regs_usb);
>> +		} else
>> +			regmap_update_bits(utmi->syscon, SYSCON_USB_CFG_REG,
>> +					   USB_CFG_DEVICE_EN_MASK | USB_CFG_DEVICE_MUX_MASK,
>> +					   USB_CFG_DEVICE_EN_MASK |
>> +					   (sel << USB_CFG_DEVICE_MUX_OFFSET));
>>  	}
>>  
>>  	/* Set Test suspendm mode and enable Test UTMI select */
>> -	reg = readl(PORT_REGS(port) + UTMI_CTRL_STATUS0_REG);
>> +	reg = readl(port->regs + UTMI_CTRL_STATUS0_REG);
>>  	reg |= SUSPENDM | TEST_SEL;
>> -	writel(reg, PORT_REGS(port) + UTMI_CTRL_STATUS0_REG);
>> +	writel(reg, port->regs + UTMI_CTRL_STATUS0_REG);
>>  
>>  	/* Wait for UTMI power down */
>>  	mdelay(1);
>> @@ -226,16 +290,21 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	mvebu_cp110_utmi_port_setup(port);
>>  
>>  	/* Power UP UTMI PHY */
>> -	regmap_set_bits(utmi->syscon, SYSCON_UTMI_CFG_REG(port->id),
>> -			UTMI_PHY_CFG_PU_MASK);
>> +	if (!IS_ERR(port->regs_cfg)) {
>> +		reg = readl(port->regs_cfg);
>> +		reg |= UTMI_PHY_CFG_PU_MASK;
>> +		writel(reg, port->regs_cfg);
>> +	} else
>> +		regmap_set_bits(utmi->syscon, SYSCON_UTMI_CFG_REG(port->id),
>> +				UTMI_PHY_CFG_PU_MASK);
>>  
>>  	/* Disable Test UTMI select */
>> -	reg = readl(PORT_REGS(port) + UTMI_CTRL_STATUS0_REG);
>> +	reg = readl(port->regs + UTMI_CTRL_STATUS0_REG);
>>  	reg &= ~TEST_SEL;
>> -	writel(reg, PORT_REGS(port) + UTMI_CTRL_STATUS0_REG);
>> +	writel(reg, port->regs + UTMI_CTRL_STATUS0_REG);
>>  
>>  	/* Wait for impedance calibration */
>> -	ret = readl_poll_timeout(PORT_REGS(port) + UTMI_CAL_CTRL_REG, reg,
>> +	ret = readl_poll_timeout(port->regs + UTMI_CAL_CTRL_REG, reg,
>>  				 reg & IMPCAL_DONE,
>>  				 PLL_LOCK_DELAY_US, PLL_LOCK_TIMEOUT_US);
>>  	if (ret) {
>> @@ -244,7 +313,7 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	}
>>  
>>  	/* Wait for PLL calibration */
>> -	ret = readl_poll_timeout(PORT_REGS(port) + UTMI_CAL_CTRL_REG, reg,
>> +	ret = readl_poll_timeout(port->regs + UTMI_CAL_CTRL_REG, reg,
>>  				 reg & PLLCAL_DONE,
>>  				 PLL_LOCK_DELAY_US, PLL_LOCK_TIMEOUT_US);
>>  	if (ret) {
>> @@ -253,7 +322,7 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	}
>>  
>>  	/* Wait for PLL ready */
>> -	ret = readl_poll_timeout(PORT_REGS(port) + UTMI_PLL_CTRL_REG, reg,
>> +	ret = readl_poll_timeout(port->regs + UTMI_PLL_CTRL_REG, reg,
>>  				 reg & PLL_RDY,
>>  				 PLL_LOCK_DELAY_US, PLL_LOCK_TIMEOUT_US);
>>  	if (ret) {
>> @@ -262,7 +331,12 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	}
>>  
>>  	/* PLL Power up */
>> -	regmap_set_bits(utmi->syscon, SYSCON_USB_CFG_REG, USB_CFG_PLL_MASK);
>> +	if (!IS_ERR(utmi->regs_usb)) {
>> +		reg = readl(utmi->regs_usb);
>> +		reg |= USB_CFG_PLL_MASK;
>> +		writel(reg, utmi->regs_usb);
>> +	} else
>> +		regmap_set_bits(utmi->syscon, SYSCON_USB_CFG_REG, USB_CFG_PLL_MASK);
>>  
>>  	return 0;
>>  }
>> @@ -274,7 +348,8 @@ static const struct phy_ops mvebu_cp110_utmi_phy_ops = {
>>  };
>>  
>>  static const struct of_device_id mvebu_cp110_utmi_of_match[] = {
>> -	{ .compatible = "marvell,cp110-utmi-phy" },
>> +	{ .compatible = "marvell,a38x-utmi-phy", .data = (void *)A380_UTMI },
>> +	{ .compatible = "marvell,cp110-utmi-phy", .data = (void *)CP110_UTMI },
> Cast to void * are not required to be done
Ack.
>
>>  	{},
>>  };
>>  MODULE_DEVICE_TABLE(of, mvebu_cp110_utmi_of_match);
>> @@ -285,6 +360,10 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>>  	struct mvebu_cp110_utmi *utmi;
>>  	struct phy_provider *provider;
>>  	struct device_node *child;
>> +	void __iomem *regs_utmi;
>> +	void __iomem *regs_utmi_cfg;
>> +	const void *match;
>> +	enum mvebu_cp110_utmi_type type;
>>  	u32 usb_devices = 0;
>>  
>>  	utmi = devm_kzalloc(dev, sizeof(*utmi), GFP_KERNEL);
>> @@ -293,18 +372,44 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>>  
>>  	utmi->dev = dev;
>>  
>> +	match = device_get_match_data(dev);
>> +	if (match)
>> +		type = (enum mvebu_cp110_utmi_type)(uintptr_t)match;
>> +
>> +	/* Get UTMI memory region */
>> +	regs_utmi = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(regs_utmi)) {
>> +		dev_err(dev, "Failed to map utmi regs\n");
>> +		return PTR_ERR(regs_utmi);
>> +	}
>> +
>> +	/* Get usb config region */
>> +	utmi->regs_usb = devm_platform_ioremap_resource_byname(pdev, "usb-cfg");
>> +	if (IS_ERR(utmi->regs_usb) && PTR_ERR(utmi->regs_usb) != -EINVAL) {
>> +		dev_err(dev, "Failed to map usb config regs\n");
>> +		return PTR_ERR(utmi->regs_usb);
>> +	}
>> +
>> +	/* Get utmi config region */
>> +	regs_utmi_cfg = devm_platform_ioremap_resource_byname(pdev, "utmi-cfg");
>> +	if (IS_ERR(regs_utmi_cfg) && PTR_ERR(regs_utmi_cfg) != -EINVAL) {
>> +		dev_err(dev, "Failed to map usb config regs\n");
>> +		return PTR_ERR(regs_utmi_cfg);
>> +	}
>> +
>>  	/* Get system controller region */
>>  	utmi->syscon = syscon_regmap_lookup_by_phandle(dev->of_node,
>>  						       "marvell,system-controller");
>> -	if (IS_ERR(utmi->syscon)) {
>> -		dev_err(dev, "Missing UTMI system controller\n");
>> +	if (IS_ERR(utmi->syscon) && PTR_ERR(utmi->syscon) != -ENODEV) {
>> +		dev_err(dev, "Failed to get system controller\n");
>>  		return PTR_ERR(utmi->syscon);
>>  	}
>>  
>> -	/* Get UTMI memory region */
>> -	utmi->regs = devm_platform_ioremap_resource(pdev, 0);
>> -	if (IS_ERR(utmi->regs))
>> -		return PTR_ERR(utmi->regs);
>> +	if (IS_ERR(utmi->syscon) &&
>> +	    (IS_ERR(utmi->regs_usb) || IS_ERR(regs_utmi_cfg))) {
>> +		dev_err(dev, "Missing utmi system controller or config regs");
>> +		return -EINVAL;
>> +	}
>>  
>>  	for_each_available_child_of_node(dev->of_node, child) {
>>  		struct mvebu_cp110_utmi_port *port;
>> @@ -326,6 +431,24 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>>  			return -ENOMEM;
>>  		}
>>  
>> +		utmi->ports[port_id] = port;
>> +
>> +		/* Get port memory region */
>> +		switch (type) {
>> +		case A380_UTMI:
>> +			port->regs = regs_utmi + port_id * 0x1000;
>> +			break;
>> +		case CP110_UTMI:
>> +			port->regs = regs_utmi + port_id * 0x2000;
>> +			break;
>> +		default:
>> +			return -EINVAL;
>> +		}
>> +
>> +		/* assign utmi cfg reg */
>> +		if (!IS_ERR(regs_utmi_cfg))
>> +			port->regs_cfg = regs_utmi_cfg + port_id * 4;
>> +
>>  		port->dr_mode = of_usb_get_dr_mode_by_phy(child, -1);
>>  		if ((port->dr_mode != USB_DR_MODE_HOST) &&
>>  		    (port->dr_mode != USB_DR_MODE_PERIPHERAL)) {
>>
>> -- 
>> 2.43.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
