Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE4FC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Nov 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bZeKgM9innfEdzS6GggGhgMll/OHFlzWvtcIiVix/E=; b=W7yTySv5ZzjZ1P
	3fiZ4cq09IHW3FAzLLXPXwWWYFdICUVyLXDOqo3ThS5chKeihBa/s69458nrXyp7pBz/7iBsN9Hm0
	PFL3ROjY4dLIoex65rA7tqFcCY7gwd+V5CWbG36afCVQ8azq2Tr3PZcISaCRestpoYWVYEQeR6Z+a
	HiyU7H2Hlot2ElDpC5M33MX4bJ9YtSpUa2pp8tqslWG2jhhH4Zbiy+MVhDhG+kyNPSUefV63qN/el
	XCwev/xqjdDt7UzVIT0+2N8xLCI+xTemMQOW7ZTKvHKWr1x9BEr/IrNehyOtWCoPSwVDZGl6Chx0q
	FdMx+W3KJoJLBuGk+wRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozYhA-00HMB6-3b; Mon, 28 Nov 2022 07:36:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozYh6-00HM9B-Ba; Mon, 28 Nov 2022 07:36:50 +0000
X-UUID: 07ffad0f6abf4d7b9f89bcb5980fdd55-20221128
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=pR6z3Drkt/OqyP8hQO0X4zLgD3ZjV8CA3he6pLqij3k=;
	b=Wt3KnyLwQNU7TivD5qh6G1JxUf4jTaI+Ehwpfp0CKqEJIz6+XmxRnOM9J6LjwIM7Iz5vJ0niGIDiVYkq4bk0qt44T/I6iLGYJ3RPIzoTGULOEcO3IDfNetrlAi/r5hHnGJTRjIE4g3YHc249cevU3+hTQpY9UN8Zf5zxD0j4QX0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.14,REQID:f670450b-cc47-4769-a626-efa018bd48a6,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:dcaaed0,CLOUDID:45b56bdc-6ad4-42ff-91f3-18e0272db660,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 07ffad0f6abf4d7b9f89bcb5980fdd55-20221128
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 29287999; Mon, 28 Nov 2022 00:36:43 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 28 Nov 2022 15:26:05 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Mon, 28 Nov 2022 15:26:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anUgoEbDkL/FtTSH7TQlDwE5h7/RGSxmBKfuplEcKjL6xkvCBazPXOWQDheIZpRKQPkyK96vphX0ONg8QthNKjPlJLK5y9qQcwdP7MCkeNKqFpzcU6n7dAZ/a/7TZCuya5NVFxcjd3tUdo8BwnKyI77+w2QPN35a4B7TNhPwj0iM2O9/hqZcUoiZF310DjMHPH4Hh5RNv+ru3KSqnA6EGN3iP9l7s2C1qhlCm5+rLuJ6ObvrhGWBb0TvX+KUvPboE8bWaxrcaLOr+xRhqK6+B3z59HU/ItMq83ZmywaPlI96gtYfBnBI5mNx9qijSfLShecGNlrth8cHZS7bpyFc/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pR6z3Drkt/OqyP8hQO0X4zLgD3ZjV8CA3he6pLqij3k=;
 b=YiTPRNdZdV6mPDPAjjWbNn621kYeWP6DhR63/o5vqHDfsTal8r0fPoIfw21UW1pbHC+TpXS0FrNl9cvI2DhB0bAUfFWSq/bRTlIFGNsUiD4gVleCqHQfDDef6ZrC8qUNQN/zwXexdPVzOh/sIvWuYwKwQ9lMgUcGv0R+IzLAxPO9SaaMTe7E3ksI0h8z7h++BP/roFIVi+cI6ku8dSvtwGeWbJOH5krZu3rzMleZToTMrwCA/z95ndddv2PG4XnjuleWCFcgDXj6JaGOUSMtifi4xbRW4B5Yrj9s0KDtQp9avyHBSCBoNpwV9pQSfW0dZaobkwvr9SKUWcR8cvO9GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pR6z3Drkt/OqyP8hQO0X4zLgD3ZjV8CA3he6pLqij3k=;
 b=vSJ3DX9G0Nc3x9P6H66d03Da0NtILHgyw7nfoNAhXKozr3X1L9kvm5PXcTbS3WXWWLwxS4ZsQkmlwulpEf5KIIaQIOpZRldFihBUTwHhzYitQujZoMUH2zwlZuBYZpalcEHwNvSF8MJ6tkrnwl2Akcwec9qWCwj6roOI97ZL454=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by PUZPR03MB7135.apcprd03.prod.outlook.com (2603:1096:301:113::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Mon, 28 Nov
 2022 07:26:03 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::9585:3a04:b796:b696%5]) with mapi id 15.20.5857.020; Mon, 28 Nov 2022
 07:26:03 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
CC: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nathan@kernel.org" <nathan@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
	=?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?= <Eddie.Hung@mediatek.com>,
	=?utf-8?B?VGlhbnBpbmcgRmFuZyAo5pa55aSp5bmzKQ==?=
	<Tianping.Fang@mediatek.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "trix@redhat.com" <trix@redhat.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>
Subject: Re: [PATCH v4 3/3] phy: mediatek: tphy: add debugfs files
Thread-Topic: [PATCH v4 3/3] phy: mediatek: tphy: add debugfs files
Thread-Index: AQHY9QhG35CIOR1jTk2qYSnofBdXwa5Ob3gAgAWbzQA=
Date: Mon, 28 Nov 2022 07:26:02 +0000
Message-ID: <70407a789b48a4fbd498e392450eb9db76e025bf.camel@mediatek.com>
References: <20221110132716.12294-1-chunfeng.yun@mediatek.com>
	 <20221110132716.12294-3-chunfeng.yun@mediatek.com>
	 <Y3+uGjpMQcEWQrew@matsya>
In-Reply-To: <Y3+uGjpMQcEWQrew@matsya>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|PUZPR03MB7135:EE_
x-ms-office365-filtering-correlation-id: 21e6dfa4-d55f-443f-27a0-08dad111ce22
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jhTHAuRrrjRF3GHMnhl4fYdToRfL6HRp2zHIN4jaOWVSMcQtjt1Ef7oUrXGMKkd9lrld19tvD0S2rdPvwX7lCJdyVbOrpCIaXuuf3o+HleNt43xdXAOBqmJJcY08je7ehYDH87EiXA82IEJMPfeRP5zXD1cMxoer2zbForUuk3opy0vae4unm4IVDVdmjh7LxPDc7a3eDgCO69IG4rFK7juHiWsEh1ITzGdjx8cw/VEtXKttzWVJyx1NoJcQxuvd770AVTYcWX2NHYtPooIx0PVafIw9k2gHiEcKW41fR/3BH0++d6YLIkLHWN0mXY3yafPScSs6FcjsChCBE9Pigi8L11R87ftzkoU3beoFr9YI+ExvU4NfK5V1fWFygWPqdCZK56oLA8PDyn2xtsaeeKb2SWGLxL5dIXfrqfM+0BqfVRD2nqncJB7xxKvdcLCHZSY3BzHzdUS8RYM9yLBfpy+0M2/BId4tv4quq/Fof7hXo04MeAU6qbG/3ZClA58yX2CYfV7Wq6+wh3MT6uNzYHNtqtYx//r8LdXYS7OiTcVFDIbSkNpOS5zGzdg3ushw4ThYWFhKCSTaLucbYONWA+RHBvezwXeuSoYlYbSaSQuOqISd7kiZED4WjCge/4yvOrdv3oMOgXUayf6LDhFHynAAgQlFDFm6hn+ymnLJb19lKy8K6l4M9D/ZNL4g4ZPDi/Ho4UhtKRxETuF3pbWQQz0fJYUaqI7CsdyZrlfnVhk20STyEz04FhdDYRHx8iwN
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(39860400002)(346002)(136003)(376002)(451199015)(6506007)(38100700002)(53546011)(7416002)(83380400001)(6512007)(26005)(86362001)(36756003)(316002)(5660300002)(8936002)(66946007)(76116006)(91956017)(66556008)(66476007)(66446008)(4326008)(8676002)(64756008)(122000001)(85182001)(6916009)(54906003)(71200400001)(2616005)(4001150100001)(30864003)(2906002)(478600001)(6486002)(38070700005)(41300700001)(186003)(99106002)(309714004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WXQxMlFGRnpkdmJpZHpIQTl1ajVad3lKWS8wRThMNmFLR0JhU3M1aXl6ZnZq?=
 =?utf-8?B?VXNJUjVjUHBsR2ZuWFV2TGZtK090N0lvWjRwTTJaMFh2bVYvQjRZL0tMTHNv?=
 =?utf-8?B?MTZNelhhbEhmc0pQaVpEbUxRQktrSXZ1ZnVLTmwrMXJudjFSWGR3T0VuYStY?=
 =?utf-8?B?c1ZvMC9XbGxRdy8vcXU3b3lkNWt0L1FZOVZiMmh6RjNnUXFMWE1EeE4rODQ3?=
 =?utf-8?B?VThOQ1dZb3BwSGNRbXloWkQ1SVBSR01Rd3JuQmR6bUI4R2hRdndHQjRteC8y?=
 =?utf-8?B?cW9UbTFUUUNDL1Ric0U1anZRWWN4bmRodFY4aXZnVVlyWXhObUQ4QVNTcUF3?=
 =?utf-8?B?NzJZTUFwWlg4eTlPR1l2ZWo2b0NCaGppMnlNcDVxbHJidDAzemlHMHBLU25y?=
 =?utf-8?B?ZmtvNjdOWHB0M2d1VU5TLzI4Mk1rMXRPOXVhM2xGbnNiUXhTN3ByY0V0VkVm?=
 =?utf-8?B?b2IvVGtYOW81aWJWaTFoNFBJZlRNeFhRblh6MkhPMUxWNlJEbkFPSHR3YzlV?=
 =?utf-8?B?dXp0bWwwYk5MSGR2Z2N3eFY3ajVPZFF3UDJJcmJPTGdGQWtxZnZlUU1kcWx2?=
 =?utf-8?B?R3YxMW9jZDZPb1hLQjRxcFY4SXBkWXBkR2V2SzUyWFd3N0JXY2NGT2hUYTNR?=
 =?utf-8?B?Z3VLNHRMRGV6ZUFIWFpnRkRHRVVMaC9oTGcxZHp5Y2VXVEUvVVE0d0xpd2kx?=
 =?utf-8?B?L0FNR3J4TGtNOHlBWWQwV3NyT3BjYm5PWFc4YWNacWhZeWE5bWdYR1dtMjEw?=
 =?utf-8?B?NlhyRWhyR2Vic0RLcyt2ZXVxbi9nM3ZPVjBnSUc3Q0R0ZWZNbGp4QThSRXNm?=
 =?utf-8?B?WVdRcmExM1lrTXNHVHJqOTRFTnNibEZzQWNkc3pISTB4cXBDTjl0U3BYSkJW?=
 =?utf-8?B?WlFYWTd3OFhTSy9LVExOZTRUOURGQ2JmcmJ4SVNHVEo0bS9RMERSUENkTEhF?=
 =?utf-8?B?M0VMYVlYSmxMV29WVTNhT09SWkZ3dm1JUnRBdTFwc2o0UlExS05wTUJBakJC?=
 =?utf-8?B?MDNkTy9tL2dQZ25vdVN2QzJPTGVtYm9YTXY4RkpwbW0rNElmUGUvbWpjdDRu?=
 =?utf-8?B?NWRNQ3BobFU4U0pkUEpuK2FoaWdOaEdWRkE1YThoQitOU1I3bkpDYkZIM1U4?=
 =?utf-8?B?VmFFWERBVmloRnlId1FHb3RUSFJCUXpob21sc0toY0t0bG8xOUx0WWRvdk1S?=
 =?utf-8?B?Z0xYMVFMZk5uRExHRjBoeW1TSmd4ZUJmQVlDbHdJMVZxWGYxai9Id3dOUS9i?=
 =?utf-8?B?Zkx4VjgyYTdiY0RkQnBBbERhQVVTRDloQ1pGb2FNK3g0K0pvaVRwR2NxN09k?=
 =?utf-8?B?NWJtL0tIWWZJdEJDSnBuZVFMMkxQdUw1Z3NCeGR0YUpPNmZpcERVQjdnZ2t3?=
 =?utf-8?B?WW9uZnZ4U0lFMnRQYnJCNjdsSVJ2RDcxUnBwTno2Vm02c2dWU0t5b0EvdXpK?=
 =?utf-8?B?Q0xFOXdmdnhGMWtjN21NRUZCdTJLK1pQSEFzU3FKbEp1R2tkaFNOT1dObnFv?=
 =?utf-8?B?MzFYcTlZcGVaRS8rQkJxM0Y2dEdJQ0JUYU9aM3Z4dW9Zdk5jWWN1aHVlUEMv?=
 =?utf-8?B?Q0tNNjFxcXJOb1FXWkZoanplVjlkVVZ6ZzI2bTZLYThsbU9yREdXdVcyYzlu?=
 =?utf-8?B?ZlVPZHNKUDZhNTZ3eG50VlBjcUdkUU9NcW9hZHQ1WDRDMk4vTHhab01CL0wx?=
 =?utf-8?B?YkNLUzBYTEpJOGU0M3dtTXdNSFRuKzFHOVdmVS94MTRSMWxHVjZrZWUzbEF5?=
 =?utf-8?B?bndLN3pOS1F2RmVHMWpZMVREZDEyRG56VUppemJUdWVLTmt4ZWgzMmxZTEEr?=
 =?utf-8?B?TzBPL1NjdjVpSGk3Rnk0NGt4elZhWXNZSnNvZWF2eENvK3lZRTNiZ2c4dDZu?=
 =?utf-8?B?RFRlMHQ0b0FJL2tJY2wxNVVQYTRweGEwbU9DMFRGSkJuVmFXRTNPNUdHWVUx?=
 =?utf-8?B?cnVFeldZNWpSV3pFdmNydXlPa0cwVDJjM3NkMW5oUkhWZXdSZGErcmUxZk1Z?=
 =?utf-8?B?SU8rWk85Q01KUEN1ZVVma3RMUXJ4WG5zTzZsY0U2NFB5cCtwd1VYOE9GcUVh?=
 =?utf-8?B?WitjUktvVTBUc1FCOEZFcVdnbjdkY1RFVFlNMDJHL1B5aTdCSFdwZk1PTlAy?=
 =?utf-8?B?ZVorLzhjQmtGODRiRHJYbXh0ci9tSkFnSGJaUmhBQTVwMFZsVGZPN3AyaXYx?=
 =?utf-8?B?U0E9PQ==?=
Content-ID: <0164C0501224D244919674F4131B309B@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e6dfa4-d55f-443f-27a0-08dad111ce22
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2022 07:26:02.9184
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z8QhKB1U81Z4ZudOmQPCfH+DUKaL2QEVbWZDFZRYWRgByfYfdUL4ZAxNdL2lpz25YYBvyLSZi05lE1Y7ksbId4KpPrePEnxWcmoD5vzVRaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB7135
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221127_233648_448808_E734AF2E 
X-CRM114-Status: GOOD (  22.72  )
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

On Thu, 2022-11-24 at 23:17 +0530, Vinod Koul wrote:
> On 10-11-22, 21:27, Chunfeng Yun wrote:
> > These debugfs files are mainly used to make eye diagram test
> > easier,
> > especially helpful to do HQA test for a new IC without efuse
> > enabled.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v4: fix build warning of sometimes uninitialized variable
> > 
> > v3: fix typo of "debugfs" suggested by AngeloGioacchino
> > 
> > v2: add CONFIG_PHY_MTK_TPHY_DEBUGFS suggested by AngeloGioacchino
> > ---
> >  drivers/phy/mediatek/Kconfig        |   5 +
> >  drivers/phy/mediatek/phy-mtk-tphy.c | 405
> > +++++++++++++++++++++++++++-
> >  2 files changed, 409 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/phy/mediatek/Kconfig
> > b/drivers/phy/mediatek/Kconfig
> > index 3125ecb5d119..e9fdfe9f519f 100644
> > --- a/drivers/phy/mediatek/Kconfig
> > +++ b/drivers/phy/mediatek/Kconfig
> > @@ -27,6 +27,11 @@ config PHY_MTK_TPHY
> >  	  multi-ports is first version, otherwise is second version,
> >  	  so you can easily distinguish them by banks layout.
> >  
> > +config PHY_MTK_TPHY_DEBUGFS
> > +	bool "Add T-PHY Debugfs Files"
> > +	help
> > +	  Say Y here to add debugfs files mainly for T-PHY HQA test.
> 
> Why do we need a config option for this, is debugfs config option not
> sufficient?
We may want to disable these files even debugfs config is enabled in
release image, and prefer to use them only when bring up new IC. 

> 
> > +
> >  config PHY_MTK_UFS
> >  	tristate "MediaTek UFS M-PHY driver"
> >  	depends on ARCH_MEDIATEK || COMPILE_TEST
> > diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c
> > b/drivers/phy/mediatek/phy-mtk-tphy.c
> > index e906a82791bd..f220a9a409bf 100644
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
> >  
> > +#if IS_ENABLED(CONFIG_PHY_MTK_TPHY_DEBUGFS)
> > +
> > +enum u2_phy_params {
> > +	U2P_EYE_VRT = 0,
> > +	U2P_EYE_TERM,
> > +	U2P_EFUSE_EN,
> > +	U2P_EFUSE_INTR,
> > +	U2P_DISCTH,
> > +	U2P_PRE_EMPHASIS,
> > +};
> > +
> > +enum u3_phy_params {
> > +	U3P_EFUSE_EN = 0,
> > +	U3P_EFUSE_INTR,
> > +	U3P_EFUSE_TX_IMP,
> > +	U3P_EFUSE_RX_IMP,
> > +};
> > +
> > +static const char *const u2_phy_files[] = {
> > +	[U2P_EYE_VRT] = "vrt",
> > +	[U2P_EYE_TERM] = "term",
> > +	[U2P_EFUSE_EN] = "efuse",
> > +	[U2P_EFUSE_INTR] = "intr",
> > +	[U2P_DISCTH] = "discth",
> > +	[U2P_PRE_EMPHASIS] = "preemph",
> > +};
> > +
> > +static const char *const u3_phy_files[] = {
> > +	[U3P_EFUSE_EN] = "efuse",
> > +	[U3P_EFUSE_INTR] = "intr",
> > +	[U3P_EFUSE_TX_IMP] = "tx-imp",
> > +	[U3P_EFUSE_RX_IMP] = "rx-imp",
> > +};
> > +
> > +static int u2_phy_params_show(struct seq_file *sf, void *unused)
> > +{
> > +	struct mtk_phy_instance *inst = sf->private;
> > +	const char *fname = file_dentry(sf->file)->d_iname;
> > +	struct u2phy_banks *u2_banks = &inst->u2_banks;
> > +	void __iomem *com = u2_banks->com;
> > +	u32 max = 0;
> > +	u32 tmp = 0;
> > +	u32 val = 0;
> > +	int ret;
> > +
> > +	ret = match_string(u2_phy_files, ARRAY_SIZE(u2_phy_files),
> > fname);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	switch (ret) {
> > +	case U2P_EYE_VRT:
> > +		tmp = readl(com + U3P_USBPHYACR1);
> > +		val = FIELD_GET(PA1_RG_VRT_SEL, tmp);
> > +		max = FIELD_MAX(PA1_RG_VRT_SEL);
> > +		break;
> > +
> > +	case U2P_EYE_TERM:
> > +		tmp = readl(com + U3P_USBPHYACR1);
> > +		val = FIELD_GET(PA1_RG_TERM_SEL, tmp);
> > +		max = FIELD_MAX(PA1_RG_TERM_SEL);
> > +		break;
> > +
> > +	case U2P_EFUSE_EN:
> > +		if (u2_banks->misc) {
> > +			tmp = readl(u2_banks->misc + U3P_MISC_REG1);
> > +			max = 1;
> > +		}
> > +
> > +		val = !!(tmp & MR1_EFUSE_AUTO_LOAD_DIS);
> > +		break;
> > +
> > +	case U2P_EFUSE_INTR:
> > +		tmp = readl(com + U3P_USBPHYACR1);
> > +		val = FIELD_GET(PA1_RG_INTR_CAL, tmp);
> > +		max = FIELD_MAX(PA1_RG_INTR_CAL);
> > +		break;
> > +
> > +	case U2P_DISCTH:
> > +		tmp = readl(com + U3P_USBPHYACR6);
> > +		val = FIELD_GET(PA6_RG_U2_DISCTH, tmp);
> > +		max = FIELD_MAX(PA6_RG_U2_DISCTH);
> > +		break;
> > +
> > +	case U2P_PRE_EMPHASIS:
> > +		tmp = readl(com + U3P_USBPHYACR6);
> > +		val = FIELD_GET(PA6_RG_U2_PRE_EMP, tmp);
> > +		max = FIELD_MAX(PA6_RG_U2_PRE_EMP);
> > +		break;
> > +
> > +	default:
> > +		seq_printf(sf, "invalid, %d\n", ret);
> > +		break;
> > +	}
> > +
> > +	seq_printf(sf, "%s : %d [0, %d]\n", fname, val, max);
> > +
> > +	return 0;
> > +}
> > +
> > +static int u2_phy_params_open(struct inode *inode, struct file
> > *file)
> > +{
> > +	return single_open(file, u2_phy_params_show, inode->i_private);
> > +}
> > +
> > +static ssize_t u2_phy_params_write(struct file *file, const char
> > __user *ubuf,
> > +				   size_t count, loff_t *ppos)
> 
> so are we writing to phy registers from userspace, why?
Mainly because when bring up a new ic which efuse is not set, we need
to tune some parameters many times for eye diagram test, using debugfs
files will make it easier at runtime.

Thanks a lot

> 
> > +{
> > +	const char *fname = file_dentry(file)->d_iname;
> > +	struct seq_file *sf = file->private_data;
> > +	struct mtk_phy_instance *inst = sf->private;
> > +	struct u2phy_banks *u2_banks = &inst->u2_banks;
> > +	void __iomem *com = u2_banks->com;
> > +	ssize_t rc;
> > +	u32 val;
> > +	int ret;
> > +
> > +	rc = kstrtouint_from_user(ubuf, USER_BUF_LEN(count), 0, &val);
> > +	if (rc)
> > +		return rc;
> > +
> > +	ret = match_string(u2_phy_files, ARRAY_SIZE(u2_phy_files),
> > fname);
> > +	if (ret < 0)
> > +		return (ssize_t)ret;
> > +
> > +	switch (ret) {
> > +	case U2P_EYE_VRT:
> > +		mtk_phy_update_field(com + U3P_USBPHYACR1,
> > PA1_RG_VRT_SEL, val);
> > +		break;
> > +
> > +	case U2P_EYE_TERM:
> > +		mtk_phy_update_field(com + U3P_USBPHYACR1,
> > PA1_RG_TERM_SEL, val);
> > +		break;
> > +
> > +	case U2P_EFUSE_EN:
> > +		if (u2_banks->misc)
> > +			mtk_phy_update_field(u2_banks->misc +
> > U3P_MISC_REG1,
> > +					     MR1_EFUSE_AUTO_LOAD_DIS,
> > !!val);
> > +		break;
> > +
> > +	case U2P_EFUSE_INTR:
> > +		mtk_phy_update_field(com + U3P_USBPHYACR1,
> > PA1_RG_INTR_CAL, val);
> > +		break;
> > +
> > +	case U2P_DISCTH:
> > +		mtk_phy_update_field(com + U3P_USBPHYACR6,
> > PA6_RG_U2_DISCTH, val);
> > +		break;
> > +
> > +	case U2P_PRE_EMPHASIS:
> > +		mtk_phy_update_field(com + U3P_USBPHYACR6,
> > PA6_RG_U2_PRE_EMP, val);
> > +		break;
> > +
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return count;
> > +}
> > +
> > +static const struct file_operations u2_phy_fops = {
> > +	.open = u2_phy_params_open,
> > +	.write = u2_phy_params_write,
> > +	.read = seq_read,
> > +	.llseek = seq_lseek,
> > +	.release = single_release,
> > +};
> > +
> > +static void u2_phy_dbgfs_files_create(struct mtk_phy_instance
> > *inst)
> > +{
> > +	u32 count = ARRAY_SIZE(u2_phy_files);
> > +	int i;
> > +
> > +	for (i = 0; i < count; i++)
> > +		debugfs_create_file(u2_phy_files[i], 0644, inst->dbgfs, 
> > inst, &u2_phy_fops);
> 
> pls use 
> > +}
> > +
> > +static int u3_phy_params_show(struct seq_file *sf, void *unused)
> > +{
> > +	struct mtk_phy_instance *inst = sf->private;
> > +	const char *fname = file_dentry(sf->file)->d_iname;
> > +	struct u3phy_banks *u3_banks = &inst->u3_banks;
> > +	u32 val = 0;
> > +	u32 max = 0;
> > +	u32 tmp;
> > +	int ret;
> > +
> > +	ret = match_string(u3_phy_files, ARRAY_SIZE(u3_phy_files),
> > fname);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	switch (ret) {
> > +	case U3P_EFUSE_EN:
> > +		tmp = readl(u3_banks->phyd + U3P_U3_PHYD_RSV);
> > +		val = !!(tmp & P3D_RG_EFUSE_AUTO_LOAD_DIS);
> > +		max = 1;
> > +		break;
> > +
> > +	case U3P_EFUSE_INTR:
> > +		tmp = readl(u3_banks->phya + U3P_U3_PHYA_REG0);
> > +		val = FIELD_GET(P3A_RG_IEXT_INTR, tmp);
> > +		max = FIELD_MAX(P3A_RG_IEXT_INTR);
> > +		break;
> > +
> > +	case U3P_EFUSE_TX_IMP:
> > +		tmp = readl(u3_banks->phyd + U3P_U3_PHYD_IMPCAL0);
> > +		val = FIELD_GET(P3D_RG_TX_IMPEL, tmp);
> > +		max = FIELD_MAX(P3D_RG_TX_IMPEL);
> > +		break;
> > +
> > +	case U3P_EFUSE_RX_IMP:
> > +		tmp = readl(u3_banks->phyd + U3P_U3_PHYD_IMPCAL1);
> > +		val = FIELD_GET(P3D_RG_RX_IMPEL, tmp);
> > +		max = FIELD_MAX(P3D_RG_RX_IMPEL);
> > +		break;
> > +
> > +	default:
> > +		seq_printf(sf, "invalid, %d\n", ret);
> > +		break;
> > +	}
> > +
> > +	seq_printf(sf, "%s : %d [0, %d]\n", fname, val, max);
> > +
> > +	return 0;
> > +}
> > +
> > +static int u3_phy_params_open(struct inode *inode, struct file
> > *file)
> > +{
> > +	return single_open(file, u3_phy_params_show, inode->i_private);
> > +}
> > +
> > +static ssize_t u3_phy_params_write(struct file *file, const char
> > __user *ubuf,
> > +				   size_t count, loff_t *ppos)
> > +{
> > +	const char *fname = file_dentry(file)->d_iname;
> > +	struct seq_file *sf = file->private_data;
> > +	struct mtk_phy_instance *inst = sf->private;
> > +	struct u3phy_banks *u3_banks = &inst->u3_banks;
> > +	void __iomem *phyd = u3_banks->phyd;
> > +	ssize_t rc;
> > +	u32 val;
> > +	int ret;
> > +
> > +	rc = kstrtouint_from_user(ubuf, USER_BUF_LEN(count), 0, &val);
> > +	if (rc)
> > +		return rc;
> > +
> > +	ret = match_string(u3_phy_files, ARRAY_SIZE(u3_phy_files),
> > fname);
> > +	if (ret < 0)
> > +		return (ssize_t)ret;
> > +
> > +	switch (ret) {
> > +	case U3P_EFUSE_EN:
> > +		mtk_phy_update_field(phyd + U3P_U3_PHYD_RSV,
> > +				     P3D_RG_EFUSE_AUTO_LOAD_DIS,
> > !!val);
> > +		break;
> > +
> > +	case U3P_EFUSE_INTR:
> > +		mtk_phy_update_field(u3_banks->phya + U3P_U3_PHYA_REG0,
> > P3A_RG_IEXT_INTR, val);
> > +		break;
> > +
> > +	case U3P_EFUSE_TX_IMP:
> > +		mtk_phy_update_field(phyd + U3P_U3_PHYD_IMPCAL0,
> > P3D_RG_TX_IMPEL, val);
> > +		mtk_phy_set_bits(phyd + U3P_U3_PHYD_IMPCAL0,
> > P3D_RG_FORCE_TX_IMPEL);
> > +		break;
> > +
> > +	case U3P_EFUSE_RX_IMP:
> > +		mtk_phy_update_field(phyd + U3P_U3_PHYD_IMPCAL1,
> > P3D_RG_RX_IMPEL, val);
> > +		mtk_phy_set_bits(phyd + U3P_U3_PHYD_IMPCAL1,
> > P3D_RG_FORCE_RX_IMPEL);
> > +		break;
> > +
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return count;
> > +}
> > +
> > +static const struct file_operations u3_phy_fops = {
> > +	.open = u3_phy_params_open,
> > +	.write = u3_phy_params_write,
> > +	.read = seq_read,
> > +	.llseek = seq_lseek,
> > +	.release = single_release,
> > +};
> > +
> > +static void u3_phy_dbgfs_files_create(struct mtk_phy_instance
> > *inst)
> > +{
> > +	u32 count = ARRAY_SIZE(u3_phy_files);
> > +	int i;
> > +
> > +	for (i = 0; i < count; i++)
> > +		debugfs_create_file(u3_phy_files[i], 0644, inst->dbgfs, 
> > inst, &u3_phy_fops);
> > +}
> > +
> > +static int tphy_type_show(struct seq_file *sf, void *unused)
> > +{
> > +	struct mtk_phy_instance *inst = sf->private;
> > +	const char *type;
> > +
> > +	switch (inst->type) {
> > +	case PHY_TYPE_USB2:
> > +		type = "USB2";
> > +		break;
> > +	case PHY_TYPE_USB3:
> > +		type = "USB3";
> > +		break;
> > +	case PHY_TYPE_PCIE:
> > +		type = "PCIe";
> > +		break;
> > +	case PHY_TYPE_SGMII:
> > +		type = "SGMII";
> > +		break;
> > +	case PHY_TYPE_SATA:
> > +		type = "SATA";
> > +		break;
> > +	default:
> > +		type = "";
> > +	}
> > +
> > +	seq_printf(sf, "%s\n", type);
> > +
> > +	return 0;
> > +}
> > +
> > +DEFINE_SHOW_ATTRIBUTE(tphy_type);
> > +
> > +static void tphy_debugfs_init(struct mtk_tphy *tphy, struct
> > mtk_phy_instance *inst)
> > +{
> > +	char name[16];
> > +
> > +	snprintf(name, sizeof(name) - 1, "phy.%d", inst->index);
> > +	inst->dbgfs = debugfs_create_dir(name, tphy->dbgfs_root);
> > +
> > +	debugfs_create_file("type", 0444, inst->dbgfs, inst,
> > &tphy_type_fops);
> > +
> > +	switch (inst->type) {
> > +	case PHY_TYPE_USB2:
> > +		u2_phy_dbgfs_files_create(inst);
> > +		break;
> > +	case PHY_TYPE_USB3:
> > +	case PHY_TYPE_PCIE:
> > +		u3_phy_dbgfs_files_create(inst);
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +}
> > +
> > +static void tphy_debugfs_exit(struct mtk_phy_instance *inst)
> > +{
> > +	debugfs_remove_recursive(inst->dbgfs);
> > +	inst->dbgfs = NULL;
> > +}
> > +
> > +static void tphy_debugfs_root_create(struct mtk_tphy *tphy)
> > +{
> > +	tphy->dbgfs_root = debugfs_create_dir(dev_name(tphy->dev),
> > phy_debug_root);
> > +}
> > +
> > +static void tphy_debugfs_root_remove(struct mtk_tphy *tphy)
> > +{
> > +	debugfs_remove_recursive(tphy->dbgfs_root);
> > +	tphy->dbgfs_root = NULL;
> > +}
> > +
> > +#else
> > +
> > +static void tphy_debugfs_init(struct mtk_tphy *tphy, struct
> > mtk_phy_instance *inst)
> > +{}
> > +
> > +static void tphy_debugfs_exit(struct mtk_phy_instance *inst)
> > +{}
> > +
> > +static void tphy_debugfs_root_create(struct mtk_tphy *tphy)
> > +{}
> > +
> > +static void tphy_debugfs_root_remove(struct mtk_tphy *tphy)
> > +{}
> > +
> > +#endif
> > +
> >  static void hs_slew_rate_calibrate(struct mtk_tphy *tphy,
> >  	struct mtk_phy_instance *instance)
> >  {
> > @@ -1032,6 +1417,8 @@ static int mtk_phy_init(struct phy *phy)
> >  		return -EINVAL;
> >  	}
> >  
> > +	tphy_debugfs_init(tphy, instance);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -1068,6 +1455,8 @@ static int mtk_phy_exit(struct phy *phy)
> >  	struct mtk_phy_instance *instance = phy_get_drvdata(phy);
> >  	struct mtk_tphy *tphy = dev_get_drvdata(phy->dev.parent);
> >  
> > +	tphy_debugfs_exit(instance);
> > +
> >  	if (instance->type == PHY_TYPE_USB2)
> >  		u2_phy_instance_exit(tphy, instance);
> >  
> > @@ -1295,15 +1684,29 @@ static int mtk_tphy_probe(struct
> > platform_device *pdev)
> >  	}
> >  
> >  	provider = devm_of_phy_provider_register(dev, mtk_phy_xlate);
> > +	if (IS_ERR(provider))
> > +		return dev_err_probe(dev, PTR_ERR(provider), "probe
> > failed\n");
> > +
> > +	tphy_debugfs_root_create(tphy);
> > +	return 0;
> >  
> > -	return PTR_ERR_OR_ZERO(provider);
> >  put_child:
> >  	of_node_put(child_np);
> >  	return retval;
> >  }
> >  
> > +static int mtk_tphy_remove(struct platform_device *pdev)
> > +{
> > +	struct mtk_tphy *tphy;
> > +
> > +	tphy = platform_get_drvdata(pdev);
> > +	tphy_debugfs_root_remove(tphy);
> > +	return 0;
> > +}
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
