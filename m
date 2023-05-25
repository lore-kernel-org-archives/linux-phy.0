Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F12D4C77B7E
	for <linux-phy@archiver.kernel.org>; Thu, 25 May 2023 07:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq0MOLUGTy7tunoZGDGoulPJEcIDmhEsjg8ChXFCNIE=; b=frF3DGT4R9p5sg
	a31b8WrYsHboaRRNPc2OQZ2Bfa6EyaIWn+3Z3t4toxH2RVylld0E/Ng9K533J2NeyhVF0FLXrknJz
	X0SvOgkzGt+3tttk6p5HNkW+2ZmZGN+tfhtlElZkNlijHStkzsS6+/wlKjEo5nX4BgfVDsAeF7MJU
	YCHtjKCYErr3WO7d1wSL5GtkJ5p3OzMoT4UwjBpHYSg/OgHN4DyXLl2JHoKJQcOubQrRKfOX7dG7r
	nn+EoJh4SD6dhwx6OIqmpagFoKjYP2Ob+Ky7yKn766afVkLFWeUr1sSDWnhIu1uEgGZJAtUKKUukt
	pr/Zr1e6F+dBuRHN93Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q256x-00Fl7c-1p;
	Thu, 25 May 2023 07:10:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q256t-00Fl6M-33;
	Thu, 25 May 2023 07:10:10 +0000
X-UUID: 2861e756facb11ed912e1518a6540028-20230525
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=/oLj3BdLOb7WSQN4p+a9sJ0Mo7ko4sH480agAECTe/E=;
	b=VayI5VLK4XMp17K5E4cLlGHSwGnPQ8ZcK8nhWR25fWNVYbGl0rCpn6HTDDaLIdIOd4v36rSbAqMUZ47uo8FHLNTd1yvUG1kaISlk8lS0mjdE97p/kKVLYtgO5D4nsRlFmqxKOcb8cfeBdV5KYiOhtmfVtSh/27XnxbHg6R65BK4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.25,REQID:36889460-98be-4abb-9f17-41bbee7742df,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:d5b0ae3,CLOUDID:4da3813c-7aa7-41f3-a6bd-0433bee822f3,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 2861e756facb11ed912e1518a6540028-20230525
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1788794558; Thu, 25 May 2023 00:09:58 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 25 May 2023 15:09:37 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 25 May 2023 15:09:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bgEWQNTm6QAK1XB31UOHtqkh4Qp+XLzfwOnXcS8pyyIFIVqqVD/GMFcuz4tKG0dwy6N5v6NR827NUfoI/OdNLz5sFecDuGZ+74tgdlNEFF+dVgQyyPNh9Ctcgjvjl9ADZvrfM93/5L6tUbyrrcGeLjxNFdPD5W0Bme1am5Wwr9ghf/vmR24FW/aZhXYjgj+lEA3FS8j3GNsTU526UqZGFScsePJPhwavoosGK4RnZBThya5gZcg4pvZOVRilgAP56YXkq/ygFOIEjokdeBWct0uvX1Yg/EYh5CvnonQz2nBctQUGvi+1CZRiHbw1I90jLlSlt2AxF4HgCDAiePfQ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/oLj3BdLOb7WSQN4p+a9sJ0Mo7ko4sH480agAECTe/E=;
 b=PfhxaGHwP77GP4KK5vM4wFKK/utGITP9uKHrER/yA34ZUnR8hdR/7tu14DTycn+4VXz+hN+KUHgGfzLgqDJWKAfBgsaLnKVZTiUWO4g/JZXUJVaRbmf7qu309QaZ6Nb31ub24ftIqJlJFxDeL7eGWkc951Wa/pyFo8XT4xr6Q6HobB0dA2CmV/0SjaaWgWu+LtPO2El9aheUWUCKcF2A0vTkcwcQc7Zdt5+2ck+4dDdchNW7iuwYbFeVMQPdr9z48qQ7NbFbq43kEhXsNPzvKvkiGSIjw3nXUZLelFwHJ1bDvhjeUKdExs2J02b4Wwdgq+rUn1J/KqsOxY1rXDjQAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/oLj3BdLOb7WSQN4p+a9sJ0Mo7ko4sH480agAECTe/E=;
 b=ndGpgJPZ8b2uGJvo2z/YYxdriZS5kWdXXRwFJgL9u2j5vpt7ZmMdXS/odqJk1x/AR+gY5VRa/Z7nTpZKuJcaWQBo8OoKwDYqoiW3lBu5EiLmxTKj+RQ3J7TyFvyd5B/MI8Opd4/Rc45XJmLiICLrSogUv8B8JyiPHqetM/CnZbA=
Received: from SG2PR03MB5070.apcprd03.prod.outlook.com (2603:1096:4:d0::19) by
 PUZPR03MB6157.apcprd03.prod.outlook.com (2603:1096:301:b8::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.28; Thu, 25 May 2023 07:09:34 +0000
Received: from SG2PR03MB5070.apcprd03.prod.outlook.com
 ([fe80::da23:cc83:c195:77cd]) by SG2PR03MB5070.apcprd03.prod.outlook.com
 ([fe80::da23:cc83:c195:77cd%4]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 07:09:34 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "jstephan@baylibre.com" <jstephan@baylibre.com>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, =?utf-8?B?QW5keSBIc2llaCAo6Kyd5pm655qTKQ==?=
	<Andy.Hsieh@mediatek.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "fsylvestre@baylibre.com"
	<fsylvestre@baylibre.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add mediatek mipi csi driver v
 0.5
Thread-Topic: [PATCH v2 1/2] dt-bindings: phy: add mediatek mipi csi driver v
 0.5
Thread-Index: AQHZh82MnhOeQsvIm0id8ldZeegKaa9cpbSAgA36Z4A=
Date: Thu, 25 May 2023 07:09:34 +0000
Message-ID: <60ee0c015eabc83bc5a7ed89932e4ee8daf1c1e1.camel@mediatek.com>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
	 <20230515090551.1251389-2-jstephan@baylibre.com>
	 <ab9aa30f-82d7-1d14-5561-e19ff10af0b0@linaro.org>
	 <4yppinkucchwnwtnnpbqdn4bejmntjq3q6mx6es55f2pwyce3c@qdhdks47lpyt>
In-Reply-To: <4yppinkucchwnwtnnpbqdn4bejmntjq3q6mx6es55f2pwyce3c@qdhdks47lpyt>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SG2PR03MB5070:EE_|PUZPR03MB6157:EE_
x-ms-office365-filtering-correlation-id: 359da5f9-6837-4995-c85b-08db5ceefe5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uJvgbCHitnICWieLAzVQr3PVfzVvKw3zWEyEhYrmeDUcPdb3MpEsdXBVqkE+R127YZ95wNLu0iyy06MXg17NwY2qD7pkazhYObYho0k5/1vR7c7KKWAjwKuoE47BOcjwriBoJw6ZlOONc2EBlLwIT1P93e98TEfbJTH0C6BTSTCZAOOcvnQlWvBqN7J1He1+cfFCUbrqsB/EZDpfAY2hTyl8DUaiX0QM+gmhNuQZ4JWgKPGxg8x3c4q0Rz5j9ExB6enI3ue2Zh0XIERgbwbZO0hS73qBO8zczrH7r+7f5TxRQZpb33oTMqiHFX2CrRaLyq35BKFBZHKkGvlHcdKJ4ZTwynks2CkO25oiIPj/OPm5rgDZquVvkPVo8E3tpgDO5g7Pgp8kpT3HZH/QX4eVyU0XcIqNHe8A0QZ9paqoM4LPSh0a9+w4FOQ9hENWOVK/MZryeB0CW2NTs5tb5H1VeawUYD12g4m0fyLljrcKYjtVJ1Q760JIQnoTAQYKKewTYNr7wbHR3Ut/q2x5lQ+KQu2dVHgyu5Il4FNwSmflJPxvPCkWX7X+DIuTI8/9Rt1VKiHdpTOsth4g+KpSSGMUTUdi/lhE2egd7fMEKVzBFiq8ZgaGRDC+fubnQXBrONIHUGXcYwtFR36gFiwiCr/bhyM0V+Tq3hud4QOORxiZ1xE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR03MB5070.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(451199021)(6486002)(2906002)(71200400001)(53546011)(966005)(91956017)(76116006)(38070700005)(66556008)(54906003)(66446008)(66946007)(66476007)(110136005)(478600001)(8676002)(122000001)(38100700002)(85182001)(7416002)(316002)(5660300002)(86362001)(2616005)(36756003)(4326008)(41300700001)(6506007)(83380400001)(64756008)(8936002)(26005)(186003)(6512007)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2ZrMWtubHV4Znl5ajRxVkdhcHBzUS9NSkQzSkhuQ2RxMkpheXl4VjdqMEtl?=
 =?utf-8?B?QXdMVHdFL0E5MVlEME9ONFg1M2JuYzROd3g4SnNMU0RxcE1sMXhJRXlwUmFv?=
 =?utf-8?B?SDBaaS8zNm5QNmtTQ3VYZjNjYlVPWDkzWDkvY1RVZnJMWFJmeTc2NHVjcXB2?=
 =?utf-8?B?UnZsc3RBRkN1dS9WK2U0S0lrWGFvV0dORmg5NDI0UnhrdEtaOTVhM21oeWts?=
 =?utf-8?B?akpUeXF5OGw3WjF1TFNtSFVGNFp3dlhUbjU2a2FFRUx1a0RsTUJyMjdORnVD?=
 =?utf-8?B?WlJNb0RMZzZPc2lSUmZRNXF2cFQvL2wxYjAxZGQySEpMZGRTRUx5LzM2L3M5?=
 =?utf-8?B?MlZMbndtR2hCVjdDYmdsYXJLZzJBTVdjV2ZUbnhwVGNxVHlKUlNPZ0I1YmdH?=
 =?utf-8?B?Z2hRWWZtQjJlYkk1S2trSGhOYnFmS2hRbjB4eGhTU0FNWjU1NFNDbHAwcmpL?=
 =?utf-8?B?YTJJaEZvSHRrNFR5UWZITVc5NnZhYmgxdHVjWjFLV3VJK1ZCc2hUaWVNVkJl?=
 =?utf-8?B?Wityc0R5ZUwvc21Fck45d0tXZ2FlLzlzMktSejR6R21QdFAzcE9SZDhyRWZm?=
 =?utf-8?B?VWtibS91TVowTWxlV0NFVjV3SVZrdmRINk54dVZjUkI0OTV3dFlTVTVqMFZ4?=
 =?utf-8?B?SkVLZk9zVUI0V2Yzb2NBc1ducjRJQldXdlRHK3VPc2R2NjZBcXVTMTVZaC9i?=
 =?utf-8?B?aTBVbUpoN0M5QXJRUkMxQkZlT3dURmVLYS9iQ0Z0T1hsQklWSXVNMmNZUHJv?=
 =?utf-8?B?MXF3b05vOFg2V3VBYU1JdlAycXJpRk5jVGo0eDNIWU1yNXZ6R2wwVmd6T3RG?=
 =?utf-8?B?TEdBazVQc0xrSFJPc0YyS0JPYWhvdHBHK0QyZjFPMXc3VVh1Qm9xdlhPRFFm?=
 =?utf-8?B?WS9iNVVzdlJEK2NtRElpc3czbitSQUx2M1dUcTdHZ0tENnh1bTZ5TGhLY3Rq?=
 =?utf-8?B?SVdTYktXR2JJbklUbkt6UlRMN2k2SEtZbzRpWlhtOG9oZWxhWS9lQllVZXNE?=
 =?utf-8?B?WmJ4ME9GYjYrNVA5WjdwQUp5ZGdkS3NUeHpPVFpEdVVvdDBLUFQ5UFB3eGFp?=
 =?utf-8?B?aURuRjk4SWxMcEN6L3p3czVTNnVMZ3VxQ2VmLzI2d0hBd0dLb1NmZlNRejh3?=
 =?utf-8?B?RVpLeGIwNXoxelBhczB5UU9GbVFoMTA1UUplYTY4K2Vvc1RpL3NzKzZrT3VU?=
 =?utf-8?B?dWRmYkdEbnlZK0tVazEzMzRxS2tEWHIvU3RzTnZsYWE5MTlreW1qUDRnOWtD?=
 =?utf-8?B?bGpsbFJYMzZUcXlQUnVDdVVJOVVjb0JkbDh1UmxWYVpDcXFOYXpENTFhaXJu?=
 =?utf-8?B?bVJjOGh5aXNRVWpPOER4b0Q2M3lFZmZoNTdvMDd0Z1RWc04wZDdQbGt4N1lz?=
 =?utf-8?B?bENtbENIeE5lTStHL0tONm1yVlUxajBoQm9lN2owQWFnWUI5c293UjcxUkZY?=
 =?utf-8?B?UHJFaHdPYkxxU2lkajZUSTI5bXhrNWRZTFAxdy8wclZ0UmRiTXJHUzlzM2pG?=
 =?utf-8?B?SlA4ampFbW54RndJTGE2RElsRlI2T0pXSGpVbzR6dkk1UzlqUit1eDhVRHU1?=
 =?utf-8?B?NEk0MkpDbXRvN3FJZ1pDZmdmYXpEZFRrUG8veU1NQVRDR25BdURoelN1MjJW?=
 =?utf-8?B?ejQ5MzF4YWpJYmVMMW1pZUlJbFQ1U3FWelpCcmF5b3JWTUE2YjYyMWZBQStT?=
 =?utf-8?B?S3FwZHVBQ3lxTkdOekloRXVVd2U2WFBWZmdBd0dOdUw2bDljRXNIRWJ2NzZq?=
 =?utf-8?B?cmZPU2ZEaDB6bTVzVnRmYTZlQ3MvQkhlbGVKNXdWczdVZHVTRDVHREJpRzA3?=
 =?utf-8?B?RDBGTjNFazhHVUcyU0o2VjQ3ZUZnYWdVNVU2ZVRGTUc4U3ptUmpzeVA1d3pp?=
 =?utf-8?B?VjA5REE3M2I4d2hNbTlJK1BhM1ExTG80OG5vVnVmTTVuamNqMkhPNWZDNTlt?=
 =?utf-8?B?ODErenhYeFdiN2VhcC9BbHJDRitDK3dJZDJES3pqWkVma3RuOWV3aGt0QUha?=
 =?utf-8?B?TUc0clhCVnhHb0pVQXprYTdhNXpJbUFKejJ3dFpUb2FTYlB4UWswWitWOSsx?=
 =?utf-8?B?SklacGg3cDJhdFNiWTV4MlVydngydFpLRUx0UUJuUm1uOGY0dXR6eTZCQWpE?=
 =?utf-8?B?d2JnaG5oN0laVWtvQTV6VlZZSndEdU1IMGUzcVNiREYwZWdVSDZJa3g4TExh?=
 =?utf-8?B?NUE9PQ==?=
Content-ID: <43448A73028D2F47A02532F713E68540@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR03MB5070.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 359da5f9-6837-4995-c85b-08db5ceefe5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2023 07:09:34.2598
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egH5JbyXMMgNyASk1Dc7PTETEfwP70AB3fYSu+dndfT34PayAflP7WZIMPnyp5SdhcMwuJZLVN8EZ6sdliiVjE0rku7pLyICD83eM1l/HSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB6157
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_001008_001044_66C56507 
X-CRM114-Status: GOOD (  28.27  )
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

On Tue, 2023-05-16 at 11:41 +0200, Julien Stephan wrote:
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
> 
> 
> On Tue, May 16, 2023 at 10:07:47AM +0200, Krzysztof Kozlowski wrote:
> > On 15/05/2023 11:05, Julien Stephan wrote:
> > > From: Florian Sylvestre <fsylvestre@baylibre.com>
> > > 
> > > This adds the bindings, for the MIPI CD-PHY module v 0.5 embedded
> > > in
> > > some Mediatek soc, such as the mt8365
> > > 
> > > Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> > > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > 
> > What are the changes? IOW: changelog here or in cover letter.
> > 
> 
> Hi Krzysztof,
> I added a changelog in the cover letter, but I will try to be more
> descritpive next time. Changes from v1 are mainly style issues fixed
> (mostly from your first review)
> 
> > Subject: you have some multiple spaces.
> > 
> > Subject: drop driver. Bindings are not for drivers.
> > 
> > > ---
> > >  .../phy/mediatek,phy-mipi-csi-0-5.yaml        | 62
> > > +++++++++++++++++++
> > >  MAINTAINERS                                   |  6 ++
> > >  2 files changed, 68 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-
> > > 5.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/mediatek,phy-
> > > mipi-csi-0-5.yaml
> > > b/Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-
> > > 5.yaml
> > > new file mode 100644
> > > index 000000000000..5aa8c0b41cdf
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/mediatek,phy-mipi-
> > > csi-0-5.yaml
> > > @@ -0,0 +1,62 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-Only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: 
> > > https://urldefense.com/v3/__http://devicetree.org/schemas/phy/mediatek,phy-mipi-csi-0-5.yaml*__;Iw!!CTRNKA9wMg0ARbw!kUABjbQO6-_jrANKiqoLPxZkh_0LAplQwlgCG9lhmCKm2ec8pCItYUB3-zQ2PGBnlAcgsBhwrOgi5qeilrddZ5s$
> > > +$schema: 
> > > https://urldefense.com/v3/__http://devicetree.org/meta-schemas/core.yaml*__;Iw!!CTRNKA9wMg0ARbw!kUABjbQO6-_jrANKiqoLPxZkh_0LAplQwlgCG9lhmCKm2ec8pCItYUB3-zQ2PGBnlAcgsBhwrOgi5qeiABoSu-M$
> > > +
> > > +title: Mediatek Sensor Interface MIPI CSI CD-PHY
> > > +
> > > +maintainers:
> > > +  - Julien Stephan <jstephan@baylibre.com>
> > > +  - Andy Hsieh <andy.hsieh@mediatek.com>
> > > +
> > > +description:
> > > +  The SENINF CD-PHY is a set of CD-PHY connected to the SENINF
> > > CSI-2
> > > +  receivers. The number of PHYs depends on the SoC model.
> > > +  Depending on the soc model, each PHYs can support CDPHY or
> > > DPHY only
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - mediatek,phy-mipi-csi-0-5
> > 
> > SoC based compatibles. 0-5 is odd.
> > 
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#phy-cells':
> > > +    const: 0
> > > +
> > > +  mediatek,is_cdphy:
> > 
> > No underscores in node names.
> > 
> > > +    description:
> > > +      Specify if the current phy support CDPHY configuration
> > 
> > Why this cannot be implied from compatible? Add specific
> > compatibles.
> > 
> > 
> 
> This cannot be implied by compatible because the number of phys
> depends
> on the soc and each phy can be either D-PHY only or CD-PHY capable.
> For example mt8365 has 2 phy: CSI0 and CSI1. CSI1 is DPHY only and
> CSI0 is CD-PHY

Do the user need to know which type phy he will use?

> 
> Regards,
> Julien
> > > +    type: boolean
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - '#phy-cells'
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    soc {
> > > +      #address-cells = <2>;
> > > +      #size-cells = <2>;
> > > +
> > > +      mipi_rx_csi0: mipi_rx_csi0@11c10000 {
> > 
> > No underscores in node names. How this is v2?
> > 
> > > +        compatible = "mediatek,phy-mipi-csi-0-5";
> > > +        reg = <0 0x11C10000 0 0x2000>;
> > > +        status = "okay";
> > 
> > Drop
> > 
> > > +        mediatek,is_cdphy;
> > > +        #phy-cells = <0>;
> > > +      };
> > > +
> > > +      mipi_rx_csi1: mipi-rx-csi1@11c12000 {
> > > +        compatible = "mediatek,phy-mipi-csi-0-5";
> > > +        reg = <0 0x11C12000 0 0x2000>;
> > > +        status = "disabled";
> > 
> > ???
> > 
> > 
> > Best regards,
> > Krzysztof
> > 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
