Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C6EC54F54
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvV3dInIO0L0rhRLTEeJ9bBqsW97MeMd4xbAsGj19iA=; b=UY9rMk3pOgIEI8
	S/UBA4XC2FsCBnAprOeWn/oZiS5FYyKxXdgUlpsF4nXrOFjzs8g+8yRnsNUYcfEBRQMmAZWdSAakf
	rnb9DtVZjPvp2OlwNbgGthCQGh6cawHVkTUhn2ObYWE+q0XzwhnSIbwuNnjCkjlTXHOk8sgWeVBF1
	FYtMR/yei9pyCaLvXWPBXoZZhFWYRt0o1XiONVnaS/rpFahnJ6QrntSJxYtLfGSIv980Xwl2cFzNM
	uNrCeGzWGHTpD7TKXelmtNtK2UyT+roiWpOtSROSvDF+s84MBz5GlZvhjLD+Y8qQtQ/zsrtaCgWBw
	fXS2L2dEyymQgvxtwYug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpg87-0000000Bpyr-1kWF;
	Fri, 31 Jul 2026 05:49:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpg83-0000000Bpy3-2vz5;
	Fri, 31 Jul 2026 05:49:58 +0000
X-UUID: a55ba9828ca311f1afed4741b24580c9-20260730
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=UHtDYjYSeRUxinre3SeRoUSX5EueBMEfbE45OZypfWQ=;
	b=oVFRLCi9FEuKB5XtBDCga4DoqPaTRfUH8SyLq0/6NkNu+EV/1gs7TSfYExfAIdq/E7RXxhnNULiFaT5GKOzH1+5IkAf5x+7nHRMsTJlz3p45lS+7WnAcc1QlkurmUY5R75C2GGExyPxZIAWteuzrdzeq6wPoIj/I032sYudhKlg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:405d39c9-b735-423d-bdb5-4ee10c82785e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:b0812941-4636-4a32-8559-2615e2662808,B
	ulkID:nil,BulkQuantity:0,SF:80|81|82|83|102|110|111|136|836|865|888|898,TC
	:-5,Content:0|15|50|99,EDM:-3|-100,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:
	nil,BEC:-1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC
	:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: a55ba9828ca311f1afed4741b24580c9-20260730
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2142579804; Thu, 30 Jul 2026 22:49:50 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 31 Jul 2026 13:49:48 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Fri, 31 Jul 2026 13:49:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hmS0E5wt7/yz4pUJlLFEFPP3aRrREkodCMAocd2J3hRsTlDIb6lSinr56+mrQfXY+Vi5IRRGQPROxpC7nJS3AoAcQ2tymOWBAAksembJv+g43zP/9Nk/9mDldnJcfTKCF04dPp7HC4lXECdtEnl+Q5vikcGDCku7zcrP4/ZkOhQlzJYj87VNAC6pSFRBsdk5T3a9C9jgCYqyFaDLDtWlLlT7QqeSkw1VklJcME1K3iBVDGntSDQKLLRa8gykjAVzp0+Vp1tqtR9PvnVk1auYA4bF92rAGuH8xvsW/zxw1/Uf+C5MiEoq5jG+raGkYI0PW3F4EVCbQfRU4nCDVklqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UHtDYjYSeRUxinre3SeRoUSX5EueBMEfbE45OZypfWQ=;
 b=T8/d9dB/r54zfp7fA4NO9prQ3fXiB/0qptxGhC92BxGqd7GhK2D1KTweKn1w0zZuH6z47G3UP/fDEbrnXoaYCNbu1tjMek/GNVXKjoxiWr/AXsRuizWubWYClp3w219+WsZ9IT0HaltZ+hUHL7KlsLPyQzchHUccJu8XPl0W//jjWSd07WWmTIAev5y+Cl56kqABMjJaC7nfY6hrambj9Fq+GOVQVs+xvZQBmBJca6w5QE6alHOENR6V+uGx1jKebnK2sHVRi/4rfLG6yC+iMLB73i06NroUqSz/+SDCFY/W2q16N2cyl87cnqMUIZpnerqdYH7DA08KYM797HNN4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHtDYjYSeRUxinre3SeRoUSX5EueBMEfbE45OZypfWQ=;
 b=jrhxq8HGLLtb2VBA88roGLPH5GUumjni+CNVLbEWzuYi3ycyiNO2KS3tXbWEsz0Ow7Mgsq88PmAUttmN11RUln7+p5J8OT8TTChuuGZzuFnbtdKEr0VQksvZEff70qqOgjJZTcbfdNaUrBB6R0xFveYVv7ZsprzujBasUFYXwvo=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SEYPR03MB6901.apcprd03.prod.outlook.com (2603:1096:101:b4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.15; Fri, 31 Jul
 2026 05:49:43 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.21.0270.012; Fri, 31 Jul 2026
 05:49:43 +0000
From: =?utf-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
	<Chaotian.Jing@mediatek.com>
To: =?utf-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
	"avri.altman@sandisk.com" <avri.altman@sandisk.com>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"bvanassche@acm.org" <bvanassche@acm.org>, Louis-Alexis Eyraud
	<louisalexis.eyraud@collabora.com>, "broonie@kernel.org"
	<broonie@kernel.org>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
	"chu.stanley@gmail.com" <chu.stanley@gmail.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"robh@kernel.org" <robh@kernel.org>, "James.Bottomley@HansenPartnership.com"
	<James.Bottomley@HansenPartnership.com>, "lgirdwood@gmail.com"
	<lgirdwood@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"kernel@collabora.com" <kernel@collabora.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: Re: [PATCH v10 11/26] scsi: ufs: mediatek: Remove undocumented
 downstream reset cruft
Thread-Topic: [PATCH v10 11/26] scsi: ufs: mediatek: Remove undocumented
 downstream reset cruft
Thread-Index: AQHdIAjuMdRLNjxDvUi/e3O8goeBKLaHILEA
Date: Fri, 31 Jul 2026 05:49:42 +0000
Message-ID: <cb9206fa6c87dcdafceea658f519401d18469a97.camel@mediatek.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
	 <20260730-mt8196-ufs-v10-11-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-11-bc5ecef202dc@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SEYPR03MB6901:EE_
x-ms-office365-filtering-correlation-id: 67fb0373-686e-423a-6c29-08deeec784f2
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|7416014|18002099003|22082099003|4143699003|11063799006|38070700021|10067099003|56012099006|921020;
x-microsoft-antispam-message-info: OwbxyPI1Wz6MLvtvDfJDdiyc42x7tmcwghJw6ho/7hePxuzg8gu+DcOnpORr9CB5jCPHdUFUXQSuFS6DI3QFaNy4NmQLYkB036NZCLnLHSRJAjWqfReO8qJxgRUTuP1qhwaFncbgNjso/m/hrcJmDSFElNyuVd1moYuhG+cpgZLedlvlQIgHIfnLOkf8pGJny7Ajf8BtndzsqeUJBpGkIc4bcUqLtGfALUMskcm1n9HIHpm8MxEn6otclkRUBreF0kyx6Uf+COq8lLmfJ9luymftArIMhnbOtcu3rUBzpY/BEmccClIiAlM4VBZMZLo6cxLNq0Bdf98i73Bno53q5XG3Kv3oZ3eYjJySk4VrNOts8cXGNejUmENbQY2xaGvBWl+S3bFQ3rWinl+VOX1WCKaD16GVxcDGdBrRK3MX+ZL7DmcyFotGlvRrOXvdFx99rjIiW6Ko69ZiSHQFVy6LDXJCFPTITSwrDvbvEAQC+6pB2FTWArGkmEAAirYTLcy2FkEBT64gCpfRZ3OkrXSWFrsdlZB1jRZUjEu8at94KkTNLKWbLRKnMHFlsEatyyYbMmPvmKn9TaGZkGfOAlrkmQiVGweDLDfUdRh0y0Sc08TUnBVlcXXhZMVDqNrd7znsZuHfCq/lQxhc7enJEErlJvVIYsNctCR2xkIt+MUohnrRtHkeffqkXyDjEGutN6pG0EtC4wc7BV96pNHPNfuU2PAKMDa48b6vbdZQcaq7pCgqZLqhQMaFGEs12tqFbTIz
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(7416014)(18002099003)(22082099003)(4143699003)(11063799006)(38070700021)(10067099003)(56012099006)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTFVVlU1UmFXKzdmMTZQeUZYbTdHUzFKYk9CN2VQOExjdlNjNWw3K0NKZVpK?=
 =?utf-8?B?ZDI3YThGUTJyWnFtRE1mRXhRT1d1ZGpoaUhHaDlXM25hZGwwRnJhaVYwZVA0?=
 =?utf-8?B?MHpFQnB2Zk9ENWREUnd6RnlMTWFLT1JEc3RxaUhuNzUrWjhvWWdGUW9tSHdJ?=
 =?utf-8?B?bjd2Z3dxUXBhTDBHWlZqYTBqdDFZUUZyeWNPd0ZpUFl2bjBUR1d3Q3BPbzBv?=
 =?utf-8?B?Y1RncS94Y0NQdTdZSGZETjNWa2JtT2tNSjk2QS9uamtJYko3VmI5Mk5yN3pw?=
 =?utf-8?B?aTFFV3pjV2RSTExKVWFqMTg3aEpSQnEvYmFmRytLelhPZmwyczR0eHgvOGxN?=
 =?utf-8?B?dGliU2QxU1VHREtIdXNYZWhvMTVuS2RRTVdSWEM0WmhITkJGWk5BekFvaUNI?=
 =?utf-8?B?azh2eXBXRHZDY05ZWmpLU2Rla3RRVG1tWmZaQ2ZmU2ZZemJJZk5Ea0lPYVVm?=
 =?utf-8?B?ZExmK1h3QWlUR3FpMXo5MEJuMGtHcVpTSXZwVW9Wcll1czdiS2dzTmcwSDBN?=
 =?utf-8?B?SlZiZjFKQityM2pFZWMxZHZUSUlYclF5MkRGUnRla2JpZXBRakg1ZXFZeGJo?=
 =?utf-8?B?dkJjRnMzb3dCZndWeVZKYkpxbU5sb0E5NmZrK2ltWGh3M0thVEZrVy9kSHY3?=
 =?utf-8?B?MmpRRHhCZVlpOS9TOFk0cVhmVUtERmZMc2pvREVRN1lRL3ZnalVIOXN6N0JO?=
 =?utf-8?B?NjRnbFBseHpxZHl0RnFndWVtSXlSbkdZTUpRc3d5UDRWUnh3b1RTOTh4VTZL?=
 =?utf-8?B?ZTJseTYxVFhzd1hKUy9YL2c3bkZUNFBoUFArR1o1YmdRa1J0OXpQTXpmUXVF?=
 =?utf-8?B?NVQzU3Qxa25xRVB6aXZqZWVqeFlHNkd6YVRXdG43MnNHSHQyenNZSXFxZ0dN?=
 =?utf-8?B?Y21nV1NFQTROc2RYbGV4alYrNENQaWhza3Ayemc3OUkyVmo5T25wWENOWGJh?=
 =?utf-8?B?MmNiZ2cyTWtGYlUyTGYxTjA3THFJN1RhbkI2M0cweFNmcUI2bndnUTIyelc0?=
 =?utf-8?B?d2YveWlhUFZrdHlVSFRObFAzT2JrOFFiU0ZIYXhZYzNKdHpST2l3MzlMOEdG?=
 =?utf-8?B?dEgwYnFtTjRJdWRBTjd0NDhpNHZsbzBsUTVELzd2amxxL3BldGZyWG5YanNz?=
 =?utf-8?B?TVAweWhocnBUYmtLcHJ3cHMyZ2VjUEdoR0tuWFQ3WlpiNzU5NVQ2SVNXTDRD?=
 =?utf-8?B?c0ZyNURlZFZOVnFoclA5dkRRR2c2cmJWMWhhendUamJPMjd0MmtVNlJ6WjNh?=
 =?utf-8?B?WEl3VUQwTUxwWm12aFVneVFLQWNvYTR1bHFyaGxhMFBlNnE4NlgyRXpUdjZ4?=
 =?utf-8?B?Y0hKV2RCdzBzNHZPbXZPMFZ6VHE1UDdZTC8xM0Y1UUlMUXJISnNXUWZ0akx2?=
 =?utf-8?B?TFM3bVdjQTBqUHdka3dJM2Y3UVNZdjJLeDArcE0rOWxpbGFUQnhBQ25SaVBZ?=
 =?utf-8?B?ZHFyS1dCcm40NUFwdGVTcWN6dW9rOTF1bVlOa0xkblFoMDNFRnhiTFFFOVI5?=
 =?utf-8?B?UXlOSWg0aDJNNXR1NkdnUFRvVDE2UFJEcWEwNjRXRFJxeFIvUS9GUHM5SDhJ?=
 =?utf-8?B?VFVTODBJNkt5eHdBU2RGUTZJeHU2YVR6TzdUd21zUDJwbE5CTjArNGtFdFNQ?=
 =?utf-8?B?S2pRTHlEbHBSMVpsanUveVkzUU55ek5uUStobFJtcll4N005ZEt3SzdZbzFB?=
 =?utf-8?B?cTdPQ3NXODVjS1BLN3lBSUVBRndMTUhoWmJkVGx2STFudDJXNnVVWmhMb09X?=
 =?utf-8?B?OGRJM1RNWG82VUlaYWJscC9UQ2p4WDE4c2xra3B3YUh0WXRKZW1VYzFPZTdh?=
 =?utf-8?B?anh1aURBK3ZJbnJmNzhlUDU4akQremRjaE1DUWpJdzczUE1VdnRyU1ptaTV3?=
 =?utf-8?B?MmJCaWNRY0NGdTZERkJtYWFLV1hXdVJsd2JYaEtGMG5PN2Rxbm0wYXJNV1hZ?=
 =?utf-8?B?RXBpbXY3cHN5b0dYTEoyQzA1YjJsaSsxczhHNkxvYXhBZWt0Z21WcmY3T1J4?=
 =?utf-8?B?S3FCOVRDSTJ3STFwaWtlRSs4b3RuRC9QVklSQ1dlT2JLbmJadHRIYitSVUZJ?=
 =?utf-8?B?M0doQnFwZ2RnKzdCUyt4dVU0ZHY1Rm1ISUVGUEVRNkZzYks5M3l6RnliQXdj?=
 =?utf-8?B?YzA1M2JMeXZXeWorQ21MSVRwVVlJRlVZY1FKRGdKc0VKdENRN1YydE5yaU1D?=
 =?utf-8?B?Yjh5S1kra2wxMzRVZ3VwT09lTm1JR3kwWFNOVmgxY1BpOUhyMHJtYVM2UFEz?=
 =?utf-8?B?NWlvUzNBdFJBVFdEMTNuT1VBT3pNZFBMcUErMFBDazE0Vk5qRGFTQ3JlRWJq?=
 =?utf-8?B?WU1ISjg0M1RQVGV4Y2FLQnVBZDA4d3VsUlU4T05IYUtPczYrcjFxekt1UmNF?=
 =?utf-8?Q?CaCHlXduwZt/SP88=3D?=
Content-ID: <B9D68EEC071D6D47A9AD4EB7E49EBD96@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kVqrEJVweRDZZ+evAeB0k+TDBq2Vf16sc5c71ajtMFpgmwBQMAhXyGXucTlsNdhgKszoN7XUUUIRxpRmxeu33PaoN5PqyeNzobwYvqpMSzUnFNZGFYlliinxfRGLqf/VmEGQTOha0todT51hT72rEHMbPF4qfrpXcUlaXlgYr+TShTVLCoBcrpofytNrg6P/xvbBVz2SWpPt9tumcsIzGSC8oCbsoGI4LZ9k816LZTia8jVdgU/17lXfcvpiCZCl2k5nQyEEAUUzBAzXuY9i0D3feNtxMaUgo5C2UV+vceU8dWOgh7wY8narMpu5Ue/0Sy+YXzRCin/jybmTmWpgCw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67fb0373-686e-423a-6c29-08deeec784f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2026 05:49:42.9021
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sg9PYdVfHzGv9jUClJulnNYVdlKVER6nwG846B2zIRUHwNK0dNenUr/h9w6dRFSk5doLa0jEbZ9NDCx1NclpayhMN5fYajqMYc6Ycrqxx0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6901
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_224955_746876_0A256AD9 
X-CRM114-Status: GOOD (  19.83  )
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

On Thu, 2026-07-30 at 11:49 +0200, Louis-Alexis Eyraud wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> The MediaTek UFS host driver's probe function allows using a
> ti,syscon-reset as a reset, without going through the appropriate
> abstractions, or by documenting this in the binding at all.
> 
> Remove this, it's downstream code and does not belong here.
> 
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Reviewed-by: Chaotian Jing <chaotian.jing@mediatek.com>
> ---
>  drivers/ufs/host/ufs-mediatek.c | 33 +++--------------------------
> ----
>  1 file changed, 3 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-
> mediatek.c
> index 65036c839031..a2749e79514c 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -2402,38 +2402,12 @@ MODULE_DEVICE_TABLE(of, ufs_mtk_of_match);
>  static int ufs_mtk_probe(struct platform_device *pdev)
>  {
>  	int err;
> -	struct device *dev = &pdev->dev, *phy_dev = NULL;
> -	struct device_node *reset_node, *phy_node = NULL;
> -	struct platform_device *reset_pdev, *phy_pdev = NULL;
> -	struct device_link *link;
>  	struct ufs_hba *hba;
> +	struct platform_device *phy_pdev = NULL;
> +	struct device *dev = &pdev->dev, *phy_dev = NULL;
> +	struct device_node *phy_node = NULL;
>  	struct ufs_mtk_host *host;
>  
> -	reset_node = of_find_compatible_node(NULL, NULL,
> -					     "ti,syscon-reset");
> -	if (!reset_node) {
> -		dev_notice(dev, "find ti,syscon-reset fail\n");
> -		goto skip_reset;
> -	}
> -	reset_pdev = of_find_device_by_node(reset_node);
> -	if (!reset_pdev) {
> -		dev_notice(dev, "find reset_pdev fail\n");
> -		goto skip_reset;
> -	}
> -	link = device_link_add(dev, &reset_pdev->dev,
> -		DL_FLAG_AUTOPROBE_CONSUMER);
> -	put_device(&reset_pdev->dev);
> -	if (!link) {
> -		dev_notice(dev, "add reset device_link fail\n");
> -		goto skip_reset;
> -	}
> -	/* supplier is not probed */
> -	if (link->status == DL_STATE_DORMANT) {
> -		err = -EPROBE_DEFER;
> -		goto out;
> -	}
> -
> -skip_reset:
>  	/* find phy node */
>  	phy_node = of_parse_phandle(dev->of_node, "phys", 0);
>  
> @@ -2479,7 +2453,6 @@ static int ufs_mtk_probe(struct platform_device
> *pdev)
>  
>  out:
>  	of_node_put(phy_node);
> -	of_node_put(reset_node);
>  	return err;
>  }
>  
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
