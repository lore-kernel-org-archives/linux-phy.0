Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8F59C6FD1F
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 07:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzKFftjBk9T/OoROsBV267BUr7oQECfiPWGVvyfvexg=; b=wNTTQhzW7AgOCe
	3ygeo/6A9xSW6F+on7gXXT+ONOij2IRRowbi1EdnSkf+WuXSJfYCwz2OGmvJ4ZE9Vn1rKYLdWlPMw
	M9uv/ANDvj6+PBUzoAeubU0wzvHitJgc9XyCeQ1K3Xz9ZXgvbXsRVJacdA6uuZU4Vee8n/Xmd2g2V
	ELMJq0kJhwCL41lHH6k5txaqIAmdTiNJbX92JbE0x3FtlmbMyujlbfqrIFBp2R8yXyU8BmVN6/ZDG
	pu/AMaL1W4MLGAUKTnYqil4SSuD2JjXVPZnw2n1jR92qCfWyg+QPuAGgGFFMPPotOPUPfhqk/xFZH
	GfAX4rrEU2S91oz9aURg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pchmy-00FR1B-1B;
	Thu, 16 Mar 2023 07:12:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pchmv-00FR03-1t;
	Thu, 16 Mar 2023 07:12:39 +0000
X-UUID: ebbfc9c2c3c911ed86fbcd8805c7ac66-20230316
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=YUFA0NiEIaiwFfZZvevtgRN0Ss4v0oInkZom7yMWKRM=;
	b=LTC+h17LP5JNWdlvzxXhzk4QBbr2RsO5xW1kOUUSmVzPqtPmQV4Gn7rUn/PzGmpEM8N5pJW/othAdclM0sxefdB6dRKSGGTuEmlrKd7MbakQzvi3YwSCj+prL/cfHdiIMWFIPa/gD8rZPxnBlagpyoO0DNKHZa/hXsAl4+QehlQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.21,REQID:aa352582-8560-4ef1-9713-03812e04852e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:83295aa,CLOUDID:1a698c28-564d-42d9-9875-7c868ee415ec,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: ebbfc9c2c3c911ed86fbcd8805c7ac66-20230316
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 632265173; Thu, 16 Mar 2023 00:12:32 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Thu, 16 Mar 2023 15:12:18 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Thu, 16 Mar 2023 15:12:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9K/3+Mw2+mwqHGiWCEzEvgRO1XICZouc3vtT7ImBE2eYix72T/o6Iggfikto+wrxP+Lrqea2Spu+Jgy26oGQbFT3DtrTBkp2T4/QRn8bRx7diNZBFzMx6gxtsrBYOsnzbQ2imTDe30vHTB7tIw1GwOvlYojHPf/Xz5nLlIu9Dm2NsL3FPKAJgd9HBnP5TYmF7A3IsIyLjhGy0v0jd2FHc+29diJz6k+tZZDHtXaI7UHnX6f91qP8IB4dq3AcUG83oWqIajdkaVz+NFeUkylEgUnyOwOR7lfHInQtBI7tdVpIFdaiovTP5u3XqK0edQy5w0n4a1/a5pA2QREDgXxxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUFA0NiEIaiwFfZZvevtgRN0Ss4v0oInkZom7yMWKRM=;
 b=caFHjLaNPpbRPK5yaaADfi9QkLSiu5bpRa9cxim+DAAT1pEzf7V0MDcJto7qTEuf9lhxdZr/hAC3eERMvVVLVXaNEYi18ZQ5cjeVkLBcDL69EEJCsqE0uwK3wl6HFf4BrI7KYbxv5D8I6eBM/Zp5lC7e7qKl2krimcFt3EAtepBIRnhzT02SAFnU0xXDTnhbjbq3vw0jKCG0LLfartL3njZt5EB7N2u20PwFOS1STegZNVP3z+7B1RXswBNZhCNDzKE9K+p2Kg8KXqdt4FtL5Gxe8Yg2lkmVDFqT8SlrbhlMdSHcbQzMw0wOMbk1XiFGlx5IYvlELyrybf2Xd9NKUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YUFA0NiEIaiwFfZZvevtgRN0Ss4v0oInkZom7yMWKRM=;
 b=dw99hyMej4MeOq0dsZ0FQqC5Lzn3W5mzNGQtSGJeLbAeWOkohWNsdzn8XGTLUyFo2nG4RJCBL/em+luFbZpfNwkcm45a2acgPvyE4O75sq4AcuSxWw+ppmWzXr9QEle2dYtWWinUQm6wwWtAf0W993OHrl3M3Nh9H8JsVM6WjIw=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by SI2PR03MB5420.apcprd03.prod.outlook.com (2603:1096:4:102::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Thu, 16 Mar
 2023 07:12:17 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::308:f1a4:95ed:f546]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::308:f1a4:95ed:f546%7]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 07:12:16 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, =?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?=
	<Eddie.Hung@mediatek.com>
Subject: Re: [PATCH v8] phy: mediatek: tphy: add debugfs files
Thread-Topic: [PATCH v8] phy: mediatek: tphy: add debugfs files
Thread-Index: AQHZPS3cBmb6PozoBUixhjUvGQR2AK7ITwmAgAQ/AAA=
Date: Thu, 16 Mar 2023 07:12:16 +0000
Message-ID: <4e5d86502cc6b2278d7079dfca688af63bbcb523.camel@mediatek.com>
References: <20230210085827.7970-1-chunfeng.yun@mediatek.com>
	 <Y+ZjPYDEbC9iblsj@matsya>
In-Reply-To: <Y+ZjPYDEbC9iblsj@matsya>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|SI2PR03MB5420:EE_
x-ms-office365-filtering-correlation-id: c3811875-befd-4691-876a-08db25edc658
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /lOocy9d7WPpSv/xazDIsEgntdAKKgjMcOaTlEaa8NLglxQY3nWGf0UINyp8GLxioFnO/jrJaKgqicEc9s7IzgFqlCaWQXF1L3ZUxJIvtv0w7l1++DzDdYiKe7bRBXJvI9os0J/RdaIKJfkV32CMZBCFlhAGX5mhRNIpcnzyfEWDcslXYaJsA7DCJeceD495L3mudVsm5IiXKtsfy9X7zG5Gl6rhxnQr2U6HZ1aYN31M/h5ThAAUs9qPfZiRJWOGGk1MNz/tiSkzixUxGYqM0ilQhhyAmceVp7HDErFX1Q83olQJSueN4A6OvtR6wlp952GK3e9imxrBhEYsgowjKHenyoUuOfC/Y9uXRZCp2Wq/6UUb/XqGrE4cB8wP/bFm+GHO4sfw3oRI9bLb30fTvCe7eHcB1wt2w1ND3MC2Ck6044oOuCFGIYPChKsqGx0sfLCd2NVonSii/+QOu2m1aNytdiMKulBIFmmEtcV1rW72HBZjAXpTiiD1Z/k2P9iag7kV5c19FrUILwBcWk6QSqvFNZgGYWYaAWhHlZiJ+Lyr72YLxgCq8wnUg/nwlVns61Ks/mIPXv/wieKV13SZW7VKJTC7zAo788JVz1GfVuUCANKph64xO19ePmTlsRJk7n8jdna6CmjBI3kqNACa5olgGnbMeXq+Pw6fc8S9tTv72ZqhJw8LYy75AEhtkyzYvnRf3g4+9NXv5MlkYmgqB2p/DraiRJhcT97pMzNFKRc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(451199018)(8936002)(5660300002)(41300700001)(2906002)(38100700002)(86362001)(38070700005)(36756003)(122000001)(4326008)(66446008)(76116006)(66946007)(107886003)(6486002)(71200400001)(91956017)(66476007)(8676002)(64756008)(85182001)(6916009)(316002)(2616005)(54906003)(83380400001)(478600001)(66556008)(6512007)(6506007)(26005)(186003)(53546011)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1cwUTBYVGlIUktndHZpNysvVXN1NVFPbm5VNVdWQWRTRXkvQ0dmMkpiQ1dX?=
 =?utf-8?B?dDBVaENDYXdFU2dDZzhyQXN5MkFFc1BNSG1YaFdmRmdzSzJyY055OXZsRmFJ?=
 =?utf-8?B?cGlZMWZhd1kvR0c1L0RzTHNGVEYzeFRyR0FET0pLTC9rN3hyVGNUaE5Wd1Q2?=
 =?utf-8?B?clZKa1NObjJUeE50cTZ4NUJZc1NmM3R4N2Fmc3lJTUprbFM5ZDBnVGR0MXVa?=
 =?utf-8?B?YWhwWlFTbHlTTGU3WWlLd2FxMzN6S1VNclhoV0llTEJhSTBaZWpTTWxXY3FR?=
 =?utf-8?B?cWlmODVIQTFVRDd1N2theVp6RnFXYXd4d2RJbWU1cHRoMGg3alVhbUJkY3NN?=
 =?utf-8?B?dEhZN0pYNldoYk5NM2VJRm5xeWZjK1UweFlPaS9oeHQ1N3NiYkhZUzBFZytU?=
 =?utf-8?B?TlVnckJvdHdnanZkdktya1NEYTJNcFFnUzZ2TkZRb1RxSEZrNmJIZ1lHMlhy?=
 =?utf-8?B?ZU9pNDJwTGovMmM3NkV4anQ1dnpFc2M2NkpXcG1rTmJXRXVHUlRlZ3hlWjdW?=
 =?utf-8?B?K1Jhc0N4a0o1QWpMdVhwRlRsS0Y2K1JHUzh4amRvK3J0Z3pJd0owNXcrT3RS?=
 =?utf-8?B?ZVZEeDFiSWhDWGp1UWpGMlc0d05vRXpvMFdqU3pudXZzWWhCaWFOQjdPRDJo?=
 =?utf-8?B?Y2pzK01vQkl4a25yWHFkWlpvTGhoQ0crNmkrTXUwbWhscDdrUU9oZHZNdk0x?=
 =?utf-8?B?VVlLYi96cCtXOEMzMVhPNW1xeFFHMG1RM21zVXhLekdmWGRXdThHakFkLzM0?=
 =?utf-8?B?dzdqcXpHRnhMbE13dnJqT3VYYysvbVpZdzBnVXZienFaNUJaS3Q1eGo1MjdK?=
 =?utf-8?B?ODFUWmRqWkd6K3UzMFN3VVB4RGpITWxoWXlTZUt6cmFETjl6dTNKUWJJZXVD?=
 =?utf-8?B?ejcxVWZOOCtYZGJ6Y1JlNmFJY3RKdW5teWhJQk5DRERTY2Mra0xoVzdtY2w2?=
 =?utf-8?B?dGlQQ3VlTGErd3pVQVlqKzdOem54UGkzSWdMNjVRcGp6dHNkU1EwS3A2azZi?=
 =?utf-8?B?OWR6bW93dmZDUEYrMFpJVEtaaXJneFIvcnRxNHFQSHg0V1VkQ056RzFCQjRO?=
 =?utf-8?B?SGM5NmRTZ2NleFRYTHFsQ09SQ1RWS3pvQlMrd2VwTTh0VTRHaTdKdkRqVStH?=
 =?utf-8?B?ZlJMTDlSSWE5dndrNkJSOHFpOUI1eGMvZTNGVENyWmQ4WVo3SnV3aW5HRUgr?=
 =?utf-8?B?cytsYUlOaTBqODNpOUlKZFoyVmRrQ01zWFp6Y1NCL2ZDZDlQMmJEbyt4SUtx?=
 =?utf-8?B?SnR0a3lvZStFMFg4L0Z2WHpja1V0ZWNkWWxiUFMwNG9DMHR3Q0xBOC9ERWpo?=
 =?utf-8?B?alhYcmZDenJYNWVVOFBua296dkx0K1k3YlU3K3lWUmhmZmxOUFpWMUdDRnpJ?=
 =?utf-8?B?Vmx2RFFEd2V4dEtCNk9WbUlBTEYrUktmN0pQMVh1SkpnYXJxczZ3WCtCelFa?=
 =?utf-8?B?US9qa0l6Y3dLNEpxSDR5V0lvNitGZVZrM1pLOXhSYmpFT2RpOWQxUGUwbkhR?=
 =?utf-8?B?NFlRb0cxa2pobmxaRlhRVEZGOEZ5SVNwYWc2S052Q0JLWCtRcEQ0NWRva29B?=
 =?utf-8?B?VHZoaERjMW5GaDZUVHlUSlVyWG85K0ZXcmZ5bzdHR1E5d1kvTVVDZHo0UjdQ?=
 =?utf-8?B?Si9jb3NTWHlCZko4Sy9hVzl4VE0rSGI3eGdDL3cvSFBwVWNMTTkxWDNBQVAw?=
 =?utf-8?B?NHVDQzZLTlc5RFhhdG9xSE5rczBhVllrVzh4RFdZdHZFQnlvUW9taUc1QTBT?=
 =?utf-8?B?b1hCQjVPaDVwU0wydURSNWkvRmhoK1hUOE1pWncrYXBrR0xwb042WmdGa2pW?=
 =?utf-8?B?My9XZXJBTVF4VTFETHdXVHdpRlhOTEFZTkUxeHJVcE5DaS9EUzJTR1E0eXdz?=
 =?utf-8?B?c2xveWxCQjlNc3BXQjY3T1V3bEhTUWFxMFVBSG90QmtFYTZBTndYQjA5Sk15?=
 =?utf-8?B?SHpycEFOVUVoOE1DTTBvUmFwbW4wMHFRYk44aXRYZDVXdWdvSDZLN0JQYXhz?=
 =?utf-8?B?SXRKbjFMaDc2L3RxazV0enFQTXZZYUQ1OGlqa1BMWmtJZm84a0NmYkw3Q0d3?=
 =?utf-8?B?SDVOSXRkTnVFRjZuclN6VWZBZXd4MDczOW5RTC9oQzMxQnFaTW1tOVhhYjlR?=
 =?utf-8?B?bWl4NHNzV3FVS2Vobm02T3ZNSTdsYWpaYXRDZmEvZWZqWjFocU8xM1d6VDVG?=
 =?utf-8?B?Qnc9PQ==?=
Content-ID: <DBAD14F675BABD4DB1F54A0FB100EBFF@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3811875-befd-4691-876a-08db25edc658
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 07:12:16.8068
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t8aUQmmeBlcJE78v0cG9VUAOCUhf2bSjwluyPJTUYTIR+Npo+qsyMda8vn3qyMjCsj771GvmFxpzPsBrC4VaNYtuUIZMxDy9qlkOaph4QYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5420
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_001237_636976_CAF5917F 
X-CRM114-Status: GOOD (  30.08  )
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

On Fri, 2023-02-10 at 21:01 +0530, Vinod Koul wrote:
> On 10-02-23, 16:58, Chunfeng Yun wrote:
> > These debugfs files are mainly used to make eye diagram test
> > easier,
> > especially helpful to do HQA test for a new IC without efuse
> > enabled.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v8: abandon patch to create phy debug root file
> >     /sys/kernel/debug/phy/ suggested by Vinod
> 
> Sorry that was not my suggestion
Sorry, I misunderstood you means
> 
> > 
> > v6~v7: no changes
> > 
> > v5: using common debugfs config CONFIG_DEBUG_FS
> > 
> > v4: fix build warning of sometimes uninitialized variable
> > 
> > v3: fix typo of "debugfs" suggested by AngeloGioacchino
> > 
> > v2: add CONFIG_PHY_MTK_TPHY_DEBUGFS suggested by AngeloGioacchino
> > ---
> >  drivers/phy/mediatek/phy-mtk-tphy.c | 405
> > +++++++++++++++++++++++++++-
> >  1 file changed, 404 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c
> > b/drivers/phy/mediatek/phy-mtk-tphy.c
> > index e906a82791bd..65a95c3726bf 100644
> > --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> > +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> > @@ -7,6 +7,7 @@
> >  
> >  #include <dt-bindings/phy/phy.h>
> >  #include <linux/clk.h>
> > +#include <linux/debugfs.h>
> >  #include <linux/delay.h>
> >  #include <linux/iopoll.h>
> >  #include <linux/mfd/syscon.h>
> > @@ -264,6 +265,8 @@
> >  
> >  #define TPHY_CLKS_CNT	2
> >  
> > +#define USER_BUF_LEN(count) min_t(size_t, 8, (count))
> > +
> >  enum mtk_phy_version {
> >  	MTK_PHY_V1 = 1,
> >  	MTK_PHY_V2,
> > @@ -310,6 +313,7 @@ struct mtk_phy_instance {
> >  	struct clk_bulk_data clks[TPHY_CLKS_CNT];
> >  	u32 index;
> >  	u32 type;
> > +	struct dentry *dbgfs;
> >  	struct regmap *type_sw;
> >  	u32 type_sw_reg;
> >  	u32 type_sw_index;
> > @@ -332,10 +336,391 @@ struct mtk_tphy {
> >  	const struct mtk_phy_pdata *pdata;
> >  	struct mtk_phy_instance **phys;
> >  	int nphys;
> > +	struct dentry *dbgfs_root;
> >  	int src_ref_clk; /* MHZ, reference clock for slew rate
> > calibrate */
> >  	int src_coef; /* coefficient for slew rate calibrate */
> >  };
> 
> I asked the struct dentry *debugfs be part of struct phy. Debugfs
> would
> be created by core but rather than exported, it should be populated
> in
> phy and you can use it here in the driver
> 
> >  
Ok, I'll do the following steps:

0. put a struct dentry *debugfs in struct phy;
1. define a static struct dentry *phy_debugfs_root in phy-core.c, then
   create a root directory (/sys/kernel/debug/phy/) for phy subsystem 
in phy_core_init();
2. create directory for each phy under the root directory
(/sys/kernel/debug/phy/);
   this step has two ways:
   A: create the directory @debugfs of struct phy in phy_create() by
default;
   B: provide some api for user to create/destory the directory
@debugfs or others when need;
3. add private debugfs files in @debugfs of struct phy;

For the case in tphy driver, it provides some struct phy, the driver
may want to create debugfs files which not belongs to any struct phy in
the root directory (/sys/kernel/debug/phy/), then need provide a api.

   Do you have any suggestions?
   Which way do you prefer to use in step 2?

   Thanks a lot;

> <skip>
> > +
> >  static struct platform_driver mtk_tphy_driver = {
> >  	.probe		= mtk_tphy_probe,
> > +	.remove		= mtk_tphy_remove,
> >  	.driver		= {
> >  		.name	= "mtk-tphy",
> >  		.of_match_table = mtk_tphy_id_table,
> > -- 
> > 2.18.0
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
