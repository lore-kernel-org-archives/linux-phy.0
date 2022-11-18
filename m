Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F132DC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 07:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95/DFYuNynQvsIWy/k+6K/v2WZz9Wf0gAhsnhccd0Gs=; b=w9lVtwoGU4l6XZ
	cynHyjjrVBHEra1I5aMNe/YoOhIoc1q/crJJKBO2HVEFaBZGBy6NZtF8G0PdSMYH1SfBKlFQI67eK
	gtuE+s7qVxl5wuUxCQsV3BDJTybj6RSr7R2aAfbIn5pqMiakDpqP1aBOU6vQzQQQzsKjr1+9IxBfW
	rHMCIrz/WhVX8yOpJGf+ohImScSq6NF/RqomQQzg9JOANijWjNnvndf5/W5Lkbd6ud9GK7n5tPQKQ
	Uq+BSi1eGFw6fWvvHmr+7EJM3LCY8J6rtrbn+fv8ptJXXjGcexMN9EsysKkZOkTF3fsf4nL88doEL
	9czgrk1oJLfx/0aE8D1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovvZH-002UO4-Dt; Fri, 18 Nov 2022 07:13:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovvZE-002UNK-VM; Fri, 18 Nov 2022 07:13:42 +0000
X-UUID: c894ee704478455bbdf4e6f23d918e0b-20221118
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=o1tUzC6b3uBh1EFVoarYZGxxMceghZGfo6AQhoIsBWk=;
	b=uoIsMrL5gLfAn/fH0VJOg7f6Ej8jxNhKGv2moml4tUIeGIEXsNp2+T4N82y3/2C7H2yPtnFjWl2c0TfxzX0wsLxNNl9sTsrSIUClP0T50U9m5ja6NKFKci8rHxHiJFUPYqY7lyzNBbFoWtHLU89qIc1yeKIt1ATG5MeXKNdEmn0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:7cfd9912-d05a-4dd7-9a69-698c46dc866b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:62cd327,CLOUDID:04b3252f-2938-482e-aafd-98d66723b8a9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: c894ee704478455bbdf4e6f23d918e0b-20221118
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2137617390; Fri, 18 Nov 2022 00:13:35 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Fri, 18 Nov 2022 14:43:26 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Fri, 18 Nov 2022 14:43:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERJbeAOdHij7y0w1aVbl57dbv1QwfhM0gEFL2kGrgl9Ko4weeCeEzl5tksbUbWhz79hmDr1zDa5c9CsdwUPCaWHMv6eooZBdIPyv8dMUux54OZfExCnYQFmnUQPwxllegonF7p7jpO9eFPBVnLaOaxQ9JCuorAA9Qk4Y6FDRVkbyKcNkhtAbUUwcZP4HfHCu3K2JDmlHHdfLssmXnibhkhTT+ckH/uTVeJm7etysTJ1Q1ieg8SazO+9XkjWyxQaGL6Wi/Ug1IiY+EYe0UTVFkjswBV+S+ixXO7DS8Tx2KA7nfUXFUF8wMArP3yI7pPeaYj/ZizBz5kbw/aFu/v9iMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o1tUzC6b3uBh1EFVoarYZGxxMceghZGfo6AQhoIsBWk=;
 b=Ir+eHx9BX8D+sH3xoB4JLffPA7bS8k+3ClBakDrIdBnrAeAeyUxLdl6Htb6wog6v8FO0uo72K4R6kYDJmhl/zzqMNKNLgAmoUuxaiNV2pdchy17CFf78LP7D34r1Qlnu9biuWoOeoiK43rKp5pbPmBG6OKKbBXvuBrDaJsPPCENNeth/tUyogOrnAWSGfAt7FPLV5gbzrocnoCc8RYCGrdwF2NMFBY0rqajzNFc7YBEi3dj2fLfZge5aI8iZs1aaD9RltpeSNHKC8Iw86gfZYCX2I/a97YpPuHdx1P81DRSovCvc77Sl7QSS5N+sm+tb4ax88tMmQfWqdjncCtn2Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o1tUzC6b3uBh1EFVoarYZGxxMceghZGfo6AQhoIsBWk=;
 b=nB7IzICOo5dpWyF5nc4KUbeBrV1BsRJYBkgyXG85TQCyoh3FcFUBhY2YLE/KeEeUjqLPVeODVBe3RbKOuH7/YPLDMyvOHDEAPHW6GSyevrJwLtdWf54aXh8Tj3fHrdWWg9pBiAcFAwTSJoPjsKFDgD1x6jxcSsLwdMpoyeV96LA=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by KL1PR03MB5569.apcprd03.prod.outlook.com (2603:1096:820:5e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Fri, 18 Nov
 2022 06:43:24 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696%5]) with mapi id 15.20.5813.017; Fri, 18 Nov 2022
 06:43:24 +0000
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
Subject: Re: [PATCH v5 07/11] arm64: dts: mt7986: add usb related device nodes
Thread-Topic: [PATCH v5 07/11] arm64: dts: mt7986: add usb related device
 nodes
Thread-Index: AQHY+qGy4EUX0DezVkKc1Cw9AG4bE65EPNYA
Date: Fri, 18 Nov 2022 06:43:23 +0000
Message-ID: <6417076e019640b23fff85e27798b277c74eeb74.camel@mediatek.com>
References: <20221117162728.20608-1-linux@fw-web.de>
	 <20221117162728.20608-8-linux@fw-web.de>
In-Reply-To: <20221117162728.20608-8-linux@fw-web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|KL1PR03MB5569:EE_
x-ms-office365-filtering-correlation-id: ad276280-6497-47c1-fb0d-08dac93030a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0LsBRVvTIkrAjBYU12p7O8Z9nOfYdIjUuOHLOe1zdrEgpy4jIww7o9Fjl3kFn8dfIie3fx8AoTqgyRhIiou/467QkmRodCG02V+UvGSoWxZkzb2Va5AV9yADFtO8ZM50MByipHiPAz8vgmbZ3IikNTLHeYBWeqvvfv4plfdI2fLKK8abmcdaBPIh9hOaqwvxlS2/Ig+gzshycT4MkrmT4171Ew7LWE2j9mNYfR+lASTqEC4gaGTMx2h/DAgEnaqhf7seiCnVSdrD7MxDTdh44nMKNnwPElSRnnu6AI+82nsSXnafrvKXZh3qXinJYuBGMX6fuZ9QLK6MKbFgdZ6TyspEAa9KtwhV5fakA+imeoiBsjjyvVhJJOal6xMls1GuyMlV3YCv/MJ4HOML/Rz3u3jWxbDbRcLMyRxO0CO1G9ovBBBExgclamGzwTJDet6my9LLsxLCKcPTo4abZ+XZT2A57vHHiKMZyk1+PflKh0PCQVFXuKveIcPYOBzbUasZVhGg+vu+w49dxqO9fbaNalReDC5be0/WEIgqBrDoE+5zp4hHjM/kGKR09bjNkHKIdmp/naC31b6ZqwUwS/4G/1nn1RNOzIHgh5uuaz7pDWCM48cOp/gQqIZraYCyU2Tkp1Vn/Z2ouyfQdG1byiO5BcxHYMq6rJTrzhTkcCFPlNLcuMXoT7AUc/t9jB89uqGmkAUksjNSz/IsluOik5D7axe6iof+5p9aj0HKPyOu0TU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199015)(186003)(316002)(6506007)(54906003)(110136005)(41300700001)(7416002)(66556008)(76116006)(36756003)(4326008)(8936002)(2616005)(26005)(5660300002)(66946007)(66446008)(64756008)(6512007)(8676002)(66476007)(85182001)(122000001)(38070700005)(38100700002)(2906002)(83380400001)(4001150100001)(86362001)(6486002)(478600001)(71200400001)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVU4U1dXR1ZrdVA2SXV2UUlZZmU5Vk1UYVdnMXZEQU9vbEFvODdsZTBoTk80?=
 =?utf-8?B?RlljSkd3cUV6d3lUaVZ5aVpoT09MR1o3QmlnSktWM0FIQXpES1U2ZmIzOVd5?=
 =?utf-8?B?VWpxT01EK0VQSGdRcENCZXNjbDRUZ280NVhSN2luNFZyNnpCRS8zclpJdDJj?=
 =?utf-8?B?OW9yczl3aWNQOFFmVlh4cFdMbjVuNUNJRHQyMVZGd0ZsdGVTcklYTzBGS0NQ?=
 =?utf-8?B?dTk2ZmhHcDFqaW5WaFJNbnArU2ZvM2RsZ0dZbzBna1FsTVVFLzJmbGgvUVZz?=
 =?utf-8?B?czFRNVBPTFpiTnFPeURYUG5wUENJZ0thc1NkYk1ka0d5UC9UcENuL2M0M1dv?=
 =?utf-8?B?U29CWG9aYXZzaHBKRkYxV1JIZE81UTFpRGRTaWMwZmVKQjJVS3VKNnpCc2cx?=
 =?utf-8?B?WlkrdzI1eTFma1U3WDdnWXVNeW9IUEVlVkUvMERGV3oxd2J3K3hKR0FldkVw?=
 =?utf-8?B?N0J2R3NZd1V1amhMQlVDRXQ4NXRiZW13N1VxWmRKUkZsU2s4M2RzaEdpUDd3?=
 =?utf-8?B?SEFrVy9qbXRxclFEN3FvcWRXaVBoWjgwaG5uNmprVEdEQXBza1JZY0RXLzQw?=
 =?utf-8?B?UmlxNC9iUkw4ZmJ1UHFka3dQdGxRWEtQc2FCY1lHeGZ6RDZKbUVoMlVHd0Yv?=
 =?utf-8?B?NDFxejZFOGxhcHZhZ3hKQzA4Z25lN2RsL2xqektxWU9kK3ZnUU82cjFnLzlZ?=
 =?utf-8?B?MW13eTBwYWRLVU9hcW9SbG5NSmM4UThPUXZudndmdzRWd0dWbG11TTFFMnVT?=
 =?utf-8?B?WStEbUpQRmJuOUcxRjJFaUI5SjNhWGx6YzJ1Zmw3d04vZXhQaFZWQUxrL0lh?=
 =?utf-8?B?Y0ZPY3JyeHJWa0UrTTlQMVRFMFhXdGdSc0Z2MW9TblRwNlYyd2RsaUFYczBP?=
 =?utf-8?B?NzVEK1gxTWxGbnM1Y3JKYzU2SnBoMzJTS3k5RC9GOXN4QjIwemxxZSs1ZEZ1?=
 =?utf-8?B?Ukg5alVsQ2RNdHpROW42ZjdGa3Q3U1FHNzR6R0E2TkFRNzVUdVkwNXBWa1hZ?=
 =?utf-8?B?MHRPMmJHM1JZdmhmOGhTdFQySmYrTWRMSnBESVpQa3YvcmVvL2JTU3JpSWRV?=
 =?utf-8?B?djdBbzFFUUozcURsNkRFSmQxaTNKdVpTQ0k5WnhGSjJhdThQWWVpRWhtd20w?=
 =?utf-8?B?WHJOUnZSenZxZUFzRk1vdmZxdk1IQzhDeWh1RU5WVHc0RVd6V3UwNlpHYXFm?=
 =?utf-8?B?eERXS2J4R1ZrWWc1RVV4NWE3SjZ0MkMweEtha3o1Z1pIdUgyTUY4RHZJSTJO?=
 =?utf-8?B?TFJyUlZMUDh1RHYzTlloOU5WTjVYdE5ObStObTFZZkJLQm5pckxERmpJUENK?=
 =?utf-8?B?QXdGQjhBS285MEJkaU5Nd2NmL3laVHdwWk5HVm1wSEk4amN4b3pFMXU5a2xs?=
 =?utf-8?B?YWpmeVhub3VTeGluVEFlb2NyVWVnVFI4bmluWW45QTRiNG9iMDF2RzlRODEr?=
 =?utf-8?B?RXFXenlYK3V2TVZjbWppVmJwUUl1dVQ1QnNlZks0UUl1VUtJeXpCTnhrRFZl?=
 =?utf-8?B?SUtGRDJsT245Z3RMV1puZkR2NEM2dGRxNzNuTmJyZUlmbkwrUVBrNHJZVXNS?=
 =?utf-8?B?ZmRFZmZUV25uOW4vcStHSncyZlI1UThCamFKaG1aeUhlakVseW5pL3pBU1Nm?=
 =?utf-8?B?Nkh1SW5JRC82bXRNcEl2OUJBOXJOQ3JWN1hWUlpDOGJ2T2tYc01xTVVRNGVr?=
 =?utf-8?B?aVhUVmlMMzBIaHBIaFgrYWw1RWZHQXZqa3QwWjd3OHV6KzU1MjR5cXNJMnpF?=
 =?utf-8?B?Rkh3TnpqV3htRnlWRlUyeDR6aFdITGZESmRmYWtxRGNpcGdHenlwYStFSTln?=
 =?utf-8?B?S3g2VHNZdFdGWCtHTW1Ga25lMU1qcE9DbmhhODV0L2VKeEpXcGNWMHY2ZnZh?=
 =?utf-8?B?c3oyaWJvQ3o5Y0dUK1I3R3pqd0pLMU5xWEkzOVJmbzdSeCt4UXhDc3VWTGNW?=
 =?utf-8?B?b1RLT3IyYVZqUnlTKzROT0FzTWZmSXQzL0pBMmRTOHliaTg1SEtxOTF4dkpr?=
 =?utf-8?B?c1VmMUtoTHhibHJQbGVxVnBnei9ad0s1SndQZ2V1NXVNcHhGTHo5OE5yaWd6?=
 =?utf-8?B?UDI0dTI5K1JicnVxZnhVQm5YdE1jZGV2MXlKOXV3QTkrVGJOcnlZd09RcFFw?=
 =?utf-8?B?ZEJQcVBPNFNLYzY3TFJNUkFaZ243UTZ2QVpkZXBtYVM0YjV4VXh1bU5SQ0dv?=
 =?utf-8?B?TWc9PQ==?=
Content-ID: <E667854FA6693249A80F8BF981A9EACE@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad276280-6497-47c1-fb0d-08dac93030a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 06:43:23.7987
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jj1Q71ADDYdBg2b5Mgzie7RRq3IcgjRKca1R9dTw9QsJiz7meekxO3YtextzCVx5uu1mx/q/ibnPeHWivgzM5DrQlrIIf4uMQKEGC9gl6Ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB5569
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_231341_068102_B36311DE 
X-CRM114-Status: GOOD (  18.91  )
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

On Thu, 2022-11-17 at 17:27 +0100, Frank Wunderlich wrote:
> From: Sam Shih <sam.shih@mediatek.com>
> 
> This patch adds USB support for MT7986.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes compared to sams original version:
> - reorder xhci-clocks based on yaml binding
> 
> v5:
>  - update ranges/reg of usb-phy
>  - not added RB from AngeloGioacchino for v4 because of these changes
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
Usually if we use a gpio to control a switch to turn on/off power, we
model it as a fixed regulator, but here no gpio provided in reg_3p3v
and reg_5v, if no gpio used, no need these two fixed regulators too.

>  
>  &crypto {
> @@ -140,6 +158,12 @@ &spi1 {
>  	status = "okay";
>  };
>  
> +&ssusb {
> +	vusb33-supply = <&reg_3p3v>;
> +	vbus-supply = <&reg_5v>;
These two supply can be removed if no swith to control them, they are
optional.

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
> index 29da9b8ed753..c69b8bff7f4a 100644
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
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0 0x11e10000 0x1700>;
> +			status = "disabled";
> +
> +			u2port0: usb-phy@0 {
> +				reg = <0x0 0x700>;
> +				clocks = <&topckgen
> CLK_TOP_DA_U2_REFSEL>,
> +					 <&topckgen
> CLK_TOP_DA_U2_CK_1P_SEL>;
> +				clock-names = "ref", "da_ref";
> +				#phy-cells = <1>;
> +			};
> +
> +			u3port0: usb-phy@700 {
> +				reg = <0x700 0x900>;
> +				clocks = <&topckgen
> CLK_TOP_USB3_PHY_SEL>;
> +				clock-names = "ref";
> +				#phy-cells = <1>;
> +			};
> +
> +			u2port1: usb-phy@1000 {
> +				reg = <0x1000 0x700>;
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
ditto
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
ditto

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
