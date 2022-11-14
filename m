Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C09DC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 06:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVk8co9pCchY+9r3rofPl1yrrr6YfEK4WiTI2qYipD4=; b=OH+3AZyqufdkus
	pLi9W65kxTokQ3PPJndYuwLMUWq0FVfLYxiX8olbc7HWw3GWzk6uFI7/PGxyg8gfsrY6F02twJP87
	lIVkhVnJHvfXk4kkFemlCcS6uHsa808koaYtijYdcCYisJYJ1LsH85yJstFsZj5kffBpEr4KYoxNl
	uEWsz44taXlsjvMHrFmtn9CQgvYTpngXIb9d/V1HGCZePi75ahZyexnYo8NIO5WoCkm/C+KAYmB7K
	IBk41yGkNWCNp/6Tq6JFGg0+CSRWa8OUgasKYAnYXu4Pe5SKKaDLZLj6aagUEIrzxuRMFRuGQQ+jC
	8l2PXM7rufls+m9sylpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouScl-00GBns-HI; Mon, 14 Nov 2022 06:07:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouSci-00GBkp-UQ; Mon, 14 Nov 2022 06:07:14 +0000
X-UUID: 41b19b932bbb4135adc3e9447f497131-20221113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=o0s5vKCmfifkTZFvoESF62jgP/ZALk06Zen4Sv72Z3U=;
	b=HWDg7yZFdqg/RDTgfCs1Vm7JqP6DBm6GwmEPpDcnpMqpPMYUF2B9P6aMTuZ6yUrfSGmBxAgL2uAIjvd+N8UMdxKMuoNCwaXBDKDEwpnW7zJM+/UtZE//oghyZ0W/RL2P337M7uKq0p94cIk9re/ZEV5nF1tu9XN2CzLxKmMR/NU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:c6e97b47-0802-44ee-ab76-6b3d94a41083,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:1,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:1
X-CID-INFO: VERSION:1.1.12,REQID:c6e97b47-0802-44ee-ab76-6b3d94a41083,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:1,FILE:0,BULK:0,RULE:Release_Ham,ACTION:re
	lease,TS:1
X-CID-META: VersionHash:62cd327,CLOUDID:ed85a7dd-c087-4fa8-aefb-7a0acf417f59,B
	ulkID:2211141405599C6R7XNJ,BulkQuantity:13,Recheck:0,SF:38|17|19|102,TC:ni
	l,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:41,QS:nil,BEC:nil,COL:0
X-UUID: 41b19b932bbb4135adc3e9447f497131-20221113
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 253464229; Sun, 13 Nov 2022 23:06:59 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 14 Nov 2022 14:06:27 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.792.3 via Frontend Transport; Mon, 14 Nov 2022 14:06:27 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lD8HNk+tWvrh/WUl/WZTjANvWtOxRbqrt4dBC6dDiaEjxbScYjcXWiphBtjdBJw8h/l3dHHtBIpQn5BknPVjCc9DrgzLyyi0sIo5VHp1ZJ9DrX9gxIvVbCwoFEkcLCIf56nfwopIj14FyzLDfiLF41wnM1fsdyHB0B5BnGfuOkO7cgxW3F8VNSt4eSeMA+45DvWv4OF7238GhRH0W/6zNDa31F049gzgrmdI7DBUDa+SsmOW4W8UBMYltAx4mtb0RMnFFJxIwt5PwUhS0rMt3ofQb31FZVZX5LJjYy3PL1WdPdhqrAf78GWRBTOZgbQLXczsFBT+82MvFYZEv7ebFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o0s5vKCmfifkTZFvoESF62jgP/ZALk06Zen4Sv72Z3U=;
 b=lJG/b2MwxMiQIVRXr8IMiEz8iC53jrw3WCSHmDZ0pmNehZNV8ZGMXraP1MhT+7WMSEPKYFLt7alDAN5jnjcohyuDu1KxnwdI2yrRyksEsY8es5WGZe6UuiZORZMtMLPaiXmO9y3LL54QFs/1Be9xVCrbBesjsVBS2wd3di6nlzt4IdkYtW2YniOwRrucl8W+PFgRYBn019lqrMD9wRFBOWChFLqzU8ESi0IqXi/7U8kCs3lfeTA2mZBJdC1f1bEEq9LpxCNWbljfyNuQEwXJO45a8bcZALP07FZS0tk8xuesYiR5rAeZ4xEaRLlvOz/JvwN1P9jynnJ9qvfBHMuo5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o0s5vKCmfifkTZFvoESF62jgP/ZALk06Zen4Sv72Z3U=;
 b=gdfHA0vEIMtjOW+6ZofoUiWTsL3VRMhv1wz/xZ89+r9Ttr3Qd6qm+DSGg0pvjLZSL6lyY7rUbWRUKb4V0+FdYehaD6zW5S4xuFh/0P3dEo+mNS60S2C4SIC2soTfp2V+36vsYdaChyjlA+IrDQSO9dVVvsP5ug+i9oO3oQ1gfTs=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by SI2PR03MB5514.apcprd03.prod.outlook.com (2603:1096:4:125::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 06:06:25 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696%5]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 06:06:25 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux@fw-web.de" <linux@fw-web.de>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "kishon@ti.com"
	<kishon@ti.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo@kernel.org" <lorenzo@kernel.org>, "frank-w@public-files.de"
	<frank-w@public-files.de>, "pabeni@redhat.com" <pabeni@redhat.com>,
	=?utf-8?B?Smlhbmp1biBXYW5nICjnjovlu7rlhpsp?= <Jianjun.Wang@mediatek.com>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Ryder Lee
	<Ryder.Lee@mediatek.com>, =?utf-8?B?Qm8gSmlhbyAo54Sm5rOiKQ==?=
	<Bo.Jiao@mediatek.com>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>
Subject: Re: [PATCH v4 03/11] dt-bindings: usb: mtk-xhci: add support for
 mt7986
Thread-Topic: [PATCH v4 03/11] dt-bindings: usb: mtk-xhci: add support for
 mt7986
Thread-Index: AQHY9ndewXwhorL9bUuTO8J9g7ABbK498YQA
Date: Mon, 14 Nov 2022 06:06:25 +0000
Message-ID: <dc8975241d4c20743417d94e871f90425da06035.camel@mediatek.com>
References: <20221112091518.7846-1-linux@fw-web.de>
	 <20221112091518.7846-4-linux@fw-web.de>
In-Reply-To: <20221112091518.7846-4-linux@fw-web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|SI2PR03MB5514:EE_
x-ms-office365-filtering-correlation-id: 355db9f5-54ad-4159-661e-08dac6065cd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s0SNjRQaVGGbPELFDO3p229B+Yj1PutRZ5LfGSX5oQo7c59LQgnxb8i7jtQrgwnrLAZxYHbBDRAnoXswiNN2+2Jv4lHTGcDfml1Rldlz4gdtST7m8KY9XCCmct7u71iLn5yx5EAGrH5w931WYwKaN27+NWEPGWXilicL8dKOYiyck8+CCqvW/zlsNKJJcQvCvXO/RuoN1LviqvpoFgtZ7MJG3p/yppW7oHqwj0H9t10tO/k+rFecRX6KIA9e8v2/wMczuo9xBEJOo+pSxXLJiCAOWcGcZTSkP3FE8XyEMFu0pP4oo/XwBbVUBfAtSH4P98ANZbmOtQC2ilZiAoC9hPvwwH/JWtF2jSeBQO/z0ofhfpkwlC7d6IZRXnxWuyS/igzzOq+YisIW5fnJSz8gIFBE1RT79HERZzLu3DjjkAiWeF6ZeYaclReO1fbwNS184Jm3Nk2WFiBf5BwptWO4SjIzc1qRvjnAJ4H5GJ+SvecrdAipMNNlZ8iwliYr7zbVIhkoYjbMuYKoVeoclDc1fiFA9pyK06wDv1tLKi63l7wSuUXN2Z9X5bYb4Wg/xXfq2gHX9oz33dzDT6ayWiVPvfsqB86Joi2jQNnsFSc9v2roqJudDe6mmgNuGNIYYAicxhsbWVYlfKfzQ5f5xbKmwJ2A0bxVXCEu7JVH1bSvAl4WuiPZfDvfQC/ZOYz4C+QT5+fyUYwUpvGF7lNYjWP35IdyBTvyRt3tWpNhSjOLrVAwvuauHFSMTliZ4aC1IpaGOoR2KsBTRW33yb6TVk4kyrsy4RACHfUn91lFOlioTuvOeh339Ak1qAlVS7uBV73/x7jp3CfMKm1VMf8lTAUOMw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199015)(2616005)(8936002)(4744005)(38070700005)(478600001)(6486002)(5660300002)(110136005)(54906003)(2906002)(122000001)(316002)(85182001)(71200400001)(36756003)(7416002)(86362001)(66446008)(186003)(76116006)(66476007)(66946007)(66556008)(41300700001)(4326008)(8676002)(91956017)(64756008)(26005)(6512007)(38100700002)(4001150100001)(6506007)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0RkdS94R0NWeEY2RXNOazhnUnFGUHczdHg5VGxGNmVsbmdTUUp6OXJDaHE2?=
 =?utf-8?B?bzcxVUw0aTkyU1VwOFRUWUJUVCtOK2lQbHZOZk9MVkNwTWhRRzRKejJobWJS?=
 =?utf-8?B?Ujdqb1VQSkRjN0I0eE1TL21sNy9LZXNHMnp2S3ZsdDZXUWlvbWpGamxKQ0VF?=
 =?utf-8?B?RkFmZVJmNmltNlNBZ1o1dUJNTnAzWTdkcXp4aTF6UE5MbER5UHIwZiswZmtE?=
 =?utf-8?B?amtlOVY2TlhKRnlGSERQRHpGdE5yRzZUbkFTRHgzQkE4VGZyc3A0RkxGWlRn?=
 =?utf-8?B?ajE5ZHFlYitIMk9jTXUzN2JRYVVybzFMNXhLZHNhSXZHcFFmeWVicWl5bEU5?=
 =?utf-8?B?Rm9zVUtRaFdCV0ZrRVpJMGhXQUN2M25CRlEybkV6czZUU20rQnJRWTQ2MHVI?=
 =?utf-8?B?czlxZlQzUmZydTUzeDJFR1N2NFhIdkxFbzNKa1NMS2Q1RjgyMzRKVGFWZnMw?=
 =?utf-8?B?YlJFTXg0blNjVGE3TDZwd2p1d0RFVDV5cHljRW1lNS9BTmlqTUhIdnBYRHNj?=
 =?utf-8?B?ZER3RVZrdlJEcGRDRVQybDViUm4vQ0ZrSHRzOXdxUFgrWGlwNE5tMlNnOG8r?=
 =?utf-8?B?T0VEMDNoM2dKcXNyUEhRSzErQzErTXd6S3VMK1lGZUV5RG1STThBRWVDWGxv?=
 =?utf-8?B?VXdEays0M2NCazBSK0tmazBXYllkWE00eTd5dk8wS3JFVWZCV1J5T1QycU9U?=
 =?utf-8?B?RHBObEFYMDV3WExhQVI4d3JQY05CVUVsdzFWWDZvdWR3ZVAveWFEcWI0STY1?=
 =?utf-8?B?SVFET21XSFdNYzRvQ1VEc1I1VG1xU3psNTk5ZE44aWwwSTBZMjcvM05NOHdp?=
 =?utf-8?B?dG5jQllpblRoNnZ2QUx6Z1h1Q1lxUWFJS09DWkNiaEZ3Qkl5UUUzcTdCL3cr?=
 =?utf-8?B?dDhUOXRLaWNxcjlXbnlycUJUZlhXa0czUS9CcWg5dmJGRXBSVzZvdHlZZnhD?=
 =?utf-8?B?dUFSNUdUbFo5bHorTjN3d1kxcUpXcllJZ3ljVGxQaG5ib3pIOUtydm44WFk3?=
 =?utf-8?B?SVBlMmk2ZXdWaG85cjRvOVNWTW1kRnU0TG1BNDRDMlAxcXZwVXl0Y3MxUG9y?=
 =?utf-8?B?UytJb2EyTXlBUUd6VnBlWEVGUzByT1RIZklOYWpNYjRzV1dOMU4rNGR1ZTRN?=
 =?utf-8?B?b0FWZ2dLZXlYVXJYZk5MVG1QNk1tSm5KU1grTHVOem5vU2R4d21UUTd3NkVK?=
 =?utf-8?B?MzZKbkZhUWxNME01Q0F1NGIvaWFCWWJ1ckkyem5NWjQ2d05OT0hjNWtiTGt6?=
 =?utf-8?B?R3I2SEFodlIzb3JZMGg3WmR5MjJ4bmFHZFYzcE9vMWJVcHczUGpHZHFUYVlO?=
 =?utf-8?B?dXRXa1dYUHV6YTdvcS8yRjBwOEFpZDl2eDl2ZGVqclNZcEIxRUg5aVVZR2tm?=
 =?utf-8?B?ckRkd1BnVnNXSzczS3NkTlRCeHBoT1hKZDEva054aHJiU2dsMzhnUllueW0r?=
 =?utf-8?B?K2hhVlZScXQ2K1hBOVBSeWZjdW9FUjg1ays3QW5lUUJINDJoSlRCM3loSCsx?=
 =?utf-8?B?Ync1aW9GMUFFenpQaVNIY3RpTjBSOHFLQ3BhYmdjTm1OSFhIK2p5YWhPZEZW?=
 =?utf-8?B?em95NG13TnNtazRsWFJja3hlRis2Q0Q2aGM3dm9qQU1lTnhOL0lqTGM4NW84?=
 =?utf-8?B?Z0lLOGRYZmtzSWtFUVM2VEJ1bHRRVzJ3NnF4T3I0SGxvdHhlelprbk10SnhL?=
 =?utf-8?B?eDdnUFRQL2FqdDJZN1lweDhQdG4xUGEvQ2xNekJFWTk4Y2Q5MFAycG0wejJx?=
 =?utf-8?B?cFZ3TkVWRmViQmtuSUR1SUJ4dnJiQUo2TGd2cC9GRGhaVW1xaUdxZE4wVHhv?=
 =?utf-8?B?Q1BaR0VNOEdSTWtDZXJmdnNWVHlwWWl0djEyK1ZhbUpnTXBZRXN5TktNckVK?=
 =?utf-8?B?dVZsTjBQTGxjYTV1OUxZSWp4UjFBN1NYNUNiRHl0TnBFT1lTNHB4NHJtZnpv?=
 =?utf-8?B?b3hQNWZ5S3k1ZVkyUHFrZ2NOanRWMXB5YitXV3BJVFBBbnlqbGJIM0JsQ1BX?=
 =?utf-8?B?T0lxdEV6RVBHeTF1YlhadFZSQXYvVTUzUlhHKzZlMExrM3c5aitrQ2JvYkhZ?=
 =?utf-8?B?dnJUZDFJaVJGUmNCN1JtZHhUWUxWaU5RRVA1SVlleUNYdk02N3hMNk80akFy?=
 =?utf-8?B?VkhTTDl3bHV2UUdGbS9pV0h2dlM4alV6R2d5MFUrbERoVFhFempKanRzT1ND?=
 =?utf-8?B?RUE9PQ==?=
Content-ID: <6CFC0C2D2D24A54389A430E32D095F0E@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 355db9f5-54ad-4159-661e-08dac6065cd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 06:06:25.5455
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MsH/uV2jKicTnuUR+6hvGcpgHSwGtyrYWHY1HsSk0B5WSdfohlmiuAeF/I4alzr+GbI8dgfkXkeBZ2W9r+oIfdRBN3QxmeKPlRX536grV8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5514
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_220713_012749_74205EDD 
X-CRM114-Status: GOOD (  12.07  )
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

On Sat, 2022-11-12 at 10:15 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible string for mt7986.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-
> xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-
> xhci.yaml
> index 939623867a64..a3c37944c630 100644
> --- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
> +++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
> @@ -28,6 +28,7 @@ properties:
>            - mediatek,mt7622-xhci
>            - mediatek,mt7623-xhci
>            - mediatek,mt7629-xhci
> +          - mediatek,mt7986-xhci
>            - mediatek,mt8173-xhci
>            - mediatek,mt8183-xhci
>            - mediatek,mt8186-xhci

Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thanks
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
