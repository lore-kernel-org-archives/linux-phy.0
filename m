Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4472C3DA5D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jul 2024 15:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AR0752l6IgZRoJA2KqkPZd4fnGf8XnwStx825zGB+Q8=; b=f+gNxggZWPqSL2
	A+KJRebvtYhAImUSWTgG8H5oMQCVawctMQ6wuzBPNJVQ3sPA3FY8DzxM5BrIESP2hRYXffsS+cyt6
	Fvsu+tL48AG/Ix/U87i+Mw9j5A8XrG+eFgtnlaVnbkebaERFpJouK4toVPPHByejHV3bAiYS2jLT4
	0jajaiPNpA6UO0FhjMRf6lEI53gWYiMrVzpjcXnSHdD+I6ygHJW+ySW3bGPqrgIgFxktqG0EyY/8d
	lGOm5wVCNr4L95vTSAMEDKI1n7tUvaf7hMF8GKT6lF11tbZIIfcKnmqiBLT/dpYj3oo749MQ/rCEq
	QKRQUqMBLlYUpQvXHqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVukV-00000009uHW-1d0x;
	Mon, 22 Jul 2024 15:14:51 +0000
Received: from mail-northeuropeazlp170130004.outbound.protection.outlook.com ([2a01:111:f403:c200::4] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVukS-00000009uFh-2Umd;
	Mon, 22 Jul 2024 15:14:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W17++WmogfrMNMDFtpZe1xQTxqmUD6iB/cjAQcWJJNxru0byMXvJrb410sQYl+Pok47vRbCZ+Mim1anyTWVxyDkYosvVJTuFAf2P8+kelhTfPqh3Q8MG2fjnrM+vC7hquZc1XNAUkaz9RRkp6dDtH4WbWQ8FYpbM/Q+ztGJFAvOmmVqqHcITiyeUOT4iCjTKVSvW4n8oKbTeYzRhJVXul3Id3DM0QymCgGlU3jvkCGR01pvCdfCXieYr/NFsQ7EM7WJoxyPnMBvf6g1tqxPv6qYThxH54IwTqLlLQpIMX/+ZD+5ZVJIi4/ou8tPLR80ldTq8ltNXc5xPOhytebr+9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zf3RPlvlJl00E0nbKOK3T9B2SR86vfoNtYwA9eUiNMo=;
 b=CboQ9Ny0RJAzHYhBPTRz5QHaSnmmBR3QyZKM73xkBeArR4kYuw+f+Z5O7rPiC4EnsGV9+R3PE6A1TCORWKhueukQTuLqdGzC68iz2+Y65HY3edbkjKz4b7sZnmY+udk6WmUpsUH1Ha7Ytl9VYgeCjy28Cjv68qfh+OL+PGlB0vC7Os3uQb0iJRcz5XkFKApGXVR9oMVP8nbMNsYsdZsXjiU+gyocCXsy8UpFMPBO2fmpW18oPp1jVhE8Fx7SdZSewVRJwI9vyrJdVhcXESPLERL3djkYwRYgui74b6p7b6m9A27Dbu0bLZVfpTaq3N1E0mgNwaa6a0IaUwmwhw/wRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zf3RPlvlJl00E0nbKOK3T9B2SR86vfoNtYwA9eUiNMo=;
 b=hmLWh2z8L8IJtQuvwTheQNigeseLS2Y4636zZTk5hPdU8ifvjrcNBciZLWWpy+E1OZVCURTlfDr3Z+xJpvthM76nWTnIP0Jp0Tl0CPjpB/41RkbrjCG4fMiJ/KXbtuQ2+KFNxzgXvDnSue0S6Ls6qMCz0eAbWcYyBLsbOTrdSIs=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by PA4PR04MB7870.eurprd04.prod.outlook.com (2603:10a6:102:b8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Mon, 22 Jul
 2024 15:14:41 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Mon, 22 Jul 2024
 15:14:40 +0000
From: Josua Mayer <josua@solid-run.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
	<sebastian.hesselbarth@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Konstantin Porotchkin <kostap@marvell.com>
CC: Yazan Shhady <yazan.shhady@solid-run.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v3 3/6] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
Thread-Topic: [PATCH RFC v3 3/6] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
Thread-Index: AQHa2q/UwdGhmeTzHkyvzzjdx6DlRrIA7BMAgAHvxgCAAAKGAA==
Date: Mon, 22 Jul 2024 15:14:40 +0000
Message-ID: <55671e6b-abb3-4773-9f55-41920a3ff8f4@solid-run.com>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-3-4c16f9abdbdc@solid-run.com>
 <d48d261f-c428-4b96-9a88-725e29f6648f@kernel.org>
 <14090e3b-e627-4342-91b0-d6d0b769b736@solid-run.com>
In-Reply-To: <14090e3b-e627-4342-91b0-d6d0b769b736@solid-run.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|PA4PR04MB7870:EE_
x-ms-office365-filtering-correlation-id: 78b8f8b3-5c3a-4376-d917-08dcaa610272
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|921020|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b3czK1BoMnZFMzh3SnpydmxsZUtja0lhczVDNHFYc3pob0pXNzE1SVJiZytN?=
 =?utf-8?B?dW8xSUV6aEs0MUg1aUFuQjkrR2ZEYVJQS1Nmc3AwZUJCSjJtVmxCaytPeEJU?=
 =?utf-8?B?N1RMYnJ3amhNbFpCQmViYms1QWdSdGR1Y3A5WlpKek8rU0dreEhEVTNReVpK?=
 =?utf-8?B?NFd3WFNjanpIbDlvWnNwZk9YUmRzMFpGMlZ5bFZPVDIvTmVyZzlVQnFjZWVI?=
 =?utf-8?B?aVNwQVc1OUVOaTR3MWZPcjBHOHk0LzFQZGIwb0RqdEN5M203N3pQTEh3akhj?=
 =?utf-8?B?RWJncWNtMzJxVUVzUUZRMXE3bzdRMFVpWmlJUEZ6WkhFcVNWTytYdjZ0eWIw?=
 =?utf-8?B?bjF5KzFidXBkRi9LV0docmRJRWhnUjBWeXl2LzJEemhIVStLeWhhbS9uNnlk?=
 =?utf-8?B?Y3FHWGpZQzd1WmwyNmZhQTNnYnhpcFdOL2tMTXdaVzAzYko2M0o4L2g2L0ty?=
 =?utf-8?B?Z0R5S29YSG1TRmhlaVgrcmtFa05IL3VOZ0NXaFNvUVQvVzczMzkrUXhsMDhY?=
 =?utf-8?B?eCtwVURXWllIRkZYc3BvcFlwV3dOcHFubWVNaGpicXd1NzNFUldqcjN4SWts?=
 =?utf-8?B?bTc5K1EwNG1lUkR0em1zSTROUklpcEhzN0NtUWRHRXhBQzBvZHowOXNaSTJE?=
 =?utf-8?B?Ym04cUlNV2Q3Ymk4M2NWdVlGU2pKa0lyb0l1dUphOEhWejFVQ0ZHT0RTdzEz?=
 =?utf-8?B?clJYa3FkelJsOEZteTJQZ1JlUkJxSFlDMS9halFBajBnV3ZESU1EaWozMnZQ?=
 =?utf-8?B?VGJrcVh4YVJSaCtpRXN5eS82cmlxRUFpaVphQ0F1K2VUbTlmSUk1RkdDa203?=
 =?utf-8?B?OEZRMGhYMUdIZ0JMMHZXM1ZjOTI2QnNUeVQ1Mmpya3djZWkzSGplUTQxcUVG?=
 =?utf-8?B?aW1oS1BNQU5ETjVWcER6bzlUeHJqeStxRUljVUNFMDkzUGZheW9QL1NtZGgx?=
 =?utf-8?B?dFZ5T1o5N3pMTm5pUVN1aS9PZ25CK0hnQXJlUnphTTM1RUNLa3dwRGk3dkd6?=
 =?utf-8?B?Z29iaGlVR3JwV0RJK0E2UlRlczF0QTBWbG1PUkdSZllqZ2hyVllBdnNzRmNo?=
 =?utf-8?B?SUxhelRrbm5hZjF6anNiY0RYQjdOaFZtc0lOUjFRL3FqeHhWMHlFdCs4VTBT?=
 =?utf-8?B?RytNVVNwWktMS2lVUGJ4VTd2YW94TGhDbCsrdkxmQ0N3VEpGbW9NV1B1SlRX?=
 =?utf-8?B?VTJ1WGo0d2FGUmZSczhDaER4MGpQWWl4VXhoUko2ZDFha25uUDQrWVlWaS9i?=
 =?utf-8?B?M1BvVStucEdaTVlHQ0t4dlN1bnlCWnRSbWhCS1FQVDRqL2pwK1lpT3N4a1p1?=
 =?utf-8?B?MGpNM3hjd3lTem8vNE1qN1d5cG5BMVk5L3BJdURWVG1BOEZvdnBId09RMHVE?=
 =?utf-8?B?aEltVk5WRGRDWFdablJUUExaajNVWnRwQlNlOG12ZmNIRk96Q2l0ejA1RkJD?=
 =?utf-8?B?YTdMcnpveXp6dkVHRHN2azlYTkI1T2ZZSy9hN0RMbkgzZmFlZkpoQWQ5c01h?=
 =?utf-8?B?YldjV0VhNkVicUNlR1FZTFJSclprL2k4Uk1HL0t5RkhkYWk4YjVmMGpkK2JM?=
 =?utf-8?B?TnZjS1RmZkpMT1l6TnM5b3lUVFQ5M1ZhWE9QQTdZMkhTcXNqaFNHVEMybXBx?=
 =?utf-8?B?SUhmMXBqUWU3d2hUSlYzK2psRGZoN1EvRnpCSUdOYTdLRTFiUUplSjZkZlg1?=
 =?utf-8?B?UHFXMXRFUDlna1dLQi93Sm80RjVieGVlSVozQkhvSGV1SmdOWkFycHRmdW9v?=
 =?utf-8?B?U1AwTVVFOUZEcDBORmhHY3RuZFAwbTN1dUhnSHk5alpEMk4vdjJYUXNRUlhC?=
 =?utf-8?B?bS80NStreHRNU3pteG1kcXNFdnBkb0Zob0tUMHhBZ2JXUEVPczJaeGI4TTRN?=
 =?utf-8?B?bXQ1VVJYR29CR0I0Z3Qrb0pQTGUrbFBvSE1MYVlNTVplQTlYUVQ3K3VaaDEz?=
 =?utf-8?Q?W0ubnqtOOI8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkNEZlRkK0lXcGQ4UGpXczROT01IeDdOSiswSVJoREVXcjBjUVNsdXY0aG5t?=
 =?utf-8?B?anhVSGdFTUw1VkxaNG96TmdLRkIyaGVhcHVkUXZWSHFhR0Y5SDFNaVFacmND?=
 =?utf-8?B?TGtmWTVOWDdzK2FpeEwxeFRPYzJoeHNpaVpEQjVHNHJsZWFiNTZEelR3YVVi?=
 =?utf-8?B?eXZocnFMcmU1K083VGxtbXQ3VjZFWHU2eGNiT2dsdHdEZVRaRTZ3OGt5d0xz?=
 =?utf-8?B?Z1FEdEdPanpMaXFUS1lLSmJ1ZHlFZkVVaUViNnJTT3RlQzcyRUNITkNMT2Vm?=
 =?utf-8?B?VVpnTFVXQ0tsRCsyZ25ibVozZnRTcUJaSlZ2eVVDZVJ6c1ZyajlrVVhEVGxH?=
 =?utf-8?B?MitwekpjS1RGdngyMHVKSEpMZkRlVXhBTG8ycDhKM2N4aXBPaUl5cHp2SkZR?=
 =?utf-8?B?VkNFOWxhZkpwSEp5NDN1ZjFVTm1RMEZKVk1NOXhYc3VDWFdheWpqeFlxTndM?=
 =?utf-8?B?VmJGbXBZSk9mNGVtc3pNVFhYOG9sZWZTMEZKemVDeHZZZVkySDQ0TlArRFZr?=
 =?utf-8?B?SkZSVE84Sm42V3VGVVpUSStaTnM2TWtPMUE1R0thQWJURGtDUGdKbXlLdkVO?=
 =?utf-8?B?dkdna2UydEpRdFczdHFtTEF6VXBkOUNZUEZkN3I3RHVLaDRpa1lTaVVpNmJv?=
 =?utf-8?B?RzFKYmpiaEZTQUZ3ZWlrakJ4WmQ2SGNJOVoxMFJFWmptT0lLSFBvWDZxRlZK?=
 =?utf-8?B?aW9uRnltN2oxaC9uVHBrRFl5alhGM2R5aUt3NGdISElEVEVwenZCM1pETEc2?=
 =?utf-8?B?ZkJUYVF1b3creFJobGJLdnU3VnA3NnRBT09oR1BxTnJHQkt0SFRFa0d6K0lM?=
 =?utf-8?B?dkFWeFFsMWdrSmtZYkkwMzcwV296RW1RampVMm8xTmtLUkV2Rnk3bjhJbzRj?=
 =?utf-8?B?bzdDWUl3Q0VXVW43T2tCYnlDai9nUDYzQVFXRGg2VFFJQk5TaFZtbitwWEJU?=
 =?utf-8?B?ZmtHMFh1clkyN3NsenpiWFdUcUF2M3BhK3BhSWF4WXVyYTM4cE1PWmlkRVp1?=
 =?utf-8?B?WjVJQ1dKT2V3RWJPQzVCK1lpTXFET1NQR0dWUGgvRUc5bHRod05XWVdDNHRD?=
 =?utf-8?B?TzJCdVJRMHBlSGxLMmxIVStVWWVwRVZELzZuTmU2eGMwOW8vNld5UjdhYnVi?=
 =?utf-8?B?TndZK1hwR041cDRncXhVeG4vZjFxcGYzckwxaTJtZVpXTWwrVXlQeHQwYVRx?=
 =?utf-8?B?QTQrODJWZWNsRnFpWk43bWljSlQvSHJOOTNvM0l0OW5BWGRYWUhRL3dpeFpL?=
 =?utf-8?B?U3R4S3Q0dE9DKzMxSjZOMnlFc0YvS1JZSWVLeVpQU1J2MnZiOFE0dXZ0cTNk?=
 =?utf-8?B?NG4zQmRuSXVlNElMOE5NSTJLUDZ2Q2VPSWErM3YveEp3aHZpMmZaYk1PS0dx?=
 =?utf-8?B?d25ad2JYRXlnWlQ5YStYQlBuV3BzRDdKUnRxL01mTVkrVmI4bXhPV25UU0E1?=
 =?utf-8?B?RXBDblJoTDA3cXZRQzQ0a29WRFhyT0YzbTErQk1qbVFYM2s1YjZKc3ZKM2dJ?=
 =?utf-8?B?UXVjSXltUkRHLzY3eU1VOWJjSDFNSTRKczNTRHJ4MG1IbDBRMDhTN3BKQWZU?=
 =?utf-8?B?OTQ2Vzk1ZWtrQkQ4dWhZSUdPUHlOVDZYM3lpRG54ZkRaYlBrc2VpVm1UVE8x?=
 =?utf-8?B?dVRoaGdvQ3FHeU9vdzVScVZwWSs0UkV2ZTk2TzNhaVFaYnkyRFBqR1JUNXEz?=
 =?utf-8?B?R2ErQmo0cVZ0S2hIOEtpK09LcGplbW94QlNjc2Y0M3pMd2dxSFlUM3hOZXpF?=
 =?utf-8?B?YTY0MEQxazNuQkp4REZub2VOMzUxaXdvanNrbi9jUkk0bTQ0MGkyeXVZV2wy?=
 =?utf-8?B?ZnRNYlZUbnJxMjMwL0kvUGRTc3dLKy9aTXNqZ1JDNStrOGpIVDVud2lsQ3dN?=
 =?utf-8?B?eExuNnYweWJjNk1VZzRSbEsrTitILzBVZmJBY1ZQTjZvMGpsN0szV3BOZHQz?=
 =?utf-8?B?L0pNVDY5YkI3MWtONUNFTStOS0syMUpxcVJXV1gzdXhvcHJyNVJCTGlZeHh2?=
 =?utf-8?B?MVF0b2tmRGVuM0VhQnBvaTQ1aGI5eXJ0eWNPWWFqdmhsaEtobFdiZTRQTTFT?=
 =?utf-8?B?d254ckN6VUpJWGI5ekhuUXNBbllCcjhmOUdLTVhGdUozdXU0VUloUk41cG5E?=
 =?utf-8?Q?R26rOTx+eH9iXb8zYGFFEaa18?=
Content-ID: <B8E2DEFB3ED9514982AED74622FC5F6D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78b8f8b3-5c3a-4376-d917-08dcaa610272
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2024 15:14:40.8807
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4q7zXDkVQrXqh72EmppX/4hNePxCBW1HPTKD7a6k59yOVW8WaUwKIjegt4MPOleO8j6Z2iBabmMTwC42fruV2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_081448_660405_F5490209 
X-CRM114-Status: GOOD (  12.84  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

DQpBbSAyMi4wNy4yNCB1bSAxNzowNSBzY2hyaWViIEpvc3VhIE1heWVyOg0KPiBBbSAyMS4wNy4y
NCB1bSAxMTozMSBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6DQo+PiBPbiAyMC8wNy8yMDI0
IDE2OjE5LCBKb3N1YSBNYXllciB3cm90ZToNCj4+PiBBcm1hZGEgMzh4IFVTQi0yLjAgUEhZcyBh
cmUgc2ltaWxhciB0byBBcm1hZGEgOEsgKENQMTEwKSBhbmQgY2FuIGJlDQo+Pj4gc3VwcG9ydGVk
IGJ5IHRoZSBzYW1lIGRyaXZlciB3aXRoIHNtYWxsIGRpZmZlcmVuY2VzLg0KPj4+DQo+Pj4gQWRk
IG5ldyBjb21wYXRpYmxlIHN0cmluZyBmb3IgYXJtYWRhLTM4eCB2YXJpYW50IG9mIHV0bWkgcGh5
Lg0KPj4+IFRoZW4gYWRkIGRlc2NyaXB0aW9ucyBhbmQgbmFtZXMgZm9yIHR3byBhZGRpdGlvbmFs
IHJlZ2lzdGVyIGRlZmluaXRpb25zDQo+Pj4gdGhhdCBtYXkgYmUgc3BlY2lmaWVkIGluc3RlYWQg
b2YgYSBzeXNjb24gcGhhbmRsZS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEpvc3VhIE1heWVy
IDxqb3N1YUBzb2xpZC1ydW4uY29tPg0KPj4+IC0tLQ0KPj4+ICAuLi4vcGh5L21hcnZlbGwsYXJt
YWRhLWNwMTEwLXV0bWktcGh5LnlhbWwgICAgICAgICB8IDM0ICsrKysrKysrKysrKysrKysrKy0t
LS0NCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
DQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9tYXJ2ZWxsLGFybWFkYS1jcDExMC11dG1pLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLGFybWFkYS1jcDExMC11dG1pLXBoeS55YW1s
DQo+Pj4gaW5kZXggOWNlN2I0YzZkMjA4Li4yNDZlNDhkNTE3NTUgMTAwNjQ0DQo+Pj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLGFybWFkYS1jcDEx
MC11dG1pLXBoeS55YW1sDQo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9tYXJ2ZWxsLGFybWFkYS1jcDExMC11dG1pLXBoeS55YW1sDQpjdXQNCj4+PiBAQCAt
NjgsNyArOTMsNiBAQCByZXF1aXJlZDoNCj4+PiAgICAtIHJlZw0KPj4+ICAgIC0gIiNhZGRyZXNz
LWNlbGxzIg0KPj4+ICAgIC0gIiNzaXplLWNlbGxzIg0KPj4+IC0gIC0gbWFydmVsbCxzeXN0ZW0t
Y29udHJvbGxlcg0KPj4geW91IG1pc3MgaGVyZSBhbGxPZjppZjp0aGVuOiBuYXJyb3dpbmcgYW5k
IG1hcnZlbGwsc3lzdGVtLWNvbnRyb2xsZXIgcGVyDQo+PiBlYWNoIHZhcmlhbnQuDQpJIGFtIHN0
cnVnZ2xpbmcgYSBiaXQgd2l0aCB0aGUgb3B0aW9ucy4NCg0KRmlyc3QgYXR0ZW1wdCBzYXlzOiBp
ZiBub3QgYm90aCB1c2ItY2ZnIGFuZCB1dG1pLWNmZyByZWctbmFtZXMgYXJlIHNwZWNpZmllZCwN
CnRoZW4gbWFydmVsbCxzeXN0ZW0tY29udHJvbGxlciBpcyByZXF1aXJlZC4NCg0KYWxsT2Y6DQrC
oCAtIHJlcXVpcmVkOg0KwqDCoMKgwqDCoCAtIGNvbXBhdGlibGUNCsKgwqDCoMKgwqAgLSByZWcN
CsKgwqDCoMKgwqAgLSAiI2FkZHJlc3MtY2VsbHMiDQrCoMKgwqDCoMKgIC0gIiNzaXplLWNlbGxz
Ig0KwqAgLSBpZjoNCsKgwqDCoMKgwqAgbm90Og0KwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoN
CsKgwqDCoMKgwqDCoMKgwqDCoCByZWctbmFtZXM6DQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFs
bE9mOg0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb250YWluczoNCsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Q6IHVzYi1jZmcNCsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gY29udGFpbnM6DQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNvbnN0OiB1dG1pLWNmZw0KwqDCoMKgIHRoZW46DQrCoMKgwqDCoMKgIHJlcXVpcmVkOg0KwqDC
oMKgwqDCoMKgwqAgLSBtYXJ2ZWxsLHN5c3RlbS1jb250cm9sbGVyDQoNClRoaXMgd29ya3Mgb2th
eSBmb3IgYW55IGNvbWJpbmF0aW9ucyBvZiByZWctbmFtZXMuDQoNCkhvd2V2ZXIgd2hlbiBkZXZp
Y2UtdHJlZSBpcyBtaXNzaW5nIHJlZy1uYW1lcyBhbGwgdG9nZXRoZXIsDQptYXJ2ZWxsLHN5c3Rl
bS1jb250cm9sbGVyIGlzIG5vdCBtYXJrZWQgcmVxdWlyZWQuDQoNCldvdWxkIGl0IGJlIGFjY2Vw
dGFibGUgdG8gbWFrZSByZWctbmFtZXMgcmVxdWlyZWQ/DQoNCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
