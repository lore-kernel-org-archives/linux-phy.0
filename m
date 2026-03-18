Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 213DC10854CE
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 02:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzbCDNsgQmLukDtRTF8Ft1/lkAWpxXs4Cm+OV+U+T+8=; b=22UWiV9i3T57Jb
	xo2DZLPRzdp2V5zDP7NWSnRMw1Z691IxsA1CpwIZap0p2+liNxyKxia717N+r30wL9VAISRXpbDmR
	QIUy/xPc8en8m09G6aJaZCQQCUGM2ICYY7KieoO1NDMItC2bfFrIIP4OSc9cv9kYiZL3BJcatP3vd
	+rp7E7gtDx7HL5tSjC6Kxh8g4+T2dx++qI0yQFOn9OEmqIycec83NZqdceFO8gPiJi//as7R/aQPH
	K2JaN0CV+TqeT2b1+kjsvjSQXanpQPPbBg/WLQnHlMwX60uu4TLiouhDmT+qu9FEV3zJKFDqZpfpE
	7VuFWniVEaSywHkewwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2gZM-00000007bfq-1aCf;
	Wed, 18 Mar 2026 02:23:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2gZJ-00000007bfM-3KJb;
	Wed, 18 Mar 2026 02:23:34 +0000
X-UUID: 744f531c227111f1a6de359d7043e138-20260317
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=l5w5tD9R1fR3C58lnDX3jKL/az8+YrGmML5jdXfDrOg=;
	b=eETY6Dto8AtECE0t70BAqfrhoFdt4rvoqzZVej2RJ7KQuGhQP8ZJnIyZljb9k0yEDgfooThI2oBIWgxLMsXxf/0xCqQLinptZ82wSG7x4fcc0OMeOInpaJZgGdL3M+wijP+rySGoJ5vJf3bRtRehMiBPiqHllOnYiWppeMeQfaE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:29f0e284-2c06-4624-8276-11872a5e3848,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:f528eb93-f8ef-4ca8-bea0-143568f9ca1d,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:-1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 744f531c227111f1a6de359d7043e138-20260317
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 248131362; Tue, 17 Mar 2026 19:23:30 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 18 Mar 2026 10:23:27 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 18 Mar 2026 10:23:27 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jDqQbCVs6hX/QT12wR8vbLJKYXKWeGk8Y4JbNB3czDnphW1EbYeg1GAIKoHZXsJfcWM3qmAlGgp0XqWacsEuP8keOS/MQb9Y5VPpECjn9Z1NIQYC5qN5fbPSKsq1nu0cujIDtYaffoTVUxVCThvnq6r+afw+uij4BwgIJxsm4mfjx658RQRGzlXJWyezR2vIsufI57YnLOCooXtTX3fOHhh0TOYYnK+QJnDL4ADDWcQGkjUjStoLdXx0aubu8Wg7eyHFlCt4a2W5E1Ov3hOI7STLapUQRJPsZxfdpYf3UAu8UwQ6VOmIxoWR2RjjepZEHw0zRwDUgit7vjAtOqS/ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5w5tD9R1fR3C58lnDX3jKL/az8+YrGmML5jdXfDrOg=;
 b=TfzKcPFFbLnGgztNhUplqjCwzepLEXhS8V5VZDf14PIUMqatgnDCrGAHp1i1sl81+qj5KiwttaA/Wvh0a/tATD9zseY8LP9rJNh6n6txsafeNgq+6NHcELZoy/eOaue7jrjHw0mkwAJwwncpJoFI/hAXw2Zkpv4GHNg37OU9TGw3WYTMLgkFf0ZEo4sKcEYnFGRsiGDZUButZorywiY0AUC7UNE90nOn7oDIQQKO340CPVN1byblf1tMgDzNtpVra85hNOAwvuDJE8Temf5sxmOznLP89m2deComz8s3NNp7gPGsfPHu5JFq17oyrIS4NtHY9F5+ejNdGUaO8jO2Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5w5tD9R1fR3C58lnDX3jKL/az8+YrGmML5jdXfDrOg=;
 b=eFCoLFCbcWroZLJhwket3qASSZlvwM9T1z5IkvN30T8M4IJrxx4g3ZsLbvfysIrwo4K/OQaitWzNlhPq/bSXcX0gNT4g7ys7NUu1+dB1SWl4UPA0HxBxUBxvJmL8KWLnxSEHCz5aklOSfGuWQC3XebTc7oXubeJt2HAGqjEmk/4=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SEZPR03MB6890.apcprd03.prod.outlook.com (2603:1096:101:a1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 02:23:18 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.20.9700.025; Wed, 18 Mar 2026
 02:23:17 +0000
From: =?utf-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
	<Chaotian.Jing@mediatek.com>
To: =?utf-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
	"kishon@kernel.org" <kishon@kernel.org>, "avri.altman@wdc.com"
	<avri.altman@wdc.com>, "bvanassche@acm.org" <bvanassche@acm.org>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"broonie@kernel.org" <broonie@kernel.org>, "alim.akhtar@samsung.com"
	<alim.akhtar@samsung.com>, "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "robh@kernel.org" <robh@kernel.org>,
	"James.Bottomley@HansenPartnership.com"
	<James.Bottomley@HansenPartnership.com>, "lgirdwood@gmail.com"
	<lgirdwood@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"kernel@collabora.com" <kernel@collabora.com>, Louis-Alexis Eyraud
	<louisalexis.eyraud@collabora.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: Re: [PATCH v9 22/23] scsi: ufs: mediatek: Remove undocumented
 "clk-scale-up-vcore-min"
Thread-Topic: [PATCH v9 22/23] scsi: ufs: mediatek: Remove undocumented
 "clk-scale-up-vcore-min"
Thread-Index: AQHcrW0RFzLKSJTvVkuMqellkJOlUrWzoYAA
Date: Wed, 18 Mar 2026 02:23:17 +0000
Message-ID: <cf7a38984309cc80a9f9acc3bbc45a1989cfcaac.camel@mediatek.com>
References: <20260306-mt8196-ufs-v9-0-55b073f7a830@collabora.com>
	 <20260306-mt8196-ufs-v9-22-55b073f7a830@collabora.com>
In-Reply-To: <20260306-mt8196-ufs-v9-22-55b073f7a830@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SEZPR03MB6890:EE_
x-ms-office365-filtering-correlation-id: 049fcc0c-3a33-44ae-6c6a-08de84955112
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|18002099003|56012099003|22082099003|921020|38070700021;
x-microsoft-antispam-message-info: SFLxYVOcLlgGLx7LaNUubPBBspyGNY4gFpQTgmE7lPUGnF/h6Hg0NcXBydaUNzIAMb3eraVhJoLMG/zAxPs3VvOcs7vB3j6NtEl7Ydu/9BCESWT26IcBLZnRu4sF4JMYhYlCP/f5H+giec+vgXGxstC5NZfo8hhQTbCDDKYRljHuIdaMXKM+MDVCpbstr999VCDhqM6fERJBe5uefGgXhy9PXv1hlJv5DdhEnlvZigrmEj6ldQgVhKnNAZWe28FwzrbJSC/jG6rBftUykf1tn+x2U6e92yfW5C98aCgkSBRQqMEJRqFU1362MeXyeOt5jDEXmOchvXd7Xjum7PP9whEt7/NBVHTbXpny33VAMhrUs0naNwkKJrouzD3AkGYAIuGtluI3R6YqfWLJnma5JMX5xFT/llDz18oHVii2PYu57B3KHH39cls5Tux0blCiytcbmJLR5hsULnzK+qKX5d6v6HfhmBqKMOOS9boPCdw/rceSnTLC3VLZykH1qOX16cQ0DQGfGYhIGsiluS8n5R9dYzgZhNoMhJMSpOXvTrE6f+9aQZpBHOAyBF1z0LpVQbJnXa/ULy3/d+AdzTzJmrtcLTUeX7g+qgjVqKYvbPB9IRIQsyaImBU/sdLmcYptDlnlh48geuVH3ZqL1K1x0XOCAAoBJ4Woj4gkx8m8mXHkW9QkarjxGdeTEqMkDvUistfNsVB4y4yYDwvOeYQkuMPVgdw2vE9Gr6eu0wymlBvhVKEVsa4LPXrEApNAZ9rDj+GIr/ogFdNc99MXxAAyM24bunz9ZSa6Hb/dM/aMGMvXwBBbF/tBnYnZrt4DxBwL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGwyeW5mVDByK254aWlnZEVnYm13RmNpWWptQWJOYlI4bDVxaEVEK0ZkLzlT?=
 =?utf-8?B?OExiNk1ZV2pmK29MMFNkMlRpdVBQS3VPM1kzaTdSS3hBb2I3M1ZPaDlkSSsz?=
 =?utf-8?B?RmdPdGdWcHhPYXA0eDJTNis0SkxmdTlqYVNpSnZqLzVIcENtaTE2T29xYjhU?=
 =?utf-8?B?cFlpamFIc3JFYnNNV1RISmdMOGJIT2ZySllSc2ozby8xR1BWaUN4SmZJaFlQ?=
 =?utf-8?B?TVY5aXBSZEdXYmdFYTFyKzBvZU5VaEN3NTBrSUdFZEVRN042VkIxQ1UyTmh0?=
 =?utf-8?B?NFp3dGhQdnQ2K1pSQjRJVit0NWdIekdDNU9rMEpwVVBMQ0l5L0pwZ2RpclpT?=
 =?utf-8?B?akczbzdqVkpHNmYwV0dpcyt2L3lGci93SzIvMUZYNXlIK1Vra2JFTFg1M0l2?=
 =?utf-8?B?T0NYa2duSlMrV3g4eHlMUW9xVW42U01uRElvU0FpOHRURCtodGxMNll6U0Nj?=
 =?utf-8?B?bXpEUTdvcXkvcGZTc1hZNFI4QVhTQnhyRythNFFHSzR3bjNiakNFNG5pdHZF?=
 =?utf-8?B?WHNJazBRRE4rV3A4YUVVc3N1SWQ2NlFiNWJHWExuYnlSZkNGVHFDamhaTjBU?=
 =?utf-8?B?QlRGWmZLYXFUak9DRDNnZkR6ZHlxWUFhMlVqMEdqV1E5Tko2UTdpSFFyRGFW?=
 =?utf-8?B?SS80N05vTjdmcWJxUkdLZ1Y1MzU2WG5FMW1sUDZkckM4OFdpQ2luK3lMb2Vm?=
 =?utf-8?B?NjBZY0x4eWRkb2pUUXNtREZlbVB5dVBxZURFeTB6RE9tK2Y1S2pNQmpLRlR4?=
 =?utf-8?B?OVIwUEtsUWRpdjVPU3J4WFpMVDE1UFM4aDFtVkkzMXJkZjdMd1pNZzZ0eXFN?=
 =?utf-8?B?SXhvMW5UYkJpR0wvYTB5SmRhTW5LWmFWaHB6ZDVCbzRnYTFZSnh1SndIdG10?=
 =?utf-8?B?NHhqeURpZmVJQi96d2V1dUFGRGdRVUEwSVZnRnRpZUIveGRCYkFxaFdqZXB3?=
 =?utf-8?B?RiswRHpmVlVOaGpwRTQzdWxsMVM3OVptS3pNQ3drRWZtV1NWZi92dVp5eUlZ?=
 =?utf-8?B?US9mamZOUEhHN1RtZ3J2N1FHdWljVjd6MUhGOFM2K1JBQXNmelpXNlkxRmQ4?=
 =?utf-8?B?NllBYnBzWkprcEt3MmxDL0ExaVEvcEtIaGtOUzMyU3M5RmhYWXVYRndHY2tX?=
 =?utf-8?B?T3RXWEJqenl2RDJBNzhRSkk3M2Rid1lCZWZmNVdnUm4zZHBHRUtxQnVWbnNs?=
 =?utf-8?B?eGF5RDFRS0VIVHFOZlhML2lvOTUvN05ndlFZTndiUjRHUExtN0w1bEcwS3M2?=
 =?utf-8?B?QTNtOTMzMDMzZEwxK3MvYmVZaXRNWkxFeTdzdzBieDEzS25nYzlFelNJMWRS?=
 =?utf-8?B?dXU3TGI2Y3NzZTVOYXQ5Q0lZTjRNTU9VcDhNMHVpQlBEcHZ5R3pyemZVOXp5?=
 =?utf-8?B?ZXdvS2pCTWZLTWcvTW04eVoxRjM3K2loYTgzZXhjV0hkcThDeGRlWmgvekVM?=
 =?utf-8?B?WGNpU2hPZkk4bFQ5VVNyYzJnVFBVaVVPMFlYRDk3SEhEWXBDakltcHpSaTdp?=
 =?utf-8?B?TmN1L0laWUsxMDhGWi9JYjA4a1U2WXQveGxVeXBjVjlreW5KV0tUeUVCY2cy?=
 =?utf-8?B?QUdkZmJGZVdEUjVzdUdIVzBPc2dvWkRnb085K3RiK2ZGYzkwdjMrU0RtVXlz?=
 =?utf-8?B?dmJyYkRMNXFLcWIzR3laMkhzdTIweS9KMWdPTERzYWV4blo5VXlodEJleERs?=
 =?utf-8?B?ZkxUeGNrbEdLY0t6SXNLdmUwcVd2aEN2NGJEZVZTbENobHlicDZXUW9NL3VU?=
 =?utf-8?B?UnVVS25MWHdyY2IvSi8wbGFsM1dJUlNEcGtXNnpSdyt0UWhtc0Qwc1dHcmpE?=
 =?utf-8?B?czIwRlh6LytlMEswai96L0R1d0lMNGc4L1EwU2M1bWdGWERFU09vMkx2a2R3?=
 =?utf-8?B?bllJRTMwdTFhZzQ1WmhYOS9qRzdKc2ZtV3lUMDBKckhiUy9nNlhhOUFGRWRr?=
 =?utf-8?B?dTdETE9RNEdpMUlJVWc5blA1T1JONmFxQ0N0QnUybDBsKzY4dU1LKzlZM2Vi?=
 =?utf-8?B?T1ErQ2ZucXJRZERBRFBtd2VHbWUydENFQ28vSXg3S1d3WnoyMlhrUHE5bmJJ?=
 =?utf-8?B?d0FwdVFSWFhmU0YzZWxCVnpJZWt4a0FRMzdUWSsrd0dld3hMTVRIZG53VTU4?=
 =?utf-8?B?Y1hsK0xIZnFjd25tYWJadFJPZWYrdkt0VDBIUnJlRXR0SlZhVGNYVlV3aERS?=
 =?utf-8?B?ZWVWOWR5cUc1WjJXeTQwZ3VLVGxRcW5DUS9JTGc2dnYyQmhoaDV4RzFZYjJx?=
 =?utf-8?B?eVRvUEtpc3MzbXJsT2o0N2ZTOTdMd0ZSc1V4V095U21nL2E4OVAwNlMraHRE?=
 =?utf-8?B?U1pvUVU2UHJhMHE2U1hyd01wNkNYVU5sOENyNHlQSFNMbjBUVFhPMWRscG5R?=
 =?utf-8?Q?hK+Nt13l/ce0ZyhQ=3D?=
Content-ID: <2D2D2DAEBB609C42A0B2D9B5F9372E53@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PHHnHJfmhpBXSO+Kp2nasBSGnfXyao7QrijEsxINMNh3mFiR0pMnZ6TZxcX0FhXcghRugraY5nxqMYhM6JIqlYjwIWy+dKbUE8/yt66kouPS/aKWqoGPyzeqj59RKQtPAiVlwG48MvfJrV9lWper0dnuWaM71fq4vXl9yWQNnBz7CMLzM5HciB+1H2e+4cO51WMWq6/sLA5hpS52ULXx2osaA/uXtazRa9qxt4iO3IgOAC54qC1vkeiE/rTjAftPWwx9ReSIOj5tyATHVQBupza+AVs9bJD3hVZjre+Q5RM9SuzoXxPvgSPqwhzMwkYxZfsWkQRt0U6psa13u6R2KA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 049fcc0c-3a33-44ae-6c6a-08de84955112
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 02:23:17.7747
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uKrOd8o+lAD+Z1qhk4DdrBi/+lmA2Po1/DZhUsw/0ffhAkPSPlRXamiyKhh5kNP8kHY1mAZwKrQlF6q9VSUkpVcFv2BGckSFV3Mc/qIteNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6890
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_192333_848837_ABA846ED 
X-CRM114-Status: GOOD (  23.64  )
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

On Fri, 2026-03-06 at 14:25 +0100, Nicolas Frattaroli wrote:
> The MediaTek UFS driver contains support for an undocumented,
> non-vendor-prefixed u32 property named "clk-scale-up-vcore-min".
> 
> Since it is not part of any binding, and would not pass a bindings
> review in its current form, remove it.
> 
> To return this functionality, it needs to be resubmitted in a series
> that also introduces it to the binding, and justifies what it is used
> for. Compatibility with downstream device trees is not a valid
> justification for its existence.
> 
Is it possible to add the "clk-scale-up-vcore-min" to the DT binding
firstly ? the reason is that MT8196 supports UFS4.0, and make the VCore
at least 0.65V is the MUST condition that to run HS-G5 mode.
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/ufs/host/ufs-mediatek.c | 19 -------------------
>  1 file changed, 19 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-
> mediatek.c
> index ae6735683f76..1dfc299b93b5 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -880,8 +880,6 @@ static void ufs_mtk_init_clocks(struct ufs_hba
> *hba)
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>  	struct list_head *head = &hba->clk_list_head;
>  	struct ufs_clk_info *clki, *clki_tmp;
> -	struct device *dev = hba->dev;
> -	u32 volt;
>  
>  	/*
>  	 * Find private clocks and store them in struct ufs_mtk_clk.
> @@ -918,24 +916,7 @@ static void ufs_mtk_init_clocks(struct ufs_hba
> *hba)
>  	if (!ufs_mtk_is_clk_scale_ready(hba)) {
>  		hba->caps &= ~UFSHCD_CAP_CLK_SCALING;
>  		dev_info(hba->dev, "%s: Clock scaling unavailable",
> __func__);
> -		return;
> -	}
> -
> -	if (!host->reg_vcore)
> -		return;
> -
> -	if (of_property_read_u32(dev->of_node, "clk-scale-up-vcore-
> min",
> -				 &volt)) {
> -		dev_info(dev, "failed to get clk-scale-up-vcore-min");
> -		return;
>  	}
> -
> -	host->mclk.vcore_volt = volt;
> -
> -	/* If default boot is max gear, request vcore */
> -	if (volt && host->clk_scale_up)
> -		if (regulator_set_voltage(host->reg_vcore, volt,
> INT_MAX))
> -			dev_err(hba->dev, "Failed to set vcore to
> %d\n", volt);
>  }
>  
>  static void ufs_mtk_setup_clk_gating(struct ufs_hba *hba)
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
