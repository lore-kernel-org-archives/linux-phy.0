Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C6F0C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 30 Nov 2023 02:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQFuhHJAmPCymukiMprsdL0odRsCpoFw+pI937DOPtk=; b=k7PObpQ+Ey4S3Y
	iKJ42JvjRL7LU0B++0CE7ZudAu7zCHLzt+sD2ET+trWXFA4S2LyoZdFdoJkEW1lZ+oy4TGHbFpLIZ
	zDuygGWZy6eY+S4AmMNzlhXP7HaLrKYawpPE1ZbNLsxMJEo4qngpWEL9gI+JYVayrGO4POgAoUn5I
	jHtFk1Ywc5gnOs6/UbJFxxNQymjUFmTcIebO1fDqR0oZ6uNZ5xjLuOUbjI1eIre62AM6qStu0h7ok
	hG45SZgl9yI7FzIQYPoIRIfd/Zbu6DSFvfL/zhTYWZbGNytXktpb7DIItMfs0HTWlGf59ltPSUdfA
	dxrtE56iUsslwWn33Lyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8WY0-009jRO-2e;
	Thu, 30 Nov 2023 02:13:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8WXx-009jQr-1N;
	Thu, 30 Nov 2023 02:12:59 +0000
X-UUID: f80dea928f2511ee86758d4a7c00f3a0-20231129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=Sdpj5tyH7yU8gomUfqhiQkGfVdljFsy1Oevb/SVnP9I=;
	b=XNCBRmlSnmJ852nJI5cJWccOq9G0kW6lInAeQUTZXRgD1xjKi2HXmCgl5Vza2hkjT0us03IfiodmfwhZ900j6Jon3s+gyUjnE6sPRgVe+jEEh/dFGZgtcbknvzCGson6e+PmeYeDMoE8cIJQ4wW0Hqv8W1yJVvsmYIJy71qPfx0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.34,REQID:eb7966f8-de5d-46ac-8a2b-5817559fdb13,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:abefa75,CLOUDID:9f203b73-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: f80dea928f2511ee86758d4a7c00f3a0-20231129
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1588171196; Wed, 29 Nov 2023 19:12:53 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 30 Nov 2023 09:52:49 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 30 Nov 2023 09:52:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xyx1TcrBlRXxYTpG0sCvJEjTRuufJLyiwLOq1o8YALcaPt8QUpGrGi7azWrhh91Ub1PDpcVpcQ0xz4Daniaifng6un8QyrrRierdOlrsqUHujGmJHSDc4tA6M9I9L4ZyxjLfkhpUTPjEXXIe3ABfeGdiyEoas7JLNvN9L0Slapa95Zn4xlddkYmZddLbgQuXOZXlOhlAcsfDh2UM08TxL56j1KURfrAHfI1ydg5OWrT1Q1uw1qlH2IsMEuPIr0Bs7ez7TSYXI+gJSYjCBW7ZFmALieULqeO68DLH5jESJJDcYtwP71Od1OV4QiQlDMcitnAD89SQl1u7/CT9cdwOSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sdpj5tyH7yU8gomUfqhiQkGfVdljFsy1Oevb/SVnP9I=;
 b=QKKrkfEPEo0U17v3pZ9iwF8cxv0JiLOp1EMMxOc+X0oUM8YGw8DIXWmIUGrA3jkvQvENfSNY87U8d0k5Or1ZDjvqpbSRYkMmp9qJ8YZ31kHKFsR2fcBspyq7RUHzek06hFu9vO+R/1KGGMwxlADAIBNgjFtgrkvkfvlTfhVtHBR3i1Oqfd6dBlub4nj8qcCMexlxDB7rhEWYKxhjdj/IBXIMO89GrJY6BqLJfiyTs09bBgAmhpboYqC/aX2YuEq/ZPFqYeOG0fw1vBFWjNqwKCkl+DPpBwYqTbe/A36qf6JOKqX+2AyX/cfEbQ0QHyGhOXuZ11r0AG0fRYG2Wt0ObA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sdpj5tyH7yU8gomUfqhiQkGfVdljFsy1Oevb/SVnP9I=;
 b=qs+2Wz9+vye+Db+MuT4FKIHQmDULUyIgW28pepnxBWK+jDv2JIFPSJgjU7Wsk6wBdm2Hat/gGZX6slFcAOmLDFbLzaO2MZ/iUh7TlRJ0owlLiDi2WpGRWnYsW0yrjrX9qIp1jgimJylZl40i8h9l33fY9H5mIMUMVs39gE9h+nY=
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com (2603:1096:400:33c::6)
 by TYZPR03MB6495.apcprd03.prod.outlook.com (2603:1096:400:1c8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Thu, 30 Nov
 2023 01:51:40 +0000
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::75b5:9f6d:dc01:9946]) by TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::75b5:9f6d:dc01:9946%6]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 01:51:40 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "krzysztof.kozlowski@linaro.org"
	<krzysztof.kozlowski@linaro.org>,
	=?utf-8?B?TWFjcGF1bCBMaW4gKOael+aZuuaWjCk=?= <Macpaul.Lin@mediatek.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>
CC: =?utf-8?B?UGFibG8gU3VuICjlravmr5Pnv5Qp?= <pablo.sun@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?QmVhciBXYW5nICjokKnljp/mg5/lvrcp?= <bear.wang@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek: tphy: add a property for
 force-mode switch
Thread-Topic: [PATCH 1/2] dt-bindings: phy: mediatek: tphy: add a property for
 force-mode switch
Thread-Index: AQHaHz31Z+QBjWZtBk+dlN+S28FsW7CK2GgAgALqXwCAAANiAIAEWt+A
Date: Thu, 30 Nov 2023 01:51:40 +0000
Message-ID: <74957a9cc4663815e200d222483541a1eec43bbe.camel@mediatek.com>
References: <20231125012303.760-1-chunfeng.yun@mediatek.com>
	 <e34c2746-8e93-48b8-9c96-690242fbf6e9@linaro.org>
	 <239def9b-437b-9211-7844-af4332651df0@mediatek.com>
	 <0dc24d82-e09d-45bc-98ae-1dfb6318cb96@linaro.org>
In-Reply-To: <0dc24d82-e09d-45bc-98ae-1dfb6318cb96@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7153:EE_|TYZPR03MB6495:EE_
x-ms-office365-filtering-correlation-id: 8b1f40cd-1ce6-42ae-5fdc-08dbf146e5a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +sP5VsLkxHtntuj8kPCg8pMqHksZ0YhF4XyWK2h2TiDKzAw/NjVuS5Oz4n/y07bT1XXNI5GwgWd3je/HmqOm7losJlf2ZYO9tpLc3Jfh8yuZhMzTRInRMF82d9e1hv0/6GcOqx1qoKwftiDZ4EARvSNbgxCZ1LufiY8nLupji2W4HnR3XVKMOwBlfdzSx0728OfQTv5UIchAUNsstkfsC4Qx6k3UXOnvuMe4CDonRutyPxk+Cb0RUMVUnVRROgDjbkRM44iJ/HVNiPWaYpa3tUyK5i+JSMgmPyNuZ62Buzvr1aaauyeV/ieSzsmYc1E0T+XL1ChK5fs6JECVuq9uIFc8MEOJ7v+onV1jtMrI9/IG4PZQyiHcaUuBZgF3ggVZVUfa350J8cp9tCl7039+8DLL9WDdT0t4HXycTvy3KT4jH5Nvew/mxR0WgL6OMTDJfBvIZByCXbuRC+++1hEVt7rBtwbIbTsJJWSntBTzUwYYS/2KiGSmjnkEdg1WXbARbvp54j+I86jwzJH00RQD9HWmOl7bfngLr6WE/UN7cIaAnKy0jcESHl10lX/je1UJcGlTRAO+sOSSNWk4w+VVqCxz24d7wS5EbrFxUVpMdVfH214K6EZIwcSYyMmVU2bAkfe7MBnqxBsSYYf9PbY/o7ol4r2e7ohk5NWos7efxoXExkQyUJGzJsL41kLedFSWQpxQBspoamv3sQ4sUVb44AVupF/MLdfUesHOnkWFvSKw2g1mce7DPdZWzV9J6L9GHR5kxcT3bFqk7VJ/vnSuzQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7153.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(39860400002)(376002)(136003)(230273577357003)(230922051799003)(230173577357003)(64100799003)(451199024)(1800799012)(186009)(64756008)(91956017)(66946007)(76116006)(66446008)(66476007)(54906003)(66556008)(316002)(8676002)(110136005)(4326008)(8936002)(83380400001)(85182001)(4001150100001)(2906002)(202311291699003)(38100700002)(36756003)(6512007)(6486002)(38070700009)(478600001)(53546011)(86362001)(122000001)(6506007)(41300700001)(71200400001)(5660300002)(26005)(2616005)(7416002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXJ1WXFydHNPZk1Cc2hNeXlHWjdqSFR1dzU3a1UzcDlIWlpkZTZnT1QvMkd6?=
 =?utf-8?B?a0o0eDdqekxNVG1zN2Nva3FoaFhTZ2twYmtXVzNXTEYzeTcvQXk1RExFS25U?=
 =?utf-8?B?ZjVGQjBmeVRpUmJjemRpRG15VmdpNU5lZVV3V2FpcCt1MVJWakp5bnRkcFVI?=
 =?utf-8?B?dkE2b296T3I1enFXVWFWMDFCeXdOTTlvdWRmeU1BQjRDV2c5aDFIS1V0Tjla?=
 =?utf-8?B?TU5IVk13Y2VrYWRCVXZHa2dQa21wMXlycktLaWZsWkRDMkdaUXZPNnpocGxa?=
 =?utf-8?B?c2xRUTl3YjM1WmUyV3pPU0EzZXpRZng4VFdsTTNvK0sxdmxiK3NQdmQrT2tt?=
 =?utf-8?B?VmtDZnFvRitmS3d6a1ZTb0RCY3R1ejVOZHVJN1hQd1JnOFg5VU81eXRINjQz?=
 =?utf-8?B?dEVnNjVNWDhBNTdCV1NldTVjQXN0VWVsZEZoVzA3RUZxaDluc2xjdWQwUzlk?=
 =?utf-8?B?dVZ0ODZ1c2hyRitoL0I5WktOY01hZ215T1diZEdYQ0doWlNGRlFIb3dvVEZa?=
 =?utf-8?B?QzVqYklkT2hYQWtVOG1JMVJQSnJoNnErRkZ3cFJNTzRSeDQxOVlMLzJIVVZS?=
 =?utf-8?B?R0RPbnJLTWJkUUsrbTdEZ0QrVGpWMlMxQVBOcUIvZmpMYVdQS3g5TG9iWE0w?=
 =?utf-8?B?UW1haWlKcjBTVk9ZSkdTZDFTWXNIdlNjaDJQa3BHN3lENkJEU04xZ1RGMGY0?=
 =?utf-8?B?TDl0azN1R01oYmdkMmdlMndWbjFVb3E3cDJpdTl1Si9hOE03NVBWQjRzbFRj?=
 =?utf-8?B?VlB2Q2p3bzN3QmVjOUJXVkZFekszWE1UNDFRa2JlVEJ2TjFDem5XdUdmVjVE?=
 =?utf-8?B?Njh3c01CLzlOcmpnNmErUTFUQU5nMmRMVmVEbjdXWm5ZQnZ1QndUVXBTRjY4?=
 =?utf-8?B?Z2dQUFZ3R1AxVDJoYmU5RzlZVWExRXRWVHFORjNRNmVqajhlbjBjWVdNa1Zx?=
 =?utf-8?B?MWZFSnpEeTgvV0xmdGJ6NThNYndtSVZiMzdXczYvdllZbWVYWlc3M2ZRdmtZ?=
 =?utf-8?B?SVQvOFRKVXZYdTRzdlFIREhwazBjdlJZQk5Na3pHaC9SVGlHRXVMUDdQbHl4?=
 =?utf-8?B?ODU3VXhuRDEvT1h6d1pJRUplMXN3Z1hpdUZWOWJjR3RzWVI4QWRTN2RwSllM?=
 =?utf-8?B?WW1NSHdXZ2hmWXBGVHVXUTQ0WDZaeEFHazlITklQeFVoTlFGTWc1ZnFZZzVv?=
 =?utf-8?B?dlB0MWQySVZFcHlWVUlHRkMxcE1SbVVnellSNGhsaHZDdnlyQnVWZWI5YWVi?=
 =?utf-8?B?akUzVDJuRmtJSU1PVUVHdFM3YlVjcmxZRjNYRWpwYnc2N1J3NHBXQ0pqSnEw?=
 =?utf-8?B?VDRjdWtYdEtyUWh3c1MwaWdudjAxZ0ZEUlRmbUplY21Pa3lMMUMyVkQrN0Z6?=
 =?utf-8?B?aDRXQXIvN3lBbVE4dnk3Q1ZjSkh3bjcxQWh1ZlpkODZHdm9uc09LaU9TcWlH?=
 =?utf-8?B?OGxTRStjT2Y4ZWFRVnpRUUV6Zm5kb1Rubmo4NTRsOUErM3FhY1ZjRW00OE1G?=
 =?utf-8?B?b2Q3MXRPTzkzWDRla1g1Z0cwdGN3SU9RZ1hyNUR6cFE3Tm9xYk5Rd1VVYlhj?=
 =?utf-8?B?Z1FaR1RGWFlTM2hsR1U5UWhxRXFReGxOYkZlb1dBMU9pZTNDZnFUU1hRUUNq?=
 =?utf-8?B?N1RzZTNvY09GcnNoRUhSemJ3bndyMlA4WDNtSUh5NzhjYi9ZSEo0ZjN0UzNR?=
 =?utf-8?B?R2MwZHdnMDVaeE1TREllZk13NjI0ZFN3b3IrcDJYeXlLaVRrUEt4WlhialNT?=
 =?utf-8?B?bXViWllsTzRjRGF3MmdjbkZuSHJra28wWHhoYjNkMEcxM0FkdlFtYm1MNk15?=
 =?utf-8?B?S0hnR1dOS0ZGdHZQWVJqdEFCeXQzRTFXSUdPOWpIRUh1b1FTNm9VQXBlT2I5?=
 =?utf-8?B?dWZGTHZ4bUg2SlpqNHJjWGdiQmNJWURtMFBQdHNEbmFXMTl1V1FhNWxzMkVB?=
 =?utf-8?B?WnRWRWxVOXVHeGt3TEp1SjloQW5Kb1lXNEFqYTd6WUZXdkhqdThSY0svbUhh?=
 =?utf-8?B?QzA0ZTlEcWIzL3hMMlpSUFgxL0I0VzZaSU9zZlRNbDdFcGtEOWZCQlhOVDhY?=
 =?utf-8?B?UDQ4RmRJWlQyR29ZVXZjZ0JWZWxiQ3ZZQ1RXOE91QnVzMUZxWERQZkxQdjFz?=
 =?utf-8?B?TzNnSEVsMUJxMGVEY0w4TWNDVFFRUDV5UkVkR0xCQThuWVlzdHd4RXloa2Rl?=
 =?utf-8?B?SlE9PQ==?=
Content-ID: <AAAE7A2D2FE3DF40A26731185BA70111@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7153.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1f40cd-1ce6-42ae-5fdc-08dbf146e5a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 01:51:40.5995
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zyr5z+VOEM0fnhLigNyrAC+TV5yS23a7mMmFBKDPQz7u7D8wy8ycQ2tv8o26oaUvwxOEdpbaCFQXwgj1YGeAjeYANcwKq5ltk1JekqNC6a8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB6495
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--34.046300-8.000000
X-TMASE-MatchedRID: CML2QBp/u5TUL3YCMmnG4t7SWiiWSV/1jLOy13Cgb4/n0eNPmPPe5KWz
	WoIRiV9DM/Se/q/gEyf5MiS7M8c1eGmXMi7Ntyo2mlaAItiONP1RnscLnNAC7Nvpj5+dNlQvMC/
	K/e26+Q0tIcNCL+1lT4IDpXRi97xlDcy28oDHlwJc/msUC5wFQX5ErfRqpilVZ5yuplze9psVWT
	DhfTuSaNoUzlM8Yt0I0wOo8Q6y8JusVSjuVu0TEENTnAhL0/m3HznaOB9+eYio+b+yOP0oGEDH7
	fYNhjWYpLHkqMumMNqfJm8PXdmqu4qtuuQ+CE7v98sqn8kK3uGyNcEJTKJGJs2mvbig5LjG8Z5E
	7FtTRPZCBxbVTmCgug4BODg3LBohOzEyQBr3GYwSEYfcJF0pRYEcpMn6x9cZ8Ule2AXgYUvppfx
	NgiuPW6uGnr8dTBKw72n23NsrtG7zLVZFOZrw3uv8QGaI25e3GK57kZ/2mameLRPBGqw/vqKAzl
	CenXuFl9EADa9mjM5akpdOW1kgxXOUemoddxuVE0Q83A2vD+s5SAOCkuqVt9W0BaT1GcXqGNtH9
	cKwddYQ2TsKZmZguDvpMjHksKcLSSOWVJeuO1DSBVVc2BozSlkMvWAuahr8+gD2vYtOFhgqtq5d
	3cxkNQP90fJP9eHt
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--34.046300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 78347600CF0BAB8561205D3365B10D339056CE020A764DFA84BC75E3E778B1FD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_181257_504585_BD3465CD 
X-CRM114-Status: GOOD (  24.46  )
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

On Mon, 2023-11-27 at 08:21 +0100, Krzysztof Kozlowski wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On 27/11/2023 08:09, Macpaul Lin wrote:
> > On 11/25/23 18:37, Krzysztof Kozlowski and Chunfeng Yun wrote:
> >> 
> >>
> >> External email : Please do not click links or open attachments
> until you 
> >> have verified the sender or the content.
> >>
> >> On 25/11/2023 02:23, Chunfeng Yun wrote:
> >>> Due to some old SoCs with shared t-phy only support force-mode
> switch, and
> >>> can't use compatible to distinguish between shared and non-shared 
> t-phy,
> >>> add a property to supported it.
> >>> But now prefer to use "mediatek,syscon-type" on new SoC as far as
> possible.
> >>>
> >>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> >>> ---
> >>>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 6
> ++++++
> >>>  1 file changed, 6 insertions(+)
> >>>
> >>> diff --git
> a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> >>> index 2bb91542e984..eedba5b7025e 100644
> >>> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> >>> @@ -235,6 +235,12 @@ patternProperties:
> >>>            Specify the flag to enable BC1.2 if support it
> >>>          type: boolean
> >>>  
> >>> +      mediatek,force-mode:
> >>> +        description:
> >>> +          Use force mode to switch shared phy mode, perfer to
> use the bellow
> >>
> >> I still do not understand what is the "force mode" you want to
> use. What
> >> modes do you have? What are the characteristics of force mode?
> >>
> >> Also, please run spellcheck.
> >>
> >> Best regards,
> >> Krzysztof
> >>
> > 
> > Thanks!
> > 
> > 1. I've tested this patch and it could solve the clock unstable for
> > XHCI1 on mt8195 or mt8395 during system boot up or during
> > unload/reload the phy driver.
> > 
> > The error message has been listed as follows.
> > 
> > [   13.849936][   T72] xhci-mtk 11290000.usb: supply vbus not
> found, 
> > using dummy regulator
> > [   13.851300][   T72] xhci-mtk 11290000.usb: uwk - reg:0x400,
> version:104
> > [   13.852624][   T72] xhci-mtk 11290000.usb: xHCI Host Controller
> > [   13.853393][   T72] xhci-mtk 11290000.usb: new USB bus
> registered, 
> > assigned bus number 3
> > [   13.874490][   T72] xhci-mtk 11290000.usb: clocks are not stable
> (0x3d0f)
> > [   13.875369][   T72] xhci-mtk 11290000.usb: can't setup: -110
> > [   13.876091][   T72] xhci-mtk 11290000.usb: USB bus 3
> deregistered
> > [   13.877081][   T72] xhci-mtk: probe of 11290000.usb failed with
> error 
> > -110
> > 
> > 2. This is a fix patch to XHCI1 since MT8195 has been upstream.
> > Please add "Fixes:" tags and "Cc: stable@kernel.org" to back ward
> > porting to previous stable trees.
> > 
> > For example, add
> > Fixes: 6b5ef194611e5 ("phy: mediatek: tphy: remove macros to
> prepare 
> > bitfield")
> > is suggested since the force-mode was missing in the previous
> > implementation which causes hardware function was abnormal.
> > However, add
> > Fixes: 33d18746fa514 ("phy: phy-mtk-tphy: use new io helpers to
> access 
> > register")
> > will be better since the USB support for mt8195 is already enabled
> in 
> > late 2021.
> > 
> > 3. How about we revise the description as follows for more
> precisely?
> > 
> > mediatek,force-mode:
> >    description:
> >      The force mode is used to manually switch the shared PHY mode
> >      between USB and PCIe. When force-mode is set, the USB 3.0 mode
> >      will be selected. This is typically required for older SoCs
> >      that do not automatically manage PHY mode switching.
> >      For newer SoCs that support it, it is preferable to use the
> >      "mediatek,syscon-type" property instead.
> >    type: boolean
> 
> Again, what is force-mode? 
Our DE describe this behavior as force-mode, as you see, the driver
power down controller and reset pipe to set the mode directly we want,
but usually the phy controller switch to the mode automatically
according to the external signal, e.g. trapping pin, efuse etc.

> It looks like you wrote bindings for the
> driver behavior. Bindings describe hardware, not how the driver
> should
> behave. The property might be reasonable, but you must describe here
> hardware characteristics/issue/etc.
> 
> Also, your driver change suggests this is compatible specific, so why
> it
> cannot be deduced from compatible?
that is because on the same SoC, some t-phy supported USB3 are shared
with PCIe, but others are not, use the SoC's compatible can not
distinguish them.
> 
> Best regards,
> Krzysztof
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
