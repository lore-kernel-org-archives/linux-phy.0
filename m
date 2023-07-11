Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBF6DC0015E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 08:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAXrKrXoGk0bgwY/L2cZVixOrsUlIJ4Djzn0qBh+f2A=; b=XG2bQWWLM2L7Mv
	dLDV3yhPOV+SeZrGonH5AcvcG9UmUx85MKzVPpFdjvkhoNQzVMNNaYu6ovKB2mb59DDy+0BheNH77
	X9FN2z/JSZVZOD5PyTaI777MntKk9urA0iM7waVDJEywdku5N0JHoQjnEVYbcPd/wCJpts0jR6CTm
	XtK/hBlGlpls1iu26YbK6pkiA224hUhYQxUxvcVgKrWuZHFLB69YYMqzhIFhkITRVEN6Aju7bCAdS
	i66mALoL4GJbIA0oTNTapM6kdlUEtu3Cy/PImju6W0Z7RHbjQDgjLcgoglySR4fAYj/t8g+ntL+oa
	SfCsUy3Bio+iixQNsg6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Bc-00ECEs-1w;
	Tue, 11 Jul 2023 08:57:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9BY-00ECDg-1O;
	Tue, 11 Jul 2023 08:57:29 +0000
X-UUID: f3735bec1fc811ee83ed1395ce914268-20230711
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=0uKor6OHBFI2IVxAYw1WaoNRCCv+H0nSOczGmbPXEyI=;
	b=oqPaTwV4BomvYLnW2zGc3ZDaCyP7s5KyRT7nDT34sdDNzJ6P4QDBzYVeIy5haBlYM/XwA8NDI2imFg4zYqCkn2mKu6hxJ2r3K4k1LdhVCcgrSaDgujOfqvA9Cg4N1qiZUBZeTqBtRUdVzjSYz3Gd/kc4e4tQoHZfq0ZU0pwj94M=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.28,REQID:c1a7327a-ec2e-436e-a95a-02a79d8e3854,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:45,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:45
X-CID-INFO: VERSION:1.1.28,REQID:c1a7327a-ec2e-436e-a95a-02a79d8e3854,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:45,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:45
X-CID-META: VersionHash:176cd25,CLOUDID:65e2ddda-b4fa-43c8-9c3e-0d3fabd03ec0,B
	ulkID:2307111307595JL9CIMV,BulkQuantity:5,Recheck:0,SF:48|38|29|28|17|19|1
	02,TC:nil,Content:0,EDM:-3,IP:nil,URL:1,File:nil,Bulk:40,QS:nil,BEC:nil,CO
	L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:PA,DKP:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SDM,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_ULS,
	TF_CID_SPAM_SNR
X-UUID: f3735bec1fc811ee83ed1395ce914268-20230711
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 907771375; Tue, 11 Jul 2023 01:57:23 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 11 Jul 2023 16:57:20 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 11 Jul 2023 16:57:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TDeyNrmx9SHj7yhn2v2PSinBPzeHPITZUaryy6NQF1/jeuSz4fRiYL3iDmC+0GWbV+kN+5qr2yiDPmLrHdyLb2i8aQw8fQzKzuL5/hy3FQm+BTfBPZSwaNEe8bYNlr06svSx/8RacgmUAk9j27gXetuqpf+6Sy0u33Zr6IPLXbOKe+GxdbYiEQSA60LI9FtomZTvGlKjrOLuDjV2QRoUsm+cRKPLlTm/+4AYK1BxjFumSWUb71ksXOfV+CuDBlxj96NxiIFpcuHfot3DW8ireAeVmgxOx9ABt4WQFbCFifNGU5DXqs8YRx55vZOCynVDtUSz5fInY7E7r4AtmgpgUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0uKor6OHBFI2IVxAYw1WaoNRCCv+H0nSOczGmbPXEyI=;
 b=Enue8L3MrZUnGo1rEZwtMzkT7lfEFLEBRfhquJvM/Y5nBDOht31I2ZxaAF3duQvPn2u+HWK532vJwJsSxkBTGrP0QLWOHoxUXoHrDiaPDApkslO+Vz3gCg8I0wKQiy3bkIC3gz6SqpxrKqvMMTxRwHaswc29uvs/R7Wf5PnnIaIKUjN/kCRWSmoGaA9gYH8NOmCj9mFMU0UzWsflBz/4i05OFvZWlyQok7TkpIu+eDdop0wRf1Zxd8Yb9FLGjnG75EuHjnwhYwgU8BjeGaxPA36TBWgDuxKa3Dy8AhVZ7LpGr5uLxa7TkRp+Gm9+H0wd/cUfGmsJ9u24ZRdWKVS8Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0uKor6OHBFI2IVxAYw1WaoNRCCv+H0nSOczGmbPXEyI=;
 b=OtMXcQoQR+tGvO2NHbUug6M02qbDCcPrKPmc3pLFkGqSlhvhpBwd3a4rx6daamW1tpbg7yTuOu99mWaTooSWcSZIB9oCvKWEn5YsiJd6Jf2jy8s17KSzd+Hd43vwdH6WFAOY8dFdWOy8tpxPGqfVara1WDkXotqT7J12bzdsvCs=
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com (2603:1096:400:33c::6)
 by KL1PR03MB5492.apcprd03.prod.outlook.com (2603:1096:820:3a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 08:57:18 +0000
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::fdc9:3156:45ef:a4ed]) by TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::fdc9:3156:45ef:a4ed%7]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 08:57:18 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "frank.li@vivo.com"
	<frank.li@vivo.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "kishon@kernel.org"
	<kishon@kernel.org>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] phy: mediatek: tphy: Convert to
 devm_platform_ioremap_resource()
Thread-Topic: [PATCH 4/4] phy: mediatek: tphy: Convert to
 devm_platform_ioremap_resource()
Thread-Index: AQHZrx9kzX6UzMj7a0yzmrdnGfqT86+q5ikAgAACI4CAAAhxAIAJXGeA
Date: Tue, 11 Jul 2023 08:57:18 +0000
Message-ID: <c8795995227b3a83e9285d8e87befe6393d97d21.camel@mediatek.com>
References: <20230705090126.26854-1-frank.li@vivo.com>
	 <20230705090126.26854-4-frank.li@vivo.com>
	 <ddc05f70-7075-97ab-1c94-cb3d5839ef2b@collabora.com>
	 <6a1bde36-fbf9-9ddd-e47f-f3c21a3528f7@vivo.com>
	 <be88f6db-8b07-1767-f48c-24a215006a4f@collabora.com>
In-Reply-To: <be88f6db-8b07-1767-f48c-24a215006a4f@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7153:EE_|KL1PR03MB5492:EE_
x-ms-office365-filtering-correlation-id: 6f7c0977-5c72-4f36-0ce5-08db81ecd4d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zSNbh4cJNBVZKgQHRK4DA2ECjAvD+7Pt5FuAJVx19wQr3czH1gDOk4Mjlz16ZxBucguHmk/bjdVpWbgdVg8UdqyTUTr70KZhv1PwB5TKR2y0d8iOpLJ7zm1S26xdERQadcdCwEOlQQQZ8yDB/5cm99E7misGKr0HJDE7CQnnL8QYKTDShWoQvv4QtnmbOh0DLm4DpP5NbXeCRQGjTmzfweGyjhkdeW59ETQrxFzy8JzHys7qNPXFw9C5QS0p7W3j6gbzJ7lrq/U6kfeRxvetbAo+7vx+kyhrItq0jUy3XkL9BgCPLQLEhwaLeoc7IZ+BxjliDJ70awV7ClqM+IY+j9x9UbiZnRs5davzj37wdxZC1nwUpDn6VFP7+/2tE0IsTaSxaMq9tK4QXmNT9YZMqWO4SpBr+aSdCvqZB9YZDWqhvRl2Z4hIhCzmypXxtDm2cBEvve7tC6SsmKR4vs5dRM+7pJTpQju5HUDjYI2ZmqSiR/9WIfFW6QJF9oVRLi2D3sfX+P439f8DGJLp1UgTmJ7T2Ef4IwMRquSKeRTtbjbT1o+Ww2G5rGvWQjlHdcWYbBmy9NHQMrIvwmhU9TcSV8Bi5CQB9L3Xaw0yCMBZz0tYrcnCw6+arTEaxp+4mhK42Ury/8prLg1CPQ0pzwrb7FacxO8TJEzHCj1Yb3DoKIfWed8j7eXse1jUJqduC8Bi
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7153.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(451199021)(38100700002)(38070700005)(86362001)(36756003)(85182001)(71200400001)(6486002)(110136005)(54906003)(66946007)(76116006)(91956017)(122000001)(2616005)(26005)(6506007)(53546011)(186003)(6512007)(5660300002)(2906002)(66476007)(478600001)(66446008)(4326008)(66556008)(8676002)(8936002)(83380400001)(316002)(64756008)(41300700001)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVVGK2IwNHRUdkNMa2tmdTJDWDRiUWJyU0FDeGdVeEFTdE43T0VlaFNRa1JD?=
 =?utf-8?B?WTVXVlY5Sk9oRTFBN2ZZdzExbjNnWDAyMGZxK2dUMzl2ODRqckZseUNtQ01C?=
 =?utf-8?B?Vk01d3p4WFdHQzhLajZ3TXRRa2R0NWxrUzN1TDU5MmVsbW9TTkhVQ28yQkZ0?=
 =?utf-8?B?WDNiSkhpRXNrV2ZPREhWRUJ5Y0ZXbU0xNDMzdUgvVVZpeENZSjJWMzU0eURO?=
 =?utf-8?B?c0JzVTIwMTdPZ2RYUC9aQVQvK1krNTQrV1NUdmVmMGV4a0FZYUpJQVlsSmhm?=
 =?utf-8?B?c0JmWFlDSEVaYm84YXBMMGw2NWQyZ3I0NmxBUEFxUUVHa1R2RlE2allzclEw?=
 =?utf-8?B?TG1ldGZYZ1pMNklxR3phREpUSE5XWW9Jd0NBSWdFTHpUNW9qZDFMemJDNmY3?=
 =?utf-8?B?enRkS3lNbEtJcDBFa0s4Y0hlS1EyNUtSekdEUFhpREV5cjJxNGdrRXk0OVlE?=
 =?utf-8?B?YVR2WWl2SUdrajUzMUlXS1Z3Q1FBNEZJV2JKVUNHWkpDTkJlSnNnL09sYWhT?=
 =?utf-8?B?eXJHMXlPOVBEM01tdkpaSHJ5SWVqVTJhL2RsYzVwNkFEYTVyUy9TRzk0WGpx?=
 =?utf-8?B?MCtMOHQ4THVieGhCc3UxQVR0bytQQXZBaVlVWDYxa2hnODRXY0k2bXRKMENN?=
 =?utf-8?B?TFUzZ2NpVjMyRlE1d0tCTkx3a21DaWtDU2RjVldnL0NiTUZZWDF1OE5YYk1L?=
 =?utf-8?B?eG55dEJaY3E0ZEt1bmZSYzg5dDdhY0hxQzYwVEJvU3JjSStVaCtjTTdSTVJt?=
 =?utf-8?B?WmluQjFUMG5YTXhsMEQ1RWR3MnFTQ2NCenArVmRucGhNdlJMakhVdHpjUkpl?=
 =?utf-8?B?a2FCaG4vc291NHVSVjlObHJFZGVhc2loelFZRjNNbjNSNVVkUDdjRlo4R1Vo?=
 =?utf-8?B?OVlZeGJrZlRhZTJVb1JIMjZUUzJreTFYcXNnUEdYdmxIcFZGVm92OGozYTFW?=
 =?utf-8?B?dXFrMEhOaU1hdFVITmdPUGs1TnBWYlZpdGZPbDFiaituRHVueVpWb2Jhc1pS?=
 =?utf-8?B?bDAwNXhSTmJkbCs4UVkzTWRhK1o1NEpVQ0ZDVGxPeGxWWUpFTG9kNUNOVmoz?=
 =?utf-8?B?cUNBMnk0bjhTU0c3RFhSbGNzcmhMcDZ0S2hEQjdFbGx2clFrY3B4RWNVUTRV?=
 =?utf-8?B?VzdLQWlQT0cvZE5SOUVLSjgvUExLT0JqMTZUZlFGRmlrN1V0d3dMcmtyMjBh?=
 =?utf-8?B?Q3RlZXM3QkUwQy9EVVVkY3VQMXVMYTFmaTBJN2VXcllCMTlpYk40T0tvYVRX?=
 =?utf-8?B?N212UXA5SkNjcVJ4RExMeGVnb3FOc3JuRE1CMlBrZHZPcVRQTUtNZ1ZMOUQw?=
 =?utf-8?B?bFdJRlZ3VEtlaGFhYm0wQVg4dGhqQWRPQmN3VndpUFVnM3lXU3Rhc1l0bTh6?=
 =?utf-8?B?ZHZkdHg4TE0zZk5kbVV3aTdqK25jaDBQQ3VTaEcrTVU2NmVWK25ycWpIcFpW?=
 =?utf-8?B?QXpULzdsVldiT2ozRkRqb2pSSnFROFo0YTY5Z29VdjlvVWtCT1FMc2RHN0x4?=
 =?utf-8?B?dmM2NFZVK1E3TTk5RjJSTnhBUXozM3NCV3lWTFZhaVRRNjVZbDBxQ0RMUENF?=
 =?utf-8?B?MTlranRqMHB1bk5wb3lyWHl5THFzMjVsOW9LUWp4cm8vM3kzaEc3OUlrVzFB?=
 =?utf-8?B?WUt2WWFLYUFZekRjTjkyZ1FqZjFka3lERlN4d3YzZkVKTDhYKzM1ZmlCeU1P?=
 =?utf-8?B?VkRBOTFNcHliQzFHclliOXJIb3I4SytqUUgwbVU4akowL1lKUDB5cUVURTl2?=
 =?utf-8?B?K1F1bllyRTM0UkgxSkQwR3F4V0drZmlhMHZPWGJXd25Ic0NvR0JpREova0pX?=
 =?utf-8?B?cWg3UEFJT09NQTFTQU9nSzZjNUo4cVFCdGRuV1RpN2JDS3ZFcnpuZ2lndUd4?=
 =?utf-8?B?S0ZrVVhna2l3akpMZGNEUmlTcVRKQ2s5bEtod3VqZTB6RVJTMEZReEdUS0x3?=
 =?utf-8?B?MklvV2Z6bHhJZzBSQU1DbEc4cFN3R0RybGhrbmFDU2JLTnQ1VWhpbUl0R1dD?=
 =?utf-8?B?LzgvRkkzVmQ5dCt6aGQyUzB3eUZ0WFZFU3BFbjg3elhiUTBoeDV0MC9LbFVr?=
 =?utf-8?B?KzVQb01VU1VzN2c3T3kzOHJRdnpIVnNWYjZkU1gyaVFSNFNnSmdEYnlTTkpD?=
 =?utf-8?B?anhHT0NCSlQwQmZYWDRJV3pWZ3dNSzZId3NvR0xEWFBBQzg0SUpYY2JyL0VC?=
 =?utf-8?B?eEE9PQ==?=
Content-ID: <CF1745B1B809244397D6D0B169043EE3@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7153.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f7c0977-5c72-4f36-0ce5-08db81ecd4d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 08:57:18.5724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1VQwsoOgNYzUwZYQ/pWjEWrrOkl9CbytGmDuCAQwYYzbKj5BQWdHZ0FP5F8NfRobyEwBtzmpsxXKBfPu5R9MtKSynzTyC4tuIcBGalPIZMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB5492
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_015728_500101_0EC94CD5 
X-CRM114-Status: GOOD (  26.85  )
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

On Wed, 2023-07-05 at 12:00 +0200, AngeloGioacchino Del Regno wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  Il 05/07/23 11:30, Yangtao Li ha scritto:
> > HI AngeloGioacchino,
> > 
> > On 2023/7/5 17:22, AngeloGioacchino Del Regno wrote:
> >> Il 05/07/23 11:01, Yangtao Li ha scritto:
> >>> Use devm_platform_ioremap_resource() to simplify code.
> >>>
> >>> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> >>> ---
> >>>   drivers/phy/mediatek/phy-mtk-tphy.c | 10 +++-------
> >>>   1 file changed, 3 insertions(+), 7 deletions(-)
> >>>
> >>> diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c 
> >>> b/drivers/phy/mediatek/phy-mtk-tphy.c
> >>> index 0d110e50bbfd..cb7a4e6ea017 100644
> >>> --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> >>> +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> >>> @@ -1554,7 +1554,6 @@ static int mtk_tphy_probe(struct
> platform_device *pdev)
> >>>       struct device_node *np = dev->of_node;
> >>>       struct device_node *child_np;
> >>>       struct phy_provider *provider;
> >>> -    struct resource *sif_res;
> >>>       struct mtk_tphy *tphy;
> >>>       struct resource res;
> >>>       int port, retval;
> >>> @@ -1576,15 +1575,12 @@ static int mtk_tphy_probe(struct
> platform_device *pdev)
> >>>       tphy->dev = dev;
> >>>       platform_set_drvdata(pdev, tphy);
> >>>   -    sif_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >>>       /* SATA phy of V1 needn't it if not shared with PCIe or USB
> */
> >>> -    if (sif_res && tphy->pdata->version == MTK_PHY_V1) {
> >>> +    if (tphy->pdata->version == MTK_PHY_V1) {
> >>>           /* get banks shared by multiple phys */
> >>> -        tphy->sif_base = devm_ioremap_resource(dev, sif_res);
> >>> -        if (IS_ERR(tphy->sif_base)) {
> >>> -            dev_err(dev, "failed to remap sif regs\n");
> >>> +        tphy->sif_base = devm_platform_ioremap_resource(pdev,
> 0);
> >>> +        if (IS_ERR(tphy->sif_base) && PTR_ERR(tphy->sif_base) !=
> -EINVAL)
> >>
> >> That's wrong. You want to return any error unconditionally, as the
> V1 PHY *needs*
> >> the sif iospace and there's nothing afterwards retrying this.
> > 
> > 
> > When sif_res is not configured, an IOMEM_ERR_PTR(-EINVAL) error
> will be returned in 
> > __devm_ioremap_resource.
> > 
> > This kind of error is ignored in the newly added code, and the
> driving probe 
> > process will not be interrupted at this time.
> > 
> > What did I miss?
> > 
> 
> As I said, MTK_PHY_V1 *needs* sif; devm_platform_ioremap_resource()
> returns a
> handle to that iospace, or error.
> 
> tphy->sif_base = devm_platform_ioremap_resource(pdev, 0);
> if (IS_ERR(tphy->sif_base))
> return PTR_ERR(tphy->sif_base);

Yes, it's right, thanks

> 
> Regards,
> Angelo
> 
> > Thx,
> > 
> > Yangtao
> > 
> > 
> >>
> >> Please fix.
> >>
> >> Regards,
> >> Angelo
> >>
> >>>               return PTR_ERR(tphy->sif_base);
> >>> -        }
> >>>       }
> >>>         if (tphy->pdata->version < MTK_PHY_V3) {
> >>
> >>
> 
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
