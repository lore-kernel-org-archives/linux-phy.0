Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53093C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 03:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivBFEkEDljKHxp/NbKbORisuTZckf0VXDHIUAMu6wPo=; b=r0QZ2Iuxn0tLcx
	kOFsG6ukpUfvHB6BnvIZ53Rg1AUHqVtwJuIrmVp4Vy845GHxOBFJMOMJf2eRG916dplNKNLbmP+HA
	lPAU8/9DmSqTGDqf/7p7S2p0WS5NtDyeofpR3xLIYXj8jx5e+mIeVzuSt/g+fJDQEiM0tmspPFulL
	khLwnKfz8culhYaanMqFtBFCJqjATH9AZwRBhXFvQax/dfxfymjKkdLzrtsV8qwNfvYxYnLT3ksEE
	gpVqr/KMizA+5AXROCXM6Joao7u65JxZNWLPrj4K5Z4OGOXxCYbM2LZvJ2uaw8Q5Boja6F27h7NH/
	gvj0KgQii4ESUkqgYb0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9dvS-001FMp-M6; Mon, 26 Dec 2022 03:13:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9dvP-001FKE-98; Mon, 26 Dec 2022 03:13:17 +0000
X-UUID: 0d0f5b8385fd422ba73af2236f0afe36-20221225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=0RGMsfvBkY7lgi9HWLTV6CYFCnu6rjP/RWt+G6FwJZA=;
	b=CoVh3BkT576l85nkFE5gLqbau4QvEjpRnK5kTz0zdBP2Mp/SKzag30KODeRmhFJCeZfnTQNYiveJ7e9ZiwWEl1pR2z6WNk2asJPM41AGCB1lv2wViUjnWTeBKWfsA5zHho/zMM6jin3xVB753Y54oZ+o77eDTT3AllQ6tPHgELw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:e151431b-e047-42d1-a5d0-63c4a6cce447,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:acd9c352-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 0d0f5b8385fd422ba73af2236f0afe36-20221225
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 647585768; Sun, 25 Dec 2022 20:13:05 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 26 Dec 2022 11:12:32 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Mon, 26 Dec 2022 11:12:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktsohy72uWtPNq/Dq0EPiTgXJhKoCGJgHMYCDeLCrG/PpcyKWzMd5ChLChcd3CV9UdV/MSyJZmIcnvkqhbNzOS1MFhx0G0EzUJ1kfvoCig4qgbLaiBK2HRVOnY3punN3sjqsIjHf3BayK3xq5FABsvWOzyHitdS+0wPROCfKCGDKn9iCccP0+XCXGWjCjIHvbUzhSkEm59qOatnXC/sV/K7Esig9o13pFqIJMEdlnrnYGLGzPTsp/Zy8MVNUvyP00lQzHXynRAoBqrGYSquMEOZCk7oRjig8N4bMtiRlNk0fp3P26nVh02FDcYqJ1YjyxPCXdMUSCjiQBBjUb5Kt/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0RGMsfvBkY7lgi9HWLTV6CYFCnu6rjP/RWt+G6FwJZA=;
 b=TZTtLxpqY7av/5fvpK1ghECK/UPUKYqZPlv3u7AJaXLDyXCImUOkNI9PeG+/mxH37Ek5roOGg2MLbE1GcSWUkQChxRpUYnEuUllC0CHDhbwgbWK22Y/F+YK28iouHQw7dFsDbC8mg6Nj82BgT7TiYhrh68K09bfPN7nQvlGyGqnecRQx/rHl5mGEyWsNfotP30rpFq5t0cj74mlF2uVcG2sN/EqwMMOB/OmvZLk6+kqC+Zn0dgig01837d3GuKGqXuggcPIGACyTfqDuuczTbrCBD77dC3Sk+Di81obMRey3tRle7YjSKRJ7qdaDVdFKMwWNSvvDo4HmfGvFsEXuZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RGMsfvBkY7lgi9HWLTV6CYFCnu6rjP/RWt+G6FwJZA=;
 b=gG+3/dDQE6f7VYUtqnuMYoK73NQ4UAi26IkcT23W4duHN5kQdBW43yTXWM7A7w1irdrSsB5JEFLVjmWAz89b3pFC8SznKobKZnfJyykc3idTz6j0315LvZpqv3ehHaxc/zmJVxQDNJ/9uvLkxmT6yMQ9IbdOx5rj9Uv5Y7fyN90=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by KL1PR0302MB5426.apcprd03.prod.outlook.com (2603:1096:820:46::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Mon, 26 Dec
 2022 03:12:29 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::99:4418:290a:ce5d]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::99:4418:290a:ce5d%9]) with mapi id 15.20.5924.016; Mon, 26 Dec 2022
 03:12:28 +0000
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
Subject: Re: [PATCH v3 07/12] drm/mediatek: hdmi: add v2 support
Thread-Topic: [PATCH v3 07/12] drm/mediatek: hdmi: add v2 support
Thread-Index: AQHY8Ffe+1ZB8K1DFUKMHr1G5htplK5/zxOA
Date: Mon, 26 Dec 2022 03:12:28 +0000
Message-ID: <8060f38c3db6d2f6e1cb7eb6d6bbc199d289aa7d.camel@mediatek.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
	 <20220919-v3-7-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-7-a803f2660127@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|KL1PR0302MB5426:EE_
x-ms-office365-filtering-correlation-id: 671d5c17-2ce6-454c-55a7-08dae6ef053f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tzbiuEcFCiXN7KS7drRcfulSpppdtgnlNQw/G0r43IU24iCiKsOWk/P0O9IwKvbw/OXXkv80411EQ2yHKcjIHAVKm30bDf+PBxRVKOt5TohU7ox4pVUwrS81x30z280mSyUE4tqe0gSgBSViIyavBio69gC0TJ8GI49V0F02Gnlv/UkT16HNs3UYTfKekc6NlFCxl/2PvOtMln06v/1Oj4cJqKYif7HF21vmWEeGbbql8AxLE/0opob42IHYqR8PDorlMcpmyc37Djcp/bMMjOK9Tfp4/Qh/nuIO1j58mzcTEfoCjSWxY6CWS3jjDJQaSTf325G842slwRinAQfcOKamUtGEHt3zmnTumapkLsHmyXJjSX2vXJB9Feeevc30pbcj2ZTmH0wyl52h/Toa7Pq1aCOflFM6C8pSreoBxOY/cl3K6C6KwOgY0vH3PW5dVqZ4XmmNQGKKtRgO7Rk/+2g5wRt5lInc+DJ6+ZjH82GRJy5KMNbPKhVLPUYSltTpWfuSIVnuJ/xbsf1pSvMd5Uij8iayAnzkNQEisKIp7C7bM9dFsUAYFvg3hAZOD3ugds+Bd/uky2plKrqyg/qCHhGHlc1e8AG5HE9LNnAzRo0DfP3/7JRDYo8ubDCWd2kEe9cMbo7uV0lcLWRc9Fh5jwvhWJ05OJ1Z1e8t/feyqxNB8KwVUqot65klBe4TRb6w02juckQIzlOR70Ji7Imq9/MY9KbAPSkj+uh7c/MML7gegUUBBnIKSYjzc8b1sMJI
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(451199015)(6506007)(71200400001)(41300700001)(186003)(26005)(6512007)(2616005)(83380400001)(478600001)(7416002)(85182001)(122000001)(36756003)(38100700002)(110136005)(54906003)(921005)(8936002)(2906002)(38070700005)(316002)(6486002)(966005)(5660300002)(86362001)(76116006)(66946007)(66556008)(66476007)(66446008)(4326008)(8676002)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clpxK2d0aDc0a045d2ZTR1FacHRZTjBWSGg3UVBzQ3VraHJIeVBkMVVzQ2dl?=
 =?utf-8?B?NVdaZEE0T2ZvQXpnYWpNK21SaFpGOFI3VFZvM1VtU21Sb2FtWkVMdVlUVFMv?=
 =?utf-8?B?R2trMnowaFRJaHoxc05mQ3pVWFNxTTNxaFdiNEdXTXArYXZMcVQ5aGNvclFF?=
 =?utf-8?B?dzV1V3daSE9YMFRaWmxMb0ZKZXJzb1lmWTJydnFCOCtyUGJhM0VGOXRnMmF2?=
 =?utf-8?B?ZitFbU1oMkQ1VEVUVVo1Ym5jOGZOWGs5SWRhYW0yUjdPeHFmWklCblZ1RFF3?=
 =?utf-8?B?b0UrTnVCM21BdWJJVFpLeXJJZG9RYVRPQXFjczVYeEdwNXE2STRWVWRlbDho?=
 =?utf-8?B?UDdTMWh1c0t1ckZtZlQ5RFN4V3FnYXRCNGROOUJQd2haQ1BHRDk1b1lGTlJu?=
 =?utf-8?B?WHROYUd5UEVlTDJYZ2xEVnJ1ZmlPSUE4a0huYUZXb1NDbEI5d3BGNUY2RWg3?=
 =?utf-8?B?Z2ZzT3RjbWJCQmtacHpSMmhKTlo3cVh1dUNxS0dXR2wrRVVCeGNHbmVlUDls?=
 =?utf-8?B?bWxvcGhwS2NVN1Y5TDJ3RXRSeVVza2FMU3ZaZUtZS1FvTnZ0ekxQVUQ4L3pP?=
 =?utf-8?B?VlphZDIzRm1RSEhRNnQyeHozUTduaWtHbkxVZllqbWc1ZzB2S1J6bzVMOGQw?=
 =?utf-8?B?RHZPRzhBUzlwQ0VSTGovODhqcXNqTDR6cFNWTC9RditSSjZoZSs2NkFBNS8r?=
 =?utf-8?B?RmgwbDJWQmZIWFQrMzdEdkVJZ2V6dzcxKzRpeUx2RTZNTnBuNm1XcTJ1NFVW?=
 =?utf-8?B?bUNLRzZ5UEE5SHJMNTV3ZTFCYlo0TnhieGhlelFheFBuSUxOMFVsWEN5bWhu?=
 =?utf-8?B?b0F0NWp2bDFsdGt2VkZlMnVncXBxOEp3bFJ6SHB1V3ByZk5PdTlDUElSeHBz?=
 =?utf-8?B?WkxWTzBxRTNPcWNad2FTeWRHTDY5VFBDbGR5dko3SW9IQW9JUHNoVzNzZkpV?=
 =?utf-8?B?bUNWN3VHeEFGR1ZZSWJvR1duUkFBQ1hYMUNLUjFyLzNkQ3ZxbFhYZjFiaFdT?=
 =?utf-8?B?Z2dMNGNqbzg0NENnNTI1NFloNElqK3VSOUlkUHVTZTJ1aHFURkVCRllBR0xN?=
 =?utf-8?B?TXp4SGpqYlhRUXh1N0dlbk12anBOdS9SeG9kdEUwc3N5VzhraHhRU243bmtF?=
 =?utf-8?B?TDlGNU9jSGVYbFBqTFhpMi90T3JKbXFrUWFhZS9RN1VzK0MrcXozYzU2bHEw?=
 =?utf-8?B?bE5YQ2w2Y2ppbHNrVE1VUklDK0RETCtpNERyQmNBZmtVUTBoL0FPdXpidVZJ?=
 =?utf-8?B?cC9rUVJRNis1L1hLYkVJcmQvclJGRUpWWmpqd2tkN2FsMnJxcVJXZWVPTkxB?=
 =?utf-8?B?a3I5dS81a0xQcVpVMnpObExKK3JMVFRqK1c5V0o0R25PNzFzOUtaNGM4d2JE?=
 =?utf-8?B?bGx3QVBrK2JUUGgrSXBFcUFhemRLbE5RK3lJMDFXTFZ1eVBNS0x3UUhxV0F5?=
 =?utf-8?B?T0QyZU1VK1Nwa2xQMVJnNzdEVTBrekxwemNhSTFoaGhLNGpHeGEwY1RyM2sy?=
 =?utf-8?B?NkNQWXI0QktHNHE0elVDMjliSjdoR3FwTVdpNy9KOE02T0sxOEJzaTI1eURI?=
 =?utf-8?B?bFhsN1kwd3UwM1Z0alJkT3hSdFdzNXdraGVMTG45TmQrTDNVQXZLaVZucjZG?=
 =?utf-8?B?ZXUvWmJhQnM0bFhWTWFmV3VhYUwwM1NCQXAxSUVmVmFoSml0ZjNuSkkvOEZP?=
 =?utf-8?B?RThOQkE0ZmUxOXFiZGFjdHdZcEdjU0kwdGxnM01KTWw4RTVRZUFORC9pTGlZ?=
 =?utf-8?B?YThLc2hTMFpqS2VjemtMSTN3a1JNN2dGSW54UUkvMVA4ZmthdHhObTgrMXU3?=
 =?utf-8?B?ckZCTGVzeDhSTXBPcGw0ZWpUSHJiaVpXV3VraEFWaXpjaS9FbnpqZ0QxOC9W?=
 =?utf-8?B?dzdoZG1rQk54ZStjOXI5V3lscS94WE82WFlHR1M0UEdULzBmVnhGaXppVHdB?=
 =?utf-8?B?a3NERm9jbVlvNktWQ3FLSHl6U29FU1lIdExWZlNzNDIxSHBhZU9lWlE1Wkg2?=
 =?utf-8?B?aUUwZUNlVUp0RjByWnVTbHUyUUY4ZXFzZlVBZDltSlhiMmo2S241NGZoVU9k?=
 =?utf-8?B?SzNNSEcybmhCb0Y4L2JHWGdXQ2J4bEVGNE1zSmh5YVlMMGNNNkNJSTJiVFUx?=
 =?utf-8?Q?F8N3frvR6EqOFbXFCn8afug6Q?=
Content-ID: <CBB0875CF0C81D4386E7E75B9205AE30@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 671d5c17-2ce6-454c-55a7-08dae6ef053f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2022 03:12:28.5643
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gVgZaLaCA4K31L3t/c5BZkCvCBrMpdtRcswA58XK3FgygR6CFlVhs/BVbpL7tODsOOLHIv9T79fYpn3plW2H4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0302MB5426
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_191315_343805_0EFA0BA8 
X-CRM114-Status: GOOD (  14.14  )
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
> Adds hdmi and hdmi-ddc support for v2 IP.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>  drivers/gpu/drm/mediatek/Makefile           |    2 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.c  |   14 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_common.h  |    1 +
>  drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c  |  367 +++++++
>  drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h |  309 ++++++
>  drivers/gpu/drm/mediatek/mtk_hdmi_v2.c      | 1379
> +++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_hdmi_v2.h      |   29 +
>  7 files changed, 2101 insertions(+)
> 
> 

[snip]

> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
> b/drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
> new file mode 100644
> index 000000000000..f4c3652f4eab
> --- /dev/null
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h
> @@ -0,0 +1,309 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2021 MediaTek Inc.
> + * Copyright (c) 2021 BayLibre, SAS
> + */
> +
> +#ifndef _MTK_HDMI_REGS_H
> +#define _MTK_HDMI_REGS_H
> +
> +#define AIF_HEADER GENMASK(19, 0)
> +#define AIF_PKT00 GENMASK(31, 0)
> +#define AIF_PKT01 (23, 0)
> +#define AIF_PKT02 (31, 0)
> +#define AIF_PKT03 (23, 0)

Useless, drop it.

> +
> +#define AIP_CTRL BIT(10)

I think this is

#define AIP_CTRL 0x400


> +#define AIP_CTS_SVAL 0x408
> +#define AIP_DOWNSAMPLE_CTRL 0x41C
> +#define AIP_I2S_CHST0 0x414
> +#define AIP_I2S_CHST1 0x418
> +#define AIP_I2S_CTRL 0x410
> +#define AIP_N_VAL 0x404
> +#define AIP_SPDIF_CTRL 0x40C
> +#define AIP_TPI_CTRL 0x428
> +#define AIP_TXCTRL 0x424
> +
> +#define AUD_DIS (0x0)
> +#define AUD_DIS_WR (0x0)
> +#define AUD_EN BIT(2)
> +#define AUD_EN_WR BIT(18)
> +#define AUD_ERR_THRESH GENMASK(29, 24)
> +#define AUD_IN_EN BIT(8)
> +#define AUD_MUTE_DIS (0x0)
> +#define AUD_MUTE_FIFO_EN BIT(5)
> +#define AUD_PACKET_DROP BIT(6)
> +#define AUD_RPT_DIS (0x0)
> +#define AUD_RPT_EN BIT(2)
> +#define AUD_SEL_OWRT BIT(9)

I would like to put the bitwise definition with double word definition
together. You could reference [1].

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/mediatek/mtk_disp_rdma.c?h=v6.2-rc1


Regards,
CK

> +
> +#define AVI_DIS (0)
> +#define AVI_DIS_WR (0)
> +#define AVI_EN (0x1)
> +#define AVI_EN_WR BIT(16)
> +#define AVI_HEADER GENMASK(23, 0)
> +#define AVI_PKT00 GENMASK(31, 0)
> +#define AVI_PKT01 GENMASK(23, 0)
> +#define AVI_PKT02 GENMASK(31, 0)
> +#define AVI_PKT03 GENMASK(23, 0)
> +#define AVI_PKT04 GENMASK(31, 0)
> +#define AVI_PKT05 GENMASK(23, 0)
> +#define AVI_RPT_DIS (0x0)
> +#define AVI_RPT_EN (0x1)
> +
> +#define C422_C420_CONFIG_BYPASS BIT(5)
> +#define C422_C420_CONFIG_ENABLE BIT(4)
> +#define C422_C420_CONFIG_OUT_CB_OR_CR BIT(6)
> +#define C444_C422_CONFIG_ENABLE (0x1)
> +
> +#define CBIT_ORDER_SAME BIT(13)
> +
> +#define CEA_AUD_EN BIT(9)
> +#define CEA_AVI_EN BIT(11)
> +#define CEA_CP_EN BIT(6)
> +#define CEA_SPD_EN BIT(10)
> +
> +#define CLEAR_FIFO 0x9
> +
> +#define CLOCK_SCL 0xA
> +
> +#define CP_CLR_MUTE_EN BIT(1)
> +#define CP_EN BIT(5)
> +#define CP_EN_WR BIT(21)
> +#define CP_RPT_EN BIT(5)
> +#define CP_SET_MUTE_DIS (0)
> +#define CP_SET_MUTE_EN (1)
> +
> +#define CTS_CAL_N4 BIT(23)
> +#define CTS_REQ_EN BIT(1)
> +#define CTS_SW_SEL (1)
> +
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
