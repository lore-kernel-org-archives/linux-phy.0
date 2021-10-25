Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54FEC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 02:13:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71E6360E97
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 02:13:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 71E6360E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5seBDgvc+SvUd9lS57d5DjEd7/r2DpykWqyM9T4zIY=; b=WkS6vGVdO4mvqY
	lA7aX5VUFCs4S6AfYdNkuzO5XSj+TmpiqcBmsZJX9rudVuBL63ZvFf5VCL1jcFUag0zPgppcH8AYH
	FXN9IV7EZT+VsOaCKOi89hmIewvAcn9nUzvv+3EyY3eO3Z8nlvfxFnZqRI2E8OJL2eiswml+PTQGM
	IJo9cuuAmBYBenTDyV0aBBuxyUf0ZQprcbMWYyttl2Y24iDWMf2tAq1eU5U5jzoTFxrSS1ZsRAjpm
	KdP+KUpOM3gNzrkeWaiUU/BHM5ERrPh5HLHH2YVQhLZJFln6IDVAnOR1nBPOS/6wktOC1TdJjTy5z
	tZ9yrIci8MAjTCGiqvwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mepU4-00F05D-V4; Mon, 25 Oct 2021 02:13:08 +0000
Received: from mail-am6eur05on2041.outbound.protection.outlook.com
 ([40.107.22.41] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mepU1-00F02r-40; Mon, 25 Oct 2021 02:13:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+SOstqLYjmCUj7js1lzVk39nVHivXh5v5Kg8CLqj/2++Qmix73+8kS9kWzhhKaH8rNG96XtkO5GPMJoJVmUdgfsyrFtRs8utufUZUDIK/uQEoIem+T103BkGBu82qgbGb0CwWQuKEWC04Y060FJBGMiiJXcbySni/Lk+7P8WKsTFq74j8748cwrjGMwwY+Kn19KBwsGK6B6hvu85mWTaQ1Ghkl2sUt3SIDoNWyk8dwUW5B8faNdxdoO5XljTKPoT9pvX9R9RUacJ5wiqVf6T/cPUHhy8LdMHo2N04wfSFPQbPQhXFsPR8U3kZbi1Ckbn/m4qXl8myaTvpmtnwVIzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MeuYFGk8Z0fqsvZ8Sktwjmh/Ac/DM7FyKrJ5wdquOu0=;
 b=Gdm3+tyD9gcaeUDNYVMfS4oyFUpI68egB5i590CahagKKVq88Lgv/8eOlbwbjUGzyGnfTuaamdn/AIxBXOCxUiEgAPH06fJk2X7C9ocwwXeF+68ksi7/6cH11rgYZ5PJFE9ZTNsOic9rLn6u3jpUFvVjkB+GHIlQTmSctdpEX5S4NbahkdSFChFCkzM2XiyAjL1Ea/ndkrWXqwVD229CMzE9RQdURsQEY5gB/C+TpG2Ne+2KEJoFvFEnzyUQZA67h/R2BJ5uEY4bwQ8lQfq3Y9Ieyc6CNzba09VDzWV9cxTpqkB7rZ3nCgNPasIY5W7XD6UcFG7G7SzK2pDcKWsgzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MeuYFGk8Z0fqsvZ8Sktwjmh/Ac/DM7FyKrJ5wdquOu0=;
 b=n6Ziv54WlVuX2/ZF28Rfo5H3FnIgqnzmSj7FtwBxPrlsINI8OjAeyuXaOQA5NFYeQWW2r/EuvvPl4vL8EamRuN+ogu0fFDNAyxWeM+PLv9ceRB6EZ2i1rdKydzC6UGUCH1HekolotK43L55lQJN9TeO+9b/w1WFvfOS/L+6Y6qg=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by AS8PR04MB8994.eurprd04.prod.outlook.com (2603:10a6:20b:42d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 02:12:54 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::b059:46c6:685b:e0fc%4]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 02:12:54 +0000
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
Thread-Index: AQHXwf8T9WRZIWT4CUunBVSnJ63L4qvZhp6ggAD4IYCAAKk/cIABRTmAgABCoVCAAPyvgIAAhMLwgAEGQACAAA+SAIADuD4Q
Date: Mon, 25 Oct 2021 02:12:54 +0000
Message-ID: <AS8PR04MB867697878533A37B72D7E4AA8C839@AS8PR04MB8676.eurprd04.prod.outlook.com>
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
In-Reply-To: <CAJ+vNU0wcQtrKh5W7UZknEiV2o7MKLV90CCrJqGGw=x_VYwMGg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ab4055c-f78f-4e9d-bc3a-08d9975cf471
x-ms-traffictypediagnostic: AS8PR04MB8994:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AS8PR04MB8994DA68BD3C6462C30AEDD48C839@AS8PR04MB8994.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FHOXmFWjtLNx4UDxQw0xcz/M3TnUbt6KNEK+wIqqxiQs8wDMsbUgKg4OI4ebsDI8QxTCGhz8xEmxMbL5pabb6uomUTFcj6N3OeOQXv6wF9dqU6dxkhpjEZqKM7YANvVuG6Witt+wbvSTAZWJVljcgEka/EFkEekACblgMlU6UhJs7/7hP1buZtkz+oHgNnKUc9udtjrPwPOXeo9TkOCUS4j8+AT+fV/8NUD3jc997W1sa0fB6acAzlTkZCbTdzU1iVI9h4AS+akFjOk8veuyGWC+IqK+nfDBYb9j6Tt+R7MiLCy7hPngNW8iNCjfZguGoQn3n0HioHZqq5xjJLwwkHXYWnxUuG/9OT38CORjMVDoTwxlLmdLMu7aFJzc6RTlsoW9MJWsoShHoY5iaW9dAtzhs7dlL8ENrPbmRq7W0138ZnTFnbpTZfWrLshfoyuZiCE7Fb5fHmFa+eT0z/9dBLwaSpPnaCEJQKnMrsw21T8nfZxJP2yQXBl/Rw579+H9wBhsa+s36TRttqrerQh3aksYxSZObSSNlpgu2HedbupLWcO4ruXujpnIiD8TBFYmNY9iXnG0O1MRKxW0TuYeXl+Ma547wv5bJSQNU0lvV5v2FlZgTjWRk80FjUGUJjsUQOuE71dcL3or4Fc1BnLkTpXeJTQsVOwyBfy5T/0gXl696Mx0baLpvpl33zUsIDq/vvAMJ41G67DjFwDbMKFSkI9vQgOyKeTg6KgSAKyET98=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR04MB8676.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(7696005)(76116006)(186003)(86362001)(83380400001)(26005)(54906003)(64756008)(38070700005)(66556008)(122000001)(5660300002)(2906002)(6506007)(4326008)(66946007)(38100700002)(7416002)(66476007)(66446008)(508600001)(33656002)(55016002)(30864003)(6916009)(316002)(8676002)(53546011)(9686003)(52536014)(8936002)(71200400001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlY5SHczcnVqN003SUZYS1dEK1dNdHovTlVPVHlsa2l2Rjh1NU1nUi9Rc3py?=
 =?utf-8?B?dHE5Ym9BTWZQRkxvcVhvSFAwQjBnVll3QXJwa3l1Qkw3aHpWdSthb3BGK044?=
 =?utf-8?B?U2k0OGFOM244Qy9OOWkzUWF3N1ZsUFlLNDZpd1NaRk12b0pOcnArR1UwSm9p?=
 =?utf-8?B?SnIxQ2kvbG9RTHlSZ2xiM2FsTlhnNTdZcHVGTkMyQWZUM1JqZkNzZmp5em9u?=
 =?utf-8?B?TWhYTFlKVTduWm1QaDJTaTFwUEROY0c0SERLeDg5eEdkdnpxUFBtSmJGa3Jp?=
 =?utf-8?B?dGhJRXFFSGZObDA1ZUlDT1MyT0g2MWFXZVdvR1NjYnlzVHhhNjRUVmZ5SUoy?=
 =?utf-8?B?ZzVLYkN6L1FZRnZOcE5UNStmcWZFbkE2NWdoYVdwL2dTTDJwcTVWanh2b0Fn?=
 =?utf-8?B?Tm5qNzFEYzh1UEFYbnQzQjVHUFF4YlZRL1NUcDc3Qk9sTHU0SThlRWRiNlAv?=
 =?utf-8?B?bU8yZHFtbzVvaStiVG9RWTVVME53V1IxYVZGZTZwczdqbDdZb3lyV1RJc04x?=
 =?utf-8?B?RVR4d0UwYmlwQ1hSemFuZGhqcE1pUWlTZ1JQS3FQVEhSajM5VkdVNGgvNGZw?=
 =?utf-8?B?UGtDUGdseXVkTDRadi9SaUpnZmhKZE5WeTRnZm9SbGd5eGd5QmdIc2xzV2tL?=
 =?utf-8?B?aGIzTXlEc3ZPNWppMWtrb2J1cDVvNTh6amt4V2NzbnY3RVJMYjlPWkYxUGlG?=
 =?utf-8?B?MGd6REJEV1QzNkh6Z0xncmFMWGxJTVFqOTAvNCtCc2pnSk1vSVR3akludzR3?=
 =?utf-8?B?UGFvbG9ISXV3V1NXL2NzWVVKcmNOMlFLa2VsamN6Nnoxa25pZytYSlFTYTlT?=
 =?utf-8?B?M2lsMU9GeVRCb1V0eVdrbHRLNXpXeHRrY0dCdEppY3hVYmhGZkNrSFhkK0pV?=
 =?utf-8?B?UWd1SFhFL1lnbFJ5eTVNT0M4UTd4MWI3N0xkQ28vMUhra2VlbEJSeXNFSEEr?=
 =?utf-8?B?ODZKdzcxbFo0ZnpYUW1jVHVnMG5rZDdnSDFwZys1MENMVWFORWg5VTZYOXdQ?=
 =?utf-8?B?WVl5SjFmSEo4OHBiNmVmNXZPYzdXcU15SU85cEdjMnA2U3krdGo5bXhHWWE2?=
 =?utf-8?B?dHNxRGNZUGVlbWlIQTllQXRRQWYxS1hXV3NxODM2Rkd2VDlaZjRHU05RNmFS?=
 =?utf-8?B?ZnJNdVMvVEx2NW5TL09odHg2dFl6VE5icTI3dDVxbUU3MnZrNHFGdlQyQTFQ?=
 =?utf-8?B?SkZBc0haSTFhMGtRYlFJbCtRSEhkaXRpUU1UR2Q1RVdZeW9BL2MrZWF6bHIv?=
 =?utf-8?B?YTd6SzJ3U1BrNVh2b0ovSktHV2ZFeGJ4T2tyUG95TEpKNE13dHhqS1NHdXl5?=
 =?utf-8?B?RmpNNThDWm9QVXBIVlYybGtpSENjOHcyZEpzZTVDNU9rUC9kdjNuTU55RSts?=
 =?utf-8?B?dzM5K3I1LzUxeWxXV2RDTjd6dmhFQXM4WitoQkZwUHNTVFlVQmkrUTJpTDhx?=
 =?utf-8?B?elNLY3NKV3RvcGhjT2lmMXZVdHYyU3JmRjRBZ0Y3UmpRR21RZ0pkZ25UUkNq?=
 =?utf-8?B?VGVUNnU5SzRxMTVMZm5OWWU3Z0QvZmNOejN1WDh3dlNWc0Q2UTFOQmZObStW?=
 =?utf-8?B?bHp2RGdnOXM2RFlYejQ0Tytra051dGhkd09hQXZOU093TVFJOFFiUzBTcm45?=
 =?utf-8?B?TGI3U2R0S1IvUFhBanNDejVqMXc2NTZoNTFwbkZqbmRuYkNqUDdmbmJhWWFT?=
 =?utf-8?B?MkkyUklOZTdiUzlKS1BnanIwNWRJeDUyY2ROcXg0SzZCQmIxUms0QzFVWFli?=
 =?utf-8?B?UlkwN2JhRlE1cFZQSUhHWEUrV1ZaK0g1bm5oTEM1TG1CMG8zYWVQYkR6ODlm?=
 =?utf-8?B?UkdlK09KWURWaGpoSzlhQjRCWXkrUHE4aGhheWUzQ2RUbzQ4STFMU094YlZM?=
 =?utf-8?B?elk5RjVoMk9USTZVSnlzQU9FOFRIRWdMeHkzaisvU2kzMGNpZXJkS0x0d25o?=
 =?utf-8?B?SjRiRlQzZGRocldQY3hWSlBwZU5aZG5kT2hyZ1RPekpGZytHdW1QcEVlWXhn?=
 =?utf-8?B?Qy9JaDBncllJTUxUazNjL0lUL1pZM2N1WWtMc21Selk3UG15NWxkTzNZcHBJ?=
 =?utf-8?B?MUlFRE1Jd0hsTCtWalBTVFgzY0k1bTN5TFRwRzVpcnprNGpVMFFBZ2VwZktN?=
 =?utf-8?B?OUdvNEU5S1JZVXkxY2JGNnc2S0srRWxuUE1JanBqUDMxV1NYR25pVUJGNXQr?=
 =?utf-8?B?NUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab4055c-f78f-4e9d-bc3a-08d9975cf471
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 02:12:54.2311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ONHCKATasdF1ZyAcvcbWDEhkDPfGgxYb88qj98uPQQUsROiyc3l4DYpav4IzfX2uLuVLYsC7XNn3jtVu05i6bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_191305_375437_A6E6C38B 
X-CRM114-Status: GOOD (  36.44  )
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
> Sent: Saturday, October 23, 2021 12:55 AM
> To: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> <kishon@ti.com>; vkoul@kernel.org; Rob Herring <robh@kernel.org>;
> galak@kernel.crashing.org; Shawn Guo <shawnguo@kernel.org>;
> linux-phy@lists.infradead.org; Device Tree Mailing List
> <devicetree@vger.kernel.org>; Linux ARM Mailing List
> <linux-arm-kernel@lists.infradead.org>; open list
> <linux-kernel@vger.kernel.org>; Sascha Hauer <kernel@pengutronix.de>;
> dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
> support
> 
> On Fri, Oct 22, 2021 at 8:59 AM Tim Harvey <tharvey@gateworks.com>
> wrote:
> >
> > On Thu, Oct 21, 2021 at 5:43 PM Richard Zhu <hongxing.zhu@nxp.com>
> wrote:
> > >
> > > > -----Original Message-----
> > > > From: Tim Harvey <tharvey@gateworks.com>
> > > > Sent: Friday, October 22, 2021 12:25 AM
> > > > To: Richard Zhu <hongxing.zhu@nxp.com>
> > > > Cc: Lucas Stach <l.stach@pengutronix.de>; Kishon Vijay Abraham I
> > > > <kishon@ti.com>; vkoul@kernel.org; Rob Herring <robh@kernel.org>;
> > > > galak@kernel.crashing.org; Shawn Guo <shawnguo@kernel.org>;
> > > > linux-phy@lists.infradead.org; Device Tree Mailing List
> > > > <devicetree@vger.kernel.org>; Linux ARM Mailing List
> > > > <linux-arm-kernel@lists.infradead.org>; open list
> > > > <linux-kernel@vger.kernel.org>; Sascha Hauer
> > > > <kernel@pengutronix.de>; dl-linux-imx <linux-imx@nxp.com>
> > > > Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and
> > > > imx8mm pcie support
> > > >
> > > > On Wed, Oct 20, 2021 at 8:32 PM Richard Zhu <hongxing.zhu@nxp.com>
> > > > wrote:
> > > > >
> > > > > <snipped...>
> > > > > >
> > > > > > Richard,
> > > > > >
> > > > > > What is this 'invalid resource' about? I see that with my
> > > > > > downstream IMX8MM PCIe driver as well and have been asked
> about it.
> > > > > >
> > > > > [Richard Zhu] Hi Tim:
> > > > > This complain is caused by the following codes in pcie-designware.c
> driver.
> > > > > I'm not sure that why there is only size assignment after the
> > > > > res valid check,
> > > > and do nothing if the res is invalid.
> > > > > It seems that it is an expected design logic refer to the later codes.
> > > > >                 if (!pci->atu_base) {
> > > > >                         struct resource *res =
> > > > >
> > > > platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
> > > > >                         if (res)
> > > > >                                 pci->atu_size =
> resource_size(res);
> > > > >                         pci->atu_base =
> > > > devm_ioremap_resource(dev, res);
> > > > >                         if (IS_ERR(pci->atu_base))
> > > > >                                 pci->atu_base =
> pci->dbi_base +
> > > > DEFAULT_DBI_ATU_OFFSET;
> > > > >                 }
> > > > >
> > > > > Since the default offset is used on i.MX8MM, the "atu" is not
> > > > > specified in
> > > > i.MX8MM PCIe DT node, so there is no real res at all.
> > > > > Then, devm_ioremap_resource() would complain the invalid resource.
> > > >
> > > > I think you are saying a change should be made like this:
> > > > diff --git a/drivers/pci/controller/dwc/pcie-designware.c
> > > > b/drivers/pci/controller/dwc/pcie-designware.c
> > > > index a945f0c0e73d..3254f60d1713 100644
> > > > --- a/drivers/pci/controller/dwc/pcie-designware.c
> > > > +++ b/drivers/pci/controller/dwc/pcie-designware.c
> > > > @@ -671,10 +671,11 @@ void dw_pcie_iatu_detect(struct dw_pcie
> *pci)
> > > >                 if (!pci->atu_base) {
> > > >                         struct resource *res =
> > > >
> > > > platform_get_resource_byname(pdev,
> > > > IORESOURCE_MEM, "atu");
> > > > -                       if (res)
> > > > +                       if (res) {
> > > >                                 pci->atu_size =
> resource_size(res);
> > > > -                       pci->atu_base =
> devm_ioremap_resource(dev,
> > > > res);
> > > > -                       if (IS_ERR(pci->atu_base))
> > > > +                               pci->atu_base =
> > > > devm_ioremap_resource(dev, res);
> > > > +                       }
> > > > +                       if (!pci->atu_base ||
> > > > + IS_ERR(pci->atu_base))
> > > >                                 pci->atu_base = pci->dbi_base
> +
> > > > DEFAULT_DBI_ATU_OFFSET;
> > > >                 }
> > > >
> > > > so that it looks like this:
> > > >                 if (!pci->atu_base) {
> > > >                         struct resource *res =
> > > >
> > > > platform_get_resource_byname(pdev,
> > > > IORESOURCE_MEM, "atu");
> > > >                         if (res) {
> > > >                                 pci->atu_size =
> resource_size(res);
> > > >                                 pci->atu_base =
> > > > devm_ioremap_resource(dev, res);
> > > >                         }
> > > >                         if (!pci->atu_base ||
> IS_ERR(pci->atu_base))
> > > >                                 pci->atu_base = pci->dbi_base
> +
> > > > DEFAULT_DBI_ATU_OFFSET;
> > > >                 }
> > > >
> > > > Right?
> > > [Richard Zhu] Yes, it is. The res shouldn't be remapped if it is invalid
> resource memory.
> >
> > Ok, I will submit a patch for that.
> >
[Richard Zhu] Thanks for your help. Please cc me, if you issue that patch.

> > >
> > > >
> > > > >
> > > > > > > [    1.316305] imx6q-pcie 33800000.pcie: iATU unroll: enabled
> > > > > > > [    1.321799] imx6q-pcie 33800000.pcie: Detected iATU regions:
> 4
> > > > > > outbound, 4 inbound
> > > > > > > [    1.429803] imx6q-pcie 33800000.pcie: Link up
> > > > > > > [    1.534497] imx6q-pcie 33800000.pcie: Link up
> > > > > > > [    1.538870] imx6q-pcie 33800000.pcie: Link up, Gen2
> > > > > > > [    1.550364] imx6q-pcie 33800000.pcie: Link up
> > > > > > > [    1.550487] imx6q-pcie 33800000.pcie: PCI host bridge to bus
> > > > 0000:00
> > > > > > > [    1.565545] pci_bus 0000:00: root bus resource [bus 00-ff]
> > > > > > > [    1.573834] pci_bus 0000:00: root bus resource [io
> 0x0000-0xffff]
> > > > > > > [    1.580055] pci_bus 0000:00: root bus resource [mem
> > > > > > 0x18000000-0x1fefffff]
> > > > > > > [    1.586968] pci 0000:00:00.0: [16c3:abcd] type 01 class
> 0x060400
> > > > > > > [    1.592997] pci 0000:00:00.0: reg 0x10: [mem
> > > > 0x00000000-0x000fffff]
> > > > > > > [    1.599282] pci 0000:00:00.0: reg 0x38: [mem
> > > > 0x00000000-0x0000ffff
> > > > > > pref]
> > > > > > > [    1.606033] pci 0000:00:00.0: supports D1
> > > > > > > [    1.610053] pci 0000:00:00.0: PME# supported from D0 D1
> D3hot
> > > > > > D3cold
> > > > > > > [    1.618206] pci 0000:01:00.0: [15b7:5002] type 00 class
> 0x010802
> > > > > > > [    1.624293] pci 0000:01:00.0: reg 0x10: [mem
> > > > 0x00000000-0x00003fff
> > > > > > 64bit]
> > > > > > > [    1.631177] pci 0000:01:00.0: reg 0x20: [mem
> > > > 0x00000000-0x000000ff
> > > > > > 64bit]
> > > > > > > [    1.638409] pci 0000:01:00.0: 4.000 Gb/s available PCIe
> bandwidth,
> > > > > > limited by 5.0 GT/s PCIe x1 link at 0000:00:00.0 (capable of
> > > > > > 31.504 Gb/s with
> > > > > > 8.0 GT/s PCIe x4 link)
> > > > > > > [    1.664931] pci 0000:00:00.0: BAR 0: assigned [mem
> > > > > > 0x18000000-0x180fffff]
> > > > > > > [    1.671745] pci 0000:00:00.0: BAR 14: assigned [mem
> > > > > > 0x18100000-0x181fffff]
> > > > > > > [    1.678634] pci 0000:00:00.0: BAR 6: assigned [mem
> > > > > > 0x18200000-0x1820ffff pref]
> > > > > > > [    1.685873] pci 0000:01:00.0: BAR 0: assigned [mem
> > > > > > 0x18100000-0x18103fff 64bit]
> > > > > > > [    1.693222] pci 0000:01:00.0: BAR 4: assigned [mem
> > > > > > 0x18104000-0x181040ff 64bit]
> > > > > > > [    1.700577] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > > > > > > [    1.705814] pci 0000:00:00.0:   bridge window [mem
> > > > > > 0x18100000-0x181fffff]
> > > > > > > [    1.712972] pcieport 0000:00:00.0: PME: Signaling with IRQ
> 216
> > > > > > > "
> > > > > > > Regarding the log you pasted, it seems that the clock is not
> > > > > > > feed to PHY
> > > > > > properly.
> > > > > > >
> > > > > > > Anyway, let's waiting for the v4 series, then make a try.
> > > > > > > Thanks for your
> > > > > > great help to make the double tests.
> > > > > > >
> > > > > >
> > > > > > My boards do not use CLKREQ# so I do not have that defined in
> > > > > > pinmux and I found that if I add
> > > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B
> > > > PCIe
> > > > > > works on my board but this isn't a solution just a work-around
> > > > > > (I have boards that use the only two possible pins for CLKREQ
> > > > > > as other
> > > > features).
> > > > > >
> > > > > > Similarly you will find on the imx8mm-evk if you comment out
> > > > > > the CLKREQ (which isn't required) the imx8mmevk will end up
> > > > > > hanging like my
> > > > boards:
> > > > > [Richard Zhu] Hi Tim:
> > > > > Regarding the SPEC, the CLKREQ# is mandatory required, and
> > > > > should be
> > > > configured as an open drain, active low signal.
> > > > > And this signal should be driven low by the PCIe M.2 device to
> > > > > request the
> > > > REF clock be available(active low).
> > > > > So, there is such kind of CLKREQ# pin definition on i.MX8MM EVK
> board.
> > > > >
> > > > > Anyway, I think the external OSC circuit should be always
> > > > > running if there is
> > > > no CLKREQ# on your HW board design.
> > > > >
> > > >
> > > > The way I understand it is CLKREQ# allows the host to disable the
> > > > REFCLK when not needed for power savings so it would seem optional
> > > > to implement that and if not implemented should be left unconnected on
> the card.
> > > >
> > > [Richard Zhu] No, not that way. Regarding the SPEC, this signal is
> mandatory required.
> > > Especially for the L1ss usages. This signal would be OD(open drain),
> > > bi-directional, and might be driven low/high by RC or EP automatically if
> L1ss modes are enabled.
> > > You can make reference to the
> > > "ECN_L1_PM_Substates_with_CLKREQ_31_May_2013_Rev10a", or the
> chapter 5.5 L1 PM Substates of "PCI Express Base Specification, Rev. 4.0
> Version 1.0".
> > >
> >
> > CLKREQ is only mandatory if you wish to support clock power
> > management. Many boards with a PCI host controller do not support
> > this.
[Richard Zhu] Okay, understood.

> >
> > > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > index 5ce43daa0c8b..f0023b48f475 100644
> > > > > > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > > > > > @@ -448,7 +448,9 @@
> > > > > >
> > > > > >         pinctrl_pcie0: pcie0grp {
> > > > > >                 fsl,pins = <
> > > > > > +/*
> > > > > >
> > > > > > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B    0x61
> > > > > > +*/
> > > > > >
> > > > MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21
> > > > > > 0x41
> > > > > >                 >;
> > > > > >         };
> > > > > >
> > > > > > I have PCIe working with a driver that I ported from NXP's
> > > > > > kernel which differs from your driver in that the PCIe PHY is
> > > > > > not abstracted to its own driver so I think this has something
> > > > > > to do with the order in which the phy is reset or initialized?
> > > > > > The configuration of
> > > > gpr14 bits looks correct to me.
> > > > > [Richard Zhu] The CLKREQ# PIN definition shouldn't be masked.
> > > > > In the NXP's local BSP kernel, I just force CLKREQ# low to level
> > > > > up the HW
> > > > compatibility.
> > > > > That's might the reason why the PCIe works on your HW board
> > > > > although the
> > > > CLKREQ# PIN is not defined.
> > > > > This method is a little rude and violate the SPEC, and not
> > > > > recommended
> > > > although it levels up the HW compatibility.
> > > > > So I drop this method in this series.
> > > > >
> > > >
> > > > Sorry, I don't understand what you are saying here. Is there a
> > > > change you are going to make to v4 that will make this work for
> > > > the evk and my boards? What is that change exactly?
> > > [Richard Zhu] No. What I said above is that the CLKREQ# is forced to
> > > be low in NXP local BSP kernel. I guess this might be the reason why your
> board works.
> > >
> > > BIT11 and BIT10 of IOMUXC_GPR14 can be used to force the CLKREQ# to
> be low.
> > > Set CLKREQ_OVERRIDE_EN(bit10) 1b1, then write one zero to
> CLKREQ_OVERRIDE(bit11).
> > >
> >
> > Ok, that makes sense. Those bits are not explained well in the
> > IMX8MMRM. As my board's external REFCLK is always enabled that must
> > gate the clock internally to the host controller block.
> >
> > I can confirm that asserting those GPR14 bits does resolve my issue:
> >
> > #define IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_VAL    BIT(11)
> > #define IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_EN     BIT(10)
> >
> >        /*
> >         * for boards that do not connect CLKREQ#,
> >         * override CLKREQ# and drive it low internally
> >         */
> >        regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> >
> IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_VAL, 0);
> >        regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> >
> IMX8MM_GPR_PCIE_CLKREQ_OVERRIDE_EN, 1);
[Richard Zhu] regmap bits operations should manipulate according bits.
The BIT(10) and BIT(11) should be touched actually.

> >
> > Should this be added as a 'fsl,clkreq-unsupported' flag that needs to
> > be set true to implement the above code?
> >
> 
> Richard,
> 
> Sorry - spoke too soon. My test was flawed as I still was pinmuxing CLKREQ in
> my dt to work around the issue and after removed the above did not resolve
> my issue. The setting of OVERRIDE_EN was wrong above (should not be set to
> '1' but BIT(10) instead) but this code already exists in
> imx6_pcie_enable_ref_clk and is used for IMX8MM per your patch so this is
> not the issue.
> 
> What makes my board work is to clear GPR14 bit9 (like the NXP kernel
> does) so I don't think this bit does what we think it does (select between
> internal and ext clk). I think setting it enables clock gating via CLKREQ#.
> 
> This also points out that perhaps the CLKREQ_OVERRIDE logic should be
> moved to the new phy driver for IMX8MM.
[Richard Zhu] It sounds reasonable to consider to force the CLKREQ# to be low.
I will think about that and add this in later v5 patch-set if nobody has different concerns.
Thanks.

BR
Richard
 
> 
> Best regards,
> 
> Tim
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
