Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A44CBCD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 11:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/LYOokWbCZTyrRAumUW1AXkjlcgn80PuhAP1ZYhX5w=; b=xuOFWqx4PGDK7h
	28CLdHhwIjs9oT0oErgKEXmunSZgLi7gMAUJyb6TGbWJ83AXSCFM/z/YxY/YHS4VYNtbPe8l5Klif
	8+cANPQMbd1lnP1JYI94CLYcAtmtWpsaYXbnMdSx4mhwkSWh33fYwGvDPY3DFDb8iHvcZ9C4yTV++
	Vistq0ISlsmSA5fyhscumXg5o6vfrnEJgOE8tjzPUY3j9mnQLNV1oy0zFs0ovnq672BM+32RO9OaS
	pB3u0sljXX6yw2IXMClJ/JGOEMDqqMsgih3Euz/5CL11wTlMYOmoGiLcWF4MhbIu7NY7q9PhJXaRE
	Cqa8yIVp/oyY/k8yiP3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRNj-0000000HTPs-1XqS;
	Tue, 03 Sep 2024 11:07:31 +0000
Received: from mail-japanwestazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c406::1] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRNg-0000000HTNz-0PYf;
	Tue, 03 Sep 2024 11:07:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ted2mS9wFVk6Np4E+rMLwINF1OhmEvKKqiTAJJPC9IjLSdU37a7+SElXSuh1cVGAld3h8zlW9uMp1hqw/i6xlYWwD98LGpIJZOXcMd2UkQPhoiBhRX+eSHod2MEPU4uGmlT5gUaaTBaPx/ZSUyFDBL9i/pw0agiQapzDFIOUyHwiIyB4+9p53kWwB4mhbWq+so/GOpkLmfJQohAfNidIiUrUFKSr0PFWXzyoGC5suv78ICTLNK4CDfcGU1AOJ8OkbZ/A6MNFAZNPaOEyjM6oxRPE35/2WoJ30R03JeXcy8FItiagEYx9iQqlUYXvkte7yzWbKzht/9//fa7JC2URig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g6rufKgm5s0eEcSdaHJGh06UiapUdBkSvCM+W84qVP4=;
 b=SqLoHke/o59UeSEEiDc+V8mWZEe5GRblo6hdVsR8Snao+xHXYFR4oxEMaEUsABkXDSRHz1tzqv4DyDAGcc974rzkIpLzzbD0sDAdz3d4LCsnq/7Uj9YvkLJcgCg+ps8ZBfVYNQQQaP6BKbMmJDtsw3Rte6TYyT+NmPpp4j5q6eu8qLEoFygHpNZgOT2EDFVH0rhz+OfPvCfbW0MwZb49eoGkrRodfBva/Bq20drGjWnwjUKNiy5r+1xehva6u2rRWzgfxM79mTS8uIwV1V5bu8tMPaeqv6QqHNMsrjKcNDkqC8lv13OUGC59qld/x2FwqOq5E0VTCExrIKh0dCWeeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g6rufKgm5s0eEcSdaHJGh06UiapUdBkSvCM+W84qVP4=;
 b=SI2TxdjNo601tCcsE0cfarc7Yk/vmmpF6tAWEG9dKC26OXgNYgWxK8bPZq1kCzOOGbsTAw/8DNFlbv5i7pDaIM7vGRD5YLWbApbpmEmYdgWyWbClKD9K3zIDzzGxlkhNIFZHBihU+o1XTmPxaWgoqAic/cNR2RhyEU0bDs0QlmI=
Received: from TYCPR01MB11332.jpnprd01.prod.outlook.com (2603:1096:400:3c0::7)
 by TYRPR01MB12190.jpnprd01.prod.outlook.com (2603:1096:405:105::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 3 Sep
 2024 11:07:06 +0000
Received: from TYCPR01MB11332.jpnprd01.prod.outlook.com
 ([fe80::7497:30af:3081:1479]) by TYCPR01MB11332.jpnprd01.prod.outlook.com
 ([fe80::7497:30af:3081:1479%7]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 11:07:06 +0000
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcwgAFU0LCAADjlgIAAAKQQgAAJGICAAAE9UA==
Date: Tue, 3 Sep 2024 11:07:06 +0000
Message-ID: <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
 <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
In-Reply-To: <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYCPR01MB11332:EE_|TYRPR01MB12190:EE_
x-ms-office365-filtering-correlation-id: dcf453ec-c716-4a81-1e29-08dccc088c37
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U291TURseEJydlFRb0MxVU85dmtBc0J2Zm5KbC96aVg4SXJuTWM2VjQ0cERL?=
 =?utf-8?B?VmVoSUx5VnN1cmlGL2tYaDBQMXFZYjAzeUdyN2RnMzJ3a0p6SDRlY0pOT2JT?=
 =?utf-8?B?dUVPcUNOZVQ1T0Y5clBBQzNGUUhPVWs2YUZYR3AzV2g1ZEtwQnBzRG5wQVJj?=
 =?utf-8?B?OFAyWVIxYzFFazBxVlE1TTFaWHE3Mks2V0N6QThxM3lCNytpSytxY0F0NFlN?=
 =?utf-8?B?NmozQ2UrM3hlQVBZVzBVYWJ0NUNSRnYwaEdJM2FFSEJ6M3RINXRObGlPRHVG?=
 =?utf-8?B?cG5oQXh2QzdVNC8yWmY1NzBINmJpOVZ3c1p4K1JNNHRUNnM5dk1FQkRGZENJ?=
 =?utf-8?B?TlVTbktFdzZiNG0xZW92dzczQWtMY2ZoVEFVUlhFd2dSVkZUSFR4R0lvNzM2?=
 =?utf-8?B?bm0rc1QxTWphK3V2MmR5OWMrQnJ2WHU0QkdLNHA3VVVENHFHNU5nUE9uYWZ6?=
 =?utf-8?B?WEcrWjdaQWwzbnV1U2dpV0pIRnN3OFF4M2dJWXlYakVISlI4d084MGlQcjk0?=
 =?utf-8?B?NVNucTRlYUw2NUQ0UFVsUkZKU1hZS24rZU1FWWZQYUdhQTVXWXpKZzl0Qk1m?=
 =?utf-8?B?RDQxUWQxN3FyeGJ3SzcyWlYxazZtOWNBQ1E2V3dFRjdMbzA0OW93cEI4Y3Rr?=
 =?utf-8?B?alE1eG5VVDhybjJNckZaMmRTWUhxb3FEZ1J3ZkpLMEljV2hGbk1iQmEreVJR?=
 =?utf-8?B?YmY4dmVtMkdsYmhGQ1oxa1o5RHAvWGRKajgva0I0aURXeW1SS2NaaDNFeHdZ?=
 =?utf-8?B?aUhVYmNaZmtkYXlRY21reDJKOVNsUUovdlRxNU5pS0pwYjlvRE9oZkhPVFpB?=
 =?utf-8?B?YjR0ZDNGQ0h5QWZmTWtvZ0JrSkU4OHFTdXNnakRRV2F4YnQ5MTBzRSszMGFy?=
 =?utf-8?B?SExXQlpjU05qbTBzbElyaTVwK0ZSRFpnenRIUWl3MlY1LzdkZ1ZEY1B6d0dl?=
 =?utf-8?B?enZTRWVYTDZWZDFDOGVUZjJBaUJQcTJVNVQycG1VeUFBdG1paXRtdlc0U2Ux?=
 =?utf-8?B?UWdMalNlVElkTWxiblh0VWlhVWoycTlmdmlKdm05VTBycmxLd1RaNFdiNjJp?=
 =?utf-8?B?dUJEcDlxTlpranh3dzZYYnNBdHVhU2llejdYOTFrQWNGNjd0VTJEb21wVXBC?=
 =?utf-8?B?TDZRRXVhaHRta0JHODR0WncyNWxDWmx3N0R0a3ZLZ3o3amtuWkVXMm1vNmlC?=
 =?utf-8?B?dmFqajMwY3J0VUpYZ2VMK09paEhSZk5yZmtJcXhyWGVDZGVKOE4rMG1Wblhn?=
 =?utf-8?B?TjFCcEJKTmZvclVRbzE2anI2RUVhRXV1dkNDUU5TVmRsNGlDbTlxQnMzaFF3?=
 =?utf-8?B?dEFZWWFtZENMd2N4YkdYZHl3SHc3d2NQMlJ5VVBPVFZKSjNjRkhqVDIyV0RP?=
 =?utf-8?B?cDhDcmlSbmdUcWQyd1RySC9KdjVpVkJoQ1ZlcGk1Y3VMRWI5Z1Ara2xSbXBt?=
 =?utf-8?B?YXZ3YXNrNDUvcVl4bmdCSjJIWVU3ZGFTTlhDYklYM2hVL041aVVTZXNIWFJm?=
 =?utf-8?B?VTRrdXhpK2xTdUpoMi9oUE5xUXNzRmFFYUc5cW9HQXdMMTh6T3doZ1VZdG81?=
 =?utf-8?B?Y1Y0amU5OFVYdzhHZEFuTFZOODdRQ1NpVGhvdTIzZ3FnaXZyaFI3YUE3VExC?=
 =?utf-8?B?ajhFSDJPWGFmQ3BPVGdzMmhUenFtdlFEdlczckN0aGdKajVXOWU2ZU9Ea1Iy?=
 =?utf-8?B?WFFPbjY4U0tNNFpoaHg1Q2lDa0RQMkZ5R3NzRkNiVDNYNGU5dWczbjNPQS9h?=
 =?utf-8?B?UlUyQ1ZqUFRGSytFdzNsV0dKQmgyaXlKaFZvUUpnUzZSZ3dCQlJtSk1Idys4?=
 =?utf-8?B?ZG8rK0lKWUIzUjJSQ3BrZnNRWERrckJDV2hEdHBOa0s2T25pZ0hWM3VSeFkz?=
 =?utf-8?B?TlRFWjlrK3dLVVZCRG1FNEp0OHQ4enB5b3lKQzZ6RHEwNUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11332.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODhtd0l5c3hCZVhBdjB2b2l0amEzeGc2cFRVUnNXOXJLUUc3TTNUcSswUGZq?=
 =?utf-8?B?VzBZM2JhMjd6Q2swMG1kM2I2dUc4bGlKWktucXdzZFZLMXVRYVAxK0R4V3ds?=
 =?utf-8?B?UFI4TFRLWmF3OHVSdzc4Z3l4YU9GYyszZjgrV0NRblVZUGNTQXlpeFloVU1L?=
 =?utf-8?B?UzFaeVBMNC9Sd2lEd1FoQXdmK1dqMWJKckpuSFVObWNQNjEzdW52STNoeHBn?=
 =?utf-8?B?QkFmNmJ2Rys0dHplQmlXekw0Z1h4SHBuWHZMSnRnWUhvaUowUkpuV0Jvdy90?=
 =?utf-8?B?cHZITXlWNFNJYUE3MjNLVS92ZUdzL3FEaEZaMUorV2tUTWlUQ2pGOFFKRWd4?=
 =?utf-8?B?NlFFMmVvdzQxMjFvRFhtdENUWGU0WGhvVUliSFJUQ1pxM3d1cFpRTHd3VnhF?=
 =?utf-8?B?WHVnbkpQNXgvV3AwZnhQdlc3bmorLzJRL3I5Z2VQQjduMHNGN0dNdzArWElj?=
 =?utf-8?B?QUhkWWMyQ21pQWZvT0haU2xWc2xHM01lT0ptUlM2NGMzZEs2ZmdNZXBQOVZD?=
 =?utf-8?B?V3lQazI4cWtvSkVoUHUzRU1YN2tBS3JQU3NaZytkR3o1WDNPNG1Xczd1K2Ev?=
 =?utf-8?B?bHBTOEROQThQM3BFRkNpSXVsREVybUY3NkwwTmU3NWZFUmM4Qk9helkvT2Va?=
 =?utf-8?B?MkU3RkhpdzNGUEZJRHJBVVlGNjFZbkpLZGp2Q3dJUVF3V043Rk82eU9sdnBv?=
 =?utf-8?B?MHRTMmtSM1Z3ZVJiNHdLZ3U3S1lxQUM1RW8zOHRyeXRIYk9uNlJsS2t1Y3Rk?=
 =?utf-8?B?R25vWFRHRnZudURoNkJ2UkZ5YUtQc3lvbWdnQ1g5WUhvSVMrNEViNHUxRlFE?=
 =?utf-8?B?eXVBcGxydUFYZTZTbFNSbnRqdHMvVmNETVZUTmlZNU45clU0dUYzUlJDdUpk?=
 =?utf-8?B?aWNXRjBjWXRJU0hCU2lmRms3SnI1SC91TU9xU2s3RkpXVTVmRkdJaDM3L3h5?=
 =?utf-8?B?ZXN2TVFxNFJJVXB3VElXejJiNDVCTTNaQnRUWGxzT1FhSktqUVdvM0NVeURD?=
 =?utf-8?B?NHlURnFCRUlDdklxRFdMOGwzVmhpMkRFWjJ0Nk1rVzR5MnIvUE1Wa2ZXWE1u?=
 =?utf-8?B?K1hBdEh5RUJKU21PekZMbHJHSURHL3BabUFoUWNhVnJYaEg1Sm0wRmkrUzA4?=
 =?utf-8?B?TDdFTUNxUGZEbVdPdjB5T0VhZTVzUjlwVU05L0tvWk9GMTRWVEJYVGtuL2xw?=
 =?utf-8?B?eDFhNGhaZmQ4b3FXdGk2K1RPQzFEU0UwY29WbW44RFJKYm5SUnBWK0RqeTJF?=
 =?utf-8?B?SzE0ZWkrb3hXdkpjRDU3L0tlaXBML1V6djBRR1lsTXlaSUkwb3J4NHRMTkVm?=
 =?utf-8?B?QThOUTJpK1ZLWjBqMi9xTWtMM2J1Q2lHUnVnUWkvSzR3ZzloTTU1dG1YN2ph?=
 =?utf-8?B?QVo3a1Zucmsvb2RJRVJES1JmblQ3MjE4a3BrMklXNk9KVzdGL29uNHBXZ0lQ?=
 =?utf-8?B?THZIRWphakQzRDkzZTdTOWVlU2ZIVGJ5c21iWXEvZndzV2huMjhqSzlONTh3?=
 =?utf-8?B?TUFjN2pJWGx0VUs3RmJHaVFkZXYyT3dsOFBSd01zaWR1bFVRdkFEaHhKUkZk?=
 =?utf-8?B?Zi9vNkxsQzB6Z0JHRk4yRWxUWjI3RTJhMEU1SnI0RkhXSGt1RE9lN1VJT0F2?=
 =?utf-8?B?ZTd1YUJpUnJnaGdWaFBOaFJtQ2srcTgxZlV4d21wQ3R0YVZaNDVJU2NDRW1o?=
 =?utf-8?B?SWR0NHhlS3BxaThwUmtDR0lqZVBSZXp5YTh6OXZiUVhJR2cwVm5LYUJjZTdX?=
 =?utf-8?B?YlhTOVhwS3Y4Y0FxVTlvT3A4MTJNSG5IK05Pczdpbk95eE03QWlmdWZYTGY5?=
 =?utf-8?B?enp0TFU2K3NGRGtBdlpqcll0QWZ2Wko2ZUFKUVdueXI3ZW0zeGVPY0VIZ0l1?=
 =?utf-8?B?Q2hOcWxtdzdpWmExYmZ3M1dZMGxOaFBaYnJVWmtTUlE1cGRjZkFEdFYrQWRE?=
 =?utf-8?B?UG1CaGx5L3FaMU9vVGNVZllVWFBVSmxmRFV1eGo1dHY0SFRhZk1vV0Fhc29w?=
 =?utf-8?B?ZnpRMks1M1N1QmRJcG1mQlV6R2c0ak9VL2NCdFBwNCsyeGQvVkhsM1RDZjUw?=
 =?utf-8?B?TGpxa2ljS3E1ejkwWGtrVmNlN3BabmlrQlI0Z2NMbFhCUVF2YjIyOENURzRO?=
 =?utf-8?B?VzhscXd3dE0yVVlJcXV2R002U2FLam94UE13WlIvMHF2WHBhYk5DdFIxNk1S?=
 =?utf-8?B?SUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11332.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf453ec-c716-4a81-1e29-08dccc088c37
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 11:07:06.3388
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J5Ts4DWihvtXuKizawA+ekFxIp7Y5Zvo4xGdu6BghhsBdHML2UIhFicL4wnSE0O2CHwrf1x1E/IQJcLncX0wDmN0rUA0uQvHTl7SJbD79LQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRPR01MB12190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_040728_172205_A8C4055E 
X-CRM114-Status: GOOD (  17.96  )
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
> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> Sent: Tuesday, September 3, 2024 12:00 PM
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 03.09.2024 13:31, Biju Das wrote:
> >>> During boot clr USB PWR READY signal in TF-A.
> >>> STR case, suspend set USB PWR READY signal in TF-A.
> >>> STR case, resume clr USB PWR READY signal in TF-A.
> >> As I said previously, it can be done in different ways. My point was
> >> to let Linux set what it needs for all it's devices to work. I think the way to go forward is a
> maintainer decision.
> >
> > I agree, there can be n number of solution for a problem.
> >
> > Since you modelled system state signal (USB PWRRDY) as reset control
> > signal, it is reset/DT maintainer's decision to say the final word whether this signal fits in reset
> system framework or not?
> 
> I was thinking:
> 1/ Geert would be the best to say if he considers it OK to handle this
>    in Linux

I agree Geert is the right person for taking SYSTEM decisions,
since the signal is used only during state transitions
(Table 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)


> 2/ if OK, then we should get approval from Ulf and Philipp on the power
>    domain or reset approaches

Ok.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
