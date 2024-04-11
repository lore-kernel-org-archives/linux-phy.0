Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 782BCCD1292
	for <linux-phy@archiver.kernel.org>; Thu, 11 Apr 2024 06:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZLDfC/VV3thJ2A/IXxmAVTliCm08dEuDAIPqXv6/QI=; b=yxCcMcVv/xpbAX
	YYcRkTpkRltNeNrXavMU3vGKzpjs8zKtIBoKwTQQXjlPZB+WfjaWzPd/351msVGHAy4peJeGT2uRB
	KgMSRi2+e36PcvyJ2o+huhIzRsgyjflzI75kViy19BuJwaIWfmjIpLcEjTv0LerLEcEWIoBnuaUYA
	8WsL5Fq7ahj3WVL5MJG5ctx+Gn8r4iQIvs4A4P2QCLTc1LRaFdpEka1PtZJUTgIVjqgO/89t6yRnb
	239fTN24Irchwg4GTFKRcN+RQkhxbtdSu2evVfBhTn8jZqaZJIrT6nqqtPhR997rrTXKnXGjyiwV3
	9IeFRYQHN+GYY55JQwEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1runxn-0000000Ac9Z-0U8D;
	Thu, 11 Apr 2024 06:31:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1runxf-0000000Ac88-1djr;
	Thu, 11 Apr 2024 06:31:09 +0000
X-UUID: 0dcf8326f7cd11eeac1957ae9f99f617-20240410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=RVMQA05wDd8o1b1ftzlkl0wCsxpwfXCErN4QCf6GuBI=;
	b=tqAbiJHCPqR+HYnqERaGBpWtO3epir/ZQZ69XK2YHF2bDX9WJ7hpHqXy16NKC80FZepl4JhbXX2FXVxcHsouNWxsjkIvKrJrvkZHRxQ9rJSwm29kvsw4SZbgCMyQGBSz/teOTcVAmGuo4U4WkD48ycFaJWT4Vv3fVTsAwDQWrgo=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.37,REQID:66db7f68-97ae-4274-8b3b-26d1f3b4a45b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6f543d0,CLOUDID:ee768b82-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0dcf8326f7cd11eeac1957ae9f99f617-20240410
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <liankun.yang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1529225472; Wed, 10 Apr 2024 23:30:56 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 11 Apr 2024 14:30:53 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 11 Apr 2024 14:30:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eGLZ5mTiWZBrnFzaoVdpjjZbCvnUiwx1dndKs4JQJkOUApa1ddgumSlg3KNgCQow5bd7qLZMIsBE1jfL1MHCXNzZ/zvYzqRxaiJ/84qjnUlc3stlvv0l9E8oWAbkKyFQ0XuU6eumCebQLVkSt70UfJoBoARRR2ht0lfXU6/PZgCS5g2NYPiE7KAUC1EHZd/3zVJOwnMcqtQwDO0jh5+C9OeK+OvbeIcH65zv6yf2gRxZ8lj0oVzjhMpWof84vnyWtWgGfcrP1HVwdxPQDrkhmdmx33fKFOGBdIOC5xKUza/uLkByti5aJmCUjCH6iysRmxiBSV65upulLA7wuUGpKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RVMQA05wDd8o1b1ftzlkl0wCsxpwfXCErN4QCf6GuBI=;
 b=b9dVCx7c8TiID8bBhMeUuNAmbVyahHXlcJibq05PyiEmpTZtKAEn4dHSS+yTp7qse+Mh5ZkrkOVVBXaHQXNP/vUOZ5xLMZxXyts6HYkHzliQGqMmNLN0g+2zySQpDHBfsc3RlIWbNz5HAVx1/NmU9jBwZOLkN8qL/jC8onE4SOkOKk9ll0XqgHSlS9vrMEMW7oJxeYQWWYe+qBHZct98AvIeZxkmtF88LB9eyB5OweLDOn5cHZoN0uu/h+xet0J7MFZ5V65jCImpeltx+FTuyJHiY1ghr4XCj3ihJkhToZSfXmm9MjD1lM+arOcD4JVyrzZLYjEYQS0BJX4ZS8R9wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RVMQA05wDd8o1b1ftzlkl0wCsxpwfXCErN4QCf6GuBI=;
 b=XQICvkXP6A1hLTYQwv+q95m79vvAZ821Ba9zvMtY1PtHhbK4x0n5wZs7L+j78u6adW3RaufKfU+douHeQ8ChkukP89bUd/37K5S5R7rxBIOAnZNAXALVqESlmbBo1orHMxyQgYypz/0dfnK83aUfMHUORWq2ap4oJsrRP7IUEmY=
Received: from TYZPR03MB5760.apcprd03.prod.outlook.com (2603:1096:400:70::13)
 by SEYPR03MB6457.apcprd03.prod.outlook.com (2603:1096:101:3e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Thu, 11 Apr
 2024 06:30:50 +0000
Received: from TYZPR03MB5760.apcprd03.prod.outlook.com
 ([fe80::10a4:6aaa:bf25:96f3]) by TYZPR03MB5760.apcprd03.prod.outlook.com
 ([fe80::10a4:6aaa:bf25:96f3%5]) with mapi id 15.20.7409.053; Thu, 11 Apr 2024
 06:30:50 +0000
From: =?utf-8?B?TElBTktVTiBZQU5HICjmnajov57lnaQp?= <Liankun.Yang@mediatek.com>
To: "krzk@kernel.org" <krzk@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	=?utf-8?B?TWFjIFNoZW4gKOayiOS/iik=?= <Mac.Shen@mediatek.com>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/1] drm/mediatek/dp: The register is written with the
 parsed DTS SSC value.
Thread-Topic: [PATCH v1 1/1] drm/mediatek/dp: The register is written with the
 parsed DTS SSC value.
Thread-Index: AQHahXwGjAzd+9TbM02omPlvxIpuLLFWGOuAgACKTgCADAVkgA==
Date: Thu, 11 Apr 2024 06:30:50 +0000
Message-ID: <bc785b80e109fc04c5973ee4efad115e0c3907c4.camel@mediatek.com>
References: <20240403040517.3279-1-liankun.yang@mediatek.com>
	 <c0986506-ba8b-4c52-88f8-119c23b8778c@kernel.org>
	 <86dd866a-8ead-4fd1-993a-672d4947ba84@kernel.org>
In-Reply-To: <86dd866a-8ead-4fd1-993a-672d4947ba84@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB5760:EE_|SEYPR03MB6457:EE_
x-ms-office365-filtering-correlation-id: b3c8acf6-a130-4c66-fdea-08dc59f0ee26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KXkVyXO85aLTyoa427GRFuA0wYzLytUlh4IQlIMJIHi7p4JHPdeCMEOYN5AWO3i45ADvFObAbP0Xe/gKRObTVWPZapAfIrvA4VPta+5nQzlyvmm2hr26zqplUh8/e3UXjJFC0QNZQS7jKwCj5/yIVorssewjKIBnH8xVmhmXvk/tmF0o9gcxH7eIcI+Id48natoNkLTCEdDUA69/1ZEBFEvSVlTiaRtDxLx6k0C0YTM6HeBA1WYdk5TmRHKDP36+WaP55zjc4m5jiyAx02aytDXVzM3WuPci3EDHk2W8yuEXjnDdAziP1O3FwaBXtp+c0oH0XxoshuM7IMM07LlmjB3TMMdopZbgoswS5uHVq2zwQI761EEoR4jGxXelCQ37ZIWBXTylbv3wvFEpUWc2vRTvsgqqJn+R142lKXFe4LktXGwXyUZrRjUmeLSrk2J9UoOirRUiQY9/Cfj7FSqbcgIiuCKEAJibhYIgWiFASqJPhKJ134SoG3Ju6Kjwwz8Lf3dsY9i2SvOvQ180bY6/nXPuA3st6sZikIuxpPFFG1UFO3g3Ohep9Y/Eceph2gMFe6veG4fwAczZKR7bp2FXhvnJ5LNLJ5MkGcT4BzERkAHapdYnbuxyBHPOGBeGZhWTozu4ohXyFn7p7E8YXGtO/WEeRRTnYicsOFIaplqom4UoM1fRBWEHlA5mCgX8ivwki08M1fyTc/gImVNxVz3wIFU9R5q/Hg1KjwFKs2KLUe8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB5760.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(7416005)(38070700009)(921011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHNxY0UvNnRIQjh4emhQYy9HK0kveGtrVkQ3U1pldEVyK2NIb1VCOTNBdmcz?=
 =?utf-8?B?NlMyMElYVmZkYjJWY1NwdVpOb21lVm9rSDIyTGlHaGlGSlZVMGdDY1VSZmxH?=
 =?utf-8?B?WW1DN2pDekF5bndCU1B5QTAyTzV4YSt5ODJRTW51eklISktNNjQwMld2eGpm?=
 =?utf-8?B?aUxGTHdHSGxMVUdzSnhyVmt5UmhYUjBJL3YzaE0yMlpTT0psckE5dmsyWVFF?=
 =?utf-8?B?SjE1OXJqVmQ5UFdWU0M0TzdWWmhwRmFYbHFuZk9hNitiOVFmbGEzZGV6KzZF?=
 =?utf-8?B?RVBTWG54Nko0UDN0b1JTTnUzRS9leGJlK0pxM3BqZGlReHA5SmFST0F6U1oz?=
 =?utf-8?B?SEpMc1BpSS9XVDFUeEd1Q2tkOFUwVHJnOEx5WlFPT3FCaHpqeUZVbVpHaG9J?=
 =?utf-8?B?UW1hTndybFA1MDJOaFIwWS9kdXd2NTZDOG85ZVFzNlF5K01aOTluSDFsa1Vr?=
 =?utf-8?B?NVlseGxVVVZVd0xycEdEaW9nUG0rbmpobUJlNmlwMHpEQ1ZaWUlsQkdvVlhI?=
 =?utf-8?B?MkE3ajk5dVZBSXRxYjFFLzA2dERYalpQWTlCVFJJRmc2K0NRRUJYamV6R0I3?=
 =?utf-8?B?Nk9aQWZjeE9LdWZkTGtNdHlWcU9yQXQ3QnJvUFp1YzA2TkgrdCtpTE42clZU?=
 =?utf-8?B?NzQrbHEyMTdVSnhZYnF4WnY3RXBubWhXOWtjZjJraWFWZzZsYmphbkdGbUFs?=
 =?utf-8?B?NndGZmVjdUZYVHIxZEYzekc5TCtranJMNkpGK3J0Vk9NRWRUa29rclhWVHpt?=
 =?utf-8?B?QkhMQmFNYkFEb2o1dFFTWjJxZ1VPSFVsWWdBRmRqUVdzNEtCYnJDVlI2clUy?=
 =?utf-8?B?ckdQLzRCb3VJYzhQQlF3aTRjS2R4ekc5Mk5MUG5pdHBBNjJEaVczd00xbHBR?=
 =?utf-8?B?b0pmMDFQRDZhZ2hjSkNuMFptbEFUOFloSDVQaTIwcnljMWF5dmpXRm5BOERH?=
 =?utf-8?B?VmJZNXRWcVJnQ1B0T0RaYjFNYWd4UXgzN1kySzVsTjR3cCs4Qk1mOFpnd1Bu?=
 =?utf-8?B?TWpZQWxybGgrRytiYklRWlA3Q2lsQ1hDUjJ5R3F5ck1sQWdlSFRLbmJFcm5H?=
 =?utf-8?B?UWZaYURCd0IwMVlBaVZxS0JabE9lM3BEWGxpaU1YMlFHbFMrb2I3dEJzSndL?=
 =?utf-8?B?L1NLVzV3RVRpWFJJb2syZ1p0NVJIQ2tnUFlYN1JYRy9CMWg1RHozdElqUGVF?=
 =?utf-8?B?ZmZIUDlZTmRNS0Zud3QwZUwwNFFTYklNOEF6NFowR3RaV3EwYTBaeEdKTXJZ?=
 =?utf-8?B?cVp4ZktJNlR4QlFuVndUMlRvWHB6LzNsQ2hFWTh3SkpoT2dlZGdxRGZEczZt?=
 =?utf-8?B?RnlhWEhaTnE4QUppRUZMOFN4VkVZbVlwS3ZuK0RaclhyRGhxQXJGQ3NNTjhQ?=
 =?utf-8?B?dDVvaUdDYmo2eExDUEFZNHZCN0NnY3g1YkIzSEJBcU9hb0xxOG1yNEp5Ly9l?=
 =?utf-8?B?bElET0EzTXFnQ0VjNmNqVWFPbzI1L0tKZGpBV0xHeFllOVRKTFNWQXVLMmhR?=
 =?utf-8?B?SHcyVEZOVTVSZGUreTdwMGpObXhaZUNvWS9KWVI2RWFLcFl4ME16SVg2Y29D?=
 =?utf-8?B?WjBYNWgyMWpNc09KbjZNeHNNZmIrM0l5N1RWSEtFc08wRzdJMjQvN2Rjc2l2?=
 =?utf-8?B?LzBEQ1gvaDZOR2hEVm0zL1BaODRRYi9OSHJvR3gzaVA3N2M1NGFoL1RhR0Jw?=
 =?utf-8?B?UjlhNk0zUVFOck9XOUlTRFg2elU1Ymh5ZTB6UVlvdWJPSDBTWHdMNjQzRVVL?=
 =?utf-8?B?QndhUWE0UE5xUklxVmNSazR5SEhsN2NSMVFYNWVFVVRhT29PeERFQ0QwS0Y4?=
 =?utf-8?B?RzRQZmtWTE1BTE5tSjRib3BrbWgrMVppSEwwd3lCczVQRjBzTGtXeUVhbzJ5?=
 =?utf-8?B?TFpIWWtpRFNramp4c3ozSEdQc2VROUlFTHZVRnNNT09RL2pKSFRUNUthQXZo?=
 =?utf-8?B?K2h2WFI3VlpTdHhKaEFXNGNXaUhDemhBSWg1Y3VvS1VpWEVmcW9FVzBnNTIr?=
 =?utf-8?B?bXl4cnljUy9iZjcyeFJtVGpmQXBLUmNtWm5nR2RjcFBqM1d4aWpocklmM1BR?=
 =?utf-8?B?VzJncktLUlJEblEwcGg0aGgrV3hvN2Q1SlA0R0g5dHBobXk0NXhRSHZFamJr?=
 =?utf-8?B?UzlXTDNtR2YybUNxdHBvbElMaUI3TTdaT1NQdXVabk5lQ1cwTEhVbzJBU3hZ?=
 =?utf-8?B?YkE9PQ==?=
Content-ID: <BBDCF418A936584BB43E0718C0A54483@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB5760.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c8acf6-a130-4c66-fdea-08dc59f0ee26
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 06:30:50.2214
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWl86immqfuJJ1y41KPD2ne5PHhTyojhz5RKJBqMGwaWX7/VgrVvd0syzrvmTYTP+qvXT3A/ioLU0FR2lgwmDENZYxW75iVk62chrYhwRNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_233105_660428_27CA3D09 
X-CRM114-Status: GOOD (  20.57  )
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

On Wed, 2024-04-03 at 16:56 +0200, Krzysztof Kozlowski wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On 03/04/2024 08:41, Krzysztof Kozlowski wrote:
> > On 03/04/2024 06:05, Liankun Yang wrote:
> >> [Description]
> >> Severe screen flickering has been observed on the external display
> >> when the DP projection function is used with the market expansion
> dock.
> >>
> > 
> >> +if (!strcmp(mode_name, RG_XTP_GLB_TXPLL_SSC_DELTA_RBR)) {
> >> +regmap_update_bits(dp_phy->regs, ssc_reg_offset,
> >> +   XTP_GLB_TXPLL_SSC_DELTA_RBR_DEFAULT, read_value);
> >> +} else if (!strcmp(mode_name, RG_XTP_GLB_TXPLL_SSC_DELTA_HBR)) {
> >> +read_value = read_value << 16 | 0x0000;
> >> +regmap_update_bits(dp_phy->regs, ssc_reg_offset,
> >> +   XTP_GLB_TXPLL_SSC_DELTA_HBR_DEFAULT, read_value);
> >> +}
> >> +
> >> +return 0;
> >> +}
> >> +
> >> +static struct device_node *mtk_dp_get_ssc_node(struct phy *phy,
> struct mtk_dp_phy *dp_phy)
> >> +{
> >> +struct device_node *mode_node = NULL;
> >> +
> >> +mode_node = of_find_node_by_name(dp_phy->dev->of_node,
> SSC_SETTING);
> > 
> > ?!?!
> > You have the node, why do you try to find it?
> > 
> 
> Wait, that was brainfuck from my side or -ENOCOFFEE. Ignore.
> 
> I still have a question though, where did you document new ABI:
> dependency on the node name here?
> 
> Also, why you are not going through direct children -
> of_get_child_by_name()?
> 
> Best regards,
> Krzysztof
> 
> 

Sorry, there is formatting issue in the previous email.

The dp_phy device has already been registered through the
mtk_dp_register_phy function in the mtk_dp.c file, 
so it cannot be redefined in the dts. Avoid using of_get_child_by_name
for this purpose.

To find the node name, utilize of_find_node_by_name since it has
already been registered.

Best regards,
Liankun Yang
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
