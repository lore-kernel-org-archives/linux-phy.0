Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D9D6CA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 09:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWPIaqjH8aoHrC9W7T3ewuSIuLi8bnvd+73YLSjDGs0=; b=PCl6gYjOCBlzhC
	Zxu6AUtjpN//EkBKFTeZtwrTb7HlhjMQ0XR5+KV3H/yO3oz7uMRcUpsA9Y7hpQGdQk14Ntcq0TP70
	Zg97eOYcV0yfo/oda108EdnptNMdvSoh/cql+/Lfzna7KB2DmF6yvRlVsD6uPOAJCyUzHzfvzgciK
	W2B2sQZGpeO1o4UVgsvwn72RHA2XNGouSumlPJkzk/4cQDiiss4ag6WcadH033mqk0+vhO714XqPg
	pIOJK9vh9iOmGFiHNB2N0kjlj89+ROIIGliy98CxfpD19/e0glcan+wuXJc6IleLSx9G6G1GxafYs
	StaonIEqo7GoXYjF/IDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl3Cx-0000000DfWX-0pUN;
	Mon, 02 Sep 2024 09:18:47 +0000
Received: from mail-japanwestazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c406::1] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl3Ct-0000000DfVH-392H;
	Mon, 02 Sep 2024 09:18:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DkrTBGEtLRTOI+IA9X/pHx6LNpJ9VAwyo6Nz54FjPUyDf+oD+inVlbzS7lAINHSAZ/PKZF3FhyJfTt1N24/UItXgW/L5thrsUz0zQFJ0KRlcUGKpz/0u5alex/IEWxz6BlmHcrLn7/33CvUN80Jsov4yJSdBIGaO6iHZOTmUO2visp3D2Wz5Uwcj2eedFJTfPwep7Vo00OYccLROUi6Jzx9i7+XQg1Kufkv0k9leiUYH/NxmyKN9rE7HsL6RXxo49JixA8AwzLSU6FaDfHmtoQrnHjns97A6ONBgreSqgzIzc+xfjiS3GEBM65wlgn2jXaGaj/OSAgFJ1aSLb4Xh5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/rictM0+YSiR3cvbGVKFo6ZHgeTyeBEFJSfkTaA1T5E=;
 b=dOthPWJqcdY/kgjL3pypj87/OLefI0vj/9XIQTxQ+3bw7YJH+I8csmBFbv2WZvBB51No8dLV72ZtiKBUApqjd7qPs8WlLQ9lvu1lH0MsNeWpKJa6WVcvU9yyZg2RP6Zj+8ZxuAU0dqKlp7hqBoO28HjjI7dFR7T4L+Js74bBLfCYF209laB+skmLzNuq2MNh1kFWp9Vm7Jj3c9Gng9ze2mNx4f2YLXeRCwaCf5K8GiiWEPzNJ+j7CGS6QF6K9vwlMx3If04D64vawKzEqKco5hhKy44ZqwzgrwycSFq1Q0pIxnrG++XIKPSmgxkZZD6RneOPebEnpv3THI/RAtnaiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rictM0+YSiR3cvbGVKFo6ZHgeTyeBEFJSfkTaA1T5E=;
 b=Zzb828YmGO/31eRaaPawXz79Jc3YcYyWF3RfWyu67dy4s2fbtJbhyJfS/nSWGIDOWG7ULpOQ1qRgPykGvR4tGxkw21ZVD+L39giBMHm5/I3kKPYDSndPFVcfEHcCb8d1CpDsCJsmcgysgZ7mDRBF/3FnNbZWlIzBzeC+UMKmqaQ=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYCPR01MB7220.jpnprd01.prod.outlook.com (2603:1096:400:f7::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 09:18:34 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 09:18:34 +0000
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkA=
Date: Mon, 2 Sep 2024 09:18:34 +0000
Message-ID: <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
In-Reply-To: <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYCPR01MB7220:EE_
x-ms-office365-filtering-correlation-id: beb73a6c-5e7b-45c8-bbc4-08dccb303865
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VkFVRkhsSkRzVGdIeTlkaVJXVHFJL2syWEtSUFBtdjhUU1FiU0NMa1QwY1ly?=
 =?utf-8?B?VzhlZlhaSUJCNDZkajJNWkI5V3lERENxb0tONDBWeUdvRHR5cWxKbzNsKzN0?=
 =?utf-8?B?VzFObU44REJaZDgyYlZ4bmlrQjRvRUd5Rll1SGZNa05QMnVnV1NDNDJBdTZL?=
 =?utf-8?B?Y21IMjhUU2g0MHdXelhyVStmaHNyc2ozbHJKVm9NL1RqNytIL2tvUG40WnFT?=
 =?utf-8?B?aW1JMmNaUFB1OEdjb3VaMGx0S0tOQXRhYU1FVlR0c1lxUzQ4SEFqRmdlbFFZ?=
 =?utf-8?B?clprRnRnTHZDSUNjaFVud3FRSkxDNnNDSEpka1ZERC9OVkpZTFQ2RFMwdFB5?=
 =?utf-8?B?eFJDdHlPM1l4Szg4WlZxUWplbU5yOEZuMUlnSWRGalp1OXljRndSdlBrTkk3?=
 =?utf-8?B?by9XdHFkSjRncG01dDJHQ1FxUW5BdWFQRUhFWUZWRTJpR29ZKzRKTlA0TWZU?=
 =?utf-8?B?endqTGNmQmpqT1hvSjlXY285U3lmdVRXV2Q5V3pHSjJnQjJnbmV0Q0IrNytL?=
 =?utf-8?B?YzdYaERGYmVMeHZlLzJIQVN3Wm0vYlZ1L3pJRWp1WjJxWGVuT0R0cnNqdTha?=
 =?utf-8?B?V2FZWkdHN3VKVnRNdUk4RXN3RklBczRaa085WTRaeEx6aDhnSjYycG5PYXRD?=
 =?utf-8?B?YTdHM21YaGpXb1FoS2FlYitVS20vTG1hbnBVR2tha1FJVTJVOTR5Sk5za3JG?=
 =?utf-8?B?eFV4RExvdHZNc2hlajZURGx2Mnp5RkpoU3NxNFdHNmw0ZGFScmY1VDJUS0xx?=
 =?utf-8?B?R1d0RUovWjc2bTFvRjBtTUhGMHRUYjFZNjQzei9RY2dpMS9zVGNPbzJsM1Rk?=
 =?utf-8?B?eXNqMU5RajlMOFViaUc1MnJ2VHRZeGRRc3ZER1hJSWVTUERkTUNiM215MHps?=
 =?utf-8?B?eDYxUnJ5d0pQWlR5cXJsaEgxRnQ5ZzFzOUhWUlZjL1lUdnA3S1ZWZUU1dER2?=
 =?utf-8?B?ZGQrTXJ3OEtHQUFITXJ4OGFBOXRTcWRRekt5cmRJK050VEw5T2JjRzl2dWJL?=
 =?utf-8?B?VnAvZE9FTE1QWno3N21TeExubnpQWU5FYy9pWmJ0SXFEOENta0pkcndieVU5?=
 =?utf-8?B?d2d4MHRoQVppUmdadmpnd0d5R0E4UnBvTm9VOWVvSWFNTzRIbUpaeUVJcFJ0?=
 =?utf-8?B?Ris4UVllUjBHa1h2dFpwRkhnUDNWbTRiczI2c3R0WmxpbWdSVXk3Y2p3SHBO?=
 =?utf-8?B?c2RzUi83QnNQMzRYZnQ4WXRFeHU2QWpTenlHdXNXdkczbHJqSnM0K3d4UVpM?=
 =?utf-8?B?dWF1Z2trdjRrVU0va1ZyNEtGVFlLK0pRVVhJcFBOa04rUEpHbXFDMjJRaXJj?=
 =?utf-8?B?UENWZjJQcXh2Ylk5c1I0dnl0a3JqQzZHUHpFamlZMTlvK0lkek9TY1Y4STNF?=
 =?utf-8?B?anlsOFZtSTR1WVBqUWdaUFk1eGFyeTAvZmk4SkVxcVpWSmJ5YUw2UGRBT0VI?=
 =?utf-8?B?U0FYT3VIUzJ4WDVzVXJPbUowT2k2RFp4aGh6dmg1b2N1SlFFSmNCZ2p5QlVX?=
 =?utf-8?B?UzRCTElzbk0zYVJodEtyTDlEU3hLcE5BdjFhN0VYckszSEtoTnJ3L1lpNkVB?=
 =?utf-8?B?dmUrT1dwNi9pbUZiQWFjYjZ5aEtmblhoZVdoSHB5Y1lZaVRKSlVtM2xGRmlX?=
 =?utf-8?B?QzE3NytPWkVxeUh3Rjhha1NQZVZ5TUs2c2Q1OFgzK21STEFzbFB6UnpPTlJR?=
 =?utf-8?B?OTRTVG5WK1A3TkJOWXlyendveFBDOVJ4c3B1TUhRaW14QmU1L2RaU0pWSkRM?=
 =?utf-8?B?VlNUSGVDZ3J0Nmw5R295VCs4NGVFeU10TjRwaHllV0EwUno4L0RxdTR6R0w5?=
 =?utf-8?B?VkRTYlVjL2grUGxTdDRSb2I5aE9rVjlBVHQ3QmllUlVPSG1HbzJ6TGJLdlJ0?=
 =?utf-8?B?Y09NRmZZenRpdzlQL0NLMWxVOXJBdVM5cGpickk2WHF2Rmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N21ZQnJXYXo1ZjFQY0huczRsZlB4UWtkU1VoQmltVVRINDRzU0w4RGhRbHMy?=
 =?utf-8?B?cUhLVnJvQmhYQXR3aU5pbW9GYkdXelZQZGh6aldKakg5TElxaWxBRzRDUzBx?=
 =?utf-8?B?OElEdFl4eEhnKytyd3lQLy9Fckxvc2Q3Y1VJcUc3T215Q05jMFdnU0pjeTcx?=
 =?utf-8?B?c0lSWTNKeTFIRXZGbFhEd1Nyckk5TlhyREVxdk12N1lqdmQ5NS9MN0xBZUNJ?=
 =?utf-8?B?OTVzUno4am1qcDdZUnl1YzN1Z3k4dE1zR1lJTXU2cGQ5Y1Y0dHd1d2IzUE5F?=
 =?utf-8?B?cTJpZTI3azlhTHZOL0I0cGFBQitVZWZiQytvK0VtWHF3NXB4T0czZXNMdnhy?=
 =?utf-8?B?VFJpQ1huQmFtazBWWVhCMkR1bStITnBsMnN6NjdWS3RQSU9NTU9ad1Bnd3FG?=
 =?utf-8?B?Sjc0L051WFg2YWJHTHZIM0pqUXJNRGFjbWdaeUsxbjhOZllpM0JaMHNsZ3J6?=
 =?utf-8?B?Zk9pTG8ySHgyVllKM1pRREdOUXNQd2czVHJqdDJaK05TN1RXM2RzMmExRlcr?=
 =?utf-8?B?YWhzS3ZjeHYwMWlWUlVUcWQrTGZCM0d6SzVLVTJCa1BOb0lQUFZnRmJOd25p?=
 =?utf-8?B?U3FlMWJZdzVOYzJ0TEpmL0tqYW1vb1dZT3BKTUlyYlVSbXRWQXJScEVhRHNR?=
 =?utf-8?B?WWxNcEJzNmF3QnVIdW5zYndpblZsSzJYTGd1ek5JSUlkNXR2ZG9Sa3RMRDE1?=
 =?utf-8?B?SkVwVTNSRUY3L2M3TUptKzM4U1pNSEM3MmxkRkp5QmVySW9xUEtncm1lbkx6?=
 =?utf-8?B?WU5DQU93T0JsWUlDN0czeUtoUUNsRzZYbmk4WTh1SHhPMzdVOWNINXZuMnBE?=
 =?utf-8?B?Yis2Y01TanY0eDdHckpEMitLM012YXlMWG5qVWxVUDI4RmZSaVkwMGlyWnl4?=
 =?utf-8?B?OUlGVFRqRndMRTZ1MmlQY1NXRTdJWkJoejZOTG1UWkIxdmpRSEtvZUhnblVt?=
 =?utf-8?B?M2xWdzRJa3VuN2svUm91b2ZRS2hoaml5eWh2d1Q5SDJBL0piRjZqTE9lVVlD?=
 =?utf-8?B?Z0djRzlJM24vdlp6YjRpeXhGcU1MSTJ3NG90a3RIeWRrd0doaWJvWm1TWkZ2?=
 =?utf-8?B?eWg1a05OczBDUGFjZ1k0cnc5S2hZcFNvS1hTOWV3SVBVM3pJb1hoakowL1h6?=
 =?utf-8?B?MFlqWENMNkcxOU4rNDdjNVdkMlNldlBxNWEvNEhTZDM3VGVMSksxenlHY1I0?=
 =?utf-8?B?NW9NRHFjSEdkV3hSMHFYc2Rnak9obnZaVzNCNWY0cnFjMmEwdHI4NVM2bzJw?=
 =?utf-8?B?dUt4NlNJYXI1U2MyNCtWRVJKUjYxOUQ0ZHQ1NkRnRlZGQVA5VmNmVXFjK0V4?=
 =?utf-8?B?VGR3LzRrMzVtWG5oV3NKdmcwWSt0cFNUenpoMTlXUWJnVWRvVHJ0MHZUM2dO?=
 =?utf-8?B?Y3ZLVVFLNTJvM2YwZ1FvaFhDTmtoSEdvWURkQjVrOGg4Tk9ONnlHRDFKTEEx?=
 =?utf-8?B?TDcxLzlzT3U1cWFTU1V0TFNObHdsWERtSWJDZXlXOXgrQ1RQMDllQjZ1Y2NP?=
 =?utf-8?B?c1ZzZFo4dWY0UDdZU2JJcEdrTmxHUmFtek5aeWlsZ01HWTh6N0JYcllzOUs5?=
 =?utf-8?B?MDUzTm1aR1BZMkoxRDJZWVorKzk1bXJzN1Y2ZklYNjlFVXRWbEdvZTUxNSs4?=
 =?utf-8?B?MDcvSVowLzlkMzZGeFBMYm83ZjFKY3JxSlZNa1daSVdlY3dxVlJNTExqbzFt?=
 =?utf-8?B?Z21nVGRwL0d5dGNWbGEzTGFrWEc3SXVjSUZoSTVoNDVaMVgxNzRSZGxaS0tQ?=
 =?utf-8?B?UWdiMUgyeWRGOVVRWDdSbGFJQ0NFRkZrb2MvdDZobTNGSXQ0MnRMdmtqSkNl?=
 =?utf-8?B?SFZDcGM1QXBUUmlIVDJNcDJiWXQzazFMZUVYa1FNeWxqSEhLL1JtMzVLcllT?=
 =?utf-8?B?UDZHaUlEMExVMmtpZkUrRk5xdkMxY0hwVzE5OEFHUTZvTWpzSmV3d0FhQ3dx?=
 =?utf-8?B?QmVJaE1LYkF6RFNxaExqcWRpSkhqRGUzY3JXNzU1MXM3eXJKZGp6ZWhWSFY5?=
 =?utf-8?B?K254ZzZ2V3U3b28weGU1SVdwaXZndERicVBQQU0vbTJWUkZOS3RsS3g4UE15?=
 =?utf-8?B?eVZMd3U4MDR1MHdaa1NLZktZRFV3bkdWYW4wYTBZM2JmNmYxU1ZqN1Y0L2ZG?=
 =?utf-8?B?MkloSitETHN1RmR6UUNEeXdmVFdQMm5YZGowTXdFcXE0L0Z4UFgxK3lpa1RC?=
 =?utf-8?B?M0E9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: beb73a6c-5e7b-45c8-bbc4-08dccb303865
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 09:18:34.4465
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nA4ULZCivVyEbBd8szvvxGvZ6T11AnHOZtq6g/+Pvsh2nYR3yNFNL2sSBh2dt0UISjtZd6CMEFUdzMFMzSqu5OXRI+9oUP/BKdtweDM9w6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB7220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_021844_157299_DE2350AB 
X-CRM114-Status: GOOD (  24.96  )
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
> Sent: Monday, September 2, 2024 10:14 AM
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 02.09.2024 11:53, Biju Das wrote:
> > Hi Claudiu,
> >
> >> -----Original Message-----
> >> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >> Sent: Monday, September 2, 2024 9:47 AM
> >> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >> RZ/G3S SoC
> >>
> >> Hi, Biju,
> >>
> >> On 02.09.2024 10:54, Biju Das wrote:
> >>> Hi Claudiu,
> >>>
> >>>> -----Original Message-----
> >>>> From: Biju Das
> >>>> Sent: Saturday, August 31, 2024 6:14 AM
> >>>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
> >>>> RZ/G3S SoC
> >>>>
> >>>> Hi Claudiu,
> >>>>
> >>>>> -----Original Message-----
> >>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>>>> Sent: Friday, August 30, 2024 9:23 AM
> >>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >>>>> RZ/G3S SoC
> >>>>>
> >>>>> Hi, Ulf,
> >>>>>
> >>>>> On 29.08.2024 18:26, Ulf Hansson wrote:
> >>>>>> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >>>>>>>
> >>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>>>>
> >>>>>>> Hi,
> >>>>>>>
> >>>>>>> Series adds initial USB support for the Renesas RZ/G3S SoC.
> >>>>>>>
> >>>>>>> Series is split as follows:
> >>>>>>>
> >>>>>>> - patch 01/16           - add clock reset and power domain support for USB
> >>>>>>> - patch 02-04/16        - add reset control support for a USB signal
> >>>>>>>                           that need to be controlled before/after
> >>>>>>>                           the power to USB area is turned on/off.
> >>>>>>>
> >>>>>>>                           Philipp, Ulf, Geert, all,
> >>>>>>>
> >>>>>>>                           I detailed my approach for this in patch
> >>>>>>>                           04/16, please have a look and let me know
> >>>>>>>                           your input.
> >>>>>>
> >>>>>> I have looked briefly. Your suggested approach may work, but I
> >>>>>> have a few thoughts, see below.
> >>>>>>
> >>>>>> If I understand correctly, it is the consumer driver for the
> >>>>>> device that is attached to the USB power domain that becomes
> >>>>>> responsible for asserting/de-asserting this new signal. Right?
> >>>>>
> >>>>> Right!
> >>>>>
> >>>>>>
> >>>>>> In this regard, please note that the consumer driver doesn't
> >>>>>> really know when the power domain really gets powered-on/off.
> >>>>>> Calling
> >>>>>> pm_runtime_get|put*() is dealing with the reference counting. For
> >>>>>> example, a call to pm_runtime_get*() just makes sure that the PM
> >>>>>> domain gets-or-remains powered-on. Could this be a problem from
> >>>>>> the reset-signal point of view?
> >>>>>
> >>>>> It should be safe. From the HW manual I understand the hardware
> >>>>> block is something like the
> >>>> following:
> >>>>>
> >>>>>
> >>>>>                   USB area
> >>>>>          +-------------------------+
> >>>>>          |                         |
> >>>>>          | PHY --->USB controller  |
> >>>>> SYSC --> |  ^                      |
> >>>>>          |  |                      |
> >>>>>          | PHY reset               |
> >>>>>          +-------------------------+
> >>>>
> >>>> How USB PWRRDY signal is connected to USB?
> >>>>
> >>>> USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.
> >>>>
> >>>> Is it connected to top level block or connected to each IP's for turning off the USB region
> power?
> >>>>
> >>>> ? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)?
> >>>
> >>> As per the update from HW team,
> >>>
> >>> "SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from
> >>> ALL_ON to AWO (or from AWO to
> >> ALL_ON).
> >>>
> >>> Refer to step 8,9 in Table 41.10 Example Transition Flow Outline from ALL_ON Mode to AWO Mode.
> >>> Refer to step 9,10 in Table 41.11 Example Transition Flow Outline from AWO Mode to ALL_ON Mode.
> >>
> >> All this is not new information.
> >>
> >> From experiments, we need to control these signals also when booting
> >> as intermediary booting application may control and leave it in
> >> improper state. W/o having SYSC signals configured properly there is no chance for USB to work (it
> should be the same for PCIe but I haven't explored it yet).
> >>
> >>>
> >>> When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break."
> >>
> >> From experiments, I know this, as this is the reason the SYSC USB
> >> PWRRDY has been implemented in Linux and proposed in this series.
> >
> > You mean you call reset assert for USB PWRRDY signal for system transition (AWO Mode to ALL_ON
> Mode)??
> 
> reset assert on suspend, reset de-assert on resume.
> 
> And pm_runtime_put()/pm_runtime_resume_and_get() on the version where USB PHYRDY is provided by SYSC
> as a PM domain. As I mentioned in the thread with Ulf, this is something I explored locally.
> 
> All these are internal, not published in this version. This version just adds initial bring-up
> support.
> 
> >
> >
> >
> >>>
> >>> Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux?
> >>
> >> As you know, the RZ/G3S USB PM code is already prepared. This is also
> >> configuring these signals when going to suspend/exiting from resume.
> >> W/o configuring properly these signals the USB is not working after a suspend/resume cycle.
> >
> > One option is to handle SYSC USB PWRRDY signal in TF-A, if you plan to handle system transitions
> there??
> 
> As I mentioned, the settings in these registers may be changed by intermediary booting applications.
> Depending on that, Linux need to control it also on probe for USB to work (it should be the same with
> PCIe, these signals seems similar from HW manual description).

You mean system transition settings will be override by U-boot, so Linux needs to restore it back??

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
