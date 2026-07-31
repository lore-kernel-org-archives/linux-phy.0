Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93485C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNfOyDArgpgj5Sz7bTlNQDiJelp1SVa/OrfCnbo+hd4=; b=ZruiJmvQpwVtNi
	75gaIsAMYWJp0E0zk9rKCCulHAMoH61rbQ8K0L7hfPMzmBFf74MGPhVODyhjygkAGO3sGsNIRiKBp
	mvg6+iqJ9YD408n36Ii/tH6iv62jvcN0TV13bvXpZgWfk2WQV0LSYCF/Cnc7UlZ43VKBSBMM+4FoS
	AWMEsMqMhe++Q0y3GV2dHPBgHMxY+F3WCOTYEgbtDahkaLJbwmJVm+fYk1JLknnh0eCnNk74xRrb4
	+hQNAAHqtiEmpfrVCmqO9G5w9AWEQ70TTy5gOwTTNEsapMqKxWpP0EOYcccqvKJkksX6M0uQG4gF6
	0ikQV0HXDG7LgUgDVhCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpg9f-0000000BqBF-10Iy;
	Fri, 31 Jul 2026 05:51:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpg9a-0000000BqAg-3GHA;
	Fri, 31 Jul 2026 05:51:33 +0000
X-UUID: de1c26488ca311f1afed4741b24580c9-20260730
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=WDO3G3lU4kD6kIU15S/wnlRGc1EXk+PoGLxKdMriGq8=;
	b=innS4UmmZDFT9KYze0jf5egeyUu+KwJI8zOyohaJpKNd8NZyGrjWxYM8hzNyko7UDli6aJBgobUAmy/LrWMg3I/OcRKPpbnQ6+wxo1pw2gaeI4cmZGH+Bq356bZC5Q/COfZgm0RVp1rwGXKzNgk2tDnu9nWpDrNavIwuoEUdf5w=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:e0d99b42-e896-4989-9b23-e02ce0eb31c6,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:66f1a66c-3b50-4451-bcf8-9f950fd136e5,B
	ulkID:nil,BulkQuantity:0,SF:80|81|82|83|102|110|111|836|865|888|898,TC:-5,
	Content:0|15|50|99,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-
	1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: de1c26488ca311f1afed4741b24580c9-20260730
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 316509934; Thu, 30 Jul 2026 22:51:25 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 31 Jul 2026 13:51:23 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Fri, 31 Jul 2026 13:51:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMAxJ4yc5gAORORi0ZXJsAgphm+Lm+ISC51BFQQb67ZJLxlRSSil8g3OWUlGSajnoEFLwP64oDYXS5QJdxLt81U4wNiZAq4hFg0azW2Sm9sfn4EpN9zhWC09Vfm+B8lvxjn1MQBq9jIWpH1iJIS422kr7whVluMPpTTZluPeHe/CMCzzvV0lfORaGlsCujKuzqP2XXK9kccLqQGmF6l/LlCWl0C0UFCwiygyGD827gFoIKJGZ/bFKSCJGahOq8YvZxvEXuH4u+ZfzZD6W7R+sfHTN0Wz4xVuf7kTCIzEzrdP4FnaqXyTgHka1mofnDC/p4LxYIBga4Ux+1aBt/vkJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WDO3G3lU4kD6kIU15S/wnlRGc1EXk+PoGLxKdMriGq8=;
 b=JSzjhLc4kULenoQQAUk/eAWyJ3ZIxa72yPtgZY13/gAAb6ETfOZOjyh/olJxuA5wSUNwevf1zlCV8PS33eG//8ulbM8IJVkXs9qq+/nNIMBaCaQuS2KDWHg+yeMPU2NXbaEggaBUEOC9NbGzzPO9PCefmI66qCH6Bi3P5+VJhUF5mW73GKuns8HiMAL6UnB2UiWkFsnEsNEQtsBkkn6tEn3KpZQ7DrDvQ/xE53k/MiGg8c4rZE1HfcO5Oles2lcAXheE4WK4mwEyAs5ZgkiW9BgxRUUxON0AOwhKuF0uHOGTUzJYe70cc3iLfiOLTKhGUjbJlJP2u6gvwAqRNKV2Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDO3G3lU4kD6kIU15S/wnlRGc1EXk+PoGLxKdMriGq8=;
 b=lLobzM7Kiq2Jwsqqd5n3bMpsq5I+8bzRQJirRFCAuV+Ob1v7NguI48Np7KW7tYpwz/2LcKCyPIcXdfnVdRDhyzhrr5CEuO3BUT8LpV56gCk+zK4GLHUmGHwsZgguybB5AavJx8ZaXgDFrtGeEkqZNOXohnaRC8F7c+3rX7nvodY=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SEZPR03MB8206.apcprd03.prod.outlook.com (2603:1096:101:192::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.15; Fri, 31 Jul
 2026 05:51:18 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.21.0270.012; Fri, 31 Jul 2026
 05:51:17 +0000
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
Subject: Re: [PATCH v10 13/26] scsi: ufs: mediatek: Use the common PHY
 framework
Thread-Topic: [PATCH v10 13/26] scsi: ufs: mediatek: Use the common PHY
 framework
Thread-Index: AQHdIAjkjxWiBifiXUyIoTdG868FOLaHISIA
Date: Fri, 31 Jul 2026 05:51:17 +0000
Message-ID: <5bd6efe2079ac94a3e39dba3d1f644cb627368da.camel@mediatek.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
	 <20260730-mt8196-ufs-v10-13-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-13-bc5ecef202dc@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SEZPR03MB8206:EE_
x-ms-office365-filtering-correlation-id: 7261d0e3-827f-41ea-c938-08deeec7bd3f
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|7416014|10067099003|4143699003|5023799004|11063799006|6133799003|56012099006|18002099003|22082099003|38070700021|921020;
x-microsoft-antispam-message-info: nKRkzewtuM+RVPwVbVvW7rH3avD/JrWRzShzA+yOuh+kPlKUcuFvfcYwBq+vWZ1d3JdiirKsLURfUrTiid7lLQ+eBO0IKtE3h6I2louH7Y19awIIKS2Q4A+8vqQsGvfZi37T4vvPAQfXbEp25NMt8n37m2dHijh4wSgE5Kmiphv/BiYI8zjCZ/YO6hTI5yuUG4JeSYjDYW2ga2ZTv0xVk5sA99wvqO1ZFd3bKFvk2MG7KJ4tUr+Gvs/MDFbRuhhGJfB9t0eM0LlH39OaAfSTdETSs2uFL4mOuwjMuzSIfVil5Z+ZlXiGyargEWxlKgD+3D2efRBF6rf8N9+E1uoCdcoF9iZNUOeQt6Zai/Iol2NNjriPmICLz9fVAgBtvoX02320IZKFPVfuZ/OkW8dygj8xKlDUx9o5wsUaal0QJBK8uYzg/Ro8CSeIL+3EUhYPsqj33Ke204XHWIZ8bua1iHrcGQv/2hxhhw8HzdpZC/Gd45Bejj7PXMmp1HsOoREyXr8YihHb1nrTtvzTbU4jLx+xW2kfRKF225PC1RuQC81LzISyazjtu1s38O2I2kvQnzQ+IZA3eNHn3ZGVdRv9MvNOpB8yrAEzw0zKXBc85+gsGcfCpSVj5Vsz62EKpdIxD13cgbI9GtvvbJ9HQgLyoF2AHPQcFHC18/rXsD96F9hhM4J3N3BLjqUlO9LXVQtPsNUWRTHQ5dplB09dSsrd6k6floulj2N5nOK6zaAOJX48A1gzetj5Gff5cgoTU97C
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(7416014)(10067099003)(4143699003)(5023799004)(11063799006)(6133799003)(56012099006)(18002099003)(22082099003)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2ZIQXZJWjVKUzlGSEVxUWlaREs5ZXZpUjJEOGJqb2sya0FTeU1IUlJjMVVz?=
 =?utf-8?B?MmwzaUFJZHlkR3RyU3hBYmZ5NWFYU2IrMHQ2WHV6L21uTUVUdXBiV2JINkIz?=
 =?utf-8?B?SW4xdlBsN0ZHaEl2bkRFMDFjY2FlYVhGRzhCN1FLUUVsSnJ2OU5BSmJJeVdZ?=
 =?utf-8?B?OUhwSER3Sk45NFFWNDNMQ0l4TlBEK1U3aGs2dUE4RmdaUUVPckFTOXhjbkxS?=
 =?utf-8?B?c0k0K1U4SFRvaVJqWWZaZjZ1cWpodnVmMTFYZlhoeHFhQ2VJczNNVGZxNWtW?=
 =?utf-8?B?Rk1rY3d2L0x2Rm1UTzdsbEtQOUhVQjlqTzUvYitGRDRaSUtJOEtYTSs2cXlX?=
 =?utf-8?B?YXVubG9VMWQrbmpWNytEV0ZBaHhsZXJaOFFiRkwrVHkyUHFnR1NMdEVtcFg1?=
 =?utf-8?B?U0dsL2kyaG9DaWNRUjBoRDZXcHpZSHRJVmREcS9DVHZocHFzWEEzNlVRT1dK?=
 =?utf-8?B?ZjVSVVFZeUJHcFpqSlBSMnp0QnFCR0wvRFo1VVFOeWhaU0hMSHBZU3prSUlY?=
 =?utf-8?B?MXhzYzRvT0d5b1M2eUE3amR0TXNTZW9JemE3YXB4Yi94OEZmQlNseVhnRlc0?=
 =?utf-8?B?OHF1NEFabjRadno1amdpaVpPVHo1N1d2YXZSYlJvd2ZFb3ovZStOZU1PRzVC?=
 =?utf-8?B?STF6Y05OVVR0WEpvYnJoYWxybUZ3YTl6ZlVhYllKT2duNjhoQUdtNk43YW92?=
 =?utf-8?B?bjZEY1BzZ2JwNmdBcGRyZVNEcFRUSUV2OVIva0tYUnFYVzhFNFlWc1hzWEFO?=
 =?utf-8?B?M3JvRjZnWlJuTDJzVit2L1F1TDNhMDloZmcvcUtKSitxZVB4cm1QYTFzVURS?=
 =?utf-8?B?T1p3ZjFLT3NFSUZRSG9ZZzFPUHdIb2FKZ29CZjMyRUtaZnVSblBFY1p1aUtO?=
 =?utf-8?B?R1VBV0RKVVVLNEtOREpQTHdIYnRybHVDM1E1bVNCcDZNZ2p2YVRPbEx3RjI4?=
 =?utf-8?B?WXEwc2RMT2l0a2FITnhnU2kvOTRVTVA1WjZ6dUM2ckVnUU5OMWRBSU9sZ0ox?=
 =?utf-8?B?OHdHc1NOeXhhMUxyUDY1Nko5ODQzNkZaNENud0dLMkRpRS9QanNIWHlFZ0lV?=
 =?utf-8?B?U1hBY3VFOW5MZHdQUEs1dkxJZHpWV2V4amQrWk1TY242RGp0N2pGcS95MXh0?=
 =?utf-8?B?SlpxdkVleVRBU3pPOE0vb3ZRVDEwaVk1UElJaDJ4OW1MNDl5dlgvMGNzamhJ?=
 =?utf-8?B?SC9tLzE4L3YrQitZRXUzQWVTd25aM0NzVWJ1SUlmTWs2bmlTYkxwcDlaUHBQ?=
 =?utf-8?B?VUFDUE9MbUg2WjZaK3NlQ08vZW53NVlLZU9YRE9CRTN5QjRZV0l2ZlNaMUp6?=
 =?utf-8?B?Z3FZVFdSZUtBOW91Y1dBTVFzamFYQ0UrUUJGZlVjZjFYRW50c0x0WWhheFZW?=
 =?utf-8?B?Ulp4b2gxTDJNdFp3eS9odU5Md3FQTHBQZjZRLzd5eFhTYlg4NnVYVGp2YXNj?=
 =?utf-8?B?aEozMFU0NFBHc0ZNMjFrOXkzWG9NZHh3ODB4V25tMk5qRXlhWkNkelBGVko4?=
 =?utf-8?B?VXNkby9lT2w4MjY1ZDlZWWRsRjluTXRVYlgwUllISStyQVNIZHBYTG1yUFEy?=
 =?utf-8?B?RFF5bGxoRnZBVk94Ty9VbU9Ib1hvUmM1a0taMmloNm1tZUNiR3A3MzltZVFp?=
 =?utf-8?B?WlVGNXVNZUZIejRJcDU0SmlRQm5hYmo5SW4wblE2dDNQR1pYVjRmWFN4MU44?=
 =?utf-8?B?K2FVbm0ra0g3WVZ1Z01QTjdvQ2tvdXNSYkpaUHpNNVdoVGZmQ3JTMnlKcjlo?=
 =?utf-8?B?bTk0Uld6RDFFS0FDNnBramVSd2VMTHNDQkdPTTlETGJ4aWtnQ1RyWjA5cHk3?=
 =?utf-8?B?d3REUGhrOEtrMkNhd1ZRSndmak43SkdXT2lvYmc0YTM2NVUvc0NOa0pzTlF6?=
 =?utf-8?B?ZGlOOGNLcDJLcFhmVFNGbW9JbHEvcFlXNjQ0ejg4ckdFUXhFWnJFdUV6dW9P?=
 =?utf-8?B?K01nY2kwMHg3aUF0MmZBYlZhODNUZ0tRV0cxeVBXMytMV0pBRmpVczV5LzJX?=
 =?utf-8?B?c3RQa2hsSEt3WDg0RHVwV2YwOVBKYWpFU1FtR2I2NXI5cTBJSm9FZDdyWSs2?=
 =?utf-8?B?TW01Tk5Qc0ZoNmFwWmRkUGp6NTdlRi9XbG5JVUU0bUZwNkhaNjBBZzRjVndv?=
 =?utf-8?B?c2JRTThBZGNoMHdYUGZuR3Y1U1JOWS9iR0FqZWVyUnh5cUpHYXZ0RnBpK0VH?=
 =?utf-8?B?RGQ0amVvbE5qdjV2cHVRekJieFB2L0N6T08xajcxS1FKRytlZHA0YmFrVjVZ?=
 =?utf-8?B?ZmlHclhCRmNBUzIvT2NTYUR5aWQzeFNhL2gwbE9MeHVCTWJhOWVRWnJod0w5?=
 =?utf-8?B?cXc3N0hXckZFVmYrdk5SeVpsa2dZeEFtNHJJT1laRmlKRlg2VFoxcjNNK3RM?=
 =?utf-8?Q?pb4BthMgmidEcfHo=3D?=
Content-ID: <5FF0781839C0A8408311AC48B4ED6CA6@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TUI0tNWqnDckghMwfVSTXIU4jmHqNtoaYpwyVIOSS+MFoHnzHVKqR4Dt125eCLGrHKj/sor1n4oqD3NHNRN7TcZgOWp8jI8s9MGkRmbbvq5a6MDN9sKqiaPjvAq+99VnCKPPnr/uV4ez4/S6r3C6DcC2goC2U+5qmK5TzriHwP3ns4YS8zKQb7ENM3w9CDtdRN0J36jcnxHghuQ0dFHyDMd9NDpfhhnkWcUDW697n2ZIYf1t9qGqX5NI+DhgqEmIV1bnfzDUOxYelLSdoTbEAco67ke9gW8dAUG/NrfaEIToI4pFsWyvzX+TTm1QX95+wYEQg8HwkOvC+4qgzSNDvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7261d0e3-827f-41ea-c938-08deeec7bd3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2026 05:51:17.3852
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zOyY4J9rkDj6UpGYNCCtJwHV66dUxd+ClUAGut+2HCelbXnuLt+vrNoU+peTWP4WgRLNBJ6Dstz6U/M0zlJLXzgu3+o2pVGDyWZjtGRtjJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8206
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_225132_544944_9D04B7A0 
X-CRM114-Status: GOOD (  22.33  )
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
> There is no need to reinvent the PHY framework, especially not its OF
> parsing.
> 
> Change the code to simply use the PHY framework to acquire the
> device's
> PHY in the ufshcd init, so that it's device linked to the right
> device.
> 
Reviewed-by: Chaotian Jing <chaotian.jing@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  drivers/ufs/host/ufs-mediatek.c | 134 +++++++++++++-----------------
> ----------
>  drivers/ufs/host/ufs-mediatek.h |   1 -
>  2 files changed, 42 insertions(+), 93 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-
> mediatek.c
> index e5527969a5e6..385f0180b230 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -293,44 +293,6 @@ static int ufs_mtk_hce_enable_notify(struct
> ufs_hba *hba,
>  	return 0;
>  }
>  
> -static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
> -{
> -	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> -	struct device *dev = hba->dev;
> -	struct device_node *np = dev->of_node;
> -	int err = 0;
> -
> -	host->mphy = devm_of_phy_get_by_index(dev, np, 0);
> -
> -	if (host->mphy == ERR_PTR(-EPROBE_DEFER)) {
> -		/*
> -		 * UFS driver might be probed before the phy driver
> does.
> -		 * In that case we would like to return EPROBE_DEFER
> code.
> -		 */
> -		err = -EPROBE_DEFER;
> -		dev_info(dev,
> -			 "%s: required phy hasn't probed yet. err =
> %d\n",
> -			__func__, err);
> -	} else if (IS_ERR(host->mphy)) {
> -		err = PTR_ERR(host->mphy);
> -		if (err != -ENODEV) {
> -			dev_info(dev, "%s: PHY get failed %d\n",
> __func__,
> -				 err);
> -		}
> -	}
> -
> -	if (err)
> -		host->mphy = NULL;
> -	/*
> -	 * Allow unbound mphy because not every platform needs specific
> -	 * mphy control.
> -	 */
> -	if (err == -ENODEV)
> -		err = 0;
> -
> -	return err;
> -}
> -
>  static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
>  {
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> @@ -1185,13 +1147,21 @@ static int ufs_mtk_init(struct ufs_hba *hba)
>  
>  	ufs_mtk_init_mcq_irq(hba);
>  
> -	err = ufs_mtk_bind_mphy(hba);
> -	if (err)
> +	host->mphy = devm_phy_get(dev, NULL);
> +	if (IS_ERR(host->mphy)) {
> +		err = dev_err_probe(dev, PTR_ERR(host->mphy), "Failed
> to get PHY\n");
> +		goto out_variant_clear;
> +	}
> +
> +	err = phy_init(host->mphy);
> +	if (err) {
> +		dev_err_probe(dev, err, "Failed to initialize PHY\n");
>  		goto out_variant_clear;
> +	}
>  
>  	err = ufs_mtk_init_reset(hba);
>  	if (err)
> -		goto out_variant_clear;
> +		goto out_phy_exit;
>  
>  	/* Enable runtime autosuspend */
>  	hba->caps |= UFSHCD_CAP_RPM_AUTOSUSPEND;
> @@ -1230,7 +1200,7 @@ static int ufs_mtk_init(struct ufs_hba *hba)
>  
>  	err = ufs_mtk_get_supplies(host);
>  	if (err)
> -		goto out_variant_clear;
> +		goto out_phy_exit;
>  
>  	/*
>  	 * ufshcd_vops_init() is invoked after
> @@ -1255,11 +1225,22 @@ static int ufs_mtk_init(struct ufs_hba *hba)
>  
>  	return 0;
>  
> +out_phy_exit:
> +	phy_exit(host->mphy);
>  out_variant_clear:
>  	ufshcd_set_variant(hba, NULL);
>  	return err;
>  }
>  
> +static void ufs_mtk_exit(struct ufs_hba *hba)
> +{
> +	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> +
> +	ufs_mtk_mphy_power_on(hba, false);
> +
> +	phy_exit(host->mphy);
> +}
> +
>  static int ufs_mtk_negotiate_pwr_mode(struct ufs_hba *hba,
>  				      const struct ufs_pa_layer_attr
> *dev_max_params,
>  				      struct ufs_pa_layer_attr
> *dev_req_params)
> @@ -2272,6 +2253,7 @@ static void ufs_mtk_config_scsi_dev(struct
> scsi_device *sdev)
>  static const struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
>  	.name                = "mediatek.ufshci",
>  	.init                = ufs_mtk_init,
> +	.exit                = ufs_mtk_exit,
>  	.get_ufs_hci_version = ufs_mtk_get_ufs_hci_version,
>  	.setup_clocks        = ufs_mtk_setup_clocks,
>  	.hce_enable_notify   = ufs_mtk_hce_enable_notify,
> @@ -2332,48 +2314,15 @@ MODULE_DEVICE_TABLE(of, ufs_mtk_of_match);
>   */
>  static int ufs_mtk_probe(struct platform_device *pdev)
>  {
> -	int err;
> +	struct device *dev = &pdev->dev;
>  	struct ufs_hba *hba;
> -	struct platform_device *phy_pdev = NULL;
> -	struct device *dev = &pdev->dev, *phy_dev = NULL;
> -	struct device_node *phy_node = NULL;
> -	struct ufs_mtk_host *host;
> -
> -	/* find phy node */
> -	phy_node = of_parse_phandle(dev->of_node, "phys", 0);
> -
> -	if (phy_node) {
> -		phy_pdev = of_find_device_by_node(phy_node);
> -		if (!phy_pdev)
> -			goto skip_phy;
> -		phy_dev = &phy_pdev->dev;
> -
> -		pm_runtime_set_active(phy_dev);
> -		pm_runtime_enable(phy_dev);
> -		pm_runtime_get_sync(phy_dev);
> -
> -		put_device(phy_dev);
> -		dev_info(dev, "phys node found\n");
> -	} else {
> -		dev_notice(dev, "phys node not found\n");
> -	}
> +	int ret;
>  
> -skip_phy:
> -	/* perform generic probe */
> -	err = ufshcd_pltfrm_init(pdev, &ufs_hba_mtk_vops);
> -	if (err) {
> -		dev_err(dev, "probe failed %d\n", err);
> -		goto out;
> -	}
> +	ret = ufshcd_pltfrm_init(pdev, &ufs_hba_mtk_vops);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Generic platform probe
> failed\n");
>  
>  	hba = platform_get_drvdata(pdev);
> -	if (!hba)
> -		goto out;
> -
> -	if (phy_node && phy_dev) {
> -		host = ufshcd_get_variant(hba);
> -		host->phy_dev = phy_dev;
> -	}
>  
>  	/*
>  	 * Because the default power setting of VSx (the upper layer of
> @@ -2382,16 +2331,12 @@ static int ufs_mtk_probe(struct
> platform_device *pdev)
>  	 */
>  	ufs_mtk_dev_vreg_set_lpm(hba, false);
>  
> -out:
> -	of_node_put(phy_node);
> -	return err;
> +	return 0;
>  }
>  
>  /**
>   * ufs_mtk_remove - set driver_data of the device to NULL
>   * @pdev: pointer to platform device handle
> - *
> - * Always return 0
>   */
>  static void ufs_mtk_remove(struct platform_device *pdev)
>  {
> @@ -2448,9 +2393,8 @@ static int ufs_mtk_system_resume(struct device
> *dev)
>  static int ufs_mtk_runtime_suspend(struct device *dev)
>  {
>  	struct ufs_hba *hba = dev_get_drvdata(dev);
> -	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>  	struct arm_smccc_res res;
> -	int ret = 0;
> +	int ret;
>  
>  	ret = ufshcd_runtime_suspend(dev);
>  	if (ret)
> @@ -2461,8 +2405,11 @@ static int ufs_mtk_runtime_suspend(struct
> device *dev)
>  	if (ufs_mtk_is_rtff_mtcmos(hba))
>  		ufs_mtk_mtcmos_ctrl(false, res);
>  
> -	if (host->phy_dev)
> -		pm_runtime_put_sync(host->phy_dev);
> +	ret = ufs_mtk_mphy_power_on(hba, false);
> +	if (ret) {
> +		dev_err(dev, "Failed to power off PHY: %pe\n",
> ERR_PTR(ret));
> +		return ret;
> +	}
>  
>  	return 0;
>  }
> @@ -2470,14 +2417,17 @@ static int ufs_mtk_runtime_suspend(struct
> device *dev)
>  static int ufs_mtk_runtime_resume(struct device *dev)
>  {
>  	struct ufs_hba *hba = dev_get_drvdata(dev);
> -	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>  	struct arm_smccc_res res;
> +	int ret;
>  
>  	if (ufs_mtk_is_rtff_mtcmos(hba))
>  		ufs_mtk_mtcmos_ctrl(true, res);
>  
> -	if (host->phy_dev)
> -		pm_runtime_get_sync(host->phy_dev);
> +	ret = ufs_mtk_mphy_power_on(hba, true);
> +	if (ret) {
> +		dev_err(dev, "Failed to power on PHY: %pe\n",
> ERR_PTR(ret));
> +		return ret;
> +	}
>  
>  	ufs_mtk_dev_vreg_set_lpm(hba, false);
>  
> diff --git a/drivers/ufs/host/ufs-mediatek.h b/drivers/ufs/host/ufs-
> mediatek.h
> index c63740b98e85..8b3cd17e6227 100644
> --- a/drivers/ufs/host/ufs-mediatek.h
> +++ b/drivers/ufs/host/ufs-mediatek.h
> @@ -195,7 +195,6 @@ struct ufs_mtk_host {
>  	bool is_mcq_intr_enabled;
>  	int mcq_nr_intr;
>  	struct ufs_mtk_mcq_intr_info mcq_intr_info[UFSHCD_MAX_Q_NR];
> -	struct device *phy_dev;
>  };
>  
>  /* MTK delay of autosuspend: 500 ms */
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
