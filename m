Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07457C00A5A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 02:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NTES75b/PeHzWKuA/3or4I1tSiBokdJyl5xOzA/4DU=; b=1uXmFgDQdLnBWo
	Y7PPeivu2vyhJ8wscrWDRFBuz7T1MEo7rJRt5UcSC7Gi777vwzz+7FAV3vs7uo+mxJ4/VXgla1hp1
	giOIWvUNdfp+GwGbMuNLgVDaeMdiKdS/69I/iESzoTuu4M9KJTOuxXN1NGu2Z3wKpIWz3WHvliCFm
	ioqxcAL7aSlQxjWRKOPa+9CyP8BVjCqNLhdr9D/a8RXWmEqhsB25+twAFBqUSjTmp8MEQGqkqBIuu
	uSMWBYEcCr86HnlB3cpqrbwZKMqvTUqc69LgMNjXYuSS2A29yWkaa6iUhb92xTGhjExl98RK9s1v/
	oI0oxkTnRASXlpryXcHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHxne-00GX2z-DY; Wed, 18 Jan 2023 02:03:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHxnc-00GWz5-RN; Wed, 18 Jan 2023 02:03:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To
	:From:Sender:Reply-To:Content-Description;
	bh=MXjRsdc3n1PE3Zd9kMsNsLPNMAHg2Z4h3MyoiHETM+4=; b=fsmkCQEe685AKGdeoRZKhg5PJc
	SjTPNko/T4w0gPNcKDf5JSrdO4Zp325TZknfp709xAXoQXjG3ZeU3ALyrCJ3JZz6AGOWcuSas1aVf
	GVgep9QtbZBKLJU+lZMf6Zjpnz6Z4Bj3MSfsmdmTW+2Ted0EnfBM9DKpfTBCK7CJtzCW/re5Y8zED
	6aQGl3nvBth3MhMX8pWxWLXF2hGyyKQ0BL7DnisetSBuwZ33W0PiJlfsaoHtRr0PuuZ5MUciGM1BH
	k7bm8+PWkDsjc0IKAdpQdlvD+nGmSpWsVdunc4QnGQWj4q4V8Ll9xHKtHYaWUBx7oJtRmSO/hoAxq
	GHr1A/qw==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pHxnI-0067hg-2q;
	Wed, 18 Jan 2023 02:03:25 +0000
X-UUID: 34977ac896d411eda08d4d6090ec5a5c-20230117
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=MXjRsdc3n1PE3Zd9kMsNsLPNMAHg2Z4h3MyoiHETM+4=;
	b=bdvf3vcs6mmvUcMTJK/p0x82zpiKU5hx0r/tpW4Q5c9z0YmzGuP271XDc1KebqLWQhxoO8WnXeR6nZ2Ml/Ch5CykHzyhiXBFS+E9vpQP3woyXhbsmtUrEQ/lyfQMLr/+F5dhgaLh+1F5BDP1gmI2lTuJRlZCrvC6ie9EfH1ZhFM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.18,REQID:d080d918-d3fa-4544-a5b8-8b543750403b,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:3ca2d6b,CLOUDID:4a8af354-dd49-462e-a4be-2143a3ddc739,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
X-CID-BVR: 0,NGT
X-UUID: 34977ac896d411eda08d4d6090ec5a5c-20230117
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1619652091; Tue, 17 Jan 2023 19:02:47 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Wed, 18 Jan 2023 10:02:10 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Wed, 18 Jan 2023 10:02:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMjuMR0kPDfWlIF0W8gXYc79FwWCv6k9DJzlvw/HBqppwQzZyukaJgJD4DtXyHveOLkCBggOWuDSHhpnCMWWCiM2mys148ww7Tv3Fnx7Cplabm9NeXBkw+yP+hIdtXR5vRsBGB5EC2BmGifJNu1ycJ7Oi6HsASSyVXoqSkzkAvw3tIdH9UZxndsfOUd8juYAkTbt5Ey3uVBdsfMd3iA2VvKqz/OUCAuiCMX+oFku1tMrDQ/uFvT6M5mEXr+JBxgniWakWSJYmSYftbb1SN10mY1nw2lfd6Pa0lYc9Y2S0p2a1dOT6LxtfmoX6Byj5JuzZBljI+0HoS4H140qMA+dUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXjRsdc3n1PE3Zd9kMsNsLPNMAHg2Z4h3MyoiHETM+4=;
 b=PIwF/G+II+Zl/ilAGLR2UYkxgZEKEJ3izy5GGtkKGalTxpRkjyWTEOqNluGsEjJwl2qCA4qukB2+5SV4ELhdfNsMKOj+6Ju0/LYJtlEnpQ12T2pYFNpca8eljejI2o+kR28eaS2KR94A5/STcV7BhCBY+W8B4zLdJDUxsxVRlOb8/vh/5sH09pM+syLC75GgiaaOhweP1hb7W1E1ibxuZKA/MxBtac4tTKcSDJZhYOccDm4RcKnbUH2l3sajGusss0loaAoh2W+Fq9fDG3/p5iHyZEG6Dq0XroGbdQOkkUC0mJhSL8LwcxbRqgU03Fz/quRi+5hnwF4LfR4Lp4t7bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MXjRsdc3n1PE3Zd9kMsNsLPNMAHg2Z4h3MyoiHETM+4=;
 b=aghA5fllxFbWIjSKQ09VYRe/jhlECyF7oEaGvGRO0yr9uCdyNRkJ9jUlF1hAi/5dPhCqTvkXmxlFbtjs/ALBg26mPuYQYYR11fZvbmxBFIqXRwB4oILLDmdk1RhlUN6VD3w7SkpamgmrTBjhc1vaO+AJV8SwpdpVbhZF11GBM3s=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by KL1PR0302MB5187.apcprd03.prod.outlook.com (2603:1096:820:44::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12; Wed, 18 Jan
 2023 02:02:08 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1%3]) with mapi id 15.20.5986.023; Wed, 18 Jan 2023
 02:02:08 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>
CC: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nathan@kernel.org" <nathan@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, =?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?=
	<Eddie.Hung@mediatek.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "trix@redhat.com" <trix@redhat.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>
Subject: Re: [PATCH v6 3/3] phy: mediatek: tphy: add debugfs files
Thread-Topic: [PATCH v6 3/3] phy: mediatek: tphy: add debugfs files
Thread-Index: AQHZIEA44YFL/mrrbEuqD9Ku1qRfkq6ctaeAgAbLkwA=
Date: Wed, 18 Jan 2023 02:02:07 +0000
Message-ID: <1036fcf7661d0b6544c416fd8c9423836b9eb1e9.camel@mediatek.com>
References: <20230104132646.7100-1-chunfeng.yun@mediatek.com>
	 <20230104132646.7100-3-chunfeng.yun@mediatek.com> <Y8Gf2xxq7iaV/+ax@matsya>
In-Reply-To: <Y8Gf2xxq7iaV/+ax@matsya>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|KL1PR0302MB5187:EE_
x-ms-office365-filtering-correlation-id: 0e08967e-c71a-4780-0c2a-08daf8f80102
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w0w7J8W14YEB97RUZzc0g/GJxEKWdnnMqq7GtIlAQ4ib+62hipsfVJWDhlLhZC0TAP133mXttNMzrgJOLsiildHi2G9lyT9DecV4FF5W6oDxBKgEnjTZkYWZfXNBH7aPa9OPTz487cw+FjT30m2xR/ChXE/IcGPO2o7OWwZ3Yzy+7o+96Qv3lZdh5r4Qx/9HnUjtuFos01ZTDemKap4yFk/hnEOE9OZKizfnMax3wlbk+u1ExWU8dmSjXSu2baDzuQzWPQ2IKOAn2Ho3C8hWpR/6U0f60AkSV+wdgCjQ1lxreYeCbl3B0hqMWk0vJTBrLG1HbF4n67fzwhD0x13PNc92Uy+j7M4BorVLER0o2RD7aSuZjw/U9GF0+9YvxSI8i6GJCwIBa3GCWjS1cgJt1EOx5Hi5i9bHwNBxboq1gs+TduxwNBjtgL3Na3KbxlJhHEPOZLh8DUg+mC2eyXAywZb0A2GIMfRSD7pQPv47j8Vvp80LYZjFP5fRbFm1c12CGzaajZM4F85NjuuqDXY+PhxtX6ffme6Ve27YjcSkkN5wp7s5Xaxo9WZBo+3n/0pn5RcGC8lxTFwpmS6NXmtVFvUzzT2hhjRF1a0Pj2MJAEEVFV0vRgEqISVj3X7Fu/kSBApYSHZGtzpaz0tuW0VkNl38/LNoYCGujGA9E8nw99BX2J9RUEzIqPoFhY3NTzBUu2OoQ9W6CGqAdVos9HO0Vw4XydAUNdEqLJZUjO0qC1SzRZg+EE+GmAg0JCXP4uh/25AtoY/5HrAXh5JYBARQDrNFXBSxriSQYEXTpjAawOo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199015)(6512007)(38070700005)(71200400001)(122000001)(478600001)(38100700002)(36756003)(53546011)(6486002)(966005)(6506007)(186003)(86362001)(85182001)(66946007)(8936002)(41300700001)(5660300002)(26005)(8676002)(66446008)(6916009)(66476007)(76116006)(64756008)(66556008)(83380400001)(91956017)(2616005)(316002)(54906003)(4326008)(7416002)(2906002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjlGMVVaZk02Nk0xNXBQNlNNVDJoYStvd3lmTjFJZnR2SHNvc1VXVGlJaFlU?=
 =?utf-8?B?TzNyNFRONWZmS1BQNnJkSFlyQ3V5SFdlcWJFYVBTVzNqR3RFRVE4Y3RlVzlZ?=
 =?utf-8?B?LzFZamdTQzlpaGhWaW1Dc0JoQUtEL2Y3VjlrTG94VkxscTZscXRETFE5K0tM?=
 =?utf-8?B?aEoyQjdJa0M4NEZhcEJBVXgzQzRZc2swdzRIOE51RmhnZEZtVFl6a1RDYVJE?=
 =?utf-8?B?SlZUM09hdmFtajRIMXJHVTZWYmdMVEZVMkRXd0E4YmRjbUpzKzNtZTAvRlBL?=
 =?utf-8?B?MlBKYmZJanhyRGw0VFB0UmNBcDJUb1ZXOVg1R3pXSlNwdzAxZUNzMGpobStv?=
 =?utf-8?B?Z2pqTjdoVy9pU0xhSEg2YUJuWWdralk5djhLWW1XNHR1eHN6c0dPNVpWeDV3?=
 =?utf-8?B?YndlQzFsY2tYczlxR2cwdm1jbDJkR1UrVFNzbmE1U1UvWkdlTlRHYWJZOE9r?=
 =?utf-8?B?cysxSzE5MXByTXhWczUvRHV4ZU9OeXJrTEpCanN4YlVzejZPYVduUGl2UVBE?=
 =?utf-8?B?aEJ6Sk9Dc3NpUEZUNXZQU0FrRFB4TDZTdC92aE9zTjVud1ZmVHJyNHAvam5M?=
 =?utf-8?B?clZFeGV5N0x6TUxpc2JMdTJSdGhucEZEdzQ3OW9RWm9ZckZpOFplSldCamMv?=
 =?utf-8?B?b3ZBeDdWc2V0ZEZNK29lek81NWlFRjVNUk1Jak56VVhxZ1dYMXc5QXJuY2pt?=
 =?utf-8?B?ajBYUS84d2NkL21HOUQxeHdTOGxZN2tkbDJ2aUxoTlBhVis3aEJsV3JDMDJk?=
 =?utf-8?B?d201dXcrZnpabjRNUS9MMVZHazgwK29ZeVhmZDkyajMxZm9VS0ZrVU5aZnFK?=
 =?utf-8?B?bHdycndKcWpQcUVJMlBuRk9ISGV2SkxQV1l4OTU0d3VuS2lYTjN4cDVFNlZ5?=
 =?utf-8?B?Nllwa0RqWWZhSEFBVzYrQlFxdm1KcjMyeEV1WmFVNmxIdjFkSTZSUHRHckFq?=
 =?utf-8?B?QUNBd1RNL0lhd2g0Q0JtU0xGeExIalA5NVlFM053QVdxcmdpckdHZEVWMFE1?=
 =?utf-8?B?TjZINllqVWhDMWpaRGRHNkx6aitkYjEwMnB4MGE4RDIvQzFKMCtxdEVVcUZm?=
 =?utf-8?B?cEp6Tm9ORjhJK3c5UkJYRUk1cGJTUDAyVUs1UVVrRG5qK1diMHN0bUx0K0lY?=
 =?utf-8?B?ZFptazRvSXdPS1hveHNNNzdYN0RPU2wxcE9QamQ1QVVuaDRrUFBsZWxDSWFN?=
 =?utf-8?B?VmtMTU9SaWdHbHhNODd5WnFWUTV1dU5iM0Y1YnlvUEMvUFk2NnhYZElDekdG?=
 =?utf-8?B?N3lIQVlUQlNmcGFpZUtUc3p5ZHNTcXlZTmRWZU9rbUVSL2lIczJvTHdHb2tm?=
 =?utf-8?B?YTZRYUM4N2swT2I2NmplNFNZdzhrS2N0aVg1YmNJL3VYeGxkSTI1a09GV3dV?=
 =?utf-8?B?QWNya3hadmpSUXBQc0RFK3hFN2o3MDZPUXliRmVXdm0vTFJDOWFIckZxK0Fj?=
 =?utf-8?B?ay9TOVcvVzYzVThyWmdJWGgrZ0tUeVVqaWJhdVdkNk0xQUxIYmJrdkVaQ2lY?=
 =?utf-8?B?SVN4UDRybHRoODJITlloQ1p0bnZKRElXTStrYkN5WWtkNU9jMDN6SktKWmVE?=
 =?utf-8?B?NXNJRmdiNjJVR3VZT0EvVk9jRlRQck1Ka0wvQjlicG9QRGMzTFpabkNaVDFr?=
 =?utf-8?B?MlBjUDNJZDNtRENVSit2NlNlSXlqRy9aTlRYa3Y3aG00ZWE2Y2lCdFpNT00v?=
 =?utf-8?B?VkhVaWVNaFBJRXZHWWRiaGVZMzgvWHNtOXFvcXhEUzRkY1Q5TDU4RGZJejZQ?=
 =?utf-8?B?T2pSUWJ0UnZTRStDakNqaDRsb29pTlVJRzZMbnlZUnhQUExBSTlvR3gzdTlF?=
 =?utf-8?B?THpLb3lSR3VNQmxMd1hiUysrNHZQZ1R5ZGRaMTg0OG1Xc0RNWmFRS0JadnJ3?=
 =?utf-8?B?dW9RM21lTnBrL0F6MTgzK0VVUVdVdktHaEtEdlZMcTJLczBaOEJuZm94anBj?=
 =?utf-8?B?NVhCQVRYOEpaaUZ0S3E5ekdOL2FEZmFmamNFS2JCYnlFZ3pYSWNRYmR5aFhk?=
 =?utf-8?B?T2lQMUNxRkgwc0QrMVlBQmxmTDZ1Uk5ZSTR2UzhwSno2TVRBSUJzRFB0MDlJ?=
 =?utf-8?B?TnVoTWRSTmVGdmpTd1ZZTGo1UkRpTGUvS2VTeUc1VUtlTnMrMTR5bEdaRzEv?=
 =?utf-8?B?RmNPdHNYVDdVUjUwamxMQTkxYWkvZ1htMnpTL0tVQ3p6N1AvMzk3bDlJeVho?=
 =?utf-8?B?cEE9PQ==?=
Content-ID: <EBC697252BE99E4AB0CED0A0D89A6965@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e08967e-c71a-4780-0c2a-08daf8f80102
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2023 02:02:07.8679
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fo3iTmugtZDwIctUkTJpiHaONR108hfoEnLcfp+Jinz6Tq+MxOJiAEo2mFWzrl24NCOhhR6LAJzVYQO8tWYPibA9qd4X0qWzGaNLZ5F4Qqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0302MB5187
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_020320_243403_5F5934B1 
X-CRM114-Status: GOOD (  24.71  )
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

On Fri, 2023-01-13 at 23:45 +0530, Vinod Koul wrote:
> On 04-01-23, 21:26, Chunfeng Yun wrote:
> > These debugfs files are mainly used to make eye diagram test
> > easier,
> > especially helpful to do HQA test for a new IC without efuse
> > enabled.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v6: no changes
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
> > index e906a82791bd..923e5ee119f3 100644
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
> >  <skip>

> > +
> > +static void tphy_debugfs_init(struct mtk_tphy *tphy, struct
> > mtk_phy_instance *inst)
> > +{
> > +	char name[16];
> > +
> > +	snprintf(name, sizeof(name) - 1, "phy.%d", inst->index);
> 
> I wouold suggest driver name/ device name rather than phy.foo...
> again
> folks needs to see what is foo
> 
I compare the way you suggested again on mt2712 platform that have two
phy controller, t-phy@11290000 [1] and t-phy@112e0000 [2],
[1]: 
https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt2712e.dtsi#L827
[2]:

https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt2712e.dtsi#L891


Each phy controller driver will created a root folder according its
device name under "/sys/kernel/debug/phy", like as:
#ls /sys/kernel/debug/phy
t-phy@11290000  t-phy@112e0000

The phy controller has some subphy node, each one indicate a phy
struct, if use the phy device name to create a folder, it shows as
below:
#cd /sys/kernel/debug/phy
# ls *
t-phy@11290000:
phy-t-phy@11290000.0  phy-t-phy@11290000.1

t-phy@112e0000:
phy-t-phy@112e0000.3  phy-t-phy@112e0000.4  phy-t-phy@112e0000.5

phy's device name is created as:
"dev_set_name(&phy->dev, "phy-%s.%d", dev_name(dev), id)"

dev_name(dev) is the parent name, it's t-phy@11290000 and 
t-phy@112e0000 in example, id is the phy->id.

seems no need to provide parent name again.
another problem is that the id may vary if other phys are enabled, that
means the path may vary, it's difficult to write scripts to do test.

when use the current way,
"snprintf(name, sizeof(name) - 1, "phy.%d", inst->index)"
it shows as:
# ls *
t-phy@11290000:
phy.0  phy.1

t-phy@112e0000:
phy.0  phy.1  phy.2

@inst->index is the sequence number of subphy node in each phy
controller's node, when the dts is fixed, the @index is also fixed,
then for each phy, the path is also fixed, seems more convenient to
write scripts.

So I prefer to leave the code unchanged.

Thanks a lot

> 
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
> > +<skip>
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
