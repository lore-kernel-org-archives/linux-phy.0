Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798D2C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 10:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdgkQTwqN1p0b8aWcrHyRlVG43BLXclfXZfmZrqpngU=; b=F2AlQrPC9PTRK5
	d1eWYyks3Dn7wxarfuvLtncpSJeIo7e6K1ljD2lUYFT54CXHU4suNWOPf+zCgdwX/5ytLn50GMN3z
	GuwoPbA3RAdxzALhzzUkFIyf9PQhQQtg8NXJP0HfYIYBUXxv5K7InJFkBKMCjEIX7xVA+9Se6uy+A
	PLQOgbirRDLIrQsKeui+1C5WBaHOrnwEfxkJV1kAarDAxo8Axe8Lk3M0yMomTPcK5/nxn7y/IAIqm
	9pUVIkrGiylMCNjzgfUnUUm+m17v7dugXkqccoNOPz21UnBtyKOHzBqdBBmbGGYLK5DKqx66Uh1IX
	OzGVXKbor7GUtMzc2rpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrVw-0000000ASwr-0vUU;
	Tue, 27 May 2025 10:26:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrTn-0000000ASnl-1ViX;
	Tue, 27 May 2025 10:24:20 +0000
X-UUID: be04b9223ae411f08d385d50fb11b32d-20250527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=WxlENiadrVvRslW9v6Jx7YxLzNbCHR/axhnTUNzQ82o=;
	b=DcP7mvTR1c+Ij42EyCErXsQgzKPMdPLQDR/NXWjtOrb54RM5z3NHB18CxZ6l7NokmlK3sNZxKwfrVepDoPCTdue462oXqrCO4pVL3/Rkx2RNDeuQszjfHwAPKdsn46C17rLz1upd/jVB12JGB4zX6CZyUiB/wFLmwrN+4y6UgjI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:476848a6-d7a8-411b-8bd3-b3f630eec906,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:b171c747-ee4f-4716-aedb-66601021a588,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111,TC:nil,Conte
	nt:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
	OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: be04b9223ae411f08d385d50fb11b32d-20250527
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1947341296; Tue, 27 May 2025 03:24:16 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Tue, 27 May 2025 18:24:11 +0800
Received: from TYPPR03CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Tue, 27 May 2025 18:23:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sCOSdveaPivZUi3md+zsh82nRfS6JuhRxJ+AzvUOM+4jF1LzG1IJ8WZ3FtIF6+clsHnmvZeTDFwp3H+M1PhOEINhRLJz105pCWaNUcfWBMe5BZ0cj1cuFQtAKzI1xjEAQCn2SjjgWYjeV1PyUXNsLuFA9CuC8HIn/y3EvpQKN8vDAMpbkfn4Aq5ykm0Uk1jLrqRdiMsYPBQ0tnPqWWp1o5qJZaxOXBinyyXqVomTvt2j3GI+/BJKSTy3sSlbqeWLU5Xd3nmbHr9t7AkjQY4Z8ysjgPF1GLiAvoP4diokmSvsKUWhHGFp++jKm4X4qTe1T9Ta6zhhVVdyOJY1Bj0k4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WxlENiadrVvRslW9v6Jx7YxLzNbCHR/axhnTUNzQ82o=;
 b=i/JumP+RCSjx1L/FJEkIHHpw7a1V49Ts/aBemGV7pqWQVvXItl6JTrdrxrAPMxgucpFlhPVXph5j+Y9x5OD+naK2uWit/FXzgh+5e4XjzOZLjuHxEfTwyAehackbf3uKAOa51hl9Z4hedgo0DTgWZT3t2p1Aq5tfmxtI8EuOteAseoh2YgYpjbhVoH6BJWXuvPQ131LtRHholYEinW51D0RzDWA59o0hQGwzZXKorzCaH696MHzExkIFpP2NShQWGitfHkeNwBcMOCo/9tJuiUyPpXgrAMbOQFhrTp8kJ5MuJrthPaeVy8xaRK74HzrXao+CDz7p29Ok7e5HCoo9LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WxlENiadrVvRslW9v6Jx7YxLzNbCHR/axhnTUNzQ82o=;
 b=g7hahz+7GKPECU8E8PvE8md171/xOEU2O0mbAYxg2X2J4AhM97qtGE9VyQv9FkLIpgHfOLCBknqYaFrHzQkskBetD0FVYOflnGW3cPip93C0UTy1wFavOpknAXw7/YjXzur2R6nU3r730TLK5SGjNhQSK7LfA4maeDByQDo813o=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEYPR03MB7252.apcprd03.prod.outlook.com (2603:1096:101:c1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.26; Tue, 27 May
 2025 10:24:10 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%5]) with mapi id 15.20.8769.021; Tue, 27 May 2025
 10:24:09 +0000
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
Subject: Re: [PATCH 4/5] drm/mediatek: Add eDP driver for mt8196
Thread-Topic: [PATCH 4/5] drm/mediatek: Add eDP driver for mt8196
Thread-Index: AQHbsC6pKf0lqr/MJU+DWyyMaJRcS7PmgpgA
Date: Tue, 27 May 2025 10:24:09 +0000
Message-ID: <5f99e6d96e54b451b4fb261c2cd5790b8949f554.camel@mediatek.com>
References: <20250418065313.8972-1-bincai.liu@mediatek.com>
	 <20250418065313.8972-5-bincai.liu@mediatek.com>
In-Reply-To: <20250418065313.8972-5-bincai.liu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEYPR03MB7252:EE_
x-ms-office365-filtering-correlation-id: 95cc3d00-98ab-4501-d608-08dd9d089e2d
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?U0t4elFBaGc4bnd6dCtoQlZka0RBYWRJT3A4eWVSaXc2MzZoMGVWeURzNC9z?=
 =?utf-8?B?bmRKMTlTUUE0eURFUFJ5L1lodXRRanJLMCtYMGdFN2VvRWgwZGtRVW5UanRj?=
 =?utf-8?B?eWszY1ZKK05Rb0VqWUtCUkFXenZCYnc3VTN0K3c4T1FYTjRLd0VDV0JWWU00?=
 =?utf-8?B?M1l5a01LcnNreC9zU3pZc2pwTUZldWdsbE1tdklOaWNTdmdNMi95YzhKVFFJ?=
 =?utf-8?B?M3ZRc0VQNDRnallScUNjOGxlZlhLSzYxeTZDc1lkZXIyQUNOYy9ndFRoRlpQ?=
 =?utf-8?B?ZmplaHM2N0JISmhhdVZYSG14WHZXc0xTblBYZFVSQ3pBNHFxUUZUS1FnY21T?=
 =?utf-8?B?d2xVdDRsaWl1R0RCUnhEblNwTXNUTGRabkJjblZkRW94QkVnOXZGV05OaW5x?=
 =?utf-8?B?clZxekNPSnlOOU96Vjg5NDVNYjdpbjZMRmxKVVk4ckg1WUJYRCtmbXJXSk9B?=
 =?utf-8?B?cHFxcFIxMk10R1pZVXBialdEZnBzcXRyQnFNdjZ4SXZQLzFpeWNlLzdIbEty?=
 =?utf-8?B?K0hLcXF2cEo1MFZEYVdjZitTSXpRVStBTUJBbFBlSjc4Zmw5V3lCQkE0YUZK?=
 =?utf-8?B?OHUxcWwyVjc0MklSaXhTa1pxSWR4cGp3VTlzZFBnMDhHaUxpQnkxa3M3aDB0?=
 =?utf-8?B?cDlYbGpORThQTmJKMTVsVDY1S0tXcWw0c1VvN1lhbldBVGlXWUYxUmpOUm1s?=
 =?utf-8?B?NDBBbzlFeUx5RzBRV2M4M2YvdVoyRUNFcm01ZWtpUG1tVDVWZGRQL1pMS0lj?=
 =?utf-8?B?dHpoOFdYZjBFc0hsRkl6UTlGQ04ybjlzbGlhQjM2RC95VmtwSEd2d1NNNnIx?=
 =?utf-8?B?T05GWU1mWnU2Q3lFU1Y3TUM5WnJQU1AzS1RSeEJuZS8vdmlRQXFUeGs2QzUv?=
 =?utf-8?B?d2psY0puYnVyNFlKTURmSG84dlhIbG9ualhydU4vWXlvRElRS1E5V1pHejNF?=
 =?utf-8?B?R0Vja3RmY3IrQldabjRyWjkweEVCOGp4azVvTVpOVDRKRktvKytGdDVjU3BE?=
 =?utf-8?B?Ym8xRmw4TENMSFIyY2FMNXZXN0F2RDV3SGVoSnZubkdqWHF4NXFlZVozbVJD?=
 =?utf-8?B?YW1uWFBsSUhoZVhrNk1MRVdaY1N0dXZFWStKZmJGcU5KckQvcnJmdkU5MXpj?=
 =?utf-8?B?cUt3STN2NHpVeWR6aW5nRkZoRU1tL3UydXRaU0dSM3Z0ZkFUUnlDMFVvVWNq?=
 =?utf-8?B?SHA3UzE5bVpjclBmbGorL0s1VW1KOFdqNW9zWUJCU3FlNXJDS3dyREhNWlRz?=
 =?utf-8?B?cE9nRlhkcVJMRTA4dWlWc0dTVFA1RG1lNURmTWpqeHA4VVFmeTlNV0lvdCtw?=
 =?utf-8?B?QmFPbGM4eFkxWENiU1pFYUpldTNVdG1xaGo5eXhxbnVpQmVrMmJwWTQ3UHo4?=
 =?utf-8?B?cUxHV0djbkQ1bWUyWmpaZGs0cExNZitCRUlYYlZ0ZzF6QTZ0V3VtTlNLMHpw?=
 =?utf-8?B?Q25RVUpRTFdjTTNaeWp0WVFOeWYwU1NjRlBUck5rQlFKWkg0QmNBanBPeS83?=
 =?utf-8?B?R1U3SWNLOGJoalcySUNObW5GNzVEdVdEcWtKcHN1U0JLaHBCMFQ3QmxQc2ZY?=
 =?utf-8?B?Vk9odUE4NnQwRFA5TmFCV3puYTV4dW9KL0JJSmovaXJpeUl2SFpQS0RZNTc2?=
 =?utf-8?B?WWVrdzFiai85SFNRcVNGN0IxSlVDQnhMa29pVlUxcXcrSkZnUFlkSGxwSm1V?=
 =?utf-8?B?Q3VxUlVTd1I5TUFoWmhCcUdFS2VqQVdEd1c1VlFFUmg5VllNbTI5UnVwcnRh?=
 =?utf-8?B?OXAwMzdpaHRiVVNPTlMwWWdHUTh3NlExYVZrWCtjMUpLbkxsbHovRThpNHc2?=
 =?utf-8?B?a1Vsb28xRjVFckJIQno2eU54bkxKRGtzaFd2RFZ0T0RwU2d5WFExYUlXQm5Q?=
 =?utf-8?B?RlZuK25Oa0JMS21TNmp1TEVQYlUyN283UEN4Vk1BNVNqcC9UaUdFM1NYQ1k2?=
 =?utf-8?B?MjhXbjBWRkVSS1BocnhWdUIzcjh4RTBJNVowYk52UzBsNFRsdkQ4d3dXN09U?=
 =?utf-8?Q?09GEBNaItRzPde7i3GCx63mtMfZEx0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXZDNnhaZzBEMEE4ek9MUmVDaFRmZFN4KzZoWmx5cFAyMTFqN2ZUMXBMUUJj?=
 =?utf-8?B?aGxWQ05sZDlrcHRLNyt4Si9UdStYVGgzY3RPRGk4SFUxN05pYVlpRGs0ZUlw?=
 =?utf-8?B?OFlURHZWYlpQTkR1NmFTNUZGRE10dlZjQ3BkTnNUUjJIdldsNGJlZTZFN3J6?=
 =?utf-8?B?SUNxRU11czBGTCtxQ05FVzRIbEVmcFRkaEx4dUFHZmVPTVdHdG9taWlPTitE?=
 =?utf-8?B?OUdxZzZYZS83enRCWGpLWXBqakQ4YmtlYjFOQUVLUzhlRXBHOHM1TUZCeHBK?=
 =?utf-8?B?ZVlLTnh0ZlZpc21USk9DUm05ZVRIQmd5bFlYemVFR1UxVnVRbk9hVU01bE9X?=
 =?utf-8?B?K1RlVk1JSWNSSll3RW1DMW9pKzExMjBWU3hiaHcyN3dhQmExZSt2SDBIT0FX?=
 =?utf-8?B?TU05QXJSS3FJY0xMUWN4VkhQc3FaSkg0RzRWMTN1OE5aR0t0djVQTzlXWnMz?=
 =?utf-8?B?UmhsM3VBUXBhREZ5TjB2Sm9yaHlqUGxmdXZEVDBKQ202UjVpakp4cmh6R1lz?=
 =?utf-8?B?N3c5Z0M1a2dxN01YYTVjU0RXMTRqTUMxQmRpTFZCNWJJWFN1WWRjQ1Q1c0ho?=
 =?utf-8?B?VG0yaFBtUU54YTRWNys0dHBIWENqS2dWYzVJcGZPOEZhRjJ0U2gwZkFHVzk2?=
 =?utf-8?B?aVdqbmo4QS9hYUM3ZTNzNTIzSVNOSXQwRlM4YXdsQXlFNGlKZ1p0aTM2NXdD?=
 =?utf-8?B?S2FYRVh5a3IrVVoxem5qd0ZLem9Wd3grUEJuWlRHOHlNSWUza0FXT1YxNkRa?=
 =?utf-8?B?d0k1aTd6bjB4Wlc3WXlMY2g4RFdKejE5L3dhWFdKSVpueXpCUS9MMkI3WXFT?=
 =?utf-8?B?dExKZVdRNjZEd09lL2FET1lHeXY2YVNHMWZzN2NSaTJlWklQS3E5M25vSmZ4?=
 =?utf-8?B?K1Jld2srbVVTMDNQY2ZKYUtqaFF5Y0hyRnpYL3NpUVBsaE1zQXdnZmllSlU2?=
 =?utf-8?B?dEZIMWFNQ1RPeExLaGY4aFFXOFFDakRFaktxdkdyeEVuLzQ1QTd6UWNIMFdV?=
 =?utf-8?B?eDlTb1B1elhlT3hiWWsxMWNHaVdTK1Q4a0w2T1lLS3J2SHdrSndtUnQzTkgw?=
 =?utf-8?B?S24xQnJxK0gzcmJ6YXVkSEZ4NkY2bC9EUjFZTHFvSTZidytRa0lZdVVybU1K?=
 =?utf-8?B?NktuRElrMTRSUlZyZHVmVHlIWThCcG4xeXcxQWJCcFl3bzZxTVdWSDY3NTJB?=
 =?utf-8?B?bERtc3RvTWh0WlgrR1hFRmpNdkxydlY5Q203SzhLMHcvK29SVjFzbEtqbEpS?=
 =?utf-8?B?Y0hmakNTMldMcFRoMENuQjY3dHY5cHpWMWkrUE9KNXBtTHJaWDE3QnFNaUN1?=
 =?utf-8?B?cGUySElWdGRsTmFaWEVIeitQanluRDQrNU0wUXlXRVJONzB4T0MydG9CT2FP?=
 =?utf-8?B?R0R6QUpxcE5TY3A3Z1Zoc3JqNXN6bXU3US8ydUFUclU4ME1UWEtnbk1tNXMy?=
 =?utf-8?B?WUxZN2w3c2VFeEJRcFFNYmJyTndZelczaldRcjBIeTM2NEVCQm1wSVBQS0VE?=
 =?utf-8?B?NTlHbUlaNGlidFAvUWV3SlhWaU90b281QWo5bkZtOGFMaGFMbGgxWW1hcTNm?=
 =?utf-8?B?d04vK1JxOWVSMm9VVTRBU05ra3NjSGIya0xvOWtqWXZ0Y29JWWZPOU8xZk9X?=
 =?utf-8?B?MngvWit2bTA0QS9XNWgwZTEzeTRMSzQ1eFN4RjV3TDdtbWxSeU5ja1VKMnda?=
 =?utf-8?B?UnRwQklmcmlncUJtajV3UGpIemUrNWZqOXJIOFYzRmpNMnlSZkdHeUJpZ3VE?=
 =?utf-8?B?NWExRlRCTW5LOVRqMWRKY3QwTVNYVU9nY3NrWmhZVWQ4dHBIOXprRVJlK2VP?=
 =?utf-8?B?Y3lML3U1MDJFQUVSY1JtalJLdTh1RWRkTlFyRnlwZlBCcmU0Q0ZyeDVnaXI0?=
 =?utf-8?B?TjI4dDErYlhLM1p6dVdGQTFtM3pnZXN5dlhVV2hLUjFyNnFTaWJ6a1VYWXJx?=
 =?utf-8?B?RnpLczUzcTc4ZTJjcU9VbmY0VXBRYWNYLytYWE5abFJoL1hYcUxSRy9lU2FR?=
 =?utf-8?B?MkJ1OTV4bGpkRTBPYWJEc2xFTzJXeUhnNVNHRy92VEN6dnQ0aVRJUVJsWlBJ?=
 =?utf-8?B?Y1Y2NG8weG80RFh2dHdUSWRCRnNXVDhIRmkwVFFnU3FlL0hZZ2dLeE50aVds?=
 =?utf-8?Q?vlnsbq7LekKg7KuBELetKxpA8?=
Content-ID: <4964B35D9BC1604FB4EAD7729639DB4F@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95cc3d00-98ab-4501-d608-08dd9d089e2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 10:24:09.4956
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1ZBUr2ZVqcKE+3SCh59RFQ1RfOkVN+XF/dOmwitXUPnQuZJw2RircK2S27aSyaJUZ0TwpzQrKC4Ht9qjj+nSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7252
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_032419_434162_E70CCCF1 
X-CRM114-Status: GOOD (  17.58  )
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
> Add code to support eDP 1.4 driver for mt8196.
> 
> Signed-off-by: Bincai Liu <bincai.liu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dp.c     | 484 ++++++++++++++++++++++----
>  drivers/gpu/drm/mediatek/mtk_dp_reg.h | 126 +++++++
>  2 files changed, 550 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
> index b2408abb9d49..159ab5ebb9d2 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c
> @@ -35,6 +35,9 @@
>  
>  #include "mtk_dp_reg.h"
>  
> +#define EDP_VIDEO_UNMUTE		0x22
> +#define EDP_VIDEO_UNMUTE_VAL		0xfefd
> +#define MTK_SIP_DP_CONTROL		(0x82000523 | 0x40000000)
>  #define MTK_DP_SIP_CONTROL_AARCH32	MTK_SIP_SMC_CMD(0x523)
>  #define MTK_DP_SIP_ATF_EDP_VIDEO_UNMUTE	(BIT(0) | BIT(5))
>  #define MTK_DP_SIP_ATF_VIDEO_UNMUTE	BIT(5)
> @@ -51,6 +54,7 @@
>  #define MTK_DP_TRAIN_DOWNSCALE_RETRY 10
>  #define MTK_DP_VERSION 0x11
>  #define MTK_DP_SDP_AUI 0x4
> +#define EDP_REINIT_TIMES 4
>  
>  enum {
>  	MTK_DP_CAL_GLB_BIAS_TRIM = 0,
> @@ -102,6 +106,7 @@ struct mtk_dp {
>  	bool enabled;
>  	bool need_debounce;
>  	int irq;
> +	int swing_value;
>  	u8 max_lanes;
>  	u8 max_linkrate;
>  	u8 rx_cap[DP_RECEIVER_CAP_SIZE];
> @@ -110,6 +115,8 @@ struct mtk_dp {
>  	/* irq_thread_lock is used to protect irq_thread_handle */
>  	spinlock_t irq_thread_lock;
>  
> +	struct clk *power_clk;
> +
>  	struct device *dev;
>  	struct drm_bridge bridge;
>  	struct drm_bridge *next_bridge;
> @@ -124,6 +131,7 @@ struct mtk_dp {
>  	struct platform_device *phy_dev;
>  	struct phy *phy;
>  	struct regmap *regs;
> +	struct regmap *phy_regs;
>  	struct timer_list debounce_timer;
>  
>  	/* For audio */
> @@ -134,6 +142,9 @@ struct mtk_dp {
>  	struct device *codec_dev;
>  	/* protect the plugged_cb as it's used in both bridge ops and audio */
>  	struct mutex update_plugged_status_lock;
> +	/* For edp power control */
> +	void __iomem *pwr_regs;
> +	u32 retry_times;
>  };
>  
>  struct mtk_dp_data {
> @@ -143,6 +154,7 @@ struct mtk_dp_data {
>  	bool audio_supported;
>  	bool audio_pkt_in_hblank_area;
>  	u16 audio_m_div2_bit;
> +	u32 edp_ver;
>  };
>  
>  static const struct mtk_dp_efuse_fmt mt8188_dp_efuse_fmt[MTK_DP_CAL_MAX] = {
> @@ -402,6 +414,16 @@ static const struct regmap_config mtk_dp_regmap_config = {
>  	.name = "mtk-dp-registers",
>  };
>  
> +static const struct regmap_config mtk_edp_phy_regmap_config = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = SEC_OFFSET + 0x90,
> +	.name = "mtk-edp-phy-registers",
> +};
> +
> +static int mtk_dp_poweron(struct mtk_dp *mtk_dp);
> +
>  static struct mtk_dp *mtk_dp_from_bridge(struct drm_bridge *b)
>  {
>  	return container_of(b, struct mtk_dp, bridge);
> @@ -459,6 +481,26 @@ static void mtk_dp_bulk_16bit_write(struct mtk_dp *mtk_dp, u32 offset, u8 *buf,
>  	}
>  }
>  
> +static void mtk_edp_pm_ctl(struct mtk_dp *mtk_dp, bool enable)
> +{
> +	/* DISP_EDPTX_PWR_CON udelay 10us to ensure that the power state is stable */
> +	udelay(10);
> +	if (enable) {
> +		/* Enable subsys clock, just set bit4 to 0 */
> +		writel(readl(mtk_dp->pwr_regs) & ~DISP_EDPTX_PWR_CLK_DIS, mtk_dp->pwr_regs);
> +		udelay(1);
> +		/* Subsys power-on reset, firstly set bit0 to 0 and then set bit0 to 1 */
> +		writel(readl(mtk_dp->pwr_regs) & ~DISP_EDPTX_PWR_RST_B, mtk_dp->pwr_regs);
> +		udelay(1);
> +		writel(readl(mtk_dp->pwr_regs) | DISP_EDPTX_PWR_RST_B, mtk_dp->pwr_regs);
> +	} else {
> +		writel(readl(mtk_dp->pwr_regs) & ~DISP_EDPTX_PWR_RST_B, mtk_dp->pwr_regs);
> +		udelay(1);
> +		writel(readl(mtk_dp->pwr_regs) | DISP_EDPTX_PWR_CLK_DIS, mtk_dp->pwr_regs);
> +	}
> +	udelay(10);
> +}
> +
>  static void mtk_dp_msa_bypass_enable(struct mtk_dp *mtk_dp, bool enable)
>  {
>  	u32 mask = HTOTAL_SEL_DP_ENC0_P0 | VTOTAL_SEL_DP_ENC0_P0 |
> @@ -514,9 +556,14 @@ static void mtk_dp_set_msa(struct mtk_dp *mtk_dp)
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_315C,
>  			   vm->hsync_len,
>  			   PGEN_HSYNC_PULSE_WIDTH_DP_ENC0_P0_MASK);
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3160,
> -			   vm->hback_porch + vm->hsync_len,
> -			   PGEN_HFDE_START_DP_ENC0_P0_MASK);
> +	if (mtk_dp->data->edp_ver)

I would like a name about what it does rather than a version number.
It seem this is to add horizontal front porch to PGEN_HFDE_START_DP_ENC0_P0_MASK.
Maybe the name should be

if (mtk_dp->data->xxx_hfp) {
 

> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3160,
> +				   vm->hback_porch + vm->hsync_len + vm->hfront_porch,
> +				   PGEN_HFDE_START_DP_ENC0_P0_MASK);
> +	else
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3160,
> +				   vm->hback_porch + vm->hsync_len,
> +				   PGEN_HFDE_START_DP_ENC0_P0_MASK);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3164,
>  			   vm->hactive,
>  			   PGEN_HFDE_ACTIVE_WIDTH_DP_ENC0_P0_MASK);
> @@ -531,9 +578,14 @@ static void mtk_dp_set_msa(struct mtk_dp *mtk_dp)
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3170,
>  			   vm->vsync_len,
>  			   PGEN_VSYNC_PULSE_WIDTH_DP_ENC0_P0_MASK);
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3174,
> -			   vm->vback_porch + vm->vsync_len,
> -			   PGEN_VFDE_START_DP_ENC0_P0_MASK);
> +	if (mtk_dp->data->edp_ver)

I would like a name about what it does rather than a version number.
It seem this is to add vertical front porch to PGEN_VFDE_START_DP_ENC0_P0_MASK.
Maybe the name should be

if (mtk_dp->data->xxx_vfp) {

> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3174,
> +				   vm->vback_porch + vm->vsync_len +  vm->vfront_porch,
> +				   PGEN_VFDE_START_DP_ENC0_P0_MASK);
> +	else
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3174,
> +				   vm->vback_porch + vm->vsync_len,
> +				   PGEN_VFDE_START_DP_ENC0_P0_MASK);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3178,
>  			   vm->vactive,
>  			   PGEN_VFDE_ACTIVE_WIDTH_DP_ENC0_P0_MASK);
> @@ -543,7 +595,7 @@ static int mtk_dp_set_color_format(struct mtk_dp *mtk_dp,
>  				   enum dp_pixelformat color_format)
>  {
>  	u32 val;
> -	u32 misc0_color;
> +	u32 misc0_color = 0;

Drop this.

>  
>  	switch (color_format) {
>  	case DP_PIXELFORMAT_YUV422:
> @@ -554,6 +606,9 @@ static int mtk_dp_set_color_format(struct mtk_dp *mtk_dp,
>  		val = PIXEL_ENCODE_FORMAT_DP_ENC0_P0_RGB;
>  		misc0_color = DP_COLOR_FORMAT_RGB;
>  		break;
> +	case DP_PIXELFORMAT_YUV420:
> +		val = PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YCBCR420;


After you drop misc0_color = 0, then add below statement.
But I feel it's weird that color format is RGB.

		misc0_color = DP_COLOR_FORMAT_RGB;

This register also exist in mt8188 and mt8195 edp, so this modification is not only about mt8196.
Separate this to an independent patch.

> +		break;
>  	default:
>  		drm_warn(mtk_dp->drm_dev, "Unsupported color format: %d\n",
>  			 color_format);
> @@ -612,7 +667,8 @@ static void mtk_dp_setup_encoder(struct mtk_dp *mtk_dp)
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC1_P0_3364,
>  			   FIFO_READ_START_POINT_DP_ENC1_P0_VAL << 12,
>  			   FIFO_READ_START_POINT_DP_ENC1_P0_MASK);
> -	mtk_dp_write(mtk_dp, MTK_DP_ENC1_P0_3368, DP_ENC1_P0_3368_VAL);
> +	if (!mtk_dp->data->edp_ver)

I would like a name about what it does rather than a version number.
Give it a meaningful name.

> +		mtk_dp_write(mtk_dp, MTK_DP_ENC1_P0_3368, DP_ENC1_P0_3368_VAL);
>  }
>  
>  static void mtk_dp_pg_enable(struct mtk_dp *mtk_dp, bool enable)
> @@ -972,8 +1028,8 @@ static void mtk_dp_set_swing_pre_emphasis(struct mtk_dp *mtk_dp, int lane_num,
>  	u32 lane_shift = lane_num * DP_TX1_VOLT_SWING_SHIFT;
>  
>  	dev_dbg(mtk_dp->dev,
> -		"link training: swing_val = 0x%x, pre-emphasis = 0x%x\n",
> -		swing_val, preemphasis);
> +		"link training: swing_val = 0x%x, pre-emphasis = 0x%x lane_num = %d\n",
> +		swing_val, preemphasis, lane_num);
>  
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_SWING_EMP,
>  			   swing_val << (DP_TX0_VOLT_SWING_SHIFT + lane_shift),
> @@ -981,6 +1037,28 @@ static void mtk_dp_set_swing_pre_emphasis(struct mtk_dp *mtk_dp, int lane_num,
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_SWING_EMP,
>  			   preemphasis << (DP_TX0_PRE_EMPH_SHIFT + lane_shift),
>  			   DP_TX0_PRE_EMPH_MASK << lane_shift);
> +	if (mtk_dp->data->edp_ver && mtk_dp->phy_regs) {
> +		/* set swing and pre */
> +		switch (lane_num) {
> +		case 0:
> +		case 1:
> +		case 2:
> +		case 3:
> +			regmap_update_bits(mtk_dp->phy_regs,
> +					   PHYD_DIG_DRV_FORCE_LANE(lane_num),
> +					   EDP_TX_LN_VOLT_SWING_VAL_FLDMASK |
> +					   EDP_TX_LN_PRE_EMPH_VAL_FLDMASK,
> +					   swing_val << 1 |
> +					   preemphasis << 3);

In struct phy_ops {}, it has configure member, and you could pass lanes and pre in that interface.
I'm not sure swing_val could be passed by that interface or not.
If not, maybe add new parameter for swing_val.

> +			break;
> +		default:
> +			break;
> +		}
> +		if (preemphasis != 0)
> +			mtk_dp_update_bits(mtk_dp, RG_DSI_DEM_EN,
> +					   DSI_DE_EMPHASIS_ENABLE,
> +					   DSI_DE_EMPHASIS_ENABLE);
> +	}
>  }
>  
>  static void mtk_dp_reset_swing_pre_emphasis(struct mtk_dp *mtk_dp)
> @@ -1039,6 +1117,44 @@ static void mtk_dp_hwirq_enable(struct mtk_dp *mtk_dp, bool enable)
>  
>  static void mtk_dp_initialize_settings(struct mtk_dp *mtk_dp)
>  {
> +	if (mtk_dp->data->edp_ver) {

I would like a name about what it does rather than a version number.
Give it a meaningful name.

> +		mtk_dp_update_bits(mtk_dp, REG_3F04_DP_ENC_P0_3, 0,
> +				   FRAME_START_MARKER_0_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F08_DP_ENC_P0_3,
> +				   FRAME_START_MARKER_1_DP_ENC_P0_3,
> +				   FRAME_START_MARKER_1_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F0C_DP_ENC_P0_3,
> +				   FRAME_END_MARKER_0_DP_ENC_P0_3,
> +				   FRAME_END_MARKER_0_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F10_DP_ENC_P0_3,
> +				   FRAME_END_MARKER_1_DP_ENC_P0_3,
> +				   FRAME_END_MARKER_1_DP_ENC_P0_3_MASK);
> +
> +		mtk_dp_update_bits(mtk_dp, REG_33C0_DP_ENCODER1_P0, 0,
> +				   SDP_TESTBUS_SEL_DP_ENC_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_33C0_DP_ENCODER1_P0,
> +				   SDP_TESTBUS_SEL_BIT4_DP_ENC,
> +				   SDP_TESTBUS_SEL_BIT4_DP_ENC_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_33C4_DP_ENCODER1_P0,
> +				   DP_TX_ENCODER_TESTBUS_SEL_DP_ENC,
> +				   DP_TX_ENCODER_TESTBUS_SEL_DP_ENC_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F28_DP_ENC_P0_3,
> +				   DP_TX_SDP_PSR_AS_TESTBUS,
> +				   DP_TX_SDP_PSR_AS_TESTBUS_MASK);
> +		mtk_dp_update_bits(mtk_dp, DP_TX_TOP_RESET_AND_PROBE,
> +				   RG_SW_RST,
> +				   RG_SW_RST_MASK);
> +		mtk_dp_update_bits(mtk_dp, DP_TX_TOP_RESET_AND_PROBE,
> +				   RG_PROBE_LOW_SEL,
> +				   RG_PROBE_LOW_SEL_MASK);
> +		mtk_dp_update_bits(mtk_dp, DP_TX_TOP_RESET_AND_PROBE,
> +				   RG_PROBE_LOW_HIGH_SWAP,
> +				   RG_PROBE_LOW_HIGH_SWAP_MASK);
> +
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_IRQ_MASK,
> +				   ENCODER_IRQ_MSK | TRANS_IRQ_MSK,
> +				   ENCODER_IRQ_MSK | TRANS_IRQ_MSK);
> +	}
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_342C,
>  			   XTAL_FREQ_DP_TRANS_P0_DEFAULT,
>  			   XTAL_FREQ_DP_TRANS_P0_MASK);
> @@ -1057,27 +1173,34 @@ static void mtk_dp_initialize_settings(struct mtk_dp *mtk_dp)
>  static void mtk_dp_initialize_hpd_detect_settings(struct mtk_dp *mtk_dp)
>  {
>  	u32 val;
> -	/* Debounce threshold */
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> -			   8, HPD_DEB_THD_DP_TRANS_P0_MASK);
>  
> -	val = (HPD_INT_THD_DP_TRANS_P0_LOWER_500US |
> -	       HPD_INT_THD_DP_TRANS_P0_UPPER_1100US) << 4;
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> -			   val, HPD_INT_THD_DP_TRANS_P0_MASK);
> +	if (mtk_dp->data->edp_ver) {

I would like a name about what it does rather than a version number.
Give it a meaningful name.

> +		mtk_dp_update_bits(mtk_dp, REG_364C_AUX_TX_P0,
> +				   HPD_INT_THD_FLDMASK_VAL << 4,
> +				   HPD_INT_THD_FLDMASK);
> +	} else {
> +		/* Debounce threshold */
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> +				   8, HPD_DEB_THD_DP_TRANS_P0_MASK);
>  
> -	/*
> -	 * Connect threshold 1.5ms + 5 x 0.1ms = 2ms
> -	 * Disconnect threshold 1.5ms + 5 x 0.1ms = 2ms
> -	 */
> -	val = (5 << 8) | (5 << 12);
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> -			   val,
> -			   HPD_DISC_THD_DP_TRANS_P0_MASK |
> -			   HPD_CONN_THD_DP_TRANS_P0_MASK);
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3430,
> -			   HPD_INT_THD_ECO_DP_TRANS_P0_HIGH_BOUND_EXT,
> -			   HPD_INT_THD_ECO_DP_TRANS_P0_MASK);
> +		val = (HPD_INT_THD_DP_TRANS_P0_LOWER_500US |
> +		       HPD_INT_THD_DP_TRANS_P0_UPPER_1100US) << 4;
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> +				   val, HPD_INT_THD_DP_TRANS_P0_MASK);
> +
> +		/*
> +		 * Connect threshold 1.5ms + 5 x 0.1ms = 2ms
> +		 * Disconnect threshold 1.5ms + 5 x 0.1ms = 2ms
> +		 */
> +		val = (5 << 8) | (5 << 12);
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> +				   val,
> +				   HPD_DISC_THD_DP_TRANS_P0_MASK |
> +				   HPD_CONN_THD_DP_TRANS_P0_MASK);
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3430,
> +				   HPD_INT_THD_ECO_DP_TRANS_P0_HIGH_BOUND_EXT,
> +				   HPD_INT_THD_ECO_DP_TRANS_P0_MASK);
> +	}
>  }
>  
>  static void mtk_dp_initialize_aux_settings(struct mtk_dp *mtk_dp)
> @@ -1088,6 +1211,10 @@ static void mtk_dp_initialize_aux_settings(struct mtk_dp *mtk_dp)
>  			   AUX_TIMEOUT_THR_AUX_TX_P0_MASK);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_AUX_P0_3658,
>  			   0, AUX_TX_OV_EN_AUX_TX_P0_MASK);
> +	if (mtk_dp->data->edp_ver)

I would like a name about what it does rather than a version number.
Give it a meaningful name.

> +		mtk_dp_update_bits(mtk_dp, REG_36A0_AUX_TX_P0,
> +				   DP_TX_INIT_MASK_15_TO_2,
> +				   DP_TX_INIT_MASK_15_TO_2_MASK);
>  	/* 25 for 26M */
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_AUX_P0_3634,
>  			   AUX_TX_OVER_SAMPLE_RATE_FOR_26M << 8,
> @@ -1104,6 +1231,46 @@ static void mtk_dp_initialize_aux_settings(struct mtk_dp *mtk_dp)
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_AUX_P0_3690,
>  			   RX_REPLY_COMPLETE_MODE_AUX_TX_P0,
>  			   RX_REPLY_COMPLETE_MODE_AUX_TX_P0);
> +
> +	if (mtk_dp->data->edp_ver) {

Ditto.

> +		/*Con Thd = 1.5ms+Vx0.1ms*/
> +		mtk_dp_update_bits(mtk_dp, REG_367C_AUX_TX_P0,
> +				   HPD_CONN_THD_AUX_TX_P0_FLDMASK_POS << 6,
> +				   HPD_CONN_THD_AUX_TX_P0_FLDMASK);
> +		/*DisCon Thd = 1.5ms+Vx0.1ms*/
> +		mtk_dp_update_bits(mtk_dp, REG_37A0_AUX_TX_P0,
> +				   HPD_DISC_THD_AUX_TX_P0_FLDMASK_POS << 4,
> +				   HPD_DISC_THD_AUX_TX_P0_FLDMASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3FF8_DP_ENC_P0_3,
> +				   XTAL_FREQ_FOR_PSR_DP_ENC_P0_3_VALUE << 9,
> +				   XTAL_FREQ_FOR_PSR_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_366C_AUX_TX_P0,
> +				   XTAL_FREQ_DP_TX_AUX_366C_VALUE << 8,
> +				   XTAL_FREQ_DP_TX_AUX_366C_MASK);
> +	}
> +}
> +
> +static void mtk_edp_phyd_wait_aux_ldo_ready(struct mtk_dp *mtk_dp,
> +					    unsigned long wait_us)
> +{
> +	int ret = 0;
> +	u32 val = 0x0;
> +	u32 mask = RGS_BG_CORE_EN_READY | RGS_AUX_LDO_EN_READY;
> +
> +	if (mtk_dp->phy_regs) {
> +		ret = regmap_read_poll_timeout(mtk_dp->phy_regs,
> +					       DP_PHY_DIG_GLB_STATUS_0,
> +					       val, !!(val & mask),
> +					       wait_us / 100, wait_us);

Could this waiting be placed in phy driver?
In phy_init() or phy_configure()?

> +	} else {
> +		ret = regmap_read_poll_timeout(mtk_dp->regs,
> +					       DP_PHY_DIG_GLB_STATUS_0,
> +					       val, !!(val & mask),
> +					       wait_us / 100, wait_us);
> +	}
> +
> +	if (ret)
> +		dev_err(mtk_dp->dev, "%s AUX not ready\n", __func__);
>  }
>  
>  static void mtk_dp_initialize_digital_settings(struct mtk_dp *mtk_dp)
> @@ -1115,15 +1282,63 @@ static void mtk_dp_initialize_digital_settings(struct mtk_dp *mtk_dp)
>  			   BS2BS_MODE_DP_ENC1_P0_VAL << 12,
>  			   BS2BS_MODE_DP_ENC1_P0_MASK);
>  
> +	if (mtk_dp->data->edp_ver) {

I would like a name about what it does rather than a version number.
Give it a meaningful name.

> +		/* dp I-mode enable */
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3000,
> +				   DP_I_MODE_ENABLE, DP_I_MODE_ENABLE);
> +		/*symbol_cnt_reset */
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3000,
> +				   REG_BS_SYMBOL_CNT_RESET,
> +				   REG_BS_SYMBOL_CNT_RESET);
> +		mtk_dp_update_bits(mtk_dp, REG_3368_DP_ENCODER1_P0,
> +				   VIDEO_SRAM_FIFO_CNT_RESET_SEL_VALUE,
> +				   VIDEO_SRAM_FIFO_CNT_RESET_SEL_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3368_DP_ENCODER1_P0,
> +				   BS_FOLLOW_SEL_DP_ENC0_P0,
> +				   BS_FOLLOW_SEL_DP_ENC0_P0);
> +		/*[5:0]video sram start address*/
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_303C,
> +				   SRAM_START_READ_THRD_DP_ENC0_P0_VALUE,
> +				   SRAM_START_READ_THRD_DP_ENC0_P0_MASK);
> +		/* reg_psr_patgen_avt_en disable psr pattern */
> +		mtk_dp_update_bits(mtk_dp, REG_3F80_DP_ENC_P0_3,
> +				   0, PSR_PATGEN_AVT_EN_FLDMASK);
> +		/* phy D enable */
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   PHY_PWR_STATE_OW_EN_DP_ENC_P0_3,
> +				   PHY_PWR_STATE_OW_EN_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   ALL_POWER_ON,
> +				   PHY_PWR_STATE_OW_VALUE_DP_ENC_P0_3_MASK);
> +		mtk_edp_phyd_wait_aux_ldo_ready(mtk_dp, 100000);
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   0, PHY_PWR_STATE_OW_EN_DP_ENC_P0_3_MASK);
> +
> +		mtk_dp_update_bits(mtk_dp, REG_3FF8_DP_ENC_P0_3,
> +				   PHY_STATE_W_1_DP_ENC_P0_3,
> +				   PHY_STATE_W_1_DP_ENC_P0_3_MASK);
> +		/* reg_dvo_on_ow_en */
> +		mtk_dp_update_bits(mtk_dp, REG_3FF8_DP_ENC_P0_3,
> +				   DVO_ON_W_1_FLDMASK,
> +				   DVO_ON_W_1_FLDMASK);
> +	}
>  	/* dp tx encoder reset all sw */
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004,
>  			   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0,
>  			   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> +	if (mtk_dp->data->edp_ver) {

Ditto.

> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004, 0,
> +				   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> +		mtk_dp_update_bits(mtk_dp, REG_3FF8_DP_ENC_P0_3,
> +				   PHY_STATE_RESET_ALL_VALUE,
> +				   PHY_STATE_RESET_ALL_MASK);
> +	}
>  
>  	/* Wait for sw reset to complete */
>  	usleep_range(1000, 5000);
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004,
> -			   0, DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> +	if (!mtk_dp->data->edp_ver)

Ditto.

> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004, 0,
> +				   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
>  }
>  
>  static void mtk_dp_digital_sw_reset(struct mtk_dp *mtk_dp)
> @@ -1152,6 +1367,19 @@ static void mtk_dp_sdp_path_reset(struct mtk_dp *mtk_dp)
>  
>  static void mtk_dp_set_lanes(struct mtk_dp *mtk_dp, int lanes)
>  {
> +	if (mtk_dp->data->edp_ver) {

Ditto.

> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   PHY_PWR_STATE_OW_EN_DP_ENC_P0_3,
> +				   PHY_PWR_STATE_OW_EN_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   BIAS_POWER_ON,
> +				   PHY_PWR_STATE_OW_VALUE_DP_ENC_P0_3_MASK);
> +
> +		mtk_edp_phyd_wait_aux_ldo_ready(mtk_dp, 100000);
> +
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   0, PHY_PWR_STATE_OW_EN_DP_ENC_P0_3_MASK);
> +	}
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_35F0,
>  			   lanes == 0 ? 0 : DP_TRANS_DUMMY_RW_0,
>  			   DP_TRANS_DUMMY_RW_0_MASK);
> @@ -1266,15 +1494,20 @@ static int mtk_dp_phy_configure(struct mtk_dp *mtk_dp,
>  			.ssc = mtk_dp->train_info.sink_ssc,
>  		}
>  	};
> -
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_PWR_STATE, DP_PWR_STATE_BANDGAP,
> -			   DP_PWR_STATE_MASK);
> +	if (!mtk_dp->data->edp_ver)

Ditto.

> +		mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_PWR_STATE,
> +				   DP_PWR_STATE_BANDGAP, DP_PWR_STATE_MASK);
>  
>  	ret = phy_configure(mtk_dp->phy, &phy_opts);
>  	if (ret)
>  		return ret;
>  
>  	mtk_dp_set_calibration_data(mtk_dp);
> +	/* Turn on phy power after phy configure */
> +	if (mtk_dp->data->edp_ver)

Ditto.

> +		mtk_dp_update_bits(mtk_dp, REG_3FF8_DP_ENC_P0_3,
> +				   PHY_STATE_W_1_DP_ENC_P0_3,
> +				   PHY_STATE_W_1_DP_ENC_P0_3_MASK);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_PWR_STATE,
>  			   DP_PWR_STATE_BANDGAP_TPLL_LANE, DP_PWR_STATE_MASK);
>  
> @@ -1326,16 +1559,20 @@ static void mtk_dp_video_mute(struct mtk_dp *mtk_dp, bool enable)
>  	struct arm_smccc_res res;
>  	u32 val = VIDEO_MUTE_SEL_DP_ENC0_P0 |
>  		  (enable ? VIDEO_MUTE_SW_DP_ENC0_P0 : 0);
> +	u32 smmc_para;
>  
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3000,
>  			   val,
>  			   VIDEO_MUTE_SEL_DP_ENC0_P0 |
>  			   VIDEO_MUTE_SW_DP_ENC0_P0);
> -
> -	arm_smccc_smc(MTK_DP_SIP_CONTROL_AARCH32,
> -		      mtk_dp->data->smc_cmd, enable,
> -		      0, 0, 0, 0, 0, &res);
> -
> +	if (mtk_dp->data->edp_ver) {

Ditto.

> +		smmc_para = (EDP_VIDEO_UNMUTE << 16) | enable;
> +		arm_smccc_smc(MTK_SIP_DP_CONTROL, EDP_VIDEO_UNMUTE, enable,
> +			      smmc_para, EDP_VIDEO_UNMUTE_VAL, 0, 0, 0, &res);
> +	} else {
> +		arm_smccc_smc(MTK_DP_SIP_CONTROL_AARCH32,
> +			      mtk_dp->data->smc_cmd, enable, 0, 0, 0, 0, 0, &res);
> +	}
>  	dev_dbg(mtk_dp->dev, "smc cmd: 0x%x, p1: %s, ret: 0x%lx-0x%lx\n",
>  		mtk_dp->data->smc_cmd, enable ? "enable" : "disable", res.a0, res.a1);
>  }
> @@ -1410,6 +1647,16 @@ static void mtk_dp_power_enable(struct mtk_dp *mtk_dp)
>  static void mtk_dp_power_disable(struct mtk_dp *mtk_dp)
>  {
>  	mtk_dp_write(mtk_dp, MTK_DP_TOP_PWR_STATE, 0);
> +	if (mtk_dp->data->edp_ver) {

Ditto.

> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   PHY_PWR_STATE_OW_EN_DP_ENC_P0_3,
> +				   PHY_PWR_STATE_OW_EN_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   ALL_POWER_OFF,
> +				   PHY_PWR_STATE_OW_VALUE_DP_ENC_P0_3_MASK);
> +		mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +				   0, PHY_PWR_STATE_OW_EN_DP_ENC_P0_3_MASK);
> +	}
>  
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_0034,
>  			   DA_CKM_CKTX0_EN_FORCE_EN, DA_CKM_CKTX0_EN_FORCE_EN);
> @@ -1424,9 +1671,13 @@ static void mtk_dp_initialize_priv_data(struct mtk_dp *mtk_dp)
>  {
>  	bool plugged_in = (mtk_dp->bridge.type == DRM_MODE_CONNECTOR_eDP);
>  
> -	mtk_dp->train_info.link_rate = DP_LINK_BW_5_4;
> +	if (mtk_dp->data->edp_ver)

Ditto.

> +		mtk_dp->train_info.link_rate = DP_LINK_BW_8_1;
> +	else
> +		mtk_dp->train_info.link_rate = DP_LINK_BW_5_4;
>  	mtk_dp->train_info.lane_count = mtk_dp->max_lanes;
>  	mtk_dp->train_info.cable_plugged_in = plugged_in;
> +	mtk_dp->train_info.sink_ssc = false;
>  
>  	mtk_dp->info.format = DP_PIXELFORMAT_RGB;
>  	memset(&mtk_dp->info.vm, 0, sizeof(struct videomode));
> @@ -1545,11 +1796,15 @@ static void mtk_dp_train_update_swing_pre(struct mtk_dp *mtk_dp, int lanes,
>  		int index = lane / 2;
>  		int shift = lane % 2 ? DP_ADJUST_VOLTAGE_SWING_LANE1_SHIFT : 0;
>  
> -		swing = (dpcd_adjust_req[index] >> shift) &
> -			DP_ADJUST_VOLTAGE_SWING_LANE0_MASK;
> +		if (mtk_dp->swing_value != 0) {
> +			swing = mtk_dp->swing_value;
> +		} else {
> +			swing = (dpcd_adjust_req[index] >> shift) &
> +				DP_ADJUST_VOLTAGE_SWING_LANE0_MASK;
> +		}
>  		preemphasis = ((dpcd_adjust_req[index] >> shift) &
> -			       DP_ADJUST_PRE_EMPHASIS_LANE0_MASK) >>
> -			      DP_ADJUST_PRE_EMPHASIS_LANE0_SHIFT;
> +				DP_ADJUST_PRE_EMPHASIS_LANE0_MASK) >>
> +				DP_ADJUST_PRE_EMPHASIS_LANE0_SHIFT;

It seems this just modify indent.
Separate this to an refinement patch.

>  		val = swing << DP_TRAIN_VOLTAGE_SWING_SHIFT |
>  		      preemphasis << DP_TRAIN_PRE_EMPHASIS_SHIFT;
>  
> @@ -1969,6 +2224,11 @@ static void mtk_dp_init_port(struct mtk_dp *mtk_dp)
>  	mtk_dp_initialize_hpd_detect_settings(mtk_dp);
>  
>  	mtk_dp_digital_sw_reset(mtk_dp);
> +
> +	if (mtk_dp->data->edp_ver)

I would like a name about what it does rather than a version number.
Give it a meaningful name.

> +		mtk_dp_update_bits(mtk_dp, EDP_TX_TOP_CLKGEN_0,
> +				   EDP_TX_TOP_CLKGEN_REST_VALUE,
> +				   EDP_TX_TOP_CLKGEN_REST_MASK);
>  }
>  
>  static irqreturn_t mtk_dp_hpd_event_thread(int hpd, void *dev)
> @@ -2047,9 +2307,15 @@ static int mtk_dp_wait_hpd_asserted(struct drm_dp_aux *mtk_aux, unsigned long wa
>  	u32 val;
>  	int ret;
>  
> -	ret = regmap_read_poll_timeout(mtk_dp->regs, MTK_DP_TRANS_P0_3414,
> -				       val, !!(val & HPD_DB_DP_TRANS_P0_MASK),
> -				       wait_us / 100, wait_us);
> +	if (mtk_dp->data->edp_ver)

Ditto.

> +		ret = regmap_read_poll_timeout(mtk_dp->regs, REG_364C_AUX_TX_P0,
> +					       val, !!(val & HPD_STATUS_DP_AUX_TX_P0_MASK),
> +					       wait_us / 100, wait_us);
> +	else
> +		ret = regmap_read_poll_timeout(mtk_dp->regs, MTK_DP_TRANS_P0_3414,
> +					       val, !!(val & HPD_DB_DP_TRANS_P0_MASK),
> +					       wait_us / 100, wait_us);
> +
>  	if (ret) {
>  		mtk_dp->train_info.cable_plugged_in = false;
>  		return ret;
> @@ -2072,7 +2338,10 @@ static int mtk_dp_dt_parse(struct mtk_dp *mtk_dp,
>  	struct device_node *endpoint;
>  	struct device *dev = &pdev->dev;
>  	int ret;
> +	int level;
> +	struct resource *regs;
>  	void __iomem *base;
> +	void __iomem *phy_base;
>  	u32 linkrate;
>  	int len;
>  
> @@ -2084,6 +2353,22 @@ static int mtk_dp_dt_parse(struct mtk_dp *mtk_dp,
>  	if (IS_ERR(mtk_dp->regs))
>  		return PTR_ERR(mtk_dp->regs);
>  
> +	phy_base = devm_platform_ioremap_resource(pdev, 1);
> +	if (!IS_ERR_OR_NULL(phy_base)) {
> +		mtk_dp->phy_regs = devm_regmap_init_mmio(dev, phy_base,
> +					&mtk_edp_phy_regmap_config);
> +		if (IS_ERR(mtk_dp->phy_regs))
> +			mtk_dp->phy_regs = NULL;
> +	}
> +
> +	regs = platform_get_resource(pdev, IORESOURCE_MEM, 2);

You does not define this in binding document.
You should define it in binding document first then you could use it.

> +	if (!IS_ERR_OR_NULL(regs)) {
> +		mtk_dp->pwr_regs = devm_ioremap(&pdev->dev, regs->start, 0x4);
> +		if (IS_ERR(mtk_dp->pwr_regs))
> +			dev_err(dev, "Failed to get pwr_regs: %ld\n",
> +				PTR_ERR(mtk_dp->pwr_regs));
> +	}
> +
>  	endpoint = of_graph_get_endpoint_by_regs(pdev->dev.of_node, 1, -1);
>  	len = of_property_count_elems_of_size(endpoint,
>  					      "data-lanes", sizeof(u32));
> @@ -2102,6 +2387,11 @@ static int mtk_dp_dt_parse(struct mtk_dp *mtk_dp,
>  
>  	mtk_dp->max_linkrate = drm_dp_link_rate_to_bw_code(linkrate * 100);
>  
> +	if (of_get_property(dev->of_node, "swing-level", &level)) {

You does not define this property in binding document, so drop this.
If you want to use this, define it in binding document first.

> +		of_property_read_u32(dev->of_node,
> +				     "swing-level", &mtk_dp->swing_value);
> +	}
> +
>  	return 0;
>  }
>  
> @@ -2672,17 +2962,28 @@ static int mtk_dp_register_phy(struct mtk_dp *mtk_dp)
>  {
>  	struct device *dev = mtk_dp->dev;
>  
> -	mtk_dp->phy_dev = platform_device_register_data(dev, "mediatek-dp-phy",
> -							PLATFORM_DEVID_AUTO,
> -							&mtk_dp->regs,
> -							sizeof(struct regmap *));
> +	if (mtk_dp->phy_regs)
> +		mtk_dp->phy_dev = platform_device_register_data(dev,
> +					"mediatek-edp-phy",
> +					PLATFORM_DEVID_AUTO,
> +					&mtk_dp->phy_regs,
> +					sizeof(struct regmap *));
> +	else
> +		mtk_dp->phy_dev = platform_device_register_data(dev,
> +					"mediatek-dp-phy",
> +					PLATFORM_DEVID_AUTO,
> +					&mtk_dp->regs,
> +					sizeof(struct regmap *));
>  	if (IS_ERR(mtk_dp->phy_dev))
>  		return dev_err_probe(dev, PTR_ERR(mtk_dp->phy_dev),
>  				     "Failed to create device mediatek-dp-phy\n");
>  
>  	mtk_dp_get_calibration_data(mtk_dp);
>  
> -	mtk_dp->phy = devm_phy_get(&mtk_dp->phy_dev->dev, "dp");
> +	if (mtk_dp->data->edp_ver)
> +		mtk_dp->phy = devm_phy_get(&mtk_dp->phy_dev->dev, "edp");
> +	else
> +		mtk_dp->phy = devm_phy_get(&mtk_dp->phy_dev->dev, "dp");
>  	if (IS_ERR(mtk_dp->phy)) {
>  		platform_device_unregister(mtk_dp->phy_dev);
>  		return dev_err_probe(dev, PTR_ERR(mtk_dp->phy), "Failed to get phy\n");
> @@ -2770,6 +3071,20 @@ static int mtk_dp_probe(struct platform_device *pdev)
>  	mtk_dp->aux.wait_hpd_asserted = mtk_dp_wait_hpd_asserted;
>  	drm_dp_aux_init(&mtk_dp->aux);
>  
> +	mtk_dp->power_clk = devm_clk_get_optional(dev, NULL);

In binding document, it does not define clk, so drop this.
If you want to use it, define it in binding document first.

Regards,
CK

> +	if (IS_ERR(mtk_dp->power_clk)) {
> +		dev_info(dev, "Failed to get optional clock power_clk\n");
> +		mtk_dp->power_clk = NULL;
> +	}
> +
> +	if (mtk_dp->power_clk)
> +		clk_prepare_enable(mtk_dp->power_clk);
> +
> +	pm_runtime_enable(dev);
> +	pm_runtime_get_sync(dev);
> +	if (mtk_dp->pwr_regs)
> +		mtk_edp_pm_ctl(mtk_dp, true);
> +
>  	platform_set_drvdata(pdev, mtk_dp);
>  
>  	if (mtk_dp->data->audio_supported) {
> @@ -2795,10 +3110,13 @@ static int mtk_dp_probe(struct platform_device *pdev)
>  		 * properly close the eDP port to avoid stalls and then
>  		 * reinitialize, reset and power on the AUX block.
>  		 */
> -		mtk_dp_set_idle_pattern(mtk_dp, true);
> -		mtk_dp_initialize_aux_settings(mtk_dp);
> -		mtk_dp_power_enable(mtk_dp);
> -
> +		if (mtk_dp->data->edp_ver) {
> +			mtk_dp_poweron(mtk_dp);
> +		} else {
> +			mtk_dp_set_idle_pattern(mtk_dp, true);
> +			mtk_dp_initialize_aux_settings(mtk_dp);
> +			mtk_dp_power_enable(mtk_dp);
> +		}
>  		/* Disable HW interrupts: we don't need any for eDP */
>  		mtk_dp_hwirq_enable(mtk_dp, false);
>  
> @@ -2835,8 +3153,8 @@ static int mtk_dp_probe(struct platform_device *pdev)
>  			return dev_err_probe(dev, ret, "Failed to add bridge\n");
>  	}
>  
> -	pm_runtime_enable(dev);
> -	pm_runtime_get_sync(dev);
> +	dev_dbg(dev, "%s power.usage_count %d\n",
> +		__func__, atomic_read(&dev->power.usage_count));
>  
>  	return 0;
>  }
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
