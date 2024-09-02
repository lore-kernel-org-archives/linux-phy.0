Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 803B3CA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 10:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ff+qRRTds8Vwyc+BDlq3gTua1M47QpG92Zx85wCHTE0=; b=OU2NvkTAQP44Wq
	34U2nM9YPVjQzKRRp5ZazJqLvjPvxpb3QjjnaccXS/sPDUq9HTPVPV8NhmIsMZIdogvV+72avqYNt
	dYscURQWR7E+TcSSB5bFwoo8xvnmMBPqWog1PdNXNlOztpGdHd/Iidjo2BlmPvHyvPzUy+6X7Ar3x
	CBX1jatbAouEzT0GgSd8jGRftHoqjehKOHzWX9rkdKmkM10DxZkgOJp/AA/D+Y6/I7iroUSrECgdM
	y26Q5YHdb6FaBSsKatYS37+YmqJgT+ZegHy7mzYAXsZjxV3WWGC6extfvcPv2mPykuSs/P67AzumR
	KIng18VZYN0tImAcHLqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4bT-0000000Dymo-0ogd;
	Mon, 02 Sep 2024 10:48:11 +0000
Received: from mail-japanwestazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c406::1] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4bQ-0000000Dylf-0LLz;
	Mon, 02 Sep 2024 10:48:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P6ngAG2YX+W2+54RzIgeYBqlZZZnjUZ6MhtWDueY8eSX/gp3dbGOaxgdBzoQ6O8KvnM2S2jJd4MUeohhKf4Ko79OrZ4+zrYxpVt02D5jNcuaCZ1CV9Y4CdPJwpxyOvO54VE7nq9V98xtoppyCuX42rLijH2QHLuuMxJDmjyV9aBPj5FGEZU79PjnCgx/sl9dc7IR8VzsWKabLXCbz3rjlnDW8QB9wFcej2bHswJuWfHNE/wQDYikfVvZJ0yaJflBJVVVgngIdHKJ41cFOx0AE8T3mBMM35hs1yLMOVb1BaEBCKlvvsblGgo3HdUr+xW22HqIzeW3zcC3bTbto1JMyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUExOcXEmynL6jpn8PmXBpgXUD8IziRIUmGl4vJTJrw=;
 b=MmbUo8JpB+A3byQrTIdJm4cLfjYN+ckvdEDV+etlCVMC3l67EHhtWR39hd/OjCnZjitLfTbWTBZXMA/s1cOtgcegXueTlKy+CRlO0MF/vnjRm/D6ySjLdTaKsD/bis1bCPwpFm+jS9pO6qOMu8qfc+byk4EprANHC1UEhk5nMFdfakAwS4x0t3OYoD7cGEAJOfepFr8QFd0gYGC9TZBDFpdemAMB/W/zcAPAs8AtBj8VhAAvxca7YxMUIHdh1FxdHF34cbeHmnhrQx5v8rAxbH2gFAQIA2XKvVY540Pr2s/zOyBbzVBl9T/jfWEkcVeZrRwmg2rEvsUqduwWorxz7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oUExOcXEmynL6jpn8PmXBpgXUD8IziRIUmGl4vJTJrw=;
 b=UwjwtYg0Wfncasrab0BH1BbUqBG7zaRoeitEs/oQ1nZG3h1lq0ASfHQq7Sme1gTZeE3YBYkhZGth1TgXENaPR9ht5RsULy7MGRzjTkwHM3qchf4+tYPRwsO3rW82sfG9e85rcB/9kz7ZHv+70oyrP7laW2WFq7tSFuPA8uL5nu4=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS3PR01MB9496.jpnprd01.prod.outlook.com (2603:1096:604:1cb::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 10:47:50 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 10:47:50 +0000
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcw
Date: Mon, 2 Sep 2024 10:47:50 +0000
Message-ID: <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
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
In-Reply-To: <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS3PR01MB9496:EE_
x-ms-office365-filtering-correlation-id: 655d0a62-8584-4d1e-d956-08dccb3cb0e7
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WlN2RWR0R1B6SXhoWjNVUjZFaG56Mm1DYjkzUmRWT0pUam12bkFUT2F4WXk1?=
 =?utf-8?B?TTEvdVZFaUluREV2aU1JYWQ2clptdk91R1JuQzV1MTg3ZklaaVk2VDlvNDVT?=
 =?utf-8?B?TjgzMXNSVmk4OEx0bXJFK1FKZld3eW1jdWt2ZWdmUXAvS3ljbVZBbzFCb0xu?=
 =?utf-8?B?N3M3TkNJRC9aVkxNTm1oMWorWUpBMWMwSTdUZkViNUcwSklVL1UvN052K1RV?=
 =?utf-8?B?U09CYlE4ZmdZbGpQOFZSQTJDNHpDSHhEUFlLZWlWeGNQT0Zoem1QcVFhMnNx?=
 =?utf-8?B?d0pQRjRBZ1Q2K1V6WVhTL1lYMitQTEpkRFJkOEthN1RoNUFjS0x2Z2pTMXIz?=
 =?utf-8?B?U0hiYlhuT3VJVW5sbk9EeklodTlmcjlCdTd2N0Y0QUUyNGFvRDhUb2l5RUVG?=
 =?utf-8?B?ODN5bkJVdnc2VHpYbEh0ckZFR0RFbDIvakhWWFRtZ0svbHhFSkRZMEdzK3A0?=
 =?utf-8?B?aW44Y1g0bEI3MVBMRHYxRjltSERRQ05ZcnVQbFk4a1BzS29ndU95MWJWVjRG?=
 =?utf-8?B?TGh4dno3VFVwamdjVjVNb0hqb1QrVmRGZ01CQVkxeFF0bFJDUXRiTFowenM2?=
 =?utf-8?B?OUJ4REJ6ZFhOTElwVU1McFRPbnovZWs2RG5ESW4xNE5JaDFreGRhN1ZhdDNa?=
 =?utf-8?B?cEZEVmg0L1dQUnJhSWZ2VzkwL1VLSytVVDV4bmFVV2JHRHBsenF4N1IweWpr?=
 =?utf-8?B?ZDhTRzNWbXh5TnIybEdZd3IxbTN2Qm1XTzlJN25PWWs3RlpNMWFkaS9MWm5m?=
 =?utf-8?B?YnVwSHROOGZUQkh5ejFuSHQvRllpMGhUMU1PTHZQOWY1VTBINkJWM2RqRXVI?=
 =?utf-8?B?SWt5UmdNNkhQbmFROGNJUDNGbUlOVlV5YXk1dEwrWnp3UVBLNXF4K20wUXFU?=
 =?utf-8?B?TFdsOWFPeVd1SlRZUWJYNUdIa292SFZXWG9NVGQ0aFd5L0ZoLzlJZmxWZGly?=
 =?utf-8?B?RmU0RnlwMm9IdXU4S0xpaFVHd1dNc2dycnQyUHFFN091eGNWYzRlYWFGazBI?=
 =?utf-8?B?cE11RUd4UDVXYkl0dTZsYnN1SmRrV05xVlRTYUZjK1I2RjN3cW9FQXpWM0ho?=
 =?utf-8?B?alJiVnc1cXZQMzFiL2IyTVloRFl1RUswc0QwRU1NRzR4S2xwVVZxZ0pPVGk1?=
 =?utf-8?B?WGRSTHp3REZJdmVUMHoyRng5blRsenhBd1VvZnE2R0tjOFYva0NFckZmeHE1?=
 =?utf-8?B?RzBPWVVEU0NIaXQwdU5UdlIwQ290emFBeFdiUkdDeEI3aWhvU1YrU1NLUUgv?=
 =?utf-8?B?c0hnREN1QjVraGxJL3BROG5hSGdqWTdIQTBjbnRyV0ZNQ3gzUWE4Z0hwZldk?=
 =?utf-8?B?RjRoVzE4ZUFzaWlTcTV2MEJPNWFROU5CczVYYlNjMFVlRGwxUWppQ1VTVVYv?=
 =?utf-8?B?TDhkU05jZ3JtK0lUanE0Tmd0MG5UQ2tRTlZjR0p1Yk5QZW9rNkY2Y25IamRu?=
 =?utf-8?B?N3JwS3hjcUx3U0xxcGNjTytlR0owd1NFb2hDVUYzVU5vRk5SbnN3WTZTRUpa?=
 =?utf-8?B?bnl0Wmt6UTBqRHdTVlN4RHFKNEdyd0V6cDVKbmVyblVDZ1U4aU5ZZUQ0cTJV?=
 =?utf-8?B?UGlxbGVac1pHdnArdVNLVkFFRWgrS0JkdUY1czNGblJrajdCaUs4NEJqMDRZ?=
 =?utf-8?B?d2tyLzNnN2RJQ1FLc3JlLzRGVnNoTUNoZFpoaExSZDVKUHppVWJNR0hPeVFP?=
 =?utf-8?B?SGNOdU9ZSlhzVFFBWTMxTFpTS3k0aGpKL3d1ZG1UL3A5MVBlUFBoSDRHUEdT?=
 =?utf-8?B?dHRyM0cxTmxJdWo2ZE5RakpRU3RxNG15dmxOeU9qMnlJcGRaTXExdTIwZWRU?=
 =?utf-8?B?UGZsUS9PL01VZUVJQXNJYkZlY2pCdEhUY012OWdVSmFIQkovZGlEbmgvRVZs?=
 =?utf-8?B?emVzcXlvVG5WRndsay9ORTVnSmk2OTFTYm9YRFRuZEJCd0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3UrVEdBckkvOVVFYmt1VTN6UUJNbWxlV0NZVVZGL3VRQXBIMmFvRFhEdVFm?=
 =?utf-8?B?Smtya29vUG4vZjhwM3U1ak16QnJ1aHQvdnIxOWlkdVhwVXM2M0tNc3U3aURz?=
 =?utf-8?B?R09lc01Jd09vMkIvZFBVZUdKUzhhdTF0M0hCMDl5Zk1IeUUvTzlpUlFDeWl6?=
 =?utf-8?B?WG44WmloWlViM204TW5tMXQ3blF1RytLRm5CK1N4YUE0N2kwT3lwSGlkWTVh?=
 =?utf-8?B?VDk5bXNvQ3FrQmhudUN0dEp1aWFBYUdaVy8zVG55RFBWQVMvMlkwVEtVTUxz?=
 =?utf-8?B?dUFUR0dQODFtczl2RFBnS0JsSTJ0RFM2cDI2enE1U01pNjBEU1FOd0Jvb25p?=
 =?utf-8?B?dGNQWVNUajVWK2hDTFE4b21SRGFZcUtDOTRUUkw5ZkZkRUVPNDFGT3QvL1RH?=
 =?utf-8?B?cS95SXd3aVZZdU9rbVBZUDNoR0pwbGwwbWowOFBtdlgzQUJkeGlselN0TmlG?=
 =?utf-8?B?TThVN01ZVVF4SWNMWk5hekdmYzJyZGxmbklxbngrR3YvRld6NVJ4cWdHbEZ1?=
 =?utf-8?B?a0FVcHdiUjRpQ1VLcjl3Y0xaaStBV0p1bmY2amVjbnNpMWtQZTlvRkd3Z2Jk?=
 =?utf-8?B?UWk5MVhvQUtMSDZFMDdQY1ZCYWJXQzVvRk1LcEZZb0dlOVVrZXdCOHZoRkNG?=
 =?utf-8?B?ZjdOejlWZWhUNHM5eE9MdW9pSWh3aFBoRW05ZmFZajVUSXFvSzhESDJrMWs3?=
 =?utf-8?B?Q0R3ZitDWnZYYW9WanZlRm15TmxWRGkxZnk2RCs2VnlNVEpkZjhCNVJrTlBw?=
 =?utf-8?B?M3RiZW5jb3Iyb3dZQW1jNHdhcG1YbHZlamNENS9reEFSMGEvS2h5b0J2cnBD?=
 =?utf-8?B?eFFlNmN0SGQyMmlNM0VaN2Q0MjFZMTBHR3FlQ1FORGpkMkdZZitOSGJlaS8w?=
 =?utf-8?B?VkRCYzkrc1diN1BibURzdUNlRGxlYlVLdk9aTlhhZEh4M21lNllwOEtCM0kr?=
 =?utf-8?B?aUx4ckpwODMzVm95aHJ0M1dLeVNXLzZoeHVpZVZKb3I0V0pENXY4ZXNqRWhm?=
 =?utf-8?B?cEpwcDdtM3BIRERwSzh1RW1zM2lHTFdIWXBmSm1iMk1hLzNPSmlpbC9xWDhC?=
 =?utf-8?B?YkgzbWhpZXRrK1pIYzhHMFVVVTRwaC9DV2RWYU5vdHdHZ3dkWkRXZUhDRjNp?=
 =?utf-8?B?VVpJd1QxazRiNSt2bmkwSlVYVHNlZzJWM0MyMHRkQkFFbmxuSk81MlZ5NCts?=
 =?utf-8?B?TEs4UUNKcGYvR2VqSkJxVFF5VjNybVdBM2Q3UjFpa0lFM3ZUeUhGbC93ckND?=
 =?utf-8?B?MHdqdTE2TnhvYmlFRHhjRjNIY3VMd25hT01oL2NDODRjVjY0TlZMU3FoSXpH?=
 =?utf-8?B?OUZUdHRURlFJb3FORjdkMlNvM242d0hCN3hia3pXaW9YcU5HdTMvTjlqYktl?=
 =?utf-8?B?ZTRqUUFCV2FWVE1hNnk0eXExOXFZWGE0YldWdG9rdU5JdEpNUFJreklFZWpZ?=
 =?utf-8?B?dzZmdDVmOGp3Mk1xcmtPSXMvbzhTOSt2eWNKZG9oNkFlbmFCQlpTelJWaC9k?=
 =?utf-8?B?TEhYekpNdVBKcDN6SjhGQzE2QUppYXFUc1BnUy96NUlpYi8wUU9JT2Q1V0hn?=
 =?utf-8?B?UXZYNEhKQ0lHZ1o2RXZZSzk1Mlc2cTZaenptRHdLSi91WVZSYjFXZXQ4TGUv?=
 =?utf-8?B?bHAwRnVUY2FXak9CRGYrQXUwZGNYcld3Q2F6MnozeTNML0lmMXQzdXNaZUJF?=
 =?utf-8?B?SS9HeWxEbXYzUHVmV0FmNUV0UGtTZUNuNU1UdThhcjNOMkNLMHBWQUhKeWM5?=
 =?utf-8?B?bFNWcTNLa3JtNnl4ZnJFYVFiQzlXTnY3dnVDVjBKM2xobnRvZGVmMnRTcm40?=
 =?utf-8?B?c3l0VTBsSU9pbXppdTlRR3QzdGZtUG96NDhHYTdNTnhXZXdiY05EQXAwVW9O?=
 =?utf-8?B?MGZ1dU5udDNZd2ZyNVVPNXBDQ0Q1OGJCQ1ZQc25BTTBXMWVkcWxYZkdTRWo1?=
 =?utf-8?B?WUtRQ3VlaFd3ODJsZDFialpFOFplYU9xYUlMMTlBR3JZYWtmY3pycXMwQVZC?=
 =?utf-8?B?aWxNeUR6MTNxT1hlMGkvZW1JWGFDZmJSeFFnenc1MjlCQXBMa1ViazRMWWhV?=
 =?utf-8?B?N2RaRWdzWE42cHZqKzJwYUNJUzJ2dFdGYWducDluMDhQaml3Tk9EcUxyZnRv?=
 =?utf-8?B?MHhoMVRBTGZSSWRYV2J4QjJ4cmhHYTFxRXpiU1g5QzNJeTZHNjFRS0RaZ1Ns?=
 =?utf-8?B?WUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 655d0a62-8584-4d1e-d956-08dccb3cb0e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 10:47:50.5972
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GsIlTkcT3MgbXqdO8mCbrHPMfyIB+Bz9jweyTHeIRiNRtNtPjogtLeIeT41pkI90ykaXJpI57VpeupKaM7jmOmWLMIrGj9yWsdyG1SF/fa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB9496
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_034808_483034_9FBB1CF3 
X-CRM114-Status: GOOD (  28.09  )
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
> Sent: Monday, September 2, 2024 11:41 AM
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 02.09.2024 12:18, Biju Das wrote:
> >>>>> Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux?
> >>>> As you know, the RZ/G3S USB PM code is already prepared. This is
> >>>> also configuring these signals when going to suspend/exiting from resume.
> >>>> W/o configuring properly these signals the USB is not working after a suspend/resume cycle.
> >>> One option is to handle SYSC USB PWRRDY signal in TF-A, if you plan
> >>> to handle system transitions
> >> there??
> >>
> >> As I mentioned, the settings in these registers may be changed by intermediary booting
> applications.
> >> Depending on that, Linux need to control it also on probe for USB to
> >> work (it should be the same with PCIe, these signals seems similar from HW manual description).
> > You mean system transition settings will be override by U-boot, so Linux needs to restore it back??
> 
> It was talking about booting...

I am also referring to boot. Boot starts with TF-A and it has a system state.

> 
> You proposed to handle SYSC signals from TF-A in a discussion about system power transitions:
> 
> "One option is to handle SYSC USB PWRRDY signal in TF-A,  if you plan to handle system transitions"
> 
> (I was guessing the "system transition" statement there refers to power states transitions, ALL_ON <->
> AWO/VBAT)

That is correct.

> 
> and I gave the booting process as a counter example: if we handle it in TF-A it may not be enough as
> these signals might be changed by intermediary booting applications (e.g., U-Boot).

Why should U-boot override, system state signals such as USB PWRREADY? Can you please give an example.

> 
> To conclude, there are 3 scenarios I see where these signals need to be
> handled:
> 1/ booting 
> 2/ suspend to RAM
> 3/ driver unbind/bind

--> It should be OK as linux is not handling USB PWRREADY signal.

> 
> In case of booting: if we have TF-A to set signals there might be intermediary booting applications
> (e.g. U-Boot) that set these signals also. If it leaves it in improper state and Linux wants to use
> USB then the USB will not work (if Linux doesn't handle it).

That is the problem of U-boot. U-boot should not override system state signals such as USB PWRREADY.

> 
> In case of suspend to RAM: as TF-A is the only application in the suspend to RAM chain, it should work
> handling it in TF-A.

That is correct, TF-A should handle based on system state.

> 
> In case of unbind/bind: currently we don't know if these signals introduces any kind of power saving
> so asserting/de-asserting them in Linux may be useful from this perspective, if any.

These are system signals, according to me should not be used in unbind/bind.

I may be wrong.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
