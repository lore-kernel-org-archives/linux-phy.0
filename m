Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9396C76196
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 05:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGVTHTPrVB1B5ev9LY63n1g/jezzVsDNocIn4F1jvFI=; b=TtlUa6+AR8x3a3
	vlExX9thswXb5YrtGU8vecWLYCPn5918VCXQi9YHSW+hY2Nk3sQkK/dXYIvQf0zGmA/rRt/cG2pIW
	bXY5/ScfOMjXM9uNBQfj+dPsH/jSaKbNSkIXA0QNz9mNbpQDlWz1KmcfsVvjoAdYHSmttC0cfDb2J
	DKI09oyQae115u8/F5gQ5zlbs8/AnzU86G5PIYBDsSCdyZg7wUz3tdGVh2uCe7hEqm7AT/9GJZJq9
	rmXv4uUBHSbobNcoPZXueZbmlqyfExKT3n4+L3b5U5iZK5lgbbFI42T/5wP0bsQxGPuhO6ZMCbt3Q
	zi8CJJZvZ3F4ygFxONRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkehE-009CMk-0X;
	Fri, 07 Apr 2023 05:31:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkeh9-009CKK-0U;
	Fri, 07 Apr 2023 05:31:34 +0000
X-UUID: 72115846d50511ed8687db9d93187ff1-20230406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=MPojZzKGVAIIlUYngfwjkUr7qBKD/1KgNSzz+d0ZFR0=;
	b=fKkSyMY7qc0HbUSg98ls9aj/iEPywIqCpgOnG4F8f+VTNL7cnjIeAEDwD+6dJgYUHEs+vX6YN1AWcu+BrdHBpBrwhSTCgwhItxbE5IE50mRBEd6y6eMifyTOxb/qsALPpGhOtdF2GiPAdbM+pm37HOfuPCLFz0OKjc8u6d2Pt98=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:e5020e32-f95d-49bf-81b9-e6b633009775,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:120426c,CLOUDID:6f3b9a2a-564d-42d9-9875-7c868ee415ec,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 72115846d50511ed8687db9d93187ff1-20230406
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1891185539; Thu, 06 Apr 2023 22:31:28 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Fri, 7 Apr 2023 13:31:00 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Fri, 7 Apr 2023 13:31:00 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5RmDTOJPYUb1NxhROiU5A9vK2W7n4KwkLnCaPsTzqxCnjwFPYpxp/n8sC6i+PebxL/5lRuGrEEuhWIoT47/dBeuWmkXTiQ7W0KNpZIG4e239wlkv7RGYmldsK9WycOiRBa8nEmluLQq4LHQBbF2fVoykjMLKlZ+Ntw82K2hWBMZAzAGSFqK0bxtFcSCjdi9K+ZnYqKhi6w9+7aK9lpDqj4mjuzuG7bdmggP8sfkoQLJ8UJC3fwd8W1cmY9ijcSIM8L4104BelaJXpJA8DG/LzRqWaKbcJDmDWLGy/eyJ9q9U+Q2LFe2CSqw3aP5Q3s//lDk8a36NmE7btRheFg1iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MPojZzKGVAIIlUYngfwjkUr7qBKD/1KgNSzz+d0ZFR0=;
 b=aIbnChaU/4RxWXpdBzju5Err4kABXRAWW6lPnDmcGixdrkrmgr+fWPz49QAkJWYCOFejjppZJjYb54tFmdfZyKNS9uH92hiaNGpsojWHR/VjUJOtDuNGCgqULpaQ45J47vXYZHTL+z1GXpdAIYHL3b/6Nr3lTCWHBZG2qD9LI5Zx/OdD5xbNDw/zcnWQb++GjthxdC9QvNa/MBBx76G/a/BThN3BR0jGbJqbJNDv0e3hm+3QMiaXK3uw3C09JDhY1j6vVUwB77TZTS9PE7jnJK5mDE1s5pbwHO/F1/qND+bQ7Zpyty0YLbnZvrzP/msj10LZ6MafT5f7RJKO9xqTFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPojZzKGVAIIlUYngfwjkUr7qBKD/1KgNSzz+d0ZFR0=;
 b=l6Xtms9OPerRlMXjlpSAywPyooSjNrpDEd+Yr6xVsLzWN2ciYE1ORIMZkWgB5msOGb+xM8eEkYX46XOKVFP/dDaJgQOY33F1JEMuC1mt+RwUZHoU4jeYliZxfiMqpkbZVn1uRcCXUGAN17gSiy2SIXYVUNao/cm94BoCG8A0sxw=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by TYZPR03MB5263.apcprd03.prod.outlook.com (2603:1096:405:6::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.30; Fri, 7 Apr
 2023 05:30:58 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::82b9:eab9:b4e3:8464]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::82b9:eab9:b4e3:8464%7]) with mapi id 15.20.6254.035; Fri, 7 Apr 2023
 05:30:58 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "jstephan@baylibre.com" <jstephan@baylibre.com>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	=?utf-8?B?QW5keSBIc2llaCAo6Kyd5pm655qTKQ==?= <Andy.Hsieh@mediatek.com>,
	=?utf-8?B?TG91aXMgS3VvICjpg63lvrflr6cp?= <louis.kuo@mediatek.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "pnguyen@baylibre.com"
	<pnguyen@baylibre.com>
Subject: Re: [PATCH 2/2] phy: mtk-mipi-csi: add driver for CSI phy
Thread-Topic: [PATCH 2/2] phy: mtk-mipi-csi: add driver for CSI phy
Thread-Index: AQHZZfzouCNLv8qiX0+hX6w5CXetpa8fNtuA
Date: Fri, 7 Apr 2023 05:30:57 +0000
Message-ID: <3fc4f3167044aba4ba947cf0a1f776218b970995.camel@mediatek.com>
References: <20230403071929.360911-1-jstephan@baylibre.com>
	 <20230403071929.360911-3-jstephan@baylibre.com>
In-Reply-To: <20230403071929.360911-3-jstephan@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|TYZPR03MB5263:EE_
x-ms-office365-filtering-correlation-id: 8b5370b9-1270-4709-0b04-08db37294430
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S6v6acgpe1PrmBtVu/co5sBnvnJfeVnCWXtu24Djm434oID56BJBDy7unflG6aKIRuG56sjl2Mi7sH1KesvlW/PPELrXWJHBXRdUtnEWbqXdqEsa1z/B2FxnF6894f5FgaBI/V70GBUUokDbp5z61Ira8XjAkOACoeG+Czxl5wTqEyz14O4bQPkE2/F6fbQAnoCol32Yl+7rhSoFHkDGCIv228ojmJTvU6DWcbSXi0kpZaL3L5X4cKoHl8hxCTXezMm/cINW1RmvwZOz/dgYWfQWryvG86L7mIpYSx/oGFsiCxI2sC91aihYD5MLAlu4/L1XgEVbSvtnpawm8ijCj6OIH5JY8EdRbB0vkgcovUYgdNc4RQ+w+L5LF7n9oisAAYP8WSkH2pecW+Ja4GJwB+N5a7dGB4MFdI6GU/G6jmcL6TtGooEaRrTVt2Brqgyqr3+t6V964U+Oe3jxv4heLqxGuC/b8fpFSLyxEZUjSsCN9/HE54OadZACzxpq52ar2Zy8MdIo+gmo5UZXF2MVXzuXinZPgSWlax3d5lF8PnEsj6L3+k8y1StRNuo8T7lOy0Fs1CGor3wTTq5FPF5VkwWmLX9nE/O1cPIcYTAQoz5bSrxNmSuEZEvNP2IEwEvk2x7Jm48ScaxAB2HUA64kWQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199021)(19627235002)(85182001)(122000001)(38100700002)(5660300002)(30864003)(7416002)(2906002)(64756008)(4326008)(76116006)(38070700005)(8936002)(86362001)(66476007)(66946007)(66446008)(8676002)(41300700001)(66556008)(6486002)(6916009)(83380400001)(36756003)(2616005)(91956017)(54906003)(6506007)(26005)(478600001)(6512007)(186003)(71200400001)(316002)(99106002)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUtxY2h2V2F1eTRSdkMzelp6alJVT0R3Z2VlTVRTR3A5NDJvOXZlY2ExYW5h?=
 =?utf-8?B?dUFFa1dzTk1kVzB6V3pKRXR3bHhac3Zyc1RXcUVXWUp3aUZFb3hHVTdacVhl?=
 =?utf-8?B?Z0U5WXgrUUExNVhvSkV0Ykh6dDFtTlpieCtZbkFxaFdsWXVBM1ZjRXQ2bkJB?=
 =?utf-8?B?dkJqaC9WeW1RcVU2QmhhR212cFp5SkVZRmV2dGY1WTdKR3BITzdhRXkvRFdV?=
 =?utf-8?B?YjRwSWhLeUtCY0MwS2F0OGJPSk4yMWRWQk5KaU1CT0xMaE5taTFWdUhNVDJi?=
 =?utf-8?B?R3YyL1BmSVg2MVlPTS9BU2tXNGwyWjVkeVRxb1V5eVpKQjlJYjBzOHRIVU8x?=
 =?utf-8?B?a054cFhUTjZYTkJMSm5zMTFTUm4vY1RuWjBFMTRSNjNLWExYV1hYQ21JaHdv?=
 =?utf-8?B?V2lldm9nSWNUeUZrSUJ5OTRTYXVhU1ZXQWtteDlHSldVR3hyMm5mSzJoekR1?=
 =?utf-8?B?SlMrZk1PSVorN1NxS1hTaUFtQjd5Q1RvelhyYkhVTzBtSWtOMWJLb0RKenMw?=
 =?utf-8?B?bjFGRjJEUW83T01jb2NLcDJiRG8vLytOTzdoOHpTd2VpZkNrUjhOTXpvSDFt?=
 =?utf-8?B?VFFIOXpvZ2ttc2hzZnB0RlFRZDloTFZSWG9nQkprNGFGb1ZRUFE3WlYvN1FM?=
 =?utf-8?B?cUk0VktzOGFzM1djc1RCeTNtZ295TE01bFFUbExrMVFIeEUwNEJPekduNkpI?=
 =?utf-8?B?VWc1RHlyeG9NbkNvUnFicjhMcXlwRFpybUNlRUR5RC90K3pwa1hGUlYzT3Zv?=
 =?utf-8?B?WHppYi9HM29JU3ZRSVJwVUFwaTJNV29qblA3YzVBNTh6emF6TmpHWUh3SGNT?=
 =?utf-8?B?S20zaHpqRWRoNlhMMG41L28vNmU0R3RrOTlkdFNYRExNZEpoaXUvZU54VEV0?=
 =?utf-8?B?UDFlRTBEWC9sc0pPQ05JYnpUYUZBL3Z6SS9MekVqbUVNc0tUTHVnWVFBZEtZ?=
 =?utf-8?B?YkorMUhnNnduTDE0YUVyenRpVkhSSWxqbllpaS9IcFJ5UUYrRmVPcWs0SE1o?=
 =?utf-8?B?V045UUFCaWlLVTJ1bElNaU1XSzhGaG85OW9vM0dzUEVkSks3cEVtbndDODlk?=
 =?utf-8?B?RUs3UkdkUTJPSVdRR01nRUxUUFJWUCtuYjVnU3p3S0lQNFUvSjBLeERJdWt5?=
 =?utf-8?B?T2VQSFdPZ1RBMnNNdjA0eS80UlhnVW5UNzhVdTNiaDZrQ3lxUmJ5RUloYytG?=
 =?utf-8?B?R2lJTks4ZnQyWHNITTNoNWR1TDEvRDNiOTVMR0QwV0VLaGZBNDJZcWVHazEx?=
 =?utf-8?B?N01HOXhJNTlPM1dRU2xCNWRPTnNld2JGenUrc3RIUURIaExZYWtkekMyd211?=
 =?utf-8?B?RmlzZWNscWlFTVNLSytCNjZURy9ySzRDZFVpd1RQYS9nTmQrbElRSFJkNUxK?=
 =?utf-8?B?aE1oVXU1U1JyZlN2Ui9zcjIwMHNhNGREVURuR1FpeTRqcEVTSk1hMmtpZjNK?=
 =?utf-8?B?SFBGZkpibTlzaFlZOFVmNllRVm1uQnJMeTlrdVRIRkNOQkNWOW5NUTkwRHAz?=
 =?utf-8?B?dUhmUGVmQ2xpNjg3TGFGNTdxTGZFcGVLaDcrQ05rcDE1RmhyQTBMOWg2UmNW?=
 =?utf-8?B?T2h0ajd3djRXYmt6R3p3aWdOZ0l4cGZwTjJ5TE1RdExqUTFwVlhYNHhHa2dQ?=
 =?utf-8?B?QVdzeFVKYWY2QTRIOTVnUjdycHZ3ek1ZN1hGSWJzdDY1U1hwMkhZVFc5elN0?=
 =?utf-8?B?Nm8rRFdGV2RJa3RCUnd1WDdDYWlTS0NpRUo5dGFqYUFSVTF6TDViL0JLdXBR?=
 =?utf-8?B?c3l1UTFvT3JlM3lldmxFZWJoNytJcStLUG8wN0liYlR0akpvdERQYzNTL3l0?=
 =?utf-8?B?V1U0em5KQmVNRWRoTFluRGdpUWI1bDRONG8yelNiWStBYXRpR2QyQVVvMXQ3?=
 =?utf-8?B?ZDllOFJkYXZ2b0tTNkVpclVBemhkeTV0dUZRVVNlYlh4RkVjTU9McE40Zk5J?=
 =?utf-8?B?RXFXWW81R3BRaEllZDdJUWlqZ0lsQzJTUlBBNXo1Ulpxb09rQU9LS1J6dTN3?=
 =?utf-8?B?dUpCeGZEM0g0WXl3YkdkWlpSaVlrejFhc0FiUjdXZXFNVVVCcUFGaEoxZUpM?=
 =?utf-8?B?WVh4SEZRRkxQd21pTnBMeDBaZlNycWFNTjYzQWRFZ29aL2NzeWgxODV1MkFQ?=
 =?utf-8?B?MlErSUFPVm1FK0pFU3NuNVFWNE1McFpNVmlFMXRCVE9vcEhlMXZHZDhWbUFh?=
 =?utf-8?B?S1E9PQ==?=
Content-ID: <13A9924E9739A74089848E74B393556E@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b5370b9-1270-4709-0b04-08db37294430
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2023 05:30:57.7625
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sx/Oi6ZzDmfjY1AB368r4G9NQIqJfD5JAOsNOl5PuCXQ/RTiF/Yfn314W7wY6uX/uNt4bQbHZU5cmuR7zlJAtPRovnJIgt8p1Iv8Kwu2Jy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5263
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_223131_261291_6832F16D 
X-CRM114-Status: GOOD (  19.62  )
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

On Mon, 2023-04-03 at 09:19 +0200, Julien Stephan wrote:
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
> 
> 
> From: Phi-bang Nguyen <pnguyen@baylibre.com>
> 
> This is a new driver that supports the MIPI CSI CD-PHY for mediatek
> mt8365 soc
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
> [Julien Stephan: use regmap]
> [Julien Stephan: use GENMASK]
> Co-developed-by: Julien Stephan <jstephan@baylibre.com>
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  .../bindings/phy/mediatek,csi-phy.yaml        |   9 +-
>  MAINTAINERS                                   |   1 +
>  drivers/phy/mediatek/Kconfig                  |   8 +
>  drivers/phy/mediatek/Makefile                 |   2 +
>  .../phy/mediatek/phy-mtk-mipi-csi-rx-reg.h    | 435
> ++++++++++++++++++
>  drivers/phy/mediatek/phy-mtk-mipi-csi.c       | 392 ++++++++++++++++
>  6 files changed, 845 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-rx-reg.h
>  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi.c

Please cc linux-mediatek@lists.infradead.org

> 
>  ...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9308b4bb88bf..b3077eddd0bf 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13103,6 +13103,7 @@ M:      Julien Stephan <jstephan@baylibre.com
> >
>  M:     Andy Hsieh <andy.hsieh@mediatek.com>
>  S:     Supported
>  F:     Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
> +F:     drivers/phy/mediatek/phy-mtk-mipi-csi*
> 
>  MEDIATEK MMC/SD/SDIO DRIVER
>  M:     Chaotian Jing <chaotian.jing@mediatek.com>

separate a new patch for MAINTAINERS change?


> diff --git a/drivers/phy/mediatek/Kconfig
> b/drivers/phy/mediatek/Kconfig
> index 3125ecb5d119..63fb0fa77573 100644
> --- a/drivers/phy/mediatek/Kconfig
> +++ b/drivers/phy/mediatek/Kconfig
> @@ -74,3 +74,11 @@ config PHY_MTK_DP
>         select GENERIC_PHY
>         help
>           Support DisplayPort PHY for MediaTek SoCs.
> +
> +config PHY_MTK_MIPI_CSI
> +       tristate "MediaTek CSI CD-PHY Driver"
> +       depends on ARCH_MEDIATEK && OF
> +       select GENERIC_PHY
> +       help
> +         Enable this to support the MIPI CSI CD-PHY receiver.
> +         The driver supports multiple CSI cdphy ports
> simultaneously.
> diff --git a/drivers/phy/mediatek/Makefile
> b/drivers/phy/mediatek/Makefile
> index fb1f8edaffa7..9a178c1c2628 100644
> --- a/drivers/phy/mediatek/Makefile
> +++ b/drivers/phy/mediatek/Makefile
> @@ -18,3 +18,5 @@ phy-mtk-mipi-dsi-drv-y                        :=
> phy-mtk-mipi-dsi.o
>  phy-mtk-mipi-dsi-drv-y                 += phy-mtk-mipi-dsi-mt8173.o
>  phy-mtk-mipi-dsi-drv-y                 += phy-mtk-mipi-dsi-mt8183.o
>  obj-$(CONFIG_PHY_MTK_MIPI_DSI)         += phy-mtk-mipi-dsi-drv.o
> +
> +obj-$(CONFIG_PHY_MTK_MIPI_CSI)         += phy-mtk-mipi-csi.o
> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-csi-rx-reg.h
> b/drivers/phy/mediatek/phy-mtk-mipi-csi-rx-reg.h
> new file mode 100644
> index 000000000000..f360e807e3d1
> --- /dev/null
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-csi-rx-reg.h
> @@ -0,0 +1,435 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __MIPI_CDPHY_RX_REG_H__
> +#define __MIPI_CDPHY_RX_REG_H__
> +
> +/*
> + * CSI1 and CSI2 are identical, and similar to CSI0. All CSIx macros
> are
> + * applicable to the three PHYs. Where differences exist, they are
> denoted by
> + * macro names using CSI0 and CSI1, the latter being applicable to
> CSI1 and
> + * CSI2 alike.
> + */
> +
> +/*
> + * Due to lanes supporting C-PHY mode on CSI0, register fields that
> control the
> + * behaviour of lanes are named differently between CSI0 and
> CSI1/CSI2, even
> + * when they control parameters that are agnostic to the PHY mode.
> In those
> + * cases, the macros below use the CSI0 field names (e.g.
> + * MIPI_RX_ANA08_CSIxA_RG_CSIxA_L0P_T0A_HSRT_CODE_SHIFT).
> + */
> +
> <skip>
> 
> +#define
> MIPI_RX_ANA24_CSIxA_RG_CSIxA_RESERVE_SHIFT                           
>   24
> +#define
> MIPI_RX_ANA24_CSIxA_RG_CSIxA_RESERVE_MASK                            
>   (0xff << 24)

Use GENMASK()


> +
> +/* CSI0-specific register. */
> +#define
> MIPI_RX_ANA28_CSI0A                                                  
>   0x0028
> +#define
> MIPI_RX_ANA28_CSI0A_RG_CSI0A_CPHY_T0_CDR_DIRECT_EN_SHIFT             
>   0
> 
> 
> +#define
> MIPI_RX_ANA48_CSIxA_RGS_CSI1A_DPHY_L2_OS_CAL_CPLT_SHIFT              
>           5
> +#define
> MIPI_RX_ANA48_CSIxA_RGS_CSI1A_DPHY_L2_OS_CAL_CPLT_MASK               
>   BIT(5)
> +/* Common fields. */
> +#define
> MIPI_RX_ANA48_CSIxA_RGS_CSIxA_OS_CAL_CODE_SHIFT                      
>           8
> +#define
> MIPI_RX_ANA48_CSIxA_RGS_CSIxA_OS_CAL_CODE_MASK                       
>   GENMASK(15, 8)
> +
> +#define
> MIPI_RX_WRAPPER80_CSIxA                                              
>           0x0080
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_CLK_MON_SHIFT                        
>   0
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_CLK_MON_MASK                         
>   BIT(0)
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_CLK_EN_SHIFT                         
>   1
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_CLK_EN_MASK                          
>   BIT(1)
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_MON_MUX_SHIFT                        
>   8
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_MON_MUX_MASK                         
>   GENMASK(15, 8)
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_RST_MODE_SHIFT                       
>   16
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_CSI_RST_MODE_MASK                        
>   GENMASK(17, 16)
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_SW_RST_SHIFT                             
>   24
> +#define
> MIPI_RX_WRAPPER80_CSIxA_CSR_SW_RST_MASK                              
>           GENMASK(27, 24)
> +
> +#define
> MIPI_RX_WRAPPER84_CSIxA                                              
>           0x0084
> +#define
> MIPI_RX_WRAPPER84_CSIxA_CSI_DEBUG_OUT_SHIFT                          
>   0
> +#define
> MIPI_RX_WRAPPER84_CSIxA_CSI_DEBUG_OUT_MASK                           
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_WRAPPER88_CSIxA                                              
>           0x0088
> +#define
> MIPI_RX_WRAPPER88_CSIxA_CSR_SW_MODE_0_SHIFT                          
>   0
> +#define
> MIPI_RX_WRAPPER88_CSIxA_CSR_SW_MODE_0_MASK                           
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_WRAPPER8C_CSIxA                                              
>           0x008c
> +#define
> MIPI_RX_WRAPPER8C_CSIxA_CSR_SW_MODE_1_SHIFT                          
>   0
> +#define
> MIPI_RX_WRAPPER8C_CSIxA_CSR_SW_MODE_1_MASK                           
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_WRAPPER90_CSIxA                                              
>           0x0090
> +#define
> MIPI_RX_WRAPPER90_CSIxA_CSR_SW_MODE_2_SHIFT                          
>   0
> +#define
> MIPI_RX_WRAPPER90_CSIxA_CSR_SW_MODE_2_MASK                           
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_WRAPPER94_CSIxA                                              
>           0x0094
> +#define
> MIPI_RX_WRAPPER94_CSIxA_CSR_SW_VALUE_0_SHIFT                         
>   0
> +#define
> MIPI_RX_WRAPPER94_CSIxA_CSR_SW_VALUE_0_MASK                          
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_WRAPPER98_CSIxA                                              
>           0x0098
> +#define
> MIPI_RX_WRAPPER98_CSIxA_CSR_SW_VALUE_1_SHIFT                         
>   0
> +#define
> MIPI_RX_WRAPPER98_CSIxA_CSR_SW_VALUE_1_MASK                          
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_WRAPPER9C_CSIxA                                              
>           0x009c
> +#define
> MIPI_RX_WRAPPER9C_CSIxA_CSR_SW_VALUE_2_SHIFT                         
>   0
> +#define
> MIPI_RX_WRAPPER9C_CSIxA_CSR_SW_VALUE_2_MASK                          
>   GENMASK(31, 0)
> +
> +#define
> MIPI_RX_ANAA4_CSIxA                                                  
>   0x00a4
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L0_T0_SYNC_INIT_SEL_SHIFT         
>   0
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L0_T0_SYNC_INIT_SEL_MASK          
>   BIT(0)
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L0_T0_FORCE_INIT_SHIFT            
>   1
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L0_T0_FORCE_INIT_MASK             
>   BIT(1)
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_DPHY_L1_SYNC_INIT_SEL_SHIFT             
>   2
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_DPHY_L1_SYNC_INIT_SEL_MASK              
>           BIT(2)
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_DPHY_L1_FORCE_INIT_SHIFT                
>   3
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_DPHY_L1_FORCE_INIT_MASK                 
>   BIT(3)
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L2_T2_SYNC_INIT_SEL_SHIFT         
>   4
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L2_T2_SYNC_INIT_SEL_MASK          
>   BIT(4)
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L2_T2_FORCE_INIT_SHIFT            
>   5
> +#define
> MIPI_RX_ANAA4_CSIxA_RG_CSIxA_CDPHY_L2_T2_FORCE_INIT_MASK             
>   BIT(5)
> +
> +#define
> MIPI_RX_ANAA8_CSIxA                                                  
>   0x00a8
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_CDPHY_L0_T0_BYTECK_INVERT_SHIFT         
>   0
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_CDPHY_L0_T0_BYTECK_INVERT_MASK          
>   BIT(0)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_DPHY_L1_BYTECK_INVERT_SHIFT             
>   1
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_DPHY_L1_BYTECK_INVERT_MASK              
>           BIT(1)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_CDPHY_L2_T1_BYTECK_INVERT_SHIFT         
>   2
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_CDPHY_L2_T1_BYTECK_INVERT_MASK          
>   BIT(2)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_DPHY_HSDET_LEVEL_MODE_EN_SHIFT          
>   3
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_DPHY_HSDET_LEVEL_MODE_EN_MASK           
>   BIT(3)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_OS_CAL_SEL_SHIFT                        
>   4
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_OS_CAL_SEL_MASK                         
>   GENMASK(6, 4)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_DPHY_HSDET_DIG_BACK_EN_SHIFT            
>   7
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_DPHY_HSDET_DIG_BACK_EN_MASK             
>   BIT(7)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_CDPHY_DELAYCAL_CK_SEL_SHIFT             
>   8
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_CDPHY_DELAYCAL_CK_SEL_MASK              
>           GENMASK(10, 8)
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_OS_CAL_DIV_SHIFT                        
>   11
> +#define
> MIPI_RX_ANAA8_CSIxA_RG_CSIxA_OS_CAL_DIV_MASK                         
>   GENMASK(12, 11)
> +
> +#endif
> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-csi.c
> b/drivers/phy/mediatek/phy-mtk-mipi-csi.c
> new file mode 100644
> index 000000000000..6ce3f95f57bd
> --- /dev/null
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-csi.c
> @@ -0,0 +1,392 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +#include <linux/regmap.h>
> +
> +#include "phy-mtk-mipi-csi-rx-reg.h"
> +
> +#define CSIxB_OFFSET           0x1000
> +
> +struct mtk_mipi_dphy;
> +
> +enum mtk_mipi_dphy_port_id {
> +       MTK_MIPI_PHY_PORT_0 = 0x0, /* 4D1C - CDPHY */
> +       MTK_MIPI_PHY_PORT_1, /* 4D1C - DPHY */
> +       MTK_MIPI_PHY_PORT_2, /* 4D1C - DPHY */
> +       MTK_MIPI_PHY_PORT_0A, /* 2D1C - CDPHY */
> +       MTK_MIPI_PHY_PORT_0B, /* 2D1C - CDPHY */
> +       MTK_MIPI_PHY_PORT_MAX_NUM
> +};
> +
> +struct mtk_mipi_dphy_port {
> +       struct mtk_mipi_dphy *dev;
> +       enum mtk_mipi_dphy_port_id id;
> +       struct regmap *regmap_base;
> +       struct regmap *regmap_4d1c;
Could you avoid using regmap if the registers are only used by this
driver, use phy-mtk-io.h api instead.

> +       struct phy *phy;
> +       bool active;
> +       bool is_cdphy;
> +       bool is_4d1c;
> +};
> +
> +struct mtk_mipi_dphy {
> +       struct device *dev;
> +       void __iomem *rx;
> +       struct mtk_mipi_dphy_port ports[MTK_MIPI_PHY_PORT_MAX_NUM];
> +       struct mutex lock; /* Ports CSI0 and CSI0A/B are mutually
> exclusive */
phy core already provides a mutex, no need provide another one.

Do you switch them at runtime for port 0?

From binding, I guess we use mtk_mipi_dphy_port_id in DTS to determine
which mode is used.

> +};
> +
> +#define REGMAP_BIT(map, reg, field, val) \
> +       regmap_update_bits((map), reg, reg##_##field##_MASK, \
> +                          (val) << reg##_##field##_SHIFT)
> +
> +static int mtk_mipi_phy_power_on(struct phy *phy)
> +{
> +       struct mtk_mipi_dphy_port *port = phy_get_drvdata(phy);
> +       struct mtk_mipi_dphy *priv = port->dev;
> +       struct regmap *regmap_base = port->regmap_base;
> +       struct regmap *regmap_4d1c = port->regmap_4d1c;
> +       int ret = 0;
> +
> +       mutex_lock(&priv->lock);
> +
> +       switch (port->id) {
> +       case MTK_MIPI_PHY_PORT_0:
> +               if (priv->ports[MTK_MIPI_PHY_PORT_0A].active ||
> +                   priv->ports[MTK_MIPI_PHY_PORT_0B].active)
> +                       ret = -EBUSY;
> +               break;
> +
> +       case MTK_MIPI_PHY_PORT_0A:
> +       case MTK_MIPI_PHY_PORT_0B:
> +               if (priv->ports[MTK_MIPI_PHY_PORT_0].active)
> +                       ret = -EBUSY;
> +               break;
> +       }
> +
> +       if (!ret)
> +               port->active = true;
> +
> +       mutex_unlock(&priv->lock);
> +
> +       if (ret < 0)
> +               return ret;
> +
> +       /* Set analog phy mode to DPHY */
> +       if (port->is_cdphy)
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSI0A_CPHY_EN, 0);
> +
> +       if (port->is_4d1c) {
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L0_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L0_CKSEL, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L1_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L1_CKSEL, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L2_CKMODE_EN, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L2_CKSEL, 1);
> +       } else {
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L0_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L0_CKSEL, 0);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L1_CKMODE_EN, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L1_CKSEL, 0);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L2_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L2_CKSEL, 0);
> +       }
> +
> +       if (port->is_4d1c) {
> +               if (port->is_cdphy)
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                                  RG_CSI0A_CPHY_EN, 0);
> +
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L0_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L0_CKSEL, 1);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L1_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L1_CKSEL, 1);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L2_CKMODE_EN, 0);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_DPHY_L2_CKSEL, 1);
> +       }
> +
> +       /* Byte clock invert */
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANAA8_CSIxA,
> +                  RG_CSIxA_CDPHY_L0_T0_BYTECK_INVERT, 1);
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANAA8_CSIxA,
> +                  RG_CSIxA_DPHY_L1_BYTECK_INVERT, 1);
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANAA8_CSIxA,
> +                  RG_CSIxA_CDPHY_L2_T1_BYTECK_INVERT, 1);
> +
> +       if (port->is_4d1c) {
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANAA8_CSIxA,
> +                          RG_CSIxA_CDPHY_L0_T0_BYTECK_INVERT, 1);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANAA8_CSIxA,
> +                          RG_CSIxA_DPHY_L1_BYTECK_INVERT, 1);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANAA8_CSIxA,
> +                          RG_CSIxA_CDPHY_L2_T1_BYTECK_INVERT, 1);
> +       }
> +
> +       /* Start ANA EQ tuning */
> +       if (port->is_cdphy) {
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA18_CSIxA,
> +                          RG_CSI0A_L0_T0AB_EQ_IS, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA18_CSIxA,
> +                          RG_CSI0A_L0_T0AB_EQ_BW, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA1C_CSIxA,
> +                          RG_CSI0A_L1_T1AB_EQ_IS, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA1C_CSIxA,
> +                          RG_CSI0A_L1_T1AB_EQ_BW, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA20_CSI0A,
> +                          RG_CSI0A_L2_T1BC_EQ_IS, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA20_CSI0A,
> +                          RG_CSI0A_L2_T1BC_EQ_BW, 1);
> +
> +               if (port->is_4d1c) {
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA18_CSIxA,
> +                                  RG_CSI0A_L0_T0AB_EQ_IS, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA18_CSIxA,
> +                                  RG_CSI0A_L0_T0AB_EQ_BW, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA1C_CSIxA,
> +                                  RG_CSI0A_L1_T1AB_EQ_IS, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA1C_CSIxA,
> +                                  RG_CSI0A_L1_T1AB_EQ_BW, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA20_CSI0A,
> +                                  RG_CSI0A_L2_T1BC_EQ_IS, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA20_CSI0A,
> +                                  RG_CSI0A_L2_T1BC_EQ_BW, 1);
> +               }
> +       } else {
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA18_CSIxA,
> +                          RG_CSI1A_L0_EQ_IS, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA18_CSIxA,
> +                          RG_CSI1A_L0_EQ_BW, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA18_CSIxA,
> +                          RG_CSI1A_L1_EQ_IS, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA18_CSIxA,
> +                          RG_CSI1A_L1_EQ_BW, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA1C_CSIxA,
> +                          RG_CSI1A_L2_EQ_IS, 1);
> +               REGMAP_BIT(regmap_base, MIPI_RX_ANA1C_CSIxA,
> +                          RG_CSI1A_L2_EQ_BW, 1);
> +
> +               if (port->is_4d1c) {
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA18_CSIxA,
> +                                  RG_CSI1A_L0_EQ_IS, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA18_CSIxA,
> +                                  RG_CSI1A_L0_EQ_BW, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA18_CSIxA,
> +                                  RG_CSI1A_L1_EQ_IS, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA18_CSIxA,
> +                                  RG_CSI1A_L1_EQ_BW, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA1C_CSIxA,
> +                                  RG_CSI1A_L2_EQ_IS, 1);
> +                       REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA1C_CSIxA,
> +                                  RG_CSI1A_L2_EQ_BW, 1);
> +               }
> +       }
> +
> +       /* End ANA EQ tuning */
> +       regmap_write(regmap_base, MIPI_RX_ANA40_CSIxA, 0x90);
> +
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANA24_CSIxA,
> +                  RG_CSIxA_RESERVE, 0x40);
> +       if (port->is_4d1c)
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA24_CSIxA,
> +                          RG_CSIxA_RESERVE, 0x40);
> +       REGMAP_BIT(regmap_base, MIPI_RX_WRAPPER80_CSIxA,
> +                  CSR_CSI_RST_MODE, 0);
> +       if (port->is_4d1c)
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_WRAPPER80_CSIxA,
> +                          CSR_CSI_RST_MODE, 0);
> +       /* ANA power on */
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                  RG_CSIxA_BG_CORE_EN, 1);
> +       if (port->is_4d1c)
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_BG_CORE_EN, 1);
> +       usleep_range(20, 40);
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                  RG_CSIxA_BG_LPF_EN, 1);
> +       if (port->is_4d1c)
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_BG_LPF_EN, 1);
> +
> +       return 0;
> +}
> +
> +static int mtk_mipi_phy_power_off(struct phy *phy)
> +{
> +       struct mtk_mipi_dphy_port *port = phy_get_drvdata(phy);
> +       struct regmap *regmap_base = port->regmap_base;
> +       struct regmap *regmap_4d1c = port->regmap_4d1c;
> +
> +       /* Disable MIPI BG. */
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                  RG_CSIxA_BG_CORE_EN, 0);
> +       REGMAP_BIT(regmap_base, MIPI_RX_ANA00_CSIxA,
> +                  RG_CSIxA_BG_LPF_EN, 0);
> +
> +       if (port->is_4d1c) {
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_BG_CORE_EN, 0);
> +               REGMAP_BIT(regmap_4d1c, MIPI_RX_ANA00_CSIxA,
> +                          RG_CSIxA_BG_LPF_EN, 0);
> +       }
> +
> +       mutex_lock(&port->dev->lock);
> +       port->active = false;
> +       mutex_unlock(&port->dev->lock);
> +
> +       return 0;
> +}
> +
> +static const struct phy_ops mtk_dphy_ops = {
> +       .power_on       = mtk_mipi_phy_power_on,
> +       .power_off      = mtk_mipi_phy_power_off,
> +       .owner          = THIS_MODULE,
> +};
> +
> +static struct phy *mtk_mipi_dphy_xlate(struct device *dev,
> +                                      struct of_phandle_args *args)
> +{
> +       struct mtk_mipi_dphy *priv = dev_get_drvdata(dev);
> +
> +       if (args->args_count != 1)
> +               return ERR_PTR(-EINVAL);
> +
> +       if (args->args[0] >= ARRAY_SIZE(priv->ports))
> +               return ERR_PTR(-ENODEV);
> +
> +       return priv->ports[args->args[0]].phy;
> +}
> +
> +static const struct regmap_config mt8365_phy_regmap_config = {
> +       .reg_bits = 32,
> +       .val_bits = 32,
> +       .reg_stride = 4,
> +       .max_register = 0x700,
> +};
> +
> +static int mtk_mipi_dphy_probe(struct platform_device *pdev)
> +{
> +       static const unsigned int ports_offsets[] = {
> +               [MTK_MIPI_PHY_PORT_0] = 0,
> +               [MTK_MIPI_PHY_PORT_0A] = 0,
> +               [MTK_MIPI_PHY_PORT_0B] = 0x1000,
> +               [MTK_MIPI_PHY_PORT_1] = 0x2000,
> +               [MTK_MIPI_PHY_PORT_2] = 0x4000,
> +       };
How about provide three subnode (p0/p1/p2)in dts like as tphy driver?

for the port 0, it works as three mode (*_0/0A/0B, or 4d1c/2d1c), we
can distinguish it from phy arguments, also the same for port 1/2

> +
> +       struct device *dev = &pdev->dev;
> +       struct phy_provider *phy_provider;
> +       struct mtk_mipi_dphy *priv;
> +       struct resource *res;
> +       unsigned int i;
> +
> +       priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +       if (!priv)
> +               return -ENOMEM;
> +
> +       dev_set_drvdata(dev, priv);
> +       priv->dev = dev;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       priv->rx = devm_ioremap_resource(dev, res);
use devm_platform_ioremap_resource()

> +       if (IS_ERR(priv->rx))
> +               return PTR_ERR(priv->rx);
> +
> +       for (i = 0; i < ARRAY_SIZE(priv->ports); ++i) {
> +               struct mtk_mipi_dphy_port *port = &priv->ports[i];
> +               struct phy *phy;
> +               void __iomem *base;
> +
> +               port->dev = priv;
> +               port->id = i;
> +               base = priv->rx + ports_offsets[i];
> +
> +               port->regmap_base = devm_regmap_init_mmio(port->dev-
> >dev,
> +                                                         base,
> +                                                         &mt8365_phy
> _regmap_config);
> +
> +               port->is_cdphy = i == MTK_MIPI_PHY_PORT_0A ||
> +                                i == MTK_MIPI_PHY_PORT_0B ||
> +                                i == MTK_MIPI_PHY_PORT_0;
> +               port->is_4d1c = i < MTK_MIPI_PHY_PORT_0A;
> +
> +               if (port->is_4d1c)
> +                       port->regmap_4d1c =
> devm_regmap_init_mmio(port->dev->dev,
> +                                                                 bas
> e + CSIxB_OFFSET,
> +                                                                 &mt
> 8365_phy_regmap_config);
> +
> +               phy = devm_phy_create(dev, NULL, &mtk_dphy_ops);
> +               if (IS_ERR(phy)) {
> +                       dev_err(dev, "Failed to create PHY: %ld\n",
> PTR_ERR(phy));
> +                       return PTR_ERR(phy);
> +               }
> +
> +               port->phy = phy;
> +               phy_set_drvdata(phy, port);
> +       }
> +
> +       phy_provider = devm_of_phy_provider_register(dev,
> mtk_mipi_dphy_xlate);
> +       if (IS_ERR(phy_provider)) {
> +               dev_err(dev, "Failed to register PHY provider:
> %ld\n",
> +                       PTR_ERR(phy_provider));
> +               return PTR_ERR(phy_provider);
> +       }
> +
> +       mutex_init(&priv->lock);
> +
> +       return 0;
> +}
> +
> +static int mtk_mipi_dphy_remove(struct platform_device *pdev)
> +{
> +       struct mtk_mipi_dphy *priv = platform_get_drvdata(pdev);
> +
> +       mutex_destroy(&priv->lock);
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id mtk_mipi_dphy_of_match[] = {
> +       {.compatible = "mediatek,mt8365-mipi-csi"},
prefer to provide a generic compatible if not a specific controller
only for mt8365.

Thanks a lot
> +       {},
> +};
> +MODULE_DEVICE_TABLE(of, mtk_mipi_dphy_of_match);


> +
> +static struct platform_driver mipi_dphy_pdrv = {
> +       .probe = mtk_mipi_dphy_probe,
> +       .remove = mtk_mipi_dphy_remove,
> +       .driver = {
> +               .name   = "mtk-mipi-csi",
> +               .of_match_table =
> of_match_ptr(mtk_mipi_dphy_of_match),
> +       },
> +};
> +
> +module_platform_driver(mipi_dphy_pdrv);
> +
> +MODULE_DESCRIPTION("MTK mipi csi cdphy driver");
> +MODULE_AUTHOR("Louis Kuo <louis.kuo@mediatek.com>");
> +MODULE_LICENSE("GPL");
> --
> 2.40.0
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
