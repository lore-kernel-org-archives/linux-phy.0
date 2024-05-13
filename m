Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 292E0C25B78
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lK4SjQ7Fx6rf7XgvjsYnnL+leWRM+aTSltyAmUGe0E8=; b=mgUfKKexOEOhrx
	A+ayP5iPhkVP4THj+nRscRT4ckXl8FUGjyskeofISXyASyqzvSG/gxlFII/HCO4OiQC7JYGEY9sNt
	J8TNMffjlckT3cmqIjMaHHtJk1Gl/poL3DTncz2o2zvdrlhLMag6cEEd6UryM+VLnFIdtN+RpwMTT
	PN/vsLPfS6aGsSyflZOxvl3XLcZWIBPiZlgr286Lqu2AF5JGyWWETbJezQXNTI4vXlyC6AqwZFWoO
	t1qFVPBQof9Zz+jSZx7HhAGXKO3+C5JsfM4DLRA8SAMQjgUX2wiebC4tbYCtJKWZKht9qLmNuumB+
	lda5wBlU33Vjjv0sOVGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WdM-0000000DBgA-2j9c;
	Mon, 13 May 2024 14:26:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WdH-0000000DBcn-2pMa;
	Mon, 13 May 2024 14:26:29 +0000
X-UUID: c5c4017a113411efa8f1cd58ee6c2400-20240513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=zoPNrDnEMUJy92wYjpg2AHGTirvYcUaa9qQzc+RrRow=;
	b=QpJ9Qs5sm28JSPYKR9GmLqjFJM8bBoFQ5KAEY8GdT0z9hhCMUCuglYdk+bK6tJv2rQZWoCwokrpkXv8IYTZJouwCDaMPVaNyZdS8kGUCyOBo6YOjVkJaj7FI1OtWGm3Gqe7ulJr+eQ/vfiOHeMFKUsM25/mVUtksDycWBmCF7z0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:d4b661cc-8504-4b97-bc3e-f6e7598c03be,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:f71e4c87-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: c5c4017a113411efa8f1cd58ee6c2400-20240513
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <liankun.yang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1111384391; Mon, 13 May 2024 07:26:22 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 13 May 2024 22:26:15 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 13 May 2024 22:26:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrD3gOIM6JxsAtqwBSyQSKQEnI21UeY3ePnPiLCa6rI1KvJZ1RA95egWFdC7PcMInezlB5gW5UERpb/xia2YCp5LFiNgbb4YGHOYShWYMUDaUtGYu2dFz16J/73+bMOxjPlXqi+do74arJte7EeQ3tJqlCPYj3prcVt3hvW/gyyI88miixGDnuIVZzNJ7O5A+6m1hEmlk5aNXxmAVU70ZC7GBqHyBH67XVkaPS0ZrQTxjIisPTmbi+Ij3Mp7Lvpk6PGJlK0UdBvEtZuTG68DnKypCeOUwsVnu1ZIpZmvIq9oMJElqfomX7sWyQXA7hDghwH4VAw6brOqvwtO08JYOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zoPNrDnEMUJy92wYjpg2AHGTirvYcUaa9qQzc+RrRow=;
 b=Qzh9wIUjIRQaFjb5drKBwMLtg/8RSeV9qbHfTyp4LNtej9XR0nWmN/Uky6w41x657RwaKyC/Nz6PkArUVb1wrGqS6pyHy1msVKjEoqJ66y/zUfYUAvY1kgHEtMT6zUW04PaHVCw979LRzp1uel8sLCbhLOb7lqzlvmYYI4ITuagN+n17tJhCLvhEc38fBP4jNW05n4d7mmX5ZkOXe/RXnBgqz4WJM7jGeetSKwE9lo79oZV2Nq+JRO9IyarBjKvRfkGqGJ9gdLTyNy9tYPnWWJ2WK41qx9TuawWhF3Cm1Zzg9FZ01GiBytULPolYNoRF5E5YVHUgLYxCYHsY4SH6ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zoPNrDnEMUJy92wYjpg2AHGTirvYcUaa9qQzc+RrRow=;
 b=m+Y9z8aISDIL/pzAz4bCIMOil4QjIXWL8wDZANVNY7nlXTzJyPV1kREkALY9O1KmoITeohjTDZJusYhUhgRU3SXY6ECYcRGoYl9LOlp3q0UitwJeKfaQCx+zw5zsYo/OJKxoyxieiTsOlZLgBpyvgwlWPFL3PKl1evNxHFNVn1o=
Received: from TYZPR03MB5760.apcprd03.prod.outlook.com (2603:1096:400:70::13)
 by TYZPR03MB7409.apcprd03.prod.outlook.com (2603:1096:400:41e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.25; Mon, 13 May
 2024 14:26:13 +0000
Received: from TYZPR03MB5760.apcprd03.prod.outlook.com
 ([fe80::10a4:6aaa:bf25:96f3]) by TYZPR03MB5760.apcprd03.prod.outlook.com
 ([fe80::10a4:6aaa:bf25:96f3%5]) with mapi id 15.20.7587.021; Mon, 13 May 2024
 14:26:13 +0000
From: =?utf-8?B?TElBTktVTiBZQU5HICjmnajov57lnaQp?= <Liankun.Yang@mediatek.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	=?utf-8?B?TWFjIFNoZW4gKOayiOS/iik=?= <Mac.Shen@mediatek.com>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "mripard@kernel.org" <mripard@kernel.org>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
	"airlied@gmail.com" <airlied@gmail.com>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] Add write DP phyd register from parse dts
Thread-Topic: [PATCH v2 1/2] Add write DP phyd register from parse dts
Thread-Index: AQHaosoq7X5Ma7JxMUq62e1u26odj7GVKHAAgAAU/4A=
Date: Mon, 13 May 2024 14:26:13 +0000
Message-ID: <c198feeebe88f1c4e2f4473a8e97a2d7f891911b.camel@mediatek.com>
References: <20240510110523.12524-1-liankun.yang@mediatek.com>
	 <20240510110523.12524-2-liankun.yang@mediatek.com>
	 <ffa57617-3c87-47d7-8882-becfe40abc17@collabora.com>
In-Reply-To: <ffa57617-3c87-47d7-8882-becfe40abc17@collabora.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB5760:EE_|TYZPR03MB7409:EE_
x-ms-office365-filtering-correlation-id: 569288e8-4c1f-4bea-7755-08dc7358a4b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|376005|7416005|1800799015|38070700009|921011;
x-microsoft-antispam-message-info: =?utf-8?B?QnloRm5Wbll5RXVnSmQ5ZGUwTEI4M1hXQ2xxcnVDQUpRdG0wTi94eHFVcFpD?=
 =?utf-8?B?ejFtRTJEL0NpalVKMGxWdllJV3U0TVNYSzhjTFVPb1piTFl2amtpcVlTTHhF?=
 =?utf-8?B?NDFuZVIyY0hMK1VtQVp0RzRVbmZjMFV6bGFPUUw3UDQ3bUdvRVJLT3kzbVFU?=
 =?utf-8?B?RUp6TlFxM1Y0V1JkTkRVclUrN0xBMlVoN3p1ekw4UkllOXVtR3RkZW5TeEtN?=
 =?utf-8?B?aklJeml3K0xwREk0aU44QzdOQkUyNnF6a0h6ZlIrc3hCSkxZWmttYnhQMW1q?=
 =?utf-8?B?Y0Z6UU5aaENIdlM4azNZYm4rTlZrNXZTRjNxNlZOTGYxdTNIZFl6Z0owd09Z?=
 =?utf-8?B?Ti8xNURnM1ViamNLU2RsRjZvOWplcFFLaTkzTjhKZG1oZXRuQWVVbk1mRUY3?=
 =?utf-8?B?Z0dxOEV3Nk1SMlFVcXplUDZpajR1eThFbFh1UW42ZzZ6dmc1TExoTGg2amtC?=
 =?utf-8?B?VTR1MVlxV1E0Yk83TE1BNjNiS3FwR25vY2w4MDhITDNOVjBjZkllUUovZHJY?=
 =?utf-8?B?UndVWnhoWlAwb3JxTnh4Qlh1Y1c0dFFvUDcxNjJRamppSERiSTh5MnRzd2ls?=
 =?utf-8?B?eE9kUExEczBvcWx0NUFmblpwNTNPY1BOL2hKb0IrMHdwSzVRZy92VzJWUkVT?=
 =?utf-8?B?QXQxNDZsOTQ0K3hDQ0d4RDhSaDNMTTU1SkRsUUZMV2Zic0ZBWGFla0UydDh5?=
 =?utf-8?B?UERPL3hpT2tFZkR1TXlIc0ZNb1daNXB0SXlzU284VVRCcDRKUmZUOUgwOUUx?=
 =?utf-8?B?S1d1cU5tSGxkNjZRdUZtdWpuRXh6OHNQUjl5T21IYm9mbU5iQUpxbFlqRWFh?=
 =?utf-8?B?NlRZZDNWbTRsdkdvTjBwZGNRa1BBZjd3blBWUjFsMWo5dlh1OUVtbmpYMmd0?=
 =?utf-8?B?ZjRrTkh6NDNBZmljSmNocUJGSWxpaXM0WVBhdnp1TXRLOGsrTzV6Ly8wQ0JT?=
 =?utf-8?B?empYd3liVHA4bW5YWjF4Qlk4ekk5bVJENjJoT0pkbGJReDFveUlTTmtaelhS?=
 =?utf-8?B?aVA0elFscGxVcHRTZXloeHF2bWJVdE8zUGdodzdvT2hMZTlmeGlXdzkrRDJ5?=
 =?utf-8?B?UVplUjQxTldVMkxrQTg5R01hNXNjSlFCYm9NckdFM3BIVWQwaW5sK2RKS2dJ?=
 =?utf-8?B?T2VUbHd0bXVLSG5oNzRETFJuaXRaeHp5RDFSc2FmSmNUdVVCWkRTbzVmWmtw?=
 =?utf-8?B?T2E1VWFHNFVRTEdYYVNrTVdXZlM0cVhBckV0Q0kyQ2gvSmxkZnpxMjN2TnZ0?=
 =?utf-8?B?TGppSjF6bGpSdE9QMlI5dTU1aXpTQzJXY0hwYUpBUlQxdUZLRzlNcTh1MGE5?=
 =?utf-8?B?NnpPVDJqMXFxZEFaY0dDMEpLTFJGbFc4VzNjdng4TDhHdklHVmsrVlgreDlx?=
 =?utf-8?B?dnFxbldMT3RmOWQvL2E2a3pzOE9YUGEvL1R6eWhYcSs1MVVRdzhKbTdVZ1ZF?=
 =?utf-8?B?cllpejhZNXRLNThQeUM2UEs1Yjc3bnUwczE0ampoeTNybXdZTHE3cGRzVzJZ?=
 =?utf-8?B?OHZVaXFVckVPSWlCUGxVYkdiMnBYY1lqcVBpK2JVM1NqLzdTLzRncGVhUHBQ?=
 =?utf-8?B?YmhOMlY4aUxCenozWUU2MEpRNlI1L3FsR1dQSC9RaXdocFVpZ09yRVhRTmll?=
 =?utf-8?B?bG9TQ25QYWdOK2F1S0czMEhMb0pSbXFTN1c2ekFWem1ud3FjVWZCVXZ0a2Z6?=
 =?utf-8?B?UEgrMnN5MHdvWnZOU2Foc1l6YXFPZDR2aGxVVDZoc0NiR0MvdHNvU2RnQi85?=
 =?utf-8?Q?UXv9iCgdY8ipR3leBo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB5760.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(7416005)(1800799015)(38070700009)(921011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3RxQm5MZG1zaEp6NEFmNnRac1kyY1IyZ0JiWWphczB1ZllSNURmVnYzV3BP?=
 =?utf-8?B?K1dlOTVQclNPYXlQSE5rVWM5R0dMZVpEK0IxT2treU1QR2FrNHVDbXNNb1p6?=
 =?utf-8?B?bWxUbm1DOHN4emEyaWgrTCtxbUJVUC9LaHE4M1MzZzRGZHhaZFc2TnpzM0hE?=
 =?utf-8?B?QSsvM2I5aG9Dd0FGMWUyZjgrNWxOUFpHajBBSVc2OTRWOEQ5RmExbWlwYWdz?=
 =?utf-8?B?TWtoalpNa25rRGh1UVhXOWM3N1NJbEx4emYyMk1kMkN0QlVYOTRVZXV0WlRB?=
 =?utf-8?B?bzJXVHV4THJKRkRZZGFqdVUzaFhxRUVpVG95dDVub1JRNnNPNDc5QnBiRytr?=
 =?utf-8?B?cFdmSkRpZVhZeHZ4Nkw4a2h4Rm1RS1VKZDh4Z0tha1dDbWpQbkVGWjIrUGd6?=
 =?utf-8?B?Q01PWFhlNXE5ZE4rdUY1OGhzUkYrNGxMNlJtRm55TjBDOHJoQlV4aDB4U0Vh?=
 =?utf-8?B?NjZ3dW0zYzJnN1pXbCt5emRiUDZ5VEtQcjNlaFJ2aWxVVG0ybGVDK3ozS1J4?=
 =?utf-8?B?UDVlek52MCt3cjVrOXcrSkRWbkk2Njl4NmNvbm90Z3QxQTdqdnE4dlY2QVhH?=
 =?utf-8?B?M0oydUJ0d2pidVlxaHk1NExaY1BzU25Lamp3bXBWaS9FMXp3cWRZQkR6MUR0?=
 =?utf-8?B?S3pxQ3UrbEVwa251OS8vYzNBQzNpaGVJZW5RVko4K1ZPcTZyZGd4QnlDaFJ5?=
 =?utf-8?B?MEswMlVEaXZiSHUxSnB6L1hRYTdRTitxSnNITThwK2hIdVRDWi9kNldVNHRJ?=
 =?utf-8?B?QTJqTmFqaGhKWWpBMnltd0MrSW94aG9mMmcvSDRFbTg3YnNLY3hVemMxSGVO?=
 =?utf-8?B?M3VpVE1GbFc3NUwxV2JVcUphNXRldnptYW55OGNSdHVEakdDVTFoREJNbGlV?=
 =?utf-8?B?RXFJLzliVU1FcmhKaUtQelVlNStKQkxYZDRZTXNZNnNBRmt4c2JrY01GOEZV?=
 =?utf-8?B?ZUhGeTlRdGZTZGROSm40cFVmTWdTNWtVWG9GK1kwNC9CV2ZBdmtTaFpaWUVH?=
 =?utf-8?B?ZFhVMzUyZlBhTDI1SFhxZ3c5TXdtQ0VmYVZXcDhqRWFxVEptQ3JCSVFScHBJ?=
 =?utf-8?B?SzBvcDJDdEp3aVBsdEdQdHFaNnJ6S2MyeEc1ZUZydUtzYzJ0c1AzZmpwejZ1?=
 =?utf-8?B?V3B4TUgvZmhTVzczNDlvUzBOcXhOUFF2MmRCSi9PZGdrSjl5akZXb2pTZUxs?=
 =?utf-8?B?YUYvWXAwVWpPVWU5a0Z2SlFNUDVBUjlGeC83NU0wVEY2bUhZZlg5cnVUNWNT?=
 =?utf-8?B?TWhFamM5NGF1bVV1c05udlZYM0QzK2p5akRqWm5uSGtvd3FuZzdtQ0ZPeG1u?=
 =?utf-8?B?ZnF0MWRLeVpOWjdnN3RNNTFTQlgwQ2dLcTZhTVg5NkhTZ2NQTDdyVHRxUXBx?=
 =?utf-8?B?Z0JhbVNyd1FQM2FWVG9BNlQvWHllblV0OGppZzVMT1hkcVluUDJEeXpobkt6?=
 =?utf-8?B?ZjdHWG9jV1ZHRFJRdnd4YlJrSUFPQ1JNZ245N3dsdmp6U1Bob1BkamJjUTIx?=
 =?utf-8?B?bHNNblU5M2FNMHlJY3E0ZUxTVkljNVBzOWFNRXA5S1pSZWZ4Vms4b0xaT28r?=
 =?utf-8?B?VFU3TW1mUVZTRXJDSnVSOU9NWkhKaFBLOG8xdkdRSklRN09WMUk1Z1VxVm9l?=
 =?utf-8?B?K2I5dlBiYXZ1b0lxdGhOL2hVY0VMbUMvRVhkbWlYVVBVMzVnM0Q1cHZnaGoz?=
 =?utf-8?B?Q1E1eHN1aEloSytGTEJQTHZ6VjZpYnNuL3p6MEo0RTJvbjR4UnZvd2ljamx6?=
 =?utf-8?B?OFZpd2k2cEx1NVR3alh5Q1F0VHplLzMxNXYyem1INGVSczIyMzJ0S21KRXZW?=
 =?utf-8?B?bHRpakN3MTlzZGNOWnpPZS9qRDJWUlpEZFZOTU9CcWVPaU43MGhvMGVudUJX?=
 =?utf-8?B?MWs0SHI0TnZ0RndkN2RQUVM5SXlMYUJoSHA5VVRZZHdITHNpdmkwczE5aHZh?=
 =?utf-8?B?TUtpelpqaGVZTWwrTDhZSHcxb2JKNGswYmZ4Q2pKN1F1U2Y4bHVjalJibGFD?=
 =?utf-8?B?Ty9JRVJROUZOWEhFTFJYaUhIb0V4VTB6ejFQUzBxbUhxS01FY3RkNmFHMmNh?=
 =?utf-8?B?TVhKUURXMEZ0OERnL1FVaHUvLzZQbDFyZ1o4dmN3azZlWmZyNURmajJYcEFL?=
 =?utf-8?B?NzdTNHUyMFNTL2FNTWR3SVlNeXd6bmpTc1JyZGw1UlFmbHp5aFhaMDVGL3k1?=
 =?utf-8?B?REE9PQ==?=
Content-ID: <2DCD34CD4F0B8E4F9C62C1E54A85EEB4@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB5760.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 569288e8-4c1f-4bea-7755-08dc7358a4b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 14:26:13.7306
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cQfnc8ALNt0/mcwFwvB2LhiH3KZZi+TgHMAiPSgx4sD9Lo7AAyAGKzEfA8yAyt8z2zGrXrCrck/kzuQZnYXxntuCAkqj1lM+lm01xAGkZXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB7409
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--18.548600-8.000000
X-TMASE-MatchedRID: GagEC7nsA0TUL3YCMmnG4vGG8F2k2BBVI4bJHZSdxcuyrCkM9r1bWskU
	hKWc+gwPp2+PpVTz2PH89WDKQGB2LvZomtZBUIXQydRP56yRRA8F15s6prCIu+soDDE6CvPdRBg
	jLK9tEupWz2luKD1NMvk6rne15aFQ717yJ8IcCtudVNZaI2n6/yhRWQHuJ8meWSw/UjSfbBJMN4
	VTgBt0+glFXYRYQBWym6hKKWWaX32ubeZytpejQ7xygpRxo469XcpmQXLhhkTagsZM0qVv1wfwZ
	jeYy4p53BlBvFCka9uwx5tV1a1qfpCoy9iDotiwyeVujmXuYYVhBfGxmdHCgi13PNammaAGQcct
	7CmEoT7i8zVgXoAltj2Xsf5MVCB1jaPj0W1qn0SQZS2ujCtcuA==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--18.548600-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 5ABCA8F49DDC5FB3964009325D724F556DFFA328DCE6C578A16A53BC5180AE102000:8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_072627_751581_617B74FC 
X-CRM114-Status: GOOD (  14.24  )
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

On Mon, 2024-05-13 at 15:11 +0200, AngeloGioacchino Del Regno wrote:
> Il 10/05/24 13:04, Liankun Yang ha scritto:
> > During the testing phase, screen flickering is observed when
> > using displayport for screen casting. Relevant SSC register
> > parameters
> > are set in dts to address the screen flickering issue effectively
> > and
> > improve compatibility with different devices by adjusting the SSC
> > gear.
> > 
> > Obtaining the DPTX node, parsing the dts to obtain PHY register
> > address
> > and value can adapt to settings of different manufacturers
> > projects.
> > 
> > Changeds in v2:
> > - Optimized method of writing to DP PHY register
> > 
https://urldefense.com/v3/__https://patchwork.kernel.org/project/linux-mediatek/patch/__;!!CTRNKA9wMg0ARbw!jYnU_tl6YGTUcFparAOcusS3u-H9G26yso2BwugBLoeMOanZudxtqRpEYV1Zy6phDjCQH2amG0KdSaR0s7EZGycYxzaBhBvtuw$
> >  
> > 20240403040517.3279-1-liankun.yang@mediatek.com/
> > 
> > Signed-off-by: Liankun Yang <liankun.yang@mediatek.com>
> 
> There's no devicetree support in this driver - infact, it's being
> probed by
> mtk-dp as a platform device.
> 
> You keep sending untested stuff. Fourth time in a row.
> 
> Please, TEST YOUR COMMITS upstream before sending!
> 
> Regards,
> Angelo
> 

Thank you for your comment.
It's being probed by mtk-dp as a platform device.
But through dts analysis is a better solution.
I TEST COMMITS upstream before sending in the next version.

Best Regards,
Liankun Yang

> > ---
> >   drivers/phy/mediatek/phy-mtk-dp.c | 37
> > +++++++++++++++++++++++++++++++
> >   1 file changed, 37 insertions(+)
> > 
> > diff --git a/drivers/phy/mediatek/phy-mtk-dp.c
> > b/drivers/phy/mediatek/phy-mtk-dp.c
> > index d7024a144335..ce78112d5938 100644
> > --- a/drivers/phy/mediatek/phy-mtk-dp.c
> > +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> > @@ -28,6 +28,10 @@
> >   #define MTK_DP_PHY_DIG_SW_RST		(PHY_OFFSET + 0x38)
> >   #define DP_GLB_SW_RST_PHYD		BIT(0)
> >   
> > +#define MTK_DP_PHY_DIG_GLB_DA_REG_14	(PHY_OFFSET + 0xD8)
> > +#define XTP_GLB_TXPLL_SSC_DELTA_RBR_DEFAULT	GENMASK(15, 0)
> > +#define XTP_GLB_TXPLL_SSC_DELTA_HBR_DEFAULT	GENMASK(31, 16)
> > +
> >   #define MTK_DP_LANE0_DRIVING_PARAM_3		(PHY_OFFSET +
> > 0x138)
> >   #define MTK_DP_LANE1_DRIVING_PARAM_3		(PHY_OFFSET +
> > 0x238)
> >   #define MTK_DP_LANE2_DRIVING_PARAM_3		(PHY_OFFSET +
> > 0x338)
> > @@ -78,10 +82,39 @@
> >   #define DRIVING_PARAM_8_DEFAULT	(XTP_LN_TX_LCTXCP1_SW2_PRE1_DEF
> > AULT | \
> >   				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
> >   
> > +#define SSC_SETTING	"dp-ssc-setting"
> > +#define RG_XTP_GLB_TXPLL_SSC_DELTA_HBR	"ssc-delta-hbr"
> > +
> >   struct mtk_dp_phy {
> >   	struct regmap *regs;
> > +	struct device *dev;
> >   };
> >   
> > +static int mtk_dp_set_ssc_config(struct phy *phy, struct
> > mtk_dp_phy *dp_phy)
> > +{
> > +	int ret;
> > +	u32 read_value = 0, reg_mask = 0;
> > +	struct device_node *ssc_node = NULL;
> > +
> > +	ssc_node = of_find_node_by_name(dp_phy->dev->of_node,
> > SSC_SETTING);
> > +	if (!ssc_node) {
> > +		dev_err(&phy->dev, "SSC node is NULL\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	ret = of_property_read_u32(ssc_node,
> > RG_XTP_GLB_TXPLL_SSC_DELTA_HBR, &read_value);
> > +	if (ret < 0 || !read_value) {
> > +		dev_err(&phy->dev, "Read SSC vlaue fail!\n");
> > +		return -EINVAL;
> > +	}
> > +	read_value |= read_value << 16;
> > +	reg_mask |= XTP_GLB_TXPLL_SSC_DELTA_HBR_DEFAULT;
> > +
> > +	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_GLB_DA_REG_14,
> > reg_mask, read_value);
> > +
> > +	return 0;
> > +}
> > +
> >   static int mtk_dp_phy_init(struct phy *phy)
> >   {
> >   	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
> > @@ -137,6 +170,8 @@ static int mtk_dp_phy_configure(struct phy
> > *phy, union phy_configure_opts *opts)
> >   	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_PLL_CTL_1,
> >   			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN :
> > 0);
> >   
> > +	mtk_dp_set_ssc_config(phy, dp_phy);
> > +
> >   	return 0;
> >   }
> >   
> > @@ -186,6 +221,8 @@ static int mtk_dp_phy_probe(struct
> > platform_device *pdev)
> >   	if (!dev->of_node)
> >   		phy_create_lookup(phy, "dp", dev_name(dev));
> >   
> > +	dp_phy->dev = dev;
> > +
> >   	return 0;
> >   }
> >   
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
