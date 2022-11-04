Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E74C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 02:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=261f3ownuQn+FBy7SO3YCmJeRSu1F4qzFuTGf5O1jEg=; b=evBNYX/NI5fhf7
	oYmKZA9WQaE8pO2DkS1qPgQJF31927N5i7yXx7L0KeEYbJZSvJWYnrZAOKW4R70H9CoGADEOb5m9F
	TilKGnhn0KY+HFwXlorQ8/TjiFVc/tMUzmZLP6p/rbxlf5H6zS9Y7Wz/7jLmv9XOY2E0FEGl+n55D
	FHOmdblQ9RSEoHdzHSE8es9SuI2zFyupi6/VsaMWB9Oo+z/+YNiaCiQPDJbSKCvux1naWvsTLiNoU
	t47K0p4ZMnuuYrH2VSGbm21a36PHBRHhMfMGN37IEpdsi1aXePiafRVyrYIgggf4RJ7qbPVsNtu3s
	GAEPVAdqfhog9vROJSaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqmJM-002DR8-Mr; Fri, 04 Nov 2022 02:20:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqmJH-002DOu-Mr; Fri, 04 Nov 2022 02:19:58 +0000
X-UUID: e25657c476f543c590104f827662ba1c-20221103
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=w0pc0Ucd/LkCHlNBDuNm68ayTR8bWv42aa6fCIQjrc8=;
	b=t5xKl2aqAfkk0VNHZEotrRvW4o/680B/9D6T4RewH9Wf01vF8NB1NpTjE1e+3vmIHEhNuS7rDduzU7xyNHJd21hqnge+Rb4GP+rt1w1XuaGLmUyx0LFP7IZthsfl4en+D+vonBiY056nVTHOA1kDg/iRGyrfMVuhUUVjkhylTDg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:304bab39-e909-4683-b15d-0a8d7b7a30f2,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:62cd327,CLOUDID:c83263eb-84ac-4628-a416-bc50d5503da6,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: e25657c476f543c590104f827662ba1c-20221103
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 606342706; Thu, 03 Nov 2022 19:19:51 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Fri, 4 Nov 2022 09:29:46 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.792.3 via Frontend Transport; Fri, 4 Nov 2022 09:29:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEd997N6buTFu7b8TJKX3Y9DVRW4kc+eWV7mmk4GybEvAtOW7da3uA2gjRfZp/wS6Kj+wY2k2xtpDNDpBLYeZHH2jBsksCOWBeLxXiloxGzoRXHsoDotetHFTTdFFpsWONAetHSDGBTBmUQ//d9JozbzguGNZuDGNFCQ2l3g9jx69fPyk6+n/xAaf9ZqHw7Xgk2wtE6bfoYEDcCI8hTOyN6GPs8Rv65OpbtnqqFmthYZeWFGRR6M/n1RJELgU1DEEjdsUiFO8wVnPnhUXPIjvQzn4TNeMqGunMKvvnpsHkXn6Sk+VgrBnmtSFQ1wSRmh2SpJOTmt/mU16YXFqSC/tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w0pc0Ucd/LkCHlNBDuNm68ayTR8bWv42aa6fCIQjrc8=;
 b=ASFaRCKFJA78mxxuAlB63v983NH5JJgrTiuO4F8tN8TUO0NGJZaNvndgsnf+bc6FHx0wWWC+Vr7gVkxX91zPcEL8yE7sxOfHQZNVWmRMip7pLlq2vpujJ2d5hTR1K7+dP6AgOg0fUKWTHUA9ADVUL15FyF36xLjj8cUz9M8+wAtOyfLmukYSWC3sxOAOd0minWNTgpKHpmCd8YiMEm74HdnomBdvzJBroxQ8Fq0/z9feK8Ck5MzqpCmpsUPDFNvWQMhToVcKQci04MRsM+oJq+/d7Y5rHkazUKSCw4XjjgbC6Ou1ac4KNJI4rQ7RHd7Lvr5tRuc+OsMgEEjAbcWZ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w0pc0Ucd/LkCHlNBDuNm68ayTR8bWv42aa6fCIQjrc8=;
 b=gdop3ManHuQimmgpSpt09lL9YeYOQNZZJXbCxIdJT1pJfJDc55/zJYU93Xmz6im5rnmV/qmjZ+JeHB6ENaWa7F/dzIGQ5v/25C8TNTFa/w8KDlRlK2CH+bLcKP3WsoZvO3dvkgrDsfOS9ocyrfYADJFU5Xe0w9/0IuVqtzd5CqY=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by KL1PR03MB5764.apcprd03.prod.outlook.com (2603:1096:820:64::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 01:29:44 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::36ea:bdbb:ed9:c34]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::36ea:bdbb:ed9:c34%6]) with mapi id 15.20.5791.017; Fri, 4 Nov 2022
 01:29:43 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "lkp@intel.com" <lkp@intel.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"kishon@ti.com" <kishon@ti.com>, =?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?=
	<Eddie.Hung@mediatek.com>, "oe-kbuild-all@lists.linux.dev"
	<oe-kbuild-all@lists.linux.dev>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "llvm@lists.linux.dev"
	<llvm@lists.linux.dev>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH RESEND v3 2/2] phy: mediatek: tphy: add debugfs files
Thread-Topic: [PATCH RESEND v3 2/2] phy: mediatek: tphy: add debugfs files
Thread-Index: AQHY6DSXvvMcftIMS0G6zAmMLMx1Ga4kj32AgAl57oA=
Date: Fri, 4 Nov 2022 01:29:43 +0000
Message-ID: <ef9afdff00d9ebe0cafb4e0501b7829c715f1fc6.camel@mediatek.com>
References: <20221025054233.9763-2-chunfeng.yun@mediatek.com>
	 <202210290849.MsVBcy4w-lkp@intel.com>
In-Reply-To: <202210290849.MsVBcy4w-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|KL1PR03MB5764:EE_
x-ms-office365-filtering-correlation-id: 9a2fc3e7-9deb-4c82-6660-08dabe040d54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IypCwgK/8RYsNxfnb1+vGuLIGINOp3kOAPya+f3Qvw+E1WoW+mX9oJkx+94xuagoZWSCOAe+bKKfqHYxGGXdrBgoQUF9zx4BzaTM0ZDKBErWOXXHb8d42JWo56tHQ0R7QIBG003jouBHuGRu+FEx2a99mh37ntKNMPTy/mrc54e2eVN5nyYSXAnERb7xNfgr+60o9TYEiRX7MwK8MqowwM4UyL2H0NQRSdQ0w1YRcVm3H6gkFSds12Wzoxra9vxfagdMe039uQpFn78qDm2RYHrJ9r54jxMGibcBAyqJadlom3S2t+TVSuMQ8MLKE7A4PlSeap6t2HhimG4XwHr8vPW1IhBGQTgzD0yPs8dRcoKpMCjzIyRDdlSe4M04wdHmx7wa20VWyxxjzJDjy3Ze9rkKsi/gV7dhiK4J141Ik3rI6hTdB3o+Zm8GSOARs1k/EdATcZXbRIc2JU1ZWYizr2mYLQvSh+rJxbBRopqPKesO34yzOkGPP3H6l2DkEgczrHWek2QaWvGps3rysThGzvuE1qTLaP6iJ2wg7GWooM19KxYwOvIsOSk4mDLMjpSMVtz/E4sLT6ALEr3PLiIWAc/m6BBvKQOdLE9aoJ68644v0oAdKIQjkG3bjmBj27rUDJg9PcDmTTXUvkfKzGl3GxBixj+N+PZJEScU5vpzhlETMQ0u/jqySxtnqGL7h8JM1q/YmXWSd5oRk6SU5+9rFg9wEpTT3is0Ftrq0A7SdX4YQNQkdHhPRyjyJjp8bwKUP5ni9n30uSC2BGJ1SZ67jZI6b44HozfPsGGZHLvQvYzOB5uLal6Og/2hI/UAt1jE8ZR6o+AQR4Y9dZLFQ/JjUWD4cGYCoRuAqnH+YgQItyQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(376002)(346002)(366004)(396003)(451199015)(76116006)(5660300002)(83380400001)(316002)(71200400001)(38100700002)(966005)(64756008)(8676002)(66446008)(41300700001)(4326008)(7416002)(6486002)(110136005)(54906003)(30864003)(36756003)(8936002)(478600001)(38070700005)(6506007)(6512007)(91956017)(86362001)(2616005)(186003)(2906002)(122000001)(66476007)(66946007)(4001150100001)(66556008)(85182001)(26005)(99106002)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDVtdnJjL3Y2dG9JTUhOWmZ1N3lHRnhwRVJFM0Q3RXkrdmZzQk9OOVBoNXh3?=
 =?utf-8?B?NFRhQlZHd3pqK2paQVRPNW0rRnE2ZXkyR1RncG1XVllXTks4N2hkU0ZicHA0?=
 =?utf-8?B?NDUwN0hlcUJIRmg2UWltbXBhMUFIaTZDcHZyN05tMGJtMlZxUDYxU2d2Lytt?=
 =?utf-8?B?aWZ2QmZXTlcrUDF6bFk1UXBpakwxOHZGZEhGWGdFemRsaGFpWXdWZlY1bk1o?=
 =?utf-8?B?Zngra0s2ODd6VFEwZUJMRExpc0JrZCtHZ0hJY2F0SmJSN0tReThIbDcyajlO?=
 =?utf-8?B?QjdCRmtXUHYwYzZxc2w3OS9CMzV4Vm9wVm1HanlDRHdPeXd3VXJPRlFNanNB?=
 =?utf-8?B?NW1nMmtZbHd2anpNMWRBUjhqTmFMTXB3ZDN6UW5HeG9SZGxmNkh6cklqZEJW?=
 =?utf-8?B?R1FjaU83UXdIc2ZKZEF1NDNLQkcweFB3S2pISXNVVmg0UStXRHB6YlM5WGp0?=
 =?utf-8?B?N2tHV011cHdSMXU5VHFBWm9PTWcxVkpmV01wZlJaaW5UZEdwUFEzTTJCT0dx?=
 =?utf-8?B?M3BWYWdReko4SW9qRUZtZkQyb2M0ZHZBRFQ0djVseEc0bkNTSlFNNEdXSFh4?=
 =?utf-8?B?alJVbjY5dXZuYjRyOTFQbjJJYmVTeE0wVVdnVHhlUVZrQ3NsMWpMN05EV0Rr?=
 =?utf-8?B?Q2RoQVlXOXhrVzUvTS8vV0FscEh2cWZhZkhWYlAvc09UUzNSUXJrL044M2tU?=
 =?utf-8?B?M1NBOVFkV0l5a2o3cHRVV3J5YU1WdklMMHZoLzJGMmRCUFNUQWhHZ3RRNkE2?=
 =?utf-8?B?cWxzUWhDMUxwVEhMMGVEdHgxaGVCK0F2MDZwclhQbnVTcU16RDRKc1FJRHQ0?=
 =?utf-8?B?U2ZBN25XMkFKb1FQVCtJY3JjS0RIZTdKQnN3bzcvbmJLeWdlOXhOZG1yaTBL?=
 =?utf-8?B?dE9hS2c4V3JFK3VqZ245bk9RSm1iU201RDdLRjJVdE92OGVpQlFPQ2pUWUox?=
 =?utf-8?B?eE5Pcnd5alhOaXJhdEp5VkQ0Zm44Y1JETDhxZFVzMi85amJZV0lsWHpGTkZt?=
 =?utf-8?B?N2hNMW15U1FweHFuOWpwZHMybVR3NjhTR0N3Z1ZsY25ETUllR2FLaEVRTjhS?=
 =?utf-8?B?UDROT2JBVUlOVlZQbE1oT0VUanRlejZGOGF5RVU4UFluSmRXMWZRK2k0M29H?=
 =?utf-8?B?ZDQ2b1lNZ0JuNFhtcks4RkR6MGJQSTAxc3VlNmNaYWxzclhRL3U3ZWdtdTMy?=
 =?utf-8?B?NXVqMDRZSXg5eGVoYmNSMmdLdW5iLzFsbWU5ZkxFc1lLN05yQ1FTSXE0N3lU?=
 =?utf-8?B?c1ptanY5Ti82OFJNQXd4S3RSMXFRTkxabERrVlROVXBNOWNhY3hNcmgrb1da?=
 =?utf-8?B?NlJnRXlISExxczNyMHBIUFhSL2RIY3ZYL2M5T25zYUY0Zk9HMkRHdkNqQkxh?=
 =?utf-8?B?VjVrbDlFb292ejlKdWUxY24xZEVsNjhxZmN5YjhvdnZvRTRRcFo1eDI3NEhR?=
 =?utf-8?B?N09JSDhBaTBYMVYwNklvQUlBN0hKUitjOTBhY05vdWJ0RlhRUzRQQVcvcXRH?=
 =?utf-8?B?eGVlUWlyS2wrVmdrMjRZTU94S0FPS2dXNEE4NjR1NGhHUzVSMW5qM0FROWZM?=
 =?utf-8?B?ckRDL0p6NXkzT0JFOU5QNXhWb3ViZWt0bVk2NmE4U1ZiYUNJemZTUGtYdWlX?=
 =?utf-8?B?ZWw1cXpNUjhCblJMNXdIekZkd0gvMURrT2lkTHhSODgxODl1dGVXblFMV2Fw?=
 =?utf-8?B?RTU3L1BvMFFhcGkvRkIybEFTK3MxOStVZ0FLZHZFcStWZHR5ZVM4WlVpMHVk?=
 =?utf-8?B?dWowenRUS1NVdFlPZ3NWK0Jmd1JkS0ZkRkh6WWF5bjR3MHBaVkxmcjBMZTZM?=
 =?utf-8?B?bUg0V0NBWS9zeUk3aDhJNjc5QkVwQXBRdThMSmorSDVzS1lXdWRTZWpudXRt?=
 =?utf-8?B?dG5aNThtMHExS2NsbmRweWMzNXNwVXpRelk5MTFRbGQvWDJDS3V1THJEb0RV?=
 =?utf-8?B?R1F4dGpRMVFFeFYxL3d5N0Z0Zk9xMmZUb0lYVkYvaWZaYUYxcjhHZ20yUGtO?=
 =?utf-8?B?T3h2NG5kbDJXM3FyQmRoejZkYjBnUEExa3RibVZocXFxeXVzQWFxYURxdmxw?=
 =?utf-8?B?TGJxV2ZsczhDdUloVlQwR3oyUEhJRElUSkNQN0R4KzRrTm1FMWVjeTdqZUta?=
 =?utf-8?B?YW5oUEpScER2U0RrMXlOZVppU0RtWlZIUlFMMmlBNzUyYS9HNldyU0NZTi9v?=
 =?utf-8?B?L2c9PQ==?=
Content-ID: <931FF9EF8E303C4799B08D192539951C@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2fc3e7-9deb-4c82-6660-08dabe040d54
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 01:29:43.8815
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jXPYSbn+MMcG4DiQ5uAmP0aJOC1ETnCBt38hEBwkPOJQLcx0Ac8W7EhbdSh0lyRnAxbVy+ntzSS2+LqKZLSqxrH4K79srDoJOFWyyV01lj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB5764
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_191955_802468_80CD58D4 
X-CRM114-Status: GOOD (  16.67  )
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

On Sat, 2022-10-29 at 08:46 +0800, kernel test robot wrote:
> Hi Chunfeng,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v6.1-rc2 next-20221028]
> [If your patch is applied to the wrong git tree, kindly drop us a
> note.
> And when submitting patch, we suggest to use '--base' as documented
> in
> 
https://urldefense.com/v3/__https://git-scm.com/docs/git-format-patch*_base_tree_information__;Iw!!CTRNKA9wMg0ARbw!z3s2-V0HQmy7WniZmIk27fAkjJ-SWgBBh_9yIedH9eC1yz0opmDxTk9SKAYSolmkDxbL$
>  ]
> 
> url:    
> https://urldefense.com/v3/__https://github.com/intel-lab-lkp/linux/commits/Chunfeng-Yun/phy-core-add-debugfs-root/20221025-134424__;!!CTRNKA9wMg0ARbw!z3s2-V0HQmy7WniZmIk27fAkjJ-SWgBBh_9yIedH9eC1yz0opmDxTk9SKAYSog09qFwS$
>  
> patch link:    
> https://lore.kernel.org/r/20221025054233.9763-2-chunfeng.yun%40mediatek.com
> patch subject: [PATCH RESEND v3 2/2] phy: mediatek: tphy: add debugfs
> files
> config: powerpc-allyesconfig
> compiler: clang version 16.0.0 (
> https://urldefense.com/v3/__https://github.com/llvm/llvm-project__;!!CTRNKA9wMg0ARbw!z3s2-V0HQmy7WniZmIk27fAkjJ-SWgBBh_9yIedH9eC1yz0opmDxTk9SKAYSoj8X7Pu_$
> $  791a7ae1ba3efd6bca96338e10ffde557ba83920)
> reproduce (this is a W=1 build):
>         wget 
> https://urldefense.com/v3/__https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross__;!!CTRNKA9wMg0ARbw!z3s2-V0HQmy7WniZmIk27fAkjJ-SWgBBh_9yIedH9eC1yz0opmDxTk9SKAYSont3c9j-$
>   -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # 
> https://urldefense.com/v3/__https://github.com/intel-lab-lkp/linux/commit/6dae09cf2d77be80664d0ec84f631c6282fdb728__;!!CTRNKA9wMg0ARbw!z3s2-V0HQmy7WniZmIk27fAkjJ-SWgBBh_9yIedH9eC1yz0opmDxTk9SKAYSoou8Is0N$
>  
>         git remote add linux-review 
> https://urldefense.com/v3/__https://github.com/intel-lab-lkp/linux__;!!CTRNKA9wMg0ARbw!z3s2-V0HQmy7WniZmIk27fAkjJ-SWgBBh_9yIedH9eC1yz0opmDxTk9SKAYSovcqtevR$
>  
>         git fetch --no-tags linux-review Chunfeng-Yun/phy-core-add-
> debugfs-root/20221025-134424
>         git checkout 6dae09cf2d77be80664d0ec84f631c6282fdb728
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> W=1 O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/phy/mediatek/
> drivers/staging/rtl8723bs/ drivers/tty/serial/
> 
> If you fix the issue, kindly add following tag where applicable
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:479:4: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                            mtk_phy_update_field(u2_banks->misc +
> U3P_MISC_REG1,
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:484:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(com + U3P_USBPHYACR1,
> PA1_RG_INTR_CAL, val);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:488:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(com + U3P_USBPHYACR6,
> PA6_RG_U2_DISCTH, val);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:492:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(com + U3P_USBPHYACR6,
> PA6_RG_U2_PRE_EMP, val);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
> > > drivers/phy/mediatek/phy-mtk-tphy.c:556:2: warning: variable
> > > 'val' is used uninitialized whenever switch default is taken [-
> > > Wsometimes-uninitialized]
> 
>            default:
>            ^~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:561:45: note: uninitialized
> use occurs here
>            seq_printf(sf, "%s : %d [0, %d]\n", fname, val, max);
>                                                       ^~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:524:9: note: initialize the
> variable 'val' to silence this warning
>            u32 val, tmp, max;
>                   ^
>                    = 0
> > > drivers/phy/mediatek/phy-mtk-tphy.c:556:2: warning: variable
> > > 'max' is used uninitialized whenever switch default is taken [-
> > > Wsometimes-uninitialized]
> 
>            default:
>            ^~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:561:50: note: uninitialized
> use occurs here
>            seq_printf(sf, "%s : %d [0, %d]\n", fname, val, max);
>                                                            ^~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:524:19: note: initialize the
> variable 'max' to silence this warning
>            u32 val, tmp, max;
>                             ^
>                              = 0
>    drivers/phy/mediatek/phy-mtk-tphy.c:593:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(phyd + U3P_U3_PHYD_RSV,
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:598:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(u3_banks->phya +
> U3P_U3_PHYA_REG0, P3A_RG_IEXT_INTR, val);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:602:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(phyd + U3P_U3_PHYD_IMPCAL0,
> P3D_RG_TX_IMPEL, val);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:607:3: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>                    mtk_phy_update_field(phyd + U3P_U3_PHYD_IMPCAL1,
> P3D_RG_RX_IMPEL, val);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-io.h:43:34: note: expanded from macro
> 'mtk_phy_update_field'
>            mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
>                                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:114:3: note: expanded from macro
> 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP:
> ");    \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~
>    include/linux/bitfield.h:71:53: note: expanded from macro
> '__BF_FIELD_CHECK'
>                    BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)
> >     \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ^~~~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-
> limit=0 to see all)
>    include/linux/compiler_types.h:357:22: note: expanded from macro
> 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_,
> __COUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~~~~~~~
>    include/linux/compiler_types.h:345:23: note: expanded from macro
> '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:337:9: note: expanded from macro
> '__compiletime_assert'
>                    if
> (!(condition))                                       \
>                          ^~~~~~~~~
>    drivers/phy/mediatek/phy-mtk-tphy.c:785:2: warning: result of
> comparison of constant 18446744073709551615 with expression of type
> 'typeof (_Generic((mask_), char: (unsigned char)0, unsigned char:
> (unsigned char)0, signed char: (unsigned char)0, unsigned short:
> (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned
> int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long:
> (unsigned long)0, unsigned long long: (unsigned long long)0, long
> long: (unsigned long long)0, default: (mask_)))' (aka 'unsigned
> long') is always false [-Wtautological-constant-out-of-range-compare]
>            mtk_phy_update_field(com + U3P_USBPHYACR5,
> PA5_RG_U2_HSTX_SRCTRL,
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ~~~~~~~
> 
> 
> vim +/val +556 drivers/phy/mediatek/phy-mtk-tphy.c
> 
>    518	
>    519	static int u3_phy_params_show(struct seq_file *sf, void
> *unused)
>    520	{
>    521		struct mtk_phy_instance *inst = sf->private;
>    522		const char *fname = file_dentry(sf->file)-
> >d_iname;
>    523		struct u3phy_banks *u3_banks = &inst->u3_banks;
>    524		u32 val, tmp, max;
>    525		int ret;
>    526	
>    527		ret = match_string(u3_phy_files,
> ARRAY_SIZE(u3_phy_files), fname);
>    528		if (ret < 0)
>    529			return ret;
>    530	
>    531		switch (ret) {
>    532		case U3P_EFUSE_EN:
>    533			tmp = readl(u3_banks->phyd +
> U3P_U3_PHYD_RSV);
>    534			val = !!(tmp &
> P3D_RG_EFUSE_AUTO_LOAD_DIS);
>    535			max = 1;
>    536			break;
>    537	
>    538		case U3P_EFUSE_INTR:
>    539			tmp = readl(u3_banks->phya +
> U3P_U3_PHYA_REG0);
>    540			val = FIELD_GET(P3A_RG_IEXT_INTR, tmp);
>    541			max = FIELD_MAX(P3A_RG_IEXT_INTR);
>    542			break;
>    543	
>    544		case U3P_EFUSE_TX_IMP:
>    545			tmp = readl(u3_banks->phyd +
> U3P_U3_PHYD_IMPCAL0);
>    546			val = FIELD_GET(P3D_RG_TX_IMPEL, tmp);
>    547			max = FIELD_MAX(P3D_RG_TX_IMPEL);
>    548			break;
>    549	
>    550		case U3P_EFUSE_RX_IMP:
>    551			tmp = readl(u3_banks->phyd +
> U3P_U3_PHYD_IMPCAL1);
>    552			val = FIELD_GET(P3D_RG_RX_IMPEL, tmp);
>    553			max = FIELD_MAX(P3D_RG_RX_IMPEL);
>    554			break;
>    555	
>  > 556		default:
>    557			seq_printf(sf, "invalid, %d\n", ret);
>    558			break;
>    559		}
>    560	
>    561		seq_printf(sf, "%s : %d [0, %d]\n", fname, val,
> max);
>    562	
>    563		return 0;
>    564	}
>    565	
> 
I'll send a new version patch to fix the warnings;

Thanks

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
