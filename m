Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E0CCA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 08:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rf+aINoKjAxlolvhEix0aV1drvuj5hmuKeQuD4aUMY=; b=YTckVDRAmx8qYr
	oswHjZ1NSjCUYya7afatt+Ugu04zsQI6rlMFcP+AEUFEFDl3xmBy3zbUOfeZw8oM4zV/IOp+9UNiL
	uDqbwThwH0jTVdBU/9QCMihiPk1bRbbBv91zwIlOG2OvxTJ7/+7ys3QMU4YpEMyGMnbsPhS7Y1WDN
	HkdgvlTrXfZCRUal/8H4bJKUharPiWGFJ/p0UlX+Q5fSd9dXgr61HIl5EMyfe8xiK2WkTuIcB1amu
	A0WNsXQDv/mrkJVsHmm3S7vsSMTSd53Bgyyo4zGZBbFlLib0LJiuMxbyHfEaYmKWQy6zIREnMCbBb
	9jzOz0MQhlkpbMrn1utA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2p1-0000000Db0X-2e4z;
	Mon, 02 Sep 2024 08:54:03 +0000
Received: from mail-japaneastazlp170110002.outbound.protection.outlook.com ([2a01:111:f403:c405::2] helo=TYVP286CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2ok-0000000Day1-22OI;
	Mon, 02 Sep 2024 08:53:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bsI0M2gv9wMhVvi84z0580PswWZmznp0xoqpkOepPvnpHpMx++ehtc0R80ufORgZ0lZdkm4IZe0wMPJhH+AwkoNZPrM957Is6NHDYBkMMLIuz4xpDGqgmNTWMQobNyo+k6QfcraE/jmQwW6hkjRjtRq54BnI/qeCQRbbIBk/54ZlPSBlScjCmcYYVy1VOlllzN36xYTI6xggMMt1iqwNko6DcKCA39heCERBAiejWiDQu+uafVdE+gzZbuJiWuOiJxVX6t9b9y58s1FV5Qfy9WfMotX6mmXc5TwXKhvN8d8ZOoJFVE7YREhN6Qk4/ndGDzxXcmr8j/XSZtmqJ4s4Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySEnw4Fo+ZJufa+0lPvBK2nPFSdh8pH4xPt3rbSdlgw=;
 b=ZzW2PsyXqT/7yTbngxflNfaccwnt51Om/+laH8aRZpiV7HrVil+vFpTjzvru1LsrS1rfDfo4pzMtyLGFoCtisJyo/Y4nO4XhcQGuy5HGIzUjuUaGVWQT3c7G8wJrzmXvDf4S4P6p1s7tYAf5jGMSSPYKCjYEt3zSJ4LS0XNEir70ddc69gm79/KRBobjiuZJZDOGaxA4yBSjWotuLUbrKqeTZAV/IkkYH8HVy2O9dTJyTslPQB6td0rx2BShvcPRcITndwG7SlgMXWEnv3H1Bkz8QZ6I6kCtdjURqeJ5N7cJypBZpzDid6Lp8FvyteikhLR6th6CHz3FvilBvCWMTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySEnw4Fo+ZJufa+0lPvBK2nPFSdh8pH4xPt3rbSdlgw=;
 b=Mk+GlnPZsz666/cB5Sji9SwIy65j7ZZc0f2/VrlKC0CnyPU95aCwlVixnHa8UjGhVbNzKnen8KDUrOEMFNkKcgRoIY0CpxVX5U70KgcDfXHaQ/fwZ7cYSGynjo++5ddYfwh0xocl2CdEKjTn6GIMaQ2zhIiYNHhx08PY5s3pGhw=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYYPR01MB6698.jpnprd01.prod.outlook.com (2603:1096:400:c9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Mon, 2 Sep
 2024 08:53:37 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 08:53:37 +0000
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
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycA==
Date: Mon, 2 Sep 2024 08:53:37 +0000
Message-ID: <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
In-Reply-To: <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYYPR01MB6698:EE_
x-ms-office365-filtering-correlation-id: c16a8e10-abc3-4902-f9da-08dccb2cbc1f
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eGZaMlVTOTVhWGQ4YlJOVkZzdHZrbWova0dxeFVDYTZyZmdKUnJ6U1J4eEkx?=
 =?utf-8?B?OGlkSkVKSW9ieEJzMFFkd29Ncjlxb0cyMmRQeW5jL3J1NFRLWHMxOWdKT1ZT?=
 =?utf-8?B?SmVwc1QvNGhzeEh2MFlYNnlFZWRGa2ZzRU5kYkYzZXkxNCtzLzBzdC8waFFB?=
 =?utf-8?B?UzZmVkR2MjIvdnpmZzI4OTVVM3RHdkY2ZmhIc0VUaEc4czVEQ1IxWXFNQmZ3?=
 =?utf-8?B?VlUrU3ZsZGhWQ1RYbklZbDd5T3NtMS9SNkZTN2Q0V3ZydnpzUlpNdVVDeXR3?=
 =?utf-8?B?ZzRPcE93V3JHVUlKZjJVTDVqalJsU0JBSjlFY3gxVGFGUFFFQkdUWDNYS0FU?=
 =?utf-8?B?U2dLNkJRdnJncURDRFExNnA3eUxsRWlFcUdRYUFKVlJGbk1LaGVJRXBKR1Zx?=
 =?utf-8?B?TEVQcllDM1BlRnl5TElhU1dITnhDRWlSZE5rd2s5SUdiNmN5aGxjL1Z4SENG?=
 =?utf-8?B?dTcyVW9wS3B0cU5JalpaTjdEaitSM0VoQ0xwTFhrbkNZWHJVU3ZUdzVrTXlU?=
 =?utf-8?B?S0FONkdjZTE4dEdURG5CeGQvVzNDaXVXaXNpcWQ3Y2w5M25iMFNwd1VKNjlj?=
 =?utf-8?B?ZldieXhBRVBEci9JaUE4V0VLcDhYaVNrV3UzUGVkWU1nTUpUVkV3SUZjY0ND?=
 =?utf-8?B?SFJjWHEyTXlzZThORGV3UVBnaDBMWm9GYXRjK2xoNjFyMU9zZzYvcmxTZ3lt?=
 =?utf-8?B?bGZyemFERVdyODdMdmdxWWM4RWhaejB5RDlJY3Vxa3B0bENpOUVna1NsbXds?=
 =?utf-8?B?eUY3UWsrQ0p4L1RLYzRhbm9aNXBiSlAva0NPblJZMG0wSUdac2tsVmE3eFl4?=
 =?utf-8?B?aWFkMVF3Z0RHN1k0WFo5QjN2TUt4QmRFbGhacGJnVThqdHQ5OWFRV2Jra2ly?=
 =?utf-8?B?Nm1ycFFlTVAyWWhkUUp6ekcwV1I0MzE1ZFc5VDhESTcrdnlWRStWSkNjbzFh?=
 =?utf-8?B?N29hbkxmQUdENzFWbTJXTW0yc2xjSHRzSmJ0M09sZkJpQ0JaektDVCt6TU5L?=
 =?utf-8?B?MUFzeExZVzl4dGhSRGFDdXQyVHdRVFd5TGVvK2dUYTdpaHpxM0d2cXRIcHhL?=
 =?utf-8?B?VWxUbW9HMGRvNnJhc2M0eWkyQ2ZpV3pWMTRpOFpvSU9jeFROcWFjVmRPV0I5?=
 =?utf-8?B?WEhRTzJrUWV5d09SdmNYbVhsVVZ6eW50UVlYbm14SmwrRlowTjBGMFYvc3Mv?=
 =?utf-8?B?MTJyT2lrQ3hNaGpFWXkxMnYrNHJGbEp1REI2RCtuWCtWVlQwalVRQ2lubWtD?=
 =?utf-8?B?MVFpZGdZQk94OHJNbUEvUVRndTBYaDJ3YUtmK1BEbEVQTGprS0J2TEcrY2E1?=
 =?utf-8?B?andISXZwRmIyUkprblJzVnhSbnhsUFFZbWFNd0cwRi92M3VmSisrSlhYMXA0?=
 =?utf-8?B?TnpSN2FjTWVQYlV6Wi9kb0hkY1R0RnJkd1FOdHExR1hCYktuZmMzRjRGUW1o?=
 =?utf-8?B?VStxYU95WjZhN3NTeXFsYmtvTTdKdW5uN2crRUswMDFnV0NNNm1DZlBSZXFh?=
 =?utf-8?B?OGR0aXBXZmVJK3pYR0VZOWRsSjg3NVRkRDJ0ekJsVW1kT0hZS3RBbXFnL0d0?=
 =?utf-8?B?dHkxRzFaSDg3aTdCTGxaRUxVUDJ1dUwwTDYzTWVwZFFVNWsvOE9TYmRWWTFk?=
 =?utf-8?B?dWw3aUZNY29xWUhScTcycE9CSHNsVVJGTTNVbGpPaHBWMTBEcnViclNoR2VF?=
 =?utf-8?B?aWpHZnNPaElabmhEdlcwMGJRbU9payt6YzEzUWxGcnlxYW5mQnhCeHlNQmpD?=
 =?utf-8?B?czJ4YThTRmg4RFFrb2JOQnRnb1RTTkdJMFR3YUNLT1hDZjFNbVRYMWJiZVha?=
 =?utf-8?B?Si9NMXg4clZHNHAvVS85enQ0RmR0Y1FadjR5L3RJVVNsT2ViY0krMnQzaGlx?=
 =?utf-8?B?R1NXZFJKUDBpMy83SUdxbnBHTWdrMkI2SU9USEVNS1ZsQ0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ejRNLzYydGl5eWdja0Z4WnQ0Z05XMEp5cVM4WVBvWTMrb0NNdStrMUc4YzNa?=
 =?utf-8?B?dTYyYnA1cFpzejNDUlJvaldvSm1Vb0dXczBDTG5BQlFxenE1ZUk1eTQwQzJT?=
 =?utf-8?B?WW5teDA2RXlGQzNuUTNHaDF2NWw0MXFabHo2RlpUUGRoMVA2V0l0M2ZHT0lP?=
 =?utf-8?B?b2NING84WHBoSmpmalRwa0dTdEE2SlVWc0N6Y3NnNkNxREg0ODErcU9IVHFz?=
 =?utf-8?B?dkxyejhBcXJuZGdlM0FrLzJtcFJ4ZkZVTjk0WnBqbzB6cVFYek9CckVtd0RF?=
 =?utf-8?B?SnpiTFRCSGQyQWpDVFZpZXZpc1I4K1ZMOEExbmxBanlBLzZxWWI3SDZObkI5?=
 =?utf-8?B?QjVjSzRBd3dWellTZGk3a0F0dWRBM0dYeGtsYTB0SXp4VzJGaXpZVEYzdlla?=
 =?utf-8?B?b0U1ZStORlBibkF3YVFZdHppckFLWnRQN245SjNDTURmN2dNNW5vcFBRM1BI?=
 =?utf-8?B?cXRyMGY2eUc3L0FIMHVkMWgrMkRLUkV6STZRdEoybndqa2ZFSVFJMEc3N3Vr?=
 =?utf-8?B?aEk1cjZyY3JYZTNKYVVRMGZjNEdRY0dQYmY0ODQ2YUpXZEtITG1UY1Z3SFZp?=
 =?utf-8?B?NzNLNXpOQzhKZXdVQU9pTFVSOUdZRTVqbkJCK29Hb2ZzVFIyOVg2THlZRzd6?=
 =?utf-8?B?WmhOU2FhZllQZWRRTVF3eWwva0dpd0graGFBQXFuemFBVDNjTUFUb1lGdnlU?=
 =?utf-8?B?cTc1ZUVqT1J5b1JUZHBtWForSXN6djFrN1dhYW9KbzluREpxbm8wUjlQaDh4?=
 =?utf-8?B?eE5YbStSRmRlV2JSWlR0QklmR1lvMy9vL0hZcVRtTHRaOTRaWVU1c0RwVlo1?=
 =?utf-8?B?c0lOSzJ0Y3V4VXhjVEdNRGRxTkVYUUUrbGc4YVovU1o2VnRKbFErRDlZODNR?=
 =?utf-8?B?VXAvUnpRTW93dHBpTHVqVVkvdjVNdTZJcU4wZThvTWFvTFBTS1lDbE9lcVE5?=
 =?utf-8?B?MmtJQy9RSWFUcGRPTkRvVlZkSkxUYW9QTFJUSXg0RCtHVzh4bnpma0c0cEFU?=
 =?utf-8?B?R29rVTl4M1BwYnEzWTlFejJRenhuRTJNY1ZyS1pKQjJpVE5Qa3ZzWUdGU1NC?=
 =?utf-8?B?QU1uZ2FDV3doUGpaaVBHejVBNzR0MlF2ZDlnQ3dtaU44Z0VWVEpiNnZUanZp?=
 =?utf-8?B?TUlWMll4MytCU25WdW5oWTVSMHVGaXZQbXdRU0JhRlpzZTdlQXZLQnlJc2ha?=
 =?utf-8?B?SDVpeUp1UTU0WmdLNzd4U2J3Ym40eEhqcWRadWdZM25kMDdTWWJHZVdzbzdC?=
 =?utf-8?B?NVRqY0g0WlRnbDhOcjEzS3NPOHVsRmdKUnJvTGIyUG1iZFQ3eVlSN0Z1aXFJ?=
 =?utf-8?B?NTV6VWRRSWNySTRUVXVYZmlnWkxhalBMQndGZk91eFEvaEJZY3pyYy9RYjdF?=
 =?utf-8?B?cDk3N1E2ZGEzeFNRaEZVRE90dzljcEU3REZFejVZMDNFblhHMUdtNkJxczlm?=
 =?utf-8?B?ckw0ZmxuNkJ3aDFHaVdPRVZYYlRwWUFiclBuR1pqME9FTkUwTEdLVldkN3pK?=
 =?utf-8?B?bHhjelQvbm8rbkF5UzJBUzRLWVFaNC9kOWRvSytOdkRORFYrejZOTzhvZHVi?=
 =?utf-8?B?c21hSHl2MlFSOXN6TnVEd25DRVlmYXlVVVZ2WkI1eFhPVTR6R21sa1dPUzdT?=
 =?utf-8?B?YWRYRk9wUEFUeEp5cXdDc1NjUEdoQWxTRCsvTVNHbkVidEs4UlZEcWIzUGpT?=
 =?utf-8?B?cUlWZmVnQkIwaEJLSGk0dDV3eGczdU9yMFIyaUdJWjdSeHhaODFmSlJNcDJm?=
 =?utf-8?B?Q0pVSW1PYWpndTR2eXU0Z2FJQk82OG8waFZETXJQeFNweVJHWENtQUozTTVv?=
 =?utf-8?B?Z1JXVENsZ0l3VGh6Sk9rUzVFWVRhaVRBVkFEZ05MRW91QUdpak9PcUlMTEZO?=
 =?utf-8?B?UGlaNWZUejkrcEJFSDBxSDl1dm1JZUJtdGZZaUZxWjVLakNhRmVQci80eVhF?=
 =?utf-8?B?dHMvZlJYenMrR1o4TFpxb2pOc3FOTkVxWUZsejgzbVFabURiRmM5cDR0TmNm?=
 =?utf-8?B?M2MzTXZFZzNBMlUybjRuamJWeXArek9KeFRpNzdPaDFtZE5iaS9jQnI2S2pR?=
 =?utf-8?B?aERLYjBERWo3VjhoT1p6VFl6Z25HRGkzaktrZ0E4QnFRTzZjTytQVWxmdkJB?=
 =?utf-8?B?dGxydmdFQVRsM2RxdTNOS3FWbHVKMUphN2xnYjA3NUplbTRUWXdzUFdURVRp?=
 =?utf-8?B?Q3c9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c16a8e10-abc3-4902-f9da-08dccb2cbc1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 08:53:37.4740
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R6PXKrk38EcofmhKTxMGtwYgV6ybcrLIqDYkkhSQ8CvASrTdnBHkvoAVOisEv+xe2h3EtVEpRwheJIAERKvU827e2Q2JMYLKBfYZ+XIyb88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB6698
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_015346_887158_3EC89583 
X-CRM114-Status: GOOD (  28.18  )
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
> Sent: Monday, September 2, 2024 9:47 AM
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> Hi, Biju,
> 
> On 02.09.2024 10:54, Biju Das wrote:
> > Hi Claudiu,
> >
> >> -----Original Message-----
> >> From: Biju Das
> >> Sent: Saturday, August 31, 2024 6:14 AM
> >> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
> >> RZ/G3S SoC
> >>
> >> Hi Claudiu,
> >>
> >>> -----Original Message-----
> >>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>> Sent: Friday, August 30, 2024 9:23 AM
> >>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >>> RZ/G3S SoC
> >>>
> >>> Hi, Ulf,
> >>>
> >>> On 29.08.2024 18:26, Ulf Hansson wrote:
> >>>> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >>>>>
> >>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>>
> >>>>> Hi,
> >>>>>
> >>>>> Series adds initial USB support for the Renesas RZ/G3S SoC.
> >>>>>
> >>>>> Series is split as follows:
> >>>>>
> >>>>> - patch 01/16           - add clock reset and power domain support for USB
> >>>>> - patch 02-04/16        - add reset control support for a USB signal
> >>>>>                           that need to be controlled before/after
> >>>>>                           the power to USB area is turned on/off.
> >>>>>
> >>>>>                           Philipp, Ulf, Geert, all,
> >>>>>
> >>>>>                           I detailed my approach for this in patch
> >>>>>                           04/16, please have a look and let me know
> >>>>>                           your input.
> >>>>
> >>>> I have looked briefly. Your suggested approach may work, but I have
> >>>> a few thoughts, see below.
> >>>>
> >>>> If I understand correctly, it is the consumer driver for the device
> >>>> that is attached to the USB power domain that becomes responsible
> >>>> for asserting/de-asserting this new signal. Right?
> >>>
> >>> Right!
> >>>
> >>>>
> >>>> In this regard, please note that the consumer driver doesn't really
> >>>> know when the power domain really gets powered-on/off. Calling
> >>>> pm_runtime_get|put*() is dealing with the reference counting. For
> >>>> example, a call to pm_runtime_get*() just makes sure that the PM
> >>>> domain gets-or-remains powered-on. Could this be a problem from the
> >>>> reset-signal point of view?
> >>>
> >>> It should be safe. From the HW manual I understand the hardware
> >>> block is something like the
> >> following:
> >>>
> >>>
> >>>                   USB area
> >>>          +-------------------------+
> >>>          |                         |
> >>>          | PHY --->USB controller  |
> >>> SYSC --> |  ^                      |
> >>>          |  |                      |
> >>>          | PHY reset               |
> >>>          +-------------------------+
> >>
> >> How USB PWRRDY signal is connected to USB?
> >>
> >> USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.
> >>
> >> Is it connected to top level block or connected to each IP's for turning off the USB region power?
> >>
> >> ? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)?
> >
> > As per the update from HW team,
> >
> > "SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from ALL_ON to AWO (or from AWO to
> ALL_ON).
> >
> > Refer to step 8,9 in Table 41.10 Example Transition Flow Outline from ALL_ON Mode to AWO Mode.
> > Refer to step 9,10 in Table 41.11 Example Transition Flow Outline from AWO Mode to ALL_ON Mode.
> 
> All this is not new information.
> 
> From experiments, we need to control these signals also when booting as intermediary booting
> application may control and leave it in improper state. W/o having SYSC signals configured properly
> there is no chance for USB to work (it should be the same for PCIe but I haven't explored it yet).
> 
> >
> > When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break."
> 
> From experiments, I know this, as this is the reason the SYSC USB PWRRDY has been implemented in Linux
> and proposed in this series.

You mean you call reset assert for USB PWRRDY signal for system transition (AWO Mode to ALL_ON Mode)??


 
> >
> > Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux?
> 
> As you know, the RZ/G3S USB PM code is already prepared. This is also configuring these signals when
> going to suspend/exiting from resume. W/o configuring properly these signals the USB is not working
> after a suspend/resume cycle.

One option is to handle SYSC USB PWRRDY signal in TF-A, if you plan to handle system transitions there??

Cheers,
Biju



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
