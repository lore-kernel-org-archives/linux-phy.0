Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70676C04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 14 May 2024 04:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ivg+yZ56knkyM6kpGEGjIv+bvFJJp1JF8KgI1p2TxZA=; b=4EqJKZku92umB/
	+Wg/rgxeLXRq0rGWyrCdo+X1pEY/eYlFS5RfhpuUfZxkYK7roBRPPNk3aL2Mzjt9WpYfJiL6FGfxe
	vf7RUgEQtfZpKiUjxGrGwt0mQyxPQLk66B/J13UtAOuD3XUXPqFfi78XjAm1OejHB6zmxai8CWmoI
	jxfYa6+pT6SM+Qn4za4dzsIv5DVPH1Qnha+M7TiOMtCpW8RnUO0zbNrb7r6V0V6OAIXsSEpijBacT
	BknELa7pOM5YrdVoSF3oYDAMAxAgt8ovlMpm2MrGDoFP1UHlQ2CzNPhPUeJObftQvlb5xBuvJ7hXw
	Dqc7lyih7txs3yhRK9uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6k0g-0000000EyrQ-0G2W;
	Tue, 14 May 2024 04:43:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6k0b-0000000EypG-0gsJ;
	Tue, 14 May 2024 04:43:27 +0000
X-UUID: 7675923c11ac11ef9a78ddf43a9225dc-20240513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=KutM97jFlBFwOEYnFz4NTppCZOuUp2X+ifxzIWO5wQM=;
	b=alAldEhP8ujzNkolnHJe1ZK+gpewMyCEZV3piMWhjFg6oHl/A4zoY2PzxqYF1Pv0UjodrmyRl+kCnFy+u/lmOhx/er2qv/X0PyIOUGFxpMZ0a9I5MuZgs2HoC2JbgQ4N9DPSWBLPbMVOS6mcI/Tb0OiRtdau9r+r9vZQtClgvjM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:f967a1b1-476f-4f4b-9625-16dee1096c3a,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:82c5f88,CLOUDID:287c5287-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 7675923c11ac11ef9a78ddf43a9225dc-20240513
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <liankun.yang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 501465044; Mon, 13 May 2024 21:43:09 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 14 May 2024 12:43:05 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 14 May 2024 12:43:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5a+zPpW//HJDyRCaAxdbo4FXvGvWKv2dDBlruQVC6U4hlNFL0goLaFFSBFP1CunPjxacHDkw5PqzYeT3dX+GHG6wSHEAAqrtzof43ktD21hdblxiF3lbgSj+FqmEVcgOrKTcNIf9q7eY2hIQ7UTDewokm4n1KM8qKt+8qobM9Pk6L9vCEoyRV4ujj2aGniIkkP7Y9tYpaOnu9vZzCeDW8ebiHk8vUIlq1hpfgFBj9D17daK0GMhCgbC5Yj+VX6we4I4MshF2qc0xXHNPGSog4kadIN+6yiVeDzgR5WeBV9Z47fl+yCMFGkF5/9ZNWYasF5SGH6rYrOBhucjuamALA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KutM97jFlBFwOEYnFz4NTppCZOuUp2X+ifxzIWO5wQM=;
 b=apaBf1YMPQf32a+NhJXz2i4/DpJr4a9EyU8my4jfa3MPDB9r3RKy8wkKiInl+LadVwuLcFVqq7c15cPj3QqEmas1dq5rkhHEVm0XA1TKgpgiIhC4vDQrjpE+OS70HmykHxCvZTh76aQrz4OvdEJqVafdsmp1Ff+/bGb1CQO8YaNg9KUn4iAPhoHLP4zlxDyj0W6K7yCPR5PNT/mEzhvzJr5RpML0yRaHjBCzcY9h9GBpVHrEBH41A1ydMcofpyfotMhkfA+IVvwASV9WiKvIGgZHmRm9NhV8Nu9fm8Tz4RE9b89obSz3tg5BphJkvT3GAvP17M2YZ97/+Hky33I5eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KutM97jFlBFwOEYnFz4NTppCZOuUp2X+ifxzIWO5wQM=;
 b=Audo8z+yHVKaJzPhdKwQQMTcUkVZQerpmxO0lQnmnMsMQC8ZhUEIjTMn4/4Q0dgVPSp6oN3JTrHKgRZX4Fjs2sInKGCaXyENYZbpZC+/A8RRw/6kmKtqVSpG1P+Xdi0PmRdtHAtJQOttpnKzUQ7nZrHWoopAUtsVRHN+Mi7wNII=
Received: from TYZPR03MB5760.apcprd03.prod.outlook.com (2603:1096:400:70::13)
 by SEZPR03MB6594.apcprd03.prod.outlook.com (2603:1096:101:76::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.25; Tue, 14 May
 2024 04:43:03 +0000
Received: from TYZPR03MB5760.apcprd03.prod.outlook.com
 ([fe80::10a4:6aaa:bf25:96f3]) by TYZPR03MB5760.apcprd03.prod.outlook.com
 ([fe80::10a4:6aaa:bf25:96f3%5]) with mapi id 15.20.7587.021; Tue, 14 May 2024
 04:43:03 +0000
From: =?utf-8?B?TElBTktVTiBZQU5HICjmnajov57lnaQp?= <Liankun.Yang@mediatek.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	=?utf-8?B?TWFjIFNoZW4gKOayiOS/iik=?= <Mac.Shen@mediatek.com>,
	=?utf-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "krzk@kernel.org"
	<krzk@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"mripard@kernel.org" <mripard@kernel.org>, "daniel@ffwll.ch"
	<daniel@ffwll.ch>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "airlied@gmail.com" <airlied@gmail.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, Project_Global_Chrome_Upstream_Group
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
Subject: Re: [PATCH v2 2/2] Add dp PHY dt-bindings
Thread-Topic: [PATCH v2 2/2] Add dp PHY dt-bindings
Thread-Index: AQHaosoq14tjS/hF8kyh32TtEXWXzLGUuniAgACAFwCAAABygIAAAPeAgADw2wA=
Date: Tue, 14 May 2024 04:43:03 +0000
Message-ID: <1eb69265ae15323f3304f1c4b4fb0be5b13f1d42.camel@mediatek.com>
References: <20240510110523.12524-1-liankun.yang@mediatek.com>
	 <20240510110523.12524-3-liankun.yang@mediatek.com>
	 <e02c2f42-b5e4-4200-8131-3881b7034625@kernel.org>
	 <3f387c9e8ac34ca25ec7b6bfb02536cd4ebbc508.camel@mediatek.com>
	 <f4f85f0b-49eb-4fba-ac76-2df845571b12@kernel.org>
	 <4a147f2d-71c8-4acf-aab4-9d761b81bc73@kernel.org>
In-Reply-To: <4a147f2d-71c8-4acf-aab4-9d761b81bc73@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB5760:EE_|SEZPR03MB6594:EE_
x-ms-office365-filtering-correlation-id: f5e7c809-dd57-44cf-2035-08dc73d05717
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|376005|7416005|1800799015|366007|921011|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?NU4ydGNTbE5PNU0rR0JYelpYMHZhYjBWT29JVmFzeEYvaUxkNFNFdUVNZmVp?=
 =?utf-8?B?ZmpFeWxJOXhVbmZRdGJiYnBkSUwxWm9DQTZyaDl3RW5KNkNOTmU4OTg4dnhm?=
 =?utf-8?B?MFVrTk1SRzIvZ1B0eGFjMXJFcFB0ZTFvbWgyUUQ1WGNHdGh5d09haHhSUFl1?=
 =?utf-8?B?eVJLMGJwVFNFcWhCbHE5RFRYL0xIN2pzaFpxUXdEUDB6c2oyOHV1NlNGMFhZ?=
 =?utf-8?B?R0o1M2VMZ3dXdi91ZmhROFZEU3lGcGE1c0VUcDZ4N3ordXJBRkFRTzJvVXIw?=
 =?utf-8?B?Q2lVaWZkbExrNlNHM3JjNFJJZjdvaXltY3BVYUFVRWNRbkRiSEYvRUtPTlVy?=
 =?utf-8?B?ZUJjR3M2Nkd2MnlBaGp6QmtTcVpTd1drdXc1aGF0KzVUVHBadVF5aUFZMEs1?=
 =?utf-8?B?bGhJUTlEdk1RRmlNMWRkZ2pvMjkvOWVCRjkvYzYxVmcyN0pzV2NEMVp4Umpo?=
 =?utf-8?B?NlpLWnd5bjRxTU9HZy92dGFpVTAxNnMxNy9BSkNHNXJRTSs1UjR1TXFxQkQ0?=
 =?utf-8?B?SjFHby9tcHhIQkJXOUtFczVTSzQ0REwrdTluRmZFeUFLdXQ0ekxMWTFFVjZh?=
 =?utf-8?B?ZXplUXMydEgzU1BMek0wUzR0Qm41WFZRWnBSdDR2UkZJTkZ1YUUwUTdPSDVJ?=
 =?utf-8?B?WG1lRnB0MWhPMnowMDlPNC9CVE1lemUyYlp4a2xEVnlxVkJERklORFgwdFRS?=
 =?utf-8?B?d0ZTdkRSc2ZUTG9hZWNZVFlLRWkydDRsV2tBOGJxVHZJOWRQNmgwQUZ5bmpJ?=
 =?utf-8?B?SjNnQjlhT0hJcFNhOVBBN2lHZ0VGYkpGZ0gyZDhBYmxuMEtOenV1azA4Mm5G?=
 =?utf-8?B?VnBJOU9JbUxaOFgwUVR0TjErTXJlbXg5QzA4dEdSazRjTFZWRG1MdWVDaENS?=
 =?utf-8?B?NERRalJBYmY1bUVYYk4zRyt0WDk4bnJndUtweFVKUmZvendWaUtSc1VaTXBz?=
 =?utf-8?B?TXRFSmxRTTJLcFRVQ0ZuNXZKLzRzd0gvWTgyT1Z4dERXVUV6MWdCWjV1Z290?=
 =?utf-8?B?djFRbkxnRVhBZW1hL3dCZFhISlA3LzVXbWVFdzBlQklQaDlLbVl3UlZhOVRl?=
 =?utf-8?B?UGQ0djBkQ1VNcGx5VlZHV2tCd1JXenlhK0ZJYkJJRlhhL3RKRmhUTzFTYUxJ?=
 =?utf-8?B?T1VZS2tXQndYZ2dGckV2NjBsUVhkYzV1UWJQWENKeUlVZkpLekxBUGdRc3JG?=
 =?utf-8?B?OGE5WVhLM0lDS3l5QVM2ZGE1UDRkWDNISlJTSzQveEcrRndvWFVpY0tIKzlX?=
 =?utf-8?B?NHBncnlkM2JEdldheG1XMW40Z0NybkxSNVlyY2J2MTBsaTU3WVJTc2ZtRndz?=
 =?utf-8?B?SnJwK0dvd3NGVEtUM25BdU4zTmQvN3ZZWVBhSTN4YmowcjEzbXhCbUxtT3hv?=
 =?utf-8?B?dDk0WGVoNE53YkdYY3JsRmpxWmJuVEhCbjQ3VWVaWm1ZWjN3RHBsSlZJVnVV?=
 =?utf-8?B?MzVDRVVkc3hzMU41NUFjYkVWSTBCd0xyck1IdTM0aFlrbjYvdnZ5M3FPWk5a?=
 =?utf-8?B?Mkpnd0NDdlRwSjlMaEZpaEZYR2JxbzBnSHBEeEExTEVGKy9XellEOGhCOGUr?=
 =?utf-8?B?MHJoN25zSUk4Q2dzRGg2blhMVjB6RFpOTU8xVDlGTlE0SURkMjNjQ2hMSHlk?=
 =?utf-8?B?UEwwbzMzTTdKZDlhNjU1YllHQ2xUbS9ReU1LTXJIamVobkt5M3h1SUlCdjhm?=
 =?utf-8?B?NXN4UEFXcXBmbmpRYTc4dXg1UEdwUGRhRnFINE1uWEsrN3NxT3NoUnNJTEY0?=
 =?utf-8?Q?icwOOTRyRyinHbUn/HH3Z234+ivxSNBlr3j4l/U?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB5760.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007)(921011)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bERRbXJvVzBYN1g2Y012TDhueE15SVljclhaSkkxUVFpR2d4bk9vSzRqejNU?=
 =?utf-8?B?djBidnh1TUE2SkpCRkdsS3g1aG9iTUVjb0lqUnE3UENtWGNNQjlRVWxLaGQ1?=
 =?utf-8?B?U1RuSW96SXlxRXBNdS9hZWV0M2NuN05xemRTeW9NNGRWTGczMXpaNU5sNjRm?=
 =?utf-8?B?MjBIVHY2MzZsd3lDSk83azRyMEVGSzJCQzZnSktaMkE1bE9CTTZnVEd1QnZY?=
 =?utf-8?B?aTNlWHJldWxKWkhScEc5eXpLeDEvakpqYlA1MGlzSmJEVnVDTnZtY1J2TkpD?=
 =?utf-8?B?ckRpRFZzVmNYU0FhUjdWb1l0WUdCSnlBRG5EZUcvSTM5UjNncmUrT090UmNB?=
 =?utf-8?B?SThyRGRKZi81M2pHckJ4Z2krZnEyNGF0OVJ1eVY5WGFZcE5pZkVnM00vMUZq?=
 =?utf-8?B?aDBsL0p5eWswNjdoRVdTdlE1NHR4aVFQTmxXYkVyL0VtZ0pwZ2lidnhnVkpi?=
 =?utf-8?B?dHp6NE9hVzdkQnR4aURUVXR2Sit0ZGxPcXhBZHFCbWhQSjhrR29FZlVtMHdh?=
 =?utf-8?B?ck5hUFJqMVZ4blV2UFdDZHplQVF1cjNEMzFiU1hMTGpnd3Q5Q1pEd2tYc09V?=
 =?utf-8?B?UWo0eGNwcXVraDhNSUZaMk5PR1c5OGg1OVQ3M3hWd0V3Znk3S1NoeTZGYVly?=
 =?utf-8?B?MFVUek1JbW1ZbXNjckYxSVJ0cExNNitMRzFqbk1GbFBMRHVCTGc2TlVQb0xF?=
 =?utf-8?B?V0VQSG83TUFoTVM5Wk9Gd3YrdU51MUJmb2NTV1VEaEpkWWgxVmlOcmJ6VTFR?=
 =?utf-8?B?UFRCV1ZBUHRpTDRSL3g3UUFSa01vMW9ob0VCeC8wVDV2OTM2ZCtJcjFkRDgw?=
 =?utf-8?B?aDlPeFQ3KzBtYUlQY3NNY3BaYjE3K2RjVU5YRlhVdGtPaERWNnJYc2l4ZnFx?=
 =?utf-8?B?bDNEUzUxY21QS2FEWDFBZHZzdHZWMHJ1RVZXSmxzRkd6Nzd4dkdNNnFyT3ZH?=
 =?utf-8?B?aTNJMG5CNWxaU3RRZWppTTkrdGN0d2ZZS1dXYnNSYjNqVExhUVo5ZzlJSFpQ?=
 =?utf-8?B?TEdBWi9MdlhxajM0OWJzL0wxeHlwbk81Z3U4WlhIUjg1MHlKazd3TmJVNE8x?=
 =?utf-8?B?YW1HMEJuRjhMUExEQU4yS0F1MkhDalVqN1d0RVRLNUwveEl3cXNnbjZGMnMz?=
 =?utf-8?B?a3BwYmYveGFJLys1bXoxaFB6Z1l2YUlMVXRlUUpzemdldWhCQ2VRTlRBMHpJ?=
 =?utf-8?B?bzVYeE9rQmphVHdldGk4a3RQYXB0VlE0M2xMR3Z4SkdaWlZnb01vQUZBYlZS?=
 =?utf-8?B?RXB5TzRjMUFkSFFtbEdvRjNabjI5ZUwyVThUaVBZYlVMNWF6UW5DVllZaC9N?=
 =?utf-8?B?YlFjVk9nMGI4M3paRXBMbmRETkp2NlFxMmpyWERLRlkxR25wNVNpUWdNYmpp?=
 =?utf-8?B?T2pkRndoWmRCeFVmT1VoamhxdnpxTGEvTjZLamFuaWwyQURnVFRsNW9DanhR?=
 =?utf-8?B?QXhqOVhsR2dIa1ppN0FMaEk5a2V0M3pSNVkreDNCRC92UVpucmJaQ1FWRE9H?=
 =?utf-8?B?d2tPWXlxOEI4eGFYY29haTlOUHpic3ZtczluZ1A1R1lEa0pkeTI1RERXOUZ4?=
 =?utf-8?B?Z21mOUYrekZZUTZrQXR4KytVSmJBVTUvNUF6OC85YklHbFVNWWl0VGZiM1BR?=
 =?utf-8?B?M2lZdDVNQVZjRXdCT3V3bGM0eHJRQ1Qxb3ZveVZnaC9hT1NscGVhTHFueDlL?=
 =?utf-8?B?UkRBOVRVSEs4T3dmNFVxUzlCOWJDL2VKLzFKM2xIbHBxcXQ3UjhoS01kL0wy?=
 =?utf-8?B?NjVlc0tJbSthVkNibzU1Zi90bUJDMndqWmtpNnJvb0JMMC9Wak1LZ0JHNkdt?=
 =?utf-8?B?ZTBiS2taZXArdlUxQlplY1BHZ2dHZkJkTnFhem1ZbkJoTkw1cS9LcGd2UW55?=
 =?utf-8?B?b2RnU2s1ZDViZTVyeWU1U3FoWWRhWVRNZ21kMUExRFFmTHJFYVlWMGc5eDV4?=
 =?utf-8?B?YzMzd2lXZC9XV25TSnZiVldkSWRRdExRZzlZVTdVM0lLYXBPdGloTjZYZVd4?=
 =?utf-8?B?VEFzSDAxakNCN3pJQnlIcHNHNUtSRXJNcmhuZDZXSitrZndRckdIOVdLdGZj?=
 =?utf-8?B?MjFRbjBPdnNlMDNYYkY1RGV0UHRTd0JPTWthVHBoaUZWMWpOaW81RGd1RTM1?=
 =?utf-8?B?SnQ1clJGYUdJSklXbUVHTDZ4SU1iWDRvRlN5Z1EvS216TWt0L2REKzM5eXdK?=
 =?utf-8?B?Mmc9PQ==?=
Content-ID: <6A653F7B1398324E8004D5E03635661F@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB5760.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5e7c809-dd57-44cf-2035-08dc73d05717
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2024 04:43:03.0935
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0vvrA2gWe42SBfNR74Qkvaedlc8DFRZQOCadBoW7K2cHuRcVmMCoHNZqgHIAjcN/wgLwSXJc/wo4suNXwqFO1AUPpLQY/n1fzp7IF3SOyl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6594
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_214325_218375_6A73BD93 
X-CRM114-Status: GOOD (  17.36  )
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

On Mon, 2024-05-13 at 16:20 +0200, Krzysztof Kozlowski wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On 13/05/2024 16:17, Krzysztof Kozlowski wrote:
> >>> dp.yaml
> >>>> @@ -0,0 +1,45 @@
> >>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>>> +%YAML 1.2
> >>>> +---
> >>>> +$id: 
> >>> 
> http://devicetree.org/schemas/display/mediatek/mediatek,phy-dp.yaml#
> >>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>> +
> >>>> +title: MediaTek Display Port Controller
> >>>> +
> >>>> +maintainers:
> >>>> +  - Mac shen <mac.shen@mediatek.com>
> >>>> +  - Liankun yang <Liankun.yang@mediatek.com>
> >>>> +
> >>>> +description: |
> >>>> +  Special settings need to be configured by MediaTek DP based
> on
> >>> the actual
> >>>> +  hardware situation. For example, when using a certain brand's
> >>> docking
> >>>> +  station for display projection, garbage may appear. Adjusting
> >>> the specific
> >>>> +  ssc value can resolve this issue.
> >>>> +
> >>>> +properties:
> >>>> +  status: disabled
> >>>
> >>> I think you nicely shocked Rob already.
> >>>
> >>> Please reach internally to Mediatek or collaborating companies to
> get
> >>> basic training and instructions how to write patches and
> bindings.
> >>>
> >>> Otherwise it is waste of our time. Mediatek is not a small
> company so
> >>> there is no excuse in sending such poor quality patches, which
> would
> >>> be
> >>> EASILY spotted by the MOST BASIC review.
> >>>
> >>> Best regards,
> >>> Krzysztof
> >>>
> >>
> >> I used scripts/checkpatch.pl and fix reported error and warnings.
> >> I am resumbmitting bindings by the MOST BASIC review.
> > 
> > No, please wait. Who did the basic review of your patch? Who from
> > Mediatek? Upstream is not a workhorse to use instead of your
> resources
> > for the absolute basic stuff... This feels such exploiting.
> > 
> 
> After reading AngeloGioacchino's response, it looks even worse...
> This
> was never tested...
> 
> So not only exploiting but also feels like wasting our time.
> 
> Best regards,
> Krzysztof
> 


Sorry,I guess I didn't make myself clear.
I am resumbmitting bindings after the MOST BASIC internal review.
Thank you for your comment.

Best Regards,
Liankun Yang



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
