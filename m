Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 238D8C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 05:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNWkeUs9opAAIRzE9NdWt18VSUCn0gytQVnBUTeGbak=; b=UhUZha6f7ycWlN
	bjhKfBoAzXM92fitXl1yuXqgHtPwcu/7iCLFzrESA3uzSViItlTTHTplRiGz/gbg7V1NMUGQgZxwD
	ebAk1/6JFvvL6qvfI7I1Ry/2uL9sgS0A267WgCTNDflrLikB0RZ0TURqPh9kSxy4HFs/ompZ8NbTB
	McOLRxNIB/ISPaUCq4NXXrPzNKakiutXyMXiyEoiKnTWr0LyroQGAX5AbvjeAOAFX8HW7hVSS/KFz
	e0P1rZGwaD/1GeJCXioP5bambQDoXzK4E+No+8gAmJpQULY64tNRzFWgp8LRGeI1y/y+hCw/E5env
	sI4bEZlYpm7B7NLoQhNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9fsW-001sbC-DW; Mon, 26 Dec 2022 05:18:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9fsL-001sXN-RD; Mon, 26 Dec 2022 05:18:17 +0000
X-UUID: f5641713f162420eb88cddab927672e4-20221225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=oAWTdcGt9Dbd3eUrdpJoRlR7cubenrLZesGsWUPYvYo=;
	b=F6GyJ5EqbI/HxAG3Ctxa8D6xNnHmMhNnlA3eo0Kg/JTDP8iKUw0pu7wDf07pVqBOZYHW2kzie5dCizY8NixCU9d/epZ7/Ll/Q8oxguXDi/GjUreNRGAMww0qEoaDprEwgYlnhpO11mA+D8RttN4oFVa69jy/1+LjEsvhoxL6yiU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:f5c4c168-b427-4ff5-8dec-2820f0be1a02,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:48e2f0f3-ff42-4fb0-b929-626456a83c14,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: f5641713f162420eb88cddab927672e4-20221225
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1286636783; Sun, 25 Dec 2022 22:18:08 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Mon, 26 Dec 2022 13:18:05 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Mon, 26 Dec 2022 13:18:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bGVVdyr6dQGiN1aC1wZtyyR+iS/9BlFUekdFdBofbVv2X25zKl7KaH1kDLRgSOoABYkeXPfLCfhvm41XBzjCBu2nqJr0wve7HGc3KOyqa5Bx+8JBbvFr3p509yxNkJgsM5S6l14ivCQXnZ4m8hJDmRbSSKaWBy7UesJG46zi7Pye0dZGjMDNeUjgwNtCDAUeANIjhY1eadFAIzhcGU4d7/lOrTcQXenIbPIn110eMw9AaCPKIwXyj/Tm7sg7bHEYe3R8cgwb8gsH0yJ6mwhxPDH4l4kggWElHEFTtsYbXTzwlMXM+63meybTHzkrPs1WFtBKJBagJzEGItDkdZ6VxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oAWTdcGt9Dbd3eUrdpJoRlR7cubenrLZesGsWUPYvYo=;
 b=kY0GfmHt1kFCKq2d2a4G/+LNQ3Ypp4rf4fCCNzjs3vm99egtx6LIIytF3AmUTcOxDLvk6Glm/E30OvAMIAefm0NgNbJfsLAVcUKZFRzvRs3CdyAy0cLKflnZEjj9jHJ2DIAwtn6K/VOHEo8lStT7XsQlCHIl1/gzpfm2X8eIdLWhdKdjBiRQZa6NU4rbRGyHSXR7TZptbsOttqUl6lxWKzGPpk8gb+iyrGBC0y5u1SmF6xcZnN9Vl8zlqMRDmXz0Bjxm6Mrnk0jRPgTexs+41EavRu1bQHTmDnL9mRgEhKNmxPiew1y9AOQQidUBADoXxqGrAi2YfMdqQFD1QLVu6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAWTdcGt9Dbd3eUrdpJoRlR7cubenrLZesGsWUPYvYo=;
 b=rSyBjxf3q9dFqmd6scXJSuGQ95y/5tk9epcPnipVptsOLA7V2qVBM09uhVNvOdVxJkm+oHV3qjehFppNywzX4fxuTABqBSq0PordDI1bpPcmMiT0nduiC/GTadDP0ajdRzoMHU+SIaWVBiHp4bTa9yhnwWgDPC7SGFQhCihge1g=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYZPR03MB6134.apcprd03.prod.outlook.com (2603:1096:400:12d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Mon, 26 Dec
 2022 05:18:03 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::99:4418:290a:ce5d]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::99:4418:290a:ce5d%9]) with mapi id 15.20.5924.016; Mon, 26 Dec 2022
 05:18:03 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "kishon@ti.com"
	<kishon@ti.com>, =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?=
	<Chunfeng.Yun@mediatek.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, =?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?=
	<jitao.shi@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	"granquet@baylibre.com" <granquet@baylibre.com>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "airlied@gmail.com" <airlied@gmail.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?TWFjIFNoZW4gKOayiOS/iik=?= <Mac.Shen@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
	=?utf-8?B?U3R1YXJ0IExlZSAo5p2O57+wKQ==?= <Stuart.Lee@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Thread-Topic: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Thread-Index: AQHY8FfX0tvBVNVOZEOAQw3HT5WBbq5/8ioA
Date: Mon, 26 Dec 2022 05:18:03 +0000
Message-ID: <7da1e73a0cca6867a060d5b69d45e8d4dfc89748.camel@mediatek.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
	 <20220919-v3-2-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-2-a803f2660127@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYZPR03MB6134:EE_
x-ms-office365-filtering-correlation-id: 69bf41d9-a7c4-4ede-e46f-08dae700903b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Iya4El/nKvP97+zXKtbf7qNscD0LKT8UhH7bkNSNZw+bT8DJcJ9hinOyDP291IT6UieAJCd/3eU7WnxNfuxKyfkFk4wnZksYLKGUbDakUCFCqbMxpLSh4vWHQfXKDLyTWJj00IklSLwKuc5mDUZavwD2Q6UME7iyO5sQnMx41qII30aAAnFVWDX8iTFBOcyhIzYKyu+4MMXQISoL06JnPYxEuOHdpNHCIQL3RhH1Tk3nSoyNXaX+rLD/olO3pDmpuqPbTrGhuG2QU//YtV4/JaA1faacWTMXQOXikQXpG8a7kSYh4jJwxPNBHwswY9nx1TyMir68q55ojcRNuIWU32CTPDTiUHzUK6rZBpJJz0iJbC2lWwUwZjoMtflpgE9LZ7nJkR9EP1T9DJQoeLJ4em12gU/T6JSXL81dBD8T65AC+UmPhW9DH8hDjmCgtgNjfXcavGd6ONbkhA69PWq2EduH1mBeld6B7TgNAYessU1/8x77C1e7BF1HHH2eGj1Y1M80mpkE34adNZvPGyu57iuuij+SDLhwfPKkJBRRrNeUMLDJ5yKB/k4r0NUmG9rg/d6tDZmc1RIy/xPrJIWJKT1A+RkJh5m7EAEjtDs5oYu+qE33yyhLtXHeTBi8uPDZaiiU0eUBP1qBhA61yFo+koOc6B+5+PmOKhKDVR1uO+lWFXpAzqywt8qUbKQPu+nmNzXe5+2HRCamjleK6iC4UpOfsqP1D+WEfcB0ihwCwX83e2KwPTpu82QzL2VZJTeYLHrpO8UnEQ2+YnZ8o5K5cf7PzhLoU2FYkjqL7lYSW+mRFVXA7avYwC5I3XnNCLtLA1rIhAzcNQO2UlaaZNLA9Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199015)(478600001)(71200400001)(6486002)(966005)(316002)(36756003)(2906002)(110136005)(54906003)(85182001)(921005)(83380400001)(38070700005)(38100700002)(122000001)(86362001)(2616005)(6506007)(26005)(186003)(6512007)(5660300002)(7416002)(8676002)(4326008)(76116006)(66946007)(66446008)(66476007)(66556008)(8936002)(64756008)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WmFlWkU5MFpCVlRNTnFUUzZ6UURSRDZPVUFqeUwxWWlJL251ZUpTMHdZczVG?=
 =?utf-8?B?SlQwOVZNaFhKTDgrZFR0R0lTWXdNR1ZEYkpHcDhUZk9Pelo4Y2RHWTV3Wk5m?=
 =?utf-8?B?VERyL3VPbU1qbm9BdTNuN0dNOWk3OGdWSVVMWDIrZFpFZGwvNGdZd3U2RzJ4?=
 =?utf-8?B?T0llRWZEY2JFdGpScHdzOFhHVUxqWlUzZWZaMVZsRjZWQkNoTU82UlZFZWVv?=
 =?utf-8?B?dSs2cHRxRkxZTklDb0luVnNYMHh5Ukw3a0F4UjRQaU55eWg4MFlXVUV3U0Jx?=
 =?utf-8?B?a0VyYkNhN1lyOTM0aE5EWGtuY2hQWVFlaDFuSmI2bFUvUC9mUHZRN0NiY1V4?=
 =?utf-8?B?RytvUklIdmh5SElhQmpWVkRyT1JxUmpuVXF1NkpsNDhDQmsrbHVud0pLWjhZ?=
 =?utf-8?B?MS9TR2pXZ3ViaEFwVytKVU40cHJ1MG53Yk4zemhUbTFGVVN2dDAxOGROL25k?=
 =?utf-8?B?ZjJHYWdEM0lHczJaMSt4a2RUOVBKNFZ0YkZoQndYa2M1ZmgybU1XY21EeFlx?=
 =?utf-8?B?SUNuYjZTVHBjb1MyNG5aNjAwc0tuTVNnMnY0TVptMzNpUi8rbi95OVEwQW90?=
 =?utf-8?B?dFRZSmhMR2J3RHJ5bjNCNnY5dVZad0JDUFhPK2NxckRFZkdoVHZ0Mm9nTWtE?=
 =?utf-8?B?cThaUmpMcE0rZ21vWU9Qd2pUellISmIzeStGLzZ1OXhvZVZlZEswM1VXYkFF?=
 =?utf-8?B?K0RNKzR0ZWM1SDdwUmdaRFVDMXJUUlpHMHl1dUNKajJRTUlBSzd6azdtNDBV?=
 =?utf-8?B?RTVoYUVVTGNvM284b3FNUDhKWEtXajRaajJzS25zWVVlZCszTnRzTGVic096?=
 =?utf-8?B?NWsrS2NYNnJPcVlXelp0ZENlaC9pQk4xNVZFbXlHdnFxV3RHamszZ1NYWnFT?=
 =?utf-8?B?b2RzcFFXc0Q4SllNSXZEaTJrUWZOQ01tM1NUNTM1akI4Q2ErdWhBU1ViVjIx?=
 =?utf-8?B?K1grQWhHaERtUDJKenhzSnRPbEpzVWZzYUoveFJybGxPRzcvZllzcUxuS2VI?=
 =?utf-8?B?UDZoZEJIcjc5bmtNQmN0SUNvYUdFMk5tWXhnQ3FwblJ0cVc5QjJNaXFpR0lM?=
 =?utf-8?B?amhPak5id3dhOERCWWdOazFVbEprNE51bjNJNkoxSUFOTUJLNXNhMWNvcVpV?=
 =?utf-8?B?UUFsb0dOb0JHaDB2dHlMYStjZ1JzV29UT0hiZjY4cW9IaVd5QTZXcEVqL3FV?=
 =?utf-8?B?MWZ5alJtVTcvTkNENWxlU0FpSzVXdmdiVytkV1Y5VUNBRmh2QnBlVi82MUJr?=
 =?utf-8?B?Qkp6QXpsU1M3MW54bXhGRkxIZFFxMU5xajk3N0RxMFlCemNuMGlxOTdBNm8r?=
 =?utf-8?B?R2I2Sk1TWWVKVEg4RkZ0T1lVeUpvc0FwOGQybmpReTFPaVppWXFUdDBSc1A1?=
 =?utf-8?B?TVBBQk82ZjNtSXJJNVVYRUU0QXZvYThDMnBNbnNmcWRJWHpxdFV3VlJhNWdV?=
 =?utf-8?B?d0VhS0cvN1lwRk44eVd5Z3ZjODhDMWhQTUpLbEx1QjNmUVJZTEpJazVETHIx?=
 =?utf-8?B?YXRGUy9PRHNFUUJzemVWRHZvTE1RbmJNRDhMR3lnSnhmTjlWdXF6WUVzUUlJ?=
 =?utf-8?B?V3Jxc1cvaitQWlNmcE5vQWc1aytZS0ZzVDM2VDRWR3ZnYzY5Sml4b0NpQmZU?=
 =?utf-8?B?WTVGS2hIdDdPNVJZYlZoazlVRlk0U2Z1TzF2Z0F2ZzVLSE01bzROd0UvR1ox?=
 =?utf-8?B?V2dvSDRKb1NYRlozZzdpQ1pyazd6SHk3LzA5Um00NjQ1R01sNjlNd2tiSDFq?=
 =?utf-8?B?cXdDcEkxeVJ6ZEhoR3BOTnlHV0RZQ3JpR0J5SG04TWlNMVY5b3F3NUg0V2Qv?=
 =?utf-8?B?VnArV3A0YzFEeHFIQ0kzMGVJMi8zSWlIM01hYjAwY3JLYTkzQ1lBRzE3UmEw?=
 =?utf-8?B?MDZNZmtYbVlHWnAvbCtDdnZKcWUxN0RQUzlrU0dTVG1kOC9xVDcvNkpkMmZq?=
 =?utf-8?B?KytGMW5qQWwwdVpEUE9PZHFNMVpWTHk5RE9yTUVveUFwYjBodWhaLzZrT29u?=
 =?utf-8?B?SGJQN0lzSzBLVHZCNGVuREhzNTZLWDFWcFc2L0pjOGx0ZUJpdFZyaC9SMUtF?=
 =?utf-8?B?VUNOZzE4N1M2SlZkNjYvcVhkL3l0eGxMUmtFSE1qd0FtSGhqaFRaMTJpNGMw?=
 =?utf-8?Q?4N5EinsbrEaVZ+DRSDJgcpvAR?=
Content-ID: <5B9D832898B92742950E07E29C6BEC18@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69bf41d9-a7c4-4ede-e46f-08dae700903b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2022 05:18:03.2050
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I/AmOSjUGewnJ5KbdFJVyYsFpFgY6JOr3sVtkV2taxe9a4qMF/5uhbXtevXlwn1ozuXpcvNLg9wBOXj6MIYTVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB6134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_211814_850799_DA6EDE36 
X-CRM114-Status: GOOD (  14.39  )
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

Hi, Guillaume:

On Fri, 2022-11-04 at 15:09 +0100, Guillaume Ranquet wrote:
> Add mt8195 SoC bindings for hdmi and hdmi-ddc
> 
> On mt8195 the ddc i2c controller is part of the hdmi IP block and
> thus has no
> specific register range, power domain or interrupt, making it simpler
> than its the legacy "mediatek,hdmi-ddc" binding.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>  

[snip]

> a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-
> hdmi-ddc.yaml
> b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-
> hdmi-ddc.yaml
> new file mode 100644
> index 000000000000..2dc273689584
> --- /dev/null
> +++
> b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-
> hdmi-ddc.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: 
> https://urldefense.com/v3/__http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml*__;Iw!!CTRNKA9wMg0ARbw!wwVQuq5lzW0lvUFUkVXPWT8cIu96xdkn4tMams1E55qyxEZmgV1i0WfpOlq57w$
>  
> +$schema: 
> https://urldefense.com/v3/__http://devicetree.org/meta-schemas/core.yaml*__;Iw!!CTRNKA9wMg0ARbw!wwVQuq5lzW0lvUFUkVXPWT8cIu96xdkn4tMams1E55qyxEZmgV1i0WdSGOSxzw$
>  
> +
> +title: Mediatek HDMI DDC for mt8195
> +
> +maintainers:
> +  - CK Hu <ck.hu@mediatek.com>
> +  - Jitao shi <jitao.shi@mediatek.com>
> +
> +description: |
> +  The HDMI DDC i2c controller is used to interface with the HDMI DDC
> pins.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8195-hdmi-ddc
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: ddc
> +
> +  mediatek,hdmi:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      A phandle to the mt8195 hdmi controller
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    hdmiddc0: i2c {
> +      compatible = "mediatek,mt8195-hdmi-ddc";
> +      mediatek,hdmi = <&hdmi0>;
> +      clocks = <&clk26m>;
> +      clock-names = "ddc";
> +    };

I think we should not have a virtual device. This ddc is part of
mt8195-hdmi device, so just keep mt8195-hdmi, and let mt8195-hdmi
driver to probe the sub driver of ddc driver.

Regards,
CK

> +
> +...
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
