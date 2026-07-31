Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07000C54F54
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukddq98S7vv9x6F73kM4OKQTdFPNNlT67kLuo80KZc4=; b=KMBmsdd8KPNHRb
	bWFOekecrD5rxN9uDYLh7sCINQZL3fEdchsOE2xEjyWRv6gkldIM0ACbjlVucTX1ux12+y3bJNLpk
	MS85nbT6YMiMNFy0jjTnf3ERbphiQ7di/hFMcGO/OSG3iGXQkyHRzwJ+547JPlFyZELB+G3VB5mPd
	eY39y99vYyOn7dHxKaFQ/wMxNYZWycD4F7vy3VBksfEt1L4ll/N+JIqMOpq2nfB3vAxoVeF7kqChE
	HTRuuNtj5dcN1PPRpc/in0f5dtINV6FX/+J+iT7XSiK9s7zF6P8BEr5/sAgV+lCeTfskR6c/9Qa0x
	wRHlGSertAfJczpA7r8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpg6O-0000000Bphp-1nMZ;
	Fri, 31 Jul 2026 05:48:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpg6M-0000000BphF-0dHF;
	Fri, 31 Jul 2026 05:48:11 +0000
X-UUID: 65c0b84e8ca311f1afed4741b24580c9-20260730
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=/xqBE6tqwlC5Fz8/uTEFqlzbqdZt5lmnqgjMpsAdTNs=;
	b=MdBEEM1d8mcjL5DQoUN7Vl8uc8e7EwhrX2aWZFqAzspSVkbvGIQWB639gIRDblT3+D2gKbM/nVC/4ZRl5tit2//bKttzUa79yfOVctRng2uhSdUkm+HY42BMgJP3BlWmDbrK/jUe9iuNaZbLeA9TdqmGyWAJlMHXM9aaMa7jb3E=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:7e5d7e6d-4a8c-46d5-a721-2d0dde4ffde0,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:ae105f85-7d6f-4526-92d2-89d6f5fd739a,B
	ulkID:nil,BulkQuantity:0,SF:80|81|82|83|102|110|111|836|865|888|898,TC:-5,
	Content:0|15|50|99,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-
	1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 65c0b84e8ca311f1afed4741b24580c9-20260730
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 554230586; Thu, 30 Jul 2026 22:48:03 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 31 Jul 2026 13:48:01 +0800
Received: from SI4PR04CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Fri, 31 Jul 2026 13:48:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e9izN1yn67icWhOrpPVv4riR1ESDmeti2mTq4Yimmqznmxp7oLK5AG9a8K8HmWfwPmVy9xv2ahaLgTTQWM+VoNEB9uPkrzkBf2bvhR5CuxsSckCl8fyGWIm+d9l6X58iblG3ZgKMfsiSa7N8LTz2kdUlvCfcKXxxa2t0U4JqKbN/mvUK3P52+8YaAwt9JL2NEIew8VffC7UkN0yHosehu+urO8Rsd91l/L01gCuyhF0MESgZHR1Hl27s8nmTfkmHPUKjQnHoEKKqlZKsDUGGQY9xHTcsl7D0wH/v4urPLdcmMZoQHAiZ/BlrtBryV3aGBaNWktF1CrdTBMaVkRhEIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/xqBE6tqwlC5Fz8/uTEFqlzbqdZt5lmnqgjMpsAdTNs=;
 b=v+wnQq6OXWypuFLrKallupkVOw/NjmdPOPofOSJiJv5cPdikS1S9wHM1u6TplaAK85OnaRcREEfJt6gN2bHwUbk2ChTILzdvka3wjFZg0L7Vbr+Xgi3FkctUGOErLGSykJmjrbqa1JXPToV2K5FFTR/5EhSALHNmdRJ6Zdwxg9/ckZ5i8/KCWe1x3L5AhduQXVVIBjMHCTkCoJvRiRQGmChoA/NFlj//tcXrk/dVd1w0BOWRI8WLAMxXHmIhqbvt4OMFAHgAruquxiH8sNCy1VBeS+ii4jOmkY0MeB6ruMQ9E3zM+8F/oACi10+2FA0yt0e3+XBTK5Z8ej0N+c5ajw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/xqBE6tqwlC5Fz8/uTEFqlzbqdZt5lmnqgjMpsAdTNs=;
 b=sTySTJRVGwxhB87WwHFvSTuolqV8cw51Ak0erv0R6Nk1I6eZus06H/beFm4ufUzKZ1EPD28LULclhZP+EJoYiUdBxDwZITA8rfuvmNI+ZZO9w0zUJFT39eDuYaCt9iaeu9U5vda0VxYTy3nvyNSaAr/S3IEFmI8bRYfN/Ie2x/o=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SEYPR03MB6901.apcprd03.prod.outlook.com (2603:1096:101:b4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.15; Fri, 31 Jul
 2026 05:47:55 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.21.0270.012; Fri, 31 Jul 2026
 05:47:55 +0000
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
Subject: Re: [PATCH v10 02/26] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
Thread-Topic: [PATCH v10 02/26] dt-bindings: ufs: mediatek,ufs: Complete the
 binding
Thread-Index: AQHdIAjlejjAJrJCDkmO6vuRUDGfa7aHIDCA
Date: Fri, 31 Jul 2026 05:47:55 +0000
Message-ID: <682a5f2d0caa99575af6b3b1bacf1dae98b99361.camel@mediatek.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
	 <20260730-mt8196-ufs-v10-2-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-2-bc5ecef202dc@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SEYPR03MB6901:EE_
x-ms-office365-filtering-correlation-id: 1323daf3-74c8-4e56-ff51-08deeec744bb
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|7416014|18002099003|22082099003|4143699003|11063799006|3023799007|38070700021|10067099003|56012099006|921020;
x-microsoft-antispam-message-info: KrDW0y+ZKOcn755qB9R6lhq4V1L2l0MtmMXeAAHYN9y/8WqE4Jt1+yv0IlifCGTit8x+Sr92XSslATg5wvSuHobjKtcf/qSKR/xsaOPGEgakQ3uJJIZU5pqAdBkNSiLjDFoY+sGdT0+/wJPv6pIbpHxMrr67ZapAi+jcUYCVJEcLAIhjhKguUXAjeZZ9rZ6d+HZ2LOkLVwTBpz/OlQnSdLqjGIMPrFFE21zh7xRFLlvjTbMzalm1snO9TI0X4dCzhmAJ756eVqYZ4hQ9G+ptwQGhv1e7PCIivWNMOBS2S8aS0A21lq+KMhDxlVT0SNT1Nt/BniK4QQwqLFmJ2F0MiPPD9QxBp5ts7Svz0oDG15MkWkqNwhjn7FHVySQuNY6TV+Zo493ju9/XOWtnsrhEF341SiM3+pJ0HcX7crAkzZTETdcloZOKrxtRdxfvdKu0e6x6dAIK1AAi/9w/Yi0RzURbrkYlhEcD/Uc+cENoD6SyM9t9hgX2ABHx0z14VueRPlt9Y+JPovgIVjzIrOAqSqSI2XZkqxbL2h6/lx0YcHATpT21+edvE/ZL5s8qONKT+5n/eXbWKY9wG4AwQ2wzQ7PRknEqcwV/lBZvBkX6BFH921tsH9s7zbgKnZ669fUlI7A5DHBUkVQZMOvrUc1hmpN3485LeMpvQ2lJT/wh8E2pO+9DmtvqDm+j+g40VpYOggt7EMEqmNPFeH7qg0Ac6T0U7ttSzXcMAO5BwEySs1o3wpBMuakxdTj/xJKulBv3
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(7416014)(18002099003)(22082099003)(4143699003)(11063799006)(3023799007)(38070700021)(10067099003)(56012099006)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGJodS91Nkk1QU9VaCtaMkFXQlZKdTFhNSs0a3QxYjBXUGpBRDJjRHhEb1BU?=
 =?utf-8?B?Ky9JVVU1YlJ5SDFXWUNFNTFUZEZrS3lMYjRpb3plbVFOdld2U0xGNHZUcWhy?=
 =?utf-8?B?TEN6RVBHaDJVWTBSanZaTkVxblNrU0NPWnRIeFMyQXIzcHhUOTJHV1Aza2tH?=
 =?utf-8?B?RmlSZDVFZURtMGozbXB4b0dkU3F6STFLQkI4T0pRL1FNVXFTWmtZeXIrODg0?=
 =?utf-8?B?b2VQeE9lZ1djc0UyamFaRDJLNDNtOWJiS21kazZhWGMrRXowcG5IT3lVdDZu?=
 =?utf-8?B?dW1rNVZJa3h3YmtyNzB5ZFdDSHBJWitRbDNCalpzSWZGTVVlZWZBdFRXakJP?=
 =?utf-8?B?L3ROK3BORThEVm5XRnoxT1ZaK0pqQmU0UnZsRjA3Si8wd3JjTXdadnlkN2lh?=
 =?utf-8?B?UC9PUjVYZVdYYUthQ3lubjFEUzJFMkVWakROK3VSVnM2RFAyY2NocTFxRkxZ?=
 =?utf-8?B?amd0eUZTQitmTVVRV25acE4ya2NrNUtYWm9LeW5uRlQwM244aWRWZjk3aXRy?=
 =?utf-8?B?dGd0V216RnYzNVllL0FFL2o3OVN4T0ZORmx4L0EzK2ZDVldXNDVmVlZiak1x?=
 =?utf-8?B?ZFZNL2F6a3FxaGlxdkRKbTEreC9yb2owSEdwVDUzOVdlRGI5a2xVOWdKY3Iy?=
 =?utf-8?B?MUlTMG84LzRmdFFNdDdCRWh6NHZtOFJ0R1Q5M0VMSmtNNjBiUWcvRUtaeXV2?=
 =?utf-8?B?THNucFZCaTV1Ym0xU0pPMjhyb3N6Y2h0NUFpN1V5ZUc2NEJZL1kxS3RvVzJH?=
 =?utf-8?B?VnZna3ZRVlQ3MmdTUTFRTmRjcTI3M1ZVbDUwVmdhbERISmZVbWxINjltYlIz?=
 =?utf-8?B?T0RtNlJROTZ3UWFKUmJyRmxXTlFNblNQWTVTNlFvd2JKRy9HVTUzZDVNZHd4?=
 =?utf-8?B?RTAvQWlnRnp4SlJUM1N2UmJHVFJ4SUFiVkI3Y1lhc25PUXpWUDB1cWRzZVFy?=
 =?utf-8?B?S2pBR2pHMkpwdUk2eTRjZlkrY2JVd1RHd21LL0VzSHBwcW5BVGd3aG9YazAv?=
 =?utf-8?B?TmF2M01vRnVaZFRDRjFLaVp2QnpqZmFuN2p6SytkSnpYbXhrNWswZnI1MXBx?=
 =?utf-8?B?d1l1cUFrMWpQalltcGs0ZWhuTlRkRlplMDl2UFlCMnpMUU00Zmt6REl6L2lO?=
 =?utf-8?B?dGMwK3ROODV2VkhOekthZGFHdDAycHd5VEt5dVZteHJSbnNWWkEvYWhMc2ZF?=
 =?utf-8?B?Y0xVdk5PUVRzdmxpQS9HVDk0bWt3L3F6T3RZdjgyRkV3a0cyOFlqMWtvVTht?=
 =?utf-8?B?ajRUT0w4WUN2VUozcjN1aEtqckFVZUxOK3B1VlRoOG04QTRyaTFhLzc2RVlC?=
 =?utf-8?B?ZkQ3WXZoNHhyVTZEWUJJcXZPSHQ4b28rVk9tSVA0SmFZNll5Y1FTbzNQNXVG?=
 =?utf-8?B?bi9VNFZRbnNlNytZQytweHBld2xUZkRxMkdtdVJqUzJVZHd6UGllNEN5WjBo?=
 =?utf-8?B?cEsrblJZWXpwUFo4bG9CbEZyRituRXZtTE9velVsVEFqUzhHSGRYMncxcVM4?=
 =?utf-8?B?Q1l1YU40d1FLcVlrZnpEZVlNbnd4QnJCREM0dVJML0pCZXpPalpFZ2ZTMElC?=
 =?utf-8?B?ODZSamdMOERtZ0lnV0t3UzZMWkd0MHJEcG0rb0VNT3ZrU0IrbDI1c1RES3Bx?=
 =?utf-8?B?WHVoNHd0emZXOW1LZWlPcklIR0ZmZDROQ1I3WkdjV0F0Y0lleXZjbXlqWlEr?=
 =?utf-8?B?ZVBETzl1L3c3Y2NrVS9tSGh0SDR6VFVFTE9wUCtmT0xIeS82cWRSdjNEMEd5?=
 =?utf-8?B?aVZoSnIyeG5kME4xbmFPNjNpL2RRdS9zNWN3WmROVy9LcEhKUm4xeVErdFV6?=
 =?utf-8?B?eHpmUldHcHVraEhicGRQR3BaaCt0blRQd2RwRmkxSVpiMlhwV1dvc3VnbHly?=
 =?utf-8?B?UWFXTVllRmNQMHJHeE9KVjFCMmI3Sy85SGpEQ1JnOTZOdERMeVMwOFJ5NSsw?=
 =?utf-8?B?bUhpeWFWSkc1Nzg1RHV4WUdVSU5ZZ0JMaHpYc1N2WjVpVUFNck5IYzVPUm8r?=
 =?utf-8?B?UDViVThLVHlkN2E1NlQrSGl6endxa214Z2xvZWc4cm1sbkpRVWtkRjNuUXdj?=
 =?utf-8?B?a0JEWjF0QWpIY0x2clZ5aWY3MHZmVHlZSnhEK3FsYXU0MzZ4NnB6alc4S1RW?=
 =?utf-8?B?OVV4ZS9zZ0FVbHY2cnlDNkRmdGxwb2dQSFRzUDJrdXlYOXRxVHdVK2Rob2Nh?=
 =?utf-8?B?dkxVWFp5L2JRb1h1Y3E4WncxTC9WVCtyWXZWMWdSOHJYK0FnTlUrbWtLeVhn?=
 =?utf-8?B?Nlk2ZnJab29mSWRoRG81d0c1VGRlVGlxeXlKLzFvQktkNDd3a0VDckJRdXNj?=
 =?utf-8?B?Z094bkZyaDIvYUlHTnhxVCtkZ1djN2tIcW96UjVCUlNRSnlJNUxVQXUvME02?=
 =?utf-8?Q?Ft+c8Ll1RWR3BwGw=3D?=
Content-ID: <F28C1D36C03F6C4F912119FE18632A8F@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Hkp4Td+lOwgasB10t2pHuIFDs2+ucPcJgOZmFiCEFafay04lqCvacp8dZhi5mVSgi6KB5KNhkYXLqDd1pGwzmDhHWq2kUomFDBs+MpVfXhvkaAP64ei1zzhaeM9WeJT8bywBYProb4Fhy8V7pkB/NT+rf4LiRiNtoiPzAqF9748gMotUBIhpdxrSsgDLtMn6Gjf1lCsuwiA+dwug/nnFlA/f9NaawoBe3m76kkA1EAAInpJHOPsKeJDfLc7TK7lBMlvHtrzqIyzQqEoa7uOUIqVYw7VWSKzmODO148hZ5Z09qGrlMK1t/8eP4BBZ3sfnYG6DH21w98sV+tl5oMpHLQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1323daf3-74c8-4e56-ff51-08deeec744bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2026 05:47:55.1812
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VOT+OGkI3O1wstNxGqfRoQoUfo0B5Bk4yMJO3wLgx/Sz7Ce4pQs8qg82TvsMyfe6ZqRdienltBgEQ5d2vFDDJqLlXeeJ74sG2MQt8D2M66Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6901
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_224810_220300_8A9B55B7 
X-CRM114-Status: GOOD (  27.66  )
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

On Thu, 2026-07-30 at 11:48 +0200, Louis-Alexis Eyraud wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> As it stands, the mediatek,ufs.yaml binding is startlingly
> incomplete.
> Its one example, which is the only real "user" of this binding in
> mainline, uses the deprecated freq-table-hz property.
> 
> The resets, of which there are three optional ones, are completely
> absent.
> 
> The clock description for MT8195 is incomplete, as is the one for
> MT8192. It's not known if the one clock binding for MT8183 is even
> correct, but I do not have access to the necessary code and
> documentation to find this out myself.
> 
> The power supply situation is not much better; the binding describes
> one
> required power supply, but it's the UFS card supply, not any of the
> supplies feeding the controller silicon.
> 
> No second example is present in the binding, making verification
> difficult.
> 
> Disallow freq-table-hz and move to operating-points-v2. It's fine to
> break compatibility here, as the binding is currently unused and
> would
> be impossible to correctly use in its current state.
> 
> Add the three resets and the corresponding reset-names property.
> These
> resets appear to be optional, i.e. not required for the functioning
> of
> the device.
> 
> Move the list of clock names out of the if condition, and expand it
> for
> the confirmed clocks I could find by cross-referencing several clock
> drivers. For MT8195, increase the minimum number of clocks to include
> the rx_symbol ones, as they're internal to the SoC and should always
> be present, and should therefore not be omitted.
> 
> MT8192 gets to have at least 3 clocks, as these were the ones I could
> quickly confirm from a glance at various trees. I can't say this was
> an
> exhaustive search though, but it's better than the current situation.
> 
> Properly document all supplies, with which pin name on the SoCs they
> supply. Complete the example with them.
> 
> Also add a MT8195 example to the binding, using supply labels that I
> am
> pretty sure would be the right ones for e.g. the Radxa NIO 12L.
> 
> Finally, remove the 'ufs_' prefix from all clock names containing it
> and rename 'ufs' clock to 'main'.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Reviewed-by: Chaotian Jing <chaotian.jing@mediatek.com>
> ---
>  .../devicetree/bindings/ufs/mediatek,ufs.yaml      | 115
> +++++++++++++++++----
>  1 file changed, 96 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> index 15c347f5e660..e7e360c59ba5 100644
> --- a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
> @@ -19,11 +19,25 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 8
> +    maxItems: 10
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 8
> +    items:
> +      - const: main
> +      - const: aes
> +      - const: tick
> +      - const: unipro_sysclk
> +      - const: unipro_tick
> +      - const: unipro_mp_bclk
> +      - const: tx_symbol
> +      - const: mem_sub
> +      - const: rx_symbol0
> +      - const: rx_symbol1
> +
> +  operating-points-v2: true
> +
> +  freq-table-hz: false
>  
>    phys:
>      maxItems: 1
> @@ -31,8 +45,36 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  resets:
> +    items:
> +      - description: reset for the UniPro layer
> +      - description: reset for the cryptography engine
> +      - description: reset for the host controller
> +
> +  reset-names:
> +    items:
> +      - const: unipro
> +      - const: crypto
> +      - const: hci
> +
> +  avdd09-supply:
> +    description: Phandle to the 0.9V supply powering the AVDD09_UFS
> pin
> +
> +  avdd12-supply:
> +    description: Phandle to the 1.2V supply powering the AVDD12_UFS
> pin
> +
> +  avdd12-ckbuf-supply:
> +    description: Phandle to the 1.2V supply powering the
> AVDD12_CKBUF_UFS pin
> +
> +  avdd18-supply:
> +    description: Phandle to the 1.8V supply powering the AVDD18_UFS
> pin
> +
>    vcc-supply: true
>  
> +  vccq-supply: true
> +
> +  vccq2-supply: true
> +
>    mediatek,ufs-disable-mcq:
>      $ref: /schemas/types.yaml#/definitions/flag
>      description: The mask to disable MCQ (Multi-Circular Queue) for
> UFS host.
> @@ -54,29 +96,41 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            enum:
> -              - mediatek,mt8195-ufshci
> +            const: mediatek,mt8183-ufshci
>      then:
>        properties:
>          clocks:
> -          minItems: 8
> +          maxItems: 1
>          clock-names:
>            items:
> -            - const: ufs
> -            - const: ufs_aes
> -            - const: ufs_tick
> -            - const: unipro_sysclk
> -            - const: unipro_tick
> -            - const: unipro_mp_bclk
> -            - const: ufs_tx_symbol
> -            - const: ufs_mem_sub
> -    else:
> +            - const: main
> +        avdd12-ckbuf-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8192-ufshci
> +    then:
>        properties:
>          clocks:
> -          maxItems: 1
> +          minItems: 3
> +          maxItems: 3
> +        clocks-names:
> +          minItems: 3
> +          maxItems: 3
> +        avdd09-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8195-ufshci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 10
>          clock-names:
> -          items:
> -            - const: ufs
> +          minItems: 10
> +        avdd09-supply: false
>  
>  examples:
>    - |
> @@ -94,9 +148,32 @@ examples:
>              phys = <&ufsphy>;
>  
>              clocks = <&infracfg_ao CLK_INFRA_UFS>;
> -            clock-names = "ufs";
> -            freq-table-hz = <0 0>;
> +            clock-names = "main";
>  
>              vcc-supply = <&mt_pmic_vemc_ldo_reg>;
>          };
>      };
> +  - |
> +    ufshci@11270000 {
> +        compatible = "mediatek,mt8195-ufshci";
> +        reg = <0x11270000 0x2300>;
> +        interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
> +        phys = <&ufsphy>;
> +        clocks = <&infracfg_ao 63>, <&infracfg_ao 64>, <&infracfg_ao
> 65>,
> +                 <&infracfg_ao 54>, <&infracfg_ao 55>, <&infracfg_ao
> 56>,
> +                 <&infracfg_ao 90>, <&infracfg_ao 93>, <&topckgen
> 212>,
> +                 <&topckgen 215>;
> +        clock-names = "main", "aes", "tick", "unipro_sysclk",
> "unipro_tick",
> +                      "unipro_mp_bclk", "tx_symbol", "mem_sub",
> "rx_symbol0",
> +                      "rx_symbol1";
> +
> +        operating-points-v2 = <&ufs_opp_table>;
> +
> +        avdd12-supply = <&mt6359_vrf12_ldo_reg>;
> +        avdd12-ckbuf-supply = <&mt6359_vbbck_ldo_reg>;
> +        avdd18-supply = <&mt6359_vio18_ldo_reg>;
> +        vcc-supply = <&mt6359_vemc_1_ldo_reg>;
> +        vccq2-supply = <&mt6359_vufs_ldo_reg>;
> +
> +        mediatek,ufs-disable-mcq;
> +    };
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
