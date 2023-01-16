Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E91D0C54EBE
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jan 2023 09:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC08xQG/q/bQcnV7n43U7eKHRfIsjEMm/QHDcXGuF1Y=; b=arOb6k95a95rrd
	tsfYPIhdXIAcsvbKrb4qApeBgxvpoQu15FcHN/DtPwj0LMcBgj8rHky5fio1zKpEnz8nSXTjvyIe7
	aW0yXT+ihUmmap4/NOODct4ygrGOvFJkBRbcwTajGoR0RQ5DNfPiBnasSvCQ2/PT4z/ZLHek5NSz3
	UHvZCESzV8KOLsSNr7pTOik6eZfc6s1nIP6dN6wuxCZBabcWeb+acHgQJhrk7avRCoUKEy8hRd9CX
	AwRfWJfSsHFvmsQsfCe3ZIMD/8XuMkNz43oZp4gYvSmW3vICITaycUyXBeOS73BNxfQ/kFAY2Bq/E
	XUwOAAb7tl/thhobRvRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHLrD-009MvJ-DE; Mon, 16 Jan 2023 09:32:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHLrA-009Mt5-0Z; Mon, 16 Jan 2023 09:32:45 +0000
X-UUID: b6557ec0958011eda08d4d6090ec5a5c-20230116
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=eme5lYwujabdYMY0XvriFcEJV9cXxEaF5QcM8U8T1hA=;
	b=X/XKqXDdjimoHZ6GUyy1D6LuM6SRQD6Qe/yWWsrKh9mSCZW9M0xeHx+kJVt9wxx0vFD2MveWK45DBMO9wsvj8zufVPTimCioiHQZjqz7DrTOkN9SruvYk1T2RcSVEkr6XjArZXIrm2qkdZKciy8UC2RJmFnI9CcvkiY3YhtWozU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.17,REQID:108f7bef-3a63-44d9-8108-f16b7f07e570,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:543e81c,CLOUDID:4a96618c-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
X-CID-BVR: 0,NGT
X-UUID: b6557ec0958011eda08d4d6090ec5a5c-20230116
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1675280698; Mon, 16 Jan 2023 02:32:36 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Mon, 16 Jan 2023 17:12:01 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.792.3 via Frontend Transport; Mon, 16 Jan 2023 17:12:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZc5ghn6694RKzLu6azttsXFEqC7zUrcqwo1BPZSnoaTzew+cRgbOzTRbnNKPrStH+s73u6m94DEPzSsI23gSedv1DmJHor9aQdzL5g45ENyhGPU0H+oDUmwnoGbUHjuSiEgfK0vCF0Wq4VWqkOXKyv6fAuTeqxfdv7iH2Ogv9Mq3cX/xtTj5XGvLKO53HYP9EEKAfBRIfVNpAQuNNplbSOGFNQHzzB5yqrhkremfVL+CjwCqqHKwiECHeuSTNl/5l1gv6550XDlhEMflqP5Ly9OzMXqKuhHz0MBhx23CzSybyj1++ykN+katdU4ahgQaHhqK6DftfCmZrt1pjGO5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eme5lYwujabdYMY0XvriFcEJV9cXxEaF5QcM8U8T1hA=;
 b=fxEim4R5V9LkkK51+TE6xsOvV+/xzZrGv0ivlnr0FoAwH6fOuC7l12ZgPVXLr/yK6aRljMxQxz8egSXy3fSentvPs9LxCZ94HCyc6ZyKBFTis8qJk0nfhNeIWoPr03u4hnk61LBhv/nO2edIDekgDUClLcm3Oxq4DftkwMeb5xEWHzqkxrxW4ZM7eb48xu8Mot+09A2VRNHpmr38jr3Ipvc6hpVFZ4KzhbbmIqE4fEyl30YZTHWN1cCD+WivUi4ArkX6WOzKsNtKmajaZEJWBekBCYxqt0bVD/4HjxLdgRaYMYs5nyjvC3qXmU7zjAZZ3AslfQUnYJtIc9vmRQFuqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eme5lYwujabdYMY0XvriFcEJV9cXxEaF5QcM8U8T1hA=;
 b=cykjAXcmEXY9Q4jCAEW4yJlJSLn+xA3PvuTJ/1GHqf1dHaO5qCRIWQkk6AiFvkC31atYkcOGVYPK/tzDy505JxNitYfH1d4HVeLV87JHM59dyZFhikWUnVLxmK02ZyZo8E9WX8iuOU/qaifl31R6crHAAVIKkB57cZw+oVBGfJ4=
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com (2603:1096:820:1a::22)
 by PSAPR03MB5765.apcprd03.prod.outlook.com (2603:1096:301:83::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Mon, 16 Jan
 2023 09:11:58 +0000
Received: from KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1]) by KL1PR03MB5062.apcprd03.prod.outlook.com
 ([fe80::5e9b:f4cf:8d7f:60d1%3]) with mapi id 15.20.5986.023; Mon, 16 Jan 2023
 09:11:57 +0000
From: =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>
To: "ndesaulniers@google.com" <ndesaulniers@google.com>
CC: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"lkp@intel.com" <lkp@intel.com>, "nathan@kernel.org" <nathan@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>,
	=?utf-8?B?RWRkaWUgSHVuZyAo5rSq5q2j6ZGrKQ==?= <Eddie.Hung@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"arnd@arndb.de" <arnd@arndb.de>, "trix@redhat.com" <trix@redhat.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v6 1/3] phy: mediatek: fix build warning caused by clang
Thread-Topic: [PATCH v6 1/3] phy: mediatek: fix build warning caused by clang
Thread-Index: AQHZIEA7g6q5Ep2afU2pWWp4HJGwLq6cu2OAgAQZRIA=
Date: Mon, 16 Jan 2023 09:11:56 +0000
Message-ID: <4ae389c8b81f54d209c9fa359f36b46896904cfa.camel@mediatek.com>
References: <20230104132646.7100-1-chunfeng.yun@mediatek.com>
	 <CAKwvOdnMF4LRhTnQ3Rg+q3hd7jm2tS0aTHmwU6isKJHL2u9Q-g@mail.gmail.com>
In-Reply-To: <CAKwvOdnMF4LRhTnQ3Rg+q3hd7jm2tS0aTHmwU6isKJHL2u9Q-g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5062:EE_|PSAPR03MB5765:EE_
x-ms-office365-filtering-correlation-id: cbc35292-5e4b-4ec2-9353-08daf7a1b773
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1osNqJQydgHr99reqa8vePsixLeob3n2/wrbc4MbtzcLnLS7HyjizjJSA4ALvYI6n+udrNO++l7bkKLPAfV3dsmyHRURthaRrVXYwQxfdoK1hxolng0uFk+1BiYjIuXjyKPSxu2RTpq9DzBsk/+X3sX1GotMNcMCq9eG3Qf++YT8nl/HYwlfvmef/2AAEd1thFqRBiQQUbeo7wC2dyVzC8ol6JHnjmNa3eExyFNMSp0di+pH9C/d9Vl++uzY+oUHFpmQ07brELKqNJFPy5KAMIM6fky7Vfxk+nVDZtEd7OzE3l0nhcCAnzKCvj2Y5LwxYp/oIYnZLCg7nxxS7+Tp1iK4D1lOqdNg3UT5E63wX6kj4MFGVqGp5Z0oLebsUYaZ/QhXuLt+XigpLoUAsgwoYcK+CqAJbQBt5EOGlEcgmUG1sno/XijQux39YdmhfM7Ps45kvmKZiv6NzhxCWEWRKYW+eyyDLfwRKHYZ49Lyh5UxfaWTTKB7ME9E6Y/Cfm/UzfmDuEEblDojgV5eIoUIQLEajHrc/oIjE0AVizdgf7YLx4SdmWle+FTGExo/Ozhq34xhE+GIu5wn7dUsrWDTNuEODR9blkw92sVhH40x2/YLKwcVJasOz4ztybRkV6B49T7dTSrf2nx2RgnO1qynOG/uy3eNafpdyPXv+PZdxg0AK0QyZwoMeqZQ1eu7Bo/GEtM/igvg4uYQn+nWK8nPVgQSwwYxGwt+cGaVA0WivgQQIjc/3hzL5HO8h7rGnfK8H+54D62w8BtL8ysLX/PQYw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5062.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(451199015)(85182001)(36756003)(53546011)(86362001)(6512007)(186003)(26005)(6916009)(8676002)(64756008)(91956017)(4326008)(66556008)(41300700001)(76116006)(2616005)(66476007)(66446008)(66946007)(316002)(71200400001)(6506007)(478600001)(54906003)(122000001)(6486002)(7416002)(38100700002)(2906002)(38070700005)(83380400001)(5660300002)(8936002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHBoSW9oMEYrS3FTSWJSTnFHM3ZlRHVqVmdiMnYxdmNRUFh6Nm9Xc0tWT0pM?=
 =?utf-8?B?cWpnamRGckxnR1pNaERPRVJaVy9kMkxFbkJDSkp3K3R5Tm9YSlRSSlVmYkcx?=
 =?utf-8?B?cFJQTUs2Qjl2M3JMVjJFeS90KzU5SFk3WVJIS2dyVFBHVis3YXBTSGV3RUNq?=
 =?utf-8?B?dXBsY2JCSWNmczN5cHdTY3lzWW9WcXJETEtHTEs0Mnh0c0gxSG9tSFJtRE4z?=
 =?utf-8?B?ekZneGlXTEJzNEQvSWZQVE56QlBrQkhMM3d0T2ErMkhOOVNaK0p2c05CQUVw?=
 =?utf-8?B?NnNSNW4wMXBJSU5HTEVWZFFpVUI4NGlWSWxnb1FZZVJKYzl5K0ZTVFkzdTRV?=
 =?utf-8?B?bkRnOWhoVnBqajdmNVFUMkxJai8wZ1V6QlQvZEtnbUE3SjNOVzhPdysrczRV?=
 =?utf-8?B?cHU5VHpvWmhVQldTb05nOVdaNjUzMS81M0lRZjJGRnZDbVpGSjR2VDg3ZGdj?=
 =?utf-8?B?eHZvbWlBWmRPaFlOZnRnWEVEVVZUWVlSbkhSNHFOMWtqNWRhNUE2NGJnbWY4?=
 =?utf-8?B?MDJ0QWloQWpYcENZNklXSC9CY3NPVFVpNlNBTXRhc1JEaDdqWkRvSUdHU080?=
 =?utf-8?B?SWRYTjhvR2c0SElDMXUxNWh4a1BIT280K3kzclBkZFhuaGo0eGVKSFlyTUxZ?=
 =?utf-8?B?QTkzUTRoV2RZemZuNXpzL2F5K3k3eS9vWHIrQnFQWStqSE5EUmwyVGREL0E3?=
 =?utf-8?B?aUdiZ1pVU2N3OW1GSUhYczc0T3F6SjdlMDA3YjFDT09HZCt6REpjbDNYWE9n?=
 =?utf-8?B?bWNhYVRJRXd4TXZ6d0tZbmJRWFVkdFZ3eXFHZXZGME04alo3OTMrTnNYdjNP?=
 =?utf-8?B?S3RIamxUTU1DbThPVlREUXRrVVZ2STJxbk1Cem9LajF1KzNYcG84Ny9SNUR5?=
 =?utf-8?B?RmZoRUlDQ2FQY1FKSXB5ZWdzUW1kZ3hrakswZEYwOHZxSFRBRkk1eVg0QXpF?=
 =?utf-8?B?YXd0bThaN2hzUStNYjZhdUNEcE15WWJmZUJYR1FXUHdUTlgzM0xvTUlrbUhK?=
 =?utf-8?B?aUhISDJrbVk2TE9yRkNFTXRmbWVDdUcxU2JYQ1ZzRFJPRzFJZEhNYVZ3T0Jw?=
 =?utf-8?B?ZkxxTi8rY3dsSmpGeEFYcWkzV2lDbmtPeWhJNUdxb0lnSys5NFdweXRydDJw?=
 =?utf-8?B?TVpnTFVvdWNhS1Y1cGVkbW1pdTQzUW9VWXJ1MzVDVmx4TTduUDU2Z2g3dEhw?=
 =?utf-8?B?UE1vdVQ4a2I4TVovRldMbzBiWit3MzVjY1V2dTJuM094MnM4bDgwWEk3d0Zu?=
 =?utf-8?B?d3htTkVqdXZ0bTZTa1FueDF2dVBFbVljdVFOY2NpS3NEdzRxZHlRa3p2QWdR?=
 =?utf-8?B?empsQ0FaVURyd0NVbWFyQlNQQ21UMFp1QkRoTERIa1VoZHBYRHVWUFBzS21X?=
 =?utf-8?B?NndRdjA4L2NodXJGUTUwQ1cwWXBPN1BKOWppanp3L0lXYXBWSmVBZk9FbXlN?=
 =?utf-8?B?Umc0WE80YmdmazFLc1h4WUpvWDVyMERsREw2UHV6c1FOYzhIWXVML1JvNVE1?=
 =?utf-8?B?Rzl6NnBOMy84anBsb2NLaTdOdjY1YUpjMDdDL2lRQjlWaVVsYW1ZL29XYVZQ?=
 =?utf-8?B?RFFteVRnU2g5dDFVZ2JJU3BXRzBUZTB6ZndqeEdtQ2hNY0FRUXIxdG9uRTJ3?=
 =?utf-8?B?Z2hwOEJ6SDVvNllPeFJSZEwvMFNxcjROZjJScEI4alZsVEFJeExWazcrZ1Ja?=
 =?utf-8?B?MzA0ejlaZWRoZk43MzlaeUw1Ym1DRWhaR2hPbThhYUpPcHFlZmZRanNSVWp2?=
 =?utf-8?B?SDdoQjZiZ2h1ODZINURyejU2YXNvRlBkOHFhVzJRSUNIRjBkdEZhNTJFTTln?=
 =?utf-8?B?cy85azBBQlJYV2trQlYwTW01VUh4N21EK3l6Q1F5R0dLOVphZU1zd24rWXFr?=
 =?utf-8?B?VVUxV1J2SUxzMDFleVE2SDh0aTNHVmVuS3ptT3d4Z01KZktRazdUVXFsTzVH?=
 =?utf-8?B?UXpuN09YUnlTWlZHbENSRGRpUVBta2I3NFVLR1M3QlpPamJZQ1BNS01wUkV5?=
 =?utf-8?B?WlFJc3VXdXhyb3FTc0xTYWgwVDcxbHJ3S1BHai91ZHZ0ekI1Y2k4NEZhQ0lu?=
 =?utf-8?B?cHZKV0o2NTNrT1ZTL0prNGhLU09GbnZaNE80UFBGTjZTMGhIakVFVkJrRENE?=
 =?utf-8?B?UytsYmc1RWJmWjhvdm1RYlUxbTVzb3g2eW8zMWdkYXVhK3YxcnhjZ2lpOFBX?=
 =?utf-8?B?RHc9PQ==?=
Content-ID: <23176B206701384E868F6D592F4E88F9@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5062.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc35292-5e4b-4ec2-9353-08daf7a1b773
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 09:11:56.5321
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fQWnypmKrprJo2cqu6z9cTx1fkHCQ867Q8uOLsfiLktVR5e2uLVVsgCnl9/M256KxmYZYqm2kMYBefYsLjs/yb721h9n7tM1Vpr2TSmy84o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR03MB5765
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_013244_093447_DA625948 
X-CRM114-Status: GOOD (  28.72  )
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

On Fri, 2023-01-13 at 10:36 -0800, Nick Desaulniers wrote:
> On Wed, Jan 4, 2023 at 5:26 AM Chunfeng Yun <
> chunfeng.yun@mediatek.com> wrote:
> > 
> > Remove the temporary @mask_, this may cause build warning when use
> > clang
> > compiler for powerpc, but can't reproduce it when compile for
> > arm64.
> > the build warning is -Wtautological-constant-out-of-range-compare,
> > and
> > caused by
> > "BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)"
> 
> Can you please include the text of the observed warning?
> 
> > 
> > After removing @mask_, there is a "CHECK:MACRO_ARG_REUSE" when run
> > checkpatch.pl, due to @mask is constant, no reuse problem will
> > happen.
> > 
> > Fixes: 84513eccd678 ("phy: mediatek: fix build warning of
> > FIELD_PREP()")
> 
> Uh, why was 84513eccd678 sent/reviewed/merged if it didn't fix the
> issue correctly in the first place?
> 
> Is the issue perhaps that your mask isn't wide enough in the first
> place, and should be?  See:
> commit cfd6fb45cfaf ("crypto: ccree - avoid out-of-range warnings
> from clang")
> for inspiration.

I look at this patch, it said that "
This does not happen in other places that just pass a constant here.
"
That's indeed true, no such warning before using FIELD_PREP() due to
the masks are always constant.

So seems that it can fix the waring if avoid using a temporary variable
@mask_ in mtk_phy_update_field() macro.

Thanks a lot

> 
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> Can you please include the Link: tag to the lore URL of the report?
> 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v6: modify the title
> > v5: no changes
> > v4 new patch, I'm not sure it can fix build warning, due to I don't
> > cross compile
> >     it for powerpc using clang in office.
> > ---
> >  drivers/phy/mediatek/phy-mtk-io.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/phy/mediatek/phy-mtk-io.h
> > b/drivers/phy/mediatek/phy-mtk-io.h
> > index d20ad5e5be81..58f06db822cb 100644
> > --- a/drivers/phy/mediatek/phy-mtk-io.h
> > +++ b/drivers/phy/mediatek/phy-mtk-io.h
> > @@ -39,8 +39,8 @@ static inline void mtk_phy_update_bits(void
> > __iomem *reg, u32 mask, u32 val)
> >  /* field @mask shall be constant and continuous */
> >  #define mtk_phy_update_field(reg, mask, val) \
> >  ({ \
> > -       typeof(mask) mask_ = (mask);    \
> > -       mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
> > +       BUILD_BUG_ON_MSG(!__builtin_constant_p(mask), "mask is not
> > constant"); \
> > +       mtk_phy_update_bits(reg, mask, FIELD_PREP(mask, val)); \
> >  })
> > 
> >  #endif
> > --
> > 2.18.0
> > 
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
