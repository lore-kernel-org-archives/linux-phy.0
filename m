Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 449C6C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFK1ny18F6byVRLu+WIp2b4czRTSfE9IwcoNNdItw+I=; b=ROfW1ceg2jg/aK
	X6SnlKkbldoujyfaBYzB0YneRjVpTLpgR7xpppLSwNCCzZXfpD1fthWbI37C5SK7d5Qk7IAMlie4G
	Ht9FCrsyrlgaU9ycytYgwN5wVWfDrRNBbwp/7yF8vijg3vj6P6xBrL560wMht106bI7sHsF1NMrfe
	iWtLKsK4wrrRrhXpOoKQkY130F8C6LRYi4nvrSVCyDsGBAbg1cwnNmsoiXXXga6LcBym3y8i7rn1t
	QM85e0YcBZO+uHk8gWppFzxssYyJOVWEiQGilxZxWCIdqfw6m8FGYCLopdNfXj5dgpR3lxzMsp0o9
	rZ8iHCYDCwFb1YVVvqWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpgB9-0000000BqXA-3oL1;
	Fri, 31 Jul 2026 05:53:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpgB7-0000000BqW2-34nZ;
	Fri, 31 Jul 2026 05:53:07 +0000
X-UUID: 17d0f90e8ca411f1afed4741b24580c9-20260730
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=ceAElTd4S1L0qiIB2C0UmV18JCmlAxoL0UIIOQQHgOA=;
	b=n7zVODtm2hqz1uSVmPPGOjJvTF5G67wHrFeywBgYfkIB6neM1HNl5PUZjy1uprA5bu20TdCeOCAGFEIrW20lLZ0+TvJjQAFuK2b8VL4zmLhMYkfDSmtyzDoEKUoYc9S1wau1YU0pR7ng/EQjnGYADiIlkzgkmf4dk/kI5nEpw/E=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:9915207d-efb3-4eda-80e8-fc9e34d7de41,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:f4f3a66c-3b50-4451-bcf8-9f950fd136e5,B
	ulkID:nil,BulkQuantity:0,SF:80|81|82|83|102|110|111|836|865|888|898,TC:-5,
	Content:0|15|50|99,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-
	1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 17d0f90e8ca411f1afed4741b24580c9-20260730
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1097401463; Thu, 30 Jul 2026 22:53:02 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS09N1.mediatek.inc (172.21.101.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 31 Jul 2026 13:53:01 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Fri, 31 Jul 2026 13:53:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e5VowTPM35M3aGoDUZXj0i2UwnVin9W1fgSG7di1ATqkvfgxrAmB/DUrFf+MwGHPc+EP08ssgpZkTMI/Cb+Iuv84j/ZGxhvOavQZhHnGPKNkschcGvu43T1e6kFHOKbaAezJdFdcqsWBhNs5UQIgEeM8gD7l06j+wtauTxyUBd1bLbVmb2cQo2o9657ME9sVwgTx7QG8MVisAKcoRKAkenjEikWIuLV1K6DETTk56qRgHBd+bpJwCOLyW7ccq0GYLo+yfesmb1JjIx/tBtpLUi3JMwA7JbsZfpRUrcIDVeFTerZt1RQ1LO9lUadtT12dP9HGAJQ/wkK1LTTo4NHEZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ceAElTd4S1L0qiIB2C0UmV18JCmlAxoL0UIIOQQHgOA=;
 b=T4yZBKS+l6LaEvsS4uQei4PiktMI8jr0XDQvCrXj+b4QwcX4ONKPcRCRrKAQ8RtzBXpUn7qx2d4SCFkDz2CkYdx1pxkqq77oipJU+Vb5m/UruRnnkwtyGfa1bH+jLxslPoieFwbFSvRtwmQYwHEOTdOMNHJD5W66Y0BigoII/dQtWPgW1/fF6P6l3/rhZ3lwWJOjV4JKKfZ+ICIgjJ5sIG+WHHxpF26n/fYD70QbBizRonWy0bqd6oJJYmW7E9opPdZseSH1tcsz6nr7odar0Pz3Wd29NbO3RYgcjJ6YvzygUT/wm7Lvldi8lNXB4DI3iu5vbDy4rYZKmB4/XGEHHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceAElTd4S1L0qiIB2C0UmV18JCmlAxoL0UIIOQQHgOA=;
 b=cOGAYUsx5gi/O/wfxkC/VxNqMxVavEEwguxbo1t2rQVyJ1c6oAPyZsolCVFVZHIbi0AtMuZO+QWNvWe1eecdMexVEQstFepuyHLgHR0YbeZ50anYpdH2nOdtm8jSRCsw5VBhowOCAItj46U2/dT7cZqAyMW5hh0CFH5ILEHtMfs=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SEZPR03MB8206.apcprd03.prod.outlook.com (2603:1096:101:192::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.15; Fri, 31 Jul
 2026 05:52:55 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.21.0270.012; Fri, 31 Jul 2026
 05:52:55 +0000
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
Subject: Re: [PATCH v10 24/26] arm64: dts: mediatek: mt8195: Align ufshci node
 to dt-bindings changes
Thread-Topic: [PATCH v10 24/26] arm64: dts: mediatek: mt8195: Align ufshci
 node to dt-bindings changes
Thread-Index: AQHdIAjxv0mMKZT/70G2J0+y+Vn3XLaHIZYA
Date: Fri, 31 Jul 2026 05:52:55 +0000
Message-ID: <af0336f7627a5f23ffdfbb6265e5b0e1b74cecc6.camel@mediatek.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
	 <20260730-mt8196-ufs-v10-24-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-24-bc5ecef202dc@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SEZPR03MB8206:EE_
x-ms-office365-filtering-correlation-id: 80710e19-1421-42b3-ea52-08deeec7f7c1
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|7416014|10067099003|4143699003|11063799006|56012099006|18002099003|22082099003|38070700021|921020;
x-microsoft-antispam-message-info: GlFHiww25eu6AzMbFlxKlCa4V/kBziDpTQ202h0dQHNUtUy0nUOkZlKey4SiRe6b/Sl2zbFSKRHVxsU37PatXD4XZL9mEMl18gJZSFuvbJzWUbXd4uYG9rtph/LWJPqev40jDJ18QSzkUljS7sVp3wiZizndQCfoRqhwnzkgpka95GcoDGHnU+lJk4EHK87sYdyfOYevt73wp7cN3e/9n5ivcdXM8yS7Sv3PekMMYVDzaesNLQCbG/QTU7JKsIyfnPFr54sugq7LU4rQlGBFXFoTScHvTisV9OQhYc8TjBEI1lW3av0B+U067B9b1wMQT3slHoSIXFe7o0NFHnuu+emqEcH1wutSA7E+rBZOw0RCwnpeTQMxTt5ZAYzNyXGROVbrKMysbhyXMAOW8Qhnp9OIoAHXFtuKCw2q6WeXnJWnIVjSurJ8L+7LOZYZVZpHZOpuzDneZIgyxXfz4/q7NhCrTpt1A7PXybS/UK+itD2NUco/iaojIqDchwSOTTFOxF6fQ2H5UOGoJVIrwvm+bPO9FtksyZImFymRz91f+8HHPAPfD3QfpSr8IrO1YmdAQhF9oOtwYa/zmFM2yyWbZkbN9Ut9cWnDzhGHNg9SXYpOlp71vzpDEJos/BVqVuYZLqcgCeIIQULIJtqLv9WszMdox2tBAGBg8wH+LDapixOiezU2ExzqoQDiFhQtnXj9mmZn3nHUpfwTOoUTIIpqfFJuD9eogWwJR3SLDgyZpq93L5NdAmraW3EFReSjjelm
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(7416014)(10067099003)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y004MjEyL3hycjM3bDB3N1FKaDBpdjF2cHlYb04wNTd6ZHVER21GVlhiOTZk?=
 =?utf-8?B?VlBHcXowaXJyOGtMSG45TjRWd2t3Tk1RWWt5L3NxYkVhRlJpajRySWFtWjM4?=
 =?utf-8?B?TWdKSGhFL3F6TXkrWlNmUFdRWnZBSnR0MnJtNGM1VmlWNUFHVGUzay9TRFZq?=
 =?utf-8?B?K0xUSEhYMDJrTEpRQ3I1OWJrcE5xMmJPc0JGYmZIOUVGMkJkQjVhZDZORllu?=
 =?utf-8?B?NlNsWFU5TWdweURPdGYrUzliRitMQ3ljNE5uTkdiaFlSSmVSTUxoVW5JREQ4?=
 =?utf-8?B?Umw4OWRxM1ZJZjlqMHFNU21VTS9yWGhJUmFEdm5HcVhWMzJqZGJvSy9uMkhy?=
 =?utf-8?B?eUtCaWFiVlU1Unp5S0hQVGFRSFowVnJ1NzNHNnpabVljb05qdG8zc0RyT3hZ?=
 =?utf-8?B?Ym5la01Pb2JFcFVaQnBYMGhNMjAzcEJJV25HVzVyRDVFc1p5ZGg2aXR1cG5u?=
 =?utf-8?B?MXI5ZXlRNU8yREtWVHBIUEowS2txbEtRTkk2cCsyL0padDN5cHNKRC96eGo1?=
 =?utf-8?B?alYvaG1aWk5vUVdyOGx5TXEwMnB1YlJIeUFpSXd5ZG43Y2ZQRXM4aFRUd29O?=
 =?utf-8?B?cWZqMWlMak9wVndvUDhST01Wa1BWNnZ5a1JHbjVEYUszSFNENkdnSXExQ1FN?=
 =?utf-8?B?K2pud1lwYU1TMUZjT084bEt0ajkwbWd3L2g0cDlCRGJhSU9JSjUvdlpzRUZw?=
 =?utf-8?B?N09BUDc5S0ZtekhXTmlCZmh5N0kzckhtTlpZaVlRWWhKRzV1ei9DM3VybzBz?=
 =?utf-8?B?V1FleWJEamJQRG1zbzIrYU54SXV0alE1UDRIR0pkbmNvZkdEUmc1NUl6YThh?=
 =?utf-8?B?UjAwSlBpendCRHRVUE13dDUvK0krUTdSOE9KVWNrei9Ub2wxL2hYcXNScUVW?=
 =?utf-8?B?aER1bUxtV1FXSzZyUERsWTVWQy9HZGcyL0dmZ3lIZVpjZ3NiTVFnL1dBdWk0?=
 =?utf-8?B?aW4vZVpvMDlVMjk2SFVrN2laOU13RFc4cDd0NFB1SjNIbTEzdWdvMlo0eU11?=
 =?utf-8?B?aERtNEllVk96TCtGcWtGTW8vYVphU2krOU82ZWthVW5mdTluVllHeHVVSldQ?=
 =?utf-8?B?S2ZnbitEYnNWbTdDMDQ4YlJSWUU4M0ZzbXB0NDVJdmMwMWUydllsNWoxbjY3?=
 =?utf-8?B?OGtmbVJacXhPQ2poaTNIYzkzaStvVC81WElKTFlKSkYxc1gxbW5FL3N2eDIz?=
 =?utf-8?B?b3lwaGhSSERPY3ZzWFdMMVVIZm43ZU5WVkVkMFBNbXZVVStrTGhQeldjL3dJ?=
 =?utf-8?B?RkZSWXhhV0ZGMnhPVm56aFRxUTRobFR0Z1ltbVh0bGFmRTZma2VGYlpCb3Yx?=
 =?utf-8?B?MGN3b3hCblRjdmo4cjRYVk5nNzBxd1BPcUlBRDVVSUV0SzhLQ3RoMEh2QmIr?=
 =?utf-8?B?MnptVmNjYzN4eWpvWHdVM1Y1NG9WOFFIQjhJeTRTWFphdHhyMFNmZ1ZSM3Ro?=
 =?utf-8?B?bzdLTDR3eHl0RWtpaWZpL1loNFR0V0pvTUpoTkhaVFZuYXJoaSt4WkwxT2s3?=
 =?utf-8?B?RFZCZE5jK1dMTTdkYmxZY01KTXFtdDZVS0d6WUtZa3RmYWsxUnBwM0VBZFZs?=
 =?utf-8?B?S0FzSmczS0Y3SW82VmNGWm1manRlSi9CZHZpY3d3UVIwTStBa0cwUUM3ZDlW?=
 =?utf-8?B?dDE4VHhmZzVFa0E5b1gzQ0xLWCtFVXJxY2pSVFhDbHQwU2ZLeFNiZWswcEpn?=
 =?utf-8?B?cWNDdXpDcWhhRjhoSkQ4RFNVM3VFbVJIaXFDT0o1a3M0UnlNdVNoZVorVGx1?=
 =?utf-8?B?dTM3WXRibTNUSzhEMlZlN2dla0NIWWRlaDFkbzk2cms5NkQ1YUdra0FwNDND?=
 =?utf-8?B?K2Q2TTgrSkpLdlY0cG9Ca2ozYlNGWk0xNzJ3bkd1czJhaERONUNJY2RTbWhr?=
 =?utf-8?B?YUZOWGxKTVFKNFJHcDExbEMwYVV2N3NEbGliWnIrOWdYUkh5YWJrRmJra0hW?=
 =?utf-8?B?bVEwVUlaWHhnMHJwV1J2NHJOL2kyTG8vWW40YXlydWlhUFdZcnVSbURkZnh6?=
 =?utf-8?B?dDJoUmU0RTFYdEZYWFNERVU4bE5pYnpNSVhBNXRhR25aVXo0cjVrQWVZcnhp?=
 =?utf-8?B?YkFXL1NaS1I3VU5mdHFMdDhGSVNzYzh4OW83ZXhha2h3WjFTek9qMDRyeEhP?=
 =?utf-8?B?dThTR1JGb0lSVWFrUHdtb3Y1TG9SRWFlMjgvWS8xVDJWZ3l4OTJhdS9OdzQ2?=
 =?utf-8?B?WTY0ak5hanNlQ2oxRHFzeVlEdGJYUjNpUzFNenRUQUNMTXR1S291Q2czUTlR?=
 =?utf-8?B?RXdXRVl4OGI4WFNqSDYwdnFvdnZPSEMxL0RGaU1yeTdsaTVDeGs5eWJrYWhY?=
 =?utf-8?B?K043c2xRb3ZJNktMWFNJTHQ2V0IwOVlsajVWa3lBdE5lWVFGZ25qUnE4dTkr?=
 =?utf-8?Q?P47l20HpT8fycm0o=3D?=
Content-ID: <01B6FD882ECC024D97087B62C6B40FD1@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ls7vdd8unJkmCSXug57YOR3gYN3gNHtnl62htjfWYmznJ9lWLQvmD2os93NZ7iq+jFGfG36STYD6lEWXlU2cK2fS7O5yaDcnJc+jbE74MHaQFwJiXrzHYPG+ULH+dyMlmSmg+yfqUnr3ehSbH3PG1hXjlz1Jp92Cqp8T4MYfPqBdMhsgtG8Kc4tvu48djz/rFDexOOyIIqYUdPoCC9eU8MG0cFASo9sYNIDffx6aErWw6t+qWWSDpS6nfp/pqyIABq2p5nYDB+A9U0hrMNtbf1gC7QA8bpfxPzp1kIHPkwMjYaum3CC0lIswhU06Ort3FEaar5sjGE3uFNFNYGKoRw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80710e19-1421-42b3-ea52-08deeec7f7c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2026 05:52:55.5198
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6q4/JC3XwcnPLkCun0zpYjojaNoKZ5Bxcht9kx19iy3NHzG+4QO4j1O9y67AF+3zDsjbBFMbU8H/DrU6ht6tW8mT0xKS4/T/VZMdkh1rgas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8206
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_225305_793184_5B95699D 
X-CRM114-Status: GOOD (  16.61  )
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
> The MT8195 UFS host controller dt bindings now describe several extra
> required clocks that were previously missing from clock description
> and deprecates the freq-table-hz property use in favour of
> operating-points-v2 instead.
> 
> Currently, the ufshci node declares the freq-table-hz property but
> all
> values contained in the array are zero, thus converting it to an OPP
> table is not needed.
> 
> So, add in ufshci node the rx_symbol clocks in clock list and remove
> freq-table-hz property.
> Also reorder properties in node.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Reviewed-by: Chaotian Jing <chaotian.jing@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index 9aaf8b6edcb5..5ff7b7e543b7 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -1472,8 +1472,7 @@ mmc2: mmc@11250000 {
>  		ufshci: ufshci@11270000 {
>  			compatible = "mediatek,mt8195-ufshci";
>  			reg = <0 0x11270000 0 0x2300>;
> -			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH
> 0>;
> -			phys = <&ufsphy>;
> +
>  			clocks = <&infracfg_ao
> CLK_INFRA_AO_AES_UFSFDE>,
>  				 <&infracfg_ao CLK_INFRA_AO_AES>,
>  				 <&infracfg_ao CLK_INFRA_AO_UFS_TICK>,
> @@ -1481,15 +1480,15 @@ ufshci: ufshci@11270000 {
>  				 <&infracfg_ao
> CLK_INFRA_AO_UNIPRO_TICK>,
>  				 <&infracfg_ao
> CLK_INFRA_AO_UFS_MP_SAP_B>,
>  				 <&infracfg_ao
> CLK_INFRA_AO_UFS_TX_SYMBOL>,
> -				 <&infracfg_ao
> CLK_INFRA_AO_PERI_UFS_MEM_SUB>;
> -			clock-names = "ufs", "ufs_aes", "ufs_tick",
> -					"unipro_sysclk", "unipro_tick",
> -					"unipro_mp_bclk",
> "ufs_tx_symbol",
> -					"ufs_mem_sub";
> -			freq-table-hz = <0 0>, <0 0>, <0 0>,
> -					<0 0>, <0 0>, <0 0>,
> -					<0 0>, <0 0>;
> -
> +				 <&infracfg_ao
> CLK_INFRA_AO_PERI_UFS_MEM_SUB>,
> +				 <&topckgen CLK_TOP_UFS_RX_SYMBOL>,
> +				 <&topckgen CLK_TOP_UFS_RX_SYMBOL1>;
> +			clock-names = "main", "aes", "tick",
> "unipro_sysclk",
> +				      "unipro_tick", "unipro_mp_bclk",
> +				      "tx_symbol", "mem_sub",
> "rx_symbol0",
> +				      "rx_symbol1";
> +			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH
> 0>;
> +			phys = <&ufsphy>;
>  			mediatek,ufs-disable-mcq;
>  			status = "disabled";
>  		};
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
