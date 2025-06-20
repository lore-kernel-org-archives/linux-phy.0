Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C18FC71155
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 09:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koOrLUhdSIImPx3iSex/a0Mpjrah87+jtzY4lml5/eA=; b=0tQi5XgmYlrMvI
	39aTOJCdYZejwhyh8E8mqctncGVho2/i9G989HnLxHjERQF0hrUWewqgBTyEU9FuRkr9fpIeOCdLZ
	bLKW98OALuSPgITJVGNDcJ1vjCp2eecC4NCeHX16uV5nYaKBT1u4PYSy/fhkL+F+qSZgwqIsiyjJL
	n+PVeGYRmM8HYa1bR3Wim0diFT8lAZIRntKYgjjloz5HBogEC4A1SDu6lssFypwwz3U7ig9LoADR7
	xU6uMYZhEphATVxR/UZUN21/eaq5ZnkutPfXBffHdS4MTIjZMBJd02MHRPTxtKGqtA4h+GB5umXHl
	BBHts66V4NJKRjbVse5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXvP-0000000FAqZ-1GQM;
	Fri, 20 Jun 2025 09:20:43 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXEF-0000000F4wT-1xkK;
	Fri, 20 Jun 2025 08:36:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T289ls+kpaoBoWpyCiKnV+kn8UAUEWDFY0qLx9ItC728Yet7zkTroudI4pNwVCAXA4BCJQFDiAfQgRsVOk57hRBzEC1wq7ImfJWJxC/ZXoaKHhew/KQGMCK2+wVtufZgUO/fKZeqgDPhg1f1lq4paOuXVTmAxxG44X1p0DJ79WAZR45u9y8ESvfQl84K1EScOGuJXGbqUrNI9dIYjE5EAXNu2dXB/dH28FD4H3yKhABH6X3d3u2pP8xIeqEaFpLZemitCW/+jt4NIHmeMIY48QTPdXkOCaqlh7YxLOlwJ2rcAg7ZuITJwhWheXVNY4J+zaRehlRJ8YnTkhE4NKYseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LBNLhT4dMfnPRBJuNp+KNEIwER3YNqVwHNIG0+aY3v0=;
 b=ygWPfUWwNxkJcGx2poCTJVEFsxFW4bkrbrkmK+nMT3l+n6t4GjaXFZVmEA8GAEoVOFCyP6FAOskugyvdNhZmCyjBYpmw2aAUaVUTQLhZ0qSGGyNREVrbJSqgLiZUnlxXdio2YDW0818PNYTtSp5Z29X6fwy2taodjTvMlMBfkDfMRmDVvhOFfEoniYtOtmoVfPqIGfHlEQv/5BRO51DHQixrmya3bOCOvBgyqEY/2qbxw4V7LtWFXyfxmViIzvGAyWFpQ4i2Nxn3l8Fa2A2CAKRYefV7XfcrkBfuSBya75WtvuwCUMkz1htWGCtITL3vHGAJN2zxouZ7R70+XBLDeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LBNLhT4dMfnPRBJuNp+KNEIwER3YNqVwHNIG0+aY3v0=;
 b=ir/gwl1Si42Mx5SnPfT2w5kqhLmrdQOe0jakKqNqzU3pPpPHwm71n4EevIP1Gds+QgMECy4xM5BnDJqxXPu1va5ozYMY+mhhWIMq3sbuVqGNKTbsZbQ4VecW6Y+WuwYaaLj8bq6CGUdT01xaxrDTj2plT4ZIvTRCAAu/XdPQTjr1m2DJFWiE+AlVEOKSOPhY1K4txsQrE2G6SkzjecEv+IUYKWeOwlA8zaaz5EVdBw7ZclwhvOENhXZNxmnjVvL6TX6pDRKzYFoiSuJPuSiPR4CCpf+uXkw5q+knCHbruw9n3HsRsIYPXBdmGMaYzizA5MR0gAnUXKwslv8+wVCbDg==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by JH0PR06MB7083.apcprd06.prod.outlook.com (2603:1096:990:6e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Fri, 20 Jun
 2025 08:36:02 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8835.027; Fri, 20 Jun 2025
 08:36:02 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>, "mani@kernel.org"
	<mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"joel@jms.id.au" <joel@jms.id.au>, "andrew@codeconstruct.com.au"
	<andrew@codeconstruct.com.au>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>, "linus.walleij@linaro.org"
	<linus.walleij@linaro.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>
CC: "elbadrym@google.com" <elbadrym@google.com>, "romlem@google.com"
	<romlem@google.com>, "anhphan@google.com" <anhphan@google.com>,
	"wak@google.com" <wak@google.com>, "yuxiaozhang@google.com"
	<yuxiaozhang@google.com>, BMC-SW <BMC-SW@aspeedtech.com>
Subject: [PATCH 3/7] dt-bindings: pci: Add document for ASPEED PCIe RC
Thread-Topic: [PATCH 3/7] dt-bindings: pci: Add document for ASPEED PCIe RC
Thread-Index: AQHb3BN5FUCyyspBIEeldRXN3BMx4bQA2QgAgArqroA=
Date: Fri, 20 Jun 2025 08:36:02 +0000
Message-ID: <SEYPR06MB51349D63AFB58B376B1E31A79D7CA@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
 <20250613033001.3153637-4-jacky_chou@aspeedtech.com>
 <b387a2ed-af47-45a9-871e-d43a66e41f21@kernel.org>
In-Reply-To: <b387a2ed-af47-45a9-871e-d43a66e41f21@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|JH0PR06MB7083:EE_
x-ms-office365-filtering-correlation-id: e1e70690-d9ed-4b0a-1b39-08ddafd57d41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|921020|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b1FNWEx4blVFOE1wNjBHRWFGRnBVZG1xMmMxWkRQc2kxazRKSjlxcjhvclB6?=
 =?utf-8?B?V3ptbjhhSlVqckpXN2JublhlUzhNZjl2WlpldUpvN1Y1djIvOGRDUDZGdHVX?=
 =?utf-8?B?dE8xcVRFdWpYb1l3Nmoyc1VXektCbzJmQ0RtYjBJMVplcm1UVUJNQW5NNWxz?=
 =?utf-8?B?eFJiVzdzOFBiRW50MEo1VVNJUWRXTjdtRlhJRERnSVBPcjNqZU9lZU1ITE80?=
 =?utf-8?B?WUE5L0RhS3ZOT0lYNlFnam9hOCtyU0tsL1hjKzlwajdNRkRNV1ZYNU5LSTJr?=
 =?utf-8?B?Z2pPckZ3THVDT0JvRTdqMHlncjh6cGRML3VCWTJOK1NmR284MGgvd0ZsQ3Jx?=
 =?utf-8?B?Z083ZFdRNXBodzh3bGpBVnlSQTYydTFza3Z6bVlJakQ1bFJ5U3IrMDRNSS9I?=
 =?utf-8?B?V0w2WnB2Q1NzbmRHQWJhWDQ2SmpIME1OM2NnVHpqcGx5SXFMRm5Lamp2SnVM?=
 =?utf-8?B?MWRXMCt6VzQ1bmtJMXJnQjBicFZFcmpzL09JUEZaZzJMeDZPQ1hmcUdFK1hV?=
 =?utf-8?B?c2pVTWVGNmNlRDhZWnpsUzNmc0JzWVdUUVUzN2tYN2xnTms4WC9OWklLL3ZZ?=
 =?utf-8?B?aEU5MnFJUVpxWldhZ3hTcUFMbGQ1Si9HN0RlQmpNSG1jeWNUd3V4OHNPZ2Q3?=
 =?utf-8?B?UjFGNlpWMm94WDMyb0JLVVpoN3lyUko4eVI3YWR3bU5SL1FLdis3N3dHVmFW?=
 =?utf-8?B?RURxaU0xNTgrc2VyRVJkdXJHenpZMFl4dlpGZGNYTEJ1Mk5RSUVrS05tWFQv?=
 =?utf-8?B?TXlEdWN1a3IxSzhvRVlwVzlmKzRaV2xiWWVzV2Y1ZFliNFkwM3Z4bzcwQ2l5?=
 =?utf-8?B?ZXBCTmZFbGYzYURzNHp3ODhzV2szSTZsRHJtQ0lQU1o3dHhCSjFkVk9ZRWp0?=
 =?utf-8?B?UEV6clJNcjZzV3NzVjZma3RUNFgwOHY4VmhwMmZwcVhuZnFLVDg3UEVEaHVw?=
 =?utf-8?B?QllvcmUrcjNVbENiYlM3YjE0WW5jV2VGUjl2clpOWUFNOXJabkRLSGNpcFFS?=
 =?utf-8?B?QXpVNW5hY0pIOEZETGl6YURGRWZ4MFFFWUlaN1o3MUlOVkp4RWVueFZEeFdM?=
 =?utf-8?B?eWllY1FackcyZHVRRjBUZFJHa0VvMXA5VXFKK2NSSzF0K1ZmQ0lLb1phdUlN?=
 =?utf-8?B?SzJORngyTk90WVdEdFVnYU1yMWE1K01RSFFpMm1wQ1ZkU0pBaXpKYWRNeE1o?=
 =?utf-8?B?cHVFOWc1c3pxMEhjZ3JwR1g2dU5SVjdBcG40WVZ6Q2JKUStaR3k4ZFNER2U3?=
 =?utf-8?B?N3VqU0ZVNEJidXJWN01UdCtxNmtNamhET0RhbzFTbVVySFdrbmlZM2l3KzFX?=
 =?utf-8?B?cVlqaVloVVJpSmk3dVcvUEI5cnplT0tRb3VNT1F2bERFd3VhbEhVOWVzOHFG?=
 =?utf-8?B?MHJVZFAybTJDdlF0TUg0M1pQWERtYWhYYkN5OWdWRklxME9DaXJxdWMxVjdM?=
 =?utf-8?B?aW1IL0pUT0ZWMG5kcEJ5c3hkUTdLbmlFaitUVmZ2c25KN3dabDhuZDhUZXlM?=
 =?utf-8?B?WndObHhDSWk5bmFEU2tiTVVJeHRYeVVQNVpRK1pIVC9Va1VhVE5oVUw3Smhj?=
 =?utf-8?B?amFiQysvdnI2TjllSGVCWWY4NTFHL2Evc0dRR1ZiY3dpc1dyMnRQTXNLNVZw?=
 =?utf-8?B?UXJTV2F1QkN2WE91OG5TOXhVY3hzZDd6UXJiY0llNXBCcHhrUUg4KzlTaU5Z?=
 =?utf-8?B?YmpKK2k2bXJMUm1jU3ZBbnJNdXIzWVhjUFRkbWI0bjluNWs2bEdDaGdKZjNw?=
 =?utf-8?B?UVRNM2gvZkZKZnJrSmtsN1BYVDRTL3lFVkU5eThleGpHOWFRMVdqZ3dyZkow?=
 =?utf-8?B?dXY1RWJyRjV3cnZ2Uk5vVEtJUUFvRGFEVVlmb2VlRUFsRnNuRC9UUGRYMlJz?=
 =?utf-8?B?Y2hnY21NY2djUVRSVHgzSHRxU3AvVjRKdEtFYnYwZ0pSQVpmOEdRV2lKaEdD?=
 =?utf-8?Q?RTjBYZPbGwCusKnE24dQysGEEjKfdmeR?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkRMU0ZxOFp6MkdrbzUyc2dlT2NzdHQ0S01Pa2gvWFdMSUkzRmhabGpTWnha?=
 =?utf-8?B?K0xEaE5uOWh6RHVRc0xnT2hrS2l1VHdpWU9rZlNMVkVkaVkwNFB0NVE2KzJL?=
 =?utf-8?B?YmxwT0IzbGZYMXA5R1NoOUNyZUpIajBrZ3pMcE40SnBqS3ppWXIxNWUxaFVX?=
 =?utf-8?B?R2pmREN0R3QxTVlEZFNrbndqOHpvMmxjYVEyWUlLa2UxK25YMjJQbXB5ajBX?=
 =?utf-8?B?THkxWUJNSy9OZ1pxbEFHWGFXOTZJNDh6RlJuZlF3RGlNRHBqRmVyR1pxVnFx?=
 =?utf-8?B?OTJMN0V5Yk85WkhFMzBrNkRvNmNGc2VMbDNLWE1UT3F6RkhNM1Nkc0x5S0Zq?=
 =?utf-8?B?Qkpja1d1bjZnamhyK1kvdk5VcW5KdDA5UFFJamplUjh0UW1yNnluZFRLUUpa?=
 =?utf-8?B?STNVYUMwcVIwY1VGKy9oMUZhYmVJUVRqWkovZ2ZkOEdpZXk5WVQwNUtLdlcr?=
 =?utf-8?B?OXFib0VZQWFWV2Zxa0JIS1R3U1V0QVk5em00R0pXZSsxdjRmVzdETzZDWWYv?=
 =?utf-8?B?UkZwRjBQYll2R0NrM3lJMm9yK0pYb0c3c0U1eWIrZ1o5Zi9oay9LU29sS2xt?=
 =?utf-8?B?VUVCcXBZdlBBU3ZaVGJVbnVnUXNpaUtzVGk2a0NlbGY0MW5EcW1GcUhTK0RO?=
 =?utf-8?B?MnQ5NlQ0VUZCOFB0RE9QbWttTzMxTVdBMHhzcG5YS3pTL3JKcG5talFyTjc4?=
 =?utf-8?B?bXl2cyttcmJ1ZEc0aFl2U2pESGFIcTdjSU1EUmdkb1RjamFKeDFPS1lRYlRD?=
 =?utf-8?B?YW5pL2FMR2tWN3R0VEhtTVBSdE14eUhySUh1L21UdnV5M05LbEY2UTM0RWJD?=
 =?utf-8?B?OEQ1QTB0NCs4ZmUydUZ6U3U4VU9OYko1RDZ0RXRHSGtKNjdFTWxKV3p0VGZQ?=
 =?utf-8?B?cWtXTnFuQ0xFcG02TitGM0NETHZDZSttYzh6SUhINThhVDFFQ0Z5a0hPMVhy?=
 =?utf-8?B?REt6QVUwbHdsWkJjdEhmaGVrMWE3UHFPUHl6MVNSaFltZmNPNHhyaXZVOWFh?=
 =?utf-8?B?WTd5Nkg3WEZqeTlGRFN4SHNiOWM0dlAvc3YyVFlmK1NENXYwem9ycnJJQ2N6?=
 =?utf-8?B?WXNROEgydjdnYk5ZYkROUGZ2R1ZzVnBoekJaOWdPRHJtNi9nY3FRV3A4TzBH?=
 =?utf-8?B?ZlVBeVhEcUZmbmlNdWRabTFEUURQQjJEd3pYbTUxS1ovQUp6Ynp5ZHg2NVdP?=
 =?utf-8?B?ZGFoSWx1djBVYzRTNnZWUHNxRUhtZWFGUEQ5ZW4zb2VIZC9SNldWRThMWWFw?=
 =?utf-8?B?dkRYUllrUkdYT3ZCd1h0V2VESVRZWUpnM1VoU0dCSThWempPTXg5eWlxbFlp?=
 =?utf-8?B?bEl6SElUNzdNNmxzcnB4UldMNWxTVzVhZHgwVjRQc3p3Z1lndzg5d2NvT1J5?=
 =?utf-8?B?emhCcmdFOFM5WHk1VHovMCtvSzlWMDZxV1JreWcvUHdJMnBhOVdQQmgyTXJk?=
 =?utf-8?B?dC9sM0dHM2xNVDFuQjY2NW9GZTNYUVdpWUQwY29iRnY5QWtOMzhaMWZkenNr?=
 =?utf-8?B?TDNveUp3NHdEVGY2VnlBbk9TcXhuaVZ2Ulo4MFZ5U01VZFNZbkE0RWREZ2dG?=
 =?utf-8?B?TnczOTVMODEzL0M4bTdacnRUWENwbmxPUWpLdUp3ODViSkc4V2YzUmVQRENI?=
 =?utf-8?B?L0dIR3RFMDBRMlVYc1pKU0trSXBZQU1CamlFN0NkeklLc3VZdGpxWjY0UW1C?=
 =?utf-8?B?eUF6V0hyOHdsZmZUTG1oQ1ZlbGhiSmZhUDlNbUhURUpScVFrY1FzUmxQV29G?=
 =?utf-8?B?eG9rb09LM2lJUUhYb0ZIMjVmVHk4UXZORkw4b0tDVnJGVWhyME9LTjNITWJT?=
 =?utf-8?B?Rm1YWE0vZ3pNc0JYWlhNZ3prTklxWUVlODJCcTgzalBTOUZXd3ROdUk2NGxB?=
 =?utf-8?B?LzdwVG1qWlR1NjhXcHMyWnc0Y2Ixd0FtTFoycGtIU3JGNW9JUXRnck5SZmI4?=
 =?utf-8?B?R1lOaWpMcDZPcHd0eW1JKzB3ajQ4dVNVOTVSTDczdkJoWHZyd245Q255Z3NI?=
 =?utf-8?B?djhLY0hPZlFmcVpLc25qSnRHaE5QdllxVm5kbmhnZ3V4M1dRRnU2UUVocGV3?=
 =?utf-8?B?SnBnajZLd1V3ekNNSHVuT3YrdGtrQ3lDV2krMHN3M2lkd1NUMkdiZWNNdVJh?=
 =?utf-8?B?ZGRxeUQwY1VTeHliYnRaNFo3YXJld3JNRFc1TTF6V2Ixd2x2MFF4b0dFK0Vi?=
 =?utf-8?B?U1E9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1e70690-d9ed-4b0a-1b39-08ddafd57d41
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 08:36:02.0436
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /wO0ft+Yn+u+gEa+G1k6eJx9zqv8zXtrLfEdt1bYoz56JHy6rVwpiwfgvAQ8Y6qSPibxMEpaQf1E+XlYDQeBzM7YnFmuY0D+n6112UhsGiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_013607_612612_A9EBB784 
X-CRM114-Status: GOOD (  15.98  )
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

> > +++ b/Documentation/devicetree/bindings/pci/aspeed-pcie.yaml
> 
> Same comments.
> 
> > @@ -0,0 +1,159 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/aspeed-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED PCIe Root Complex Controller
> > +
> > +maintainers:
> > +  - Jacky Chou <jacky_chou@aspeedtech.com>
> > +
> > +description: |
> 
> Do not need '|' unless you need to preserve formatting.
>

Agreed.

> 
> > +  Device tree binding for the ASPEED PCIe Root Complex controller.
> 
> No, describe the hardware. Your current description is 100% redundant.
> It is never useful to say in DT binding description that it is a DT binding. It
> cannot be anything else, can it?
> 

Agreed.

> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - aspeed,ast2600-pcie
> > +      - aspeed,ast2700-pcie
> > +
> > +  device_type:
> > +    const: pci
> 
> You need to include proper pci schema and drop all redundant properties.
> 
> Look at other schemas.

Agreed.

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  ranges:
> > +    minItems: 2
> > +    maxItems: 2
> > +
> > +  interrupts:
> > +    description: IntX and MSI interrupt
> 
> Need to list the items. Look at other schemas.

Agreed.

> 
> > +
> > +  resets:
> > +    items:
> > +      - description: Module reset
> > +      - description: PCIe PERST
> > +
> > +  reset-names:
> > +    items:
> > +      - const: h2x
> > +      - const: perst
> > +
> > +  msi-parent: true
> > +
> > +  msi_address:
> 
> Where is this property defined?  I do not see in kernel nor in dtschema.
> Drop and use existing properties. I am not even talking about coding style...

Agreed.

> 
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: MSI address
> > +
> > +  aspeed,ahbc:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: Phandle to ASPEED AHBC syscon.
> 
> For what purpose?
> 
> > +
> > +  aspeed,pciecfg:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: Phandle to ASPEED PCIe configuration syscon.
> 
> For what purpose?
> 
> > +
> > +  aspeed,pciephy:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: Phandle to ASPEED PCIe PHY syscon.
> 
> For what purpose?
> 

I will add more description in next version.

> > +
> > +  clocks:
> > +    description: PCIe BUS clock
> 
> Missing constraints.
> 
> Just open any other  binding and do not implement things diferently.
>

Agreed.

> > +
> > +  interrupt-controller:
> > +    description: Interrupt controller node for handling legacy PCI
> interrupts.
> > +    type: object
> > +    properties:
> > +      '#address-cells':
> > +        const: 0
> > +      '#interrupt-cells':
> > +        const: 1
> > +      interrupt-controller: true
> > +
> > +    required:
> > +      - '#address-cells'
> > +      - '#interrupt-cells'
> > +      - interrupt-controller
> > +
> > +    additionalProperties: false
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/pci-bus.yaml#
> > +  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: aspeed,ast2600-pcie
> > +    then:
> > +      required:
> > +        - aspeed,ahbc
> 
> else: make it false
> 

Agreed.

> > +
> > +required:
> > +  - interrupts
> > +  - bus-range
> > +  - ranges
> > +  - resets
> > +  - reset-names
> > +  - msi-parent
> > +  - msi-controller
> > +  - aspeed,pciephy
> > +  - aspeed,pciecfg
> > +  - interrupt-map-mask
> > +  - interrupt-map
> > +  - interrupt-controller
> 
> Messed order, missing properties. Open other bindings...
> 

Agreed.

> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/ast2600-clock.h>
> > +
> > +    apb {
> > +      #address-cells = <1>;
> > +      #size-cells = <1>;
> > +
> > +      pcie0: pcie@1e7700C0 {
> > +        compatible = "aspeed,ast2600-pcie";
> > +        device_type = "pci";
> > +        reg = <0x1e7700C0 0x40>;
> 
> Lower case hex. Please follow carefully DTS coding style.
>

Agreed.

Thanks,
Jacky
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
