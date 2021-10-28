Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECFBC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 01:52:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C64160F0F
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 01:52:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4C64160F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBEvcgqeSoxh6KAnVTBRPUpi8Oxr+VkR72QuTksHB10=; b=l4E6UCyyAg9JIO
	WpbXTFKkJ5WlT+oBqig0Fm3lYmBSyGmm+Uo+M6zpt0boxom6is/v3pTjbagI6IS003HOO6NPxJv0K
	ReiBd1cPpkovFm1IiBsCePweB7DIu06tqNgfZrhZoH9tBpGKrnMvlotQRXl3ANlYKncJWDKe6POoG
	WJ0j8b+xDbnEQo/Jla1NKqF0tpDO6ply2ODL6F04eGf5X1dw8igF6g3KbMBHvT68UME7nwRmUXTQI
	Zp92Ljz+rw55f370QxUyD9CxGyMnF8vGn0+WsqAsLPPh7cjWa+OTQtYvJhhGYZLLu219cNeFuJBbY
	tn4kOat180Zn14bT9DBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfuaP-006gEc-OX; Thu, 28 Oct 2021 01:52:09 +0000
Received: from mail-vi1eur05on20621.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::621]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfuaJ-006g4O-D3; Thu, 28 Oct 2021 01:52:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ojjz3haKeITverFWMRVn9AHo9vON1yWew0AewcWY6J+cNopVnK6kuBy90i5tMyT3gXvF9YHzsgmishKXWLunSbxoKdhfUgl4aHH4CnKUEfEg1fgrzXPts71xiTkqFH+rjawS99iobkJ5mgYMoX1Z7o0n9dgBU3KDrsL6G9eHsAMWIMGD/6F58qtuiyiPveS2kYt4BWry/W9/id87F2y55Eb3TNDJjKYDvbcuQqwhEU5EqBLLAr6N+ATrzYfiZzhULEZsTEXssZiQ2uY+vGiWRAulbHy9zQesUziX9mCB8QHYkz8+c/2x1FRiHSz0BxaWO2iinLCe2CDZkkDw8I7olw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Z6lQcucqj3OCvWzwzvrgBOvWcdRBxrK2CTX/fmMaRs=;
 b=goqxrfh6Qgytfrhgfxnf3Kvj1mvmHdC7+ejqPpR0DjJwaCup4v8gh9A044d8YRXvwGVtVBuJVPrXuRvdANSu0/Xo93FjI4RBoStQ2eWSiSOXkStMBvBNnoa0IQfZN/XCExQldMVkEyJH+hFN3o/R+Hnz9W5cV29J6Rd/Ru30YnFCn/z86vNmX4lICbF30pV/1lSEhyrMwdqAccxVyPgWsSEYLAAC+13eb7qkr3Wsn3gxm/K1z2dYCpL6whMrxcV5PTjo9h2IzObOoxwBMMApC9hy9Gm8RouiwCxthDSmgwSe47sJOr7L2jb5aWpXRYbZmxARNJRfsLuW2W4ZX1tiaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Z6lQcucqj3OCvWzwzvrgBOvWcdRBxrK2CTX/fmMaRs=;
 b=lPBII2EyZ94En2veMHvYJgJmJwIyhq2UScaYyrVHK7AvH5QXPufOMiTtIaNGqU6/3prK4lO2rDHHsIEfYf42E+JMaNvBDK5qRPz77NHy1advYX8JNVGmUgsdr1IUIVFym7+temSaPclS35hoetawRgydwAemO96i7u4lRp/2UqI=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8531.eurprd04.prod.outlook.com (2603:10a6:20b:422::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Thu, 28 Oct
 2021 01:51:46 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%5]) with mapi id 15.20.4649.015; Thu, 28 Oct 2021
 01:51:46 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "tharvey@gateworks.com" <tharvey@gateworks.com>
CC: Lucas Stach <l.stach@pengutronix.de>, Kishon Vijay Abraham I
 <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, Rob Herring
 <robh@kernel.org>, "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 Shawn Guo <shawnguo@kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, Device Tree Mailing List
 <devicetree@vger.kernel.org>, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
Thread-Topic: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
Thread-Index: AQHXwf8T9WRZIWT4CUunBVSnJ63L4qvZhp6ggAD4IYCAAKk/cIABRTmAgABCoVCAAPyvgIAAhMLwgAEGQACAAA+SAIADuD4QgABZ2ZCAAKpdAIAAx5NwgAC3poCAAK5bEIAA3OuAgACiz+A=
Date: Thu, 28 Oct 2021 01:51:46 +0000
Message-ID: <AS8PR04MB86767833DF3A0E6A7F3713048C869@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU2b-=T_gTsRBvdF7SRUZopEFOU_Np8mEJn8bOpn5b5FaA@mail.gmail.com>
 <AS8PR04MB8676B2AC24E2769D47A1ED478CBD9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2AitmxCyam5FArmxAD41QUU=5CF_0JZhm+uzdkRbr7kw@mail.gmail.com>
 <AS8PR04MB8676840D7EDD56D10F9471288CBE9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2GU5=mM5+2Yg9gAuU0RSdJHWEU_+ykmz-qUWfsOnRJ8g@mail.gmail.com>
 <AS8PR04MB867624A8A5B6AE27D6A9160F8CBF9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU1Si_bv0_2j5AU-v_1QtUGqwU_4u=NksAVFFXXkkNC1Sw@mail.gmail.com>
 <AS8PR04MB8676D9FFB6506A09D104E32A8C809@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU0cLd7oex5uUyJenqs229gsgZe_Vpu3uyKGw1=B+Uu5YQ@mail.gmail.com>
 <CAJ+vNU0wcQtrKh5W7UZknEiV2o7MKLV90CCrJqGGw=x_VYwMGg@mail.gmail.com>
 <AS8PR04MB867697878533A37B72D7E4AA8C839@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <AS8PR04MB867620E1A1E940275CD38B528C839@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU1nTYSHPZ1Twmy4k4pKuH7xQy95gTOJXx+mcTMZRfj-TA@mail.gmail.com>
 <AS8PR04MB86767EED0FB08363A80D86508C849@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU0YmmmHxS=jo8U=RQFGH6CpabHCJP=xt5F=1HD0552Cvg@mail.gmail.com>
 <AS8PR04MB8676AA107627892553C8B3878C859@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2LyWkNqE_anrndtTLgj9DjpB9FYyAeroj-oCiDa6H6Lg@mail.gmail.com>
In-Reply-To: <CAJ+vNU2LyWkNqE_anrndtTLgj9DjpB9FYyAeroj-oCiDa6H6Lg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a3a045c-5ba4-443c-4aa2-08d999b57ffb
x-ms-traffictypediagnostic: AS8PR04MB8531:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB8531C8BEFC8E7B4A0AC966908C869@AS8PR04MB8531.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9knHySWDzH0nF2xXWdxQcGlxMg13AR2Cmk4Wt8N9GHofkufjt4eg68v/EjIhHk8dendGrW23rTnMW27Bf61HHYlDP52z5BE/7hto0EIWLlVGBIla6K7nr0qR3uaLhwlG7976dqr2CEFg/JaTXoWahIAj13DnPw5C1oTskCit/XUdTPNG7qFgG2v4HbvzP03WO/ptiPL5IjFY/vIOktoig/BW34A3Fqk0pW93ntMnhHRXPZQuL0weWTQVuRhYrn8kKGugel6iA6ZRpPaAZJsICrHCbTMEHmFJ+kAjYexpAN5464NVpYywWBVaiD53ak1wMj7dYEwUXBzWraDXoXWYCKQ4SANTmhP/zcH8M1bTGUyBEDfTpbdpIta9ESC9OJbxQo3kvmt/C5bo8tUIpFnhBnbLvgzjU/OCuxPrAAlTDe4jDw0wm+Grz/XNyxXHygOXiWbXEFtQes0RZHIsIt+InyzDTqVqT31obk+O3vlV21Z4Ubwn7KaVKuE2melcCoEJ/W7/aAtiZjCBYmGGDQgzRSRhsrfGumLw6SCdDnKvCLvDK7K1AJVa1iP7Oxxl/u84fH7WnOQ9orTPcsEshiDLwCt5YpFQVVO8go1BF8Md4SK38NAzs8bt+XRZiNYVEWrBrEgjEymS9S+pml1/CPnaf7OLzvL1tCYWVAVxMPVi7U+b+jNkeCoHKVOpUoE/GAI2Xy6mj65RRwIqj+i7TKEqDSqUUkw0SyKYV2Ck2GHNKC0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(122000001)(86362001)(316002)(7696005)(30864003)(508600001)(6506007)(76116006)(66476007)(186003)(26005)(7416002)(54906003)(66556008)(66446008)(64756008)(2906002)(9686003)(55016002)(38070700005)(52536014)(83380400001)(6916009)(71200400001)(8676002)(66946007)(53546011)(5660300002)(8936002)(38100700002)(33656002)(32563001)(579004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFhHUk5RS011dEd1UzMyQytXeXVGREQ2YmZINVdkOHk3dmlyZGlHVjZ0VjZU?=
 =?utf-8?B?YW41Y3BkSE12TExXbFJLQ005cEc1WTZrMzBlbGU0dFdaRG9MTVEzRlZNRXlB?=
 =?utf-8?B?dENJV0VxWExMek9udUZucm1qT3diL01ub1RmWjdIbloxSFJXQ0hUL2JyY3R3?=
 =?utf-8?B?M1crYzFPamw0R1VJbThUS0MzNzlKZXR0OHhGTVBRT2t2Y2JoUS8zNDVVWmlN?=
 =?utf-8?B?cWF1RFFyNFUrN3NpdUd2RjBwWXgybnBnQm1ZengyTGJRWXdJNkVYNzFxalY5?=
 =?utf-8?B?VVBYY0lmTjVsZGpxT29QSXhocTMxbmpmU2FPNytuSmt1QzlOeW1NVnVqMEMv?=
 =?utf-8?B?aE91aWJ5YVpoZGpiUHRhT2xaYkNOaHYwdTJ5TStyOHFKazBNUTRMdEk4aUJ6?=
 =?utf-8?B?TUd4RzZyZE1NYTd0NkZBSFRSdHhSbXFRbWZCK0kvMFpPcTFVR3JzbUQ0Wllu?=
 =?utf-8?B?VXo2ZG1rV3dpZFR0TUxZQy82dDZIL09UcDd3MU5VNE8zZTlkbzVzWFVDdFFF?=
 =?utf-8?B?NjloV2lKU3JFY1J0RGJUaFNEelZOZm14eFpLd0JobXlJVzF6T0l1ZVhSTk5l?=
 =?utf-8?B?Z0FUZjBOYktlSlBKbjIxYkhWaGNCdExZMEN2L2tZdFU5KzlUVW5BWEtpczlq?=
 =?utf-8?B?Wkpub0FpNEdzQzBhcEZ0Y0ZYeUNOL0FuTDJjZWVlTVFPZWkxT0lLQjY1ZUdw?=
 =?utf-8?B?ZFFvc29UY2QvODBNU09EZ1VFOTByREJLTjRtWldWY2ZWV1JhLzZ4a2J1K0dC?=
 =?utf-8?B?b3hYeDBDQ29neWl6eFFJL2ZSUVZOWmpFRUM5WFVLOUtxZHhvUHFWMWtoRkNP?=
 =?utf-8?B?dzk2YXBOZ2x5VDRmL09VdVNVS0VwSGZhOHdwVUUzZ25NWGlYOU5DenFEUUlh?=
 =?utf-8?B?bCtHVWFjU1p3Wk9ybkp2Zm9VSnlmcWdOVTY0R3FqUmN4bWIrYVp1QmZpOXY3?=
 =?utf-8?B?NFgvc1JEcG9IWndHRk05Y0dUR2dYUEZYWU9jTmVRY29vR2ljWDlTajRSMngr?=
 =?utf-8?B?RXc1QkdaejVxOG5YYjdrZ3BRbjE1MVpFbDMxNGQ1S1kydzNCY0o3Ulg4L0pB?=
 =?utf-8?B?VWloSkN5MXpOMzdDYkdSanJZRFk4R2VteGdwTnhuWTNkU3VmV0gveGhyVXlD?=
 =?utf-8?B?RHEzbFQyQzNnS0N3Wkx4ZEJPQ2M3ZE4vWFpZTGIxQ1Q0RXJjSkY4N0RxYXpr?=
 =?utf-8?B?SkcvZFJSdjlQRzNDS1NSdFlIOVI5eVhGbU5VUTFjb09TMnlrQWpnek5FNlV1?=
 =?utf-8?B?bkliamw2eUwvQ1JqNmNKNHorSk1UdUROZFhCQXpESlN4alRrd0ttZ2lHZjR4?=
 =?utf-8?B?MXJrbTFHdjRoSjlaVkNraG82WjNIZmhoNDVJVjZQbU9kU214dStRN3gybmVU?=
 =?utf-8?B?TDVoNTVHWXZHR1I3bmQ5MUlib3laMHoyYnR6S0JBYXpTZTV0TkJLaFhwSnBl?=
 =?utf-8?B?Vjk4Z2VUVE54RHV2MS9nQW5BeW1zUG9vUmQvS0FOT3p4ZEsyRmJOQkRDV2to?=
 =?utf-8?B?cXFjc1pJWjJNU3VQNlpwanRmei9UZWtBR0hDYWV1YndSNEk5RGNZNnRqK3p5?=
 =?utf-8?B?SDJXUm9wVmVIUWtOWllEYXFJdjM4MDZwOUNFWHFRYnRkVlBzTWsyZVFMY21X?=
 =?utf-8?B?bGtDcnkxSTBwNW1jRkJ6c2IrNzVpZ3F1RGI2bzhCeHcvbWtlMVdJZzJPQlRM?=
 =?utf-8?B?UFE5L0VMdFpoUWRaenFvVDg2OVhJamtqcUgvZG11QVN2VzAwSFJFTmZjcytB?=
 =?utf-8?B?Y2RlREt3dGpaakJFV0JVT1ZIRkNZVWRGOHZiSFdTd1ZObjBRdHp1SXhxNlhr?=
 =?utf-8?B?Y3JpZjh4K3hycjQ0ZlZ5MzNtZkIrdEd3OWdhcG9KY3VpNEFVbTZTbmlDRHNh?=
 =?utf-8?B?U0Irb0NkdFZWOTNQaHl3OElTM1BMTjArK1ZPdWUzMnNvajRhdUpBZTdJRUQ2?=
 =?utf-8?B?MENvQXFTRFJ4eUlmSGFPTS9tc1JWWmF1RUJJTG5qTHlhcUNodFFJN3FQNHpW?=
 =?utf-8?B?TTVTbTVjMVVrNVIvaHFVa3BScXIvSDlkRDBwbmZidVV6WnVTSmt5Wjhvdm9l?=
 =?utf-8?B?RGNucEhOaUU5cVZjdUVhYzRzUkJ0YXNST3pwVzdKajhsdzl0LzVqSlhXRjM5?=
 =?utf-8?B?NDhJR2I3T294MlZnVVhScWxaYjdkc1JHaFlXbHNGVUdQcFE2ZHYrL2hBOXpj?=
 =?utf-8?B?RkE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a3a045c-5ba4-443c-4aa2-08d999b57ffb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2021 01:51:46.4184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ta0FI02qLeCuzkzX/PUObA31VrysPFR47U/dr5+TS99XXEqCiOQZQ53XzqhbbqZdr97KP6aP2l7kcwkc89z7zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8531
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_185203_648875_788F45DB 
X-CRM114-Status: GOOD (  31.41  )
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
> From: Tim Harvey <tharvey@gateworks.com>
> Sent: Wednesday, October 27, 2021 11:41 PM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> <kishon@ti.com>; vkoul@kernel.org; Rob Herring <robh@kernel.org>;
> galak@kernel.crashing.org; Shawn Guo <shawnguo@kernel.org>;
> linux-phy@lists.infradead.org; Device Tree Mailing List
> <devicetree@vger.kernel.org>; Linux ARM Mailing List
> <linux-arm-kernel@lists.infradead.org>; open list
> <linux-kernel@vger.kernel.org>; Sascha Hauer <kernel@pengutronix.de>;
> dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm
> pcie support
> 
> On Tue, Oct 26, 2021 at 11:18 PM Richard Zhu <hongxing.zhu@nxp.com>
> wrote:
> >
> > > -----Original Message-----
> > > From: Tim Harvey <tharvey@gateworks.com>
> > > Sent: Wednesday, October 27, 2021 12:06 AM
> > > To: Richard Zhu <hongxing.zhu@nxp.com>
> > > Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> > > <kishon@ti.com>; vkoul@kernel.org; Rob Herring <robh@kernel.org>;
> > > galak@kernel.crashing.org; Shawn Guo <shawnguo@kernel.org>;
> > > linux-phy@lists.infradead.org; Device Tree Mailing List
> > > <devicetree@vger.kernel.org>; Linux ARM Mailing List
> > > <linux-arm-kernel@lists.infradead.org>; open list
> > > <linux-kernel@vger.kernel.org>; Sascha Hauer
> > > <kernel@pengutronix.de>; dl-linux-imx <linux-imx@nxp.com>
> > > Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and
> imx8mm
> > > pcie support
> > >
> > > On Mon, Oct 25, 2021 at 10:41 PM Richard Zhu
> <hongxing.zhu@nxp.com>
> > > wrote:
> > > >
> > > > > -----Original Message-----
> > > > > From: Tim Harvey <tharvey@gateworks.com>
> > > > > Sent: Tuesday, October 26, 2021 1:15 AM
> > > > > To: Richard Zhu <hongxing.zhu@nxp.com>
> > > > > Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> > > > > <kishon@ti.com>; vkoul@kernel.org; Rob Herring
> > > > > <robh@kernel.org>; galak@kernel.crashing.org; Shawn Guo
> > > > > <shawnguo@kernel.org>; linux-phy@lists.infradead.org; Device
> > > > > Tree Mailing List <devicetree@vger.kernel.org>; Linux ARM
> > > > > Mailing List <linux-arm-kernel@lists.infradead.org>; open list
> > > > > <linux-kernel@vger.kernel.org>; Sascha Hauer
> > > > > <kernel@pengutronix.de>; dl-linux-imx <linux-imx@nxp.com>
> > > > > Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and
> > > > > imx8mm pcie support
> > > > >
> > > > > On Mon, Oct 25, 2021 at 12:23 AM Richard Zhu
> > > > > <hongxing.zhu@nxp.com>
> > > > > wrote:
> > > > > >
> > > > > > Snipped...
> > > > > >
> > > > > > > > > > > > > My boards do not use CLKREQ# so I do not have
> > > > > > > > > > > > > that defined in pinmux and I found that if I add
> > > > > > > > > > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B
> > > > > > > > > > > PCIe
> > > > > > > > > > > > > works on my board but this isn't a solution just
> > > > > > > > > > > > > a work-around (I have boards that use the only
> > > > > > > > > > > > > two possible pins for CLKREQ as other
> > > > > > > > > > > features).
> > > > > > > > > > > > >
> > > > > > > > > > > > > Similarly you will find on the imx8mm-evk if you
> > > > > > > > > > > > > comment out the CLKREQ (which isn't required)
> > > > > > > > > > > > > the imx8mmevk will end up hanging like my
> > > > > > > > > > > boards:
> > > > > > > > > > > > [Richard Zhu] Hi Tim:
> > > > > > > > > > > > Regarding the SPEC, the CLKREQ# is mandatory
> > > > > > > > > > > > required, and should be
> > > > > > > > > > > configured as an open drain, active low signal.
> > > > > > > > > > > > And this signal should be driven low by the PCIe
> > > > > > > > > > > > M.2 device to request the
> > > > > > > > > > > REF clock be available(active low).
> > > > > > > > > > > > So, there is such kind of CLKREQ# pin definition
> > > > > > > > > > > > on i.MX8MM EVK
> > > > > > > > board.
> > > > > > > > > > > >
> > > > > > > > > > > > Anyway, I think the external OSC circuit should be
> > > > > > > > > > > > always running if there is
> > > > > > > > > > > no CLKREQ# on your HW board design.
> > > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > The way I understand it is CLKREQ# allows the host
> > > > > > > > > > > to disable the REFCLK when not needed for power
> > > > > > > > > > > savings so it would seem optional to implement that
> > > > > > > > > > > and if not implemented should be left unconnected on
> > > > > > > > the card.
> > > > > > > > > > >
> > > > > > > > > > [Richard Zhu] No, not that way. Regarding the SPEC,
> > > > > > > > > > this signal is
> > > > > > > > mandatory required.
> > > > > > > > > > Especially for the L1ss usages. This signal would be
> > > > > > > > > > OD(open drain), bi-directional, and might be driven
> > > > > > > > > > low/high by RC or EP automatically if
> > > > > > > > L1ss modes are enabled.
> > > > > > > > > > You can make reference to the
> > > > > > > > > >
> "ECN_L1_PM_Substates_with_CLKREQ_31_May_2013_Rev10a",
> > > or
> > > > > the
> > > > > > > > chapter 5.5 L1 PM Substates of "PCI Express Base
> Specification, Rev.
> > > > > > > > 4.0 Version 1.0".
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > CLKREQ is only mandatory if you wish to support clock
> > > > > > > > > power management. Many boards with a PCI host
> controller
> > > > > > > > > do not support this.
> > > > > > > [Richard Zhu] Okay, understood.
> > > > > > >
> > > > > > > > >
> > > > > > > > > > > > > diff --git
> > > > > > > > > > > > > a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > > > > > > > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > > > > > > > index 5ce43daa0c8b..f0023b48f475 100644
> > > > > > > > > > > > > ---
> > > > > > > > > > > > > a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > > > > > > > > +++
> b/arch/arm64/boot/dts/freescale/imx8mm-evk.d
> > > > > > > > > > > > > +++ tsi
> > > > > > > > > > > > > @@ -448,7 +448,9 @@
> > > > > > > > > > > > >
> > > > > > > > > > > > >         pinctrl_pcie0: pcie0grp {
> > > > > > > > > > > > >                 fsl,pins = <
> > > > > > > > > > > > > +/*
> > > > > > > > > > > > >
> > > > > > > > > > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B
> 0x61
> > > > > > > > > > > > > +*/
> > > > > > > > > > > > >
> > > > > > > > > > > MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21
> > > > > > > > > > > > > 0x41
> > > > > > > > > > > > >                 >;
> > > > > > > > > > > > >         };
> > > > > > > > > > > > >
> > > > > > > > > > > > > I have PCIe working with a driver that I ported
> > > > > > > > > > > > > from NXP's kernel which differs from your driver
> > > > > > > > > > > > > in that the PCIe PHY is not abstracted to its
> > > > > > > > > > > > > own driver so I think this has something to do
> > > > > > > > > > > > > with the order in which the phy is reset or
> > > > > > > initialized?
> > > > > > > > > > > > > The configuration of
> > > > > > > > > > > gpr14 bits looks correct to me.
> > > > > > > > > > > > [Richard Zhu] The CLKREQ# PIN definition shouldn't
> > > > > > > > > > > > be
> > > masked.
> > > > > > > > > > > > In the NXP's local BSP kernel, I just force
> > > > > > > > > > > > CLKREQ# low to level up the HW
> > > > > > > > > > > compatibility.
> > > > > > > > > > > > That's might the reason why the PCIe works on your
> > > > > > > > > > > > HW board although the
> > > > > > > > > > > CLKREQ# PIN is not defined.
> > > > > > > > > > > > This method is a little rude and violate the SPEC,
> > > > > > > > > > > > and not recommended
> > > > > > > > > > > although it levels up the HW compatibility.
> > > > > > > > > > > > So I drop this method in this series.
> > > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > Sorry, I don't understand what you are saying here.
> > > > > > > > > > > Is there a change you are going to make to v4 that
> > > > > > > > > > > will make this work for the evk and my boards? What
> > > > > > > > > > > is that change
> > > exactly?
> > > > > > > > > > [Richard Zhu] No. What I said above is that the
> > > > > > > > > > CLKREQ# is forced to be low in NXP local BSP kernel. I
> > > > > > > > > > guess this might be the reason why your
> > > > > > > > board works.
> > > > > > > > > >
> > > > > > > > > > BIT11 and BIT10 of IOMUXC_GPR14 can be used to force
> > > > > > > > > > the CLKREQ# to
> > > > > > > > be low.
> > > > > > > > > > Set CLKREQ_OVERRIDE_EN(bit10) 1b1, then write one
> zero
> > > > > > > > > > to
> > > > > > > > CLKREQ_OVERRIDE(bit11).
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Ok, that makes sense. Those bits are not explained well
> > > > > > > > > in the IMX8MMRM. As my board's external REFCLK is
> always
> > > > > > > > > enabled that must gate the clock internally to the host
> > > > > > > > > controller
> > > block.
> > > > > > > > >
> > > > > > > > > I can confirm that asserting those GPR14 bits does
> > > > > > > > > resolve my
> > > issue:
> > > > > > > > >
> > > > > > > > > #define IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_VAL
> BIT(11)
> > > > > > > > > #define IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_EN
> > > BIT(10)
> > > > > > > > >
> > > > > > > > >        /*
> > > > > > > > >         * for boards that do not connect CLKREQ#,
> > > > > > > > >         * override CLKREQ# and drive it low internally
> > > > > > > > >         */
> > > > > > > > >        regmap_update_bits(imx8_phy->iomuxc_gpr,
> > > > > IOMUXC_GPR14,
> > > > > > > > >
> > > > > > > > IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_VAL, 0);
> > > > > > > > >        regmap_update_bits(imx8_phy->iomuxc_gpr,
> > > > > IOMUXC_GPR14,
> > > > > > > > >
> > > > > > > > IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_EN, 1);
> > > > > > > [Richard Zhu] regmap bits operations should manipulate
> > > > > > > according
> > > bits.
> > > > > > > The BIT(10) and BIT(11) should be touched actually.
> > > > > > >
> > > > > > > > >
> > > > > > > > > Should this be added as a 'fsl,clkreq-unsupported' flag
> > > > > > > > > that needs to be set true to implement the above code?
> > > > > > > > >
> > > > > > > >
> > > > > > > > Richard,
> > > > > > > >
> > > > > > > > Sorry - spoke too soon. My test was flawed as I still was
> > > > > > > > pinmuxing CLKREQ in my dt to work around the issue and
> > > > > > > > after removed the above did not resolve my issue. The
> > > > > > > > setting of OVERRIDE_EN was wrong above (should not be set
> > > > > > > > to '1' but
> > > > > > > > BIT(10)
> > > > > > > > instead) but this code already exists in
> > > > > > > > imx6_pcie_enable_ref_clk and is used for IMX8MM per your
> > > > > > > > patch
> > > so this is not the issue.
> > > > > > > >
> > > > > > > > What makes my board work is to clear GPR14 bit9 (like the
> > > > > > > > NXP kernel
> > > > > > > > does) so I don't think this bit does what we think it does
> > > > > > > > (select between internal and ext clk). I think setting it
> > > > > > > > enables clock gating via
> > > > > > > CLKREQ#.
> > > > > > > >
> > > > > > > > This also points out that perhaps the CLKREQ_OVERRIDE
> > > > > > > > logic should be moved to the new phy driver for IMX8MM.
> > > > > > > [Richard Zhu] It sounds reasonable to consider to force the
> > > > > > > CLKREQ# to be low.
> > > > > > > I will think about that and add this in later v5 patch-set
> > > > > > > if nobody has different concerns.
> > > > > > > Thanks.
> > > > > > [Richard Zhu] Hi Tim:
> > > > > > As you mentioned above, the CLKREQ# GPIO PIN is not used for
> > > > > > PCIe on
> > > > > your board, right?
> > > > > > " (I have boards that use the only two possible pins for
> > > > > > CLKREQ as other
> > > > > features)"
> > > > > >
> > > > > > Did the override configuration of the clkreq# will bring
> > > > > > unexpected results
> > > > > for other features on your board?
> > > > > >
> > > > >
> > > > > What I mean is that imx8mm-venice-gw7901.dts uses both I2C4
> and
> > > > > UART4 and because I2C4_SCL and UART4_RXD are the only two
> pads
> > > > > that could be pinmuxed for CLKREQ# I can't use the workaround of
> > > > > pin muxing
> > > it.
> > > > >
> > > > > Currently your driver only works on my imx8mm-venice-* boards if
> > > > > I add one of the following on boards that don't connect those
> > > > > pads (or if I clear
> > > > > IMX8MM_GPR_PCIE_REF_USE_PAD):
> > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B
> > > > > MX8MM_IOMUXC_UART4_RXD_PCIE1_CLKREQ_B
> > > > >
> > > > > Note your 'PCI: imx: add the imx8mm pcie support' patch [1] does
> > > > > enable this code already in the imx6_pcie_enable_ref_clk
> > > > > function to override REF_CLK and drive it low:
> > > > >
> > > > > offset = imx6_pcie_grp_offset(imx6_pcie);
> > > > > /*
> > > > > * Set the over ride low and enabled
> > > > > * make sure that REF_CLK is turned on.
> > > > > */
> > > > > regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
> > > > >    IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
> > > > >    0);
> > > > > regmap_update_bits(imx6_pcie->iomuxc_gpr, offset,
> > > > >    IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
> > > > >    IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
> > > > >
> > > > > So this is already being run and yet my boards still do not work
> > > > > unless I clr IMX8MM_GPR_PCIE_REF_USE_PAD like this which is
> what
> > > > > the NXP downstream driver does:
> > > > > regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> > > > > IMX8MM_GPR_PCIE_REF_USE_PAD, 0);
> > > > >
> > > > > This is why I'm not sure that bit does what you think it does...
> > > > > I feel like that bit enables 'Use CLKREQ# to enable CLK'.
> > > > >
> > > > > You tell me the descriptions for GPR14 are wrong in the reference
> manual.
> > > > > Please provide correct descriptions for us so we can sort this out.
> > > > >
> > > > [Richard Zhu] Hi Tim:
> > > > The BIT9 of GPR14 is used as
> "GPR_PCIE1_PHY_I_AUX_EN_OVERRIDE_EN"
> > > > and BIT19 is used as "GPR_PCIE1_PHY_FUNC_I_AUX_EN" on
> i.MX8MM.
> > > > I think the two bits descriptions are used to describe the BIT19
> > > > and BIT9
> > > together refer to my guess.
> > > > {GPR_PCIE1_PHY_I_AUX_EN_OVERRIDE_EN(BIT9),
> > > > GPR_PCIE1_PHY_FUNC_I_AUX_EN(BIT19) }
> > > > 2'b00: External Reference Clock I/O (for PLL) Disable
> > > > 2'b01: External Reference Clock I/O (for PLL) Enable
> > > > 2'b10: External Reference Clock I/O (for PLL) Disable
> > > > 2'b11: External Reference Clock I/O (for PLL) output is controlled
> > > > by CLKREQ#
> > > >
> > > > The option1&3 should be forbidden, since the external REF CLK I/O
> > > > should
> > > be enabled on your board and EVK board.
> > > > In the option2&4, the BIT19 should be set to be 1'b1.'
> > > >
> > > > So, regarding my understand, if the CLKREQ# is not pinmuxed in
> > > > your use
> > > case, the IMX8MM_GPR_PCIE_REF_USE_PAD (BIT9) should be 1'b0.
> > > >
> > >
> > > Richard,
> > >
> > > Ok, if this is the case then drivers/pci/controller/dwc/pci-imx6.c
> > > for IMX8MM should not touch GPR14 and '[v3,9/9] PCI: imx: add the
> imx8mm pcie support'
> > > should have this on top and squashed:
> > > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> > > b/drivers/pci/controller/dwc/pci-imx6.c
> > > index 7c89bd1a6441..458d54c8e385 100644
> > > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > > @@ -452,8 +452,12 @@ static int imx6_pcie_enable_ref_clk(struct
> > > imx6_pcie *imx6_pcie)
> > >                 break;
> > >         case IMX7D:
> > >                 break;
> > > -       case IMX8MQ:
> > >         case IMX8MM:
> > > +               ret = clk_prepare_enable(imx6_pcie->pcie_aux);
> > > +               if (ret)
> > > +                       dev_err(dev, "unable to enable
> pcie_aux
> > > clock\n");
> > > +               break;
> > > +       case IMX8MQ:
> > >                 ret = clk_prepare_enable(imx6_pcie->pcie_aux);
> > >                 if (ret) {
> > >                         dev_err(dev, "unable to enable
> pcie_aux
> > > clock\n");
> > >
> > [Richard Zhu] Sorry, I might don't understand what's meaning of the
> changes.
> > What're the differences between before and after the changes?
> >
> 
> The above change to your patch 'only' calls clk_prepare_enable for
> IMX8MM and does not touch GPR14 bits as the IMX8MQ case does
> (because as you point out the GPR14 bits differ between IMX8MM and
> IMX8MQ).
[Richard Zhu] Got that, thanks a lot.

> 
> > >
> > > And your '[v3,5/9] phy: freescale: pcie: initialize the imx8 pcie
> > > standalone phy driver' should have this on top and squashed:
> > > diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > > b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > > index 317cf61bff37..27ca0b9f1d92 100644
> > > --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > > +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > > @@ -43,7 +43,7 @@
> > >  #define IMX8MM_GPR_PCIE_CMN_RST                BIT(18)
> > >  #define IMX8MM_GPR_PCIE_POWER_OFF      BIT(17)
> > >  #define IMX8MM_GPR_PCIE_SSC_EN         BIT(16)
> > > -#define IMX8MM_GPR_PCIE_REF_USE_PAD    BIT(9)
> > > +#define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE        BIT(9)
> > >
> > >  struct imx8_pcie_phy {
> > >         u32                     refclk_pad_mode;
> > > @@ -63,12 +63,12 @@ static int imx8_pcie_phy_init(struct phy *phy)
> > >         reset_control_assert(imx8_phy->reset);
> > >
> > >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> > > -                          IMX8MM_GPR_PCIE_REF_USE_PAD,
> > > -                          imx8_phy->refclk_pad_mode == 1 ?
> > > -                          IMX8MM_GPR_PCIE_REF_USE_PAD :
> 0);
> > > +
> IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
> > > +                          0);
> > >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> > >                            IMX8MM_GPR_PCIE_AUX_EN,
> > > -                          IMX8MM_GPR_PCIE_AUX_EN);
> > > +                          imx8_phy->refclk_pad_mode ==
> > > IMX8_PCIE_REFCLK_PAD_INPUT ?
> > > +                          IMX8MM_GPR_PCIE_AUX_EN : 0);
> > >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> > >                            IMX8MM_GPR_PCIE_POWER_OFF,
> 0);
> > >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14, @@
> > > -76,7 +76,7 @@ static int imx8_pcie_phy_init(struct phy *phy)
> > >
> > >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> > >
> IMX8MM_GPR_PCIE_REF_CLK_SEL,
> > > -                          imx8_phy->refclk_pad_mode == 1 ?
> > > +                          imx8_phy->refclk_pad_mode ==
> > > IMX8_PCIE_REFCLK_PAD_INPUT ?
> > >
> IMX8MM_GPR_PCIE_REF_CLK_EXT :
> > >
> IMX8MM_GPR_PCIE_REF_CLK_PLL);
> > >         usleep_range(100, 200);
> > >
> > > I tested this and it works both on imx8mm-evk and imx8mm-venice-*
> > > which both have external clkgen.
> > >
> > > However, the above does not set
> IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE for
> > > the case where CLKREQ# is connected and thus should be used so I
> > > think we need to add a property for that to define if CLKREQ# is
> > > hooked up or not. I tested enabling
> IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE
> > > and as expected that worked on the imx8mm-evk which hooks up
> CLKREQ#
> > > but not imx8mm-venice which does not hook up CLKREQ#.
> > >
> > > What do you think about adding a property for this?
> > [Richard Zhu] First of all, thanks a lot for your help to figure out the
> details.
> > Agree with your proposal.
> > One optional property "fsl,clkreq-unsupported" would be added for the
> CLKREQ# not hooked case later.
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > index 097ba2a28fb4..2264452924cc 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> > @@ -58,6 +58,11 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/uint32
> >      default: 0
> >
> > +  fsl,clkreq-unsupported:
> > +    type: boolean
> > +    description: A boolean property whoes presence indicates the
> CLKREQ#
> > +      signal isn't supported in the HW board design (optional
> required).
> > +
> 
> A boolean property indicating the CLKREQ# signal is not supported in the
> board design (optional)
[Richard Zhu] Okay, would be updated later.

> 
> >
> > diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > index 07eea39283ed..4b4402eaddcc 100644
> > --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> > @@ -43,7 +43,7 @@
> >  #define IMX8MM_GPR_PCIE_CMN_RST                BIT(18)
> >  #define IMX8MM_GPR_PCIE_POWER_OFF      BIT(17)
> >  #define IMX8MM_GPR_PCIE_SSC_EN         BIT(16)
> > -#define IMX8MM_GPR_PCIE_REF_USE_PAD    BIT(9)
> > +#define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE        BIT(9)
> >
> >  struct imx8_pcie_phy {
> >         void __iomem            *base;
> > @@ -54,6 +54,7 @@ struct imx8_pcie_phy {
> >         u32                     refclk_pad_mode;
> >         u32                     tx_deemph_gen1;
> >         u32                     tx_deemph_gen2;
> > +       bool                    clkreq_unused;
> >  };
> >
> >  static int imx8_pcie_phy_init(struct phy *phy) @@ -65,13 +66,15 @@
> > static int imx8_pcie_phy_init(struct phy *phy)
> >         reset_control_assert(imx8_phy->reset);
> >
> >         pad_mode = imx8_phy->refclk_pad_mode;
> > +       /* Set AUX_EN_OVERRIDE 1'b0, when the CLKREQ# isn't
> hooked */
> >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> > -                          IMX8MM_GPR_PCIE_REF_USE_PAD,
> > -                          pad_mode ==
> IMX8MM_GPR_PCIE_REF_USE_PAD ?
> > -                          IMX8MM_GPR_PCIE_REF_USE_PAD :
> 0);
> > +
> IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
> > +                          imx8_phy->clkreq_unused ?
> > +                          0 :
> IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE);
> >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> >                            IMX8MM_GPR_PCIE_AUX_EN,
> > -                          IMX8MM_GPR_PCIE_AUX_EN);
> > +                          pad_mode ==
> IMX8_PCIE_REFCLK_PAD_INPUT ?
> > +                          IMX8MM_GPR_PCIE_AUX_EN : 0);
> >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14,
> >                            IMX8MM_GPR_PCIE_POWER_OFF,
> 0);
> >         regmap_update_bits(imx8_phy->iomuxc_gpr,
> IOMUXC_GPR14, @@
> > -171,6 +174,11 @@ static int imx8_pcie_phy_probe(struct
> platform_device *pdev)
> >
> &imx8_phy->tx_deemph_gen2))
> >                 imx8_phy->tx_deemph_gen2 = 0;
> >
> > +       if (of_property_read_bool(np, "fsl,clkreq-unsupported"))
> > +               imx8_phy->clkreq_unused = true;
> > +       else
> > +               imx8_phy->clkreq_unused = false;
> > +
> >         imx8_phy->clk = devm_clk_get(dev, "ref");
> >         if (IS_ERR(imx8_phy->clk)) {
> >                 dev_err(dev, "failed to get imx pcie phy clock\n");
> >
> 
> Yes this looks good and works both on venice (with
> 'fsl,clkreq-unsupported' added) and on imx8mm-evk.
> 
> Thanks for working through this with me and please cc me on your v4
> submission.
[Richard Zhu] Welcome. I'm glad to have your help. Thanks a lot.
> 
> Best regards,
> 
> Tim
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
