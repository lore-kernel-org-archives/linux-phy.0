Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E116410854CF
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVVNL+2HEgZp/2yv2zh7y4VPZwd1cdPXplP4PpcEflI=; b=Gx6rky8tCxa1Mh
	rYSrBomjb9r8gDdBsZRRI/T4HrJ/UO3ob1rQnBj1ebF18TAypeukDQs9WGaTOXlxS3XVLhEuFJn42
	WpK87/87fisINWKyOlsElSyMA+Zbu/zYQel2xtWgwAtbZVA6H/s6IfTFuqKBI3c4awQ7k0INpqAy2
	P3IXZ4z11G7IG+wGDUg6ri/Wvj4DP0F7X7C7nX8EKVV2N74HYS4uYzk8WqJPKbDKtDXI3HonexG6p
	8OhVifLRm7nEZa8aPHs4WHvkdM9DjU2552lK2ZXsALDyKfcH+bvOLdanWTjBNZDt35RLq0uIvV5rP
	ghuQkNUVgJqYPDTWIxAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2hNc-00000007hUv-39QO;
	Wed, 18 Mar 2026 03:15:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2hNZ-00000007hTW-3KbX;
	Wed, 18 Mar 2026 03:15:30 +0000
X-UUID: b437a77a227811f1a6de359d7043e138-20260317
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=relPn5El+UWeYWUHrGy33Ucy/WlNcBqzJeqLvUq7Vu8=;
	b=jyTMagoP/LiZWe8NuSie25c1Zo9ts1xhVa3ierahAoLGAuLa2ZWa06rJMG2hK9Sp3Qr1DrVt9IxEbRF536NNNYEjfiFajew1dveaWco4cjwiH2fDiVgFJNnLTV8ogi5ssyTVcxGDUSqqUaBnynmlyQwVqbcvu6NYCO++Jucg2ko=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:9f0faae8-5b71-4a83-8eed-a294d367d5a3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:95dbeb93-f8ef-4ca8-bea0-143568f9ca1d,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:-1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: b437a77a227811f1a6de359d7043e138-20260317
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 933306121; Tue, 17 Mar 2026 20:15:24 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS09N1.mediatek.inc (172.21.101.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 18 Mar 2026 11:15:21 +0800
Received: from SG2PR04CU010.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 18 Mar 2026 11:15:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cFJWJ3VjHyJfS2WamguZ1zK5PKUVAu1vcdoR8uueCBtoN1yaFj270Sv9m94c9WuwshnIUdTiothadpvG1ccO8wZaoGAjFGVd5X83PQtbO4U3Gzc8rG9p8VQHtKpRGvdSrKf/e8kgTaHakWfOQBn1ZWQLFTynpFHYbbZjy7a+xOdUYEjPBpwEbXbpfGQjjEdhVu/0tN0JLwK31AqdPrOk/9Pv/5GziWLDgTxRA0Pk0T7X4fL7p3P9SlnMYl5Pz73R7/7bFHRFxyZ+x08vtyv8CgnO/OERAtkUEM8siCS/s2aO0de4TSuTXXH67wE4k7tTmNG+TwxEDwObIHxhga4qhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=relPn5El+UWeYWUHrGy33Ucy/WlNcBqzJeqLvUq7Vu8=;
 b=JJDNjfCbmJ1i+zZftiv3tJAhLun05oVUbB9e8pe1kGzSqk77Pp1x3pVjcsbn8I05NPVB8q7DnCWROaoL2I1Knunry2r/B4k22pyAml8hMBguTdtYYYJpuOFnyDZLsTqC4VcDmQ4e7r2Ufe2QaAUahLsDqnpOlKX+5tgE6S9/zHsbFP2y71G4JT4YvOkICjDaHObU5gqzifv8qnFBE7ewEDuloDI9NckXeHCOLMeZ4noHfQ1YeFYGwPm3VERVqMNa244K3cHt7eDq59baD/IvYfpFzCJu5jAlbAgGFIQkt4juZUPikq9OIMAjIdLLWt0qd2USHu2aoFDb0BsJSiQ+Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=relPn5El+UWeYWUHrGy33Ucy/WlNcBqzJeqLvUq7Vu8=;
 b=YF+RpXs3VDnKRRvFceoOG1pMWVQUkbSJTPTNAKf6Xp4ERlb+3QjBrLfU4FRUEcXY7+WROGNFnMyNv4t5oPZnvIUDWRX1J5sqXJyOXC64N+S5eKqK1LZgFL/HiicouG9yA2kJ9rt9PluJ6v4fGMpTxkFcByNwmEXJiuHbas5ShQc=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by TYNPR03MB9894.apcprd03.prod.outlook.com (2603:1096:405:3b3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 03:15:17 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.20.9700.025; Wed, 18 Mar 2026
 03:15:17 +0000
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
Subject: Re: [PATCH v9 23/23] scsi: ufs: mediatek: Add MT8196 compatible,
 update copyright
Thread-Topic: [PATCH v9 23/23] scsi: ufs: mediatek: Add MT8196 compatible,
 update copyright
Thread-Index: AQHcrW0oWZSD9fqd3kmagEgYp7lkibWzsAgA
Date: Wed, 18 Mar 2026 03:15:17 +0000
Message-ID: <daee335be4aed346cd157ad41d0889f4c91337b9.camel@mediatek.com>
References: <20260306-mt8196-ufs-v9-0-55b073f7a830@collabora.com>
	 <20260306-mt8196-ufs-v9-23-55b073f7a830@collabora.com>
In-Reply-To: <20260306-mt8196-ufs-v9-23-55b073f7a830@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|TYNPR03MB9894:EE_
x-ms-office365-filtering-correlation-id: b502adbf-5fab-4c2b-9edc-08de849c946b
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700021|921020|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: ywXVaKjjtt3879z0FhMLG1oz/3Vf9IOuPX+KakZM9SjO5VwGnxBis75whny4dAiSigyRusrni/4NmhiHXBccqRHHc1aN/cS+ACgtziX9viWIoJQ4wvVJvsCB7cv1GKlp7RnL1IPxSNfdbnW3uWodTU6wVGqx6iazGzI7w1D/MvTKflJC0Sixmf78qSD234iIGsuzoHgq7k0X52qCik3hfAY7M029I9T/usWNrqKGYiuykOe6fpFjg66/ixq+pfBZypmFTkkHlUJOz6FHlJfj74adH1ob8G5Vq0/pE2vMQIa1tRO/qF8XJNxGp0mNc2g9gP6qh/xnHNVlZAps/6DXJPkpnKFPpYmzAaT4dn05pRKjEXneTal5wfRxo3E49hIAtDtrR4brM6rRXc2r0cL9kdbc+SnE7KUxIYdthtkA51SWEoKZ4XuMyTlnSLJJRT+iO/aHHqdFL5so7w0XVEX81B6MIYusj9Gr1eVX1ZVsLxsCr+TCe1M9nDGbM5gM+Pmorm0LmTK5hN9wHehIJlztKRaHw40xzaamye3GGJQdOgZFM0Fqh5KyjhAa3Dbjnu2lpPy0TmtphzmJZqjtUlM8PjZEaG4INcy8C8OjYmGPZi5zrBCqLO8ly3kqXYvvU8FAUtGPlXurICaj/HwCzTBZkr7Vh/3Eb9AB+cD3wtTTHKZ81+rQqRrdmAW4sSi80kIOz2XkC4AtxW1o0YY3NgIAn0yQKIbsLUvo9j3m01HQC1+axZiM1WsjYQPfenSD+McLf7ZAR731AbFnDEb4hguQAIZs4JZSkLPHB8BaypjwYxyp2m3Epesv/uNlR3Lcdmr+
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(921020)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXFacFlDYUZOanRSN091cTk5VFYxL25QTWdBQm0rNHpZSHdvWDAzMWgrakRG?=
 =?utf-8?B?WGVFMDFTN3pveFZUUXN0am85TjNUTUJONmphRGRDNWw5YU9ZOWVLa0R1UW90?=
 =?utf-8?B?YlZTdGF3aFlKanhJSXZFU0Q5RFlZdERqWm5NTlhwbklMMlVKQ3NvbVQycGsr?=
 =?utf-8?B?T2RPN0QxQU5rRlNqaE5USzZUVTlxYjZSYTk1T0ZqQmpFeEcwVWlGUGRmVWl5?=
 =?utf-8?B?eS8vRmluTStTVjlFU2w4Q1pYb044c3I5ZTI2OTN4TkFqS25ta0RXZEUybjhx?=
 =?utf-8?B?ZUVyWG5nQUN1MDRRNlovU3RLajFwQmVGR0pSeitXTkJuSVFHaXZxMkpVcjJD?=
 =?utf-8?B?NTVlbFdyMXRMZzdyK2NqWjVuKzZRZXZ3c3JkTHVod1dEYmlHT3FFZ1ZDTjZB?=
 =?utf-8?B?ZHptMzVKVGljQTBKMkJKOHlHSFl0c0pySWV4d1VXV1FLa252MWdqdERGRGdx?=
 =?utf-8?B?d2NFZTdjWjNMbUdFREpSY0o3YzdmYXFRbzRxbG50UlJQTmF3ODlnODFETzZp?=
 =?utf-8?B?VFV4NGE5VWVTMTN2RHZaQWVFZk90ZmhFaWJxQTRYYk5SRTM2VXBRV2NMbVhZ?=
 =?utf-8?B?dTZTa0Mwbk5DbEhnZklmWnFwbHNvbzhiN2hIeWR6YVJMbGo5VDZmQU5sbVlF?=
 =?utf-8?B?NGorRlFFUnRXNlQ5aW9oN1VLWGJSTDhnbDdaaS9RdkZ5S2F6SDNzUE5nUDVp?=
 =?utf-8?B?VGx1WXcxNTRWckZvOWQ5Ujh1Mmh0L2l0emJIclFrRERocmpHRm4zR08xRnhD?=
 =?utf-8?B?bTlMb3Rab3JNNjdsZ01KUDB0cVpvbmNjQkJBN09mZnhNTHQyWG0xTVE4b3dX?=
 =?utf-8?B?TEdiVVhmb1hwSGFWYkRzMEkrU3h2OVZDeFRLL3lkK2kwTUcxYVh1bDR0OWx3?=
 =?utf-8?B?c0JUdWN1RDZQYTE4RUZnSTM0R2M0TW1RUEl6WWpUQWFtZWJwT0pGMEZaSHdi?=
 =?utf-8?B?eXFqOWJSdE5HQWlVa1lsNXpaT2xycUd3VkZvbmU1YVZIVzVxcWk5ZXpPcUQr?=
 =?utf-8?B?a013U1hLV3ZSb3lUaDZ1M0pWMTRWLy9WWEZXWC9tM2VFZi85RkZIZGFDYTI0?=
 =?utf-8?B?K09mYTNsOWo4TFpuM0p2dms2aVlSNnAremo4Ym42VW1FOFlpT28vSHVjVGRR?=
 =?utf-8?B?Z2t4VW1vKzc4YXUyekR0NXBkdC9iTFJMT0ltUnEwOEp1WVlUZDNzamtmcmc0?=
 =?utf-8?B?dnYrR1dkVysvbkxiUDM2S1ExdUV3VEdpZUN5bFhGUHNvYWZ5VE5QeWlQaFp3?=
 =?utf-8?B?S21oZm95ZU9qYXdCUGpBS1JlV00xT2RtZWVuWkJaOUl2YU9vSUZHcEh6dHov?=
 =?utf-8?B?VVdFVThYeWYyeU5IRGJsZTA1clQwNFBDRy9ybGN4ODJCb1RTQS9hV0t5d2Ni?=
 =?utf-8?B?MWFvRWMxSDVRdjlPanFSWWZlM0FLYkQrYTlTNUR5SjVjVDk5bFErUVdSK3NP?=
 =?utf-8?B?b2tNc0dsQisrcWNpMC8xOFQ4WjVDWStyNW9ZdmtvSnJwbnM5Rjl5eExqNWgy?=
 =?utf-8?B?b1JEbTJBYWlYblJTNTk5eDBsbkVxbEJxYUplRFJhU1lvRFBrcUMwVTBDRFlh?=
 =?utf-8?B?N0poWENTUTRpTDlQWDJiYzRLc2NRUklCOHJTcGtrRHRodm16OU5wbEtJUTdD?=
 =?utf-8?B?bWxyUEVyQ0g5UERmZkpmTWRsSkFkcHdENGk5SFJsU0pXdFZDNG9XdnBLblA2?=
 =?utf-8?B?RjFXQlRIamhDNExScEdwVHhnM0IyTFQ3S0ZvWE5sdU5udkFSMlViVm1EWGpS?=
 =?utf-8?B?YXhwOERXOU80T1pUVkdWZHVtdUdONFpwaWtiMW92SWNWaXp5SVJzdDNHMkpo?=
 =?utf-8?B?M0ViNHdGRkw3N2oxZkVnTEhkMzFIQ1BJdjJ6OXRzZXBYQ1JER0pPV2FGMHVs?=
 =?utf-8?B?TThIYzkxcmdNTlg5S1JWUWFHcGYrU2FFRTZYUTZ6UlpKSUlmWHExTlRTeEpI?=
 =?utf-8?B?RS9zUytEZnFIWW9OYnFRWWUwc20zNzFBek1SYVhIaE84eURFQzVDSmhYZUZq?=
 =?utf-8?B?U3M3d2tBQm1Gb0Jod2lmSTI3a3pwVjlULzU3UWhhbUVSZmRhbFJMalFHUEls?=
 =?utf-8?B?aVlQWWR2MFFJTlY3V1ZjOENBSmNmMThMYVlzb3VyWWswNnhPc2YrZFVHZmU2?=
 =?utf-8?B?eTAzRkFHMDBCWjFoTnNGeU1nUTJXbmJuTmgzZHZxRTBXTHl4U1FzVGFvMUNO?=
 =?utf-8?B?T2dLUWZTUEtIRnlOZUxOcTlWU2k0RFZselI1WHNPdW1UaUdsZkpNMXpTRzJ2?=
 =?utf-8?B?YmFxT292RjRxcFVUVDgxcVppU29aMlFPY1pRdkxpNnpnNnM5WHZHQ0kyZ0VT?=
 =?utf-8?B?dk1zalpubEo2MWo5dEMzYzhiSXBPaENrN0I1eDk1SzlTUFA3YXlWN1ZVQU9D?=
 =?utf-8?Q?H3Qpqim6dSHqRPZs=3D?=
Content-ID: <590420873312224697DF1C4CBB9E7032@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: R4Ww+AMW7aCflKIASXTGpdCtA2XDy2EOi/yLjcLG+OmAuyTGEpetAojU8B5mttSkS0UDg4xyOU3fuERyOke0gWKSIG/BiLiyYSxi02t0aDusgK1hGKcM76wRoROgKDwFGoz7W+ssE7SHe5YZ0x6zXpsW9o6U7HHdSK6Bo/RvGP04mHDHEfpF4TaJlkCLNDnxcWlYiB+2LSY4KQzEJX/Ioy0aoQTwSRcXUfOPtP5cdSwa0J9M3ysSytryT+RMnPcJDXkEBRhWOR/jDRe+LTBMgN7oANWzLIj5rUCv5d8jNFeSKNTLnwCkaj7/KwTgvrI7huDYydZwNhFbT2lXdREE5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b502adbf-5fab-4c2b-9edc-08de849c946b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 03:15:17.2953
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y3II803iOe3r0qSvNXhBwqT5rfpDXab/4LxkZPvbx6+dgafiMviTv9Ijxeivs+hKwlfTPWZJH6PBexPQQUJ/SvUCRo/7TyHqZAe1VYyhunk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYNPR03MB9894
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_201529_854927_CFA2207F 
X-CRM114-Status: GOOD (  18.61  )
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
> THe MT8196's UFS controller has a new compatible. Add the necessary
> struct definitions to support it.
> 
> Also update the copyrights and authors, without tabs following spaces
> to
> avoid checkpatch errors, to list myself as having contributed to this
> driver after the preceding rework patches.
> 
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
> Reviewed-by: Peter Wang <peter.wang@mediatek.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/ufs/host/ufs-mediatek.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-
> mediatek.c
> index 1dfc299b93b5..cc9357e90958 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -1,9 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2019 MediaTek Inc.
> + * Copyright (C) 2025 Collabora Ltd.
>   * Authors:
> - *	Stanley Chu <stanley.chu@mediatek.com>
> - *	Peter Wang <peter.wang@mediatek.com>
> + *      Stanley Chu <stanley.chu@mediatek.com>
> + *      Peter Wang <peter.wang@mediatek.com>
> + *      Nicolas Frattaroli <nicolas.frattaroli@collabora.com> (Major
> cleanups)
>   */
>  
>  #include <linux/arm-smccc.h>
> @@ -2200,6 +2202,10 @@ static const char *const
> ufs_mtk_regs_avdd12_ckbuf_avdd18[] = {
>  	"avdd12", "avdd12-ckbuf", "avdd18"
>  };
>  
> +static const char *const ufs_mtk_regs_avdd12_ckbuf[] = {
> +	"avdd12", "avdd12-ckbuf"
> +};
> +
>  static const struct ufs_mtk_soc_data mt8183_data = {
>  	.has_avdd09 = true,
>  	.reg_names = ufs_mtk_regs_avdd12_avdd18,
> @@ -2212,10 +2218,17 @@ static const struct ufs_mtk_soc_data
> mt8192_8195_data = {
>  	.num_reg_names = ARRAY_SIZE(ufs_mtk_regs_avdd12_ckbuf_avdd18),
>  };
>  
> +static const struct ufs_mtk_soc_data mt8196_data = {
> +	.has_avdd09 = true,
> +	.reg_names = ufs_mtk_regs_avdd12_ckbuf,
> +	.num_reg_names = ARRAY_SIZE(ufs_mtk_regs_avdd12_ckbuf),
> +};
> +
missing avdd12-supply and avdd12-clkbuf-supply in the DT binding of
MT8196.
>  static const struct of_device_id ufs_mtk_of_match[] = {
>  	{ .compatible = "mediatek,mt8183-ufshci", .data = &mt8183_data
> },
>  	{ .compatible = "mediatek,mt8192-ufshci", .data =
> &mt8192_8195_data },
>  	{ .compatible = "mediatek,mt8195-ufshci", .data =
> &mt8192_8195_data },
> +	{ .compatible = "mediatek,mt8196-ufshci", .data = &mt8196_data
> },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, ufs_mtk_of_match);
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
