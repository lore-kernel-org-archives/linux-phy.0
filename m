Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B9B1C7115B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 06:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Zw7FVfhJY9L1idtVynqH8kOqW6c7dIqqeo7BMWdcXg=; b=MrI8pWC4cvprss
	bG9pRJEogJG6idTg2g7Pb5KQVCmmIYRFm79rpA6rZNOB29/S1HFaxak8MrxC208SDc+v8c9ltpa3W
	+7kiPl95S0WVkaWS6Dd9Ku0LvAP/M0KLpIHQxx7dG82LprJCcgUHUwprYLmnQ0xKxxDJ7stCDOb5w
	WMtkpMwOSSuQQVuzhEQvAasrowfL4cWmsbuz3A2MwyeF3F4Y9Db+k/0vjPeMnCPy+5fVtYOMm55tT
	A0w45M6mbyrtd0fsfAmwJAE7XSYTzycKLyKXjSnAwkkM0wg74ZXJkQBTT4acPZgMG49x6aVWEt7+w
	vhMfcymI8vpemjmbOv8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSUum-0000000Epzp-3ff6;
	Fri, 20 Jun 2025 06:07:52 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSUsP-0000000EpnG-0aVi;
	Fri, 20 Jun 2025 06:05:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yb2LnbFZg5aIrvcazM0p8icwmppBl2Q+/Fnjj6MEkvW3sTCqJ29CPQgi3+lxJAoucFYIfp8TFpDTPS8vAzx69Ol44QFxUZS5/y1XRWNdraziFf1x39+L46CAm3qVUi73LfbSBKiQCFhE+793IGcWvMa3Z3nlUOpFJxwVygXkBFijJ6o/BGjbLXbvaMl7dqZH1aRWV7l5VcIXEdRXU0OGdLB29O8nu7RneAON5vHlHtmqe/4p2QnFiy0eaqrnFQLttC1Feow0GyXWD+5y+ottpXX8SH9JbK7dwt/mgoNFuWvAZBPVvCQe6m0WWEnjcrIZFnJndSPAMUy/sGBJ4aoBUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nvldQWIXTtrxZsc4enP17Ft4AemdKzby1DQUcudrXtA=;
 b=toshN/FNnEmPNvNqBKp29NcWrW+Fdy8mcdbX0u83dosjlVyi+dGyZBBl0AZACx/VRWqhg/EURxAmLI186VuEAoALWIObuW8c08KphbWOI6GkYmtW6PhWNjK8l2aPPxhHx09m/YmnzxtloMwMxY/JV9BYTVuL+YlF5CitBInvKO7iLsWIIV2CyzrIZ6Y+yxSJdHEIyKZ/tziZSZstuLpZxEP+nTww4Iw1d7g2y5SdacMFTLKcPpdV+o4Uiy0PGWcvpgtLzU4Z/2I6k1swlK8UbZMWmgppBr+gGh3dfQ5iVcuakBWdPVj7OD+TIsciZr1X+hIDOu4Anb22yGYNiSX75g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nvldQWIXTtrxZsc4enP17Ft4AemdKzby1DQUcudrXtA=;
 b=TKDtB8BvQzMa/Ts/OqU+mYy9o/TVO0Wk8FUJpt5aHlbFQa4k2ljQKeSFdNe/b/lVa48b/9ZZZBNZNUwLrnBtPOKMAaQwYH382461Y9yOEnwGWQPwGnpcSit7kWgb7CDpaLY0pJflzDY1SSFPevmZ1we4MXpwefhBkaZBuYzxrnIzShwvg1QPAZloYB08jfnP3AQ9WFr8XdV+WQIc2cLzKds92FYnepzR2TNiuGDBUEkds6x9JOVpGoOg+Sv8hRK6HeZKUsktyjLKJAGqFkwrYm9Q7WdpvMP57+XwClFv8Nw+KyRyj+oDe/XC4Q6awSZI8VL6k2OpOebpNswezDYMdw==
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com (2603:1096:101:5a::12)
 by TYZPR06MB5076.apcprd06.prod.outlook.com (2603:1096:400:1c4::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.20; Fri, 20 Jun
 2025 06:05:20 +0000
Received: from SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28]) by SEYPR06MB5134.apcprd06.prod.outlook.com
 ([fe80::6b58:6014:be6e:2f28%5]) with mapi id 15.20.8835.027; Fri, 20 Jun 2025
 06:05:20 +0000
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: Bjorn Helgaas <helgaas@kernel.org>
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
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>, "elbadrym@google.com" <elbadrym@google.com>,
	"romlem@google.com" <romlem@google.com>, "anhphan@google.com"
	<anhphan@google.com>, "wak@google.com" <wak@google.com>,
	"yuxiaozhang@google.com" <yuxiaozhang@google.com>, BMC-SW
	<BMC-SW@aspeedtech.com>
Subject: =?big5?B?pl7C0DogW1BBVENIIDcvN10gcGNpOiBhc3BlZWQ6IEFkZCBBU1BFRUQgUENJZSBo?=
 =?big5?Q?ost_controller_driver?=
Thread-Topic: [PATCH 7/7] pci: aspeed: Add ASPEED PCIe host controller driver
Thread-Index: AQHb3BN5QYkLFJ4SFk66wBBeIABUJbQBSEaAgApH/VA=
Date: Fri, 20 Jun 2025 06:05:20 +0000
Message-ID: <SEYPR06MB51342E52B3C4A7AFD42485039D7CA@SEYPR06MB5134.apcprd06.prod.outlook.com>
References: <20250613033001.3153637-8-jacky_chou@aspeedtech.com>
 <20250613162837.GA962545@bhelgaas>
In-Reply-To: <20250613162837.GA962545@bhelgaas>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR06MB5134:EE_|TYZPR06MB5076:EE_
x-ms-office365-filtering-correlation-id: 82d3c6e8-555d-4fcf-844e-08ddafc07006
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?big5?B?WFY5NFJJQzBteFltcVhCZy9tb3ZFb04vQ2NWZm5ydFYvdHF6cFpCN2F5RHlSTnFq?=
 =?big5?B?NVptb2x1dmtOd0dGeDVNUTJsSjZEQjZzYWUvNXhLQmExRkxjTkpPSzNyd0N2SnNp?=
 =?big5?B?ZjNON0VJblBEeDZQK252NVd1cFpJRndBb1BRcHJxN2ZXdnpTclRadnVtbEI4TzBj?=
 =?big5?B?dFpWVlQrUkpraElBemRpVzFLa2hkWXhBTXVuRGlSSFlpVkpuaUIrRFprUHJ1Zjla?=
 =?big5?B?Nzg5aWxOT3BlK1ZLY0IvTzBpZkZlc29WaW5zak1zOE0wbEcyRmRhdVRZUUJRSStt?=
 =?big5?B?Yjg3eStRa1dUbUZBS3k1R25HRXdsYmt3RzBsOUF1eVRWMHlFQXJtOHdZK01OOUM1?=
 =?big5?B?Z1YzT0J3MUQ1MThyakIzelJoSFB4NlZ3TDREekM3Nml0c2t6SnVjaVY5VDJDMksx?=
 =?big5?B?T0pqVEpnSjFielNwNWZrVmlPQVIzYlFhT1djY2ltVEVRM2ROeWYxY2VXTDdBWHJM?=
 =?big5?B?c0Z3dGtmMkY1Vkp4YlplbXRNZHE4anVMZ09jblNYNkgzRzc2bmpva3Z1Uy9vNmUx?=
 =?big5?B?UXhzZ3EzT3NEeEJCbE9iYWJiUUtuOUpLdmNjekluMTNBeEUrSTJkc2NVc2RLeDAv?=
 =?big5?B?K3cxN3B2bW9USVgzN2RPUWJEUm4rZ3pXbHhXa1VrSFAxTWhvMVRIbXRPbXkveEZq?=
 =?big5?B?Wml1MW1VZ1RBbHNaR0JQM045QVZXY2JIUFBobVk2WFVCN0xYTy8wK3dPT1o5WFdD?=
 =?big5?B?YlZwMDV6dk9kcTBxUm1NSERydmk2ejJwQmYyNllNSjN3ZWJFdCtWay91WGx2YjFp?=
 =?big5?B?emZhZUNxUjNuYzZranNxNWZxYjg0TmtBUlpDUy9hc0ZxTEpSUm0razBieGJVczE4?=
 =?big5?B?cGQyL0pScTdxa0tQdlB4OEdHT0dwTFdlc0paMnpPeXViQld6VWh6VHlJeFNLRDNU?=
 =?big5?B?eHBrYXVaZEhOZ281TEZjRTJ0NXl6YTZrcTlnaGIyTG5mTzRNNWFrcnJqN2JDVzNz?=
 =?big5?B?dEM2UGhjY3g4eFhlUFRxUVpIN1pGaEFkQXVRTkJwaVlvMUtWY2o0YTRFZTdVTE5Z?=
 =?big5?B?dlN4QmVLV1hJa1lTUFdCY082Rit2WlV0b0FCSGRFZ2RLem5RbUYrM29KWm8xbnRY?=
 =?big5?B?VG5ZUkR6VG1Rc0FXRzRqa1Y3SjdPMDNvbDA3VXc2N2pQZUF1eXFvdXk5Z05OcGRi?=
 =?big5?B?Mi9aKy96WVdQcERLVi9HN21iVUlqcUdySzBIUG0rYzJKVlZtWEZKYUE0WkhmTkNy?=
 =?big5?B?UVZWaXBOMDFiOGxoV3VhK20rZEJSUlcraDAvNnBPSEtuTTNMbzd6c3RDNUJtOVA4?=
 =?big5?B?T29tTHBiSnBiRHVTZFpnaUZMRTJsdmcrN09iTEZpdXBvNTNheTRRUVJ6QW9BUG5I?=
 =?big5?B?WDVkSFduOTQxeDJnSmcya05IUjJsUU5HbDVRTlJsdzFvLzRuSm1SUkxQYk9hOTlC?=
 =?big5?B?Yk1vM1JwdDhJQzJLTDRDMlNCY2lWMnppSXhaYVB4dXFXSlo3RDFLSkQzSXptNGpw?=
 =?big5?B?OTluL3JvQzJ3VlpwdkpvZWRnQ1VSdjN6d0JqRnVPQlBSWHBqVmN1aUZHZWIrREdI?=
 =?big5?B?dDJ3Ri9uSjdUZGk2bjMxdVVQYXhvMENFY3lsS0FkUzBieEhwWkFtcVJ0WW9YQXIv?=
 =?big5?B?VlVWY2ZEczdmQWhEbTloSjZaczM2cHZnVTZoelZqUTlrYjh1N29wRzZPeE9MV3hK?=
 =?big5?B?MEM3Z05ubCtCVHllek5ycTcrb3VkOUUveW5wbW5lYysxQjNNSFRVQWovTDR0R05m?=
 =?big5?B?YWpTTnZqMW5XcnJEMmc2WFlSYTFDOXp3bWtoeTVWcGc2TU1GSVh5bkxQeFNFQ1Az?=
 =?big5?B?SlVCZWdCS3JDNjNnc0sxakh1VFUzMkNzNnNJUHNPbHljY0s2N1MvcmVmUklTQ25S?=
 =?big5?B?RFJPUjFCazg0QkFYVXYzblpYUnJ3Z0Q0QlpGVHFBWTRudGJvQk9jSVVwRGwrby9S?=
 =?big5?B?cTQydkJnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR06MB5134.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?Z2tXSmNueS9jdUZ0dEQ4UnYyZUJkQjhSS1BSUEc4N1FSN0tqV25PUGljWEN0cUZq?=
 =?big5?B?dFRxV0M3TmdCaXREYWRsWDZVSVh2TmpnTWZGSEFWaDF4SGVhMnV6ZGpxZlFDZXhX?=
 =?big5?B?c3g4VWh5VjBqSFdtQ29mU2V4dXZrRVZZNkVFUVorMUFUWS9sQ1Rkdjdka2w0d0lq?=
 =?big5?B?NWF3TkNnN0tMTWIvYWxUMEg3YldjOUFjdnhqN0xQVUgrZGFvVUcvaS9hWExJSVJP?=
 =?big5?B?UTIwY2JIVm1Od213aHV5S0hUVnpvbXRCWlZKTmtERjBzNDNaVUZWb2MrV0VVL3Vs?=
 =?big5?B?NEhmYW82M1Rkcko1RUtWRkU0WkRkYUFlbFF2NEZFQjgxeERpcmx0Y2pXSGJ3ZTFK?=
 =?big5?B?SHRjd2pJaHYwUngxQjduK0o5ODlMV1krMGh1dVNkbVJSODl6elYyanIrb3hTSnY3?=
 =?big5?B?YmJ3QTFvL1RNeHVBanl2VW4yOVZKOHhVQTVLMVdKaCtkZVNkaUMvV2hIT1BHaEta?=
 =?big5?B?Z2VhNWExeDBvUXB3UHJCNldZZm0wNkpzZk5SRGJteVVZTmtrZzN1NTZNcWxnTml5?=
 =?big5?B?Smo2Q25CNTRyT3QzRWdIQUdqdFFVU3M1bHIvdTcydDFMNVRpSXlPanpKeW1WSVN0?=
 =?big5?B?ei9XSklwMzNHTisyMGtneThpMmYyUVQ2QVBtbUxaSXZOOGJ4bE8vNlowUTFNT1pV?=
 =?big5?B?ZjRhZVd3T01xT040Ykx1KzRSbnl4NndyYmxsOTh2NjNlTVBSZjlCbTJlVlZPVTZD?=
 =?big5?B?aUc0b2Nya1gzbW5JZkRyZnFEVFA1Q29QQ29KZ0dkWUlvWmdUNVlvYnBGRUduSUJU?=
 =?big5?B?Qmt4M3RtcWo2UzNSRUhDM043TVoveTFUdklZN1NwVXhGK1NKb0M0dC84ZkJjT0Yz?=
 =?big5?B?aitXMW4xK1NlWkhmSUM3bG1aSjE3Mm5kUlVaMlFGS2hCQmF0RHlDR1dtMkREN3M4?=
 =?big5?B?L3hHbnRDSDJzcDFqSVRjUUUxNHoxcS94R1N1R3dxV1BDdUw3LzhxTnpXa2hvcVNw?=
 =?big5?B?M0hudTdEb1hCR2ZXYUFVN0ErK1J3bDBjNWdmTHlKVForSDRsOWswTUlwOVZZRG0w?=
 =?big5?B?SDgvZ055SzdtUDBvMXF4Yk1RQ002bDcyMlJqN2JHeTVFRVlIN2gzeTk0azFhaDJR?=
 =?big5?B?RzlxMERzT2FEQlRlbDMzM3JqYmdUOVhjRms3YTI3ajU1UWUrTGo5NlYzRmN1S2Yy?=
 =?big5?B?Q09SUEEvZUVKMk9DaXVqeUNGTlVnaUxleENoUG5pNzBsWVd1R3c2bVZhWTc4Mkw4?=
 =?big5?B?Q2dpODYxWUh6aitzMUpEVEFRSUt0citvMXdHZTVweXVTT3lad05NSE1PUVVZSFB4?=
 =?big5?B?VmozRS8xczBsYXZPYTJkUnB5SEpaSkxtdldURGdRbUEwTWovSENmdXpRcGFkaW5D?=
 =?big5?B?ZDJEL2Y4Z3VJTkZVV3VMOURjL3ZyS2N2TndjWlZQdXVNTTFVcy83cnFKUW9UUlJS?=
 =?big5?B?bW9WbUtUVzJLaFljbkRscWlSSzV0clgzdlEvcjB1OUVlc1VBQnp5WFEvaFRCbHB0?=
 =?big5?B?UWVIa2NmeGNGUE1acDZ0RTcwVThmc2pUQ3VlYTdrVVRVYTIwSktDY3dKdVpKN2lq?=
 =?big5?B?TkNnK2hyeFMrNXRFeDJiVURzYmV0MkptbGZBZnppemVHQ0JuMXN1Y2NrcnZxMlo5?=
 =?big5?B?SFVGc3dCVDZ1YVNvVXM0SlFVNHJkcWwvbmFKTzVlRVhCbWsydUJ4emlQQzROSUxi?=
 =?big5?B?NktBMllJRDNUalVYY21NVkEveEdqcFdhN0dOYU5MUlhIbUxLcVR3K1BQUFR6UFNx?=
 =?big5?B?U3BQTGJjWE9vUWJnbmJ3TVcraUlNT2xZZWw5Q0NHbjNpNEFOMEVQVmlRcUpzcFh0?=
 =?big5?B?dHl4SzZOL3c2MHpVZ1V2U0FObGd4V3RUdEVqYi9UeGVBRzRpOHZjMkFETitVS0RJ?=
 =?big5?B?R0sxSnVpZnFLSy9LL1BjeHMrS2dLRVZuclpVam5XL1REbVJQcElmVnBkQ0RSU1lK?=
 =?big5?B?VHhtbGlROUJ3TXZWaXhsbXBFQXVhQ0l0OWlzcnZxUmRNZHZBQjN5ZmFYbGpxUHha?=
 =?big5?B?R0FTMG1JYnorNWFvcWdOb1o3WlFHT2dzRThiT2Z1ajVON1pxSUtTR2xzWUg1dG1B?=
 =?big5?Q?wxETPoPPyc25QYW4?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR06MB5134.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d3c6e8-555d-4fcf-844e-08ddafc07006
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 06:05:20.3975
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wwIDgQa18/KLP1PNHsQTlVnS3SBhTTwVFAushd4I2SvIn7UvxzH4xTNtzLErAWjrqiD7bquzomVBmdS0nAoTMq4v7hbpveZimx3MZzkLY7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB5076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_230526_408689_B096050B 
X-CRM114-Status: GOOD (  22.77  )
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

> > Introduce PCIe Root Complex driver for ASPEED SoCs. Support RC
> > initialization, reset, clock, IRQ domain, and MSI domain setup.
> > Implement platform-specific setup and register configuration for
> > ASPEED. And provide PCI config space read/write and INTx/MSI interrupt
> > handling.
> 
> Make the subject match drivers/pci/controller/ style.

Agreed.

> 
> > +config PCIE_ASPEED
> > +	bool "ASPEED PCIe controller"
> > +	depends on PCI
> > +	depends on OF || COMPILE_TEST
> > +	select PCI_MSI_ARCH_FALLBACKS
> > +	help
> > +	  Enable this option to add support for the PCIe controller
> > +	  found on ASPEED SoCs.
> > +	  This driver provides initialization and management for PCIe
> > +	  Root Complex functionality, including interrupt and MSI support.
> > +	  Select Y if your platform uses an ASPEED SoC and requires PCIe
> > +	  connectivity.
> 
> Alphabetize this entry by vendor to match the file.
> 
> Add blank line between paragraphs.

Agreed.

> 
> > + * Copyright 2025 Aspeed Technology Inc.
> 
> Settle on "ASPEED" or "Aspeed" in text/comment/etc to match corporate style.
> "aspeed" is good for the driver name, e.g., "PCI: aspeed: ..."
> for the subject.

Agreed.

> 
> > +#include <linux/irqchip/chained_irq.h> #include <linux/irqdomain.h>
> > +#include <linux/mfd/syscon.h> #include <linux/kernel.h> #include
> > +<linux/msi.h> #include <linux/module.h> #include
> > +<linux/platform_device.h> #include <linux/of_platform.h> #include
> > +<linux/of_address.h> #include <linux/of_irq.h> #include
> > +<linux/of_pci.h> #include <linux/pci.h> #include <linux/regmap.h>
> > +#include <linux/reset.h> #include <linux/irq.h> #include
> > +<linux/interrupt.h> #include <linux/workqueue.h> #include
> > +<linux/gpio/consumer.h> #include <linux/bitfield.h> #include
> > +<linux/clk.h>
> 
> The trend is to alphabetize these #includes.

Agreed.

> 
> > +/* AST2600 PCIe Host Controller Registers */
> > +#define PEHR_MISC_10		0x10
> > +#define DATALINK_REPORT_CAPABLE		BIT(4)
> 
> Name register bits like these in a way that connects them with the register.
> 
> > +static struct irq_chip aspeed_intx_irq_chip = {
> > +	.name = "ASPEED:IntX",
> 
> Usual styling is "INTx".

Agreed.

> 
> > +	.irq_ack = aspeed_pcie_intx_ack_irq,
> > +	.irq_mask = aspeed_pcie_intx_mask_irq,
> > +	.irq_unmask = aspeed_pcie_intx_unmask_irq,
> 
> Name these functions to match the name of the function pointer, e.g.,
> aspeed_pcie_intx_irq_ack() instead of aspeed_pcie_intx_ack_irq() This makes
> grep/cscope more useful.

Agreed.

> 
> > +static irqreturn_t aspeed_pcie_intr_handler(int irq, void *dev_id) {
> > +	struct aspeed_pcie *pcie = dev_id;
> > +	const struct aspeed_pcie_rc_platform *platform = pcie->platform;
> > +	unsigned long status;
> > +	unsigned long intx;
> > +	u32 bit;
> > +	int i;
> > +
> > +	intx = readl(pcie->reg + platform->reg_intx_sts) & 0xf;
> > +	if (intx) {
> 
> Don't need "if (intx)" here; the loop is sufficient.

Agreed.

> 
> > +		for_each_set_bit(bit, &intx, PCI_NUM_INTX)
> > +			generic_handle_domain_irq(pcie->irq_domain, bit);
> > +	}
> 
> > +static int aspeed_ast2600_rd_conf(struct pci_bus *bus, unsigned int devfn,
> > +				  int where, int size, u32 *val)
> > +{
> > +	struct aspeed_pcie *pcie = bus->sysdata;
> > +	u32 bdf_offset;
> > +	int rx_done_fail = 0, slot = PCI_SLOT(devfn);
> > +	u32 cfg_val, isr, type = 0;
> > +	u32 link_sts = 0;
> > +	int ret;
> > +
> > +	/* Driver may set unlock RX buffere before triggering next TX config
> > +*/
> 
> s/buffere/buffer/
> 
> > +	writel(PCIE_UNLOCK_RX_BUFF | readl(pcie->reg + H2X_DEV_CTRL),
> > +	       pcie->reg + H2X_DEV_CTRL);
> > +
> > +	if (bus->number == 128 && slot != 0 && slot != 8)
> > +		return PCIBIOS_DEVICE_NOT_FOUND;
> > +	type = (bus->number > 128);
> 
> Weird.  What's all this?  Some kind of device you want to hide?
> Deserves a hint about what's special.

The bus range in our AST2600 design is just starting from 128.
There is no something special.
I will use the child_ops that is in struct pci_host_bridge to distinguish the rc bridge
and the other bus.

> 
> > +	if (ret) {
> > +		dev_err(pcie->dev,
> > +			"[%X:%02X:%02X.%02X]CR tx timeout sts: 0x%08x\n",
> 
> Conventional format is "%04x:%02x:%02x.%d" (4-digit domain, lower-case
> hex).

Agreed.

> 
> > +			pcie->domain, bus->number, PCI_SLOT(devfn),
> > +			PCI_FUNC(devfn), cfg_val);
> > +		ret = PCIBIOS_SET_FAILED;
> > +		*val = ~0;
> 
> PCI_SET_ERROR_RESPONSE(val)

Agreed.

> 
> > +static int aspeed_ast2600_wr_conf(struct pci_bus *bus, unsigned int devfn,
> > +				  int where, int size, u32 val)
> > +{
> > +	u32 type = 0;
> > +	u32 shift = 8 * (where & 3);
> > +	u32 bdf_offset;
> > +	u8 byte_en = 0;
> > +	struct aspeed_pcie *pcie = bus->sysdata;
> > +	u32 isr, cfg_val;
> > +	int ret;
> > +
> > +	/* Driver may set unlock RX buffere before triggering next TX config
> > +*/
> 
> s/buffere/buffer/
> 
> I don't understand this; I suppose it requires hardware knowledge.
> 
> > +	writel(PCIE_UNLOCK_RX_BUFF | readl(pcie->reg + H2X_DEV_CTRL),
> > +	       pcie->reg + H2X_DEV_CTRL);
> > +
> > +	switch (size) {
> > +	case 1:
> > +		byte_en = 1 << (where % 4);
> > +		val = (val & 0xff) << shift;
> > +		break;
> > +	case 2:
> > +		byte_en = 0x3 << (2 * ((where >> 1) % 2));
> > +		val = (val & 0xffff) << shift;
> > +		break;
> > +	case 4:
> > +	default:
> > +		byte_en = 0xf;
> > +		break;
> > +	}
> > +
> > +	type = (bus->number > 128);
> 
> You're not allowed to *read* bus 128, dev 1, but you can write it?

Agreed.
I think pcie emulation will not find the device that is bus 128, dev1.
Because it cannot get VID/DID on bus 128, dev1.
Therefore, I have not add this check here.
I will add check here.

> 
> > +static void aspeed_pcie_port_init(struct aspeed_pcie *pcie) {
> > +	u32 link_sts = 0;
> > +
> > +	regmap_write(pcie->pciephy, PEHR_LOCK, PCIE_UNLOCK);
> > +	regmap_write(pcie->pciephy, PEHR_GLOBAL, ROOT_COMPLEX_ID(0x3));
> > +
> > +	reset_control_deassert(pcie->perst);
> > +	mdelay(500);
> 
> Where did this come from?  Should be a #define with reference to a spec.
> 
> > +static int aspeed_ast2700_setup(struct platform_device *pdev) {
> > +	struct aspeed_pcie *pcie = platform_get_drvdata(pdev);
> > +	u32 cfg_val;
> > +
> > +	reset_control_assert(pcie->perst);
> > +
> > +	regmap_write(pcie->pciephy, PEHR_MISC_70,
> > +		     POSTED_DATA_CREDITS(0xc0) |
> POSTED_HEADER_CREDITS(0xa));
> > +	regmap_write(pcie->pciephy, PEHR_MISC_78,
> > +		     COMPLETION_DATA_CREDITS(0x30) |
> COMPLETION_HEADER_CREDITS(0x8));
> > +	regmap_write(pcie->pciephy, PEHR_MISC_58, LOCAL_SCALE_SUP);
> > +
> > +	regmap_update_bits(pcie->cfg, SCU_60,
> > +			   RC_E2M_PATH_EN | RC_H2XS_PATH_EN |
> RC_H2XD_PATH_EN | RC_H2XX_PATH_EN |
> > +			   RC_UPSTREAM_MEM_EN,
> > +			   RC_E2M_PATH_EN | RC_H2XS_PATH_EN |
> RC_H2XD_PATH_EN | RC_H2XX_PATH_EN |
> > +			   RC_UPSTREAM_MEM_EN);
> > +	regmap_write(pcie->cfg, SCU_64,
> > +		     RC0_DECODE_DMA_BASE(0) |
> RC0_DECODE_DMA_LIMIT(0xFF) | RC1_DECODE_DMA_BASE(0) |
> > +		     RC1_DECODE_DMA_LIMIT(0xFF));
> > +	regmap_write(pcie->cfg, SCU_70, DISABLE_EP_FUNC);
> > +
> > +	reset_control_assert(pcie->h2xrst);
> > +	mdelay(10);
> 
> Source?
> 
> > +	reset_control_deassert(pcie->h2xrst);
> > +
> > +	regmap_write(pcie->pciephy, PEHR_MISC_5C, CONFIG_RC_DEVICE);
> > +	regmap_read(pcie->pciephy, PEHR_MISC_60, &cfg_val);
> > +	regmap_write(pcie->pciephy, PEHR_MISC_60,
> > +		     (cfg_val & ~PORT_TPYE) | FIELD_PREP(PORT_TPYE,
> > +PORT_TYPE_ROOT));
> > +
> > +	writel(0, pcie->reg + H2X_CTRL);
> > +	writel(H2X_BRIDGE_EN | H2X_BRIDGE_DIRECT_EN, pcie->reg +
> H2X_CTRL);
> > +
> > +	/* The BAR mapping:
> > +	 * CPU Node0(domain 0): 0x60000000
> > +	 * CPU Node1(domain 1): 0x80000000
> > +	 * IO       (domain 2): 0xa0000000
> 
> Are these addresses or sizes?  Should they come from DT?  Maybe it's
> something wired into the hardware?

Agreed.

> 
> > +	writel(REMAP_BAR_BASE(0x60000000 + (0x20000000 * pcie->domain)),
> > +	       pcie->reg + H2X_REMAP_DIRECT_ADDR);
> > +
> > +	/* Prepare for 64-bit BAR pref */
> > +	writel(REMAP_PREF_ADDR_63_32(0x3), pcie->reg +
> H2X_REMAP_PREF_ADDR);
> > +
> > +	reset_control_deassert(pcie->perst);
> > +	mdelay(1000);
> 
> Source?
> 
> > +static int aspeed_pcie_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct pci_host_bridge *host;
> > +	struct aspeed_pcie *pcie;
> > +	struct device_node *node = dev->of_node;
> > +	const void *md = of_device_get_match_data(dev);
> > +	int irq, ret;
> > +
> > +	if (!md)
> > +		return -ENODEV;
> > +
> > +	host = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> > +	if (!host)
> > +		return -ENOMEM;
> > +
> > +	pcie = pci_host_bridge_priv(host);
> > +	pcie->dev = dev;
> > +	pcie->tx_tag = 0;
> > +	platform_set_drvdata(pdev, pcie);
> > +
> > +	pcie->platform = md;
> > +	pcie->host = host;
> > +
> > +	pcie->reg = devm_platform_ioremap_resource(pdev, 0);
> > +
> > +	of_property_read_u32(node, "msi_address", &pcie->msi_address);
> > +	of_property_read_u32(node, "linux,pci-domain", &pcie->domain);
> > +
> > +	pcie->cfg = syscon_regmap_lookup_by_phandle(dev->of_node,
> "aspeed,pciecfg");
> > +	if (IS_ERR(pcie->cfg))
> > +		return dev_err_probe(dev, PTR_ERR(pcie->cfg), "Failed to map
> > +pciecfg base\n");
> > +
> > +	pcie->pciephy = syscon_regmap_lookup_by_phandle(node,
> "aspeed,pciephy");
> > +	if (IS_ERR(pcie->pciephy))
> > +		return dev_err_probe(dev, PTR_ERR(pcie->pciephy), "Failed to map
> > +pciephy base\n");
> > +
> > +	pcie->h2xrst = devm_reset_control_get_exclusive(dev, "h2x");
> > +	if (IS_ERR(pcie->h2xrst))
> > +		return dev_err_probe(dev, PTR_ERR(pcie->h2xrst), "Failed to get h2x
> > +reset\n");
> > +
> > +	pcie->perst = devm_reset_control_get_exclusive(dev, "perst");
> > +	if (IS_ERR(pcie->perst))
> > +		return dev_err_probe(dev, PTR_ERR(pcie->perst), "Failed to get
> > +perst reset\n");
> > +
> > +	ret = pcie->platform->setup(pdev);
> > +	if (ret)
> > +		goto err_setup;
> > +
> > +	host->sysdata = pcie;
> > +
> > +	ret = aspeed_pcie_init_irq_domain(pcie);
> > +	if (ret)
> > +		goto err_irq_init;
> > +
> > +	irq = platform_get_irq(pdev, 0);
> > +	if (irq < 0)
> > +		goto err_irq;
> > +
> > +	ret = devm_request_irq(dev, irq, aspeed_pcie_intr_handler, IRQF_SHARED,
> dev_name(dev),
> > +			       pcie);
> > +	if (ret)
> > +		goto err_irq;
> > +
> > +	pcie->clock = clk_get(dev, NULL);
> > +	if (IS_ERR(pcie->clock))
> > +		goto err_clk;
> > +	ret = clk_prepare_enable(pcie->clock);
> > +	if (ret)
> > +		goto err_clk_enable;
> 
> We need to observe PCIE_T_RRS_READY_MS (or
> PCIE_RESET_CONFIG_DEVICE_WAIT_MS or whatever name we eventually
> settle
> on) before pci_host_probe() starts issuing config reads.  Maybe this is
> accounted for by one of the sleeps above, but we need a generic #define that
> we can look for.

Agreed.
 
> > +	ret = pci_host_probe(host);
> > +	if (ret)
> > +		goto err_clk_enable;
> > +
> > +	return 0;
> 
> Sorry, I see there's a lot of duplication with comments from other reviewers :)
> 
> Bjorn
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
