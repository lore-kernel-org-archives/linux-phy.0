Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C401C3600C
	for <linux-phy@archiver.kernel.org>; Tue,  8 Apr 2025 06:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX1iipUoZ6lpUUrSaH6eEV/CVqJ5ky2CoCibF+vrgnA=; b=p5LwhK6Qpz7ouY
	jJcC85Dq01DJOVHbBx5ffe4h+GSUHS9Qx7T77JbSQ9MfE1dBC3EGowjNsNF5Dz9ZPGEvThoGYrKPT
	I9O8/JgR7PxuUNyyVC5a5huEaSMM4sA/yfdBvaFUHyoWr7krw6Hu2OynTK3KVCrmIYKuZHql+1xvl
	6pqOKw+6EOOCJs2TfHk/ZQq3qYeB1w1qaG9kuHcEKuRc8kZY5eQMMQKvJSUHWHp9S2LpYN279F3aY
	fgxbNhEPLsDItdD9mtVNvoW8nXoxeCRgPy/uG+jewopHGGCC3saUEk09W/ZDUq8/509CxniRLb4kl
	JpAKCjhVFAwxvauGZmcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u22Di-00000002sdE-0dtb;
	Tue, 08 Apr 2025 06:14:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u22Aq-00000002re1-2wTH;
	Tue, 08 Apr 2025 06:11:07 +0000
X-UUID: 3c80951c144011f083f2a1c9db70dae0-20250407
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=EvcIb4SRgefF1qeJc2CeJLfhgAARAgeVgvvlqwDZ5ZM=;
	b=RDjikCX8T8FgxrXr6fzBSZrryEsH1sawNknHi30YJOy+MaiOHX4icoiSPiz8SfQabJtVYGmIptyGYB5KZFWD58bg1G7T8ZvGZVrz1EAFxJuneGeLvhnhFE3KvmrjWZ991P5yPcCMxjkr8kXYU/35gwVt6lB+1+VutHJzGIPOMA0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:4a8c332c-2498-4824-95b4-80badef052d0,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:f033134b-a527-43d8-8af6-bc8b32d9f5e9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111,TC:nil,Conte
	nt:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
	OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 3c80951c144011f083f2a1c9db70dae0-20250407
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 585419913; Mon, 07 Apr 2025 23:10:57 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Tue, 8 Apr 2025 14:10:54 +0800
Received: from HK3PR03CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Tue, 8 Apr 2025 14:10:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HKCoUiFMbXJlrm7Uoq/4AXPqBoR8RO4XR0hZ1zLmbbPDq6M+B2G1O5MfPyd7avQ3C5cUf6b04ZShfIn5qv5McNE45DnNu3xVL8SA6+gJejLCNqtUrNO2ui8lviFJdPr6sntpibaCg93URcYek+AsitGvmqJvz/WDdI/ah6206ssNpdfRH1pUBm+OuXK9m1l7rTSWJtPFA1iQxdAFuXI/b9NFrk7ua26pDcBlW2pexqqZo63dJ/iBAHOk4BZNAit068ky4s0nW4ZJKa/w+KHjOhbsJnV/KnjAMhMkQJkT3GnMA2Db9q2LHnJ4P8jhzfTXU8QZi7lIW7YKy6lk+O7rsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EvcIb4SRgefF1qeJc2CeJLfhgAARAgeVgvvlqwDZ5ZM=;
 b=IMgigGnQK+H5uP3DczgF+QbG0zEiVQrBr6sF0JtFtKDKyjT69nG4odq5Q4FF+RKedF0deDT09Qm925WjPx208MRaRxtqxWgUB0ravWeBpI/zq8BKTh+0yVbqTYTDihhu5PJEyBLcpUruRlJoB7FSLXY8KkwYczLMGQ6Ib85oHQG/1arPY9sFgZGkS2YTY5VSkriNQBRae16vvUcBo/dHtt7HW2WJ8zZXdlT/tvZDN6yXL504h42yVX3CuYmhx72Hm0J515UJ4gBjkmE8i7V3/mM2UosTj08aW8F6vxv9HJUFaLD52+K4aMAHLi/DChnVHih3AZ4M2h0l8Rs2OzLcjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EvcIb4SRgefF1qeJc2CeJLfhgAARAgeVgvvlqwDZ5ZM=;
 b=YPk7KoCBF7B38WgLFarqk/Wf0NSQTuhp25Xd426Yf5InGnCgz7/arm4ArP6mLcTX72Yhgme17JddlkZ8oYRUCVPOYyTCP0cXyPUEdLWXA/WR8nJa3KsdlXWq4LWbQMncn3uFUQNlgzlJWNuMVHYw2TSqWLWSL5v68cRJfQ0oR7o=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by OSQPR03MB8597.apcprd03.prod.outlook.com (2603:1096:604:2a1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Tue, 8 Apr
 2025 06:10:51 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%6]) with mapi id 15.20.8606.029; Tue, 8 Apr 2025
 06:10:51 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "robh@kernel.org" <robh@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, =?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?=
	<Chunfeng.Yun@mediatek.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "mripard@kernel.org"
	<mripard@kernel.org>, AngeloGioacchino Del Regno
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
Subject: Re: [PATCH 3/4] drm/mediatek: Add mipi dsi driver for mt8196
Thread-Topic: [PATCH 3/4] drm/mediatek: Add mipi dsi driver for mt8196
Thread-Index: AQHbp8QzR1tja4zYTkihUzWli3fagrOZSmsA
Date: Tue, 8 Apr 2025 06:10:50 +0000
Message-ID: <1aa7f3dde561cc37116d50d321f33b24d410c7cb.camel@mediatek.com>
References: <20250407133138.22449-1-bincai.liu@mediatek.com>
	 <20250407133138.22449-4-bincai.liu@mediatek.com>
In-Reply-To: <20250407133138.22449-4-bincai.liu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|OSQPR03MB8597:EE_
x-ms-office365-filtering-correlation-id: c946b891-2b5f-4638-af33-08dd76641cdd
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?QXRiYjVncFBLb3I4L0NMTUtxSG9yaHNPcGU1NmJXK2U4VEc3VWRMREFYakU4?=
 =?utf-8?B?ZnZHTzhFbzhtZDRvWVFwZ2pTVTFyYysrRHgyc0xaWTBONlBKUk1wRDdZQkpo?=
 =?utf-8?B?dTVFZXVvYk1ucENjZUNaMElaQjFsZERzWElsd2lJZ3NuOVhSZnZaWXJuUUNP?=
 =?utf-8?B?Mmp5djFUMnhKRmdndFVyT0Z1QjQycG5ZTGdMQmFoYnNodStUdUUvalJ4c2dG?=
 =?utf-8?B?QThVS2JyYTR5OVNxcjBRbnR1OXQ5ZWxIcXkyaVFCN0JXVXVkbTRWV0dtREs2?=
 =?utf-8?B?cE9paFJYVXJ3eCs3bVZpQjJOVnRlQjFlTE13Z2tBYTBpTTM5eVZCRGZKeisv?=
 =?utf-8?B?UjVGcVNEWTh2aFovQWdQdGdKRkEzMURtMmR3VHZTaVlCam5BQ3labnRZUlZQ?=
 =?utf-8?B?VmNFS3RKQnZBUlF6T28wU25aZmI2TkhHYXFJNy9MMU1MWWtwTXZCbXdlSnk5?=
 =?utf-8?B?QmxaU0xQbDVoRktSd1JrMVhIVHpDZCt1Lzl2VGl1SENPK2dLWUo1MGZVc3gx?=
 =?utf-8?B?MkY0U3lXdEVSUTI2N1hURnpqLzl2cjQzSlgyc2xjNjBoRlBFTFV1dXpRdnVR?=
 =?utf-8?B?dmRmWjVaSzlFbi9pT25vNGdlQ29heFQxVFlaWXBUdVpzUk9uMGJFck9zZHJn?=
 =?utf-8?B?VzIxOGUzdW1wUU1rWERzTE1oRW9nZGpjOGt4dW1XRlhzcXN6K25yZU1xYlgz?=
 =?utf-8?B?Sy9SQzdZNXZYQzBOSW84dHZtLzBQamVQR2RkQksvUVBBejJ2NE5aN2xKR1Qz?=
 =?utf-8?B?NEdOWjE4MzIwWjVlWDdjTURHaVlxZkpwQW9yZmllUC9BSnhiT0ZXWkZkUTdK?=
 =?utf-8?B?aWo3WlVuV04xU2VJQ2c3ai9tVmUyUjZMVFBKOW5zS3gwem9nSEIrOGlPWXds?=
 =?utf-8?B?Q25oQTNaOGFRbVQ4V1hWU2xhRytmU1FjVmoya1RoemI2MDhXSGRjL29UUi9l?=
 =?utf-8?B?Q1VuMkk1ckVCb3ZTVFV5OGpWM2trU2hXVWNMMDJsMzY0T0ZjWHFkMU91UkVF?=
 =?utf-8?B?ZjVTb1MwNUdSVWFBeERiaFlyTVJBNm9yM1VUWUp4S2dPcy9rSW9pb01ma3N2?=
 =?utf-8?B?YWgrd2toVGlzTVVRVFNiN3Z6VStOOUgrM1czYmJMU1Y2dkFueUxvMHlWbzBz?=
 =?utf-8?B?cHVrQW43R1pmWkI1MmhaNEovLytDSElNZG91cXpZSVRxY2ZMRXZmWWVpVlNv?=
 =?utf-8?B?NXJsR1RuN1k1Tnp6THlzY0RHR0MxaHVOWm5sUUdVR1VBUW1oWEZQUWZ3Lzlt?=
 =?utf-8?B?c1M1TzhzNXY3T05QSnRTRmlGR2pwZ1Nxb1R5ZVc4akx6c0x2d2pZd1RiVmhv?=
 =?utf-8?B?czNVZ000VWM4M3BpeTFFWEszaGVVZVpGbU1WVythcElhSnlWYzREamtWTEpv?=
 =?utf-8?B?WGVYSkxEZlkzN2oyS2g3U2w2dklrZ1N6QWgyNEs5cUQzdzRpbjRYM1RxU2xa?=
 =?utf-8?B?c1BKbm1uZ3VKaDh3MnA4dllVM2xxbE5DbGxrSHRNRnBGV2JzRUd1MnFlLzJ1?=
 =?utf-8?B?OWJGc0thblM2dnBBTXdZTGdlUDFoM0cydkxhUlhiVXhSODBVdTIwNnFZOHZV?=
 =?utf-8?B?WUxWMFJ2a3QwejJCMU5qQWdjMWRvNEh2STEvaGFBc28zVCtIaFBBakNQdzVp?=
 =?utf-8?B?RkZHaGhCcEdYWmVsODJyTytobEpGMjExNmhOcXhmRmhvNUhVSm9KMlRqS3ZG?=
 =?utf-8?B?SU5JemdmRm9IU3ZEQmJLZHArVzkrTUdaR1IvUll1VFdZUHVXQUVZR1FIci8y?=
 =?utf-8?B?TkEwMi9xbXhQTUkrSENmdEJVVVR4TWpjYkNrcXQyZ0RlNmc5WDNsdTd5V05u?=
 =?utf-8?B?MTdXY0lndzBoSU5zZzIyQTRDK2t4SDJkRjdKQUxCbTFldGwyek5tOU9uMWNZ?=
 =?utf-8?B?MGZoN0VvMGlBZzR4dHBLYkNKcENXM2h3Zm9DbTF3S3Y1T2NKU3U4dEhobXRi?=
 =?utf-8?B?VEp6dmNpVytuaHB4ZXo0UjJyU2xaSndhNFgwU20yQURvclNUTmQvMmRUcmVU?=
 =?utf-8?Q?V1BwD4aqVy2r9dDpdjrjHV1DjK8xB4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjhNaXRmOU9FTGFxc1hKd1RIZXVqTDh6OUZVK1RTaS93ZEpUWmIzY0lPVUkr?=
 =?utf-8?B?L1Z2Y0lkRHhCZWE3L25ndXJ4WHB2d20rSWNzbGU5UlN0bVBSTGVUaXRjcGc0?=
 =?utf-8?B?QisvcGRsRWNhenl6VmNKMVg5SDFyOHI1Z3FYSlNPaWppKzdFb3F4a202UFhn?=
 =?utf-8?B?SEI2UStZNEFWVFpGeCtkN3NVck1LYzJYWDl1bnNIRUNuRUVrL29uSktPTUhj?=
 =?utf-8?B?eklMZXlkbGxsd25vSUdWbFcycGJYdUQydnNnSFIrR3F6Ync4R3FDcVJ4R2Nz?=
 =?utf-8?B?TFFLZ1VRd2p3N1dVc2pSbXE0Mk1sRDBneno3RGd5YUdCckF6VVJtbFY5dFVy?=
 =?utf-8?B?dWhBemVoTXlwMkNPaTh5d0pnSEF5YUFqRzBsM0U0MmJUWEF4VjR6SXVQcDU5?=
 =?utf-8?B?WEc5dk5mNUtzVHV2ZFNLa1dMUDhvMmRHdFFKVHJFQUZRemRxa1dKMy96Ujhm?=
 =?utf-8?B?Rnl1aGlzeFJOK3lacE1BWjcrR2ZwdUJjc2hKNUN6WjEzempIRnNRcEV6RitU?=
 =?utf-8?B?ZTl6NXgyckUzajF5ZC9kRXpJWWpyc1RqZk50MnZzZ2RKaUdQKzNRZzRETHZn?=
 =?utf-8?B?b25JZ2FpSVFBdkd2aUhGRUlVa0lEdTVTMUlFWGlDVVhPRW5tQm9oSUFERUJB?=
 =?utf-8?B?OVR3NE4ray9EYXloUnMxT09uUlQzZCtyc094czB5WkdYdndjUkpLUVJ6WTBQ?=
 =?utf-8?B?YWxPclRjN3ZWNnk4T2JRdWNmc05GSHY0dTQydnlTMG0ydFZBUWYyZVVBOG5W?=
 =?utf-8?B?VGFhZXQ5MXZ0SVoyc3MwM1p5UUNCbytjKzBQL2cwV003RXIvNUgvRE5yKzRl?=
 =?utf-8?B?L1ptSk41TU1qRlFWb0tHSytOYkF1b1MzNDl1R21PM3l5NlhxYkFocWpYajdi?=
 =?utf-8?B?Tzcra1dHNU9jZ0oyZDlZc0c3eGFjVHIxZW1OZEtZVi8rdTd5bmNFZlRmemFB?=
 =?utf-8?B?UHBmRDhMSGZ0RllkWlpjVXBOYVFLbk53cDJhcmtxaTVmT3hmT3hyN1VJNnE5?=
 =?utf-8?B?NzdESG9tcEpEM05pK0RuM0ZnMGtWSk9GOWc0TEs0ZFNpejhTYlpYekhFVTY0?=
 =?utf-8?B?WmJySGVPZktYTExWMTBJN09nMUdVNndwN21EM3BVclNicEFqS1lsQTVwM3Ru?=
 =?utf-8?B?OGlCVzdXSVpXTWUxY1ZhUnNPZXdtZDB5V3R6RFlURzJTaGFCdjNTZzBFcFFt?=
 =?utf-8?B?dVhTY1V0eU1PK0U1MDk4eElBY3pXT0FSMWdxbnRMbWxyclZYNmRHUUR6Slhq?=
 =?utf-8?B?VXRoRHpYOTh2a2Q0eG9HQ05la1R0b24rVTEwblFSc3hLVzZGOTZDZXF2d2VM?=
 =?utf-8?B?TDlwQ2psWE9FVlY5VVJ1QWI3ODZ1UitrQ1NhOW5KK1VDaFp0eEpyRzc5QnJP?=
 =?utf-8?B?QUhLMlM1NjVQK2xjKzFsT1lxR2NTazJjR1JsN0c4dTBMMGVDTkpIOHlPcGMv?=
 =?utf-8?B?dzR0OE1vZTU0MFVYaUVpZngyalR3V0o5M2tvdkVyZXZGNjMwRENmMTBqbUk1?=
 =?utf-8?B?cERFRHM4azJVWnBMVjAzcjNmSmRkMHZjZ0N0alAxR280emhHSFlpT3FNWjI2?=
 =?utf-8?B?ZERiRUp4cHExTklmZTEvUlJ1SWZwTWtOVitrY1o4Q0RTQ290SldEZmFaK0E3?=
 =?utf-8?B?SloreFVnTTJJdGtPVWk3NFdPazhORHE1d2ZROU43TEplbHZXVTFicjlzZVV0?=
 =?utf-8?B?amxvUVZMbTFXK09tem5VZWNzMkpvc0hDb1BSZjNSMlRHY2h0Q1NtM2dZNlBt?=
 =?utf-8?B?dFJZRkh6QW1PSG01UXBEKzFFRUg4S1pPeDFLeGhvQ0lZTnYwdzdyODM1Undx?=
 =?utf-8?B?SXZ1MXZuVlZ6QUFRdnljeFdkNTBUWHlub3Rzb1krUXpHQlA0TmdpaDh1cDBz?=
 =?utf-8?B?SFNzbU1rTDQ1L0N4bkpaSHN5ZXh3cGdud2lwd3Q3QmxvNUZta1JNdTU1Zkto?=
 =?utf-8?B?bHFnek4wYnJBVWVoRzVUSEZiVncxUW1nd0RFNXVhdmpKOUE5WG11YXJSdDJS?=
 =?utf-8?B?TnFscWpVTEdTODdQZmd4bUhNYzY0Mk1COUVKQ0doZzN6WmlDSEZMcjJZN0V3?=
 =?utf-8?B?dGNOeEVRTW5yZDF2d3laRjBWZkRFcVA2UjB5UDdRR0F0bWRlNWF0cEpjaFBF?=
 =?utf-8?Q?DRB975Wx7rAGAmPgM308Ls6OE?=
Content-ID: <1BA838BABB3B094BB4B3BC18595B86CB@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c946b891-2b5f-4638-af33-08dd76641cdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 06:10:50.8939
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fw1x8zFf/dK9HBLx+Lgn7YX++fmTx8ldGD0b/MJe1Wgam1YahU27rKrZpJEhOlIAJzqR0yH0seah/EtTq/rruw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSQPR03MB8597
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_231104_797595_DD2F3B6B 
X-CRM114-Status: GOOD (  17.26  )
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

On Mon, 2025-04-07 at 21:31 +0800, Bincai Liu wrote:
> Add dsi and mipi phy driver for mt8196.
> 
> Signed-off-by: Bincai Liu <bincai.liu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c        |   2 +
>  drivers/gpu/drm/mediatek/mtk_dsi.c            | 248 +++++++++++-------
>  drivers/phy/mediatek/Makefile                 |   1 +
>  .../phy/mediatek/phy-mtk-mipi-dsi-mt8196.c    | 201 ++++++++++++++
>  drivers/phy/mediatek/phy-mtk-mipi-dsi.c       |   1 +
>  drivers/phy/mediatek/phy-mtk-mipi-dsi.h       |   1 +

Separate drm driver and phy driver to different patch.

>  6 files changed, 356 insertions(+), 98 deletions(-)
>  create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 74158b9d6503..ae859f20fab3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -830,6 +830,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>  	  .data = (void *)MTK_DSI },
>  	{ .compatible = "mediatek,mt8188-dsi",
>  	  .data = (void *)MTK_DSI },
> +	{ .compatible = "mediatek,mt8196-dsi",
> +	  .data = (void *)MTK_DSI },
>  	{ }
>  };
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index d1f407fb7eb1..b1467d6bed06 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -44,12 +44,12 @@
>  #define EXT_TE_RDY_INT_FLAG		BIT(4)
>  #define DSI_BUSY			BIT(31)
>  
> -#define DSI_CON_CTRL		0x10
> +#define DSI_CON_CTRL(data)		(0x10 + (data)->reg_20_ofs)

I do not like the term reg_20_ofs.
It limit that the offset should be zero or 20.
If a new SoC its offset is 30 for DSI_CON_CTRL, this code would be modified again.
May be reg_ctrl_off for all the register name has 'CTRL'.

>  #define DSI_RESET			BIT(0)
>  #define DSI_EN				BIT(1)
>  #define DPHY_RESET			BIT(2)
>  
> -#define DSI_MODE_CTRL		0x14
> +#define DSI_MODE_CTRL(data)		(0x14 + (data)->reg_20_ofs)
>  #define MODE				(3)
>  #define CMD_MODE			0
>  #define SYNC_PULSE_MODE			1
> @@ -58,7 +58,7 @@
>  #define FRM_MODE			BIT(16)
>  #define MIX_MODE			BIT(17)
>  
> -#define DSI_TXRX_CTRL		0x18
> +#define DSI_TXRX_CTRL(data)		(0x18 + (data)->reg_20_ofs)
>  #define VC_NUM				BIT(1)
>  #define LANE_NUM			GENMASK(5, 2)
>  #define DIS_EOT				BIT(6)
> @@ -69,81 +69,87 @@
>  #define MAX_RTN_SIZE			GENMASK(15, 12)
>  #define HSTX_CKLP_EN			BIT(16)
>  
> -#define DSI_PSCTRL		0x1c
> +#define DSI_PSCTRL(data)		(0x1c + (data)->reg_20_ofs)
>  #define DSI_PS_WC			GENMASK(13, 0)
> -#define DSI_PS_SEL			GENMASK(17, 16)
> +#define DSI_PS_SEL			GENMASK(19, 16)
>  #define PACKED_PS_16BIT_RGB565		0
>  #define PACKED_PS_18BIT_RGB666		1
>  #define LOOSELY_PS_24BIT_RGB666		2
>  #define PACKED_PS_24BIT_RGB888		3
>  
> -#define DSI_VSA_NL		0x20
> -#define DSI_VBP_NL		0x24
> -#define DSI_VFP_NL		0x28
> -#define DSI_VACT_NL		0x2C
> +#define DSI_VSA_NL(data)		(0x20 + (data)->reg_40_ofs)

reg_nl_off.

> +#define DSI_VBP_NL(data)		(0x24 + (data)->reg_40_ofs)
> +#define DSI_VFP_NL(data)		(0x28 + (data)->reg_40_ofs)
> +#define DSI_VACT_NL(data)		(0x2c + (data)->reg_40_ofs)
>  #define VACT_NL				GENMASK(14, 0)
> -#define DSI_SIZE_CON		0x38
> +#define DSI_SIZE_CON(data)		((data)->dsi_size_con ? \
> +					(data)->dsi_size_con : 0x38)
>  #define DSI_HEIGHT				GENMASK(30, 16)
>  #define DSI_WIDTH				GENMASK(14, 0)
> -#define DSI_HSA_WC		0x50
> -#define DSI_HBP_WC		0x54
> -#define DSI_HFP_WC		0x58
> +#define DSI_HSA_WC(data)		(0x50 + (data)->reg_30_ofs)

reg_wc_off.

> +#define DSI_HBP_WC(data)		(0x54 + (data)->reg_30_ofs)
> +#define DSI_HFP_WC(data)		(0x58 + (data)->reg_30_ofs)
>  #define HFP_HS_VB_PS_WC		GENMASK(30, 16)
>  #define HFP_HS_EN			BIT(31)
>  
> -#define DSI_CMDQ_SIZE		0x60
> +#define DSI_CMDQ_SIZE(data)		((data)->dsi_cmdq_con ? \
> +					(data)->dsi_cmdq_con : 0x60)
>  #define CMDQ_SIZE			0x3f
>  #define CMDQ_SIZE_SEL		BIT(15)
>  
> -#define DSI_HSTX_CKL_WC		0x64
> +#define DSI_HSTX_CKL_WC(data)		((data)->dsi_hstx_ckl_wc ? \
> +					(data)->dsi_hstx_ckl_wc : 0x64)
>  #define HSTX_CKL_WC			GENMASK(15, 2)
>  
> -#define DSI_RX_DATA0		0x74
> -#define DSI_RX_DATA1		0x78
> -#define DSI_RX_DATA2		0x7c
> -#define DSI_RX_DATA3		0x80
> +#define DSI_RX_DATA0(data)		(0x74 + (data)->reg_30_ofs)

reg_rx_off

> +#define DSI_RX_DATA1(data)		(0x78 + (data)->reg_30_ofs)
> +#define DSI_RX_DATA2(data)		(0x7c + (data)->reg_30_ofs)
> +#define DSI_RX_DATA3(data)		(0x80 + (data)->reg_30_ofs)
>  
> -#define DSI_RACK		0x84
> +#define DSI_RACK(data)			(0x84 + (data)->reg_30_ofs)
>  #define RACK				BIT(0)
>  
> -#define DSI_PHY_LCCON		0x104
> +#define DSI_PHY_LCCON(data)		((data)->reg_phy_base ? 0x1d0 : 0x104)
>  #define LC_HS_TX_EN			BIT(0)
>  #define LC_ULPM_EN			BIT(1)
>  #define LC_WAKEUP_EN			BIT(2)
>  
> -#define DSI_PHY_LD0CON		0x108
> +#define DSI_PHY_LD0CON(data)		((data)->reg_phy_base ? 0x1d4 : 0x108)
>  #define LD0_HS_TX_EN			BIT(0)
>  #define LD0_ULPM_EN			BIT(1)
>  #define LD0_WAKEUP_EN			BIT(2)
>  
> -#define DSI_PHY_TIMECON0	0x110
> -#define LPX				GENMASK(7, 0)
> -#define HS_PREP				GENMASK(15, 8)
> -#define HS_ZERO				GENMASK(23, 16)
> -#define HS_TRAIL			GENMASK(31, 24)
> -
> -#define DSI_PHY_TIMECON1	0x114
> -#define TA_GO				GENMASK(7, 0)
> -#define TA_SURE				GENMASK(15, 8)
> -#define TA_GET				GENMASK(23, 16)
> -#define DA_HS_EXIT			GENMASK(31, 24)
> -
> -#define DSI_PHY_TIMECON2	0x118
> -#define CONT_DET			GENMASK(7, 0)
> -#define DA_HS_SYNC			GENMASK(15, 8)
> -#define CLK_ZERO			GENMASK(23, 16)
> -#define CLK_TRAIL			GENMASK(31, 24)
> -
> -#define DSI_PHY_TIMECON3	0x11c
> -#define CLK_HS_PREP			GENMASK(7, 0)
> -#define CLK_HS_POST			GENMASK(15, 8)
> -#define CLK_HS_EXIT			GENMASK(23, 16)
> +#define DSI_PHY_TIMECON0(data)		((data)->reg_phy_base ? \
> +					(data)->reg_phy_base : 0x110)
> +#define LPX				(0xff << 0)

Keep GENMASK, do not modify this.

> +#define HS_PREP				(0xff << 8)
> +#define HS_ZERO				(0xff << 16)
> +#define HS_TRAIL			(0xff << 24)
> +
> +#define DSI_PHY_TIMECON1(data)		(DSI_PHY_TIMECON0(data) + 0x4)

Let all SoC has (data)->reg_phy_base value (0x110 for old SoC).
And this would be 

#define DSI_PHY_TIMECON0(data)		(data)->reg_phy_base
#define DSI_PHY_TIMECON1(data)		((data)->reg_phy_base + 0x4)

> +#define TA_GO				(0xff << 0)
> +#define TA_SURE				(0xff << 8)
> +#define TA_GET				(0xff << 16)
> +#define DA_HS_EXIT			(0xff << 24)
> +
> +#define DSI_PHY_TIMECON2(data)		(DSI_PHY_TIMECON0(data) + 0x8)
> +#define CONT_DET			(0xff << 0)
> +#define DA_HS_SYNC			(0xff << 8)
> +#define CLK_ZERO			(0xff << 16)
> +#define CLK_TRAIL			(0xff << 24)
> +
> +#define DSI_PHY_TIMECON3(data)		(DSI_PHY_TIMECON0(data) + 0xc)
> +#define CLK_HS_PREP			(0xff << 0)
> +#define CLK_HS_POST			(0xff << 8)
> +#define CLK_HS_EXIT			(0xff << 16)
>  
>  /* DSI_VM_CMD_CON */
>  #define VM_CMD_EN			BIT(0)
>  #define TS_VFP_EN			BIT(5)
>  
>  /* DSI_SHADOW_DEBUG */
> +#define DSI_SHADOW_DEBUG(data)		((data)->dsi_shadow_dbg ? \
> +					(data)->dsi_shadow_dbg : 0x190)
>  #define FORCE_COMMIT			BIT(0)
>  #define BYPASS_SHADOW			BIT(1)
>  
> @@ -193,6 +199,24 @@ struct mtk_dsi_driver_data {
>  	bool has_size_ctl;
>  	bool cmdq_long_packet_ctl;
>  	bool support_per_frame_lp;
> +	const u32 reg_phy_base;
> +	const u32 reg_20_ofs;
> +	const u32 reg_30_ofs;
> +	const u32 reg_40_ofs;
> +	const u32 reg_100_ofs;
> +	const u32 dsi_size_con;
> +	const u32 dsi_vfp_early_stop;

Useless, so drop it.

> +	const u32 dsi_lfr_con;

Ditto.

> +	const u32 dsi_cmdq_con;
> +	const u32 dsi_type1_hs;

Ditto.

> +	const u32 dsi_hstx_ckl_wc;
> +	const u32 dsi_mem_conti;

Ditto.

> +	const u32 dsi_time_con;

Ditto.

> +	const u32 dsi_reserved;

Ditto.

> +	const u32 dsi_state_dbg6;

Ditto.

> +	const u32 dsi_dbg_sel;

Ditto.

> +	const u32 dsi_shadow_dbg;

There is already reg_shadow_dbg_off.
Use reg_shadow_dbg_off for mt8196.
So drop this.

> +	const u32 dsi_vm_cmd_con;

There is already reg_vm_cmd_off.
Use reg_vm_cmd_off for mt8196.
So drop this.

>  };
>  
>  struct mtk_dsi {
> @@ -283,71 +307,71 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
>  		  FIELD_PREP(CLK_HS_POST, timing->clk_hs_post) |
>  		  FIELD_PREP(CLK_HS_EXIT, timing->clk_hs_exit);
>  
> -	writel(timcon0, dsi->regs + DSI_PHY_TIMECON0);
> -	writel(timcon1, dsi->regs + DSI_PHY_TIMECON1);
> -	writel(timcon2, dsi->regs + DSI_PHY_TIMECON2);
> -	writel(timcon3, dsi->regs + DSI_PHY_TIMECON3);
> +	writel(timcon0, dsi->regs + DSI_PHY_TIMECON0(dsi->driver_data));
> +	writel(timcon1, dsi->regs + DSI_PHY_TIMECON1(dsi->driver_data));
> +	writel(timcon2, dsi->regs + DSI_PHY_TIMECON2(dsi->driver_data));
> +	writel(timcon3, dsi->regs + DSI_PHY_TIMECON3(dsi->driver_data));
>  }
>  

[snip]

> +
> +static const struct mtk_dsi_driver_data mt8196_dsi_driver_data = {
> +	.reg_cmdq_off = 0x400,
> +	.has_shadow_ctl = true,
> +	.has_size_ctl = true,
> +	.cmdq_long_packet_ctl = true,
> +	.support_per_frame_lp = true,
> +	.reg_phy_base = 0x600,
> +	.reg_20_ofs = 0x020,
> +	.reg_30_ofs = 0x030,
> +	.reg_40_ofs = 0x040,
> +	.reg_100_ofs = 0x100,
> +	.dsi_size_con = 0x02c,
> +	.dsi_vfp_early_stop = 0x170,
> +	.dsi_lfr_con = 0x1a0,
> +	.dsi_cmdq_con = 0x44,
> +	.dsi_type1_hs = 0x50,
> +	.dsi_hstx_ckl_wc = 0x100,
> +	.dsi_mem_conti = 0x048,
> +	.dsi_time_con = 0x200,
> +	.dsi_reserved = 0x3f8,
> +	.dsi_state_dbg6 = 0x274,
> +	.dsi_dbg_sel = 0x274,
> +	.dsi_shadow_dbg = 0x0d0,
> +	.dsi_vm_cmd_con = 0x110,
>  };

Separate mt8196_dsi_driver_data to an independent patch which is adding mt8196 dsi support.
And the rest is a preparing patch which support variant register offset.

>  
>  static const struct of_device_id mtk_dsi_of_match[] = {
> @@ -1304,6 +1355,7 @@ static const struct of_device_id mtk_dsi_of_match[] = {
>  	{ .compatible = "mediatek,mt8183-dsi", .data = &mt8183_dsi_driver_data },
>  	{ .compatible = "mediatek,mt8186-dsi", .data = &mt8186_dsi_driver_data },
>  	{ .compatible = "mediatek,mt8188-dsi", .data = &mt8188_dsi_driver_data },
> +	{ .compatible = "mediatek,mt8196-dsi", .data = &mt8196_dsi_driver_data },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mtk_dsi_of_match);
> diff --git a/drivers/phy/mediatek/Makefile b/drivers/phy/mediatek/Makefile
> index 1b8088df71e8..ed0da708759b 100644
> --- a/drivers/phy/mediatek/Makefile
> +++ b/drivers/phy/mediatek/Makefile
> @@ -21,4 +21,5 @@ obj-$(CONFIG_PHY_MTK_MIPI_CSI_0_5)	+= phy-mtk-mipi-csi-0-5.o
>  phy-mtk-mipi-dsi-drv-y			:= phy-mtk-mipi-dsi.o
>  phy-mtk-mipi-dsi-drv-y			+= phy-mtk-mipi-dsi-mt8173.o
>  phy-mtk-mipi-dsi-drv-y			+= phy-mtk-mipi-dsi-mt8183.o
> +phy-mtk-mipi-dsi-drv-y			+= phy-mtk-mipi-dsi-mt8196.o
>  obj-$(CONFIG_PHY_MTK_MIPI_DSI)		+= phy-mtk-mipi-dsi-drv.o
> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c
> new file mode 100644
> index 000000000000..09c7159748d7
> --- /dev/null
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c
> @@ -0,0 +1,201 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: jitao.shi <jitao.shi@mediatek.com>
> + */
> +

[snip]

> +
> +static void mtk_mipi_tx_power_off_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +	void __iomem *base = mipi_tx->regs;
> +
> +	/* Switch ON each Lane */
> +	mtk_phy_set_bits(base + MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_phy_set_bits(base + MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_phy_set_bits(base + MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_phy_set_bits(base + MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_phy_set_bits(base + MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
> +
> +	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN, base + MIPITX_LANE_CON);
> +	writel(RG_DSI_PAD_TIEL_SEL, base + MIPITX_LANE_CON);
> +}
> +
> +const struct mtk_mipitx_data mt8196_mipitx_data = {
> +	.mipi_tx_clk_ops = &mtk_mipi_tx_pll_ops,
> +	.mipi_tx_enable_signal = mtk_mipi_tx_power_on_signal,
> +	.mipi_tx_disable_signal = mtk_mipi_tx_power_off_signal,
> +};

phy-mtk-mipi-dsi-mt8196.c is almost the same as phy-mtk-mipi-dsi-mt8183.c
so merge these two files into one files.
You could reference phy-mtk-mipi-dsi-mt8173.c

Regards,
CK

> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
> index 065ea626093a..46f0cb3ac096 100644
> --- a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
> @@ -183,6 +183,7 @@ static const struct of_device_id mtk_mipi_tx_match[] = {
>  	{ .compatible = "mediatek,mt2701-mipi-tx", .data = &mt2701_mipitx_data },
>  	{ .compatible = "mediatek,mt8173-mipi-tx", .data = &mt8173_mipitx_data },
>  	{ .compatible = "mediatek,mt8183-mipi-tx", .data = &mt8183_mipitx_data },
> +	{ .compatible = "mediatek,mt8196-mipi-tx", .data = &mt8196_mipitx_data },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mtk_mipi_tx_match);
> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi.h b/drivers/phy/mediatek/phy-mtk-mipi-dsi.h
> index 5d4876f1dc95..38f64e1c75aa 100644
> --- a/drivers/phy/mediatek/phy-mtk-mipi-dsi.h
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi.h
> @@ -42,5 +42,6 @@ unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
>  extern const struct mtk_mipitx_data mt2701_mipitx_data;
>  extern const struct mtk_mipitx_data mt8173_mipitx_data;
>  extern const struct mtk_mipitx_data mt8183_mipitx_data;
> +extern const struct mtk_mipitx_data mt8196_mipitx_data;
>  
>  #endif

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
