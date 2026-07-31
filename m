Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9D2C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0nE5Bz7OaNS7LFS3f5YYenMlz0mBpA+S057oZiHIxM=; b=fq51rxx55YCiWK
	xUKlWWLmICnGvl/xpuoRGZRCkIGcz5uzDNWMUPGGwEadzwBVhYOGvgJEA/DDwF9DVjv6DZ12pE5tj
	4Z9kauUg7gl7+wLrIA1aoA+GwSR49h0cF6f0BZikemvTKVtW8ZJlKMDcXgGLCD4fLb0L2JjzZx7sn
	aUiNTfaQvv2mD0/HFkcsDnuD0lUKpdlUYkKmW9TjWPicMRKYr/PosgyRabC23vLQh0HR/RoK16KhZ
	4NmTwW/Jtd2vte44uugpyJjHTp/gYihQgOZNpLykxArSW2wUo7CIgRqve8Na2fLbPNTGwS/xgrQdV
	1RXc8+DFdVWCMNu27shA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpgCH-0000000Bqph-376U;
	Fri, 31 Jul 2026 05:54:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpgCF-0000000BqoW-25au;
	Fri, 31 Jul 2026 05:54:16 +0000
X-UUID: 3f751f768ca411f1acbe4559397dec65-20260730
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=1AtTrQ6swAgWueJfyfpDJ/IlKJFGM5y6Osbwq08gfWY=;
	b=QwNXyK3kxiquazqmkGCQh2yubGTsnSWHJAoJ1vOdDaNGCa97v1vwEf6jp32qekBYgMm15g81z1rW9ti99hirkTGFEZ0eKXw+srixej741dfOyvHp6lH7KPVRUVuMXKSIQ5CqqVRphfp152Q5PL4M8Dw01Mw9LRmaSCgmejxZXpc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:0956c2e3-f4c0-4be5-af6f-85fa0ef674cc,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:e0882941-4636-4a32-8559-2615e2662808,B
	ulkID:nil,BulkQuantity:0,SF:80|81|82|83|102|110|111|836|865|888|898,TC:-5,
	Content:0|15|50|99,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-
	1,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 3f751f768ca411f1acbe4559397dec65-20260730
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <chaotian.jing@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1493988468; Thu, 30 Jul 2026 22:54:09 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 31 Jul 2026 13:54:06 +0800
Received: from SG2PR04CU010.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Fri, 31 Jul 2026 13:54:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CEjYrJIesHfuPOqyDH2KaLwhthVWgJkVS/qiKs5g3MJUmG4ofArLGvUvNzkwT2+jz3xvGsx/8rECO2p3adzvk0wkBhwnaIVGHVj440+CV3k5sIB9IDkQzV7M/p16SujeoTv0BNTOqmv5NYISRWvaSGeNnD6WVd6Mb0qNWTCy6XHyPiHSfkObq8fxyctgu0QO+To/oCKhCZ/UJEaS45zNJ0shQCrPmkIXyG1jmfqkOOPOlG008twilhJDseRXfapEIjjg4d0fj5mw7C+NAYppPdLJGd36jItNaZZSHTqh0jRPQaE1/KqQR0VaZOPNVaHQtM6KeuHSVdwLSpB5Jjo2ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AtTrQ6swAgWueJfyfpDJ/IlKJFGM5y6Osbwq08gfWY=;
 b=NcM3oIRfl7Tzgxd2FuXzt+MvdGNUemn5LJs59bCqYuXIV1m4tbDp6gREsuCLj2U5vW6v2ig+Sa9Fv3l/aQ9g3kctJcQvY1XkaclhsNyAfvWf7T98CcFQPLQPWGhyzl/zInxdGCXBaVbEiV4aKiNqowkiBRU5LhF7fI/UIzz3ZAlAK1F1KbyEE9wiGrOqgNzs9GSxGgkhu6U4Ei+JnXzatyTQRN7u8Uq8I3AgKobb/CI4MTijhQi/xFI9OIVKjksm+ZxlFxJZ6Rg7aiW2rwdeM0VOXOi/4n/CI429hITC4BGSsJVKIM9UOnffbfPXP6RdCY6TOV3S8SaodTttSOE6XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AtTrQ6swAgWueJfyfpDJ/IlKJFGM5y6Osbwq08gfWY=;
 b=c0KD7B8m7eOVroYTeNnZuXV16HflXx+hdFh7l+16Ww7zUDf644TN75ALSi6tim+e8+S9PJDbqmFbdeWhsRPGt09G26Sqs5UOywLGsvPWkBRQlQUETv2j3ouwJuAvzS0Fsbc+wvPjBR80QvZ4PveIkY2jaWWM20kygUDhoXHYTEc=
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com (2603:1096:820:8b::7)
 by SEZPR03MB8206.apcprd03.prod.outlook.com (2603:1096:101:192::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.15; Fri, 31 Jul
 2026 05:54:01 +0000
Received: from KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4]) by KL1PR03MB6032.apcprd03.prod.outlook.com
 ([fe80::8d8a:2d79:b170:1ec4%6]) with mapi id 15.21.0270.012; Fri, 31 Jul 2026
 05:54:01 +0000
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
Subject: Re: [PATCH v10 26/26] arm64: dts: mediatek: mt8395-radxa-nio-12l:
 Complete UFS power supplies
Thread-Topic: [PATCH v10 26/26] arm64: dts: mediatek: mt8395-radxa-nio-12l:
 Complete UFS power supplies
Thread-Index: AQHdIAkBPM3sLZhQ2k6dNWIUK8CperaHIeUA
Date: Fri, 31 Jul 2026 05:54:01 +0000
Message-ID: <a18dd977b136d131d5ba3e79fa45bc49eba2cda2.camel@mediatek.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
	 <20260730-mt8196-ufs-v10-26-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-26-bc5ecef202dc@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB6032:EE_|SEZPR03MB8206:EE_
x-ms-office365-filtering-correlation-id: e1626053-0b69-409f-1cff-08deeec81efe
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|7416014|10067099003|4143699003|11063799006|56012099006|18002099003|22082099003|38070700021|921020;
x-microsoft-antispam-message-info: BEXdoQrNXknq9g5Kzr2hJgIUtW74qdRUKrrzHTpDWYQK2o2ucSUShDH6HocuQP8HBWoZGn4+MgpJQ/3jEo2mL1B4kQru71HhPKbhVTDGQ4sV6OPJEk472hoeN5cOJ9LL/zJc4eFAgdHNvmkulXeLy6oazk4xtgQ/BjDPsZ8uuXCwhFhLsIRHG/Gcdq0LRtOhvptck6hq3YvV4bXUI/E9tbZ4wwtpP46UbTivfsfpUxoOZSNc2FrSA/pBYzpMq1JtaeVUXuQnW0asd3uXoIK2aSMhGt0OAQsa7l+fDAzOUk0YdyLa/h8I22VA7VTCeaWA8eXOz+377Y+goeEJ8WfuIQyYqdmCaoQDnT9wNvJLeJoVs90Y7cxIvBD3B6vZBfas4qMe8GBzRaO0bpeGw7v91/yOM8mAE1zV0a6VSZY9TYCcbGA1PkfjjLO75MhtE3/TXtAxkhYSjDOVL89CJPxXyW50wxILrN0RUP6CCcOh3vrVD+SOyguEziLGNLktFUhCWV5FOvmT21Zv00vj3LpuJerMNW3sS5FpzpBQYObL+dYvbxVzOQmwxGGFJQX6D5EMHMr07GMyf6Ql9sW/deZfXX3tPJYtGTP27h15xOaDpIprGgC7cqrdsr2zwFyRnAG15Ibus5Csg802FoVig14mpS+Ixw58lJeCm9mhsva9OFw3OXK0EGg5Roqd24zDUDfPH75P6TC69r272AwlCXap6tlHIx8Ll9mn+99uNiB/IIcEv/nIRw6MQoU8wrM1otf7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB6032.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(7416014)(10067099003)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHVpK0JCbTdqUjhvYmtrWElNVHBid3JMMkFIdE02dHI2Umc1WjFJUlB0c3d1?=
 =?utf-8?B?YWxzYmhjKzF1Qk1aS1F2K1k5U1NTRW8xcCtTWlJ6aU90OGRKS09NSzZ4dTdB?=
 =?utf-8?B?VkpEV1ovZTh6WW9MU2R1ZWc3Q2hsOWdQSGRGbDllM3UrKzh6RnNBNE51TkNm?=
 =?utf-8?B?VXMwMENtZitnb0hDWnZ3dy9lU2pXeEtZUklUdnpTQnVLdFNrZHNBV0FGaGd5?=
 =?utf-8?B?SnF2UXFRY3dFTEJhZkUveDlBSjFYV1JOdUY0UlRDRW42N3hHRnZ5ZUhIdFYv?=
 =?utf-8?B?NWttck9UUE9YcVZmbEMrQVEvbExBV3BLSkRtS3FNcWhpUUo4eHUxTXpqMjRt?=
 =?utf-8?B?NVZwa0dIamtiZU5QbGcydTRvZDVOVjN6WHNUR0lBaDNvYlQvOHJhYnRwZHlD?=
 =?utf-8?B?TXgyc2RjSGlQUUVxc2xORVE1a0VpWEVZQ3l6dW5WZVBVTlFSMkxkZGtpcnA3?=
 =?utf-8?B?V09jaVlxYmhKajdWWXV1OERXcGNFV2lYZVlCUjE2d1lKZHMxQVRzMXJSamdO?=
 =?utf-8?B?Vk9BUnVsQnlMSjh3MFdPSllFNVJTd21NUTRQMlpYTy9RMWpidEx6enRFc05C?=
 =?utf-8?B?MkdNL29XZjhHTUE5OG1UQ0piVTF0QlJRajZJa3FhcFJmR2Z3L2ROaC9aV3ZN?=
 =?utf-8?B?Y2VhWDkzV2QyemNnZWJvOVF3OGxWMWcvVlA2TC9ZOXIxRHErcTM2NDdwenUz?=
 =?utf-8?B?ZHVoTnlhVmJVR2V5UjAwQlNyWFRxOW14R1FTSHplcEovTHR2cFBFMWEvREU5?=
 =?utf-8?B?S0hkOGxsRk1CNmRaNFY2NlN1V1hudUhlZjdKam1tNHZZRmtkMnNKS0RKWE0x?=
 =?utf-8?B?bWJIVWZPcUJjc0dHMUJjMVQzdFgwRW1rc1huTUJMc08rdTZVTUZxYXB6LzZs?=
 =?utf-8?B?SjdnUVBvWWp2OThrMmZreTQ1VjlDeHlqVGRGZmdpUUhRZ1ZDVTYvL3JxcjlG?=
 =?utf-8?B?QjUyM3VGbnhGVVJma2lBYmZjVW9YanVZNkYzWVdoRHBqVGQ5MnlRU05DeDlN?=
 =?utf-8?B?TXl1bVpUY0ZSRkhyeXdHc09DVUJuK0oxZnY5RTk4V0ZzUUNWSnFzZnBncU8y?=
 =?utf-8?B?bWpnU2lORkpJQ1ltbnZ1b2JGR3hRd2Zod0tVUDVHRnJSVVJQcHRwNWdra0U4?=
 =?utf-8?B?V2JvcFBPWVVFdFVEQkR5THdQcFlhczJ6MXd3Sk83S3F3UDVkbFN3TXJsMHd0?=
 =?utf-8?B?M0piM3R1cDVLcHROcFhCazRHWVEvdzRrWGIvdWdwdUtoNkRwdC9GYlRTUnk4?=
 =?utf-8?B?ZDhLVEYrZkM5ZnRqdDZKaEpaWWlCMTlpaVNLVE9qK0piQitwa0RZQUZUWHli?=
 =?utf-8?B?WERwcEtrL1luZXlkNXlRUkU4Y29kWTlqU3Y5c0oxQnVVY202bUVqUHcwZFpN?=
 =?utf-8?B?ZkNWcVcxeHE2aGduekhxVUhtTUo5TThGVWlXVnFVay9rSHB6VDV3NkV0b1Vi?=
 =?utf-8?B?aDk5S1ArQXJRcnRtM3NWc3pkZWdkaVBVS2RWT2NSMGRqRUprOEtyekdjMTNT?=
 =?utf-8?B?RlBRVVNNWkptMXduaUlYSU1Gb1BGNnBIbERGc0ZBYiszSVc4Zm1OOE5LOXBn?=
 =?utf-8?B?VjF2MGExSXRqM2FzandEaGpuL1FaZVkwRUdJVFR4L0E2S0plWkkwRjNDWjQ1?=
 =?utf-8?B?akFSV2F6ZUlKemV6Ry93d0toYWtGakpNZStuNlZDdzhmc3lYQ1VjWldxRGZ1?=
 =?utf-8?B?enVHYkF1RFRjUXNwNGV4VXlySkh4Rk9pVW5UZUV3bTdQNVpMQ2NYZnBTWXlM?=
 =?utf-8?B?djVxRjU5a0piQ2o4aGtkNmxSY0F1RDZlVCtTbllvUWlqb3FtZ1BoaitmTUNa?=
 =?utf-8?B?YUhaNk4xUldQK2hLdHZleU5TYlBhOGM4b0lPSFA5TUdVZFpBZEJsNStDbkZu?=
 =?utf-8?B?Q204RVVEQXRVRDNwVmVNWFY1M1VHVVRiSXFsL3pVOHhHdTc5VEthaEcySEla?=
 =?utf-8?B?bkFwNTlJNEJmR3pEelpxaE9JOXBySzRFdmx3TmNybGdZWU5OcDRiUnhkcW1q?=
 =?utf-8?B?NGJnMmlkZktSK2hsVFdETm0rNVdEV1pzR0ZDOFpGMk9md1kxVjgyZ1kraDB5?=
 =?utf-8?B?VWtSOUkyMWp6NUJGZEhqSDFrWUhQeVU1QnhBMVN6VWhjeS9KWFNPR29OUjd4?=
 =?utf-8?B?ZGpFRHdjTW13Y3VTdEpDV2NsZUFkM0ttSkZ4QklYUXB0WUZudkxCbVFSemVV?=
 =?utf-8?B?aVlVeFdscmRXOWY3NFlXcytYTDhOWWovQ2hsRFJ5cWZNTXcvVldUMGticjR2?=
 =?utf-8?B?YzRab2RxdFhFYm4yeUJLTjlHWUJGSzdVUEZ4VUIrVmlxV01Za0JlSEFOZjJS?=
 =?utf-8?B?ZVllSnVBNDhVUVRuRG5sRzJ5TFdISG8xc1ZGNjdrbXpGWHZCNGovZjY3dk5v?=
 =?utf-8?Q?I+aJcuy/FLfZVML0=3D?=
Content-ID: <64BFD28FEA75E84D9838383D194AD48B@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ne5fvNfWilY5Y1TlRDkacQOV2t64wc5FV++Qzk/fu+R3XjhtuvnpVl2PXpHQXVsqtbTMNdBsXqH1WxcoXwCaegk0byNhLyPLSYTzKkpZoBCUvC8mdCoczFgUSfuFZ/A/AKvQDUU4/u+KzxnW0dh8LZYNRZDOioZZTrK4er4yQOm4E3dwvE88ys2Mg3/OW9yC7ry3wp0KSCw8EV8JHLbkywUfJgEXwDJHVUnzPxDDLipEc8ZwBHUm0MHPYW0EYd7nlqCOFzf6doyLVgKsYAV08rrzJ3UvnuYg/3Zk5IawYs6yuZh3hxrkdw9SFQS8dCSUhRsfP2HLwG2lqYVTsCYP3Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB6032.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1626053-0b69-409f-1cff-08deeec81efe
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2026 05:54:01.3847
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j2YvZ0Qh5lwNR/WXqwRELLSvfl8srjQXigJ68DkG2NyPkuWxF10rDUL1nLqzsAopCkh7/6Ji2/KYuoB1ZOxC685b9aC3EQF5QzbgaTwtT7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8206
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_225415_542919_CAD3EAEE 
X-CRM114-Status: GOOD (  15.14  )
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
> The MT8195 UFS host controller dt binding now describes the power
> supplies
> feeding the host controller, that were previously missing from supply
> description.
> 
> So, add in the Radxa NIO-12L board devicetree the regulators used to
> power MT8395 UFS controller on the board.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Reviewed-by: Chaotian Jing <chaotian.jing@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
> b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
> index 9cf0315da035..7e9cabdd2825 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
> @@ -1184,6 +1184,9 @@ &uart1 {
>  };
>  
>  &ufshci {
> +	avdd12-supply = <&mt6359_vrf12_ldo_reg>;
> +	avdd12-ckbuf-supply = <&mt6359_vbbck_ldo_reg>;
> +	avdd18-supply = <&mt6359_vio18_ldo_reg>;
>  	vcc-supply = <&mt6359_vemc_1_ldo_reg>;
>  	vccq2-supply = <&mt6359_vufs_ldo_reg>;
>  	status = "okay";
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
