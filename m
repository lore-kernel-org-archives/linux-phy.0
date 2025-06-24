Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25FA2C77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 12:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkPz9KD0oyYVIvtLPTzF/XpW16aDEdUK7r9sgobpP8M=; b=f5kF8sJIE9Uz+H
	vwANCpQgpgPe2kaeMWiTcca8aEmvTg7v0MN0gaiMgdpMlpuy5i4VyV4QXUS9/uHs8HNdD/FjGcs+3
	weMg19jUppfmHcx4ErbC9YCAOsVCdow32cfI7WHPPN2PS/DzpwOokPjMYq7KXfFrufaQ8OSyqZAoa
	6oJg9zKXzkatJ7rIPtdMEhCw9Eh8liDggw8bkECb7aoLH31rai+UHCVcy/1x5dxAeQYGf9kMqOuVD
	fTMfrAbhrraSRj2E8CPnnz82TVhvU6v7EyWJmQVFs5dgz+1b9MdXCVvobc2duv2/6/30etSNEXwi0
	yqgGZgWhfQ7DbJyhxARg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU2Q6-00000005Uwm-3D9Q;
	Tue, 24 Jun 2025 12:06:34 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1Yr-00000005OtE-41lm;
	Tue, 24 Jun 2025 11:11:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RMXiWxXefGbBC56bRzNdbPtB/ARWo606C5B+uLeraveHIE1pSZIfwy4T0y58561H3QzCoJLMQOPtkWk5O2x0Zos2kkqDW6ceizKT9wZvPFovPJ2c1Yaa2AI9OgdMSJvXhVQvy0yZiqa0a3t9SYGKzTQNgwhILAHoI6e5ApBDD4a/0+AN2taOQmnPpVISlzmcgocGnxIc4VRj5NvpmWuIW/AgH1fQmu/oSa/lTloJjVODd6HAeBdDZubZtRbvMjfMB/d0JQAYwKrp/2AkG0qIibVHfeokuWGgLT/grSH2D4MVJxcBmq8ZC9xea/odQ1bEEZtxQkd66Y4QCHXzCWszWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNXJaCIVZiVtk80fPFW9ea2GJTxJmHYuTJo/2i4RB0M=;
 b=ZpTdxCUQw3LmXa9u32rgApfTxeiEZPuve91h6sLMpNrGVALvSjneotHEdu0NjrdvwJhlOMGL6yELj39gtF5B2Mw/pwdRpEYvQKN09XywS3kI7O2IAMaZYtE70pad2sa4qGqI/6xA0Zbz5EnYT8n6ddrVu3ieruOQzlaVX8GXFWSmuksYq5giw+K2VE3bAyi7sGssWeNTq+ICnGEtg4rrIQFP7qbYqTckWK1VTKKHJVcn3O7HosH4MINqITlaRr6PPzIdqhcV/5ImWnogZXdqlV0fN4ush/hfKvCycCr5SrB8CZhBkQ3jeuLAxWt0aMu4QTUMF/dZ9hImWksrkZvtvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNXJaCIVZiVtk80fPFW9ea2GJTxJmHYuTJo/2i4RB0M=;
 b=BP/1+Q4iYfPMT0JuGOeERZAFyOiSkRQi+UaHo0/jHQXX3rdcUEF7vds21Ej0lzRoyONoq0xDnAy6bXTqE+23U/jKRNmm7cuY3+HMSOuhETAsYyHSIJod79Vknx3xRBfi9ho5vABJdo4bJwJmrS7C6erHwZndz+7xl5L9GoM80NdaEy3V50LJxU/5Cby3yvyw6tfvbPZ4GcEx5cox5lw2oYhfQGc6qmgqEdLeMAL96qtqnnWan+YUnxBNpO3nY0Cv+MQ6KcjVzmmFXVSeegQw77mFUhgFqEMDvm1qZYAGiwNe+TS5b0/uOGSKODgNUdYyIt2yCZy8tE2bwQEu4wxamQ==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by SEZPR06MB7080.apcprd06.prod.outlook.com (2603:1096:101:1f3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.27; Tue, 24 Jun
 2025 11:11:23 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 11:11:23 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: =?utf-8?B?SWxwbyBKw6RydmluZW4=?= <ilpo.jarvinen@linux.intel.com>
CC: "bhelgaas@google.com" <bhelgaas@google.com>, "lpieralisi@kernel.org"
	<lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>,
	"mani@kernel.org" <mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
	"elbadrym@google.com" <elbadrym@google.com>, "romlem@google.com"
	<romlem@google.com>, "anhphan@google.com" <anhphan@google.com>,
	"wak@google.com" <wak@google.com>, "yuxiaozhang@google.com"
	<yuxiaozhang@google.com>, BMC-SW <BMC-SW@aspeedtech.com>
Subject: =?utf-8?B?5Zue6KaGOiBbUEFUQ0ggNy83XSBwY2k6IGFzcGVlZDogQWRkIEFTUEVFRCBQ?=
 =?utf-8?Q?CIe_host_controller_driver?=
Thread-Topic: [PATCH 7/7] pci: aspeed: Add ASPEED PCIe host controller driver
Thread-Index: AQHb3BN5QYkLFJ4SFk66wBBeIABUJbQA/lGAgA8cdnCAAhiQAIAAAwxg
Date: Tue, 24 Jun 2025 11:11:22 +0000
Message-ID: <SEYPR06MB5134378DDE51A94D9F83E7439D78A@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
 <20250613033001.3153637-8-jacky_chou@aspeedtech.com>
 <40d1c5bd-0457-55ea-2514-ba27e6a4c720@linux.intel.com>
 <SEYPR06MB5134973F678EB5B163DD50809D79A@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <a618588d-54fe-69a9-27f7-7b19ba905a52@linux.intel.com>
In-Reply-To: <a618588d-54fe-69a9-27f7-7b19ba905a52@linux.intel.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|SEZPR06MB7080:EE_
x-ms-office365-filtering-correlation-id: a04761f8-fcdc-4628-ebdc-08ddb30fdaa0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NnM1TmYzR1pZSmRvRUF4WFZyZHdna2tUWGE5NTBMSnlOb0VTSGM5SkRLOGRn?=
 =?utf-8?B?a0Z2WHM4OGRXZnZOa0pvUXkxZ25MZC9UUlhCYUM5SWNXeDQ2TzY5K0dvWnFO?=
 =?utf-8?B?TWRvayt0SFhhSG1jMkRmNjBhMXo0L00xVlB4M0lod0lFaWR5QjMzUmVZbkxD?=
 =?utf-8?B?SjlHc1NrM0VpRENNWHVlL0hOOW0zUWY0QUJJNXlmUndDWXpXQzN1VGY1Q05Y?=
 =?utf-8?B?K1FRR2dDaXVwR296ZFVyV2k3clQ1N1RpNFNuY1RBQi9tclp1QjZGdmNybDhw?=
 =?utf-8?B?ZmdObm8vcDQvejZMWWpVdW8wYW10amo2MDRQRnZFcDNyNmNNWjNPbG1NS2Vs?=
 =?utf-8?B?bmNZbURXdzQyMFJSNDlKWk5sWkVILzc5ME56VHVBbnJNVHNpNVJYUXNlRkdS?=
 =?utf-8?B?VUZOcnJKMjRwaC93Z2oySEZCR0hHSFkrRk5LSjFvblpNbHpsRnpzZzNXU2dK?=
 =?utf-8?B?Rzl6bXVMUzZTQkp0V1JSa0craXgrU2JRbU03VVo0aUJJSTdvaUdGMWl0YnFS?=
 =?utf-8?B?bzhQK01JbmpRK0ZZWUppd3NZeVd2R2paazM4M3B2ZFdPRDR6L3cxZ3plK29H?=
 =?utf-8?B?VnJNek1ucFdaeU1vcUdTcDRSdVhxZ20zbFJKcSs5TzF6K21GcWFMbEFJcFMw?=
 =?utf-8?B?OTZzZHZjaWtSSEY3UXhyOHkyMnV5dXBQdDloYzZHN0IxLzBGUkxmWWxLSU45?=
 =?utf-8?B?SFVoTnlkYzdLbFRidys2bmNQcEUzWnNEWERuN3dzTFY1dEVDRkZlczM2aWdQ?=
 =?utf-8?B?RGNoL3lhNVZNVkdrSnJnNzlxeG5MWmlrS2NuN3lDeGgxNWJHTzl5WGJQWlNn?=
 =?utf-8?B?ZExrMm51N3VuWVMzL1VlY0NsMFp4K2tZckpRL1JTV0g5QU9nTXhOZW5TeG15?=
 =?utf-8?B?ZkFOcE9ycWNiQWZNd3VraklkeVpSbzc4TXNRSmhiZUpnN2lITU9xU2FFczJ5?=
 =?utf-8?B?QzUveVp3em5MRFNWUkhKYlFRZUh1bHpQSU5mcUN3eUI5Q2VsOS9BYWlwdGQ3?=
 =?utf-8?B?aEpvbDhzVStmdmNIMTZYcVEray9EaEhSclFqTDhiNjErcHp6ZmpSeWdyQ1Zj?=
 =?utf-8?B?NlZXRWwrTC9CMHFxYTJkTXNDV1A4by9IcVpQOEJmMnZZVWI1VUNnWUFsWDVm?=
 =?utf-8?B?Tk5vQTlDaU9QNTlSTE96bnUxRE5BOVBWZWNUamFOUmJpUG1CMGkwSHV6MFNV?=
 =?utf-8?B?Uk5xT1dFRmZBaUZ1SXNXeGJ0K2l4dDh4SzVONmpvcVdROFdFcVRCN1dzcFM4?=
 =?utf-8?B?TXpweVNxV2pKR3hrUzdsNzJEU3JsT284Sk1QSzJYL0xRS01SVzVTcStZazd0?=
 =?utf-8?B?UkFNcDVtKzlIK3ZlOTVQdG9CTnVodFJQUHpPSGkxRU5YWWJQejFFVm1DOFFW?=
 =?utf-8?B?VkZUenJhd201NkVKYWRSWkIyN3dDbk5WODVzbkloam5FdlFyUmNWVEJLYzBu?=
 =?utf-8?B?QmNOZDY5S3VUR1FqY0Z1ai85WWx4TThZUDZ4dXpMeXA2VE40VDc3Y0VhZ25U?=
 =?utf-8?B?Z00zWllLdWV5SmRVM2RkWStUZlpFYjhVcmdUdTJnYjZqbVJJYnpkT3hGUHpk?=
 =?utf-8?B?MXpSdElUYUdzZjI2NlVXYXY5YXpGOHpkejZDaUYyeGRLTkYweExONitOMjVC?=
 =?utf-8?B?MEI2K20zeWxyRXc2T1NQbE1acklGalZOMEJhcHdvLzdBZjEvTjFqRE9GVlpa?=
 =?utf-8?B?eU41eERqejd6THlIQWlKRkdPZkZGMmdjTG9JdTFmdzhJRHUwdkR6eXB3ZmJm?=
 =?utf-8?B?Qm8wSGpmZzcvTTFncGpGVUt6UlJ6THlMWVMreCtUeEduRmtkQitlbVFScmFB?=
 =?utf-8?B?NEpGc3FtaU1RVyszMVJxcnFXcERmVlU3RGpRamtLalA4SWF5U1c3Q3AxVXp1?=
 =?utf-8?B?VUliMnVxTjFZU3ZESjB3ekNYOWVkSW9rclFYdUg2WGl5VUFFT1ZUT0lMTHZO?=
 =?utf-8?B?dzV3bzVFck5mUm1aeisrcVBhbFFBWm4ycWpJaTIzd2hYN21Eaks5bVBjaExL?=
 =?utf-8?B?RnBOU1FFL2N3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a1lKMVdaU2tndTdkdHpKV1BtZDExQ1VoRGd6SXQxU0lqSTFpOVpacnR6Umlx?=
 =?utf-8?B?WlFLSlVha1YwSmRnT1lBY2tKMW5NbW5ac29EWWswQjZYdndoaXlQZGw0OWw5?=
 =?utf-8?B?RkNtei9UaHJoQkhGSSt0MDVQZHNuWHNhWVNQTlBFenR2bHJaUGQ1d3hib1FL?=
 =?utf-8?B?R3ZvYkEwbVVOd0VkTUQ5STRxcFhPRExIMmFPR2JjQ3NmdkZNTU92em84ZmVw?=
 =?utf-8?B?NUlKNXdLOHdlWjducVF5QXdadkt3RjZQNUFJVnVMdDF4OUMvNVBHeHg4NjBl?=
 =?utf-8?B?dkZGczljS2owc3pWSVFnWmhQTmZQV3lsVyt2Vjl1ZGdFc1lzbUdxQUpHOHpo?=
 =?utf-8?B?cnRndiszNTlrU1ZUSEVUU0dXZXMvbkljYnl3MUllaHNmOVFyeWhvNWpsYXhW?=
 =?utf-8?B?M09VcTRrZ29tMDhVSksybXU0UFN2MWs3dGtUbitPTURaekdORzIyRGtvRWhy?=
 =?utf-8?B?M3FUa0x6YUZSVWYyTC8vc09ES29XR3oweFM4anp1VDhnWml4RXNOK09GNzhr?=
 =?utf-8?B?dGFFbDJCcXJkOWRzZVJWZllMdnd6WHJqeG9uNHJjZVliUm1HMUhRR05jV1FB?=
 =?utf-8?B?ay9FSE5ybVZnaC84N2M1TU1xQW05L3VQeS95bUxkU3JYbkU4M2tVK3VxeU5Z?=
 =?utf-8?B?T25RWSs0S3lTZDVvMUVpUVJJeEJoQnYzanB2WFQ4dDJjYTYwWjl6N01ZbnVR?=
 =?utf-8?B?NFltQ09Pemszell2WnhOcE5wbVd1Rkg3MG9OWEY2MG9kS1ZGY3UzeWZHdkYv?=
 =?utf-8?B?OXFWa21EdmZwTXVCTlVIbUtiK0JWNGlHTlRWZ0J3OGdQejhXV3RYZFkvTlFR?=
 =?utf-8?B?cVBVb2xlaEhFcjFVRStNU2NMTU5wYi9ZdXF4MDNlOUFacC9jdE9TWUZYKzhX?=
 =?utf-8?B?anFWVUkrVHBJYzMwRmNqS3BObERKODhXVGxOeXdCMzNhZFNISXhNdVlTQWhE?=
 =?utf-8?B?QmFnbzhNcDNDNDBUSmhoblN5OWo1VkJuS0VjTlk4eHpUOXFjbk1NUzFEVExC?=
 =?utf-8?B?T044b0I4WkQxVTQydU5ZbGRFRHMwaXQ4WmszNHlkK1U4N2x5bVp4bndsMjdD?=
 =?utf-8?B?emFoZnZBT0JXbTN4SFhHYWxvaTM3Rjl4Q0lmank0K1ZxRlpRaVBValdDbEFC?=
 =?utf-8?B?SjhpTDBPdS80MCtUOTMyWGNTZWNxZ3JRMllqbFlXbEFUU29PREN4d2p5MmRK?=
 =?utf-8?B?S09pQm1INis4UkRnZHpYRXJOSFBSZFNoU1BhcEk5SXMva2lORXIxTXhDOHVB?=
 =?utf-8?B?WURtQ3dLN3ZTbXh4RlhuYU5wa3RkaUJjU1c4YWRnbEZraXlWUjUyc0JWQXlx?=
 =?utf-8?B?WDFuVi9OMUJCRUJpVlVPa29hcUVndThDdi8vQlFTNjQ0OVNXdE05NWh1NVFH?=
 =?utf-8?B?ZDNmcjYzdkM5cW9oemhYNm5hYkg5U3dDc09ZTHR3UFJYMy9aNS9tNk43MFhU?=
 =?utf-8?B?VXdVTXFiUVVuNGR1MWtSK1V3WGNYczlQSEJnTXZIbHVYQ2ZKeGZsYm1OOGZn?=
 =?utf-8?B?OHVUSG5PTkV0M3FDaWhEeVA5dmFOeksyQVdyZ2ZNVmNManIvVTFYSlJWZ1o3?=
 =?utf-8?B?ZHFUaUtxL0xvWWxUSXpPNld6eUpvaUY1YWEwRXBub2IyNlVaeXlIMmw4Q3ZM?=
 =?utf-8?B?SHhwcWxEY0QvbnN0NFZjUWVWNWduNE1Na2JVK2pEVy9NZG1YaXlBMHkxRnNw?=
 =?utf-8?B?Z3VJVEt6VDU2KzBwRWxzQlZ1SnIzaUNUVW1mcDBwdURZU1ZxYXgybFh0K3dl?=
 =?utf-8?B?eG05aHpXMUVmZHcxdXk5ZFMxKzlOL05EM0RKRzJGdjU4bzkzNnhuNHNhNjlo?=
 =?utf-8?B?OVhrZHFPa25KTU90MzQ3L0RaMTZYUUNEM2hRTGpxNnl6L2JrNlhPVjdQL2xt?=
 =?utf-8?B?RnROYlRxd3Q2bVhyMkVtcEliTHNZOE5UdXZtSnlkZDBVMm82ODNvcU1XQU5q?=
 =?utf-8?B?b1Q0ZHJYWm9ZWUJ6VFg4UVpPbXZjWVFFVis2MVh5eURscjIyQXI1RWVWWGcy?=
 =?utf-8?B?ME9iNjhLdXI1Yzhwc1Q3WGxOdFdlaHlySWdHWVhLM2hicUErUVdUa0h2NzNu?=
 =?utf-8?B?MURCVTRBRUZCeXpOS08yVVp3YjdqQjlEYjZCR1F2UWtPZklQVC9hUW1nUVZL?=
 =?utf-8?Q?6+KabtPCuUWIiP3JpWMwuEIvR?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a04761f8-fcdc-4628-ebdc-08ddb30fdaa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2025 11:11:22.9788
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1HLSO9xOXLbd6+G9HzaD4sBRDFHSSMeaT4zRQqf+0FjVYmOw+PK+/F828Ux2PsLQBabM9fv39c5B6by7Gq5WC+9QEGpEHyHZWjcY18UCb44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB7080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_041134_008000_73D1C728 
X-CRM114-Status: GOOD (  18.66  )
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

> > > > +	u32 reg;
> > > > +	bool link;
> > > > +
> > > > +	regmap_read(pcie->pciephy, PEHR_MISC_300, &reg);
> > > > +	if (reg & CAPABILITY_GEN2) {
> > > > +		regmap_read(pcie->pciephy, PEHR_MISC_344, &reg);
> > > > +		link = !!(reg & LINK_STATUS_GEN2);
> > > > +	} else {
> > > > +		regmap_read(pcie->pciephy, PEHR_MISC_358, &reg);
> > > > +		link = !!(reg & LINK_STATUS_GEN4);
> > >
> > > While I don't entirely know the meaning of these bits, what if the
> > > link is not using maximum speed it is capable of, does this check
> misbehave?
> > >
> >
> > In our AST2700, there are gen4 RC and gen2 RC.
> > Therefore, here will get capability to confirm it is gen2 or gen4.
> > And the link status is in different register.
> 
> Okay, but then I'm a bit worried the naming of the defines as "Link Status" has
> a well-known meaning in PCIe Spec so it is confusing to call something else
> LINK_STATUS_*. Does that name come from some AST spec? In not, change the
> define naming. If yes, you should prefix it with so it is clear this is not referring
> to a generic PCIe thing and I suggest also adding a comment above those
> defines too so anyone looking them later won't wonder if you're just
> duplicating something from the PCIe spec.

Thanks for your reminder.
This code is used to get information whether PCIe have completed physical training.
I should change them to call LINK_UP_GEN2 and LINK_UP_GEN4.
I will modify this part to avoid confusion and add more comment, as you said.

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
