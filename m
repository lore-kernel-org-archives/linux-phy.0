Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 852EAC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 06:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYrqCSiVu9At4bJGWWuTeohSEA/SPOdniD+XiPYTPkk=; b=cmXYDRmzjhlOyy
	xuftsMUHRi32zdzU8YwITsihHPqkdEvakL8q/7x9Ow4vINGT248VoSySdCr9ZaGmQ+8p+Q2J0AXXc
	RHJlLhH/mdtVXZnMh6WjGmJHtby5SaermdirfoodUcHQUx/L5NfOBn5d6CKHdVsesAuXXrdXU9Zgq
	P4vyol+IJxSedv2cQeir1aTiLhBpX/MlFH/GoIUnOUV0bGpfllk31ruO8+hwBACHjyO1M7IYwQW3w
	p60HP/iNeDgw3SKbHHkD7qaDd3o3UxHRzCVllr5S4pfTIWtBfsirYk/2e1nAhbEQlZGdzm/FUgX95
	LGUgcREthCsUYCMiNGTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouSul-00GEtS-U0; Mon, 14 Nov 2022 06:25:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouSui-00GEsZ-I4; Mon, 14 Nov 2022 06:25:50 +0000
X-UUID: 954245832d484a129552a302fd2af3f3-20221113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=JQ1ol7OTd159O9qOlR+xwWId6J149MRvixyhE0gZA4E=;
	b=gkfvB89YP2ruaItLv9GgidS8FCaMxZWmY96VvLT/MgbC7+2sYL3YQssuu8ns/g3WsiNfOt/I/xNDwHux7eV10t/SC5+uDQfAK6wzWSoVZ63r/InsnKp61VNrlikVT3yxPEHM4LdxPKqbcJC5I7TO9Xpf2+c1csNsZSzvSnO5cjQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:62d0e5ea-2afd-46e9-babf-b0a12f5d5d90,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:62cd327,CLOUDID:9855a8dd-c087-4fa8-aefb-7a0acf417f59,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 954245832d484a129552a302fd2af3f3-20221113
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1119158778; Sun, 13 Nov 2022 23:25:44 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 14 Nov 2022 14:15:41 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.792.3 via Frontend Transport; Mon, 14 Nov 2022 14:15:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NbxEO5sM2Y2Zjr8D9HafqHXbXzLH1hKUNSUT6qAPL6llYK99GVZWpiJZEjiwz4Qda7pCZM8asasxrr2yndX+iar7dhBBd98kWYGcaXGK62hVN7vC9kHWfE3qFzr7vYSb4IXulMQVv/pwEDsVnYtJaA+r3CDijue6mee9rrvaLKmH0aLX18mzQ2Vk1usvJBNgMnMQgvsA4DKemvK7SBMdy/bHRhXpQR3LPRBkPCoYxfe+yeMKSr0Xsx6UhMZHwqH/+S8o3JFQnYXEdcK82W6zb1zRypQO2+4Ym6kp1J0FuJyRHKWrEigvjxcI3hjb6g3sHGy/MbNHxIFn9ilMggKlUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQ1ol7OTd159O9qOlR+xwWId6J149MRvixyhE0gZA4E=;
 b=KMkO5rUQsADJD001PYyn4BJAQQ8NmeJp2yZBivATaE+St23Rfzkfp1UpaqKmiBXsiJ1A8VHPgJQA1BQvjFc7wldSofuPVQdYyiktSU+n0XAIdiPs3XC/rGTVOLeJbDiGnBH4AcLQtE7sfXjzn0q9w/7D86Cx9pwPX61YXbGhlP4giucrn9OB7T7k0IoZgDI4vlu83Dersb+FMlcHv0PHIRCZHv380aXHW4BxEeuwa/eGGlAVv5nx1pYBwFzZ8GxNs0JwV6mXo/ahg4E0a16ImWeo2SMagvtABhgqFuHKH0ToQKqerpjVZURV4Ut4MMU1RQRQChzMAhPRq8Wmdllkfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQ1ol7OTd159O9qOlR+xwWId6J149MRvixyhE0gZA4E=;
 b=QnxBX/MdpKREDs6N8PtzJhNncFWJ/PAyoJ/k+eNnnUls4JX5wcx9wV7mYlLO7USS3/ciAuEqWoSemyRZLqH2el7r8RUNWiYnVpfXe+TiOFz4kdHZ+z8TBYqYPxkSl9R/bNqEwxN5U/yGHqf7UIyacdTg2BvAj4973uxJeXnbxBo=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by SEYPR03MB6481.apcprd03.prod.outlook.com (2603:1096:101:51::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 06:15:38 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696%5]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 06:15:38 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux@fw-web.de" <linux@fw-web.de>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	=?utf-8?B?U2FtIFNoaWggKOWPsueiqeS4iSk=?= <Sam.Shih@mediatek.com>,
	"kishon@ti.com" <kishon@ti.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "lorenzo@kernel.org" <lorenzo@kernel.org>,
	"frank-w@public-files.de" <frank-w@public-files.de>, "pabeni@redhat.com"
	<pabeni@redhat.com>, =?utf-8?B?Smlhbmp1biBXYW5nICjnjovlu7rlhpsp?=
	<Jianjun.Wang@mediatek.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, Ryder Lee <Ryder.Lee@mediatek.com>,
	=?utf-8?B?Qm8gSmlhbyAo54Sm5rOiKQ==?= <Bo.Jiao@mediatek.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Subject: Re: [PATCH v4 07/11] arm64: dts: mt7986: add usb related device nodes
Thread-Topic: [PATCH v4 07/11] arm64: dts: mt7986: add usb related device
 nodes
Thread-Index: AQHY9nefQfrqiyajkUSPNiketoB1hq499BaA
Date: Mon, 14 Nov 2022 06:15:38 +0000
Message-ID: <9a358e2ef4e6faffa03d227fa947cd30f7e8188a.camel@mediatek.com>
References: <20221112091518.7846-1-linux@fw-web.de>
	 <20221112091518.7846-8-linux@fw-web.de>
In-Reply-To: <20221112091518.7846-8-linux@fw-web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|SEYPR03MB6481:EE_
x-ms-office365-filtering-correlation-id: 66285b48-3ec0-4f4d-63ec-08dac607a648
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r+PB1JaxJOcDeMdM5x6QF6m9BTI9YblahzaX2QvhflFbc9OcC7Va/6D7QIGMWdKxBGLOJWKBpQFxBxdma6nrEms0GzWD6wLybZt4t4Uv+lKbWIdOrLrADtrnNASeV+bmCBI63upt7TvUCmHWRu1E410XRsMGMnTNhhGuAv5OCsDEw41GZP3Ksm6hgouSF/zTMt437jLSkVChI/ApjIOGT36ybtNXM3C1RhwF5Xr9Ox6jhEQQ4Aj/hjzSAzay3zLM1xNhxg6OUyxKSt1crLz7YI4z9K5rtqyjCKKol/BOi0n870aSD7rt6jBWlt/Tzh2xYblRimB6zKID7T8K+0o7atqzQePOhV/nDxjEw9iPAp8TL8HzJ5333f+UtpWoEMme72lwhEVUIzyAVkKdhc5iRlkjnRBjaL4kqjIxNy7pPL1NKptNSviSOvqBXJaKpA6oveCkyhMq/m/aS5e2tJsACbD0UROeva3cjIsdSLB9JhmibMJ4+kL1wFyMwt4waAkeaCJtfKgXwKGbm7XwE9Z38UaiTelsH7HDMgEoN/JIkQToqxCGjqsuWaG1h9al9s84hBaLeREzCUXrquEUuQPPN0ZG3PjJXzQNr8xfF/OryVQt6g6/RIsNDj4xZkltQmmnpxS+eP+6IYy4ooDvBYoXi7Eryd++498ybsbxJlfrymnDmgKAgjBEFeu9LQPuqy6bWEFykXi2gLC+hjJzFP/3ArORAL5Ut1ccmNYFz+3m2wStTXEIQJFi7wG6q8VlEUGLOfEdAgX5OdlOZUOVsL62o4fZlPii2xehxtXTZ9deJVrDLpux3CNRBhvbVhwolQKxFqfmRk/gy5dOb0A1KFzgBr8NjS+++MYgV5hNSFx1GcHxY0pM5+A/BGBnpzqyk2Hg
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199015)(38070700005)(2906002)(186003)(4001150100001)(122000001)(38100700002)(86362001)(83380400001)(2616005)(110136005)(6512007)(26005)(6486002)(478600001)(71200400001)(4326008)(66476007)(66446008)(66946007)(76116006)(91956017)(966005)(8676002)(64756008)(41300700001)(5660300002)(66556008)(6506007)(8936002)(54906003)(7416002)(316002)(36756003)(85182001)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHE1RkhSNWNNMDludk5naHh2Y2ptUStRaXcxUU1JVTl2ZFZnYmZpTjBNUTlU?=
 =?utf-8?B?K0xYN0xUd1ptUk9KaUdaRENOYTROUVlnbDZQNE9sc2lRTUZBbndOKzNEV1VJ?=
 =?utf-8?B?RlZoVE5GWlRIYVVPVDdiVVFaUzBEdjNKeWsxYUZvYjFrNHVBb25Nc0pqT2xo?=
 =?utf-8?B?dmEra2J2THJlS1ZSTVlVbGJkeWdXbEREUWtjaGN4a3VhMUxVcUJEdnZFYi80?=
 =?utf-8?B?K3Rpdjh1UkdKaUN4QTV3OGJFaWVzWGFicmRVUlhtNXJ0aEVyWEFsNUNLd0xx?=
 =?utf-8?B?RGxjM2h2UEVXeVdNRmEwenhIeFJPWXNWeXVxNldReDhpTmZTZ09LekJiYXJn?=
 =?utf-8?B?ejFWcDdaRUdScDVTbUVwc2NYWDRCMGk0d2taT0NPOGI0aTY0eW1GS0RaTGpQ?=
 =?utf-8?B?TU1kK0t0TnhSaGozVnd2YXpLR0g2bFZMT1JyTkhvYkFZTHBUUG9KUE1FOHFD?=
 =?utf-8?B?YVJTaWpQS0JXblY2aWpaMVhpanpYa2sxSmZ4VEo0dWJkRWlqaVU2NHNXTEZJ?=
 =?utf-8?B?SzdJTmpRSDJHa25aSEdTSFk5aXVZNlJGdlhjRjFQSHNjY0ZnMklIZUJXbHdG?=
 =?utf-8?B?TWgrSXdhaUxnV09zN2ZnQVZnWjdPazNPbzJxM2VSc01ua0hhMDE3VjRQcG13?=
 =?utf-8?B?UmlTUy9USGxJS2hadGhXYW5ScWgwd1Y5UEdUbWtFQ0d0Zjg1bmRoV2YwQkdF?=
 =?utf-8?B?R2Ewb0FJVlo4Z1pGUFMvUTVKU2pIM0ZobTJhM3pDTEhrNFl1SE1CZmdjL1JT?=
 =?utf-8?B?dFdJamgrVjNtTjNoWjF0QnZLQmU0UGtZWkN5dTBoUlZ5amV6WHMvalJHd08r?=
 =?utf-8?B?NGVYMXI4bEx1MGJoRjZNZ3hQR3lKellHSjQrZy94WlV0aldYcm5NWHByZEVI?=
 =?utf-8?B?NzhNOTA3dFphZ2JUWTV5TElkYzhFeXNnV1Z3QmJ4cjkvVm00QTJJSW5WOWxx?=
 =?utf-8?B?YnBVQ1g1VjNXNGQyeFhyUDEyZURveEF3aVZlQ2dLUHBSMXM1OHdSS21ra0FQ?=
 =?utf-8?B?TUE3cHdPRHYxMXJMQ0lFK2JZYUpIcVhsODZoTGJxVXF2dHErWERzR3J3TTJD?=
 =?utf-8?B?b09uU0xrclRCelU2aThvVnJNeEcxN2RpZDQ1WDJDSkI0bXVwaXlkZ3VDYzY2?=
 =?utf-8?B?Nmo4MjQ3Z0pmUDBXMUtRRFJnd0h5STBjeWhjNnI1V25wWEh2dVoxNWsrT2JL?=
 =?utf-8?B?dDBuYm5GWlJ2S0lLRkl5bC9XODZkNGVrcGhCNkJKT24rR2ZNZDBaV00wazR5?=
 =?utf-8?B?ZXBzbUZROGd4bVFLQ3NpajVNR3ZZUHlYZ1dEMjU3UGp6anJBMTlFWkZkcFFX?=
 =?utf-8?B?STlWT25UQnREeFN3K3Z1ZDBvUkkwOE9sdDRXc0J1MWJYZUR4cWxiUC9zSWto?=
 =?utf-8?B?R3E1T3kxRW9uTUVkNnFqM0xwZEw4QlFXck9TSFRocGI2WTRjUkk4SlVNOGZQ?=
 =?utf-8?B?bE1FQXpidmsrTGJxQ2Foc1E4MXVmVjJoeCtyYWJHSmh1bHcyOVptSExrclBP?=
 =?utf-8?B?VHMvMmJzZWQrRlQ1MEM4RDg0ME9yR3MxY2thV3NLV25aU0NRYXcyN3pKN1Ez?=
 =?utf-8?B?QUU3amZHNW1PNlFGWkVibUxIYlZvUlBHckFTb0w0ZUlOeWd4dWM1ZXovU0Jl?=
 =?utf-8?B?Z1BPdnZGVTZjbENZTXZIdEx5a2o0d3pJMVVMUTN4OC9mSTVBd0hBVlo4RDZI?=
 =?utf-8?B?ejJuS1lLcXJJOE5DOVRqdXI2NFNnekcrcVdGd3hCb2MwZDlsWkFhS0kwOWFX?=
 =?utf-8?B?a1l1cGs2V2pkbXI1OTZPRE1QNk5FQlRXcis3RXZ4Vlo5T2dKeEVmR3RlZ0NF?=
 =?utf-8?B?Qys0WTYrQnVVRkQ2M05STEdTb1NTOGlzM3hrQTJha3A3aWorVC9nR3BRT2U2?=
 =?utf-8?B?QVVwL09Ed1VZUXE2MVlpRUoveWhZbmRkdzUrRlNGSmhCY2cwRU5OZ00ycEZo?=
 =?utf-8?B?TUwwMC8vcGVIVDNGVjh5Q0JybExRU1paTXIvYWV2TG1Dc3lJYzNYUXRsNzFj?=
 =?utf-8?B?MExKYnJBbVdhTW5hb2JDWHhHVXNmVmduTHZTRDg1NVI5SnJnWHpHQU5Semhj?=
 =?utf-8?B?YWRZeExoVVN0YWpxT3E1SWVzNUo5MWlZcDdYSGJqTEhsS0dsNnlkT3U2ajYw?=
 =?utf-8?B?bS9NaUxibHl1RC9NTnZqemRxU3lrcUFweVUwQmFpekhwTFVNb3ZpaUxIZnRL?=
 =?utf-8?B?eVE9PQ==?=
Content-ID: <6915EA7E28723D4E8C4A1A45D9F0FCF8@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66285b48-3ec0-4f4d-63ec-08dac607a648
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 06:15:38.3023
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V8ctebuyLuNp+JKQt2fFkT48Zp+8uU7PDUCttlQBVoaXai2rQu0lpFAkUK0vbh6EHtUIwyE7YDh+c4ZMJ9wa5o2lILp2OtB0LjhG2mgXdmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6481
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_222548_790252_16BAAE6D 
X-CRM114-Status: GOOD (  15.86  )
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
> From: Sam Shih <sam.shih@mediatek.com>
> 
> This patch adds USB support for MT7986.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes compared to sams original version:
> - reorder xhci-clocks based on yaml binding
> ---
>  arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts | 28 ++++++++++
>  arch/arm64/boot/dts/mediatek/mt7986a.dtsi    | 55
> ++++++++++++++++++++
>  arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts | 28 ++++++++++
>  3 files changed, 111 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
> b/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
> index 006878e3f2b2..2b5d7ea31b4d 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
> @@ -23,6 +23,24 @@ memory@40000000 {
>  		device_type = "memory";
>  		reg = <0 0x40000000 0 0x40000000>;
>  	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_5v: regulator-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
>  };
>  
>  &crypto {
> @@ -140,6 +158,12 @@ &spi1 {
>  	status = "okay";
>  };
>  
> +&ssusb {
> +	vusb33-supply = <&reg_3p3v>;
> +	vbus-supply = <&reg_5v>;
> +	status = "okay";
> +};
> +
>  &switch {
>  	ports {
>  		#address-cells = <1>;
> @@ -201,6 +225,10 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&usb_phy {
> +	status = "okay";
> +};
> +
>  &wifi {
>  	status = "okay";
>  	pinctrl-names = "default", "dbdc";
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> index 29da9b8ed753..2bcf48890ba8 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> @@ -281,6 +281,61 @@ spi1: spi@1100b000 {
>  			status = "disabled";
>  		};
>  
> +		ssusb: usb@11200000 {
> +			compatible = "mediatek,mt7986-xhci",
> +				     "mediatek,mtk-xhci";
> +			reg = <0 0x11200000 0 0x2e00>,
> +			      <0 0x11203e00 0 0x0100>;
> +			reg-names = "mac", "ippc";
> +			interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&infracfg CLK_INFRA_IUSB_SYS_CK>,
> +				 <&infracfg CLK_INFRA_IUSB_CK>,
> +				 <&infracfg CLK_INFRA_IUSB_133_CK>,
> +				 <&infracfg CLK_INFRA_IUSB_66M_CK>,
> +				 <&topckgen CLK_TOP_U2U3_XHCI_SEL>;
> +			clock-names = "sys_ck",
> +				      "ref_ck",
> +				      "mcu_ck",
> +				      "dma_ck",
> +				      "xhci_ck";
> +			phys = <&u2port0 PHY_TYPE_USB2>,
> +			       <&u3port0 PHY_TYPE_USB3>,
> +			       <&u2port1 PHY_TYPE_USB2>;
> +			status = "disabled";
> +		};
> +
> +		usb_phy: t-phy@11e10000 {
> +			compatible = "mediatek,mt7986-tphy",
> +				     "mediatek,generic-tphy-v2";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
Please use ranges with a triplet value (child, parent, len), refers to:


https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt2712e.dtsi#L891

Thanks a lot

> +			status = "disabled";
> +
> +			u2port0: usb-phy@11e10000 {
> +				reg = <0 0x11e10000 0 0x700>;
> +				clocks = <&topckgen
> CLK_TOP_DA_U2_REFSEL>,
> +					 <&topckgen
> CLK_TOP_DA_U2_CK_1P_SEL>;
> +				clock-names = "ref", "da_ref";
> +				#phy-cells = <1>;
> +			};
> +
> +			u3port0: usb-phy@11e10700 {
> +				reg = <0 0x11e10700 0 0x900>;
> +				clocks = <&topckgen
> CLK_TOP_USB3_PHY_SEL>;
> +				clock-names = "ref";
> +				#phy-cells = <1>;
> +			};
> +
> +			u2port1: usb-phy@11e11000 {
> +				reg = <0 0x11e11000 0 0x700>;
> +				clocks = <&topckgen
> CLK_TOP_DA_U2_REFSEL>,
> +					 <&topckgen
> CLK_TOP_DA_U2_CK_1P_SEL>;
> +				clock-names = "ref", "da_ref";
> +				#phy-cells = <1>;
> +			};
> +		};
> +
>  		ethsys: syscon@15000000 {
>  			 #address-cells = <1>;
>  			 #size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
> b/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
> index 2c7f1d4fb352..a98025112b5a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
> @@ -23,6 +23,24 @@ memory@40000000 {
>  		device_type = "memory";
>  		reg = <0 0x40000000 0 0x40000000>;
>  	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_5v: regulator-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
>  };
>  
>  &crypto {
> @@ -167,10 +185,20 @@ &spi1 {
>  	status = "okay";
>  };
>  
> +&ssusb {
> +	vusb33-supply = <&reg_3p3v>;
> +	vbus-supply = <&reg_5v>;
> +	status = "okay";
> +};
> +
>  &uart0 {
>  	status = "okay";
>  };
>  
> +&usb_phy {
> +	status = "okay";
> +};
> +
>  &wifi {
>  	status = "okay";
>  	pinctrl-names = "default", "dbdc";
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
