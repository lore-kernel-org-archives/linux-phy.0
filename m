Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC0FC7115B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IC6mvcP+ughH3pv+Ulxg+fqjjlOMggSxel8FsZ1qJPk=; b=23rheGsAszDe2A
	j7ZfUDirZSXTANiaHx/azwH5d0BTjsE5jaXPa1V1YGMPU6/Ix/rZelEkAvZDPJSqpfQ1P39yNhjKJ
	OXZ+P4rYGIdkNUX3H//mLYkBqPehaOugaDQVpwFL34dEm9azwdaO1gu7kkTx0DPaUxHZiROw29Hp+
	mWXDTwsLSr4FHa7uwcolWy8oNPHcOVYWoWI+CopxOtoxWpiFXifY9hXRkBdpIzPdmF48IF9HgIsQ1
	8AaF/RVHP4ajWqOXy9MREhe2tqHyCIteWzzG1c4siyVsuUasD19ChPHPv7YBeJFsivFSogp369t/v
	2ODja7NpEclaRv+rq+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXon-0000000FADp-0BV5;
	Fri, 20 Jun 2025 09:13:53 +0000
Received: from mail-koreacentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c40f::7] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSX8A-0000000F3qa-2KsF;
	Fri, 20 Jun 2025 08:29:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ropHfulSFwv+Kjmxv3Z1O14H0VHv8Jt+CzfocW4piSceHxu0VbBp+wKqaNmoftQx++hVREwu9uEXerCsDLZA/2yJJlCbUFsJV/5RHCAtqki4CJqBVCTYFglEdQLsCzovfp6RyLP5RFbPpO1RM3/U5fg/vVQVUsnSgSAMF1lcsMNJXLeCKwRtd9MktY351LEOMAdsNfRT28Rt2ysVT7Wo0tjfH7Ll4ybpcg1l9b0t1U6DW9Nb0+2Pxi/IdToq37WXcMGJ2XPoDmaeWhxzKSHJKZii6btrQK8wn8pImOU7Ok00yvD21h9okLH7ADtKH1WVoGXzxfntwyYyxCddmBcwlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ci0Ia/ekTCSb1AOKFUc09tZXco26CUk0l4fO+I8DYig=;
 b=FSD9l6eXRckxe9we6sp50Txuj5KsuUPU1cP4CPILWXB49tiqfTSxi6BVPlGnjToWLz9xi5QA65kJeJ4MSLPkvN6k9lVjSS0aluUiSMQcd9TRV23HFaE8R9imfnzWTjzin//TM4CWPQrfTy2XhYRzcsmYm6zY+Uj/H2CIUQ1dSEmgqHikK14oaqCmM9UfrWA/GgpALusEezLIaA89yQckvuuTnYj/CYUZrb1FR7j3cEsKqKv0n8+dujdk83iCQVRBFnO0lLQD1B9YjET12hrg02Ge9x9lz7JTwxga8dkZoEuKJbqRGHLaL3/MI5eoOKajmTaty6r0zwXMjMGLFOMKkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ci0Ia/ekTCSb1AOKFUc09tZXco26CUk0l4fO+I8DYig=;
 b=bR6iTzLaVauiSTsWssT8TRFa/1IGmgD1RrORFnc82Bhx52bGuzBSEG2X8wFlI7uCpuFvgVNcp/daXd2FMViotQLT+VH4UGGhZII9vAAful9uEQk4rQ2cQXm6YliABbXDQTHVJ3m4uNb29biWU1DdTW2zNBTWlAEzHIFzCuHW8wDBliW5uvsWW21Mj8gV0LXIRnYxq/UH6Max1cfz9495WTbyiiTtg5Y9TsewOOn77HFxu7G7fK3LwsywCjZGJjni0iiL+ZekTsaqVEK1z/lO84GhkoOvyd8yOOxRIGoppmhlASeeTTSnkDvEqoahhfV/1F0kFMb0RQaECRVNKPMvGw==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by JH0PR06MB7083.apcprd06.prod.outlook.com (2603:1096:990:6e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Fri, 20 Jun
 2025 08:29:41 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8835.027; Fri, 20 Jun 2025
 08:29:41 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "bhelgaas@google.com"
	<bhelgaas@google.com>, "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>, "mani@kernel.org"
	<mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"joel@jms.id.au" <joel@jms.id.au>, "andrew@codeconstruct.com.au"
	<andrew@codeconstruct.com.au>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"kishon@kernel.org" <kishon@kernel.org>, "linus.walleij@linaro.org"
	<linus.walleij@linaro.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>
CC: "elbadrym@google.com" <elbadrym@google.com>, "romlem@google.com"
	<romlem@google.com>, "anhphan@google.com" <anhphan@google.com>,
	"wak@google.com" <wak@google.com>, "yuxiaozhang@google.com"
	<yuxiaozhang@google.com>, BMC-SW <BMC-SW@aspeedtech.com>
Subject: =?utf-8?B?5Zue6KaGOiBbUEFUQ0ggMS83XSBkdC1iaW5kaW5nczogcGh5OiBBZGQgZG9j?=
 =?utf-8?Q?ument_for_ASPEED_PCIe_PHY?=
Thread-Topic: [PATCH 1/7] dt-bindings: phy: Add document for ASPEED PCIe PHY
Thread-Index: AQHb3BN3poZHqaPRJEuwtTAqS+UGirQA13KAgAro7zA=
Date: Fri, 20 Jun 2025 08:29:41 +0000
Message-ID: <SEYPR06MB5134E409B225B6B1C934A10F9D7CA@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
 <20250613033001.3153637-2-jacky_chou@aspeedtech.com>
 <36cb3578-1efb-4d2e-b50a-47e6dfd3bdd0@kernel.org>
In-Reply-To: <36cb3578-1efb-4d2e-b50a-47e6dfd3bdd0@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|JH0PR06MB7083:EE_
x-ms-office365-filtering-correlation-id: 75ef7024-46c5-4636-1ef2-08ddafd49a79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|921020|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TWR2ai9KQVFOWFl0Ylc1cldPcmpncmlxNm9Rb1NxbkZIdENzaEVaaFNCUFlx?=
 =?utf-8?B?QWxXSXJieU9NSEdlckplR2I3NGN5b29Ec0VkQXRzbStvUXFZWENoZk1VSWZp?=
 =?utf-8?B?ZUVUa29oU1RUY1RVMk1MR0tueTFidjUxUTRudUxWTlhRRitteGNtTFZ3dmpy?=
 =?utf-8?B?cnQ3U3JGamkvSXVBdm5SUWpxWmppWnh4QlpYak9RNThZazY1ZTZieHNGSWhi?=
 =?utf-8?B?SE1vWmtHcmVpc2xyVmxMMjF0RFdnRHVMajVTOUwvUEE2OE5SK0Jsem8vbUJm?=
 =?utf-8?B?SVpSVWoyajJ4VEdnTUUzQUtYdXpOYzJ5L0QwREdhM205V2VIR3pHZTI4V0wy?=
 =?utf-8?B?ZGlYRDdkaXh1b1JqWm5BMk1wN0RUczFXMzR5WkVTc0hsdGhZQ1g3dGhaV2pY?=
 =?utf-8?B?R1l5Y3pybkZTb1ZQaUhhWE10QVhtM0NRTVEyeHJ2MjdrZGN4N3M0TlNkOWha?=
 =?utf-8?B?ZU1lUDRwRmsvYktxVDVHaUNIbWU1VE5sRmpVbWFWUXhvdG5selBva2xrc0k5?=
 =?utf-8?B?R29oZG5pa3Awa25PR2ZIbFRjbm52d3IrQjNEZ29JdDhtcy9UVlZ6eXBxckd4?=
 =?utf-8?B?NkVYL28yaGJoRW45dlVVbGQrYmhPZEFpK1EwTzZkeks0WVRTYTkvVnJEMlRG?=
 =?utf-8?B?R0JMa0sxUjhRVFZSQnlzanUwc1dsdVpWbGY0alhER2FKekZvOWd4ZTJsUXhG?=
 =?utf-8?B?bTc5TDNTa0xSN0pUcjJjdlEyMzlpNGlrMS9kMzZzVDJoNTB3NlpHeVZwYWRL?=
 =?utf-8?B?cEFmZ2cvOFN5ZnZFUHBiSURocXlZS0ZabzVmOFFzWmltdVF3eDBFbWEvWEY3?=
 =?utf-8?B?S3hqRVF1VDVudjE2WkluK1hNWFhKSUVxRlRYZkRWbTYwbWhRZTA5TlVoVFNG?=
 =?utf-8?B?cDlwZGR6Yi9aS0pnY2dWelhxb0hKRVBPajh2ZHZuWTIxWis2eUQ3RmJ5UXlq?=
 =?utf-8?B?TFdBVEN4TkhhOE5sWTg3OTlibTNJRW5yeThnRGp6bHlEU0djc25FUmdtVXpl?=
 =?utf-8?B?aFVKRFhwZFEycHRqclN1U0ppVWtsZ1dzZXhEelhUR2QzVGVlZ2pUTFpSamJh?=
 =?utf-8?B?ODV1MndOSys3UmdUYmFmdFhCVk5GalBpWDBhSmhDMGExZzhQUnIyQWYxK3dI?=
 =?utf-8?B?bDAvN1RzYWlEcEpMVWsyb3pHSW5FbmhFb3VNM1BtNStHY1ZmeFRzT295Mk8z?=
 =?utf-8?B?QzRYdnExUnJhLytPTWwyVUg5YjFvM1JMZWFSejEvUUJuTVU0ZStnQWJHQmgx?=
 =?utf-8?B?dmdUaGtkVmY3VXgyRDFoNHI1dlZ1RnBvYVNuV2l1NURtWDIxRUpEc041N1I0?=
 =?utf-8?B?UExQYlJremdjUzhlYi8vdlVoeVA3SmE1OW9jancyUFRCS2luOXlneFVNS1Za?=
 =?utf-8?B?RWdBMGg1aVJ5T293SEdtTWJFNzMvQjBTSUVnbWk3TVl1azBNRzRMUVJkSExy?=
 =?utf-8?B?NVNqN1ZmSjRYdnBaK1VrT001d2hlM0d5RDZkVDd2NGduRjJqaU5NZTdoVTJB?=
 =?utf-8?B?R1V4bUlUYTJ5Q2djc3FsWjJqUU9lRWF1cU5YMkliTy9jc0hpbXJTWkRTcEpm?=
 =?utf-8?B?a3RiV1BmTjFWTnZ3T2NVWEhEQWIzbExqeHl1NUZsWjBLWGhSN1RrUmxrUDZW?=
 =?utf-8?B?ZzhLMis4S3RXQ0JlZ3Y0OGJmeG8yUmlqRE5vZTVYQUY5VFlTVzVxb0w1dVRn?=
 =?utf-8?B?Qy9OVk8vUTQ1WmdTYVYxQXhLTlVUeWp4aXY5N3hpV3pDYmVYVGdET3JJT1Mw?=
 =?utf-8?B?cmZMUExBZ0JkZHJiNHhsMllEbUowSmE0TjlteGtGZUlhRXhiaTVybGMxcmt1?=
 =?utf-8?B?NFZUUGs3TEdualp2bFowd2VJdGdZNFpOVXpEMzlRamNEcTVJa0J4anRlTVRt?=
 =?utf-8?B?cHNseHZvbDRETG9SZC9lcThDZVMzWHJBelNwT0IxdDlsUmFLMlFnZS8wT0x0?=
 =?utf-8?B?OTJzMmx5b2J0MG44NndjOVR0Z2hFbTZxTnpqS1JlUWxGSzROdzArM1J3ODlW?=
 =?utf-8?B?UEVWYm9iZ1R3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVVPN0FiZ3V5TFpKN0QxZ3MzakpydGhmSGxvYjQ4Wm1uNk9QQys0UThsZ0la?=
 =?utf-8?B?eDZHMkpoYVF1dEYyeW50UnJ6dmhkM1AveUc0RnE2d1lQQ1p3R3FwSGI0OVhq?=
 =?utf-8?B?bDJRWkdFMTdXeVZWc3hldFBIUkNBRFcrSkFIZ3RJMFpPT3hEam9lT3pGcWhH?=
 =?utf-8?B?cDcrU1dMcDliS2drd0o5dGtLemFaZ0ZzcXIzOGRvNCtoU3RjbVEvdHQxMDdP?=
 =?utf-8?B?NjFFbGJ1b3lqWnlSbVlHOGhsSW1td1hRaDVhNTRqcndneEkzb041VDhHaW5J?=
 =?utf-8?B?NWxqcGxudzI2U1hDT2tnam1pRHpKSXp4ZXZobmNYTFN0STJDUE83dlNwTWkz?=
 =?utf-8?B?L3d1UjhKL3dndzVBc0loMTA5R2NidWRhUzZHS2tmN1dBdS9ybjFxZFM5RkZk?=
 =?utf-8?B?bG83aUdOSGx3R2F5Ylh5aThLNlZkOUhqK1VTcE1lZEhORm9sbmxyK1Fqc0lC?=
 =?utf-8?B?ZURBM2FRMHZMRVJNY3VxeEVpaytJMmFLbkp0a1VwTUZoM00yN1hpZ3FRdGpJ?=
 =?utf-8?B?ZWtxdG00L2NXZVJVVnZ2azJtZFJ3MnQvVk9IcDE0em42L0sxQ292RFBud1RO?=
 =?utf-8?B?NEhhbk1mdFA1WUNCeDFiRVZ3cmRjTi9qajVjWTVHc3c0WTB1TFJXVGYwVTZ3?=
 =?utf-8?B?Ym9DZCtzV3RYVFpNRzNWR2hzcWswNDNtc0RNYmx1RUY5OW54djQ2UG1XVkox?=
 =?utf-8?B?TXJsUnQ2Y2UvQjJDd2VzZGFHeVRyVkNWZUF1Vm80WktNdm85VXdJOGo4cmVi?=
 =?utf-8?B?bTJDYXo1cDJKY0VyV0ZLNnFIb01tRkNrVHU2MFU4aHY5L1VKT2ltTWVidndL?=
 =?utf-8?B?YmVsYW5QQkVGdW9BK3RMcThjVDBpNVFrbkFmdmlTQmpSdXcvMFRXYTE3ZmV6?=
 =?utf-8?B?RVdyS3ZwdEhheENGQkltVGc4YllwRkl0Z1pvUzd2WGZ1YmphY1E0RE1TTTVu?=
 =?utf-8?B?Mks0SEZSWGd3dUtLNnVrSFhKM0drZ3pTNHdlK2lvV21DVm9GUngrblhISEZr?=
 =?utf-8?B?V0djVUFNbmxwWnhwVEZMSDR2NXcrRGZXa3NWWWxXMW50dCtVWk9WdjVZSVIv?=
 =?utf-8?B?K1V5S01wZUtjODZPSHBCZDJYR3h4WjBLU2xZZUpzWDliMVFxOEQrdFB3cC95?=
 =?utf-8?B?VFFhL2NKWStrV3NyRm1oRnJwZ2hRVmYxdDUvZ3MyMDU1c2Z3Syt6b3FMNVZH?=
 =?utf-8?B?STVPVDd4NCtUYll6c2drTEhiZ2gyRktzcUZRUTM1N09ZWG5oWFIrREJLMWt6?=
 =?utf-8?B?Y0k1NjJ0RkhtT3FNS1c0cmJySWdPVEU3RExSM1hNbzJ1NTJoVENPTFJYeG9D?=
 =?utf-8?B?ZmprMk1PenZFNW9xZmFZQkpyZjhLcDE2VG4zU1dIVU5LWmY3VjNEUnVNTnlX?=
 =?utf-8?B?bGljbFpwUzMxK24zSFk1ai9RWjRHOWdma2sxbC8vSnJvcjExNFpUeFFaNlh6?=
 =?utf-8?B?VzR2dE04YlJmanI1MS9sYTVvckhZSDFtOVdweEw3MHh4SjcrYjBJMzNUK0Rw?=
 =?utf-8?B?WldjWUt1K1k2NHJCVFNobGNERGpQaURMZnZhbFRReEc5bXlqWnVrdnpPdFlv?=
 =?utf-8?B?dVBvaGlNSWxBdmRXTVRvS21CUEhKV3E2UjFKWUJHdGNkTWl2QUFPTGdBa3BE?=
 =?utf-8?B?M09xdVEvaUxhbjkrL2xVMHBrWXNtNGh2UlZHVHZDd2JVd0lPbTkxT2xIWmxt?=
 =?utf-8?B?bENpSG8vRVhtQlN2U2kxSm1nRGNpY2tXSlpXSUd4UHA3TWJVTnRFdXFUUUxw?=
 =?utf-8?B?bTQ3cW1HTVE1R0sxb3hPUDhDTk1xbkd1R3ZwT3dYVUEzMjFFNjZ6SU9TVU9U?=
 =?utf-8?B?WEVDN01rN2hZUFdrZEdQSzl5Y0pWdEd0b1JKYTBIb2M3SFB3aTdDWXRxaEhv?=
 =?utf-8?B?NHA1bXBRTDAraGJBa0tKSGU2VnhqVzlCUko4L1FUdTVKZXdDdzhrRXBPcUxK?=
 =?utf-8?B?SGZLYjVDeUtUUmpNdURJVlowN0s1Z04vSndyK2N4UjNhV3BtR0VSNE10MlNa?=
 =?utf-8?B?UFFvUkhJVElFSGgxQjJPWXdVajd3UGNTQlVqaW1DelFSTUYvUFV3TWMvcWFx?=
 =?utf-8?B?Um4rQ3BsL1ZyOG5xOVU1UVFhQlN5bHlmelFpUnlBOFlGeDZJbGtpdFFzT2Fu?=
 =?utf-8?Q?VfyaNx7sKhfsdodNORsKStvmu?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75ef7024-46c5-4636-1ef2-08ddafd49a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 08:29:41.5758
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: luRmARQte5dK6ctHIELX54SGR3jR/xtlzPORQuMOGo2nghsT9XeteS9h17ACFYPV81HabYiQkyB/0WFOwCAlM7Ca/gD1+ZNJw0vu5/PCs84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_012950_720215_12701E95 
X-CRM114-Status: GOOD (  21.85  )
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

> 
> Filename basedon compatible
> 
> A nit, subject: drop second/last, redundant "document for". The "dt-bindings"
> prefix is already stating that these are documents.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bin
> dings/submitting-patches.rst#L18

Agreed.

> 
> >  MAINTAINERS                                   | 10 +++++
> >  2 files changed, 48 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
> > b/Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..762bf7b0aedc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
> > @@ -0,0 +1,38 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/aspeed-pcie-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED PCIe PHY
> > +
> > +maintainers:
> > +  - Jacky Chou <jacky_chou@aspeedtech.com>
> > +
> > +description: |
> 
> Do not need '|' unless you need to preserve formatting.

Agreed.

> 
> > +  The ASPEED PCIe PHY provides the physical layer interface for PCIe
> > + controllers in the SoC. This node represents the register block for
> > + the PCIe  PHY, which is typically accessed by PCIe Root Complex or
> > + Endpoint drivers  via syscon.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - aspeed,ast2600-pcie-phy
> > +      - aspeed,ast2700-pcie-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> 
> No phy cells? How is this a phy exactly?
> 
> No resources? This looks just incomplete.

There is no resource.
I will add the following description in next version.

"#phy-cells":
    const: 0

> 
> > +required:
> > +  - compatible
> > +  - reg
> 
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    pcie-phy@1e6ed200 {
> > +      compatible = "aspeed,ast2600-pcie-phy";
> > +      reg = <0x1e6ed200 0x100>;
> > +    };
> > diff --git a/MAINTAINERS b/MAINTAINERS index
> > a5a650812c16..68115443607d 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3696,6 +3696,16 @@ S:	Maintained
> >  F:
> 	Documentation/devicetree/bindings/media/aspeed,video-engine.yaml
> >  F:	drivers/media/platform/aspeed/
> >
> > +ASPEED PCIE CONTROLLER DRIVER
> > +M:	Jacky Chou <jacky_chou@aspeedtech.com>
> > +L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)
> > +L:	linux-pci@vger.kernel.org
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/pci/aspeed-pcie-cfg.yaml
> > +F:	Documentation/devicetree/bindings/pci/aspeed-pcie.yaml
> > +F:	Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
> > +F:	drivers/pci/controller/pcie-aspeed.c
> 
> There is no such file... actually many above do not exist.

I will separate MAINTAINERS from this patch to a single patch attached 
the end of series in next version.

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
