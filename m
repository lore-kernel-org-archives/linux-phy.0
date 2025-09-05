Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D710BCA1013
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 03:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfwrl50jVC7XnVa0PN5v3LaK0kOPF74733yqkjJm5uM=; b=TOaaqb7Eg2L0h/
	YEQYYadADJh7mgbODsF3CXnSyuAbgM59WBIbCUtlhwFNrVjI0X/nn4hjDD5DuQTCh8H4zur13nhT8
	FLOcv5tzLbvL4gJ0QA8u/5phf9G1eyJU5Pjf3tG8+3l+LMRJKZYFr//6TvjqANS9FUJvUDzG+c5OY
	P0cSU7dHY2I+SyU4yLWnE7wXKYXcZsLAGPtRkLN6wptXwDnrJRDuHz+VsLj0q1kvJNTwMHpwz0Iwn
	TQf3Q1x5nz0aR40C+ArkJcUlC2QzmKh1bAfUj8ClHx6hSc/NC9O/dk5w1XtA62fy1O5377RLWQGUZ
	usEBM8fQELhGkWdOVBXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuN5U-0000000GR55-2eWF;
	Fri, 05 Sep 2025 03:26:08 +0000
Received: from mail-japanwestazlp170120003.outbound.protection.outlook.com ([2a01:111:f403:c406::3] helo=OS8PR02CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuKXz-0000000FbCu-3wZW;
	Fri, 05 Sep 2025 00:43:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MXaywiIoJkBkBEKPYGAdqbbUtoN2zNBEWWtHCVLzXLi0WcaPowkyZGkME08ZayR4pM9zCH2h3lAOpDsdCPZ3JPrU3carTVL3a3aGex55ANnFE+4+XMKmN6tmXpHLgdMM7kPkTHOKYvUZhhVr/wS+IP1k66yDEVz1VEXuAfW11gCkOBx64ouFsvSMYxfqjkP8cOoMXAA/n/Sqx9ONpBeYfrJKNHOVbgv8NzjUGukq8qBsJZ1NgtzQkFsFbm+2yKr+6AA1eK1xEeFzdfBzVeVGt1vtZ5LZAFx5e0z7h6oR0WT/VhT5o9fx8AUUtdXKv0Gg5bR5P3kJGVOoMYSKGeSEng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQmCoE5fU3a2J8F9lTTThT7I9/7Ng5Mo13F21Lu/zzo=;
 b=r0kUIMqnUDxXkDoQVTBlZd5vzcRoXodvheWiumxI3N/3uBf4xh4mFBRIL52uG/sFyaGAf7tg80JETH9ZVfyxLrki2LM14HqmIrvxaNugZtIYyoGsIu1iTNBM+8MOsQKN8wstR+B8AlNFyYwrjHd31o+WsWjVSr2gY+OFEJS5LuvgHq5xAhE3hcDoc+ZKMKEkvduKNl2o54xblnVMHjV817XLQFBPEOIAIrGQq9ouwC69KSYPW3FlQ+/lPnWFSLftm1cMEtTpbrxItjWh54tyzoIcPQ1zG19NjYSq+GfJG557WScSit3KP3YRFAHjUmePNrcSrE/1Mily4n4GJHJKfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQmCoE5fU3a2J8F9lTTThT7I9/7Ng5Mo13F21Lu/zzo=;
 b=Css0R7djt2e4+aHr+RMzazs03Vwei9jf72JlJysSkozP3RzSrm22v7WpbGWUCmgKAJ+psBtxon5Jpxxfq1OoPD6InNRxNjtubvwtU+vxj+BolvcuJk4oYBW9Zq6zeDOSZW3Hm0D+2IGD3TeVkEKlf+pGHHvJTGYINqbEyP1TQGu0FVGbA8K7qnXnM5yBly8hNFRaMs8kUQi84bS+JRFMSX9BitUip8fmPe8N5QQcpOJsPCYYgU1VrlHwj1HMNxuQPZ6lkl6+SnnJrBj/ziVC3Nuk6R4lrVHJtpKXZDje2PSHCK+xeiE26ENi9aMkIEpUOWFTLmOc2AdIjDBwwg0BNA==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by SEYPR06MB6862.apcprd06.prod.outlook.com (2603:1096:101:1a7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 00:42:55 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%7]) with mapi id 15.20.9094.017; Fri, 5 Sep 2025
 00:42:55 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Bjorn Helgaas <helgaas@kernel.org>
CC: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "lpieralisi@kernel.org"
	<lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>,
	"mani@kernel.org" <mani@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>,
	"vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>
Subject: =?big5?B?pl7C0DogW1BBVENIIHYzIDA4LzEwXSBQQ0k6IEFkZCBGTVQgYW5kIFRZUEUgZGVm?=
 =?big5?Q?inition_for_TLP_header?=
Thread-Topic: [PATCH v3 08/10] PCI: Add FMT and TYPE definition for TLP header
Thread-Index: AQHcGwWZ7trgU+RIp06LGvatVToprbSCDxcAgAG2knA=
Date: Fri, 5 Sep 2025 00:42:55 +0000
Message-ID: <SEYPR06MB51345BF3DAAB8D55B06E2D679D03A@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250901055922.1553550-9-jacky_chou@aspeedtech.com>
 <20250903223202.GA1235935@bhelgaas>
In-Reply-To: <20250903223202.GA1235935@bhelgaas>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|SEYPR06MB6862:EE_
x-ms-office365-filtering-correlation-id: e2888a5c-5acc-403a-74c9-08ddec152745
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?big5?B?T0FzQlFOYkl0c1I0WGhIeEpMS0p4a1VnMmc1TTRDY3p3dFhEUG1JV3UrbDVrV01i?=
 =?big5?B?VlpldTF2OGdNT2RqamVPaXJDQWFNQzJETjhVR0lZWkQrNHlrZVovbllDM3pLMFZL?=
 =?big5?B?SEpNbE83NW5aWXFRY2dHQmxQRVhPb1RBTTQ3ZzlhN3VRWnVvaGU3aW95Z2dFUHQw?=
 =?big5?B?RG9QUHRKdHUzVWR1ZURlY25QSFl5K09iYmFoVTZMdkRWN21ReXQ2V0ZHMjcrVWZn?=
 =?big5?B?K2xRM0dWU2hld2Ezc0hRWnFRcEJlelhaY1BCWlZiYWM0Tm9HSDBxMTBxdUxoYnRR?=
 =?big5?B?RWhWajhmSWtJMVpWQ1AzKzN2OEUwdEwwQXhGVHpCZDFnQzBhNXZNbWpVSXhrYk5B?=
 =?big5?B?dkk5cnV4cWlHT25BdXRlbmlzNGQ0QmxBRkdlT1pNNFRnQWttODhGbmFZVUFCcXlT?=
 =?big5?B?cnVGdEtVMThmSzE1bStpL2FLT2s4QkptSmZJR0FFQ3NtSlRRb2tGWGFhejBIRzlQ?=
 =?big5?B?eVpidGVBNWpXcW1pZFdpdzA2cGVYR1FsaTZuN0NBdlczT2lOZm55L1BMU2g2RVhm?=
 =?big5?B?bUIzdDJIKytGdEc3ZVpPUFV3c0R3Y2VWZHRXS2tsUW4wZUUvU1JVMm9ZQXc3SzRt?=
 =?big5?B?UTJJZFE3TXhIVDRVR1VSNkFZZ2tuQ2o5M0NLakNnUitvSUZLYXRqVVRpdmFWS1p5?=
 =?big5?B?bmNnQS9rMkVjRlBNQmthbmR1emlHRlFvS2RzTmhvQzErb2x2M0JaK2dJQXNxRmFx?=
 =?big5?B?MlJ1MEk0Y0hzYjJnbG12bC9iV2ZnZCtwS0dtNTNHV3ZraXFWbytzMlBrRDRWK21I?=
 =?big5?B?MkpFSDRjTVI2bXM3S3JhdGFVSEpZTnFxY09leTEvdXpmdFhZOW5UT1NtL3lIek03?=
 =?big5?B?N2lUdXh1TElvL1lwU005T04xUWJPUE1HT0pJM3RqVjh4azA4TXNZbmpnRjZPT1ph?=
 =?big5?B?VSt2SjZ2NHN3M1MzYzNJempNeHRscHZtK0YzUi8zZDhKV25KeEZONDhTbDVjVUF4?=
 =?big5?B?MUwrYzVFd3VhOTluR3pZaWg5a3NRMGFTVGFRWnl2akxvdHQ0clMvMkR5U2pTQlhw?=
 =?big5?B?NG9lY0haSkRIOHlBMW5lZm5xNWxMSzUyUGVxK0ZNUkMxRTRWNXJOb1B0dFB6NTBw?=
 =?big5?B?bkxtOW5ma3VSb1JNU0ovQ1hVVVpSV05yQ1lYNGdFNCt3Rys5dEszWnBGTlF4ckkx?=
 =?big5?B?Y1ZTaTlhblA3TmsxL2dPa085TkpzaXpaclNsTCsrYnBqTDB3MDZmMFZNdHA5N2gz?=
 =?big5?B?TFhUWlJXd2FDaVpUVEhHN2FNSUkySU8rVEh0SWZsVHF4NlNsZmZialBuMkh4RTZX?=
 =?big5?B?azlHMVhMV3h4d1J5OTZ1Q3dxdnBUTWVPK0hIbzVCVjVvaHhCWW5oa2d2NU13TjIz?=
 =?big5?B?djI5VVNLaTFDa3V4S2hSWDVROWNuZ2pEZlBHaHlNMzVidUxnODVVWGdQbDByajcx?=
 =?big5?B?SmJoV1RvMHFIMjA4MGs2L29XY0R5QTBBaXlaaEphb3NHTmg5d05nZTA1a0c1YzRv?=
 =?big5?B?bnRQNjJnejZkWmNMejRYd25BdjdLeENLUnpQSWVQMDRZcGp5Ny9xVmc5cTR0MmV1?=
 =?big5?B?ZmkxNm1QRFZrTXRsUjV0cEx5Q1Z1REd0MXROY1prUTRqQ2VwWklkaHQ5ZEx2Zi9a?=
 =?big5?B?YWhLTWJ1R0Y2Uk1sdUNmc1JycmMxNnNUZnJoT09XcnFzZXpyd0hLOHVOZktUQUhV?=
 =?big5?B?VlQ5ZjdMRW5KMUNOQWFWM2xKVkFsUktYZ1lQOTUvZWpDRlZNMENCdjR4VjdhYnk0?=
 =?big5?B?ZnM2ZGM1VHp4Sk1ZazdIYk5Kam84cmtoR1N2RlVERDk0WWY3eTF2ZytiS1BaKzZH?=
 =?big5?B?cUtweGV6a3hrcE0xOElYb2tYT2FNWDF1T2g1ZWtlU0VZU1VzaEVKc29nU09MSGg5?=
 =?big5?B?a1d5aXA3NEpIcElibVNxWnVKTEdzSGF4aVJaeHJxYVZRQytLa29JbEU0RFBmemlM?=
 =?big5?B?elpYL3pnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?Qnh4NDhvNHVmUmxUY3RMQjE4WmVGd2xneko2S2gwb3YyZGlHVmhKYmlZZUhQd0Na?=
 =?big5?B?aEp1VDhvQlBiK2x6RFErd1krbTFDUnhPeC9zSmkxM2d4RStEcnFVeXYxVGNxKzFq?=
 =?big5?B?a0lEaHlNUFQzempIQ25DN3B4YTZpN3hkbjFlTGhzNFJ1b1o2S0V3bGpNZzFZYnNQ?=
 =?big5?B?am1VYzJsVW1UTGtDbVFPYVJBeDkvT3gzeXVkZklPaGk0UlFsV0NmZVIvQ2liZUJ1?=
 =?big5?B?R2pZQ1dqdFpQKy93RWRST1RoU01mdnNBU1NMZUNGMHhUL1psSC8zM2UreEFmUU9Q?=
 =?big5?B?bGxGSG9ueUhPRXQyaDZBQXZDR0phWjA4NitkZDJ1YXprb2E0d1hheDExTEdKKzZK?=
 =?big5?B?YlRTZ3ZrazZzK0MwQUFxR3ZnNjVMbWtxZFFxZGg1N2pQWDB0cnJ1Y0c4UHpVYjhK?=
 =?big5?B?cDBQN2hGVUY3c1YxSGVhTURpN2pFY01nSWU0NWowUjAraEFoYTZsN1pxaFhVakdL?=
 =?big5?B?UTVKN0JENUd6V0xWL0VQZmQzcER5bER6aThrM1QycmRYM3VJcXF6OTBQRklvcTlS?=
 =?big5?B?WHNUQ29ZaVREMXdEZHlESkZnM0ZJbi9lSTVVeGs3bnJkNDAwMk9sRUxYU1VjcW9W?=
 =?big5?B?T0NQTis0RG9tUmUrNmxYbUgzWFFCWmo1SFViRnJ1VTQvc1d5QXA3VUNaMG16RFVM?=
 =?big5?B?aUYrK1NqL3VnTWZyZVdLYjJFaFRtRmhsYnhLVlk3cHVYdFNtUzV1QW81cS9qVVBy?=
 =?big5?B?Q3diU0Y5OHA3STJlVlRZTXhLTXlZOHh2c2JGQkF3WXFIR1hsclBrZXc5RjVLTUtU?=
 =?big5?B?WkgxSkZJVjlLYk5jV3NWdG1mZmw2MHhhYUpyK2xGZDQrY0wvdncyRUhXSEhMU1NP?=
 =?big5?B?V2xtVlRjUmJ1M0RpMkJyMzdMQ3JzcVFpK1dFMDFCRWUrcHduMk9LR3RPQXJ1RE9T?=
 =?big5?B?cWFFaDZaRE1QdkxXWUsvM21SQU4zMWRXQ0tFeXR4U1FjYWdMRklLQ3I4K3N3OXRv?=
 =?big5?B?aUZnMTlzUnBNeHZJcTJCNEl3QjRIUnF1S2tGMmthU1IwZnlOcy9uN0ozeEZqaUs0?=
 =?big5?B?bHlFV3ViSG1WYzRyb0Z1amF1V2svVkkwWS9RTDZ2YmNpYzk3ajlsSnhaenNJMDcx?=
 =?big5?B?YTBzUWdEWkpDTUdnQmlIVGFTbEkydFVVT0YrNXVZS2RvMzRKMnFUR3d0dmFvdERi?=
 =?big5?B?Mm1BSkJwN0diOTd1dW9mRXlVdTUyQlF4TDhwNVVJUFRXa1MzZHdHeDBnRStISVVN?=
 =?big5?B?eEZoNC8rWlhLWU1CRFJHVldLZUlsRUJmRVFzQUpHYXVQNU1uMzlXZTc0cmxKVm01?=
 =?big5?B?aHdLNnRRbGY2VFhPNGZWQ3FEYmJPS0pMU3o0TlVsa1Q2dmtwRk5MVGdCSUMxY005?=
 =?big5?B?TTFsem9GUUtreWIwZXFCTDFBQmloWVNpVmlGQ1diUmVwYWx5RGs3cDZoUjFCckNF?=
 =?big5?B?YmxwVFlxSWVGNnMyT0kvTS9SdndERHBOSVltak41djg1NjJjVTVYWWxjNFd2MU50?=
 =?big5?B?YjBTVXNHWGdJVUxqeFd1QUF5Rmh4T0xGOUFENmZDT3hFNlUzN1ltaUY1bUdJdlB0?=
 =?big5?B?YndnWE9UaG10dlJDTkFHN1BJSm9jUDEvMktacWZteWw1emdhdHViTi9haDloS2lk?=
 =?big5?B?blQ2cG1UdUVKZ2Z6Ynlidjk1Y1ZCTmxydVJpM044ejNyanFIUGdGVmUxc1JYTTBK?=
 =?big5?B?UG1EbkI3L1gyRHpaeXRZVHJIWjByRitjRkU3RU5tc1pJb1ZXRk1IczJqZTUxM3pw?=
 =?big5?B?aGlHQmxPRnQvUlZuRUpxOHJTQ1V3U1E3RVJTcXJ4WFllSGQ3emdIU3g2SkdSUTJE?=
 =?big5?B?TzI4V0RlWVlkbG40SzRLenRKZ0YzaFpPcVhVVHlVNmRHcE5IWndvdHBwZXpTOVlG?=
 =?big5?B?cnpDd1g4OU53d1JRajEvOHV1dTBUZWxKQkdnVjVFQ1FFY1EzUXhnWU1peG1LRWx5?=
 =?big5?B?cG95RFpQc085ZFcyYjZ4ajQvSUxjRDVoTzZvWHM3aWJ1akJoQmErYzkrZzJZNUpB?=
 =?big5?B?ZWhWdmZWWXcrNjBiS2t3TC81aEhyT3puTWJIeXNiTVAycHgrdVJmTXVmeHMvcXlO?=
 =?big5?Q?FfYrfkmHu8IFtsod?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2888a5c-5acc-403a-74c9-08ddec152745
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 00:42:55.3765
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YzTASUzIGvmaHRHjiBHWglRQ+NvTgRpffc8i+CggIONtIz6m4eIAwIU+k0eyS0pfUlk+PXIh/YA9g/VQI9qUO+6BSzEwgyvhS7TYdAKPNKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB6862
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_174323_977343_D46D0498 
X-CRM114-Status: GOOD (  12.48  )
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

Hi Bjorn,

Thank you for your reply.

> > diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h index
> > 34f65d69662e..45d47d6c4f53 100644
> > --- a/drivers/pci/pci.h
> > +++ b/drivers/pci/pci.h
> > @@ -81,6 +81,18 @@ struct pcie_tlp_log;
> >  #define PCIE_MSG_CODE_DEASSERT_INTC	0x26
> >  #define PCIE_MSG_CODE_DEASSERT_INTD	0x27
> >
> > +/* Format of TLP; PCIe r5.0, sec 2.2.1 */
> 
> Please update to PCIe r7.0.
> 

I will update this in next version.

> > +#define PCIE_TLP_FMT_3DW_NO_DATA	0x00 /* 3DW header, no data */
> > +#define PCIE_TLP_FMT_4DW_NO_DATA	0x01 /* 4DW header, no data */
> > +#define PCIE_TLP_FMT_3DW_DATA		0x02 /* 3DW header, with data */
> > +#define PCIE_TLP_FMT_4DW_DATA		0x03 /* 4DW header, with data */
> > +
> > +/* Type of TLP; PCIe r5.0, sec 2.2.1 */
> > +#define PCIE_TLP_TYPE_CFG0_RD		0x04 /* Config Type 0 Read
> Request */
> > +#define PCIE_TLP_TYPE_CFG0_WR		0x04 /* Config Type 0 Write
> Request */
> > +#define PCIE_TLP_TYPE_CFG1_RD		0x05 /* Config Type 1 Read
> Request */
> > +#define PCIE_TLP_TYPE_CFG1_WR		0x05 /* Config Type 1 Write
> Request */

Thanks,
Jacky

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
