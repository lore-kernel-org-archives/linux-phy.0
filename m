Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD11BC54ED1
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 01:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUmFESeA8fcW2xT6TDCqWYOBzQWXoJOn3DH4Jnibcmw=; b=hqYVc85XhZR4jd
	k59m6aUuTdLnmya6i42FnbfMIFSfnelzSYUTprNZE7i0lWfwqca+TInFyc44U9pNlsDVCrytvLuzz
	QDd/DR9NodveoJL3nIFciBCP9gNu5Ki08DZAif5F5xpSVuoYmVY67E5L+hIxYw9HQ+OvV4PaSMnkt
	O2d3XK9Xz3ADTiKGsDSF8ufq8/nCePKRrtjMkhhjuhs2Y3bBAk5dgOFDqs0Sz6hUbAEgFzDO2aeJg
	gCDYaEH8mySs/VN9ptyvXTV8G2vBEUuNQ5nJRkfAiTh7k2ubOAPlVnwTKaiV82JATibYoxZaSMzJW
	zp8obq56T1aEcwbWFkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK60u-0000000Bvh2-1h86;
	Wed, 28 May 2025 01:55:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK5xn-0000000BvUt-0Zf0;
	Wed, 28 May 2025 01:52:16 +0000
X-UUID: 5dd3ca7a3b6611f0bed96b30c12bc3d6-20250527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=sxtFuMmExtnDwy2WGLPBHRn9gVrEbR2HtTTe4DgQpYQ=;
	b=Tbtaia8Vg2F/13v5rTKuZmX34yOk89aQ/pNoAyEXEw/Xe+SOpQUP7+4BLLPi7iwJboWJ6Rnk92UQ75T/7SWnQUmDCbzMtEpEmg9fOg77IAs8zhsCEvKiDFMjKHjf1trjPlMzk1gCT96ZpKBSayNN1wwl7K5bjXtC/9wluhyKTw4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:0f3515cd-f7d9-4ac4-bca3-1ee9e0b0ae6e,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:8d280c58-abad-4ac2-9923-3af0a8a9a079,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111,TC:nil,Conte
	nt:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
	OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 5dd3ca7a3b6611f0bed96b30c12bc3d6-20250527
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2099298332; Tue, 27 May 2025 18:52:09 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Wed, 28 May 2025 09:52:07 +0800
Received: from OS8PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Wed, 28 May 2025 09:52:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UpLt+IVtHKbDbifLfQQp5xE8eZLU4+pE9QauellbK+V9uyIzjYggWVKMpE8Fkz5TeCRdnLZUHE9CPta3YbGxrAWP4jZzn9tgz/ARUH5hfPuU6Kkpxns6qMAP9LvJrPquaauqQt/85muSN3NOvbzJL2Fl1kvuPw10q05mBRhuSSq3/sCfW/feIJzSzXe/WH+Nnho5e8UauO1fJkhaUZCGkA+Q9uDSF+BBqpqtmAKj8i8lHDLhNoKdxIpoMxj+MiR9Kxsby7M+wFc3ZL+ID4nShbLRcVT0TT6QHSRN93RitXvFRC8F8FaQqIDyvzDLEMVBff4b2lbBB2G9rjpnq9jxoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxtFuMmExtnDwy2WGLPBHRn9gVrEbR2HtTTe4DgQpYQ=;
 b=RCd6T5KhYpgZ9uTop6u2l3ngrnByUKsQKme7WP7Ipwn8OzVo4/vHw/bt7yihYvfsdPbRPfKSUYzrIqvyARX23DTyJvgZdfEmUKfn+OPwY994V4tE6sKWWalxhPLARhyHy748cjhTMKbyvxJFu8Sn1rCAVijCKp6UMlwUX8SFGdRBRJc6gkgDhW3GkyUtJ2m+Y98t3fF6PypO/n0GXkudlO6jCWXYZ0GbAyu4HoLElHUj5rGLx9mdgD8bfcXEDv+Pot1544mtjA342IG+aKPyrHm4edTJER2CcDOco8wMY2c8zwZvgpnjVw8mOrJrNUkP2PXntVhS8DNkunDhcbeqSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxtFuMmExtnDwy2WGLPBHRn9gVrEbR2HtTTe4DgQpYQ=;
 b=oUoMqQjf8Yx4p3KXU4+TPnq4GRswGEyxVed5n4wrzFzYhMpy5PA3GuQ2lFhAAOkg41MCYa5ZlC9V4jb4ZlQjTu0fkReu2QwCfwqqv0A6jTk3KhuDIEArOQyj2XFNDr+96dIcekJ3kLdzQIxJtehb0IoXX29pL0ciOobDi2hEQJ4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEYPR03MB7794.apcprd03.prod.outlook.com (2603:1096:101:16a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Wed, 28 May
 2025 01:52:05 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%5]) with mapi id 15.20.8769.021; Wed, 28 May 2025
 01:52:04 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "robh@kernel.org" <robh@kernel.org>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"kishon@kernel.org" <kishon@kernel.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"mripard@kernel.org" <mripard@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	=?utf-8?B?QmluY2FpIExpdSAo5YiY5b2s5omNKQ==?= <Bincai.Liu@mediatek.com>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "airlied@gmail.com" <airlied@gmail.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 5/5] drm/mediatek: Add eDP phy driver for mt8196
Thread-Topic: [PATCH 5/5] drm/mediatek: Add eDP phy driver for mt8196
Thread-Index: AQHbsC6nILm1Pp5FREq+iYpjFG3Z8LPnhdqA
Date: Wed, 28 May 2025 01:52:04 +0000
Message-ID: <912b07f99e5a8757fbd5934c0b72779b1be31bb4.camel@mediatek.com>
References: <20250418065313.8972-1-bincai.liu@mediatek.com>
	 <20250418065313.8972-6-bincai.liu@mediatek.com>
In-Reply-To: <20250418065313.8972-6-bincai.liu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEYPR03MB7794:EE_
x-ms-office365-filtering-correlation-id: 28ebd464-a5a1-4d76-f84b-08dd9d8a3ef2
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?cFc3bE9wRG00d2lhWjg0aENsdDF2Tjk0ZkVmeFQycjVtdTFscWUzZzQ4dzBE?=
 =?utf-8?B?blBtc2FqWGlHNTg4Y1ZqSnBlb2VMMEIvRFZhc213TnJYeklJM1haaTZjeVNI?=
 =?utf-8?B?VkI5YUEwY3VpWVl5aVdvNktBVzJlNGsyK1EyT3M5RTgvaTl0UmRncFpKZ1dv?=
 =?utf-8?B?L3REWXp0aUFBRTBEVmltVXJHOGR5WWVSSXpQU29KVWtIYkRWN2hCcmhzL3o1?=
 =?utf-8?B?R242TjlHcW16NmIxUkU2cGwwNmlBb0lPa0ZiZmFVY1NOb2VpNWRmRE1Vb3pi?=
 =?utf-8?B?MmxtSEZrTzk1SklITjRPc3VWbno4MktMeFVtejhTUHRINEk4akk5c3MydlpI?=
 =?utf-8?B?ODFqcHRYYnRXenFZaGdsL3Y2M2ozY0htTHBJTG5USmxPb0tZNnhYbkhTMUVt?=
 =?utf-8?B?VTBOZUsvMUtIdXl6SGp0SWJSK291elp6enU1VStOb3FZcWV1MU1aTklZdjRr?=
 =?utf-8?B?STRLVHhVTS9WMjJzVlB4VEJlWDRvQUxERUsrTTEvRE5FZy9ua2tYalNWd2I2?=
 =?utf-8?B?OGxJWm96R29MaUxXVGtwZHMwWnl1d1l0Q0hKVEdzblBVOG05K3p5b3BRV202?=
 =?utf-8?B?SVlUN1Q0aEdkd1g4dW5QVSs3eGZ2TXJ0TkJibW40TVpkcVBYeHdyTjFPTVhH?=
 =?utf-8?B?dzZ1K3p3Y0VlYUwyRHpTaDEyOWlaNU9ocFJmYWlDd3pGSHVva1hXNkpWREw4?=
 =?utf-8?B?SDRLbWpXb1M1d3lTU1JRd0diWnltM1UzVXROV1FROUwrTncxZno3cWlNOS9L?=
 =?utf-8?B?MTNRMWVGN2JoUlVkTWs0YzhlS29sZS9sakFpY2pucGFxMG1CdEFzNGlDTGFv?=
 =?utf-8?B?WTdwT0VpTkF3a3BwQVY5V3dCNmI5MnVjbngvMk04dmU0VUZjVnJ5MDAxVjZQ?=
 =?utf-8?B?eDcwZi9HK2txSWx3N051RUhKRTZaUDFuU29VUm01MlNnZzBxRUdhUFpQYnJu?=
 =?utf-8?B?Y0dNUUR4b0dFVWZONkVuM1VFK0tVazRURXE0cEUxNkRJc3dqcUloRnUyazNy?=
 =?utf-8?B?UXkvbmNiajNkKzZDV2xid3JtTVZiVGJlclp6LzBQQ2NqSjNoQUR2amlQcGoy?=
 =?utf-8?B?SHRwa0RmaVRrVW9LQ2FKbkdnSDNUVnhyTFdBSnRsQy9QcGt0ZW8zenpSOVVj?=
 =?utf-8?B?bEdmazl4MEEyQk5CVldTTnZSTlBpNHVDcHI5ZW5MWDZiSEJNQmVtd3VBSExO?=
 =?utf-8?B?MERnQnc5MmR0cnFlbjFSTjRtOE5LM2ZmM1N3Z2tJWWhaQzZxOHJtMC9majA3?=
 =?utf-8?B?UG5hYW11QmdoRGZzUHFpclB4THAxWWhwalV1bktRdFBhMU43SUFWWnBORlRG?=
 =?utf-8?B?MEpSaHo0UkJ1U3U0U3EwNGVZUkFVRnFNdTA2TGJWSUg4UFVvRWozY2s1RGR4?=
 =?utf-8?B?aEN3UmxLKzZ1RDdvU2s1bFJScndEK3A2U0x1OWg4TnRFY1EzcnB2TXRiT3JF?=
 =?utf-8?B?emUzMmJLaS96MTh2bjdXT2lPSERYd0NiTjU5aFBDNHlBVUc1Q2Uxek9FZGZo?=
 =?utf-8?B?YVNSbkg1VmdobFBFYit5SnpxYUJxUlFTQ24ydzhQT2lIWm41L2VjNUlWUE8w?=
 =?utf-8?B?TnhzT1N3cDUreEgvVXI1eDZHRWpiRlcvMlI5UkFuZFlFSjA0a0NEYk03NW1y?=
 =?utf-8?B?cUtWWE4rYmYrRXIwNGsrTVArR0pBeUd2QzhqaXNJWFdIOFgva3VHWW4rbE9r?=
 =?utf-8?B?eU9DdVkzSDVHVmNzSEJHb0F1NnljWHdLSXVXb0toTnZ2UERHMlc0QVRUWDFK?=
 =?utf-8?B?MlJxdjZxZCtUQ3lIcWduTVF3d0dTQUFPQzljQ2FZM0FJa0ppWUxqOE1tc2Mw?=
 =?utf-8?B?a3F2NzRlMHlhRGsrcHFwRHhuazhZalltOFB2TVBjVXFJZlBiazN6OEVubldU?=
 =?utf-8?B?cWFoM0FFaXRaVnN4ZHpCOWs4VXJUa2ZUVjhPbnZDZkhPcktVMndtSTExTGpZ?=
 =?utf-8?B?NUc0NXplVkRlYTBUMmJYMTMzZEl2QVdsakZCbmNpZW4vOFZVcGxoZGNJNEFD?=
 =?utf-8?Q?Te3UndH4IVzfPWxDuAUFJ58oS9fHRM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGZRck92R2VldFNrWFhDVmRoTVowNjlmMWxUTCsrUDl2Qm1VZUgrV2gwcWJC?=
 =?utf-8?B?QVU3VW44U2lQaEJURktqek1kTmRHbkQwMkdKQkRGSTNJdjEzNG82cDBkTUdQ?=
 =?utf-8?B?R0NFd21rVThTdTNBRVRmeU5CQ2Zla1d3U28yRlAyT1AwMmpVTmxhRHlDVGNS?=
 =?utf-8?B?bW5UOEhENEJoTnliSmY5VEJCMkdZMWxDcDdweWtQemJVRzBwTnE1aWUrMzIz?=
 =?utf-8?B?bklQVDhxWWFwMHNpZnBlcU5seVI1WitaSE1ybUFtamxFS0p6dWJzVFNzQ2Ja?=
 =?utf-8?B?ejJVbEFtdW94VFpBYWlRYzdnU09ocjRyemc2b0tScy93K2I3QklwQys2cDBU?=
 =?utf-8?B?NU11OWFldHNJVTVvMjVhODFHVDBKcXVCZ2J0ZjRJelZUS0E3R3BGa1lmbmpS?=
 =?utf-8?B?cWlTMHBEVFJXQkQ4bW9kcE94VlpTOXU1cTJRNUtKNWtHRit3MFRKTEpwR042?=
 =?utf-8?B?SnJuWDBUTXk1cHNXT0JWdjAvUC9jY0hLWXg2SmdySlNDOWNlUnlDQnFENzdl?=
 =?utf-8?B?a0VLT2d5VjVWdXFtc0xjOFo2aFE4cTFYTnU0MXloODh5cGhLS3JFRC9GdWha?=
 =?utf-8?B?bEdHbDZSekFEOUZPMkJiWHFWazB0MzlXT0RSTnpVR3pweEFjT29hRFVoRVBm?=
 =?utf-8?B?dDkzbXVMd0RVbWxwT216YnNlNGtidnF6Nkkra2RSVnBBRkNMNG8yZTg3Ky9z?=
 =?utf-8?B?K3hKN3REcjFSRjJjTk5DaVNLRGVzOEF2NTRNOWhzK0J1SUJtTGNUSTVaNGtn?=
 =?utf-8?B?YXlMQThKbXFLZmZIRWF2cjlZWTlFaG1uY2lLK0tHOWtDajVLNWRVaHRidXcy?=
 =?utf-8?B?U1BKWVZlSmZGQTZlQmRPZTlOQVNhSlZTVUt4MVYybnFXTVpMRVV1aG5EcXQz?=
 =?utf-8?B?MHl6ZEpOZTdFaXRJamIwWTBhNnI3Y2txdElhVHdnbWRldjFZUGREZnhQN0tU?=
 =?utf-8?B?UEh5U1loL1J2UE9YUG4xRzVkUkE3U0VldW5ySDRZdzRxbVc0ZDdIVm9HM2Iz?=
 =?utf-8?B?WE5aTytRZVcxazIxc0tPd0FsTXNDWWJaZHQxYW95Y0JTNThLMHE5d2RLUGkr?=
 =?utf-8?B?RUtJN29hOWxkVjB3V1ArS3F6WHJ4MGFYZ2ZJYzlRTEkwWkJVNGhOdDM4b016?=
 =?utf-8?B?L3JGb3FQV0FsWHBLNEs2YWZFTG9EVlBKeE5oUndTdnBTOTdaQzFzaTR6SnBt?=
 =?utf-8?B?RENHVkMxY3ZFRWYrMXN5TXF1S05pMSs4UE1SOER2emdGUXcrbEdRYisxdVR0?=
 =?utf-8?B?UEhxYUZFQ0tnSHdZWktyUDVITmN0Y0VKaktYWVBhKyt2ZWMxUFNvQ2dhekd5?=
 =?utf-8?B?bUMvaVByTTlaRG9hSGtJM3VIS0dzc01WTDN0Y01QT3NnOFdlWWJqM3JwdXgy?=
 =?utf-8?B?aG5uZFpCU0NDNGRjaDZNR3dNQnVsZ013Nkgxc3RINkhoM0FFQ0NvOE1odkVr?=
 =?utf-8?B?MTlvVGxWYlRSb0hHTkZVS1NuWThWUitjY3BERHp2a2tRMTB3WmxFd2JrU2gx?=
 =?utf-8?B?MVMramV3Z1lLSTFwbnR0UjRWVDBCdWFVMmE2TW5CT1hoUnNBc25ScFJZeUkw?=
 =?utf-8?B?L1J4YnJRUTh5RTNvTzN6WkFDekl5RnhQL1I2TVFTTjFybjBjYmNGZXJWa0Yr?=
 =?utf-8?B?NEtmNnRjYU5rU055VVZ1MGg4VEI0S1FzNm5zUHMvM1lGZHZOenRzVWN6bVFp?=
 =?utf-8?B?SFdCeHVUUG02OE1yckh4UUpLS3hTc1QwOFlPSU9tM3ZKYms3dElVWDMzNHh3?=
 =?utf-8?B?djUwQ21SMGRkcThtdXZFQ3FVVmF5c2RuOU5wYkpsMWVnMmpySHdOT1ZTWHFF?=
 =?utf-8?B?aE1hLytlTFBQZUNxTVF6WTFtYXRxN1Y3bTJGeHpGV0hvTjRxMlhkSkdrZVRJ?=
 =?utf-8?B?MzQyT1Q3TmJTZ1VkOHFGS1NEaG5qdnYvS2ErWnkzUDFmWjFneUs5OTl3UEJY?=
 =?utf-8?B?RnJwcERnQ3N1ZHpLeTNEWjJWc3NjQjhLWUU4MGFKd05iUml1dFM5N3JiTEdD?=
 =?utf-8?B?Yld5SlBiUENNMER1MHVHOGJmRWQ1cHZmWTR2MTJsQ1MwWnFGd0J2MVJESDh4?=
 =?utf-8?B?RkdXcXdGdjFsbzNCT3ZRdWR4TmhoL2NydXRmUTZjZCtkYWpKY1pYYmJBUDFv?=
 =?utf-8?Q?X/kwqupvWTS0Rg88SUf6NEMF8?=
Content-ID: <800950702D99A74A9C75841D4C2456C5@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ebd464-a5a1-4d76-f84b-08dd9d8a3ef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2025 01:52:04.3211
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 073TmkO3xTEI84+lSrOyfGl1y3drWQTLf0jo+lW+sTv+ZGRDYTcBgrSu0uNUQDctbznEM3Unf/LhGoC3Vfwfrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7794
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_185215_203675_8EE29EE6 
X-CRM114-Status: GOOD (  14.97  )
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

On Fri, 2025-04-18 at 14:52 +0800, Bincai Liu wrote:
> Add code to support eDP phy for mt8196.
> 
> Signed-off-by: Bincai Liu <bincai.liu@mediatek.com>
> ---
>  drivers/phy/mediatek/Makefile      |   1 +
>  drivers/phy/mediatek/phy-mtk-edp.c | 262 +++++++++++++++++++++++++++++
>  2 files changed, 263 insertions(+)
>  create mode 100644 drivers/phy/mediatek/phy-mtk-edp.c
> 
> diff --git a/drivers/phy/mediatek/Makefile b/drivers/phy/mediatek/Makefile
> index 1b8088df71e8..49d9ea42497a 100644
> --- a/drivers/phy/mediatek/Makefile
> +++ b/drivers/phy/mediatek/Makefile
> @@ -4,6 +4,7 @@
>  #
>  
>  obj-$(CONFIG_PHY_MTK_DP)		+= phy-mtk-dp.o
> +obj-$(CONFIG_PHY_MTK_DP)		+= phy-mtk-edp.o

phy-mtk-dp.c support mt8188 edp phy and mt8195 edp phy function.
phy-mtk-edp.c support mt8196 edp phy function.
So I would like to rename file as:

phy-mtk-dp-mt8188.c (support mt8188/mt8195 dp/edp phy function, use "mediatek-dp-phy-mt8188" as driver name)
phy-mtk-dp-mt8196.c (support mt8196 edp phy function, use "mediatek-dp-phy-mt8196" as driver name)

When dp driver register phy driver, use the according sub driver name.

Regards,
CK

>  obj-$(CONFIG_PHY_MTK_PCIE)		+= phy-mtk-pcie.o
>  obj-$(CONFIG_PHY_MTK_TPHY)		+= phy-mtk-tphy.o
>  obj-$(CONFIG_PHY_MTK_UFS)		+= phy-mtk-ufs.o
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
