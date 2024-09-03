Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14660CD13CF
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 12:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM1qCOidUOwHqmcs66a50DPcLgHPienFHiyvWkaBecY=; b=TZoPb0VitGJs2+
	8YD+agkmzbK8Eu041Ri4oM04PXrNQzLwXZxWI0p8bTseZxR2hOGRWZmx7jBXDJkzOxDnEr8eqzwUS
	/9sSCGqLvhVrrf4YVrxgS11b1QIFr9yEf2ee0QkG4CN94qdER3aCasF9YgKKNsRBzfmR3u1SsWayu
	IPHTLqZCS7pj4VirWlTdVoGSOozllct0ope5dgo9o6SZObnIFPvbS6FNYX2ksNMXGoZWijOAH0CZu
	hW9fOgyZmu3XSt1YmBxlB3GI3V1pA+Aa7v/EFLbHcidAeKDBW2jSiyb9v79U/XYJO5r1dgHFN9f6H
	yVZNZYMbi0w/kJLFZ3QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSDy-000000003Xx-2xeE;
	Tue, 03 Sep 2024 12:01:30 +0000
Received: from mail-japanwestazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c406::1] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSDu-000000003Wo-42So;
	Tue, 03 Sep 2024 12:01:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8Bau3QWps0U+ZbM6IXiVnOo2iyv5lDbGI93QeYGdWNq584aI/wmIpmQNWrhguKROtYsqn7fNtuuR4G1zAjAW9ynujLW/8iJ+VYdsPS/Se/XVZfsHE6sb0LMjdiG2EtvRHytHXzXqRhKYx63+AGnjR/nGFxaDPQz0v7JlXQxa6sSAISC+LGc1sohlHSjrGb7txAhBNmU5JNLSIRRi8P0vKzWTF730/FsRVoyT5vQ7xiuXI8WRjTlxRRpwUILvxlD3PcaQTpTL7f+vdULAiLtLyrOTLSF4vmpKBa2LOyWWqnM3HBZdDwI8qhULh/vuSmK4dIfxE7vB0TMeFnVIuqyqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UJqoSiyJvTkNr0ZAV0dh1uEIP9PYBCtWh2iySGqkAQA=;
 b=HzbZSUVLo547EjwbwoeW1Wh9+OSV/Wl8p5mxfFlyd8ySvXJ3jYcPhT7iRydVT2BQz0wyqr7hJyqDqvhKbb0whaz4PpaNldsGGzTdAMfIWsS5tgSw4AMzOu/TO6JIWPdO3E5XGDxOtVDqu/N9qlZZcLoP24ECX1KNtqUHj6IghqJbdd7z3RC4Vrn0q8hM3JrfpAIMdXIuu6B53k9OOO073tt2DWMZUMEqmP71rFBrOgOWRcc8uG9ydqTuxotJ8doVETLqIZeiGErRJw5zzE8Hnm09lOkkdRA+63D7L0uZZbY+8jL1bbyRntwHYAO9EGZu3/esoJAQl55LTkWZ6k+jLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UJqoSiyJvTkNr0ZAV0dh1uEIP9PYBCtWh2iySGqkAQA=;
 b=oGcJ8LZyuduw+tN4i2DsCnSaRTwKvk2K7Rfu5wvzRZadQG9OE2mR680gg0keSmfG2w2f3HRfaGt0gQp97Q3pSAGYpqJq7c/3h4LFY9cbCEpc/G7oCkdk9CXSdFKgaxAkd9XEXvYmAoyIdkhL/XH05MbT8IvkG/WK5Lddqamb2PM=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS3PR01MB7334.jpnprd01.prod.outlook.com (2603:1096:604:14f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 12:01:09 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 12:00:59 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>, Claudiu.Beznea
	<claudiu.beznea@tuxon.dev>, Ulf Hansson <ulf.hansson@linaro.org>
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcwgAFU0LCAADjlgIAAAKQQgAAJGICAAAE9UIAADyWw
Date: Tue, 3 Sep 2024 12:00:59 +0000
Message-ID: <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
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
 <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS3PR01MB7334:EE_
x-ms-office365-filtering-correlation-id: ddfb368f-7246-4681-6e29-08dccc10133d
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VFNJTW1wSnJybWRUR2ZWUEJ5SzNSdFRsR0IwQ0E1bFhMdFRnUlNZV3dvZGhn?=
 =?utf-8?B?MVRZTzZKUStEUXNoTFVuUTZUdmdpQlVXUlJPajZBdXBZSnowMlROaWZjSTdG?=
 =?utf-8?B?VklKQTB4Rm1hc3pmc2pRL2ZpZFRkS3VGWjh3VnJQNkFRNkVxZTBXY1R5WW92?=
 =?utf-8?B?UlRqS0FMVnkrVVViVCtXME9UbmpVWGdwdWNLOUNKeXBjSkt5WlJuR0owUHZT?=
 =?utf-8?B?V3NUbXNIUkxvLzdFRlM1d2lOckFZWFlEZTR4ZmJ5TWhtVThuUjRsbm4rdFFV?=
 =?utf-8?B?L2VNdmlJektOWGU4V0xDRzBCRWVqcnRoUUxyNU1iTVkzS2dyenU0ZEZ5Smo1?=
 =?utf-8?B?TDBMWlRiTHM0aWRrc3dvQ2M5R0dhWXVieml2OHg0eFFodFJtY0R4R3RIejll?=
 =?utf-8?B?MlBqRzZXMGhnNXg0d2l4ZDlQWGlmMEprbTFQMWhidkNCS1JMTnF1bnkxMnBT?=
 =?utf-8?B?dDN6K2wxb1BSTlJ0SExLdTJ1cDEya0xXZnlraGRWTXV5NkhuRnhoRHI1NThs?=
 =?utf-8?B?R2trTUFsTVkrdGtpeER3dHBuZDFEZ2ZycFllWlVsNDRtYUFCMmUraHAweE1Z?=
 =?utf-8?B?OGZWSkhCM0pMZzhUaEFLQWRvZnErckp5aGIzV0s4cm16RitFamR4TDdWNThI?=
 =?utf-8?B?elhpK2dZTG55UzVUbGg1WlhHUzM1YmRBZ2orMXN4NVljREtWSmJOd3RVMTVJ?=
 =?utf-8?B?Q0ltNVFQL3dWalNpZGgzK0xMMStlV1ZPUGZ6THFiQXNFaWF3djJWM09IK1Nw?=
 =?utf-8?B?UkxyZGVFSFFoQlRQanlpQW9XVVkwQlBYazFpdDBOOFc3dHhVMFFrd2d6QUgw?=
 =?utf-8?B?TStmdm9ESmRzdHRBNEVQcjJHVUR2ZUVneEFHbXZXZHhNTnJmMUFIbkg5ZURn?=
 =?utf-8?B?Mi9ENWhwYWFpVUcyK01oMDFPYjBKeTRxUVp0WEdCWm9wWjRZeXVpTjZoNCtT?=
 =?utf-8?B?THVEWE5iaFNXWG4vRkdVb2dCU0FrYzNLckdnaEJMcmtCbURJaGdIRUdpV1ZN?=
 =?utf-8?B?Y2x2b1ZVNk9JZy9la0twNmhKd2x1Njc4cWpRVjc0WlM0R2ZBay9taFFCUkNQ?=
 =?utf-8?B?REZFc09QMEtWQ2JHZWxqa1lCay9XRDQza3hPRmhYQ2dyTGpaNXdiRFhNbTZj?=
 =?utf-8?B?MGhhM1k1OXhCOHo4T1VqbHhyaisrNFg1SG5VblFDcTVsTWc5OGRzeENON0ly?=
 =?utf-8?B?TnhPdW9VZFhVdGx2bTE4bmg5eGZIZ2hPVXhRRmg4MjNtV05rdW95VDJXeVEx?=
 =?utf-8?B?a2tyWTFnRmxUbG96R0NYZnlSMnZFN2JIZ2FLRTEyTGVzL2RYVXB1WllPbjJ2?=
 =?utf-8?B?NVFHaVUxUjVUNDUrUXYvKytDVlRLQVlzNlAyN2VHNjMzMGw1UnpwbWM0dFpJ?=
 =?utf-8?B?YTNUSGRHdXhWWDd0OUw0K0dEL2Zvck9wWFdPdWk1YVdwb0RUV2QzOXl0RWRr?=
 =?utf-8?B?VWFzN1Y3SUtXSjB0TFErM0RvOEZKYjl3KzQ1T3EyVGY4NThKVWZ3QlNZTG82?=
 =?utf-8?B?NlBVWlVWRGhJaVVHTlcxU3dDR29FWEd4TjNUcnhvd1ZObG5pYmdibzNGWHda?=
 =?utf-8?B?VkRyWHMzdWVKN1VFUkpIc0pPWkp4OGtWUkIxSDFvYUlDb3VHeUdWdHZSdDZR?=
 =?utf-8?B?bFlYc0tDcm0ycFdTaFpmNTdjNW1ocmNIQWhmWmF0THFreXVadUhVMkJVcEN4?=
 =?utf-8?B?Sm1XRUtMdDRGenhUT0s1TUE3OHVkV01HcW91WmZFTDJkTjhreCs5NDlidjhp?=
 =?utf-8?B?S2RhUjM0aFRnaHFRdEZvVzYycUZLekdkMkVaeUQ1dTNzUUEzQUJldUsrSFEr?=
 =?utf-8?Q?JdMEui/ZDeBgwtNkfm+kqftnGUfJ2tfPRmFa0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VnNzaW93YnBRNWhBMjNCdW1wNW1uVVVkUG5McklrZ3Y2bEZBNHgvT0dycitw?=
 =?utf-8?B?eGhsb2RNeG5KSkdyOHljQTFDdDZadzducEh2SFBNVEwvbUxZclhBR3F4Tk5O?=
 =?utf-8?B?SmdDbllLMnpYY0xObWZHejZrOWNYbHpqU2QvbkRQOVhJREhnWXk1dEhHcUFx?=
 =?utf-8?B?Y3lzU21hdUNSRlVMTDVURUVYdW9nQk1uK1pySWZFWFM3Z1NWWlJGUmdLLzRw?=
 =?utf-8?B?cVJjT2FkZnowdnFicE83TndUZlJmQ3NtZTZDdVlOSEdjNG00Wkh5WEp2VU5R?=
 =?utf-8?B?TVBLZHBpWkt0eUtOMUpZb2MyRlpIMktNSk1MdlQzbkk0M2h1TGs5Mlc4aW5a?=
 =?utf-8?B?UCtoZUZxdDg4U0pqK1hEZWhwd0Q5SGV6SlpOQUwzZkVvc05rZ3BrM2phOCtS?=
 =?utf-8?B?MnRUSGxlUktXNmhiaUZJdTFPOWdLeDl5UWgrNGIvS1lTcnRBdkh1ZTBBaC9J?=
 =?utf-8?B?cTZRL2F4eTVFVHIzWmdVdFMyTEpQK0pOU3hEQXB6WlR6Z3JUaFRLMW5HNGFp?=
 =?utf-8?B?UThUb3pja3BpcVVVeThkNE1kTkx2Y2FjY0x4aHlucFBGMDJpZE04U3RuNGJz?=
 =?utf-8?B?WDNLVGlHSXl5VGo3RmZkSGVXZnFIYjhMWWFJTVNtanpuOGFIYk52VldZVnBj?=
 =?utf-8?B?V0pGenBxMzc3YlhBK3pKa0tmMHhPcXZISldiVlRzWjhFaHU0dS9vRFRQR0hw?=
 =?utf-8?B?ZEhBdFBCT1ZnNnJSTDhtTFc1My9XSnFQUHdBVnlmdC9UQ05hdjZPMkt6RHcw?=
 =?utf-8?B?R0hWUDFjTXI4eDlwNUtQY2ZpY2l5QkdNVy9IelpWTHd4V3YxNi9xQ2hqMzg3?=
 =?utf-8?B?R2RGckFoMlpwTW1tWlJLRVgrTTNydU0wTGQyeEdXYlZ6NzRkVmphZ0V0OVhv?=
 =?utf-8?B?OHY3R2dDZ0FPUUl0cjUzcURLOGx5NGpvcHVzZlk5anFnM2kwOFBPWE95citP?=
 =?utf-8?B?ZUdWSS90eDdYWldhT01CZ2ZKVDQ4aC9SWVVZWXU1bVQ2VWJWY0pGWVE4TCsz?=
 =?utf-8?B?V1EyL0hnQVVxNUcreGw1UnJWazNxR3FUYWJOYUhKdjB1NGFOMGRYQy9ocnNI?=
 =?utf-8?B?TVJOcDh3S0M2SDBvOTEvNjlXNTRqa3VNaVMzMloxNHNoQ2lHTjQ1UW54cGpi?=
 =?utf-8?B?YktscU1qeWwwQ2psYWk2YXdHc3JJdy9CUCtUamZKWFp3NzJycHViWDRxMXlG?=
 =?utf-8?B?Yi9uVGNUS0krblF0NFdTeEdoSGIvT2RTOUl2aWFhMDBqbmM5VXoySDB2OVNk?=
 =?utf-8?B?MWs3QW1LMWN5cWtSODRIQzNKa2JRcGY0cGtReUtKUFYwODdwVUdhU2Q5VEtZ?=
 =?utf-8?B?MFlPeG91SmE0U0FrOTd2KzFsQXZRNFhML0dMWEU3Zm4rWnA1cy9JV1N3UUNT?=
 =?utf-8?B?dmpta2ZVeUV2ZjRVTkVvTWlha2pkMmF1ZXROcC94dWtBbUJka2VaQ1R1K0lu?=
 =?utf-8?B?Q252M3YzVy9KUHZ0UGtDSmkvOGtKdXNkNjIzTitNTmJBNFo3ZDNvTm9hSmNX?=
 =?utf-8?B?QVd0a3VGRkhiRFZNK3Zwd2thZ1RITGtBeTRmU0NRWkdoMmhxbmtQYlBkTTZl?=
 =?utf-8?B?eVFJMm9BZjZkdGlzOFpEYTBGOGhjU2F5TXYreW5ubW5QL0FIcHVlQ3o4bEJS?=
 =?utf-8?B?b0N6R0wzRTlqVzU3eVFOYU1neTN1Qkw5VFAzQkJWWkVtejZpZjNqQmRwSnFT?=
 =?utf-8?B?MkNpTE9QMDB0SXFxd1pvOWR2a2x3a0pYOTR6WTl2N2V0ODQ5WU4zV1p0WHEw?=
 =?utf-8?B?N3J2cnQzRnFmVHViRVR2RW1nb3RWa1ZPbDVrUnM0dFI0VTdNMnFtcjV6Zjll?=
 =?utf-8?B?SndBdTdJMFEwdGhuNUZvSmpEQXQxalloZzlCSFFyMHpzcmxLRW1pckNoR3Qz?=
 =?utf-8?B?TElGME5uaEVkMDd5Z3BVQXRaODFuQnB0WmJxMTF4OE5YK3lCNjlraTNBb2Z0?=
 =?utf-8?B?Q3FTa0E5eU5LK3VVNjNSYm05NkhSWDZEOFBxdVJNK2s0alF0bzI2NHdIM0g3?=
 =?utf-8?B?aVNFT250anZDdUFpS2RBWHdieDN4SHdpaWJBOVVnYVdPUVJlVEo4NWU3VnZj?=
 =?utf-8?B?TUdFMDJuNkVuTS9mLzU1aG92VTBzajJ0NkMvS1RSRjVEbTM5ZTNSUk9ObE45?=
 =?utf-8?B?WU1Lb0NKYVA0NzQwSEU1WXNwWW53bmNHN2lndzN5eVp6c2wrcHE4QlQ4VnZX?=
 =?utf-8?B?NFE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddfb368f-7246-4681-6e29-08dccc10133d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 12:00:59.3914
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ziJV3mKPGSRqI6QfHHt0VnhfF6H44XsjVtUnbfLY8pAEwjPXKHS5eWa8YhTD+hY1XMhPjE2gpFxI8tjamLWuo12MaRppndYOxTaNv5L6VbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB7334
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_050127_359710_005197FE 
X-CRM114-Status: GOOD (  23.19  )
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



> -----Original Message-----
> From: Biju Das <biju.das.jz@bp.renesas.com>
> Sent: Tuesday, September 3, 2024 12:07 PM
> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson <ulf.hansson@linaro.org>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> p.zabel@pengutronix.de; geert+renesas@glider.be; magnus.damm@gmail.com; gregkh@linuxfoundation.org;
> mturquette@baylibre.com; sboyd@kernel.org; Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>;
> linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
> renesas-soc@vger.kernel.org; linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> Hi Claudiu,
> 
> > -----Original Message-----
> > From: claudiu beznea <claudiu.beznea@tuxon.dev>
> > Sent: Tuesday, September 3, 2024 12:00 PM
> > Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> > RZ/G3S SoC
> >
> >
> >
> > On 03.09.2024 13:31, Biju Das wrote:
> > >>> During boot clr USB PWR READY signal in TF-A.
> > >>> STR case, suspend set USB PWR READY signal in TF-A.
> > >>> STR case, resume clr USB PWR READY signal in TF-A.
> > >> As I said previously, it can be done in different ways. My point
> > >> was to let Linux set what it needs for all it's devices to work. I
> > >> think the way to go forward is a
> > maintainer decision.
> > >
> > > I agree, there can be n number of solution for a problem.
> > >
> > > Since you modelled system state signal (USB PWRRDY) as reset control
> > > signal, it is reset/DT maintainer's decision to say the final word
> > > whether this signal fits in reset
> > system framework or not?
> >
> > I was thinking:
> > 1/ Geert would be the best to say if he considers it OK to handle this
> >    in Linux
> 
> I agree Geert is the right person for taking SYSTEM decisions, since the signal is used only during
> state transitions (Table 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)

One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.

All clocks/reset happens after setting USB PWRRDY signal

https://pasteboard.co/qbz021q7KPyi.png

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
