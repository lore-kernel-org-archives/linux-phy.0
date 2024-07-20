Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF47C3DA49
	for <linux-phy@archiver.kernel.org>; Sat, 20 Jul 2024 13:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaMhK3IhLdo2LX5WGbJ4pxQ6EpFAEzc5aeYMgGiclM4=; b=gAIm53gwpBZ3JL
	4wwto8h4Y+LmR1fCXIWWHpUMtA+Le4+Xh/IqRx1o6Pbz8fCCE0DGcr1zKKtllj33OtV27ONDyAJuz
	ub/hK9mVmrUxAzKy+uz9PyC0wJmlIApEOacr0BsgjGpkAfWrNN0BhqnS0UXWKpsmzu47fP/uKzicY
	1UIz5dcsRxEV09AnHt9IGi5gY7sdZdzh/MyNCLM4jjLKncKaG1MJ9263fBQuEaCdfX2Ph7+p9abO4
	3rHAZ59qddnOlOU3aojHT5r52Yk/Vf+6IrkhfJWb59cjk2QXQyKPM4uyn/EbjbZQBpCoYuaQ9Ktbs
	zXcM+BJgIgmTTonGVOgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sV9zv-000000059hd-41dV;
	Sat, 20 Jul 2024 13:19:39 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sV9zs-000000059g8-47ox;
	Sat, 20 Jul 2024 13:19:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WbdYj3GyIntbqT+qCMX3K5haA2LXbmuYjw8IfLSjxFI4/+EUP/olgh9cMsd/dfo+hmAh1Tpgo1lArE3iBx+MHuStzVXfCDak9PxJCgE5MmX1ZPSjlisRl//HOlXrV8YLEvsbhxqiMKDo7lGD/hkO+Lay86K0C+Cf//Fs++rV9HQ0vuTGgxC6o5S+xfZvfCufN0D7Mce4pB3nSzGIyQL3ww+ecedllzoN7UeuiMQB7MhdXGXFl+MdGrBipz0X+4OzViKj3kQtR9SazB4Y5hRnufwGHob+OtGxv6UEVuuz4HqPZ1KZrjxdauHcQk01cdkulNOhJ5YgYmf5YsiOWtUD5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WlWQf2Z9dK30gcCUxfn8bXWAQKC9E7sAPvvTqeZMvxg=;
 b=OagHX4v7mvbAIBJMgcL+X1T22zwNqwJDYaCiD5Bats30cL2GXvBrvXiFTdkLqrkrd9D+PbMglsNH/lxI9Xi/TKi976XKAR5n9xrJKh5oI3bQNFawBOFfPzYzTLGJuCGSr8Rcl1A0EdZ6MjZyj4UPdAeThMtexXeGtoEI4R2uk74+yNxEmV8nzBO+zZxA/rkpFyZrG986xivLIPez8cn/2rnfU8OBCOoq8uxf/asOfvat8vLKH3ubAXedz9JmZ7cDYSEtcOeJ/GrJEoa23Op051/kQZwsL12vGSsKzWQm3pXpB77N5JeEje4zy5v0qYd60egXgvtRxBoXYOpTXirTsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WlWQf2Z9dK30gcCUxfn8bXWAQKC9E7sAPvvTqeZMvxg=;
 b=JvDPHqCUs29NA0RpeLW+S9PbgvrF0d9YeRdd/tkT9JNoSDxh6QTL7TFhOpGV4QEpLfxvEylsBBgnlaUYFSOrZYXMvZ9C8smenLRs6UROqCagimVZFdpxBvjbyKwHRU9zM0xWCAPH5PlDszyLjx3Sb1/BCy1aXW1TkyJGeD+m2k0=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by GV1PR04MB10752.eurprd04.prod.outlook.com (2603:10a6:150:203::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Sat, 20 Jul
 2024 13:19:22 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Sat, 20 Jul 2024
 13:19:22 +0000
From: Josua Mayer <josua@solid-run.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
	<sebastian.hesselbarth@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Yazan Shhady <yazan.shhady@solid-run.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v2 2/4] arm: dts: marvell: armada-38x: add description
 for usb phys
Thread-Topic: [PATCH RFC v2 2/4] arm: dts: marvell: armada-38x: add
 description for usb phys
Thread-Index: AQHa18Ib0mOp0sUHb0mRWleiPTSZX7H602kAgATL74A=
Date: Sat, 20 Jul 2024 13:19:21 +0000
Message-ID: <2a7936ef-3a50-49df-b6a9-337b38d33c57@solid-run.com>
References: <20240716-a38x-utmi-phy-v2-0-dae3a9c6ca3e@solid-run.com>
 <20240716-a38x-utmi-phy-v2-2-dae3a9c6ca3e@solid-run.com>
 <44ce546d-c043-44ad-9e2c-eaf052e5531b@kernel.org>
In-Reply-To: <44ce546d-c043-44ad-9e2c-eaf052e5531b@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|GV1PR04MB10752:EE_
x-ms-office365-filtering-correlation-id: 6f00aecb-e762-4c82-3a2e-08dca8be919b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Z2F4cDMyNWxBZHVsT0tDNTE5dHVKWWs0K01ZZUw0a2pjZGE2eCswcEJEM3Jw?=
 =?utf-8?B?RHNtSzlOVGRLeXBMaVRSc1hiVFQrSm5ZbHg4azJ5cEM4YVltbXVDd2hOSmdw?=
 =?utf-8?B?THFiRmZsOEJXaGtZMHQzc0RtN1d5a2FDTmxUUTc3dVFYNmNidkdnQnNEcXZy?=
 =?utf-8?B?YmJxRUltQ1ljSzA3NlpyQjRlcUJuSkk2cFBDYjN6MUdMWlM5a3pid25sNzV5?=
 =?utf-8?B?eWFacVFtQWwwNnRBaFp5TkM4dlV3cGhjR0tpYVU4SHpHdE1rNm9NYnlLZVdQ?=
 =?utf-8?B?YXNNcDcxUXE3MUQ1V3dQbUo4MkRwM3JkZGgzUnA0ay91MDRvU1RCZ25FbG4y?=
 =?utf-8?B?YmV3ZXFScUxMUjBUMDd2K25pS0VyaG00Zlp0QnRLOEE5d0ZoMWJYd09tZkVs?=
 =?utf-8?B?Y3pPMnRpdDAvOTZ0T2doRUtUbllNbnZnUUpCWkl6SzBwODlQTlNVLzFMWEtp?=
 =?utf-8?B?TGVNOE8rbjZRVExvVkdhR3lEUmlFWndhWHVvKzVYQlY1eU9Vd0NBNndqVUJl?=
 =?utf-8?B?WDNkTXUxNVJIL2g0dUJYTnRWOHFvdzVuVW9TQ2EwdFI4RkRqSS8vUzJjeFpB?=
 =?utf-8?B?anVNbW9NV3VITmVQdzN0UGZIc3ZjV0dvSk8xWmFVYVFLL2sxM2hUb2JMZk5M?=
 =?utf-8?B?Rk42KzA4dWR3RDZLa3ZxSGlpZ2EzUGtOL1RyWmRFT25Md01NZURwbytNZjJL?=
 =?utf-8?B?ajRuQ2gwVVpIc05weUVLNXErSUFYRWsvOWE3ZlZlNFdTY3c3ZFRQRjZoOUlF?=
 =?utf-8?B?TGlyU3RWUXZUS3NlUHFjdGFrVWcrVWFPVGovd0t6VkVweEpHUGxIZEpndFpq?=
 =?utf-8?B?UEpMOUtaYjgxU2FsMTg1dUV5NGpwOUhvVlFTako3eW1KZU94QXNNelVZdmoz?=
 =?utf-8?B?bzB6cFljVVFPaWtGVjRnK2hTZGg0Qm90YUNIWWlYdHVZZ0pjU2RnZEw2SjV0?=
 =?utf-8?B?OTRpMURKSnd0WWhVWmwxTTBTTE1LeDZKRzY2Uzl4RkRmNTdhQ3VjYlRhcXlO?=
 =?utf-8?B?Y3huQzhmOFpKZ2dIaDdSSEdsVUl6NEFEcUE1UzNZLzBQT1JURGxkSUMzSG1a?=
 =?utf-8?B?bngvUTA4Yk1RUUJYZEdtSmVscEp3aHFGSFUySnU5OXJiMFhkNis2VGhQbTlG?=
 =?utf-8?B?OHk1NFczdjN6OHJyVTVCUEpyOU9yNjUzSGU3VXg3Y1hQZ0o0SzcxQWhZeDV5?=
 =?utf-8?B?Ly9SeGJTaDF2eUYxcXFIRnVwWk95SnVyMTBnQ29RMU1SVXBuVkN3T2ZuMkJr?=
 =?utf-8?B?bUZXOEEveGVVWU1IY0tLUVRXbFBmSTRyS1ZTNFN4RFFTQ2U2Mkx4TFVNWkM5?=
 =?utf-8?B?TzlWcGxNbGJuOUtyYWRJTVUveW9kN1N6UGVZZHNYTjF1aWFuaXpSZGVqb1Bo?=
 =?utf-8?B?Wmt4MGd4eHU4UHpFVFVKNE03SmVpRFZVenB0OTc4Ulc1dERyOGl4N09NNXhq?=
 =?utf-8?B?aHF3VUVJZnkxN2x6REhoRTFtQWN2aWR2V2ZweFF4NVpBZTVzdDVsR2xDMm9B?=
 =?utf-8?B?aUhHS2NuekZ3cTIzOWZzbVVoVWhhdGRDaE53MFQwbDZJODFSeW02MlpBN2hZ?=
 =?utf-8?B?UEhrdXNudC9VVDlLR0p0a0pMOHpPVndOVktBSlREcXdNTXJmR2RDZU1VRGV4?=
 =?utf-8?B?VnREUG4wS3hGdXVhQnJxU0JpZkxQWFpDNGpxWUNiWFJ5KzlRTW0zY0NodEVR?=
 =?utf-8?B?bnR1TS94MFlWaWo0ODVsRHdjTTZjS0NKVkNGZWN5N2N4Qk81QmFLWEZET3hp?=
 =?utf-8?B?RFBJazVwZEcwMWEyNXlTUVBCQW5Vd2hYb051a09uRGZybHJCVWhxMzd1U1FD?=
 =?utf-8?B?a0tITzlPNURZbTNMSzN0bDV0RFk4eFZ5QU5Rb21Yd21XOTdzTG9lb1QvcW1k?=
 =?utf-8?B?N0txRFZkVzdXTzdqSGQ5aUx6U29mQXhVT3pWUG9Qa0k0cmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7416014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGV1NiswK29XN3h5bk9PVGlFdHAxbkc1V2xja1pxcnNnS1kzSlFqNU01L3F1?=
 =?utf-8?B?ZjdxNGNFK2hJaUltMkVvb1M5VlVuMGFDUEtKYzBBc25YN1dwSkpZM0VmN2Za?=
 =?utf-8?B?N2MxZnhtWldpWjJ5UW4rNkZpQThMbHljWVJhQVVJVXZxZWd0WGNzdERBRStn?=
 =?utf-8?B?Vjc5dHVjbmpGaEZ5Y0w2RGFhTlJBTEJTZVBvQVM3WWMwNkhOSlZTcXVva01E?=
 =?utf-8?B?U0RaTThSd3AyYW1lT0V5RkNjRWs3d3Nsd3NHbGh5V0dsY2ZZbnJrTCtkN0Rp?=
 =?utf-8?B?UHN2YUcwSXB4TUxMK1NTR1lnUnZxb3g5WDdZdTNHMzRBcU5WdGh0cWZGcit0?=
 =?utf-8?B?Uzg5K1ZKaGUwbGlWSWR6Mi80SUZMTlU5Uk9pWnRxbjVBNGk5RnVxbHZJdEFF?=
 =?utf-8?B?aFRSU2syeUlRUERrYzd6ZFE2eFZoMS9wUkYyN29Ja0JBWmNNVDEzL0c3ODk1?=
 =?utf-8?B?d0M5dHdwMno1ZlNRZ3prcWY1d0JjS3g4TnZlRkVNNDBxODhXRi9zd3RFWDB1?=
 =?utf-8?B?SmRiaThPL0pha1IyRERLUXZnTFF6U01LUm9MQTVlSDhZWmFTMHZRUlQ5WEF5?=
 =?utf-8?B?VzdaUTY4Ukx2ZUFwUE53UmlIcnhzYjRpMjE0bXhwMFVmM2RzOGo0d2dZdXU3?=
 =?utf-8?B?SUkvayswTkVmaTlTYWFkeG5LN2ZYTGczaE9xckZYQkRBYnp6Q1JRTmlGN2g5?=
 =?utf-8?B?dVdQdjlwYktEYjZ6aHVONC9ZTVF5NUtNaURZU1hDYzVMTFh3ZlgzN3NIS2ww?=
 =?utf-8?B?WGJvWGNxSFFIeUtpZGg3dlhOVU5PR20xS2dBV3B0eVVrU3dhcXlpVGFhbXV0?=
 =?utf-8?B?dWJHNUJBRmpYd0dycGsyVkdKQWw3SjhRRjg1UkNUZjUrMlpaZEIxTjd0Nkll?=
 =?utf-8?B?bzJyRFBiMnNvc0ZEcStXUUt5QmxUMlhyNHJpUHNPSVljV2lvcEgrZ3h6V1Fj?=
 =?utf-8?B?MWtpdnd0ZlhiaER5QVg3N2YwZGxEZzM0Y2tpMDZac2dFRTdhTXpRUmxQcXho?=
 =?utf-8?B?Q0JXOEJPaVc4SjZRTFBCOHhGOEg3U3BmV2c3ZE4wMFErOUVCK1IzMjVsZXRy?=
 =?utf-8?B?YitxYmhZZ2JyUzRKbGNqeG5wajlxSm9RUURrOGdEYmtRYmFwNVFmQU5qR1Y3?=
 =?utf-8?B?U1d2N3l4UFJ1ZFV6U2prdEhobWRieGE0V0lxRXh2UlF1Q2VxeVZEVW1GRW91?=
 =?utf-8?B?djhsRk1yQlZmTUtFNElvTzhFMUxod1dIQjdSVi8wOU1zVEtDNXgxRkhKaEZH?=
 =?utf-8?B?Rk5aZ1dMamtFRE5zUmhjV2lvcjRkM1dabkpGUXg5cUJKWjd1MnJxTzZRVE92?=
 =?utf-8?B?YWFKbWRXdEtkQlB2WGtpNU1IM0toY0RhaEZkMlByN3BodzJ3SnZRaDR3ZkZt?=
 =?utf-8?B?U3I3Y3c2UGpWeVFxSTlXblZzeXE0NjJ4RzREZ1ptbVE3SmpVUTZFMUVueHlX?=
 =?utf-8?B?SW9FVXYzRUs5Qk5OVklxanNnbHEyTFVhcjhPRnVZTEl4U2NuU1Y0bDdBTm9v?=
 =?utf-8?B?aXkvMGYwQ1Nmb0hoZkJ1ZjRGVWJ0QlFaKzJQOXJZMW9SSldLV25LaFNyaVBr?=
 =?utf-8?B?b3MzNllndEpYY001MDVOZGl6SDJyTTlkcTVJbkN6STVZb3Uzcm15QkE4TmVo?=
 =?utf-8?B?UVVLelRoSzRpOHNJbmZqNGhXdFRqcHdQVnhkd2k3bFBxWTVxdmlSTlc1OWw1?=
 =?utf-8?B?OHkzbjJEZlRsTTZRd0JSbFVtdldybDJPY3E5ZHF0MW1mNHdsUDlxd2MyNUl0?=
 =?utf-8?B?ZE1UVEQySlh3cFhFMHhvek1wRktCRWx5aXVUUTF1amRzWDgxTlR6QVM4Zk54?=
 =?utf-8?B?ci9DOEJqQzA5ZnRHUnp2S3JsODV0RU1kWlB4OWphVUZGVzFSelU3dG41b3lQ?=
 =?utf-8?B?NlFzdHBaTzQyVWE2SmpRMXUwNW9NZzZDeUZIRnZmamtLRnJzMytTd2t0MS9T?=
 =?utf-8?B?U0psbnpoeFJyUVFLWjZweUltSUhVNXo0NXc2dUZsVUkxeTlwL212Y1A3NmxH?=
 =?utf-8?B?UU43ZEE2M2RGR1RaNjgyMTJyeTQ0WWU1aDg0VU5IRVdjSEtVa2EzVVRCWEtx?=
 =?utf-8?B?NVJjT3ZUaUZvb3pybnVLY2IwbTFtSFUwUzZwNUFnUkd3eXoxN1JKT3NQdllJ?=
 =?utf-8?Q?JYOc=3D?=
Content-ID: <449FBC4ABB2A824DA5AC30B15B3A23F4@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f00aecb-e762-4c82-3a2e-08dca8be919b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2024 13:19:21.9262
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3oPPO5Vb/RPhBynBZobJZH9l3kb1EW8J7uK2BfAEnN6rgkLemxhLCuR4gpp9DBnCZmSuF+7xy0T9nsn65ZDdlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10752
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_061937_052970_A8AB3AE7 
X-CRM114-Status: GOOD (  12.15  )
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

Am 17.07.24 um 14:04 schrieb Krzysztof Kozlowski:
> On 16/07/2024 22:52, Josua Mayer wrote:
>> Armada 38x has 3x USB-2.0 utmi phys. They are almost identical to the 2x
>> utmi phys on armada 8k.
>>
>> Add descriptions for all 3 phy ports.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> ---
>>  arch/arm/boot/dts/marvell/armada-38x.dtsi | 29 +++++++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/marvell/armada-38x.dtsi b/arch/arm/boot/dts/marvell/armada-38x.dtsi
>> index 446861b6b17b..701a1c0c19ad 100644
>> --- a/arch/arm/boot/dts/marvell/armada-38x.dtsi
>> +++ b/arch/arm/boot/dts/marvell/armada-38x.dtsi
>> @@ -392,6 +392,11 @@ comphy5: phy@5 {
>>  				};
>>  			};
>>  
>> +			syscon0: system-controller@18400 {
>> +				compatible = "syscon", "simple-mfd";
> That's not a valid pair. They cannot be alone.
Curious! I have seen it in armada-cp11x.dtsi.

However this is my mistake,
especially since with v2 the syscon node is not actually used.

sincerely
Josua Mayer
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
