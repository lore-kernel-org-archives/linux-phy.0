Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26302CCF9E3
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UIv+mg7LnO4zz6/PsizUWm9CG/1c1NA8BoRp0GFAhk=; b=y48cOhiqvaXdQZ
	5p0ySDchb6JV6SgyDwBBB/mR+BoLp+V2UUywfONNlYeL9mMKNHZzs5jEkxZKCb8iLyNR62Es6rTXD
	LsNQSBa5Swv5ICpxzpOvvF0EwOkKoETLP/09P8i14GnSdogeAh3mdkUEhr/50F7o4LvVYuvqqvnnN
	opy2XHkNMG+18NQwVDIjG5g0kvSZYncPeGQVjm+v5gtEr+amzhTa/n0tiUZP+Dg6Gjdh30eT++URh
	N9ZbwPC6hQr8dMxsMEpiTat8pCxMpjYsRQhdZP0lx89fP+tZ8W/EtGV27z6q5VW+dqwp9x0ROOX9C
	9aUHGWE4bS7lpD59c6+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBSy-0000000BKLw-31qr;
	Tue, 04 Nov 2025 07:28:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBSw-0000000BKLT-3Oxr;
	Tue, 04 Nov 2025 07:28:31 +0000
X-UUID: d92e4f58b94f11f09f706fa2197c6ceb-20251104
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=jKMhm7L4+bAkH+hQvBDE/hpqwYM+ArWpqbGU+uF8+Hc=;
	b=cr6wMBLcSyyu1MOQBc783y06BfTmnvgw1j/BxLhyP14KEe7Jw4Sqm3rzcvLk+CtzSn1czwI0DkMHxZrAawtXZQQSGtPjd3KO0A6fpD7o/q840aknWUNP9AWBD6V6LedMm7vO02s1pb7c6iFZX/Y2r0ar/GRvM7TQgizsN5PfAyk=;
X-CID-CACHE: Type:Local,Time:202511040028-07,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:d20df5bb-0dc7-4d25-8b33-c86a3a3e3738,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:94f61be0-3890-4bb9-a90e-2a6a4ecf6c66,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: d92e4f58b94f11f09f706fa2197c6ceb-20251104
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1833474451; Tue, 04 Nov 2025 00:28:24 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 4 Nov 2025 15:28:21 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Tue, 4 Nov 2025 15:28:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eAsUcRrVkpOLN1H783YYkVzbLciAzAdY4PM71Js+gEVOovCYLuA6HvFtVS/KSiFuTmFsj0NoxyQH3LRL4daUaV+fswEPoGC4hh8psweZjeDE9UDPrPlTH7mZ6VJxswiyCMVmHu8Ap+5dP/FUqislFfbHg2YABar+aN8IBSfyFzPj7mcJkZ6HjZUGLdD4411BCTbZg6f2t8UqR2qLBB8miVwpWJ1k7XGKx1JmbMkrFVHp2dk9EgMy93WoZ02nRuTt2bF9LHEnSeJr4+dl+uQRWw+LPiTGTDCQ3gTzchrBitIdUClyCKDGmxWY070KdtjIhGJVpnCCj0gSQwknru/61Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKMhm7L4+bAkH+hQvBDE/hpqwYM+ArWpqbGU+uF8+Hc=;
 b=hO1iwm2mbsz177I3MpNnPC1naEA4wryybMZFTezm5U/Fk0DDwaWmfU7ESCVNWV8xDX+A5b6N7Ha7zyC8OfwZl9/BUK63mIJRRydYgOD3vbZtL1C299FBmk5xJ47Z+VhakNZDmh1jxW5AshN5mqsC7ng+BSiZm9BPXXyUKVcIwpKTror8FpomXar6XL2TdGsqcZXqJvuzBdBhy4UNKtyUyRXHbxsEjJP5+tq7xWiaMbaUdmf3mXdTEvPKDEkLIaLhhNBJMQ9oMmL9MkoX8lDGjD4i2d7oWrehv8Qob1e+rgTG/Ub7YXvKlzUFGjlQssj75AjqY3kkOXs+E7y9qQ7pEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKMhm7L4+bAkH+hQvBDE/hpqwYM+ArWpqbGU+uF8+Hc=;
 b=DmlynacSHnEHA43ZIiiS8ft88L+zH+CGuJ5onEPhQUwsfFUls6EWLViM6BoAXgTdprRkmH6bdTd9ofsjcrOEoWZgCBDNjI9+0FvlHAWAbjfHbmNZNgxBxm1v7ZVYmkrta/FGtkPdvNkMt/ylDiFIK7rxfgrOQiVCiKbT6dv5PkA=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by JH0PR03MB7545.apcprd03.prod.outlook.com (2603:1096:990:8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:28:18 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::4e46:b38a:9317:deb7]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::4e46:b38a:9317:deb7%7]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:28:18 +0000
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
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "krzk+dt@kernel.org"
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
Subject: Re: [PATCH v3 09/24] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
Thread-Topic: [PATCH v3 09/24] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
Thread-Index: AQHcTTo49ypGQfrPO0eMepv5B6/WfbTiHriA
Date: Tue, 4 Nov 2025 07:28:18 +0000
Message-ID: <9ae7495023a8562566ff57bd2dfa60524194ee30.camel@mediatek.com>
References: <20251023-mt8196-ufs-v3-0-0f04b4a795ff@collabora.com>
	 <20251023-mt8196-ufs-v3-9-0f04b4a795ff@collabora.com>
In-Reply-To: <20251023-mt8196-ufs-v3-9-0f04b4a795ff@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|JH0PR03MB7545:EE_
x-ms-office365-filtering-correlation-id: 0cb1a420-3d3b-410d-de72-08de1b73b9b0
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|921020|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?OFY3OVIxK0gxRm5qL2c3NSsvY1RveXhsam5XWUIwSnZTTUUvaGlXaTBtWFVO?=
 =?utf-8?B?RFdVNnZjamNTKytRcmZOSDc2aDh1VS9tdVpDd2MydzlnSFBiMENITTZQbjVG?=
 =?utf-8?B?SWd3MmFCbnBwWWkzaGlzUC81aG9UYktqb1RKZ1U5TjBOWXdHVnpDS2dOSndw?=
 =?utf-8?B?QTRGbHl0azViTkU1TmhVRXFhLytyVHBjVWFYMkJ0U1pQZVdqT1E2MzJtTXVQ?=
 =?utf-8?B?RGxCc2h3WGJRQkJZbFo0bE53L2FMOEIwVy9VaURXcE4vYzluczFIV1NWOUxH?=
 =?utf-8?B?cVZ6MzFUWVBVejN5R016cVhtajRhcnplamVBcytwZnJrM0dmb0NaTWFZUldG?=
 =?utf-8?B?ZWRyKzNGM0JTSGlFZEZwOTRWbDVxdnR1K2tsYnRlM3d0K09JaEFGZVdoUXdR?=
 =?utf-8?B?YlVlbHY2VWFWbThldUlGQ01SdWlRbFdsMG9LV3ovdUZaeVZYWGZNK1hhMmZs?=
 =?utf-8?B?QXBJRW9sL1VoTDJqUGR1NEs0bmJCUGFhbUNCNmw2VWZKMnVuWU1pWEdzcW51?=
 =?utf-8?B?YkF5VU9XQ2lJb3daNUJhR1RGeTZIZlhFWit1SndHamp5eUtLSlVBRjhteVZh?=
 =?utf-8?B?cUV5b3JHZ09MN3dPZjM2bmZkZ1lDYlVkdnF0OHVFTVhjWlMrbitOa2xZc0d5?=
 =?utf-8?B?bWNNUWdibG5peUxRcU0vWEthVGQxYjlhNnc1OUF5dmlza0FIT2hCcUZlWmFj?=
 =?utf-8?B?NTFpK08yL0xSNTR3YXVIZ1RsL2E1S0VDeE9TWnhsdDJCcDB2c3NuRENINnR0?=
 =?utf-8?B?NHp6UGdCeDBzSHJwaHBId2xjc1Q0WTZoeEo3YmRiVDkzMDkwSVBxbG9ONVJt?=
 =?utf-8?B?U0hSMXM5S1U4Rmx4SXZTSU9OeTdqemovZlpkaitqeXFSM3dmTEw1bklyd2Q2?=
 =?utf-8?B?SGJ4MzgzZ0ttb3liOTBwR01ObDVKbjVqNHE2TkFiUlJRemJmeVgrMU01NnZo?=
 =?utf-8?B?N0VzZmhuendNV0lKQitqL1ZnaHMzVjR0M0JQaU40Z1dqaW1nQVdCcTFjWlFm?=
 =?utf-8?B?cUduZVJtMkFrN2FaRnpaeXNxZ3AxdnhVN0RoMDh0WEY3cmdXVWVMSzJPUXdu?=
 =?utf-8?B?NUVsaTRLMWtKUXJadW1Bb2hiOFpoQzBXLzhRSHdKbkVoNnFBQ01aZW9jeTdw?=
 =?utf-8?B?bmUzK1NJWi9FV3FXR1UxeWVteExJUk8vYktQWGo2NGJSWERJb0ZNbnZQcUJX?=
 =?utf-8?B?eENXUEpRQ1p0N2w0ZEVKMlEzZDd3SUdSYlIrQ3ZVVzB1dzZZZTdtS05kakp4?=
 =?utf-8?B?dCt0bHptcnhPYmZMVFZoMWtBclAwcGEwWmtiV0NJb3Z4bXJwZUtQZkJMMVEv?=
 =?utf-8?B?VlQ1dmVZWWI3b3g2eEMwMDRhalo4NStKTHFVTTZ5RTFXSHpoY1hleVRrTStr?=
 =?utf-8?B?TXJjdVVZMTB0M1kycjEycnBXd29WcVR0YVd4YlZrMFF5U2I2S2xvcHJnamIr?=
 =?utf-8?B?clNCWlFwNERZcDd0ZXVyWm5LcDRtUHhTS3YwUHZnRUJ6UFZhNEwrWWN6UTN3?=
 =?utf-8?B?cXA3NWJZUktvL25zMndyVFRqdWxrNTdDL1d0Rk9ITHZFdFNlNVhTZ0JYNnBY?=
 =?utf-8?B?dnpJZlVZQ2xjUTBQaEhCYjd1aklUYllvYjJJNHZma1k2L0lvSURQTTNPTkVv?=
 =?utf-8?B?NysybnlrUFE4MFkrdUE0Y0s3N284bTR0VDI2RGJlTWlkOHBTUkY5Mi9yMXhF?=
 =?utf-8?B?L3Z6TVVRcittcXllNmZSdm02cHlzZ25lMDdBTElJQ3hwWXFyOHBjSStCODkv?=
 =?utf-8?B?M3ErQnlPK0ZtRGpUY2lXTHgwOHN6bjFQTjJ6UW5rMjVmZHdwL09zOVJHV3Fy?=
 =?utf-8?B?OHdLKysrU3pxSlhneE5yakVaK01tcGFlRjdISmtCNklrTWZNYWpRYXFlcm1z?=
 =?utf-8?B?MElwREkwVEJQeDQ5eVFuTGw2eGVNVmJkRjdJTVhxSnJxQ2dlVGQrb0lFdSt3?=
 =?utf-8?B?VHRtKzlRZVZienl5OFJYcnNlSDd6eHc0S2g2S2I3MitOVndTSVpVRmhKNHQ5?=
 =?utf-8?B?bm5DaDFSc3FveVBld2QyRFhnZ0d2Z1JqOFk1NFRFd1piSmkrZWVVclVEOUhH?=
 =?utf-8?B?WFNsRGpmc2Z2V2FRcDRNUWJSV1NxNkFYQUFDdz09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blFqOEpZeTVyRURWeUxUL1Fnc29IcTBpVG1ERDVpZysrS09WdXBLc1YyRlVj?=
 =?utf-8?B?WCtPOGx5OFh3WXZ5UE5KczRPeWxzS1FXTTF1eVd4V05Qa2R5Zlh2YTZTVDAy?=
 =?utf-8?B?aHhVR2hlM0V3T29HUGE5dnUxLytSUUFteWhnYXpQSXpZQzRtWFVRZjVnQk5K?=
 =?utf-8?B?QVUxeFBCT0dLYmRYL3N6NFZJMlpwSy8wVTl6Z1VzYUJlUmgvNDlGckVIeGx6?=
 =?utf-8?B?SU1aTGlRdTVEZzlRUnFlYTRhSDduZGEySkh1WnE5dGR1cXdHaG1HYUZ1a3Z6?=
 =?utf-8?B?dzFzWndFZE1wSEk0UjlxdVpEamxOMWJCNWdST0Z2TE5veVZKczB3MzdJTDF5?=
 =?utf-8?B?anNpS0V4M0RxTFpEYmJKSFBNdjFaUVdqTjk0bHk5SENoSjVnV2tnd1Bmd2xY?=
 =?utf-8?B?U2dKTlh2N0plQ21kcVFnYzdIZG1xdUZHZWpCRStuWVFBQ3dyNjFRdzlxNXZX?=
 =?utf-8?B?MjRxR1RaZlMxblZEY1hZZzhnQjJhcDEwTXZrWjgreHNlWTQzQkdmWHg1SzB3?=
 =?utf-8?B?RGIxL0w4SE5EMm1uMG0zNmdNb1lVbWRxa3JBK2gzQnFJbWZaT3cyZHVnN040?=
 =?utf-8?B?WUU3OFVqdzlhTlk5b2QwZDBTR3hPTXhUMHJicFJqcEZwaDRteGRRNjRETUMy?=
 =?utf-8?B?K2hMdUFPNVB4Yk5hVU1RUHR2RXNMdXBnNEhod3ljSUxNRk9LRjdhQlFFTHNP?=
 =?utf-8?B?b2Y2QWNHYW9lRyt2TlUxRVh4TitEU2F2WEpGbEQzS3FRYzQwY0grb1NjaW5n?=
 =?utf-8?B?SDA2V1VBLzFIWU9jSytnVjNRREFaK3EwTVNZcTNmY2l1ZklzOVF6aDFiSm1a?=
 =?utf-8?B?cUtsenJjT2hIRXl5OGpJVnFxRFliWEJGOVdaaVppUUtaOFFaRVNIcGhOZHg3?=
 =?utf-8?B?V0FZV1pnSDQzdXhTRHBEWHN4S2EvdjNROEErSXlQOGtEcTFmbGhSUXlNY0c1?=
 =?utf-8?B?azh6TjZDR001azU4QlNKOTkwU1Zmem56VllCNDdMWkxKY0Z5T1l1LzFlZVRk?=
 =?utf-8?B?M1N2VG5vZ3VPUnpHNk92STRFOHpvMWxJVE9vR0ZmdmVXM3lIcW5vdFM2S0RP?=
 =?utf-8?B?czJOTG1sV0xwUk9uZEJMKzRhcHR5VmFXWW5mcTJIMFlDb2pWbWhxVFpBVHFo?=
 =?utf-8?B?dSt6RThqMy9oanc5eE85NGdDcURLMDlMbnFOaFFTV24xbHk3YnNOS0t1MExP?=
 =?utf-8?B?V1FLcmpKL1M1TTNXaXBNTHlhZEkzdGZ2bVY0RGhsZW9KdTZZRjcvN1dHdGhF?=
 =?utf-8?B?eEx0SkV3OXlVS1JEVDJqNk5NSnQ1czlBa2U0UlR5aVF4emR3ZFpzSWNEV2Rn?=
 =?utf-8?B?dG5oZy9jOWVERWpTWHhYS1B0YTd4bUU4MnU1VE53YVE1dExQR2M1d2wxQ1Mr?=
 =?utf-8?B?VldPSW91QmRkNERmQnhMY2U3dldtRmpXdjlycWdlNFhNbzYxN1dFYzZwb3N1?=
 =?utf-8?B?ZEpTdk4vYVV3WkJKS3ZqeE9IbEdnczZWOVNScWhScFY3RDk1ckFockRyT3p2?=
 =?utf-8?B?ZTRrT3Y2L0NOQ3Yya3VhZ2NmemRDYllpT3YvZ0Y1YlgzdGsxOEJ3VjBzSXA1?=
 =?utf-8?B?a2Q0Y1VNY2lBRU8vRUp3RmxTRFlYdWNhTTV1czBZUFliUCtzV0pVMFNSWnZM?=
 =?utf-8?B?eFhOVVJwMlI3NW9xNGlaTERIL2NTU2ptY3J2MGFuNm9kWm1FYjRwNTkxcW52?=
 =?utf-8?B?aWk2VDdwNUlBQWRBdUdQTUc5R1N3dHpIWkg1VkdpUzJBRllxRkFJVFBSajFG?=
 =?utf-8?B?d0ljd3JsOUZTcVZVTlhwZzF1VlJtZE51QzVybzRvZmJUQVdLMFhOenorNFkz?=
 =?utf-8?B?MmswV01pdXRpKzA1REpnRXVmZzdad3lIdmxUbjg0R1BUU2d0WlJGMkNJcnI0?=
 =?utf-8?B?YlZCdGFHMjAyYlZFeW83c1k3ZGdPM3hQL1c2bXgzRWk0V05IenhBWHJZTHdG?=
 =?utf-8?B?Z2hLLzdxNjFFdWRGejV2NklsNFdTQ2Jya3dQand6dTQvR3l3SzN6MmtpdjZs?=
 =?utf-8?B?QjBDekRIOUJTRFJIcHRqQnZsblJBWE1mMlpEUkxnb2wwTDNVNWtiMVRDM092?=
 =?utf-8?B?NFJxRUhiQlIvdm5YOStCeTg4QUtvQjBtcm0vN1JJZ1U3NzBlbjl5RkZMSFlj?=
 =?utf-8?B?RUt0NDhUMXo5bG1YdFlJQVF1NkNMMUF0ZmFBVkE1R1RST055U1M1dDVUTTNL?=
 =?utf-8?B?R2c9PQ==?=
Content-ID: <05053CAC8DEB6C4AB8D7D5CCDA215855@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cb1a420-3d3b-410d-de72-08de1b73b9b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:28:18.3363
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWfG5OyhHS+nnU11GiHu6cOpPAc4SM6vH+cmqxdVWCIh4yNrTtfCUsELhmtLesXriti5rJfHlDbbOJiVTF1G2FPVPo2J1RCAgGfJhoX490Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_232830_868006_438EB49B 
X-CRM114-Status: GOOD (  20.81  )
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

On Thu, 2025-10-23 at 21:49 +0200, Nicolas Frattaroli wrote:
> I don't know whether the crypt-boost functionality as it is currently
> implemented is even appropriate for mainline. It might be better done
> in
> some generic way. But what I do know is that I can rework the code to
> make it less obtuse.
> 
> Prefix the boost stuff with the appropriate vendor prefix, remove the
> pointless clock wrappers, and rework the function.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/ufs/host/ufs-mediatek.c | 91 +++++++++++++++--------------
> ------------
>  1 file changed, 32 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-
> mediatek.c
> index 131f71145a12..9c0ac72d6e43 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -562,21 +562,6 @@ static int ufs_mtk_mphy_power_on(struct ufs_hba
> *hba, bool on)
>  	return 0;
>  }
>  
> -static int ufs_mtk_get_host_clk(struct device *dev, const char
> *name,
> -				struct clk **clk_out)
> -{
> -	struct clk *clk;
> -	int err = 0;
> -
> -	clk = devm_clk_get(dev, name);
> -	if (IS_ERR(clk))
> -		err = PTR_ERR(clk);
> -	else
> -		*clk_out = clk;
> -
> -	return err;
> -}
> -
>  static void ufs_mtk_boost_crypt(struct ufs_hba *hba, bool boost)
>  {
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> @@ -633,65 +618,53 @@ static void ufs_mtk_boost_crypt(struct ufs_hba
> *hba, bool boost)
>  	clk_disable_unprepare(cfg->clk_crypt_mux);
>  }
>  
> -static int ufs_mtk_init_host_clk(struct ufs_hba *hba, const char
> *name,
> -				 struct clk **clk)
> -{
> -	int ret;
> -
> -	ret = ufs_mtk_get_host_clk(hba->dev, name, clk);
> -	if (ret) {
> -		dev_info(hba->dev, "%s: failed to get %s: %d",
> __func__,
> -			 name, ret);
> -	}
> -
> -	return ret;
> -}
> -
> -static void ufs_mtk_init_boost_crypt(struct ufs_hba *hba)
> +static int ufs_mtk_init_boost_crypt(struct ufs_hba *hba)
You change the return type but never checked the return value when
calling this function ?
>  {
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>  	struct ufs_mtk_crypt_cfg *cfg;
>  	struct device *dev = hba->dev;
> -	struct regulator *reg;
> -	u32 volt;
> +	int ret;
>  
> -	host->crypt = devm_kzalloc(dev, sizeof(*(host->crypt)),
> -				   GFP_KERNEL);
> -	if (!host->crypt)
> -		goto disable_caps;
> +	cfg = devm_kzalloc(dev, sizeof(*cfg), GFP_KERNEL);
> +	if (!cfg)
> +		return -ENOMEM;
>  
> -	reg = devm_regulator_get_optional(dev, "dvfsrc-vcore");
> -	if (IS_ERR(reg)) {
> -		dev_info(dev, "failed to get dvfsrc-vcore: %ld",
> -			 PTR_ERR(reg));
> -		goto disable_caps;
> +	cfg->reg_vcore = devm_regulator_get_optional(dev, "dvfsrc-
> vcore");
> +	if (IS_ERR(cfg->reg_vcore)) {
> +		dev_err(dev, "Failed to get dvfsrc-vcore: %pe", cfg-
> >reg_vcore);
Since this regulator is optional, why use dev_err ? and why retune an
error since you never check the return value ?
> +		return PTR_ERR(cfg->reg_vcore);
>  	}
>  
> -	if (of_property_read_u32(dev->of_node, "boost-crypt-vcore-min",
> -				 &volt)) {
> -		dev_info(dev, "failed to get boost-crypt-vcore-min");
> -		goto disable_caps;
> +	ret = of_property_read_u32(dev->of_node, "mediatek,boost-crypt-
> vcore-min",
> +				   &cfg->vcore_volt);
> +	if (ret) {
> +		dev_err(dev, "Failed to get mediatek,boost-crypt-vcore-
> min: %pe\n",
> +			ERR_PTR(ret));
> +		return ret;
>  	}
>  
> -	cfg = host->crypt;
> -	if (ufs_mtk_init_host_clk(hba, "crypt_mux",
> -				  &cfg->clk_crypt_mux))
> -		goto disable_caps;
> +	cfg->clk_crypt_mux = devm_clk_get(dev, "crypt_mux");
> +	if (IS_ERR(cfg->clk_crypt_mux)) {
> +		dev_err(dev, "Failed to get clock crypt_mux: %pe\n",
> cfg->clk_crypt_mux);
> +		return PTR_ERR(cfg->clk_crypt_mux);
> +	}
>  
> -	if (ufs_mtk_init_host_clk(hba, "crypt_lp",
> -				  &cfg->clk_crypt_lp))
> -		goto disable_caps;
> +	cfg->clk_crypt_lp = devm_clk_get(dev, "crypt_lp");
> +	if (IS_ERR(cfg->clk_crypt_lp)) {
> +		dev_err(dev, "Failed to get clock crypt_lp: %pe\n",
> cfg->clk_crypt_lp);
> +		return PTR_ERR(cfg->clk_crypt_lp);
> +	}
>  
> -	if (ufs_mtk_init_host_clk(hba, "crypt_perf",
> -				  &cfg->clk_crypt_perf))
> -		goto disable_caps;
> +	cfg->clk_crypt_perf = devm_clk_get(dev, "crypt_perf");
> +	if (IS_ERR(cfg->clk_crypt_perf)) {
> +		dev_err(dev, "Failed to get clock crypt_perf: %pe\n",
> cfg->clk_crypt_perf);
> +		return PTR_ERR(cfg->clk_crypt_perf);
> +	}
>  
> -	cfg->reg_vcore = reg;
> -	cfg->vcore_volt = volt;
> +	host->crypt = cfg;
>  	host->caps |= UFS_MTK_CAP_BOOST_CRYPT_ENGINE;
>  
> -disable_caps:
> -	return;
> +	return 0;
>  }
>  
>  static void ufs_mtk_init_host_caps(struct ufs_hba *hba)
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
