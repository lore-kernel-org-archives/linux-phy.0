Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F792F55437
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 02:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUS+ksYIIKdkLK3Ob6pF2nuAxp+J0wuc7qxNA7rD6rs=; b=0XpOTCjUCK1L/e
	BdjQ+xUvZnTp8USMSY4QTqDRIaig4nvgUsdMeh7iNC1YmLOTlzjpx18OFho0BfUlTkFefobH5JgZe
	ody4fXCLJPZHI2YUtA7stW/nogJM73DhHhEzez6QeNHZMnmmTsxxxKM7K2VQVCmTzANfsAzaafHME
	dqjoaH5jBsHpQL5OSEV3w3oIk8YLSZ4uI40p+bYZGg+Qnx/33o9NtUS+KhTVNJwJnzpA0SJ2L/SwF
	un7iz0Um02a+c5JfrM+Av4vzE1zbFxfqRvkc1CSivVI8ujI9rgt1/r09NbfmG/f/sIhgnYSY6y0eu
	iZUiot5tX/GGZqQF5Nnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv4ZD-000000035sv-0ZIg;
	Wed, 25 Feb 2026 02:23:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv4Z9-000000035s9-3W1C;
	Wed, 25 Feb 2026 02:23:56 +0000
X-UUID: 03be7b9a11f111f1a16f0188aa809bee-20260224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=KqS+XhuJ7VqklyUnv3CK5dPQb0IyBmtFXWZaud3aNYY=;
	b=HptY1u+S40zV9b3Q3vD+6SrnXtBykLPWhfCPjAjIsKBG9X0ZpqDTOxz895jb1jN3rvr3FtDztFwlXtxM3HG1xYf4C+JSb/uhy+29qKwCh7gT4DHRcFL3z7CAG7d6Oj3HymLGC/RJCJo4gsKyoIZ/hGJo72GBzlyLgGDCZTQl+hg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.11,REQID:afd300a5-ff50-4fc4-9b86-4fc2a5c172ab,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:89c9d04,CLOUDID:76243c7b-8c8a-4fc4-88c0-3556e7711556,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:-1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 03be7b9a11f111f1a16f0188aa809bee-20260224
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1579356013; Tue, 24 Feb 2026 19:23:47 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 25 Feb 2026 10:23:44 +0800
Received: from SI4PR04CU001.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 25 Feb 2026 10:23:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i5zDOzy72kYQsr1rNP1ERxJlidrAPscv7CFvEnm7/mmZjXiu8HCbE1kKf1ydJ3uQPo7hKckp35B0vzwrGZexzAY0I6I0W3PpJKQrxO7HP+3enZ+0xLNom6XZqmQXBMOlXgdux4sN8OGaBJO2wK3OX1hI1m+K5Q4kia0SAi7LyWfiBY1lPnlkdgQgshM/qyP3U7XBK5OPj0sjXlZhNzziDGfn59oLtG3MEZ/GfFlap2KzZH7r8LACamRv5xZRuOF5FZo1UgmjoUTQhsVsW7NG8ZnYwtCHxZ5r758+33G0tWjkYgEOrwvUE59fauAdqIq1009j8cm4HECBCA5OrHXK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqS+XhuJ7VqklyUnv3CK5dPQb0IyBmtFXWZaud3aNYY=;
 b=LP97N1EgHaHETe+d2or6o/vbgCgobOqiTDUp92rsOvRcW1KWAU45ADuKr1PCnWnCcF5JywbTzVMVKfwuJdOO7Crm8sKfJH4Uo0DbRGQd7Kpy5k41HZDowYqxPj7Jyq3c0TE27HUqH6IpCRiorawpnhzoNoTMIzZWhuLnttGZ6V2qpLHUEDEyH2dSaSMtmpCgJXiixMDSDJysDZbxwAb7IlQs3oXlOTYY9pjUMR43MEldrjD2Wj4igPSSFkD7D63OXflFbtlSmctNpjduMSaC0LxljKvwRZLK68bncG2iG92iapQ1RfgMn2YS+88X+grVr5tDnmmt8YES7PsCqy9W1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KqS+XhuJ7VqklyUnv3CK5dPQb0IyBmtFXWZaud3aNYY=;
 b=Xgculaw/nltFOfYKD4OMqSYvLGy9gIx9Uxx/GQzibL/W42Pw4PTHtc/l99+OOLqSfoPS4FJzgkDvKL55m0HqV9zx3O629rbOxo73bMf3+m5Oy/9TWpUChijU7i0iP+vSGawuxQKqdLB8GHH1KS7B6CVuRHEcBu4NYHM7M/GM3BU=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEZPR03MB8208.apcprd03.prod.outlook.com (2603:1096:101:19f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 02:23:37 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::a3c2:b94a:70f:e640]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::a3c2:b94a:70f:e640%5]) with mapi id 15.20.9632.015; Wed, 25 Feb 2026
 02:23:37 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"l.scorcia@gmail.com" <l.scorcia@gmail.com>
CC: "robh@kernel.org" <robh@kernel.org>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"krzysztof.kozlowski@oss.qualcomm.com"
	<krzysztof.kozlowski@oss.qualcomm.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "mripard@kernel.org"
	<mripard@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "airlied@gmail.com" <airlied@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: display: mediatek: Add compatibles
 for MediaTek mt8167
Thread-Topic: [PATCH v3 2/6] dt-bindings: display: mediatek: Add compatibles
 for MediaTek mt8167
Thread-Index: AQHcpOFK6ClR0c7kv0icm4BoSEG9mLWSsbyA
Date: Wed, 25 Feb 2026 02:23:37 +0000
Message-ID: <a225bd0f9a38f5984b266e27e2d6a7b75facf277.camel@mediatek.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
	 <66eafae30f9fe00b469e79d385c1ddd24d209475.1771863641.git.l.scorcia@gmail.com>
In-Reply-To: <66eafae30f9fe00b469e79d385c1ddd24d209475.1771863641.git.l.scorcia@gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEZPR03MB8208:EE_
x-ms-office365-filtering-correlation-id: 1cd50242-de06-4652-c4e3-08de7414e243
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|42112799006|7416014|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?enB1SWJPaDhicHFxc29ma1gzYXBubzN2TDJVRGU1MXhNWVdZZVl4ZFMxOEpu?=
 =?utf-8?B?M3NmTm1wdGxvbEoyZnlzSWJrM2taNHd3SmZza2FQbkZCYjkwR21FRWVRTWV3?=
 =?utf-8?B?RCtUTWh1U3JEL0VoQlRMUVlDeHJxYmRPb2RKNTlTVTFTS2FFVFNuN0NrdTZE?=
 =?utf-8?B?NVlqUm9sZEFVRmxFZi9qNllIK1JSOWVuRHRuZEo3SjJNVUpVdmg5TkVkUmdZ?=
 =?utf-8?B?UVA1d3BHRGx5ME1zb0tubnR3T0dseTB5SVZIWUxpekFZdmtQdzBrZFZhaUhz?=
 =?utf-8?B?ZVpSQ1c3bXU3dllVMnRjL0pBWG4rQVlrZmxXSlBvT0pvaFFsVWoxU3d1KytN?=
 =?utf-8?B?eUwvb1E5VHF1cldhNWNyWk1tYlpiUUtNS1pJVVpRWjA2RktuOVBFaVR4WW91?=
 =?utf-8?B?clhDOHZJdWFNMUNKK1NleVBwbUhHbVRqTHFaV2haSjlUUWhRdldXK3UzT3ZF?=
 =?utf-8?B?NVFQSTNleVdmb3B1dWFpaHdYaHpZclNQNGtHREF1S0RvQzZobzR6S1cycHAz?=
 =?utf-8?B?dDRWRmY2UEZNTk5hNVc1R25semZoUHlySG03ZWp1NHdlQnNKODk0emtlQllo?=
 =?utf-8?B?NnVqMEVJVHU2LytnRDJTcFdPUjBOMWExcmZrNVFNejlZMzQ5b0JDSW1BZENC?=
 =?utf-8?B?c285eWVQSFNDVis2STBWZURUNS9YalBlWllodXRFbkdxdW12c3lzZGNGOFZX?=
 =?utf-8?B?L1NJcHlnZ2FtOUJIQzlSSm1FQlAwU1AyOTBoL2g5MXlqc0FTTzYwQkVneTZQ?=
 =?utf-8?B?R1BDbVNQcDFtYm5rL29ZY2NMeEVvcnV0ZjhtNENrYjgwbGRBQ0J0S1VLYmd6?=
 =?utf-8?B?RXBwTDlZK1QrQVNrS3h1cVpaMHRLYjF1MVdxOXZqdGY3S0cvQysvZXc3OG9W?=
 =?utf-8?B?VGlINGI2bStTM2l0bjQzY0w2Yyt3VVRnSllqcWltVUNzemNEUFZaOTJtY1Bk?=
 =?utf-8?B?RDFGQWgyQXhDWnVtSnFuUnFNd0trNStvenRyNEtEbGFaR3VoWTRRaEQ1SUhN?=
 =?utf-8?B?UGVhNkVTNVhTUkdxdzhYWkFwaHdwUDJ0M3p2bnE2QVhNL05Bc0w4RkhqaDNw?=
 =?utf-8?B?U2hjQjNoTDlBS1RKbmNPeEd1Z1JXYzZvTU1xNHhsTW1VMDUwOHJKQjlRelgr?=
 =?utf-8?B?b2phTENFdURIdkRWRnZQblpWVUl2SUNsc2V5TU5FclU5WlJwWDBlNit0TytL?=
 =?utf-8?B?Q2M1T0VadS9JNXdCQmNjcmpoSEpFUFRJM01HSDJXVHp5S3dnaVN3aFVNd1lu?=
 =?utf-8?B?amdxT0dEOHBZK1d1WmZrQXJmOVNvVkRPdGNCK2U5dUIvbnIvNkNhUUZtSjRR?=
 =?utf-8?B?a2RWVXlQQ0M0ckUvVzlMUERsa2hVVkdCUTZYdkZwVHRPdEZlak1YaTRNb2FX?=
 =?utf-8?B?Q0VWSENPVGtzbDNVMXc5QmdiYkgxcDVHS0VwcXUrQ0xXcFRKYjcyc1Vtb3ZF?=
 =?utf-8?B?Y3NGdzdQN1Z0SVZBRnE4K1pLRUJIbTllVGtvMTlBbi9kTzUzRlFaMFZJcXV6?=
 =?utf-8?B?S3h4dGtURzNxbkcyVXUwS2hpb1l6Z213b0lIbFpSTjNuOXNXeWZiZGYwcW9T?=
 =?utf-8?B?U2JhekFsclRpUktHQXczREZseFlQakhkREwyZVV0VHdXU09GZ01yVXRBcVoy?=
 =?utf-8?B?OTEwNWNpOXNRTUNPTWF1S2pTNXJ4Z0lzSE1VMUJlcUxIL2gzR1Y3dE9DeUpE?=
 =?utf-8?B?bmErZkhBYk9pZzZKRlV2enIrMFRiVE5yRzhRMmhpZC9KUndCb2lxN0Q4bk45?=
 =?utf-8?B?Q1ZiTmwyTzU2ei9lakZFTGNRSWdVWDZvVDI0ak5acG50aXBSOUdJVWdmR3lu?=
 =?utf-8?B?SDQ4OGVOWHFpUXNURGd4VCtvV1RuUHZ6V21FZmhCT2dBZzNLNmRDelIyRExm?=
 =?utf-8?B?eWlndWFVWTltUHN2cEQ0eFpycFIzOU1MWnZ5NHlIZVVPRWVHSzQzK3BhaUNm?=
 =?utf-8?B?c0gyVEo2ZGJiM3VGYTZpRTVXcklmTWIvTUNGVUlDMzRTekF5ajlNY1VudWEy?=
 =?utf-8?B?bHl1NGhMN1Y1S0lpdlQvNWlYUEJUU3ROTjlPalpnTXFlQlhHM0xIWDhScmND?=
 =?utf-8?B?UERNejlrK2N6cExJZXhjdUc0VXpvaDZURFh6MjlwLzF0aEVQSVcwQVQ1ZldK?=
 =?utf-8?B?RTJsQ2l2UDI4WHlzRzBSRWZTbUU3djgxejIyWHJVbG1QbjNqYUE5cmxnQllq?=
 =?utf-8?Q?QLpduJWsOPPgeG56jGP/IDk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(42112799006)(7416014)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SjNjRldBQXp0ak9JamROSGVGTk5wVnExcGpFa2lCVys0YlZRL0IxNFpoOVNC?=
 =?utf-8?B?RzM3M3FzRWdqTS9oR0lzMTRaZUxvbmNXMlVBeU5rczV5U1pEelNGWHExSmVT?=
 =?utf-8?B?MU5CYlhyT3hjTnF3VUM4Sjc1REFBNUxZTjBpaFJHYStBWEhnN0tHb01XU3o2?=
 =?utf-8?B?MVJZQU1lbGVGY3phU3dGUGtaZ3oySzFPTjJsUkhIU3ZNUkRTaS9yZGhPa1lR?=
 =?utf-8?B?Yjl4RXo4Rkk4TXlLaW1HVDdOcmx3U2pqM3Y4NHo5UzlRMWYwSGlnYjNERjZu?=
 =?utf-8?B?WEpUNWY2dTJlQVpleXFZQkZxWS9nbURjYTZJL3Foc3ROdlFaYklXT1BEb0RY?=
 =?utf-8?B?bTdiZ0tuYlo1aDJrNHpVclVnZWRGTTJaYjZZY2RLTUJNRDZleGt0cmtxVElI?=
 =?utf-8?B?d1dGbWJmUkFYS1N4R2l5bklnMExvQmQ1U0JQMmdJWGlFbWdyR0pPdmRXc1l3?=
 =?utf-8?B?YzFnaGl5SmcvQkI1cGt6NlBiRE1qbGlzN1pJbGRRMmVMSkR2QlhQSEl3MmQ3?=
 =?utf-8?B?UzNVWFBkcEc5cjZ1NTRvSHgyU01rQ08valNIbnhUUTFpM3dSWnpKNmdab0Rv?=
 =?utf-8?B?WVJ4SzVvRTJlZUZoSzFJTmdXT3FwcTJTcmU4RkJPSFBUVnUrUE9WVjlYU0Zp?=
 =?utf-8?B?c3k4Y2NxZDN6OC84WmtMQm5LcEU1ajBKTFZnVkdaVndWMUphclVxd2V2L3dk?=
 =?utf-8?B?aTl4N2QrZktXN0p3a09DR0g3K1pCMGROMWtWcXU2ZUZ0Um1pYWdDNEVLcnUz?=
 =?utf-8?B?UmFwSUZtNjcrMWhzUVQ2eDJ5YXpacHRISklUQWMvMXpjVW13RHU2Y1BxVytJ?=
 =?utf-8?B?dGVhU1N6UjFtMjlkcnVXRkxDYmZhdVMrdndOYVBPRkI2THNjd24vT3oySlFt?=
 =?utf-8?B?Zm90RWNtTFVSNi9iZ3hUUjVodVRNb0tzUGt1UWxZclpjdk9EODJUcS8zR3E4?=
 =?utf-8?B?ZkNjYmk2T1ovZ2thdSs2bHFoUW9SUXl3NDdyNVBJRDVhMFhiN1RQZGQxSnZF?=
 =?utf-8?B?SlpGQWFBTnpNSVR3Wmw0MGoraGVoYU9yMlp4em42b0t2bGdWM0cyZU1HZ3Ji?=
 =?utf-8?B?Z2oyT3owRllVL0N3TXRSdVRrMDNxbklwRVk3WE5xUUdzYmtvZ1FEYjhjeFA3?=
 =?utf-8?B?RURoaElMWjBjK1VqQmU1OWlZU3UwdGlKTGpNNGhEYXJzTGtSNStLOW5ieDRI?=
 =?utf-8?B?LzBUbC9TZFFFdkdBTmluMmtLeWk3elZQNUd2WENPc0tVMFEvc0l5akJ5a3pw?=
 =?utf-8?B?b0t6QUY0TG9JMWNJQldvd0Z0YU9LZ1l1K0xYcHBxU0o5VmZTcGwzTjljeHNE?=
 =?utf-8?B?U0lKV3VtcFRmMmx5SmkyemN1YjNScWxkc1ROTzRHRHpWY1dzenNjaG11dlc5?=
 =?utf-8?B?a04yUDhSNUFPaEFLQzdCVFlBVnJPcFg1SUxMQWZHODFKS0llcysrNUdGMUQ4?=
 =?utf-8?B?ZTN4WUdFVmZuRS8vVXo5YlB6V3UyYVhZdkdwWnJza29RTGdmWDNwVFk1ejZ2?=
 =?utf-8?B?cTFKMWViTjBaMUdlc003Zm12ZG1wbXpnTWtuV242VXY5czBmc1BlcHh3aWFB?=
 =?utf-8?B?QXp3cURwMDd2SjhwdWY3NW45SFdoNGJKaUlkYk9vSEJBYlhvbWlpbFZiaFFa?=
 =?utf-8?B?Vkp6NUZXMVE1d1ZxcGhadnJZb1VVWXkyTnBvSUdBV1ZvSGR1Nm16cjdxZDZP?=
 =?utf-8?B?YnJ3L2lzNGtodGQvbUhiWHVNaW1wNjJ0dC9sVkVnd0twaXZHNXlPM3lrd0Qr?=
 =?utf-8?B?VFZJNXJMVENMSUNoRmpXbDA0bytDbzJDQzhvaWtUTTcyTEpnOGwwRU1tVk9D?=
 =?utf-8?B?WjNYVW44ZjFNM2o1ZDRsdjViV1Zmd3JwT1RyZGM0RHFmQWgxYTdWQmJLR28x?=
 =?utf-8?B?bTlZK3M3V2FtWVNLS3B3QVdqRTFVMWI1Zy9JcGJNTEFnZ2JYL3VIbjdqNktv?=
 =?utf-8?B?VDNrMER5TThIbGVPcjBnb1pTTFFUcFRRUk83bFJFMnlEVEhIa0hnRnhSdHF0?=
 =?utf-8?B?Zm9pblRhc01XTzdGYlkzNVZqU25yenQ1K2hvS2IrSDdVbnFVTU1MOFR6NFRn?=
 =?utf-8?B?MDUwWE5lZ1JmMmpPakN1M3ViVmg3Z0JVSVFPVWJUOW55eUxOa0ptKzNvUnBK?=
 =?utf-8?B?TTZoTFNicG81aUxqdWpIMzB3KzlCMy9ZK2tCdjVBWndBTG1TaHRDbVFWcUtY?=
 =?utf-8?B?N3lXb2oxZTk3Y3QxU2p3K2JSajJBY2tvSFJVVFJYK0FhZ013eEpGMEs5ME1E?=
 =?utf-8?B?V1FYV08xTWV5YVJBSzNkODQwa0FQTkdGUW1vMHkvQlBGcEs3aXZUU1hVU2NY?=
 =?utf-8?B?RzB2QmVhVHdCNGM3V3JKVncwUElmcXo4N0p0U1BHSkY2YXg5VGlzdz09?=
Content-ID: <FC4280656CFC3E458C7BC3585B056849@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cgaxja/3iaBPa5g+XxH/DMo6DcyNuGh18QPJNzidKXzpzQL9FpCZFAgvAJuyLJlV0y/vH+6SLyzZkzoXE1kvc733QwGZz8JpVtfmQkknPxjoRXaJApLoYYTO8YYrURYhZYb9ELrgPbg/BfFuz00UlazvA6orewTxP8sNdkWka9ChptlM4dNh7DwCEmYGR5hR1K2Zl4xZKScMR73qGUfQwc6SPJtwb+AJyu9x9b/upCYTFpZ9TfB9i8f8Uij810X458KIPQVcP4+QbekQ0t9EBaJHMIwBig62dLi3PdcX5Ek8Cmm3Yc73UWgHYekdhOIy0uyIpbIaXnCEE13R1gC3EQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd50242-de06-4652-c4e3-08de7414e243
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 02:23:37.6893
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /1S7v2a6S5HOY3j0NiiG+vWOdD+xgxycilJOHhPgf4W9nztImN91t+N5mKRlNkH15PG+nE6JTeheZ+5zpwIOLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8208
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_182355_900216_D6BE964C 
X-CRM114-Status: GOOD (  11.55  )
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

On Mon, 2026-02-23 at 16:22 +0000, Luca Leonardo Scorcia wrote:
> External email : Please do not click links or open attachments until you have verified the sender or the content.
> 
> 
> Add compatibles for various display-related blocks of MediaTek mt8167.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,aal.yaml    | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,ccorr.yaml  | 4 +++-
>  .../devicetree/bindings/display/mediatek/mediatek,dither.yaml | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml  | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml    | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml   | 1 +
>  .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml   | 4 +++-
>  7 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> index daf90ebb39bf..4bbea72b292a 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> @@ -33,6 +33,7 @@ properties:
>            - enum:
>                - mediatek,mt2712-disp-aal
>                - mediatek,mt6795-disp-aal
> +              - mediatek,mt8167-disp-aal
>            - const: mediatek,mt8173-disp-aal
>        - items:
>            - enum:
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
> index fca8e7bb0cbc..5c5068128d0c 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
> @@ -25,7 +25,9 @@ properties:
>            - mediatek,mt8183-disp-ccorr
>            - mediatek,mt8192-disp-ccorr
>        - items:
> -          - const: mediatek,mt8365-disp-ccorr
> +          - enum:
> +              - mediatek,mt8167-disp-ccorr
> +              - mediatek,mt8365-disp-ccorr
>            - const: mediatek,mt8183-disp-ccorr
>        - items:
>            - enum:
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
> index abaf27916d13..891c95be15b9 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
> @@ -26,6 +26,7 @@ properties:
>            - mediatek,mt8183-disp-dither
>        - items:
>            - enum:
> +              - mediatek,mt8167-disp-dither
>                - mediatek,mt8186-disp-dither
>                - mediatek,mt8188-disp-dither
>                - mediatek,mt8192-disp-dither
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> index 48542dc7e784..ec1054bb06d4 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> @@ -28,6 +28,7 @@ properties:
>        - items:
>            - enum:
>                - mediatek,mt6795-disp-gamma
> +              - mediatek,mt8167-disp-gamma
>            - const: mediatek,mt8173-disp-gamma
>        - items:
>            - enum:
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
> index 4f110635afb6..679f731f0f15 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
> @@ -23,6 +23,7 @@ properties:
>      oneOf:
>        - enum:
>            - mediatek,mt2701-disp-ovl
> +          - mediatek,mt8167-disp-ovl
>            - mediatek,mt8173-disp-ovl
>            - mediatek,mt8183-disp-ovl
>            - mediatek,mt8192-disp-ovl
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
> index 878f676b581f..cb187a95c11e 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
> @@ -36,6 +36,7 @@ properties:
>            - enum:
>                - mediatek,mt7623-disp-rdma
>                - mediatek,mt2712-disp-rdma
> +              - mediatek,mt8167-disp-rdma
>            - const: mediatek,mt2701-disp-rdma
>        - items:
>            - enum:
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
> index a3a2b71a4523..816841a96133 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
> @@ -24,7 +24,9 @@ properties:
>        - enum:
>            - mediatek,mt8173-disp-wdma
>        - items:
> -          - const: mediatek,mt6795-disp-wdma
> +          - enum:
> +              - mediatek,mt6795-disp-wdma
> +              - mediatek,mt8167-disp-wdma
>            - const: mediatek,mt8173-disp-wdma
> 
>    reg:
> --
> 2.43.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
