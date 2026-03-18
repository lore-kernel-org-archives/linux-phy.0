Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F73FEDA09
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 01:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCXRRjHtP2+Lv6o3sZyBqzF9I5Oky+/dh+6XkI68t8o=; b=gMiv76hKutwamE
	ukVJY5qJ2lulUwbC5swxSs90unigbyYGrXeFT9cn+/MMM8CEI7+XxX2duP+gV7HQhZm1hEcJlplJC
	SWDN5HlqI5xmAR/ui/F9/n+vUrrM7MnzEyBvqo3kRUP3Zc2u1A/ETgUHfndoc0WZC2qreo9U8niZk
	jXRff1ZB8O5+HZnuQw5xmAiofj8/rdL4u76iaK7kU4pFLQqVUU/cqLw9cYxFb1PclJANtCHJflwpU
	C1OhM+oN/JkozTo42QcCsmG+AaMtgOO+DtUe1qOjakv7+0VpvYNLdCqTENzlABcQE1o8a3LoZTt3z
	gPM1iHoDnwp8OaqY3izA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2fv5-00000007Zcn-2Obd;
	Wed, 18 Mar 2026 01:41:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2fv3-00000007Zbt-2owa;
	Wed, 18 Mar 2026 01:41:58 +0000
X-UUID: a2ed8f6e226b11f19e7563141e833ce8-20260317
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=SXa5ctLZxhnLmibkrnT95+A0UvRftv7xs4wjZY7KUeY=;
	b=N96XsYobWYvTGmBwjTt6RNC7IuZo8nzA3Tuq0MvL86j1AYIIA5gd3slZgWvT53xXN34n62g6OagMgC9qYPX/ei9SZTD3/+UBY39BqxljlNf/HC+DX6rt+IE8XkemApHdpVs9EeJwILbsjNswCSB1YPeksIG1e07hHgy+WmUIHac=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:63245e1e-a69c-48a6-ab43-0b24cb40e3f9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:ddbd7e16-77dc-40b0-853c-db53c3132fbc,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|110|111|836|888|898,
	TC:-5,Content:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BE
	C:-1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: a2ed8f6e226b11f19e7563141e833ce8-20260317
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 205468577; Tue, 17 Mar 2026 18:41:51 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 18 Mar 2026 09:41:48 +0800
Received: from SG2PR04CU009.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 18 Mar 2026 09:41:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jHP9Zb7OymCxvp9fj526983lDJlk7UQhprF/w4JhXJNWQtBStBqKS7CvWvo9S5WZ7wEECWxItcnzyosx79tPl00blWDbbsOozz9TZ2Vfst5qKa5iVIqlrG027sp7M28djlgXslDB6v4iaJUCNelZy7pUq/nKDMZWdFKOg0b+mLZA1hSI368gHRODJ7rZHXMtOpX9jC0yIkwcnjHMdOy33B6YeFMGRVew16Qo/hxs85ULXZrv5ul7to6Xtq6qef3IAzeJRu+H8tkfEqFWodT+PwdcAm1qZormm1TAXN+Mowty9p2MFOZOvvA4hE6KAhhqdME/oFdiFU0f4t/feZeXhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SXa5ctLZxhnLmibkrnT95+A0UvRftv7xs4wjZY7KUeY=;
 b=Oi/1T8JGlsT/uA0xvzkIhspUzG7BU/VPDZniQrdb2k+DTQdF9dXxm0g/F/lwfFfpNbzRV7f2uOdrC0+qH8NwMMmI8gCi5y1rYJNy4gllTNHAwWBx6h6zR0h1oFA8br4nLzGTeYYgWj47fqzvugTAo8DG0Hch0RphAIA7y0JwcQXxTJL5uHT6UKaaaMHETtNRjGPK9zIBe/Mzeo9wnXlIOJRQhudXRTQUMnIexOL37Mb39dXNgTSokj9kEgUD4C4svJdM6Fm9rOXZXTHPadSCb+zxaRKV8Tzxn9vCHfMCbBmn1Y5wT5r8dGtCLT2NRauZ3UwfYKGS2rqwUfWQwq53QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SXa5ctLZxhnLmibkrnT95+A0UvRftv7xs4wjZY7KUeY=;
 b=bnOSzlRzmVIOI5TXGi07GpgQ0aqoZYUxzNz64mkiLNafa2m4vaDTq3c7x8a8aEptLoLMwe/Jhu0Q0YHOzaqaMpDZrpkaKtyzf9XiUgO6pil0pPDADO1mwmDcmXGLVRyLn5FD+tdHGzrE1DPfnbVjXJcLRcou4PkO6iMAgjdvpps=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SI4PR03MB9890.apcprd03.prod.outlook.com (2603:1096:4:29c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 01:41:46 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.20.9700.025; Wed, 18 Mar 2026
 01:41:46 +0000
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
Subject: Re: [PATCH v9 20/23] scsi: ufs: mediatek: Back up idle timer in
 per-instance struct
Thread-Topic: [PATCH v9 20/23] scsi: ufs: mediatek: Back up idle timer in
 per-instance struct
Thread-Index: AQHcrW0pm8iGWFNpK0Kj80iCAtmXpbWzleeA
Date: Wed, 18 Mar 2026 01:41:46 +0000
Message-ID: <1cd0e29d03e7a75d124d0d90b4727547fd162724.camel@mediatek.com>
References: <20260306-mt8196-ufs-v9-0-55b073f7a830@collabora.com>
	 <20260306-mt8196-ufs-v9-20-55b073f7a830@collabora.com>
In-Reply-To: <20260306-mt8196-ufs-v9-20-55b073f7a830@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SI4PR03MB9890:EE_
x-ms-office365-filtering-correlation-id: 71aaea59-bfdb-4b91-b340-08de848f8411
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014|56012099003|18002099003|22082099003|921020|38070700021;
x-microsoft-antispam-message-info: Nu3tSWQvnHrIboT6bLDBBRlDyL23O32Le+1C2xOPoq5cqMzC1q4KFv6AmnENoDLUlrBWMCZz8KQyJgVXZQTuvLzF1ZK/Hf6xr4e+NaQz2AtPAYt0ywvWgdfm5+TFf1gqm6gjCc60ukiugpfHNYNeecaW2FNPNtRLz+DDdMp4xI1qn8Jpv36cm/iW1lSGSKoJ2wIOZSZtDbIdk7rcmkjAHcR4AqQEeGPgRjLsjOjuPW3DGapNktth9/27T1RcM0GzN5xzmGxAUqqPSNdtbrlLA8RuO0X8shxIxg9+mtg8tN1xmyuCDgZNCx24jBjCy92YzfwUJ8oG9GuFq8W40a6N4KwriM3dbuQbSchHAtEpZNAbAuGd2w+jVGpO/mnjI1Kqos51fBcMcvnEbK10Z9ZUdoPDG/pGyTNKYP5MzeMbdORy+3riGtgS0UvAJSjErjoU6/jP8ii+RiYpGAe5GIZaBxhyQ4F+kBlQ5APj0JIZwY8wIq5qcxjqMr2jSXeESTk3fip8fdyJ4EQpmC7K6ZvlGVU5xxvqFn5WPd3LEUUsuHiUMwuwOTGcHaodHKsJVb49gIPfdWVNfJES4j9mQqOQmlpiXF144rTtRKhXws376jHRgyp2PJvDC9jgbk1jcf6fQFfITxwmgl4B8g9v3R5l6gye6P/oqOswTvdTY/1kCYnQH6HzJEhUfzu1x7LM9677YOrTCOBFSPulJa7O+q3REOT/SXi1X2DHaCh01W9YKv0kroPuUOGLhEAdNZftNguv2OToQRisZ3fOzS8t2M95WHNc+mJI2gyhfdbWh4kO+izxvOk5CrJIuo0wALZC/1Xy
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014)(56012099003)(18002099003)(22082099003)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2w0ODZURmhrUDg2dlpnNHFmRUd6cWtTeDhpdXhLWE5wSDFuVk9GS0RUUU9l?=
 =?utf-8?B?L1lVUTVXbUh5amVPbENZNlRkdFNpUGl6SWU3SEtqb3A1aGlUdEtRcHhHQUxz?=
 =?utf-8?B?MnZuclhOdHA5WmNSQXk3Mnc0Z2JYemFFUjVjU3k4Sm4zKzN3aVIrMzBHc0Zs?=
 =?utf-8?B?dUJtWDk1b1k4YWVQQVVYb1BBdTN3ZXdwWi9ZMG0yeFBDaDBSUlJQUjNKeFFB?=
 =?utf-8?B?ZVkwVmdsSlM4YTlLRHdaTXFMMm5sL2lyWkl6WUF4ZXNCTWNjK0JOVHN5ZWxP?=
 =?utf-8?B?YjduRU1CWmVWZ25EODdoNkpnWjRuYW1oYVNZMzVyUkloNGpKQWVSSjc3c3BK?=
 =?utf-8?B?RDFmSjA4UVhrMzFJa1BjaXVZZ2x0MmZPNWtzVm53NWZ6aFhxWHg4d1B5eFpH?=
 =?utf-8?B?eU8xcEQ0U3BHdlhzandmNHMyejc5ZERKUmN6K0dYYTRPYVYweENPTFVQUTRE?=
 =?utf-8?B?Q0tFeGtKOGVycU9sZGhkcVNaMlUrdkIvcUlZZkpkanR2M0J3RGowWC9CbUoy?=
 =?utf-8?B?NGpwQmY3RG5Ha0syMlZBNm5BcUsxS0ovWndibFZuRkJJR0I0SlpDZTZSYVNm?=
 =?utf-8?B?V1I4YjgrRHgramxVMTNzcC9FcTVXZ0ZKc0kreGJzdWdJVWZvS256NU83QldZ?=
 =?utf-8?B?aHJJMU9XN0JzQk1IOGwrQXJmSzFsNEZiZHEzN2t4VTlzb3g0eUR2VXplM085?=
 =?utf-8?B?Wm9hTXI3bFJubGpxYlNBMk1Xc3FwRW0wdDdrYllpdFl4bzlqVXF2WGdpM2l1?=
 =?utf-8?B?dVhIeCs0WjlnelFJaHhVbmFXK05pMlVNVlhnaEZIWSs1cFBYa0d5dVdhQUxh?=
 =?utf-8?B?L1RidTJJOTdIeHJDYjRrMUFGQUEzS2lHZWgzZkp4VU9TdWlaWEdsViszWmdJ?=
 =?utf-8?B?TzRGLzdHbFR2TFpvV3dMLzJNTmtUeWFid01aajlxa1pUUDlvNmR6K2VFYU9W?=
 =?utf-8?B?SGlqc2hHYXYrbWFybE01Q1lkYkZ5RUVCNzNrYzhzUndmYUExbm9ob1JXRUMx?=
 =?utf-8?B?NGs4eUZyd255elNKQmRIZDVUenBDMElxampyWEQ0QXpiRnJFV1NkeFQwRkJD?=
 =?utf-8?B?bGxmMHN3WmtkVHNZYnRFd3B3QXBZRWF0WWdOVDRLTWFma0NJSnM4YnFmcVpX?=
 =?utf-8?B?Q1p6bGIvNnFDK2FIaGpKZ1JqVjBPNytTcjBzK0tvdlEyNXpGKzJmRzR5eUpa?=
 =?utf-8?B?MTYwQlhGQ0t6Wmx2YXJzSUVpbS9YK1BxT1F3QUJsdzZaWE1MaDh5a05LVGZ2?=
 =?utf-8?B?ZmZjT2dIcFlSb2VjUzZUenY0anNmUXFkMDRMN3FROXEwY0UxY2loQjJpWXc4?=
 =?utf-8?B?cWVHQUEva0VJN0tZNVQwNzlkZ0RLRHBrTUJpRDdkTnZ0STdFaGlYZmxvbm5J?=
 =?utf-8?B?UW42Q2hxL1lNMWROeWpIcGlGbjdQTU41ZWczVW5VSEc4ZWpXS0g2UnpzNFU5?=
 =?utf-8?B?cFpiTVM4KzgvRFpoWmMrejVtMW83dUp5ZmZTWDdEa1RsNWFYUTg4c2lVK1hp?=
 =?utf-8?B?TkVQVUNLVVVqN0d4OGduZ1VpR1JxdVkzbUlyNjNqbHBRc1dlaUV5N3lXZ214?=
 =?utf-8?B?UTBoN0lXV3hLR0tlT3JFZkJNYTNYeTNOSlo1QzIzbjNsZlU5K2EyeXFSTmVa?=
 =?utf-8?B?UFh2MnlQNGdWMTJUTU90cWdtcjI5eVlFR1d4dVY4YWFValdmK1BtdFMraHVC?=
 =?utf-8?B?R3U4MmNTSFhSS3BnTXN0S2NMb2lyelF2azN0MHFtbGdLVE0rVzk5bXc1QWNM?=
 =?utf-8?B?RWtlV09QU2lRNVU5MDBxL2JOTFdOcVRPbG02cERmUnFCaFdiZ3pwYlRvR1Vm?=
 =?utf-8?B?bDVhL0s1WUV4RTRCa0U0ZlN2L3M5OWxBZS9XRmpqZTVwbVljZE9wQkpnN3Ux?=
 =?utf-8?B?V0UvRmNLbEYzVGRsYzlOQnNKZXlGOE4xMVorVU5GRFhnelZObFIvd211VCtn?=
 =?utf-8?B?Q1Y1Z1Y3ZStTaTBoNGRmRlhpdkM4WGFoajJwOFkxUGxUYkR5WXpqUndCOENE?=
 =?utf-8?B?M0xiZUdseUY5emZFZVVESTlqYUR0aGhNb2RtMndPeDQ3QU41VTZqaWg2dDN2?=
 =?utf-8?B?ODJTMU5zZEliT0M3aHBjS0JtSFZYMksxanJBcnI0TUZNWTdJRW5KdUpRWHBt?=
 =?utf-8?B?T0l2aEtZdmNzd2EyUktiRkszY3VJOFZRMkJqTGtUVTVjUEh3OVRzWWxVMURk?=
 =?utf-8?B?MVV1djhodHJJL3IzaTAzbkdoY2dtQkkzL1lLOXcvbi9IWGpxdWd6U3lJSXZU?=
 =?utf-8?B?NVY3YjNXdmF5MCt6bTNEUXp2ZVVYMUIxNEZqOGp4b0c1MXRWN0c0aFRqWjh6?=
 =?utf-8?B?OUd6WEQwZHJlRGFqOFE1V1lvM0ZsdTNHY043TStVQnQrTHdNZ2RPVmVla3F4?=
 =?utf-8?Q?NTQMVWKx2sERv8GU=3D?=
Content-ID: <0964CD06EDCEE742A451930E579AA685@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fKm1be4BO+4nn/6bFvkER+wH2zE61Obw6gopepLAOx/EogCuCha2GcV8vzb9QyesN6CnKd4+Z3bf3n4AlgNJCr4KzqpBnay8HGkRjJQhFpReI9YdW4kngnidLuqBs/ZYBruc+gSkX1m4KlhtAZM37ldHMyN16J2Vh/qQxUUR7A1e2rRRJQ6LBNmvWL8R41l05NBBZhEU5Eaqe2T2lPkzknRddxf3z5saa9Q5EwSzAy9kCFWzm/UsaJRWrT9PlRORe4XOFVywR77LhkySPue9Ik/C/mC4V7GtyWRDKzd4TxRZyFF8fe1H7bzpSA5/9PEl2RPkf9n6KHSdHHB2JM8aJQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71aaea59-bfdb-4b91-b340-08de848f8411
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 01:41:46.3974
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: opPdTKmei0TyKt7+wji907CFeN59cWD6zTkdLHG5HGhScaprCKgG0JrjAGZVPN2G2YHyuh8JqpiFwmdbTUizWro71w0drcbbwuqa8GoBS7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI4PR03MB9890
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_184157_756475_46357DA8 
X-CRM114-Status: GOOD (  22.83  )
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
> The MediaTek UFS driver uses a function-scope static variable to back
> up
> a hardware register across a power change in the
> ufs_mtk_pwr_change_notify function. This is dangerous, as it's only
> correct if only ever one instance of the driver is loaded, which
> isn't
> true if there's more than one device on a SoC that needs it, or it
> otherwise gets loaded a second time.
> 
> Back it up into a member of the host struct instead, as this struct
> is
> per-instance. Rework the function to not use a pointless "ret" local
> as
> well.
> 
> Fixes: f5ca8d0c7a63 ("scsi: ufs: host: mediatek: Disable auto-hibern8 
> during power mode changes")
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
Reviewed-by: Chaotian Jing <chaotian.jing@mediatek.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/ufs/host/ufs-mediatek.c | 20 ++++++++------------
>  drivers/ufs/host/ufs-mediatek.h |  1 +
>  2 files changed, 9 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-
> mediatek.c
> index c4e70fb99e82..2198271a269a 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -1398,28 +1398,24 @@ static int ufs_mtk_pwr_change_notify(struct
> ufs_hba *hba,
>  				const struct ufs_pa_layer_attr
> *dev_max_params,
>  				struct ufs_pa_layer_attr
> *dev_req_params)
>  {
> -	int ret = 0;
> -	static u32 reg;
> +	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>  
>  	switch (stage) {
>  	case PRE_CHANGE:
>  		if (ufshcd_is_auto_hibern8_supported(hba)) {
> -			reg = ufshcd_readl(hba,
> REG_AUTO_HIBERNATE_IDLE_TIMER);
> +			host->ahit = ufshcd_readl(
> +				hba, REG_AUTO_HIBERNATE_IDLE_TIMER);
>  			ufs_mtk_auto_hibern8_disable(hba);
>  		}
> -		ret = ufs_mtk_pre_pwr_change(hba, dev_max_params,
> -					     dev_req_params);
> -		break;
> +		return ufs_mtk_pre_pwr_change(hba, dev_max_params,
> dev_req_params);
>  	case POST_CHANGE:
>  		if (ufshcd_is_auto_hibern8_supported(hba))
> -			ufshcd_writel(hba, reg,
> REG_AUTO_HIBERNATE_IDLE_TIMER);
> -		break;
> -	default:
> -		ret = -EINVAL;
> -		break;
> +			ufshcd_writel(hba, host->ahit,
> +				      REG_AUTO_HIBERNATE_IDLE_TIMER);
> +		return 0;
>  	}
>  
> -	return ret;
> +	return -EINVAL;
>  }
>  
>  static int ufs_mtk_unipro_set_lpm(struct ufs_hba *hba, bool lpm)
> diff --git a/drivers/ufs/host/ufs-mediatek.h b/drivers/ufs/host/ufs-
> mediatek.h
> index fa27ab4d6d6c..2349d9b9375c 100644
> --- a/drivers/ufs/host/ufs-mediatek.h
> +++ b/drivers/ufs/host/ufs-mediatek.h
> @@ -187,6 +187,7 @@ struct ufs_mtk_host {
>  	u16 ref_clk_gating_wait_us;
>  	u32 ip_ver;
>  	bool legacy_ip_ver;
> +	u32 ahit;
>  
>  	bool mcq_set_intr;
>  	bool is_mcq_intr_enabled;
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
