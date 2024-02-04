Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F616C4828F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Feb 2024 06:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwosvp0tXMatezyANXYs5Z1Mh+gxGcLJfhIuKUtoAwM=; b=wVqpVJJxjbyogi
	zTg7198LzNoqmh8iNOMP4QYE+CQI35/Q8rzKuNIkeK4aunOEGDlfBsZOgpL1Ok5B3lLdGkz/ynHvr
	fwITNBjuVXkvPkAkm5cF3D7R4+R/0Z4R5Lou/D6hPD5GbzEbt9WLGpqG8+dYASAs6cd2xAE9hXlz0
	doZs67tADHm0yo1lJjgcBfyILQmUx9et4FdPq9gwAIqs5yJynW3ngu0526ciDooTysgMDJmvwde5k
	w9edvtnsAGlUwCjTG6CjqlBHroaBO/DAHlDVXFc/lBuLu6rENABMrGeiAWihK7bmp4dtG8MsrIS7j
	zUbbf9NTRYVpNhUWtXoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWW9u-00000000FMU-39kS;
	Sun, 04 Feb 2024 06:39:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWW9r-00000000FLA-0v7T;
	Sun, 04 Feb 2024 06:39:16 +0000
X-UUID: 19e49676c32811ee9a263b4415211400-20240203
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From; bh=H35Y12w3wLcCbjKxz9aatD7hrYGuc8Rbdn3lhIjKO7w=;
	b=qktKAvaKFLiBSgS1UJbSfL4kGSboDt7f15WczV03OQBJOg/LldctPzOg5grBF7C3JWNUFWCvEgs8vE1B05oCcYJspUMUlYlAEqoIbfXNP3a/h205w2FtDEUmMMfugLXPbwyxzq/UusTctAXFDsU46zCRvdXES4mOB1f6w5zGlbI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.36,REQID:a6688600-efd9-4108-b9bd-473141680e2b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6e16cf4,CLOUDID:74f77cfe-c16b-4159-a099-3b9d0558e447,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 19e49676c32811ee9a263b4415211400-20240203
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 108136234; Sat, 03 Feb 2024 23:39:09 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 4 Feb 2024 14:29:05 +0800
Received: from SINPR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 4 Feb 2024 14:29:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nu3/cJeC4kMcEAQROBcrfpyNKFsimPUOT6ofboQpULRsQVYGUkQtBySU/IYT5JrZk6Wei6BRSQuePlK+56Vahq7nD0SDv6eANkKv6nDcYQq0/rDOAy2DTklq6ajSZ7+LUT1mSEU7ZiSlG4LLnKZrXi9/g3mGaLTqsTy5QxTYa4goM9U0+l+6mnfcPckvqBQzWsqy2lKsks7lSA+W8c6YAplAFE71dVVQygLgURS6EKkl967Gi7dtxTAdwvOrsybmeeAOdhp6x2UKn9hHq26oS0gMJ2zXGrbBYEcDjmXrSt2iRmL9CxA0jpj09/5amOtHBaH9ujIgtXddET//HI6B8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H35Y12w3wLcCbjKxz9aatD7hrYGuc8Rbdn3lhIjKO7w=;
 b=e0d5r+/3oqTj58TtSCELf2V/S0XgjWLY0me1es4lWyVtAms+9Th8w01no0wi3u8G4vvNT1n/CwcrjpDx5OIsu8np+1kJGosXwqP+i2LFkxZvk0rkZ+5cHb2krM1VVEszrAyfdmqe/Rt9nz6IDmkxn6lOVKyOS6CobNk7KLC+Lc8jppVlnfP99LnLDg37ERZtRitfWaW20DLF7ltRXLjwMOKUn2yD9DilRlq1SGorkfDKbOW5g4P/Q8VtVB40Z8XqHwXcmjw7NLbrZGVTsUDziIqkjUtiFb5ZbZJlVpqP7SRJNSwsuMKvNTDVcmS0NlZQrsk59c6oQ04VN6lJYpYH8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H35Y12w3wLcCbjKxz9aatD7hrYGuc8Rbdn3lhIjKO7w=;
 b=JpFHQ4qEyo6nObHIqfRaS53Qkld6uzNxi9HhuNXVrOFjXE2QRzM3Er0tjePVogVGI+N/hhgS16QjOSp8cRWvKNVo0+KOTezybeNF8t1A6igQEFHrXR1eMkuCba27sDK3u8Xsvac6D386gPJw5CDmK2WpSLSgrVFrPWqJNb8R6kQ=
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com (2603:1096:400:33c::6)
 by SEZPR03MB7945.apcprd03.prod.outlook.com (2603:1096:101:189::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.33; Sun, 4 Feb
 2024 06:29:00 +0000
Received: from TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::8146:6419:98ce:83a2]) by TYZPR03MB7153.apcprd03.prod.outlook.com
 ([fe80::8146:6419:98ce:83a2%6]) with mapi id 15.20.7249.027; Sun, 4 Feb 2024
 06:29:00 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2t5TGFrZSBIdWFuZyAo6buD5ZWf5r6kKQ==?=
	<SkyLake.Huang@mediatek.com>, "kishon@kernel.org" <kishon@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	=?utf-8?B?QmMtYm9jdW4gQ2hlbiAo6Zmz5p+P5p2RKQ==?=
	<bc-bocun.chen@mediatek.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "dqfext@gmail.com"
	<dqfext@gmail.com>, "daniel@makrotopia.org" <daniel@makrotopia.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 2/2] phy: add driver for MediaTek XFI T-PHY
Thread-Topic: [PATCH 2/2] phy: add driver for MediaTek XFI T-PHY
Thread-Index: AQHaVVl3ikXsK28TjkKHMcjn1/jUObD5vCsA
Date: Sun, 4 Feb 2024 06:29:00 +0000
Message-ID: <a2641a62703bcd33115689544001cdbd26e84bbb.camel@mediatek.com>
References: <702afb0c1246d95c90b22e57105304028bdd3083.1706823233.git.daniel@makrotopia.org>
	 <dd6b40ea1f7f8459a9a2cfe7fa60c1108332ade6.1706823233.git.daniel@makrotopia.org>
In-Reply-To: <dd6b40ea1f7f8459a9a2cfe7fa60c1108332ade6.1706823233.git.daniel@makrotopia.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7153:EE_|SEZPR03MB7945:EE_
x-ms-office365-filtering-correlation-id: 36737dc4-f075-4586-d9b6-08dc254a933f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GQs8DeeY5Qq8pU2o1Edt+6k94SxYyc/nb9LRdDRuPbTBgF464sA44T7mJQdIEKPXw6dXAUUK6FuMCDKOwkn2aBw01pyMCE2owcIXvef0sHQnZB8XgdQBtDEzGFBbZs30RsbzzH1pmGGCe/Kg0/vWtvh2KF+YFxsB6X5Ph2WW6cBnyjkmcaSLe/PLt8j2LEhtlkMarusa0ncSTPLEZojPMJi0kAJiHTKj22aEAdAtZgk96hWu2ZBo5pcpC2Ae+A9/S6QebWIBygqbKchQSswlMps4oSsG4yAXlfnqroPBYB6vULV1N6yRyGbrxYuaU7YMEmZ7iPqxBctV6Irqkp9FyapFUX9S4uRIv16ZLtk/H/5MBL2qjdSSzigFtPjgxRgJyy1Bclu9jW7SRYw4momQ+eeH9eu9dXK3bWlTnYGGG0d8uyiPLiDDFyVWPGyp2Vj3xsvYHiVZcFmOSaYriP6dCPI2lwOvHtJv2rfOSNvorJKT+AUIVrb9c33QULrHx8llk/B471eb8odITi0lLafTVt8y5bp3NV1NFnrPvohLcpYpfu30K4EZZ1O6hmrIyVkA43tsMvBoLYOYo4SSQ45W0NScDSSecj2IFba/jmyq+q2AtL1QMG0PsU76EPlNBGBY3m3pSEeYdWDEL6O01Ry7riTuEqoknWM8PC+yznK/MuI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7153.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(230273577357003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38070700009)(478600001)(921011)(71200400001)(6506007)(6486002)(122000001)(86362001)(38100700002)(41300700001)(30864003)(5660300002)(2906002)(7416002)(66556008)(66476007)(66446008)(64756008)(66946007)(76116006)(2616005)(316002)(110136005)(36756003)(85182001)(6512007)(8936002)(8676002)(83380400001)(26005)(99106002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZSsrZHIzeE1QRmpYMDI0WFZrbGpjOVhvZFFOVE5BQjJ2WWJvaE12MDM4WUow?=
 =?utf-8?B?czJteG05bW44b0NyZFF0cExOdkU1TTR1TmtQVnJjZEc1SGFtNHhqaGZIbmlo?=
 =?utf-8?B?TGZ2cW9BSG9ZYUxwcUNZbjhMbGZsZkFZVTF4VElpVkkreE5Qang5UXd5Ym1M?=
 =?utf-8?B?UGlza3pQc3FBTXVNTUR1WXFUeVpDTGFNNDJBcmlUTHlteDB2OGJGbjZDQkRo?=
 =?utf-8?B?MCsxTllBWFpoQmIrSk9XaG1ISVhQN1ZhWnhhd08yOXQrMDBSdXpXaE1jV0xS?=
 =?utf-8?B?MmNaNlQzdWM4eEdHTGlwKy9QalE4YmtFZURCcHpyb3NTaDdmQmVQaW9NSi90?=
 =?utf-8?B?eS9lamdKK2NVZVIwOHJnT2hmVWRIaFYrRG5XZVhVVTgrbzRhQURYOENJM0p2?=
 =?utf-8?B?dlpJL2VDa2pYQU0yMFh2cDZEbjIwem81Wk9Va2RnSklQV2Z0S1NQUXN4T2Qr?=
 =?utf-8?B?UytwSHhNQ2JEd2V2UTNvYVA4R2NjUWN1ODZXY3NrRmI4OFJEWU9xaEE0N1B0?=
 =?utf-8?B?NEpNRnNYYURXek1ZMXFYd1AyZjNGMlBXNkRFZ3dlRVBiN2NVMnYyTlI4WVRE?=
 =?utf-8?B?ZUhLZTBvOWxXZVdBWWIvemtDSEY1TlBRZEYxUGNUdTZ2cGl2WlNzbzVEY1hM?=
 =?utf-8?B?RmhRTU5PSnlOVnJUcHI0eGlIQXBYTWFENzJvU1BaN1pJY0tVOXB6SW5LQ2U5?=
 =?utf-8?B?RHRScThKc25QK0poUTNFdmg2RzdCSGhQWEVtRmM1YnhVeW80OFQzQWtuQVJ4?=
 =?utf-8?B?cURsUUQ2VDFrSVI0RjRHSHBPS2o3NFM2L1YwSGxRa1BQaFRjdDRDam15L25r?=
 =?utf-8?B?M0NJSjlmWFVDTHhPbCtlQThnaVk1STA3VWRyaUxjbEJYOC9NZndQOCtmT2x1?=
 =?utf-8?B?eCtSZWo2eTR0OVpkRGoxQ3dqdjhZQm93QmcrVkg5RzF0V09DZDAvU2k0TzJi?=
 =?utf-8?B?WGtWaWdCcjg1S1BwSUc4dGg1eFBxd2lLa0wyVjJhK1VjN0hlRUVlUHVrU2xN?=
 =?utf-8?B?d2VxRDFaR3dCZ24xREY1SGx0NkxlRXd0aTVmcS8rWFdQRVdCam1VL0NvanNa?=
 =?utf-8?B?cUJYQ0FPQUJqZGM5L2dWa1luSVBERzhYb1psaWY4Z0t6akdxTjFxQ3kxY0hM?=
 =?utf-8?B?elhMRkxqL253S2dmc3VxZFRhL09hKzlRTWlFOUxxbjJIWk1UbmIvOTQ4cHZY?=
 =?utf-8?B?Y1VqSWJEdTZCZmwyT05mcDFwNXpYcmQ1NnMzZlBlWmtSR3BLb1h6Sm1RY0N5?=
 =?utf-8?B?WGVwZUpLT096NW1DQSszcHhaWmxma2VDYUEwL1NTWWZxY1k1VXdEWkEwUTlv?=
 =?utf-8?B?YU5TQmN0THR6ODlONnEyUGFZSnUvd2R4Yzc5Z2JCc0EvUElULzEvYk1GWlVq?=
 =?utf-8?B?NVhoVUNUL2tzanliT1IxV0ZRUGF3Vk9aZnN5c2xKSkFmZjZVRlA1eWI0U2FX?=
 =?utf-8?B?RkNOczgyaUZHTEluZEpQNFpTWHNEbGtRa0ZycFJNaTRGQnVNWFpyYmh3NlFI?=
 =?utf-8?B?ckdQZzBUVTlJMkFXQjIxOE9YZGxLV3ZmSkFpbXhxTjcwcEJwQkJpUDdkQnVM?=
 =?utf-8?B?c25ZUE9XQ3dtOFpjOUxLeUhoZTFFbEVkWis4Z1VyWm90OG14dW5XQmhHZ2Zz?=
 =?utf-8?B?SFJVYVlERnlGTUdwb3lLajgrbUhiSk1WTFF4a1JleFU2Z3IzNXBXZEFsSWFj?=
 =?utf-8?B?WXVtdU1sdTZrR0RYbUI0cEVmS05uL1FuZ0tUYkQ1Tm8va1pYNHRJVlIrVzVz?=
 =?utf-8?B?NUppR2VDVWE1aEZ3NkZpT2htNGxhVkp1Ty9TYXFDVmVjb3hyemF3U1IrdzB0?=
 =?utf-8?B?TS9zRTNyYXByUmJZdVAxZDVKWGY0REN4blhkMitJbk91eTBCd3lUT0JmOFl1?=
 =?utf-8?B?UlJJek9JL0JDZ21GZmxsTEtyTE1Tb2RUd0EwdHZRU0wyWXN4YjNwS1hFS0hk?=
 =?utf-8?B?U3VnNUxpWkx6SkNnaFUrd2xzUXlKbGxlYnl0Q3FzMkp3clpnenRJOUluWFl0?=
 =?utf-8?B?WThZSXFHeEFScURpRUN2aHV1cEUydDJJa3VsaTJGYUxVZmd4Q3Zaby96WlB6?=
 =?utf-8?B?ekZ2U0w3M1ZESFEvZkxFN3ZTOGNrQjRybnN4VEVZWGpNWVBEVmdMMC9aMUJp?=
 =?utf-8?B?a2hDemJaekZVMDV0bkVsS09sYW1TSFg0STdGemxOUHpwM0t4akpobURCMnBs?=
 =?utf-8?B?aHc9PQ==?=
Content-ID: <C23D001FE477A44996B765C58E17C29B@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7153.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36737dc4-f075-4586-d9b6-08dc254a933f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2024 06:29:00.7559
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7nBGS4H47Q/PgEUv1j81/EU0lW2ubMRMQB0ufKmG8P8WnoKFJEIPPMCUNnaPyubDmFaWiM+Nuo3fTUJ0xPMnHCnvGxPuJwEfTKiPQDDii5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7945
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_223915_290166_8F634DC2 
X-CRM114-Status: GOOD (  24.28  )
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

On Thu, 2024-02-01 at 21:53 +0000, Daniel Golle wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  Add driver for MediaTek's XFI T-PHY, 10 Gigabit/s Ethernet SerDes
> PHY
> which can be found in the MT7988 SoC.
> 
> The PHY can operates only in PHY_MODE_ETHERNET, the submode is one of
> PHY_INTERFACE_MODE_* corresponding to the supported modes:
> 
>  * USXGMII                 \
>  * 10GBase-R                }- USXGMII PCS - XGDM  \
>  * 5GBase-R                /                        \
>                                                      }- Ethernet MAC
>  * 2500Base-X              \                        /
>  * 1000Base-X               }- LynxI PCS - GDM     /
>  * Cisco SGMII (MAC side)  /
> 
> In order to work-around a performance issue present on the first of
> two XFI T-PHYs present in MT7988, special tuning is applied which can
> be
> selected by adding the 'mediatek,usxgmii-performance-errata' property
> to
> the device tree node.
> 
> There is no documentation for most registers used for the
> analog/tuning part, however, most of the registers have been
> partially
> reverse-engineered from MediaTek's SDK implementation (an opaque
> sequence of 32-bit register writes) and descriptions for all relevant
> digital registers and bits such as resets and muxes have been
> supplied
> by MediaTek.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  MAINTAINERS                             |   1 +
>  drivers/phy/mediatek/Kconfig            |  12 +
>  drivers/phy/mediatek/Makefile           |   1 +
>  drivers/phy/mediatek/phy-mtk-xfi-tphy.c | 392
> ++++++++++++++++++++++++
>  4 files changed, 406 insertions(+)
>  create mode 100644 drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 52769631bdb1a..52e4192470bd9 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13715,6 +13715,7 @@ L:netdev@vger.kernel.org
>  S:Maintained
>  F:drivers/net/phy/mediatek-ge-soc.c
>  F:drivers/net/phy/mediatek-ge.c
> +F:drivers/phy/mediatek/phy-mtk-xfi-tphy.c
>  
>  MEDIATEK I2C CONTROLLER DRIVER
>  M:Qii Wang <qii.wang@mediatek.com>
> diff --git a/drivers/phy/mediatek/Kconfig
> b/drivers/phy/mediatek/Kconfig
> index 3125ecb5d119f..5161d130c7f8b 100644
> --- a/drivers/phy/mediatek/Kconfig
> +++ b/drivers/phy/mediatek/Kconfig
> @@ -13,6 +13,18 @@ config PHY_MTK_PCIE
>    callback for PCIe GEN3 port, it supports software efuse
>    initialization.
>  
> +config PHY_MTK_XFI_TPHY
> +tristate "MediaTek XFI T-PHY Driver"
> +depends on ARCH_MEDIATEK || COMPILE_TEST
> +depends on OF && OF_ADDRESS
> +depends on HAS_IOMEM
> +select GENERIC_PHY
> +help
> +  Say 'Y' here to add support for MediaTek XFI T-PHY driver.
> +  The driver provides access to the Ethernet SerDes T-PHY supporting
> +  1GE and 2.5GE modes via the LynxI PCS, and 5GE and 10GE modes
> +  via the USXGMII PCS found in MediaTek SoCs with 10G Ethernet.
> +
>  config PHY_MTK_TPHY
>  tristate "MediaTek T-PHY Driver"
>  depends on ARCH_MEDIATEK || COMPILE_TEST
> diff --git a/drivers/phy/mediatek/Makefile
> b/drivers/phy/mediatek/Makefile
> index c9a50395533eb..fa7217178e7f4 100644
> --- a/drivers/phy/mediatek/Makefile
> +++ b/drivers/phy/mediatek/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_MTK_PCIE)+= phy-mtk-pcie.o
>  obj-$(CONFIG_PHY_MTK_TPHY)+= phy-mtk-tphy.o
>  obj-$(CONFIG_PHY_MTK_UFS)+= phy-mtk-ufs.o
>  obj-$(CONFIG_PHY_MTK_XSPHY)+= phy-mtk-xsphy.o
> +obj-$(CONFIG_PHY_MTK_XFI_TPHY)+= phy-mtk-xfi-tphy.o
>  
>  phy-mtk-hdmi-drv-y:= phy-mtk-hdmi.o
>  phy-mtk-hdmi-drv-y+= phy-mtk-hdmi-mt2701.o
> diff --git a/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> new file mode 100644
> index 0000000000000..d50e6320860e5
> --- /dev/null
> +++ b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
> @@ -0,0 +1,392 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* MediaTek 10GE SerDes PHY driver
> + *
> + * Copyright (c) 2024 Daniel Golle <daniel@makrotopia.org>
> + *                    Bc-bocun Chen <bc-bocun.chen@mediatek.com>
> + * based on mtk_usxgmii.c found in MediaTek's SDK released under
> GPL-2.0
> + * Copyright (c) 2022 MediaTek Inc.
> + * Author: Henry Yen <henry.yen@mediatek.com>
> + */
> +
> +#include <linux/module.h>
> +#include <linux/device.h>
> +#include <linux/platform_device.h>
> +#include <linux/of.h>
> +#include <linux/io.h>
> +#include <linux/clk.h>
> +#include <linux/reset.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
> +
> +#define MTK_XFI_TPHY_NUM_CLOCKS2
> +
> +#define REG_DIG_GLB_700x0070
> +#define  XTP_PCS_RX_EQ_IN_PROGRESS(x)FIELD_PREP(GENMASK(25, 24),
> (x))
> +#define  XTP_PCS_MODE_MASKGENMASK(17, 16)
> +#define  XTP_PCS_MODE(x)FIELD_PREP(GENMASK(17, 16), (x))
> +#define  XTP_PCS_RST_BBIT(15)
> +#define  XTP_FRC_PCS_RST_BBIT(14)
> +#define  XTP_PCS_PWD_SYNC_MASKGENMASK(13, 12)
> +#define  XTP_PCS_PWD_SYNC(x)FIELD_PREP(XTP_PCS_PWD_SYNC_MASK, (x))
> +#define  XTP_PCS_PWD_ASYNC_MASKGENMASK(11, 10)
> +#define  XTP_PCS_PWD_ASYNC(x)FIELD_PREP(XTP_PCS_PWD_ASYNC_MASK, (x))
> +#define  XTP_FRC_PCS_PWD_ASYNCBIT(8)
> +#define  XTP_PCS_UPDTBIT(4)
> +#define  XTP_PCS_IN_FR_RGBIT(0)
> +
> +#define REG_DIG_GLB_F40x00f4
> +#define  XFI_DPHY_PCS_SELBIT(0)
> +#define   XFI_DPHY_PCS_SEL_SGMIIFIELD_PREP(XFI_DPHY_PCS_SEL, 1)
> +#define   XFI_DPHY_PCS_SEL_USXGMIIFIELD_PREP(XFI_DPHY_PCS_SEL, 0)
> +#define  XFI_DPHY_AD_SGDT_FRC_ENBIT(5)
> +
> +#define REG_DIG_LN_TRX_400x3040
> +#define  XTP_LN_FRC_TX_DATA_ENBIT(29)
> +#define  XTP_LN_TX_DATA_ENBIT(28)
> +
> +#define REG_DIG_LN_TRX_B00x30b0
> +#define  XTP_LN_FRC_TX_MACCK_ENBIT(5)
> +#define  XTP_LN_TX_MACCK_ENBIT(4)
> +
> +#define REG_ANA_GLB_D00x90d0
> +#define  XTP_GLB_USXGMII_SEL_MASKGENMASK(3, 1)
> +#define  XTP_GLB_USXGMII_SEL(x)FIELD_PREP(GENMASK(3, 1), (x))
> +#define  XTP_GLB_USXGMII_ENBIT(0)
> +
> +struct mtk_xfi_tphy {
> +void __iomem*base;
> +struct device*dev;
> +struct reset_control*reset;
> +struct clk_bulk_dataclocks[MTK_XFI_TPHY_NUM_CLOCKS];
> +boolda_war;
> +};
> +
> +static void mtk_xfi_tphy_write(struct mtk_xfi_tphy *xfi_tphy, u16
> reg,
> +       u32 value)
> +{
> +iowrite32(value, xfi_tphy->base + reg);
> +}
> +
> +static void mtk_xfi_tphy_rmw(struct mtk_xfi_tphy *xfi_tphy, u16 reg,
> +     u32 clr, u32 set)
> +{
> +u32 val;
> +
> +val = ioread32(xfi_tphy->base + reg);
> +val &= ~clr;
> +val |= set;
> +iowrite32(val, xfi_tphy->base + reg);
> +}
> +
> +static void mtk_xfi_tphy_set(struct mtk_xfi_tphy *xfi_tphy, u16 reg,
> +     u32 set)
> +{
> +mtk_xfi_tphy_rmw(xfi_tphy, reg, 0, set);
> +}
> +
> +static void mtk_xfi_tphy_clear(struct mtk_xfi_tphy *xfi_tphy, u16
> reg,
> +       u32 clr)
> +{
> +mtk_xfi_tphy_rmw(xfi_tphy, reg, clr, 0);
> +}

Helpers defined in phy-mtk-io.h can be used instead?

> +
> +static void mtk_xfi_tphy_setup(struct mtk_xfi_tphy *xfi_tphy,
> +       phy_interface_t interface)
> +{
> +bool is_2p5g = (interface == PHY_INTERFACE_MODE_2500BASEX);
> +bool is_1g = (interface == PHY_INTERFACE_MODE_1000BASEX ||
> +      interface == PHY_INTERFACE_MODE_SGMII);
> +bool is_10g = (interface == PHY_INTERFACE_MODE_10GBASER ||
> +       interface == PHY_INTERFACE_MODE_USXGMII);
> +bool is_5g = (interface == PHY_INTERFACE_MODE_5GBASER);
> +bool is_xgmii = (is_10g || is_5g);
> +
> +dev_dbg(xfi_tphy->dev, "setting up for mode %s\n",
> phy_modes(interface));
> +
> +/* Setup PLL setting */
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x9024, 0x100000, is_10g ? 0x0 :
> 0x100000);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x2020, 0x202000, is_5g ? 0x202000 :
> 0x0);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x2030, 0x500, is_1g ? 0x0 : 0x500);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x2034, 0xa00, is_1g ? 0x0 : 0xa00);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x2040, 0x340000, is_1g ? 0x200000 :
> +     0x140000);
> +
> +/* Setup RXFE BW setting */
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x50f0, 0xc10, is_1g ? 0x410 :
> +  is_5g ? 0x800 : 0x400);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x50e0, 0x4000, is_5g ? 0x0 : 0x4000);
> +
> +/* Setup RX CDR setting */
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x506c, 0x30000, is_5g ? 0x0 : 0x30000);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x5070, 0x670000, is_5g ? 0x620000 :
> 0x50000);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x5074, 0x180000, is_5g ? 0x180000 :
> 0x0);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x5078, 0xf000400, is_5g ? 0x8000000 :
> +      0x7000400);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x507c, 0x5000500, is_5g ? 0x4000400 :
> +      0x1000100);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x5080, 0x1410, is_1g ? 0x400 :
> +   is_5g ? 0x1010 : 0x0);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x5084, 0x30300, is_1g ? 0x30300 :
> +    is_5g ? 0x30100 :
> +    0x100);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x5088, 0x60200, is_1g ? 0x20200 :
> + is_5g ? 0x40000 :
> + 0x20000);
> +
> +/* Setting RXFE adaptation range setting */
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x50e4, 0xc0000, is_5g ? 0x0 : 0xc0000);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x50e8, 0x40000, is_5g ? 0x0 : 0x40000);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x50ec, 0xa00, is_1g ? 0x200 : 0x800);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x50a8, 0xee0000, is_5g ? 0x800000 :
> +     0x6e0000);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x6004, 0x190000, is_5g ? 0x0 :
> 0x190000);
> +if (is_10g)
> +mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x01423342);
> +else if (is_5g)
> +mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x00a132a1);
> +else if (is_2p5g)
> +mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x009c329c);
> +else
> +mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x00fa32fa);
Still have many magic number.

> +
> +/* Force SGDT_OUT off and select PCS */
> +mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_F4,
> + XFI_DPHY_AD_SGDT_FRC_EN | XFI_DPHY_PCS_SEL,
> + XFI_DPHY_AD_SGDT_FRC_EN |
> + (is_xgmii ? XFI_DPHY_PCS_SEL_USXGMII :
> +     XFI_DPHY_PCS_SEL_SGMII));
> +
> +
> +/* Force GLB_CKDET_OUT */
> +mtk_xfi_tphy_set(xfi_tphy, 0x0030, 0xc00);
> +
> +/* Force AEQ on */
> +mtk_xfi_tphy_write(xfi_tphy, REG_DIG_GLB_70,
> +   XTP_PCS_RX_EQ_IN_PROGRESS(2) |
> +   XTP_PCS_PWD_SYNC(2) |
> +   XTP_PCS_PWD_ASYNC(2));
> +
> +usleep_range(1, 5);
> +
> +/* Setup TX DA default value */
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x30b0, 0x30, 0x20);
> +mtk_xfi_tphy_write(xfi_tphy, 0x3028, 0x00008a01);
> +mtk_xfi_tphy_write(xfi_tphy, 0x302c, 0x0000a884);
> +mtk_xfi_tphy_write(xfi_tphy, 0x3024, 0x00083002);
> +
> +/* Setup RG default value */
> +if (is_xgmii) {
> +mtk_xfi_tphy_write(xfi_tphy, 0x3010, 0x00022220);
> +mtk_xfi_tphy_write(xfi_tphy, 0x5064, 0x0f020a01);
> +mtk_xfi_tphy_write(xfi_tphy, 0x50b4, 0x06100600);
> +if (interface == PHY_INTERFACE_MODE_USXGMII)
> +mtk_xfi_tphy_write(xfi_tphy, 0x3048, 0x40704000);
> +else
> +mtk_xfi_tphy_write(xfi_tphy, 0x3048, 0x47684100);
> +} else {
> +mtk_xfi_tphy_write(xfi_tphy, 0x3010, 0x00011110);
> +mtk_xfi_tphy_write(xfi_tphy, 0x3048, 0x40704000);
> +}
> +
> +if (is_1g)
> +mtk_xfi_tphy_write(xfi_tphy, 0x3064, 0x0000c000);
> +
> +/* Setup RX EQ initial value */
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x3050, 0xa8000000,
> + (interface != PHY_INTERFACE_MODE_10GBASER) ?
> +  0xa8000000 : 0x0);
> +mtk_xfi_tphy_rmw(xfi_tphy, 0x3054, 0xaa,
> + (interface != PHY_INTERFACE_MODE_10GBASER) ?
> +  0xaa : 0x0);
> +
> +if (is_xgmii)
> +mtk_xfi_tphy_write(xfi_tphy, 0x306c, 0x00000f00);
> +else if (is_2p5g)
> +mtk_xfi_tphy_write(xfi_tphy, 0x306c, 0x22000f00);
> +else
> +mtk_xfi_tphy_write(xfi_tphy, 0x306c, 0x20200f00);
> +
> +if (interface == PHY_INTERFACE_MODE_10GBASER && xfi_tphy->da_war)
> +mtk_xfi_tphy_rmw(xfi_tphy, 0xa008, 0x10000, 0x10000);
> +
> +mtk_xfi_tphy_rmw(xfi_tphy, 0xa060, 0x50000, is_xgmii ? 0x40000 :
> +       0x50000);
> +
> +/* Setup PHYA speed */
> +mtk_xfi_tphy_rmw(xfi_tphy, REG_ANA_GLB_D0,
> + XTP_GLB_USXGMII_SEL_MASK | XTP_GLB_USXGMII_EN,
> + is_10g ?  XTP_GLB_USXGMII_SEL(0) :
> + is_5g ?   XTP_GLB_USXGMII_SEL(1) :
> + is_2p5g ? XTP_GLB_USXGMII_SEL(2) :
> +   XTP_GLB_USXGMII_SEL(3));
> +mtk_xfi_tphy_set(xfi_tphy, REG_ANA_GLB_D0, XTP_GLB_USXGMII_EN);
> +
> +/* Release reset */
> +mtk_xfi_tphy_set(xfi_tphy, REG_DIG_GLB_70,
> + XTP_PCS_RST_B | XTP_FRC_PCS_RST_B);
> +usleep_range(150, 500);
> +
> +/* Switch to P0 */
> +mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_70,
> + XTP_PCS_PWD_SYNC_MASK |
> + XTP_PCS_PWD_ASYNC_MASK,
> + XTP_FRC_PCS_PWD_ASYNC |
> + XTP_PCS_UPDT | XTP_PCS_IN_FR_RG);
> +usleep_range(1, 5);
> +
> +mtk_xfi_tphy_clear(xfi_tphy, REG_DIG_GLB_70, XTP_PCS_UPDT);
> +usleep_range(15, 50);
> +
> +if (is_xgmii) {
> +/* Switch to Gen3 */
> +mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_70,
> + XTP_PCS_MODE_MASK | XTP_PCS_UPDT,
> + XTP_PCS_MODE(2) | XTP_PCS_UPDT);
> +} else {
> +/* Switch to Gen2 */
> +mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_70,
> + XTP_PCS_MODE_MASK | XTP_PCS_UPDT,
> + XTP_PCS_MODE(1) | XTP_PCS_UPDT);
> +}
> +usleep_range(1, 5);
> +
> +mtk_xfi_tphy_clear(xfi_tphy, REG_DIG_GLB_70, XTP_PCS_UPDT);
> +
> +usleep_range(100, 500);
> +
> +/* Enable MAC CK */
> +mtk_xfi_tphy_set(xfi_tphy, REG_DIG_LN_TRX_B0, XTP_LN_TX_MACCK_EN);
> +mtk_xfi_tphy_clear(xfi_tphy, REG_DIG_GLB_F4,
> XFI_DPHY_AD_SGDT_FRC_EN);
> +
> +/* Enable TX data */
> +mtk_xfi_tphy_set(xfi_tphy, REG_DIG_LN_TRX_40,
> + XTP_LN_FRC_TX_DATA_EN | XTP_LN_TX_DATA_EN);
> +usleep_range(400, 1000);
> +}
> +
> +static int mtk_xfi_tphy_set_mode(struct phy *phy, enum phy_mode
> mode, int
> + submode)
> +{
> +struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
> +
> +if (mode != PHY_MODE_ETHERNET)
> +return -EINVAL;
> +
> +switch (submode) {
> +case PHY_INTERFACE_MODE_1000BASEX:
> +case PHY_INTERFACE_MODE_2500BASEX:
> +case PHY_INTERFACE_MODE_SGMII:
> +case PHY_INTERFACE_MODE_5GBASER:
> +case PHY_INTERFACE_MODE_10GBASER:
> +case PHY_INTERFACE_MODE_USXGMII:
> +mtk_xfi_tphy_setup(xfi_tphy, submode);
> +return 0;
> +default:
> +return -EINVAL;
> +}
> +}
> +
> +static int mtk_xfi_tphy_reset(struct phy *phy)
> +{
> +struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
> +
> +reset_control_assert(xfi_tphy->reset);
> +usleep_range(100, 500);
> +reset_control_deassert(xfi_tphy->reset);
> +usleep_range(1, 10);
> +
> +return 0;
> +}
> +
> +static int mtk_xfi_tphy_power_on(struct phy *phy)
> +{
> +struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
> +
> +return clk_bulk_prepare_enable(MTK_XFI_TPHY_NUM_CLOCKS, xfi_tphy-
> >clocks);
> +}
> +
> +static int mtk_xfi_tphy_power_off(struct phy *phy)
> +{
> +struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
> +
> +clk_bulk_disable_unprepare(MTK_XFI_TPHY_NUM_CLOCKS, xfi_tphy-
> >clocks);
> +
> +return 0;
> +}
> +
> +static const struct phy_ops mtk_xfi_tphy_ops = {
> +.power_on= mtk_xfi_tphy_power_on,
> +.power_off= mtk_xfi_tphy_power_off,
> +.set_mode= mtk_xfi_tphy_set_mode,
> +.reset= mtk_xfi_tphy_reset,
> +.owner= THIS_MODULE,
> +};
> +
> +static int mtk_xfi_tphy_probe(struct platform_device *pdev)
> +{
> +struct device_node *np = pdev->dev.of_node;
> +struct phy_provider *phy_provider;
> +struct mtk_xfi_tphy *xfi_tphy;
> +struct phy *phy;
> +
> +if (!np)
> +return -ENODEV;
> +
> +xfi_tphy = devm_kzalloc(&pdev->dev, sizeof(*xfi_tphy), GFP_KERNEL);
> +if (!xfi_tphy)
> +return -ENOMEM;
> +
> +xfi_tphy->base = devm_of_iomap(&pdev->dev, np, 0, NULL);
> +if (!xfi_tphy->base)
> +return -EIO;
> +
> +xfi_tphy->dev = &pdev->dev;
> +
> +xfi_tphy->clocks[0].id = "topxtal";
> +xfi_tphy->clocks[0].clk = devm_clk_get(&pdev->dev, xfi_tphy-
> >clocks[0].id);
> +if (IS_ERR(xfi_tphy->clocks[0].clk))
> +return PTR_ERR(xfi_tphy->clocks[0].clk);
> +
> +xfi_tphy->clocks[1].id = "xfipll";
> +xfi_tphy->clocks[1].clk = devm_clk_get(&pdev->dev, xfi_tphy-
> >clocks[1].id);
> +if (IS_ERR(xfi_tphy->clocks[1].clk))
> +return PTR_ERR(xfi_tphy->clocks[1].clk);
> +
> +xfi_tphy->reset = devm_reset_control_get_exclusive(&pdev->dev,
> NULL);
> +if (IS_ERR(xfi_tphy->reset))
> +return PTR_ERR(xfi_tphy->reset);
> +
> +xfi_tphy->da_war = of_property_read_bool(np,
> + "mediatek,usxgmii-performance-errata");
> +
> +phy = devm_phy_create(&pdev->dev, NULL, &mtk_xfi_tphy_ops);
> +if (IS_ERR(phy))
> +return PTR_ERR(phy);
> +
> +phy_set_drvdata(phy, xfi_tphy);
> +
> +phy_provider = devm_of_phy_provider_register(&pdev->dev,
> +     of_phy_simple_xlate);
> +
> +return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +static const struct of_device_id mtk_xfi_tphy_match[] = {
> +{ .compatible = "mediatek,mt7988-xfi-tphy", },
> +{ }
> +};
> +MODULE_DEVICE_TABLE(of, mtk_xfi_tphy_match);
> +
> +static struct platform_driver mtk_xfi_tphy_driver = {
> +.probe = mtk_xfi_tphy_probe,
> +.driver = {
> +.name = "mtk-xfi-tphy",
> +.of_match_table = mtk_xfi_tphy_match,
> +},
> +};
> +module_platform_driver(mtk_xfi_tphy_driver);
> +
> +MODULE_DESCRIPTION("MediaTek XFI T-PHY driver");
> +MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
> +MODULE_AUTHOR("Bc-bocun Chen <bc-bocun.chen@mediatek.com>");
> +MODULE_LICENSE("GPL");
> -- 
> 2.43.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
