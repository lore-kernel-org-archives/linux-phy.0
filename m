Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56205CA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 07:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8ey1bf+gzElO7OrVp+4fgEjK/tDYGQdg41SejexUkM=; b=T/eAdaIBlepdFf
	dKJY93jsElAGMJ66kGTwzpB+KkxZFo/MjjIP593YaBX9l0oiacPj8jhoZny+A5cUxMctLJfw7u3WP
	n7KAkFFkCDZ1g38K7R3owQTPuU0KHHUl5qT8bwbYrKypZE0UyoO2bvwKORpkpLzdk/ehtDNqf061T
	DUGnJ6Fawud+FbPm7nWwUjvoVw5oMUpIcuLY//5KWzm5LBiFNkrvxtmuiHIqJven1Xtb0jCGWsg20
	gNvRIXoeDYKevlJX+SZy4pkmmHaJ2qINI8GLzKT6TDLYllEh+9ZidZdLWrVGH76GEhSPo3tReAn7+
	U5Y+Inj1Gh9njsLPymSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1tw-0000000DOFp-080M;
	Mon, 02 Sep 2024 07:55:04 +0000
Received: from mail-japaneastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1tI-0000000DO3G-343E;
	Mon, 02 Sep 2024 07:54:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fp46+oc4rcjbg/dP06zUPxh4ff7AI8FvvN6QtLDIEf3/VIm5SrCFZk6AnZl5t1l6W1QW4c5Ay37zHO8xyN/eJhzv5k6EFecG08zLX61JU1mrW6JGM7siNDm0Iw2aCT3nG4oVIGxB7X7MlWjnMrOj+Plgur+fSdnoXi6aPe/JNT7gr2JiRQ4+ZEMn3CpFQk/29M+8vGPajEYSi/oHg0NyZdvMwGvh+m0gQB5m7ht9mB498tyn3T+uhBIa/AM10VZmKb7iXyAYJFAa+IgSAqJj6TckX61UHPCKWGnArFVm/lDlD6Npgwr+4b441XKJNCy0Enapu/fmRD9eS4sl+coJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V7zKAseahiwC5XSZB+kVh8DIDGUDMabcburxif6c/VE=;
 b=wWbgqgM7qJovNHts7Gi428zZJ+WfcLzdD7XYVu9BGooi3hpneNt76APfkkYFSyGBAYCXLXUJaLaN83WS1h6PmKTkOVBfWJNR7NOp5Rxdf6WVYn6lCVcScAq0wL3/gwXaOlsS7XWeJ/8c1tgtEyoYdo4rPQKMR9TO1lR7eGZzBwAWk04TjXxeJxj4fmlNFlVSOHs3Hvg4fBg8l+hl0frAigeqVgPTNUbm37jhtOp5o3W23PXK9SXFgu3rQiLmPmGr6p5SSpz56AIOwjEkf5CkXY7fGLCNFgj86M2/Eps0lywCMpTME4FuxZSlqXRmoVxNOiLGGhdZuFjED0ahmkGJrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V7zKAseahiwC5XSZB+kVh8DIDGUDMabcburxif6c/VE=;
 b=UHuTEmrxqLxzdmC2vWxBl2Ui1pk/IMovc2pLLiSTDD9LT3aybcVDAerswcMSdGo+WW8psMr7aZQAxLl14HWLoryV87fURhTB2dpkwukFjrio9Hmc0CWZN+fUlyJGDNH65lLtw2m8n0DuoTo6mswoh26ygDMttWtKXZWWwsRv8Eg=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TY3PR01MB10110.jpnprd01.prod.outlook.com (2603:1096:400:1d9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 07:54:09 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 07:54:09 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, Ulf Hansson
	<ulf.hansson@linaro.org>
CC: "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "magnus.damm@gmail.com"
	<magnus.damm@gmail.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "mturquette@baylibre.com"
	<mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
	<linux-clk@vger.kernel.org>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Topic: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkw
Date: Mon, 2 Sep 2024 07:54:09 +0000
Message-ID: <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TY3PR01MB10110:EE_
x-ms-office365-filtering-correlation-id: 75b2b442-2da9-43cf-8329-08dccb246d9d
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QkdOcVBUd3UzeGRsZzZjaUpucEM3UjQ3NWo5cUhSTlU3NUdJK1NlMHJTRmFM?=
 =?utf-8?B?RlNTaXVTLzEwMjZkVUE5VC83U0c5YzhodVduSVNDeVZ4OGtyYmlTYVdWbHBS?=
 =?utf-8?B?VWhaM2wvSm1jOU92Z1Y1QmxvTVQ2ZXdzT2VOdldYNkJvOTNTdkxHaFNqZFNW?=
 =?utf-8?B?YlNPU0VxRlRUTGhmR3dUUVZYQ2t6djRDTnlYMEc2NkFtbVNZWjl4Vk9WOXFT?=
 =?utf-8?B?c3AxZjBxQ1RnM29MOGk3ZS9sSjJBODlLSHBUdk1MMEtkaE1KRFRWN3lFbWpV?=
 =?utf-8?B?ditkQW5aU041UkllYVdBbjFiWGtaY3JGdFR2dG1PWmlzR2YxQlBXaldZcUNm?=
 =?utf-8?B?bHMrOGF2c2R2ZVladWFXdS92QnVURVVZTWJCUkoxaGptcjVRWmg2ZWM4TkJW?=
 =?utf-8?B?OUhTUXVsVmFxc2pBOTNxTmRvVi90T09kMDBPQTZDaE1tMlpmWFp1VkFkYVFX?=
 =?utf-8?B?Ly9aRWd3NmN0Nk9FUlhNVmFrZVEzNHdaTUVzRWhqek93WSsxbGpRUDVQb2xt?=
 =?utf-8?B?SUQ5WGgxYWQvcFJIWGlJUmovVFkvOTZ1RUlYMW02ZndvL3M1RWFDRFM1UFIx?=
 =?utf-8?B?WnZoUUhqT0JSUXdDZC9wYWdMTWYyN0I3eVIyU2tsdVdyMDU1OUd2YzBYTldw?=
 =?utf-8?B?UjkzNXNoSncvWk9GSEd1M3JTMXNwVis0WHlBTTRsUGFrK0Q1MittbkdWcXll?=
 =?utf-8?B?T3NJV2s4TTBGRWw0dzZVU1lkeEE0VUlvbERVa1RUSW1ZUGUyb0xtUE52K0Yv?=
 =?utf-8?B?RVRKM00zaWlFU0hMS0ozaUtYVmlLbzRER0NUcm1YRGlDaDlRL0lycGNsbmJs?=
 =?utf-8?B?QS9hZHVHcWQwMVhGMWlWeFY1RUVZRmZ2WVRrbXRydDhXWW1hRFA4WEU4UnRj?=
 =?utf-8?B?aWViL3BBMDBNM1UwT1ZDSHYreVNFblJ2Z3hBMUQ1eFJ6WDVGWEtJRkdYNVc1?=
 =?utf-8?B?a211K3BFNWw0ZThSRGhRVWdoaUhwVkt6bWNMVXBHVkFoQ0NvRlR3QjhUWFFi?=
 =?utf-8?B?OUNuakJiZ2VMdFJBRlhaNXd4eDZ5TWU5R3Joelp5d3FjVm5PQjZWM1Z0Ny9J?=
 =?utf-8?B?SHMvUmxDRkplYlUvWlVjLzZRRzMvTFUxNUNsYUNYV3FUUGgyZkgyc2h0STZn?=
 =?utf-8?B?WGZKWGRCMHhFbjFTbWJCcXVGZ3dxVG9GRzE1S3NDVTNnNVJiSS9CQjBHblU1?=
 =?utf-8?B?Q3RReWt5a0pHdHQ3Z3djd25Db3dQMVI5b3o3RUdXdTJDK1FnckN1Q21mTjNM?=
 =?utf-8?B?bnAzMmJvaWV0R3ZYN3hLeVVRdmlreE5qU0xVQVRlTE5MclZlOXZ1T3ZnQStK?=
 =?utf-8?B?dzVyMUM3MmpqaXoyTVI4cGpPZnVLMkI2RmNPdkpJbG9UeFR5dXJvNzhIMzBv?=
 =?utf-8?B?Qm9EMmRoUnB0eTJLZUxad25zZG1WL3B2R3RzWnBndGx5THlCMmE2TFNKV1M3?=
 =?utf-8?B?T3M0YzE5dTlENHdSSFlOUHpXWTB2MHRnWlVrdUQ5MU9SMS8yMDFLZlY0RnJv?=
 =?utf-8?B?WEVnZm0zelZUbXpDaFBpd1d6ZHp3bmFremo4SVZyckxFZ0IyZlM2SE9sUjRP?=
 =?utf-8?B?bGI5RllHTlk2NGE5cTZEWE9yTWlFVFhlb2V1UEY0WFN6MkdFY3VuaUZldE91?=
 =?utf-8?B?L2g0NjFYTVRHajQ4aGdMRkM0YUJZZXo5bGlGSDY5ckMxLzlETFBtUWJjVVlM?=
 =?utf-8?B?K2NxOGE5WHA3b3VjaDJ5UEI1TkttODE5N291L3VZNVI4cjVKaStYbjNEZm16?=
 =?utf-8?B?TkNkWE1rK08vNVYzOGQ0M0RDbVowOWZ2UWxPb3luVm1DMkcwRkNOSzRBRDhP?=
 =?utf-8?B?aVlndjVkL3FGSzNqUHR1aStXb1FXTVVRalFpSTlxbnpmcllneWJuL281cDhY?=
 =?utf-8?B?NlFnZ0lMcWJIdmxQWFlRYnpFb2RIZEpHaEVkRzdUVGFSaEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHFoUCtsdVZGbVdoQ1VvWXdkdW5Qbk5rWTVCdmdNYWNWWHM3ZWZaTU5qRXB0?=
 =?utf-8?B?RVJDQkFia2NHL1lleU1MRWk1YlVlT0dTQ3hLdTEwdnpDcmZqdExvTktrQlFo?=
 =?utf-8?B?UTMyaGZ0c256TTFNaFhSc3liWXZkSzZKRm5yUThHRTd3MGJ5b28zQ2ROQTA5?=
 =?utf-8?B?NWwwMDBlcjBDeDNHTUFNSzNZVFMzbkRYdTBPMjJLTHE0SGgxcmdrallUY1BU?=
 =?utf-8?B?RW5SRXcxL2FLM0dwS2hoenVidVBVaFdKOGtMWVhSeUpYUU1LSmZMb1FlL09X?=
 =?utf-8?B?ZlhveElvTXZWMGJIeFpaZ3BobFdQYkp6Ykl4RDlBT0QyZGVoREpvcDJFT1A1?=
 =?utf-8?B?RVdtekFuL3l2Q1VJTFk0VGFaTHlLUnF0eVNKTzliakxXRWVscUdFV1pITEJO?=
 =?utf-8?B?UmtxUVV0dkd5VDVlaG5EbXNJUG0xcW1qMzVzdWxiTWtyMTdhTkhteThVbUxO?=
 =?utf-8?B?K3hyKzFWTUU1MnJEZCtxNzk1OXVHUEZRQ0tzWXZOcFZnYmtlMW45WkU4UGxq?=
 =?utf-8?B?VDJGN0RxdXBkYWdzYTRCdzNlUUtCdHdZbVREWk1aKzZBc1hTUENjdjJwV0Q5?=
 =?utf-8?B?aUI1WEJLUG5mTkRwZGlFSkt4WWd5djErQS9BUTNCVzFYL29GWGFUY0lrL2pZ?=
 =?utf-8?B?MnBrRzJ1c0JBbjNmemp6WUdzWXI2VUVmb0ZXanFaNGYzamNyNzkrczVPemRm?=
 =?utf-8?B?UGxZT2pmRDJMY1hwb28velAvRjFjV1FQdFRMVkJQR1YwSldxbkgrL3ArRkpZ?=
 =?utf-8?B?UnY1VHRHV2wrZUZ0YmZtR0U3bUxNckVXRk9SR0tISEEwZnZYODYxYjY2M1FK?=
 =?utf-8?B?cHE0dVRJLzk5TWRPZ1BBdmZVTHl3RnVRbTBQdVZQR1dXMVVCRU1yQjE2SHBi?=
 =?utf-8?B?YU1vUFVUb1Nzb21za0VFT2Vtbkwvc0NOVU04emw3eVlzcUcrdnVQYnpWRkpC?=
 =?utf-8?B?cS9PWldwbmZ0amNmRWFzU25rM29tMVN0bmZTbUJGYzVDeUYxb2FKekFMY2ds?=
 =?utf-8?B?YTVaSlZyMld6dndaOHVIV3VsU091Z3puL3FjY1dITUZRSXlJVUFmSFBGZUN2?=
 =?utf-8?B?K3lKYmsvYmRydGFTQXR1Z05Fc1ZJalArcFkxUFgvSzloVFA5WGM3QktmSU44?=
 =?utf-8?B?Nk45Umo2V003STZHTnFoM1FHNUwxa0lUTnh6R0wyNTQ1WEl1SW9YSnh3S21D?=
 =?utf-8?B?MTZHVEI0ZEcxeFgxbnRndEYrbDgvWFA0OVRHREZDVkZvNXlpMUoxZm94R3JD?=
 =?utf-8?B?RlcwemdvY25NaHY1dGFpMHpzTVRCTG1HTnYwRmR0ZVBjbWc3U3o2L3FCQ0J1?=
 =?utf-8?B?S2VRaHFjdXFudDRZQTY0WUhGUUo1K05IaUx1TE9kcnc1UmJXa0JzTi9Qa0Ew?=
 =?utf-8?B?SzlCeUhDUzBVN2cwdXhOTkM5a2h3K2FtNFg3ei8xK3RhbGpEZGJlR1JXQ1Rs?=
 =?utf-8?B?dUtBZ216S29CNWdsdERkRFBIaHZlMVp3M3V5cWdmZysyMkUyMEV6a25sbWlI?=
 =?utf-8?B?YWs0SXN1cklMUEYxT1grYlllTk0xSjRrVUh6eE5ONkVwT1puL1FZaWtONG9y?=
 =?utf-8?B?UUpSVGFOSHQyYk4rSE5xMHIyOEZ3R2tPUDJrT204eDV2dTgxa01qWUlTZHZL?=
 =?utf-8?B?Q1JmQnp3bUlUOHlLSks2MGVmVlpCYXU3dk9mNDB3bGdaWWQyWmV0Qk15akZH?=
 =?utf-8?B?WDl6Y3ZXSzNkcGdqSEVIWGhjRjIxUk01MnNiSFgvQTdPWHdZbkpwekhYMGdi?=
 =?utf-8?B?VHd5TGNYd25maG00UUR6MWpoVFovUUhOOVJKb0U5eFVjZEgrMm5ZTVNOSERR?=
 =?utf-8?B?MThaS1RhNkYwdlhWYXI5MFViRy8vTFZxKytVZXovcTNkRlJLakQwWjA0QkJp?=
 =?utf-8?B?ZGs5bEMrS0cveVpQTkNzN015SkMxWjZJdUp1b3NlYlZmakhjdVNsa2JNVmZ5?=
 =?utf-8?B?QVk0ZzhtcEczck5NS2RZR2RyRFRoWUw1UnVISkIrWU93ZUd0dzMwaEdwZnN0?=
 =?utf-8?B?RHlYalBoeVFDSldpd1ZmNzdvbHBVazA2Y1BLaGhNbnB2Mlo1ZXFOaFUzVDZ3?=
 =?utf-8?B?a0t3a1JpNUZMTms5b21pRmZWMnJkMk4xZHFsZk5VTHRoK28rby9nOVM5OXNU?=
 =?utf-8?B?UC9DaE1Lc2dSYk9YNC80TWhqRGJYRXpvR2dNcGpzaW84RE9aazAwZ2o4MU1t?=
 =?utf-8?B?MWc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75b2b442-2da9-43cf-8329-08dccb246d9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 07:54:09.7835
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xY77QcpNnolaEE8uPHIh4VtOQXDLfCT7KXMUuibYV2daIxcHFXLSWoNVE9IRMHKWmiUoGZNSHJB/ITIHR3rQZ1SJSv2UUyKj2/qnG3NzGik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB10110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_005425_139401_A6F619DC 
X-CRM114-Status: GOOD (  33.72  )
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

Hi Claudiu,

> -----Original Message-----
> From: Biju Das
> Sent: Saturday, August 31, 2024 6:14 AM
> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> Hi Claudiu,
> 
> > -----Original Message-----
> > From: claudiu beznea <claudiu.beznea@tuxon.dev>
> > Sent: Friday, August 30, 2024 9:23 AM
> > Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> > RZ/G3S SoC
> >
> > Hi, Ulf,
> >
> > On 29.08.2024 18:26, Ulf Hansson wrote:
> > > On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> > >>
> > >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > >>
> > >> Hi,
> > >>
> > >> Series adds initial USB support for the Renesas RZ/G3S SoC.
> > >>
> > >> Series is split as follows:
> > >>
> > >> - patch 01/16           - add clock reset and power domain support for USB
> > >> - patch 02-04/16        - add reset control support for a USB signal
> > >>                           that need to be controlled before/after
> > >>                           the power to USB area is turned on/off.
> > >>
> > >>                           Philipp, Ulf, Geert, all,
> > >>
> > >>                           I detailed my approach for this in patch
> > >>                           04/16, please have a look and let me know
> > >>                           your input.
> > >
> > > I have looked briefly. Your suggested approach may work, but I have
> > > a few thoughts, see below.
> > >
> > > If I understand correctly, it is the consumer driver for the device
> > > that is attached to the USB power domain that becomes responsible
> > > for asserting/de-asserting this new signal. Right?
> >
> > Right!
> >
> > >
> > > In this regard, please note that the consumer driver doesn't really
> > > know when the power domain really gets powered-on/off. Calling
> > > pm_runtime_get|put*() is dealing with the reference counting. For
> > > example, a call to pm_runtime_get*() just makes sure that the PM
> > > domain gets-or-remains powered-on. Could this be a problem from the
> > > reset-signal point of view?
> >
> > It should be safe. From the HW manual I understand the hardware block is something like the
> following:
> >
> >
> >                   USB area
> >          +-------------------------+
> >          |                         |
> >          | PHY --->USB controller  |
> > SYSC --> |  ^                      |
> >          |  |                      |
> >          | PHY reset               |
> >          +-------------------------+
> 
> How USB PWRRDY signal is connected to USB?
> 
> USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.
> 
> Is it connected to top level block or connected to each IP's for turning off the USB region power?
> 
> ? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)?

As per the update from HW team,

"SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from ALL_ON to AWO (or from AWO to ALL_ON).

Refer to step 8,9 in Table 41.10 Example Transition Flow Outline from ALL_ON Mode to AWO Mode.
Refer to step 9,10 in Table 41.11 Example Transition Flow Outline from AWO Mode to ALL_ON Mode.

When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break."

Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux? 

Cheers,
Biju
 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
