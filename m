Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB4AC3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jul 2024 15:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVx1jxa+9g+ZOn0YlPRfodw0RKbMufkyehzyE7Jp1w4=; b=AiVycPyfWO9QpG
	nW1eQt/xs6/Xm9vpCbtcBx6Mm58NkA8BHCgjxf2hw1yXNM4WuxwBCR8cWs5kRwIfveuuuhAGKvtV6
	KyMcPiJALMc2IPDsRQM/PENfceYK9uCE50ZgxvG/SEZVaMJEUZfy/q8S+EgZhdyvZvQB2nOEuX1CB
	VOy5I6Rb48xwgggkzbdZheiVwKph0eMmMo8WRoz7S0m7Af8kxMH1AIRqrXAw7MPYhhE9myJTUQFuR
	mC0tdzB8T5JSJvCgaUf5KOeBR73v2kX/XTyf0f32XyAcEnk891e4pKssqzkCbOq3TiNlQqtEvN0v+
	n2/IdEYc2zfPInIWUFnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVuck-00000009srM-1Ztc;
	Mon, 22 Jul 2024 15:06:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVuci-00000009sqS-2oa5;
	Mon, 22 Jul 2024 15:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To
	:From:Sender:Reply-To:Content-Description;
	bh=HBhgIi53RKuY5OlOfyAFurVoggsgK8U4+v6OuaCJvW0=; b=C5yHC0JOwQbdbaPq3NObxk5P5S
	+IdDZQ8JUn1AC6UMTROPN0QAKbhrK0sXzYyGXBU2qQaD3tXs5MF0m6tw8RC1Krbu2d1fZsUcr6oT0
	Or8vDY1GcLkQXKXQHKLe72oF3a/vejWjQm3S2sSK9GWsH3zl0y0jg/g5OB6q8LoRBhf5Mjh1y8phB
	hGoBDG/CZDXFB7rzz9YU/uW7G6SQryqJX95nYSUUte+LHuDimRDFMUJWQHG5so8Mse45Pm21ZxjCH
	6newqo1u3EDyuqTym1WJCtWuAFfWX+0AlKEMfvJRVvuo91v9dqBzgQI1kuU0Ezd40X6nGJNxlQrBC
	2tzCofKg==;
Received: from mail-northeuropeazon11021107.outbound.protection.outlook.com ([52.101.65.107] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVuce-00000003V0K-3pTa;
	Mon, 22 Jul 2024 15:06:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gmn3ZponsDSS1c8BE0B2SJZmgcQPbWaKKd4vGKyfuwlKoh++vp7wOPyTdTeJCGyZRbRy6cg9Qt45D2Crhxt+boN/wQvBpUR+bXjRD71fpyz22eKTxV/8AeaCKYZyIaQ+PrXd2eucT34HehwnLK+CEBksNzSTYQXbj4axtRKG9mabZBptHCJHypT6We5tZO+TXKyp3n7Lgem05ZqEPdgiLbU2Lh3pBnXLVvPLaeP/60olYbitufdvsBzqRzSwuyPakCUHYqlyTO8S2v9TGXKmAgMFlNFdy6d3yyFriaf2bVYomBEyxCTrjOV+NwDURLHtVZXyNpndP+rFQEucL8fR0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HBhgIi53RKuY5OlOfyAFurVoggsgK8U4+v6OuaCJvW0=;
 b=AS8z242INf7BxYqo/iO7FTaUsKDBHOXUC5VBugfibqX/RfToQhs6Bs92AD0Zrq2VbezYMFkkqodY1Ywk2FSCs/wIl27VHOSDsytPUi4PXinbjy3JywoW285kXe/8p3A7f/F8cRBIll5MSq2igw2wvc/mN/UyCaWtSUnBzkb/dJBmy9SImz6z2ZAPdFWuaFg2+9Y16O28lcA3SaxTyEQaZydsxKDHOjlZ3e3oECHaUgpTvozyB6FlsVGEwbkqJmBp0+NOkDOxd+LqOTv7L8KTsms6TeNsJjqpXhpUWsPMm2SKDzdhAzkUbndII9k753wvHpN4miZNhaYMfra/ktLrDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HBhgIi53RKuY5OlOfyAFurVoggsgK8U4+v6OuaCJvW0=;
 b=Qca7U5VmmvHQGqnUEM7qnFmrjI9U3ePJN+wPgGIPow7QJWNkgrGgucJWu9sLMh4EYpa488jIcsoXRRAcym1DakbA7QAa2W6eBODnZcD/m3eTovndrbspsYaFxEJUriKPHOCfd8x7TJU01Fn4Jcy5fiDk/DXHlnRj3VAYQ3vRAEc=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by VI2PR04MB10091.eurprd04.prod.outlook.com (2603:10a6:800:22f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.19; Mon, 22 Jul
 2024 15:05:38 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Mon, 22 Jul 2024
 15:05:38 +0000
From: Josua Mayer <josua@solid-run.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
	<sebastian.hesselbarth@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Konstantin Porotchkin <kostap@marvell.com>
CC: Yazan Shhady <yazan.shhady@solid-run.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v3 3/6] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
Thread-Topic: [PATCH RFC v3 3/6] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
Thread-Index: AQHa2q/UwdGhmeTzHkyvzzjdx6DlRrIA7BMAgAHvxgA=
Date: Mon, 22 Jul 2024 15:05:38 +0000
Message-ID: <14090e3b-e627-4342-91b0-d6d0b769b736@solid-run.com>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-3-4c16f9abdbdc@solid-run.com>
 <d48d261f-c428-4b96-9a88-725e29f6648f@kernel.org>
In-Reply-To: <d48d261f-c428-4b96-9a88-725e29f6648f@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|VI2PR04MB10091:EE_
x-ms-office365-filtering-correlation-id: 47da6108-b4bb-4096-8dfc-08dcaa5fbf05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|921020|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZjRSakRBY0JNZThwdkhOOE9DbmwvVFFmQi9TUmE1ajM3K2FiTzBRUExneVVS?=
 =?utf-8?B?M0pyVElIRUhCNHd3a2ZXOVhHWm85R2VVV0JROXpqdlJwVDhSbzB4aWQ3U2N1?=
 =?utf-8?B?b0lOeisvYXREK3dFaUdBNnAvNHlPRktmUHBmaytmN3Y0ek1MQ1NQdzgxQzZt?=
 =?utf-8?B?dUFXMVVLRElaa2xQbkxIQU56RWRUci9jMk1CNVM2a2ZFMlpBbUdiRzVEb2FK?=
 =?utf-8?B?YVFCaW4zR3FmbzhwcW85ZngwdlhMc1laL0FEQWtSM2dDUTV0Y3lZOWRoa21T?=
 =?utf-8?B?VjVhMkRSK0VDRWROOEp3aFhhWThENnVHLy9iTmkweEc3emxxVzJrc1VMZmgw?=
 =?utf-8?B?WmdJeW04ay9nMVhqMTEvSHdwVUdDSm5PQjJnbzhaeEYwL1ZsRko0MzVSZzNs?=
 =?utf-8?B?eDhTdjZXTXp6VG5DU01SVVl2MU5VV2MyL2xZTldSS0dvR2lod1FIVmlFcnBx?=
 =?utf-8?B?K0RYcVJRaXJyM00zVW5XT2c1TVFkNGcweG5ndWxobDB4Qkxsb29HaWNzMGE5?=
 =?utf-8?B?T1NqL05qT3EvdXVWckNENzdPRUxoNE0wZUx1cTRFeEJieTU2S3c3TnNuRE9T?=
 =?utf-8?B?Vzd6NXg3NlBtR1BHRlNkWlBjaFA1Wm5Dd0xybUdrZ05LRjNjQVBsUy95K3hS?=
 =?utf-8?B?Z05WZ2J5ZkhRd293Q0JpRkRmbXh1dHZlMGlNQW9XZVV1NHFUNDFkY0hEeFRT?=
 =?utf-8?B?Z3RsVHd1SUpiNXo1VUV2UE9teGdaTStzeWM1RDdyNS9UaHVkMmdCT0xHeis0?=
 =?utf-8?B?a01MWXEzWTZ3QVYwSzdkYzdPNTRCaDJsaFRPeVVlSDlBaDZPbUhTZFhIWHJQ?=
 =?utf-8?B?ZjZJbTRCOVV2TEs4S3hFa01lcDNHWHd5ZEhqWnFLNVR1d0xUeTc3WXA2cTA3?=
 =?utf-8?B?Qnp0S3c0MXdiOVRVekhDUG1kbnU1SUl2WUc4U2lBZzhOZTA3TFJJMjlzM2NI?=
 =?utf-8?B?Wkh5ZlNYRzI3R3Z5Nk5ickNNaWRwMnI4TWR2K1g4dUIxT21yRFdlNm1GVTVi?=
 =?utf-8?B?Z3VyTmxCUlAxTko4WUsvU01oZmErSTBHSmpQRDh3UDkrODcyZVo2V05yY3hV?=
 =?utf-8?B?MkMxSzFKV3BYemZCMXc1YTNsZGJKTUNsOVp3SUhYcHU0MVZqaUlIb1pEaERZ?=
 =?utf-8?B?T2tqQ2tHaDU2TER3NE9IQXkwbmJIbTFpWGVwLzNGZUtqdVI3VFBPSkxjOGgr?=
 =?utf-8?B?RjZUb1VCeS9kb2t5a2lzWXFtSWpPd2dOVHVieVNjZTdvd3Y2cU5vWmZ3U1BP?=
 =?utf-8?B?aUl5UDJoS0RDUUlYbllqSytQWDhKTDRsRDQyeWJ2c09pV1FEcHU4aTUreXNG?=
 =?utf-8?B?eWc3S1R6Q05HUk5CZEE5ZFRENUNhbTRTSXVla3RYYUZTcUhEQ25MQjI4ZFJy?=
 =?utf-8?B?RXhHcDloVUR4VEMrZG9tZ3NhcWxiQzcreEhGRTM4YkNhQXhsTUNyakE3dDh5?=
 =?utf-8?B?OSthNzhvL3lybExlU2d3UURoRnFnakNDakRKYVFLSGpsZTFUNkhZZllIb2VD?=
 =?utf-8?B?Skp0RzUxMFdOOXlraVlZSlNKYlRtbVZYNzhOWkU4ajE3RC9rNStpT2gxdXY2?=
 =?utf-8?B?SlV5MURQVUJac2hPbnFQZU10ZnRhR0wreGgvTW1sbHRXWG1FZXhuSTV6Y2Y3?=
 =?utf-8?B?TTZCVXBsUGlNeFV2dGY3bFdJalp5SzV1cVFPc0Q5b1pnVGUrdllPcTRsR01Y?=
 =?utf-8?B?czJlc09HN2k0eDhvS25Bc1d5NXRPV1pLVnJUVDdENVMxVHJvempZdjBUMzhF?=
 =?utf-8?B?a1FBVlkxektoRFZjbjE5TVZnSXFPeHlEZGdpK3R1T1NKQm53N1hNRTJXUjJU?=
 =?utf-8?B?RWY2aXpFRUNXckxtUGxLcTRqb3ZLaXBWY1o5U1NEWkx6YTJSVEJkby9qUlJj?=
 =?utf-8?B?S3dhSENSMlFiNHNJb0Y1ZDZBK3h2Mm5uQTdqMzdpT1lhWFFvNHBjbWlBUEZZ?=
 =?utf-8?Q?FRwG5hB9FXg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjllZFRnUnUxQ0duY1Ewd0hoS2dJTllIZE9JQ3ZSeVZuQnBMZWtRalhoTjB3?=
 =?utf-8?B?Z2V0M0RYR29Vc2ZDK3FFR1RSdUc5bENuenk0V3ZHVDNmSUlMd2hmYUozdyt5?=
 =?utf-8?B?VkFWZGN1RTkvMXJkd3lOa1hPSG56c3EyNXVuUUp2Z3VqTTY3ZHRaNFE2M1Rj?=
 =?utf-8?B?WHUySUFnSXd6REsvdlR3M0FzdlJRWDRmS29aUmZIZy9MMVdUbmEzeURtVHhQ?=
 =?utf-8?B?WGl5RG9rQmNTWlhwTE1mRUVwcmptSUg1NEFpdGhiU1MxRmZYaktTSzVkcW4w?=
 =?utf-8?B?NnVzc1JraG9IQmtpeTU1MGlIV1N2NHozRC9GcmpKV3AvTHdtV29nRUxlWG4z?=
 =?utf-8?B?YmFqZEZwem5zRFZoZWk3OXRUK2xFQ1l6TEhBb2Y5OXZQMmN0RzlsMnhvN05U?=
 =?utf-8?B?aUJjTjRJaXlmY0ZGbXIxZGlKVGcremJiQitNeEVoNHdBb3JIZGxyQW5QeVBQ?=
 =?utf-8?B?OGZUdDF3R01jd2xldnkyRlR2TkJ2YmNwYitESnFDWm4zUHc4eGpDRzU5cnlR?=
 =?utf-8?B?ZlllUjhPU0tybkg3VXlpNlFEZkt2RlJQdG53VnJTaDFUMHlzaUdGM1lDcURs?=
 =?utf-8?B?dmYrUFhmUGkwU0NqVmJZeUdUdHR5UGUycmpZdmM3clV3ZGUzb0NzTU42R0RX?=
 =?utf-8?B?WlJNalVtUmtrRy9yNFNsbEgvWERIWU9zVklyZCtpSEtiREdEVm1QNlFZL1VZ?=
 =?utf-8?B?YU1JVlJ5QkN1VGVEMVRQQ2FmMG9hMzBTTmpmVG9JNFRQQ0tab1FNQmlGbmJ4?=
 =?utf-8?B?KzY4YldFbWpOSHMvak10N01sd0Q4RUxxYUlNREFReTZSYTZ1SHNydEk5a0hU?=
 =?utf-8?B?clRFSG0yeEEwOFhOR0N0VlpyTCt5VHRhTmd2K01ld0NKbjZjR0ZFTzRQOEZp?=
 =?utf-8?B?d1pLRDJGOEJYSWl5TCt6Rk16OGIwc2k3WUUzQlFsZnk4U3lhTVB6MHVRWUg3?=
 =?utf-8?B?ODJCd0taUmFrZUxWOGFTYkpob25OemJlWjV3OU9zdnZ0a1RjZ2VOMmpUQkdt?=
 =?utf-8?B?ZDlKUHErclVxeUQvRVpJRVJZaHhvQVJXTk5qVktkbUhiVEtmUkw3RElCU25r?=
 =?utf-8?B?cHB5UnR2RnhxcmlZclNpVUc4aUhLWkR3M3o4aFFQSVZGQzdKZ0Fqb2I1M1A2?=
 =?utf-8?B?cElZYTdFT1NmNHdGMkNrbzN1bGhvdzJLYXF1NzNQaGVSM1FoaTJQczFUS3lW?=
 =?utf-8?B?OUhrN1N4NmFsSmE0bG1xcTBrQlhWendvY0VnN1hNWnpLSUd0R1lnVFFoUmZm?=
 =?utf-8?B?dmNldG9mcGE5OUZ5QkVwcWx1WFJFYU1tWk82YndvbEU5ZE9uNFNKZlZISjNk?=
 =?utf-8?B?VGlSSmltZ1NEc2FnT1ppQU15bG5YZzZoK2QwREdpUW5BQjRkLzNXN2IyUnRN?=
 =?utf-8?B?dUpkSHhTL2xHSE9iODhqTFJnMGVyaHk4U3BjWUFDZU1lbGhUK05sNzFXMFNS?=
 =?utf-8?B?Ymk2MWVmWERMUlZoZTVldmdFTW9neTdlay9Uak1aVzZoZ0FTYXg0Yi9wNVF3?=
 =?utf-8?B?dVd0R3JORCtZV0F1Y1Mreng0TWF2cDJUR1R6UFNVSVVOY0o4UG1EaEJXUXJP?=
 =?utf-8?B?N0dEY29MSElDa1MzMm43TzdTb2RjS3VuaFdlTFZWbzRMZm12YUoySEFEMlVS?=
 =?utf-8?B?V29mSzNaWXJ4Yzd2VEVjenUzRUdqSVlmTXk4d2xZdjlLVzdOd2pPVzhhVisy?=
 =?utf-8?B?eU5JRlB0S2RFR1VWRW5lOXY2bWJjMHl4WHBRZ3R5Qmc0emV0RFJuSjFQNVJQ?=
 =?utf-8?B?Ym9VQU5YZ2thUUNWNmJjQnRIdnFpT2llaEFUSTRtOXNMcURrUUsvTGxoV2dZ?=
 =?utf-8?B?SkI4SW55RkpnVWFqNjl4Y0tKbjhMMUp2T2lUM3JudHpCVFVJY3hkWVVQUm02?=
 =?utf-8?B?QUJHd0dwVkRNbUsyQTJQWEFoT05IVlEyWml6Y3RtN2Iza095bjB4dVp6NVlW?=
 =?utf-8?B?WmNLdmkzWG45M2JNUmFuc3F0TUsvYU1xZ1hGK0lFcmZ2ZGNXQVpUeGF3NUxt?=
 =?utf-8?B?aDEwSGwrcUl0TUo5ZzNVYUJjV1NHTHJrM09nY1dldUYxS1NzdjNpT3FLVUpV?=
 =?utf-8?B?aEIvSzFKUWJwWEhseVZZVjhhcktBdE9vZC80enhBRklRY0ZkWWJpbGQvdWdl?=
 =?utf-8?Q?DBQ0=3D?=
Content-ID: <C1D115DBD42A584EA7D8E1D6AE9FAD69@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47da6108-b4bb-4096-8dfc-08dcaa5fbf05
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2024 15:05:38.2743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qGPUsmcTEHjgQ1LGzVKbdrB7a6qd/xaGuDk2rPcatdlgtLlyuArhOOAN2qHIOfw6SkCiFUVKBpCrJNTzPPK2mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_160645_187307_F3A068D5 
X-CRM114-Status: GOOD (  17.76  )
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


Am 21.07.24 um 11:31 schrieb Krzysztof Kozlowski:
> On 20/07/2024 16:19, Josua Mayer wrote:
>> Armada 38x USB-2.0 PHYs are similar to Armada 8K (CP110) and can be
>> supported by the same driver with small differences.
>>
>> Add new compatible string for armada-38x variant of utmi phy.
>> Then add descriptions and names for two additional register definitions
>> that may be specified instead of a syscon phandle.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> ---
>>  .../phy/marvell,armada-cp110-utmi-phy.yaml         | 34 ++++++++++++++++++----
>>  1 file changed, 29 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
>> index 9ce7b4c6d208..246e48d51755 100644
>> --- a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
>> @@ -23,12 +23,36 @@ description:
>>    UTMI PHY1  --------\
>>                        1.H----- USB HOST1
>>  
>> +  On Armada 380 there is an additional USB-2.0-only controller,
>> +  and an additional UTMI PHY respectively.
>> +  The USB device controller can only be connected to a single UTMI PHY port,
>> +  either UTMI PHY0 or UTMI PHY2.
>> +
>> +
>> +
> One blank line is enough.
Ack.
>
>>  properties:
>>    compatible:
>> -    const: marvell,cp110-utmi-phy
>> +    enum:
>> +      - marvell,a38x-utmi-phy
>> +      - marvell,cp110-utmi-phy
>>  
>>    reg:
>> -    maxItems: 1
>> +    anyOf:
> That's oneOf.

Acknowledged, thanks!

Today oneOf seems correct to me, too.

>
>> +      - items:
>> +          - description: UTMI registers
>> +      - items:
>> +          - description: UTMI registers
>> +          - description: USB config register
>> +          - description: UTMI config registers
>> +
>> +  reg-names:
>> +    anyOf:
> oneOf
Ack.
>
>> +      - items:
>> +          - const: utmi
>> +      - items:
>> +          - const: utmi
>> +          - const: usb-cfg
>> +          - const: utmi-cfg
>>  
>>    "#address-cells":
>>      const: 1
>> @@ -38,13 +62,14 @@ properties:
>>  
>>    marvell,system-controller:
>>      description:
>> -      Phandle to the system controller node
>> +      Phandle to the system controller node.
>> +      Optional when usb-cfg and utmi-cfg regs are given.
>>      $ref: /schemas/types.yaml#/definitions/phandle
>>  
>>  # Required child nodes:
>>  
>>  patternProperties:
>> -  "^usb-phy@[0|1]$":
>> +  "^usb-phy@[0|1|2]$":
> [0-2]
Ack.
>
>>      type: object
>>      description:
>>        Each UTMI PHY port must be represented as a sub-node.
>> @@ -68,7 +93,6 @@ required:
>>    - reg
>>    - "#address-cells"
>>    - "#size-cells"
>> -  - marvell,system-controller
> you miss here allOf:if:then: narrowing and marvell,system-controller per
> each variant.
Correct.
I will learn how to do that, and included it a non-rfc version.


Thanks!

sincerely
Josua Mayer

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
