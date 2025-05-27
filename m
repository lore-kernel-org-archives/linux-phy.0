Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3516C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 06:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HoIHqU2K6D5QZaDs59+W4YZNg6FhJrMkNYadkWcsHUY=; b=k8A371+q/dgpZX
	WLWOSzP69rleHA4O14Wl2vIQddyMij0hyjlusOFIMAYKLmc/lV11ELKbG6HgBDDQn3aiw7bYxD8oc
	rxOgOFGaTD9CJU/j8QIgkslRol5NATKnk/C9UfVTkXXgFU1SugN9BNIhJHs9EY1dYNiH+ko3pdttK
	5fxU1ZYEcL74w/ncSCbj7aNLI26WIQmTdN5HtBNa2rVvsB6WyVz34mhmFQrY7xpBNrn2wUOD7rYiG
	rFFcjGcqGd+Lq2+gRrAd1KH20minL7+eLAuSUj+B7eHqqteEIJFDz7edmJQw3G2k7ePxgCByR1mKh
	4katCWbhhqdpszA83a6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnln-0000000A1lY-1UsQ;
	Tue, 27 May 2025 06:26:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnjf-0000000A1VD-1Fmp;
	Tue, 27 May 2025 06:24:28 +0000
X-UUID: 39b9dbaa3ac311f0bed96b30c12bc3d6-20250526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=3cM4LmUIjE/au/yOfxgs1xKn4xqI4VyF+ZSXV9+QmR0=;
	b=NcFpvHVcjr/j/OWl4C8sUQ41/SfTuL/+8hA/IiA+H4zBWTjSYQiZQOi6uLIK+W1TOZ6rggD3YQUv9dPFA8Ala/IU/HkKQa9CpICeHqCHiiYDK8MfyolQiq4cOuOOixT8rOwXLJW4R3bz+cNmeYuQxnoe1JTDzl6gEk5K5PaaHC8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:db68e66d-6f94-41dd-a9d0-3367a79e2f21,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:721f0458-abad-4ac2-9923-3af0a8a9a079,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111,TC:nil,Conte
	nt:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
	OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 39b9dbaa3ac311f0bed96b30c12bc3d6-20250526
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1489333263; Mon, 26 May 2025 23:24:20 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Tue, 27 May 2025 14:24:16 +0800
Received: from SEYPR02CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Tue, 27 May 2025 14:24:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e0tYVkW6bKIB8RoxEWYw7JnqrlBjzgNdfcJ/q4vFhNt325/kdYRkur9O6bWsJRzL0vm8cDdpV7ajUmIQYhbevdFfAiO5UkrZ0arNz9so+OokZaumpqhJqA6VELO0I80MFg0jKzR6CvBBuoBTWOllwriMEhKrjC0d70xfMD6Ys2mR54vmtIx30utQeI98+UEAuHwVptNO6IazjEm0a7xDbeWwbS/01is0x7nsMt0AcSZd5KCu3mHKfu3vuSkVuXn/ePdnmAnKo6kKLn1kfTB7AWvrLO+k/CX5rSpQzwOYp80kGUosuGsYPyPW/bNxei3KEvspSBC+OEoXI5pithAswg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3cM4LmUIjE/au/yOfxgs1xKn4xqI4VyF+ZSXV9+QmR0=;
 b=MtxqpabQ5TIzzr2P7ai2N+kAluXIQ6pP5vzROk9c6oR7h7dT7cBfnmnTs0mDrvy2hHQY9tFRHTqnOaOHFD6fzuR+4bt+m4CSzsRM0bN6V+qG0rQcS9i5Qxl6HDmzev5Wt1jB39ZIeyG1nBOeyliXlpyDxSRG/lIikoXHL4jwkVzBRGSvZsEWgHIOjgfceBFG+huP3K5gKPwtImvMFbkdAJrYYcc4ERdemu0cOFjKnWoSv7sTYujSCAAmzuUSGSxSGwVwU/lbehClrWadZQhgLpFHMg3CG5knjwF5HaKVI+Kvm/TXvbJ9bhPIz9WMVnVWLhkZ7+WcS3x30MAskjnCiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3cM4LmUIjE/au/yOfxgs1xKn4xqI4VyF+ZSXV9+QmR0=;
 b=Nh0lngo5Un7AWRTtzkTTPkwUesUHdj4ftH9ucQBqPkPkafNUZy+EHvRzLuLJ8LbR2kGuFaDbhi6yuSgxtT8dwVnUn9tEBTJLoAG0Mm2Azug2vC4UcpzPeD8OtPfcVjSKaL02K6d8JIZ9OGE8OrjBq2BbArxoxYCO3v/p1dz277U=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TY2PPF3F042E221.apcprd03.prod.outlook.com (2603:1096:408::9cf) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Tue, 27 May
 2025 06:24:15 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%5]) with mapi id 15.20.8769.021; Tue, 27 May 2025
 06:24:14 +0000
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
Subject: Re: [PATCH 3/5] drm/mediatek: Add dvo driver for mt8196
Thread-Topic: [PATCH 3/5] drm/mediatek: Add dvo driver for mt8196
Thread-Index: AQHbsC61iefhCaZ2M0uKd4+um00+E7PmP44A
Date: Tue, 27 May 2025 06:24:13 +0000
Message-ID: <e272210e5bcaf073fbbf4f1779c76d6f7a978d82.camel@mediatek.com>
References: <20250418065313.8972-1-bincai.liu@mediatek.com>
	 <20250418065313.8972-4-bincai.liu@mediatek.com>
In-Reply-To: <20250418065313.8972-4-bincai.liu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TY2PPF3F042E221:EE_
x-ms-office365-filtering-correlation-id: 0ce0b003-0f9f-4490-9de1-08dd9ce719c5
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?d01mRXZYblBiSHRoK251NjE4MHJ5Z2hUQUhLS1IrbFVxTlV5c3Y0UlJPSzFX?=
 =?utf-8?B?UDgzWlFQZW1sYVRHbHhYNW5GeVNqUEpZc1RjWVl5SXAwYTd4b21hQTcrWTho?=
 =?utf-8?B?UUh5eVpnKzN4T3FXSjNzMFRPZm85SlQweWprVjU5UWZWNGFZdy9yeHllaEtF?=
 =?utf-8?B?dVlhSnhlVkZKSUtyMVE1d2owb29jYzFxUEtsamdUUkNmWXFSek5xV2NNUSta?=
 =?utf-8?B?b2NnamlHSzZBR0xlajlKTGwzOHljQVFWN3lkSXprdlk4YkxMZUpVblRoSXNZ?=
 =?utf-8?B?U0JFQmgwZWNZVWZPRWtLKzN6R0E0ZTBYcjBGQjQ3NloxTEZNa1o5Q1RJRDh4?=
 =?utf-8?B?eWQ1a3M1OG9DVmhqeTJkNGRkSkRZRG84VUdYS0szc0p1ZDh2WXRtNzBxc1li?=
 =?utf-8?B?cC9zTGYydFNybytVQ3hmbzBPYzVmRDE5VVZVTjRkNzlGNWM2M29xaklsbFpm?=
 =?utf-8?B?R2l1T2NVVFlENlZNSHBNMjdoVm5rK2phdEIvUkZnVWpuRC9VeFpnb1hSejlI?=
 =?utf-8?B?U0NXVDlrQ2Q4bTJOYlE1ZkxtcXpqby9qUjEzNWV2SXdya1hPaCtoeEFOenVj?=
 =?utf-8?B?eWtaZlVJZGR1bkVJWHIyam9MVkxOQnRxMzJvYmJETUVwUjY3aFhnRjYxUi9J?=
 =?utf-8?B?eTNRMnNheS9ESStYUG4zaW5hNHJobHAwL2h0bzl5RWJSbUo1OEZ3SHNKUjlM?=
 =?utf-8?B?eUlwSUtoRVdvSXpBNmFSUWkrR1RzSFJ3QTRBbGlQUFBzUzlEQUowbWtXYzBC?=
 =?utf-8?B?NU5XdklmNWJCMnFuU3JaTWl4QXFta0JURndDcFJGZnFZMVBXNkRYV2dEYXlr?=
 =?utf-8?B?M1hiVk84RktIMEk0dW5wVU9QTFgwQUJNejF6bmZtR2MzUzBLQzA1aGw4SFRL?=
 =?utf-8?B?aGpHa014aTAyb1U3eExSUUsrbEVxelNIYnUzeUpkRDhtMmlHeXA4Zk13Z2VF?=
 =?utf-8?B?V2pNRmMrcm9LNzZFVkdKaDk2aDRWcG1LOCtndVVhWmxpUXhGTUQ5MEtsVXFY?=
 =?utf-8?B?UlU4WE81M1gxZklkSUdJb0NxNGh3eXJ3Q2cyNzdtNVp2aGh2dXJ5UkRlRm0z?=
 =?utf-8?B?R1p1dzBTVk9YQUxxb2RVN284YWtuSzZsUWJyWmhTQnZtVFJlSXRIWXBNZUxs?=
 =?utf-8?B?R2VCTktiR1BQc0lPTTRVQ0dFRnFRak8vbCttczZGWWFHdkErSDhhNHFEQXFz?=
 =?utf-8?B?ODRQeDFQV0RmbWtDbm5EeDd1b0srQW9LOEZadmljUjkxV256MVl6bUhkUTFh?=
 =?utf-8?B?Si85aXRjRU1PR3RwZFM5c2R1amx6S1N6cnM2KzJySG1OZGhIV2cvMUdKWFg3?=
 =?utf-8?B?TVNWRzFuYTArRUxCNVpQZUkwOGREbkVpMWdYWVFhRUpmZmNDVHBLWXJncHFi?=
 =?utf-8?B?S254RW15ZTdJNVZTSU84Y1FMK2t5SDB6TTdwN3Y1MFViR0k2OVJvL3k4RGpv?=
 =?utf-8?B?eEMyU241SVd2UDdWN0tGOUVacTdTNTVvS1c3QkpsbDdIaWswNEFqNlhuUTlj?=
 =?utf-8?B?WkJHU0tsbzZteGFQbll2Q2Z5dmFxbFJSVnhTMTNpbUhhbkc3RGxBTUQ3UlZS?=
 =?utf-8?B?ZXN5WmMxbGlXQlZxVS9MUHM4SzJDZkxOQVMvV2gxMVRqMGtUK1lvNEFJZk5i?=
 =?utf-8?B?VTFNZm5tNy9sd1plRlF5ZGdSdzUzY2huNkFqNDF3djhDSGYxUU1qT2ZMNkkw?=
 =?utf-8?B?c0VtdWF2TVFWNFJHMkI1RHJCVzFSZEZFYWV6ZE5YV2ppdkxZZm9pMGxmZkM2?=
 =?utf-8?B?QVkyU01JOE1zTkRQb1FhZW5oMW1PUk5vNjBMMU5XYjFaQ1d4Uk5wK1J2MzJS?=
 =?utf-8?B?bnp6eWxBY0VoblN4Z1JuYWpNcW1qbTFhc1BTZ3hoSnNEV2ZaZ0xUUkdFQ3k4?=
 =?utf-8?B?WkJHenVyUkRmK3NjampyT3FYZmdEUE4zTGtmVDgwNEVDWUlMeGRZOE4rN1lQ?=
 =?utf-8?B?Z2xUcWhxOGlqamJmbEk2Z3MxZ1RlaXVsaWh1Z1JDR2pEcnJmK3lnc2J1RUlw?=
 =?utf-8?Q?3kAJGWXAMZJW+sWmiHvEdMr6kgfYo4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXhuM2RQRW90YjEveU93UWhUVEpGa2RldEZ2eXllc2Fvc0xRUmZHWisxUjBk?=
 =?utf-8?B?OE5UVnJmTHVIa29QY1gyNUlidFNabk10V3NVM1ZwZTYrSm5ucm9FbkFNMVV1?=
 =?utf-8?B?VWpoL05aRFVIMjRySnNxN04wLzRkSWhLcEd5d3hJU0lzOVVYTldGOEVGWmcv?=
 =?utf-8?B?dWRPdTNMTGZsYlJaQmdkb0NNZUFiL0xkWHlIa1VrcVY0YkpZTndQRDVSNnU5?=
 =?utf-8?B?cVlFbWZaVHdmdlN2NDdqZzN5aHZyY0JHYmp6ZGZIZnV4NUJCTUVOSGp0NVdw?=
 =?utf-8?B?bW1KakdZNXQ4QzUrZWxZY29CRWcxQmtWNUxSTmNha1FjYzcyY0F5Wm80UTJ6?=
 =?utf-8?B?RUc4cUMyRWgwK1J1VkpzbmszVk5vQWY4TVlXMTh5Rk9keUdBMVRncU5RNUpS?=
 =?utf-8?B?OFpiNXdTVDZ6a1dTOFQwYWQvUmlEbjBnaVdaZzgvTTl6ZkRtZ2Q4UUdNVDQ1?=
 =?utf-8?B?ek1ROWE5dlhxOEZPTSs5d0F6bXB2L2xsUkFlVG53RmdnOEcvRTlRTldFejhk?=
 =?utf-8?B?NXZldHpvWkE5bHBxaXlyWEs3Z0UybEFpVTE2NFF2S3FRR3d6VlNBVDBTNG05?=
 =?utf-8?B?Q1RSWExtNUJRT0pmb095Q0g1ZXU1elc4ZkQwdStIc3V2VXZRMjZxV1ZUOU1z?=
 =?utf-8?B?QmJhTlkzVGZoTUg2ZzNqSkErOGY3MWtlWW50ZXpkOERSMXhoaXJjVjZpZWFl?=
 =?utf-8?B?bmZqeHorbEpHemY1dEtHamxrN1UrL3E5RTB5UTFuckxic3Q5anFiWWZSMzlF?=
 =?utf-8?B?cHF3cU9ocEh5RXZpRGhWZmRtcjB3WDBJSUZraWZDQTVnRGM4SDk0YXdoTGVz?=
 =?utf-8?B?Q1doZ21JWnlmOXBVU1hsWFFZZUh1QzJjTDVmbTl4UzEwb0UvL3FmckFOWmFI?=
 =?utf-8?B?VHFrVWttdFdGM05kY0ZDdkoxRityRDFCbDJhemRaK0pPcllRN0hrdXdPSnVW?=
 =?utf-8?B?MkRZWW1MeHdKUDZDd3RGQ0lLOTlXekpRdG16UUJlTTNVVytaSTUyVmNIc2dw?=
 =?utf-8?B?Qk9nVkhsb3VtZUsxb2d1Q1BzOTE4T1JheGgzQndJT0IrUEhpaVdEZXhjYnM1?=
 =?utf-8?B?RWpwZXdUQ1pScWdlWUdKZGYxMWV1bVpOV2hsYytrYVlDS1BLOXYxUjVwOWpJ?=
 =?utf-8?B?MEY4OGoxN2FiREV0YTZSeWJ3L0pBNjlIV3UxUGFyQS9ydjZDL0owbE4xMm1v?=
 =?utf-8?B?MkU2bU5BdVBvVGE0L0VOM1BGeVZCaUttRUlaandUMExZaTZZamNJTzV3cmI2?=
 =?utf-8?B?SFFicXFOYUNKNm4xQWFmdlR4bHBIRWVGMTN2NE0rMTQ3Tm5LZ1YzRHpmdXNq?=
 =?utf-8?B?Y3o1QkUwNGxUMzZUQ0w1bTJ1dFQ2TXJtL3Q2V3BreHVHNmYxamtXUjlkNXJN?=
 =?utf-8?B?WW52Nmt2MEFyNG8rL1B3cWFUazliZFBzdktpYmY5cXVFL2hUYjhkTmpmR2p2?=
 =?utf-8?B?c3J5c1RTNm11SGxNWXpwYzJpVklJa0FjZWxHcks0Tm85V1NXaVIwNDIvK09v?=
 =?utf-8?B?cDB2TUtRTXZNaVZjOVJxVkRDWFQzQ3E1MGRXbkgvRkdtUGxuQWtaeURyYTFa?=
 =?utf-8?B?STdQUnkwUi9uSnZmSlpuam81bzRsbkF1eHNQck5KU0hyR0Q0WHF6WGFidGVU?=
 =?utf-8?B?b3RMSFpwd0tmZ0hPazllNHV6dzc3Sms5UUV1UGMyOVgvUEtlYVNNRG0rb3pY?=
 =?utf-8?B?ZlBxSmI1alN1VGMyeWtPMTMxMEswUE1NQmg4K3gzOXkraHcwSS80N2VhUFlG?=
 =?utf-8?B?SElnaTY4aHU0TlVIUEc5TGRnUnBZSzJ0TmhGWFliV0FZMlNtWmJ6TFlrZU54?=
 =?utf-8?B?aDFrZDhMWnJCdFBmSHVrMXVYWWZKdUtwak82K2VicDZrMkRZa3lMMUlrTVVX?=
 =?utf-8?B?UFVwT01Hc04zQUE1S3BpU1daL3BsT0tWMXRjczF6V0czSHgzSktjWXBQend3?=
 =?utf-8?B?bExKYUlZS2RKZUxRV09YcklMcEo1MTczTU1RRzg4WGM5S0dyR0Jyb0xnL0RK?=
 =?utf-8?B?SHpidzRXMit2bjNxZnBDNmxXUE5pNVhmTUsrcnUxL3hBa2VtMWRwRldCS3NG?=
 =?utf-8?B?ZVR6alVNcVQxWkdhNGZyQmxsNXZWRVVqYyszTXJRcjhCTE5aVEt5Q0x2UjFN?=
 =?utf-8?Q?AfZKKMWTgPZGkz/coIVjXUMBN?=
Content-ID: <A2BE5934FA4FDC41B08EF7E44A306B8F@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ce0b003-0f9f-4490-9de1-08dd9ce719c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 06:24:13.9883
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ThZFlcKS4I2i37VfhV978C867mD4MMKq2XJ+CHPkuwykbgRLKMzvI42znil7zobobN9VdWNVPvg7xjG3d8Rxcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PPF3F042E221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232427_362953_D5AD1430 
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
> Add code to support dvo for mt8196.

Say something about dvo.
I don't know what is dvo.

> 
> Signed-off-by: Bincai Liu <bincai.liu@mediatek.com>
> ---

[snip]

>  
> +enum mtk_dpi_golden_setting_level {
> +	MTK_DPI_FHD_60FPS_1920 = 0,
> +	MTK_DPI_FHD_60FPS_2180,
> +	MTK_DPI_FHD_60FPS_2400,
> +	MTK_DPI_FHD_60FPS_2520,
> +	MTK_DPI_FHD_90FPS,
> +	MTK_DPI_FHD_120FPS,
> +	MTK_DPI_WQHD_60FPS,
> +	MTK_DPI_WQHD_120FPS,
> +	MTK_DPI_8K_30FPS,
> +	MTK_DPI_GSL_MAX,
> +};
> +
> +enum mtk_dpi_type {
> +	MTK_DISP_DPI = 0,
> +	MTK_DSIP_DVO,
> +};
> +
> +struct mtk_dpi_gs_info {
> +	u32 dpi_buf_sodi_high;
> +	u32 dpi_buf_sodi_low;
> +};
> +
>  struct mtk_dpi {
>  	struct drm_encoder encoder;
>  	struct drm_bridge bridge;
> @@ -73,6 +96,7 @@ struct mtk_dpi {
>  	struct clk *engine_clk;
>  	struct clk *pixel_clk;
>  	struct clk *tvd_clk;
> +	struct clk *hf_fdpi_clk;
>  	int irq;
>  	struct drm_display_mode mode;
>  	const struct mtk_dpi_conf *conf;
> @@ -85,6 +109,7 @@ struct mtk_dpi {
>  	struct pinctrl_state *pins_dpi;
>  	u32 output_fmt;
>  	int refcount;
> +	enum mtk_dpi_golden_setting_level gs_level;

Drop this.

>  };
>  
>  static inline struct mtk_dpi *bridge_to_dpi(struct drm_bridge *b)
> @@ -171,6 +196,13 @@ struct mtk_dpi_conf {
>  	bool edge_cfg_in_mmsys;
>  	bool clocked_by_hdmi;
>  	bool output_1pixel;
> +	u32 out_np_sel;

Drop this.

> +	u8 dpi_ver;
> +};
> +
> +static struct mtk_dpi_gs_info mtk_dpi_gs[MTK_DPI_GSL_MAX] = {
> +	[MTK_DPI_FHD_60FPS_1920] = {6880, 511},
> +	[MTK_DPI_8K_30FPS] = {5255, 3899},
>  };

Drop this.

>  
>  static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
> @@ -208,6 +240,86 @@ static void mtk_dpi_disable(struct mtk_dpi *dpi)
>  	mtk_dpi_mask(dpi, DPI_EN, 0, EN);
>  }
>  
> +static void mtk_dpi_irq_enable(struct mtk_dpi *dpi)
> +{
> +	mtk_dpi_mask(dpi, DPI_INTEN, INT_VDE_END_EN, INT_VDE_END_EN);
> +}
> +
> +static void mtk_dpi_info_queue_start(struct mtk_dpi *dpi)
> +{
> +	mtk_dpi_mask(dpi, DPI_TGEN_INFOQ_LATENCY, 0,
> +		     INFOQ_START_LATENCY_MASK | INFOQ_END_LATENCY_MASK);
> +}
> +
> +static void mtk_dpi_buffer_ctrl(struct mtk_dpi *dpi)
> +{
> +	mtk_dpi_mask(dpi, DPI_BUF_CON0, DISP_BUF_EN, DISP_BUF_EN);
> +	mtk_dpi_mask(dpi, DPI_BUF_CON0, FIFO_UNDERFLOW_DONE_BLOCK, FIFO_UNDERFLOW_DONE_BLOCK);
> +}
> +
> +static void mtk_dpi_trailing_blank_setting(struct mtk_dpi *dpi)
> +{
> +	mtk_dpi_mask(dpi, DPI_TGEN_V_LAST_TRAILING_BLANK, 0x20, V_LAST_TRAILING_BLANK_MASK);
> +	mtk_dpi_mask(dpi, DPI_TGEN_OUTPUT_DELAY_LINE, 0x20, EXT_TG_DLY_LINE_MASK);
> +}
> +
> +static void mtk_dpi_get_gs_level(struct mtk_dpi *dpi)
> +{
> +	struct drm_display_mode *mode = &dpi->mode;
> +	enum mtk_dpi_golden_setting_level *gsl = &dpi->gs_level;
> +
> +	if (mode->hdisplay == 1920 && mode->vdisplay == 1080)
> +		*gsl = MTK_DPI_FHD_60FPS_1920;
> +	else
> +		*gsl = MTK_DPI_8K_30FPS;
> +}

Drop this function.

> +
> +static void mtk_dpi_golden_setting(struct mtk_dpi *dpi)

Change the function name to mtk_dpi_sod()

> +{
> +	struct mtk_dpi_gs_info *gs_info = NULL;
> +
> +	if (dpi->gs_level >= MTK_DPI_GSL_MAX) {
> +		dev_info(dpi->dev, "%s invalid gs_level %d\n",
> +			 __func__, dpi->gs_level);
> +		return;
> +	}
> +
> +	gs_info = &mtk_dpi_gs[dpi->gs_level];
> +
> +	mtk_dpi_mask(dpi, DPI_BUF_SODI_HIGHT, gs_info->dpi_buf_sodi_high, GENMASK(31, 0));
> +	mtk_dpi_mask(dpi, DPI_BUF_SODI_LOW, gs_info->dpi_buf_sodi_low, GENMASK(31, 0));

The golden setting has only two case, so drop the golden setting array.

	struct drm_display_mode *mode = &dpi->mode;

if (mode->hdisplay == 1920 && mode->vdisplay == 1080) {
	mtk_dpi_mask(dpi, DPI_BUF_SODI_HIGHT, 6880, GENMASK(31, 0));
	mtk_dpi_mask(dpi, DPI_BUF_SODI_LOW, 511, GENMASK(31, 0));
} else {
	mtk_dpi_mask(dpi, DPI_BUF_SODI_HIGHT, 5255, GENMASK(31, 0));
	mtk_dpi_mask(dpi, DPI_BUF_SODI_LOW, 3899, GENMASK(31, 0));
}

> +}
> +
> +static void mtk_dpi_shadow_ctrl(struct mtk_dpi *dpi)
> +{
> +	mtk_dpi_mask(dpi, DPI_SHADOW_CTRL, 0, BYPASS_SHADOW);
> +	mtk_dpi_mask(dpi, DPI_SHADOW_CTRL, FORCE_COMMIT, FORCE_COMMIT);
> +}
> +
> +static void mtk_dpi_config_timing(struct mtk_dpi *dpi,
> +				 struct mtk_dpi_sync_param *hsync,
> +				 struct mtk_dpi_sync_param *vsync)
> +{
> +	mtk_dpi_mask(dpi, DPI_TGEN_H0,
> +		     hsync->sync_width << HSYNC,
> +		     dpi->conf->dimension_mask << HSYNC);
> +	mtk_dpi_mask(dpi, DPI_TGEN_H0,
> +		     hsync->front_porch << DPI_HFP,
> +		     dpi->conf->dimension_mask << DPI_HFP);
> +	mtk_dpi_mask(dpi, DPI_TGEN_H1,
> +		     (hsync->back_porch + hsync->sync_width) << HSYNC2ACT,
> +		     dpi->conf->dimension_mask << HSYNC2ACT);
> +	mtk_dpi_mask(dpi, DPI_TGEN_V0,
> +		     vsync->sync_width << VSYNC,
> +		     dpi->conf->dimension_mask << VSYNC);
> +	mtk_dpi_mask(dpi, DPI_TGEN_V0,
> +		     vsync->front_porch << VFP,
> +		     dpi->conf->dimension_mask << VFP);
> +	mtk_dpi_mask(dpi, DPI_TGEN_V1,
> +		     (vsync->back_porch + vsync->sync_width) << VSYNC2ACT,
> +		     dpi->conf->dimension_mask << VSYNC2ACT);
> +}
> +
>  static void mtk_dpi_config_hsync(struct mtk_dpi *dpi,
>  				 struct mtk_dpi_sync_param *sync)
>  {
> @@ -296,10 +408,27 @@ static void mtk_dpi_config_interface(struct mtk_dpi *dpi, bool inter)
>  
>  static void mtk_dpi_config_fb_size(struct mtk_dpi *dpi, u32 width, u32 height)
>  {
> -	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE,
> -		     dpi->conf->hvsize_mask << HSIZE);
> -	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE,
> -		     dpi->conf->hvsize_mask << VSIZE);
> +	if (dpi->conf->dpi_ver == MTK_DSIP_DVO) {
> +		mtk_dpi_mask(dpi, DPI_SRC_SIZE, width << SRC_HSIZE,
> +			dpi->conf->hvsize_mask << SRC_HSIZE);
> +		mtk_dpi_mask(dpi, DPI_SRC_SIZE, height << SRC_VSIZE,
> +			dpi->conf->hvsize_mask << SRC_VSIZE);
> +
> +		mtk_dpi_mask(dpi, DPI_PIC_SIZE, width << PIC_HSIZE,
> +			dpi->conf->hvsize_mask << PIC_HSIZE);
> +		mtk_dpi_mask(dpi, DPI_PIC_SIZE, height << PIC_VSIZE,
> +			dpi->conf->hvsize_mask << PIC_VSIZE);
> +
> +		mtk_dpi_mask(dpi, DPI_TGEN_H1, (width / dpi->conf->pixels_per_iter) << HACT,
> +			dpi->conf->hvsize_mask << HACT);
> +		mtk_dpi_mask(dpi, DPI_TGEN_V1, height << VACT,
> +			dpi->conf->hvsize_mask << VACT);
> +	} else {
> +		mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE,
> +			dpi->conf->hvsize_mask << HSIZE);
> +		mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE,
> +			dpi->conf->hvsize_mask << VSIZE);
> +	}
>  }
>  
>  static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi)
> @@ -501,6 +630,7 @@ static void mtk_dpi_power_off(struct mtk_dpi *dpi)
>  	clk_disable_unprepare(dpi->pixel_clk);
>  	clk_disable_unprepare(dpi->tvd_clk);
>  	clk_disable_unprepare(dpi->engine_clk);
> +	clk_disable_unprepare(dpi->hf_fdpi_clk);
>  }
>  
>  static int mtk_dpi_power_on(struct mtk_dpi *dpi)
> @@ -528,8 +658,16 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
>  		goto err_pixel;
>  	}
>  
> +	ret = clk_prepare_enable(dpi->hf_fdpi_clk);
> +	if (ret) {
> +		dev_err(dpi->dev, "Failed to enable hf_fdpi_clk clock: %d\n", ret);
> +		goto err_hf_fdpi_clk;
> +	}
> +
>  	return 0;
>  
> +err_hf_fdpi_clk:
> +	clk_disable_unprepare(dpi->hf_fdpi_clk);

You fail to prepare enable dpi->hf_fdpi_clk,
so you don't need to disable unprepare it.

clk_disable_unprepare(dpi->pixel_clk);

>  err_pixel:
>  	clk_disable_unprepare(dpi->tvd_clk);
>  err_engine:
> @@ -610,7 +748,6 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
>  			    MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
>  	dpi_pol.vsync_pol = vm.flags & DISPLAY_FLAGS_VSYNC_HIGH ?
>  			    MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
> -
>  	/*
>  	 * Depending on the IP version, we may output a different amount of
>  	 * pixels for each iteration: divide the clock by this number and
> @@ -643,14 +780,18 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
>  	}
>  	mtk_dpi_sw_reset(dpi, true);
>  	mtk_dpi_config_pol(dpi, &dpi_pol);
> +	if (dpi->conf->dpi_ver == MTK_DSIP_DVO) {
> +		mtk_dpi_irq_enable(dpi);

This driver has no irq handler, so drop this.

> +		mtk_dpi_config_timing(dpi, &hsync, &vsync_lodd);
> +	} else {
> +		mtk_dpi_config_hsync(dpi, &hsync);
> +		mtk_dpi_config_vsync_lodd(dpi, &vsync_lodd);
> +		mtk_dpi_config_vsync_rodd(dpi, &vsync_rodd);
> +		mtk_dpi_config_vsync_leven(dpi, &vsync_leven);
> +		mtk_dpi_config_vsync_reven(dpi, &vsync_reven);
> +		mtk_dpi_config_3d(dpi, !!(mode->flags & DRM_MODE_FLAG_3D_MASK));
> +	}
>  
> -	mtk_dpi_config_hsync(dpi, &hsync);
> -	mtk_dpi_config_vsync_lodd(dpi, &vsync_lodd);
> -	mtk_dpi_config_vsync_rodd(dpi, &vsync_rodd);
> -	mtk_dpi_config_vsync_leven(dpi, &vsync_leven);
> -	mtk_dpi_config_vsync_reven(dpi, &vsync_reven);
> -
> -	mtk_dpi_config_3d(dpi, !!(mode->flags & DRM_MODE_FLAG_3D_MASK));
>  	mtk_dpi_config_interface(dpi, !!(vm.flags &
>  					 DISPLAY_FLAGS_INTERLACED));
>  	if (vm.flags & DISPLAY_FLAGS_INTERLACED)
> @@ -658,26 +799,41 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
>  	else
>  		mtk_dpi_config_fb_size(dpi, vm.hactive, vm.vactive);
>  
> -	mtk_dpi_config_channel_limit(dpi);
> -	mtk_dpi_config_bit_num(dpi, dpi->bit_num);
> -	mtk_dpi_config_channel_swap(dpi, dpi->channel_swap);
> -	mtk_dpi_config_color_format(dpi, dpi->color_format);
> -	if (dpi->conf->support_direct_pin) {
> -		mtk_dpi_config_yc_map(dpi, dpi->yc_map);
> -		mtk_dpi_config_2n_h_fre(dpi);
> -
> -		/* DPI can connect to either an external bridge or the internal HDMI encoder */
> -		if (dpi->conf->output_1pixel)
> -			mtk_dpi_mask(dpi, DPI_CON, DPI_OUTPUT_1T1P_EN, DPI_OUTPUT_1T1P_EN);
> -		else
> -			mtk_dpi_dual_edge(dpi);
> -
> -		mtk_dpi_config_disable_edge(dpi);
> -	}
> -	if (dpi->conf->input_2p_en_bit) {
> -		mtk_dpi_mask(dpi, DPI_CON, dpi->conf->input_2p_en_bit,
> -			     dpi->conf->input_2p_en_bit);
> +	if (dpi->conf->dpi_ver == MTK_DSIP_DVO) {
> +		mtk_dpi_info_queue_start(dpi);
> +		mtk_dpi_buffer_ctrl(dpi);
> +		mtk_dpi_trailing_blank_setting(dpi);
> +		mtk_dpi_get_gs_level(dpi);
> +		mtk_dpi_golden_setting(dpi);
> +		mtk_dpi_shadow_ctrl(dpi);
> +		mtk_dpi_mask(dpi, DPI_OUTPUT_SET, dpi->conf->out_np_sel, OUT_NP_SEL);

Up to now, only mt8196 dvo set DPI_OUTPUT_SET, so it's not necessary to have a private data to store out_np_sel.

#define DPI_OUTPUT_SET		0x18
#define DPI_OUTPUT_SET_XXX		2
#define OUT_NP_SEL			GENMASK(1, 0)

mtk_dpi_mask(dpi, DPI_OUTPUT_SET, DPI_OUTPUT_SET_XXX, OUT_NP_SEL);

> +	} else {
> +		mtk_dpi_config_channel_limit(dpi);
> +		mtk_dpi_config_bit_num(dpi, dpi->bit_num);
> +		mtk_dpi_config_channel_swap(dpi, dpi->channel_swap);
> +		mtk_dpi_config_color_format(dpi, dpi->color_format);
> +		if (dpi->conf->support_direct_pin) {
> +			mtk_dpi_config_yc_map(dpi, dpi->yc_map);
> +			mtk_dpi_config_2n_h_fre(dpi);
> +
> +			/*
> +			 * DPI can connect to either an external bridge
> +			 * or the internal HDMI encoder
> +			 */
> +			if (dpi->conf->output_1pixel)
> +				mtk_dpi_mask(dpi, DPI_CON,
> +						  DPI_OUTPUT_1T1P_EN, DPI_OUTPUT_1T1P_EN);
> +			else
> +				mtk_dpi_dual_edge(dpi);
> +
> +			mtk_dpi_config_disable_edge(dpi);
> +		}
> +		if (dpi->conf->input_2p_en_bit) {
> +			mtk_dpi_mask(dpi, DPI_CON, dpi->conf->input_2p_en_bit,
> +				dpi->conf->input_2p_en_bit);
> +		}
>  	}
> +
>  	mtk_dpi_sw_reset(dpi, false);
>  
>  	return 0;
> @@ -700,7 +856,7 @@ static u32 *mtk_dpi_bridge_atomic_get_output_bus_fmts(struct drm_bridge *bridge,
>  	}
>  
>  	output_fmts = kcalloc(dpi->conf->num_output_fmts, sizeof(*output_fmts),
> -			     GFP_KERNEL);
> +			      GFP_KERNEL);

This is not related to the title. Separate this to a refinement patch.

>  	if (!output_fmts)
>  		return NULL;
>  
> @@ -1173,6 +1329,20 @@ static const struct mtk_dpi_conf mt8195_dpintf_conf = {
>  	.input_2p_en_bit = DPINTF_INPUT_2P_EN,
>  };
>  
> +static const struct mtk_dpi_conf mt8196_conf = {
> +	.dpi_factor = dpi_factor_mt8195_dp_intf,
> +	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8195_dp_intf),
> +	.out_np_sel = 0x2,
> +	.reg_h_fre_con = 0xb0,
> +	.max_clock_khz = 1330000,
> +	.output_fmts = mt8195_output_fmts,
> +	.num_output_fmts = ARRAY_SIZE(mt8195_output_fmts),
> +	.pixels_per_iter = 4,
> +	.dimension_mask = DPINTF_HPW_MASK,
> +	.hvsize_mask = PIC_HSIZE_MASK,
> +	.dpi_ver = MTK_DSIP_DVO,
> +};
> +
>  static int mtk_dpi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1227,6 +1397,11 @@ static int mtk_dpi_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(dpi->tvd_clk),
>  				     "Failed to get tvdpll clock\n");
>  
> +	dpi->hf_fdpi_clk = devm_clk_get_optional(dev, "hf_fdvo_clk");
> +	if (IS_ERR(dpi->hf_fdpi_clk))
> +		return dev_err_probe(dev, PTR_ERR(dpi->hf_fdpi_clk),
> +				     "Failed to get hf_fdpi_clk clock\n");
> +
>  	dpi->irq = platform_get_irq(pdev, 0);
>  	if (dpi->irq < 0)
>  		return dpi->irq;
> @@ -1262,6 +1437,7 @@ static const struct of_device_id mtk_dpi_of_ids[] = {
>  	{ .compatible = "mediatek,mt8192-dpi", .data = &mt8192_conf },
>  	{ .compatible = "mediatek,mt8195-dp-intf", .data = &mt8195_dpintf_conf },
>  	{ .compatible = "mediatek,mt8195-dpi", .data = &mt8195_conf },
> +	{ .compatible = "mediatek,mt8196-edp-dvo", .data = &mt8196_conf },
>  	{ /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, mtk_dpi_of_ids);
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
> index 23eeefce8fd2..3e2a64c2bca0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
> @@ -16,6 +16,7 @@
>  #define INT_VSYNC_EN			BIT(0)
>  #define INT_VDE_EN			BIT(1)
>  #define INT_UNDERFLOW_EN		BIT(2)
> +#define INT_VDE_END_EN			BIT(4)
>  
>  #define DPI_INTSTA		0x0C
>  #define INT_VSYNC_STA			BIT(0)
> @@ -240,6 +241,71 @@
>  #define MATRIX_SEL_RGB_TO_JPEG		0
>  #define MATRIX_SEL_RGB_TO_BT601		2
>  
> +#define DPI_TGEN_INFOQ_LATENCY	0x80
> +#define INFOQ_START_LATENCY		0
> +#define INFOQ_START_LATENCY_MASK	(0xffff << 0)
> +#define INFOQ_END_LATENCY		16
> +#define INFOQ_END_LATENCY_MASK		(0xffff << 16)
> +
> +#define DPI_BUF_CON0		0x220
> +#define DISP_BUF_EN			BIT(0)
> +#define FIFO_UNDERFLOW_DONE_BLOCK	BIT(4)
> +
> +#define DPI_TGEN_V_LAST_TRAILING_BLANK	0x6c
> +#define V_LAST_TRAILING_BLANK			0
> +#define V_LAST_TRAILING_BLANK_MASK		(0xffff << 0)
> +
> +#define DPI_TGEN_OUTPUT_DELAY_LINE	0x7c
> +#define EXT_TG_DLY_LINE				0
> +#define EXT_TG_DLY_LINE_MASK			(0xffff << 0)
> +
> +#define DPI_SHADOW_CTRL			0x190
> +#define FORCE_COMMIT				BIT(0)
> +#define BYPASS_SHADOW				BIT(1)
> +#define READ_WRK_REG				BIT(2)
> +
> +#define DPI_BUF_SODI_HIGHT		0x230
> +#define DPI_BUF_SODI_LOW		0x234
> +
> +#define DPI_OUTPUT_SET		0x18
> +#define OUT_NP_SEL			(0x3 << 0)
> +
> +#define DPI_SRC_SIZE		0x20
> +#define SRC_HSIZE			0
> +#define SRC_HSIZE_MASK			(0xffff << 0)
> +#define SRC_VSIZE			16
> +#define SRC_VSIZE_MASK			(0xffff << 16)
> +
> +#define DPI_PIC_SIZE		0x24
> +#define PIC_HSIZE			0
> +#define PIC_HSIZE_MASK			(0xffff << 0)
> +#define PIC_VSIZE			16
> +#define PIC_VSIZE_MASK			(0xffff << 16)
> +
> +#define DPI_TGEN_H0		0x50
> +#define DPI_HFP				0
> +#define DPI_HFP_MASK			(0xffff << 0)
> +#define HSYNC				16
> +#define HSYNC_MASK			(0xffff << 16)
> +
> +#define DPI_TGEN_H1		0x54
> +#define HSYNC2ACT			0
> +#define HSYNC2ACT_MASK			(0xffff << 0)
> +#define HACT				16
> +#define HACT_MASK			(0xffff << 16)
> +
> +#define DPI_TGEN_V0		0x58
> +#define VFP				0
> +#define VFP_MASK			(0xffff << 0)
> +#define VSYNC				16
> +#define VSYNC_MASK			(0xffff << 16)
> +
> +#define DPI_TGEN_V1		0x5c
> +#define VSYNC2ACT			0
> +#define VSYNC2ACT_MASK			(0xffff << 0)
> +#define VACT				16
> +#define VACT_MASK			(0xffff << 16)
> +
>  #define DPI_PATTERN0		0xf00
>  #define DPI_PAT_EN			BIT(0)
>  #define DPI_PAT_SEL			GENMASK(6, 4)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 74158b9d6503..870d97c023ed 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -830,6 +830,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>  	  .data = (void *)MTK_DSI },
>  	{ .compatible = "mediatek,mt8188-dsi",
>  	  .data = (void *)MTK_DSI },
> +	{ .compatible = "mediatek,mt8196-edp-dvo",
> +	  .data = (void *)MTK_DVO },
>  	{ }
>  };
>  
> @@ -1176,7 +1178,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  		    comp_type == MTK_DISP_RDMA ||
>  		    comp_type == MTK_DP_INTF ||
>  		    comp_type == MTK_DPI ||
> -		    comp_type == MTK_DSI) {
> +		    comp_type == MTK_DSI ||
> +		    comp_type == MTK_DVO) {

DVO is a kind of DPI, so why not reuse DPI and drop DVO?

Regards,
CK

>  			dev_info(dev, "Adding component match for %pOF\n",
>  				 node);
>  			drm_of_component_match_add(dev, &match, component_compare_of,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> index 675cdc90a440..6d2796148813 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> @@ -79,6 +79,7 @@ extern struct platform_driver mtk_disp_ovl_driver;
>  extern struct platform_driver mtk_disp_rdma_driver;
>  extern struct platform_driver mtk_dpi_driver;
>  extern struct platform_driver mtk_dsi_driver;
> +extern struct platform_driver mtk_dvo_driver;
>  extern struct platform_driver mtk_ethdr_driver;
>  extern struct platform_driver mtk_mdp_rdma_driver;
>  extern struct platform_driver mtk_padding_driver;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
