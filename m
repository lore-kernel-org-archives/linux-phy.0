Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FC38C3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jul 2024 15:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xurslZo8Km2vLQ1Lc0ti4wE/0WYri3Ba4zuEjIm4wIE=; b=MACZEhSHlm9gyi
	0/SZTF/gbKavvny2e5yaxyKrKP+6rqTu87CyHjySeR3dwH//xpZFGb+JjLsJV+5v+1OjgB/wsElZi
	W+/Byxg9r5S0TnrR/5g+ix5uR9iCEMDs4QQGL8ZhGADI2EGOku/qwoAztznhusYYp/wJvZ7HooNMo
	Pw7qwOQj7nSHJQsDPrf1ytHGmAUa4RzHLNOs1ixE1wsXeNoMcJJCRJeon1DS3UgJpNG4C25MdsiMq
	dbOK4zT8MoaK4c5uU4w5hf/W3mDawaGCH4YB9xhVxqY66mAHjJbh+YNVS5f3J1UR704gUZC3J8Cey
	Yk0nqAuLgWEuXs6inE9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVv0l-00000009xee-0n1T;
	Mon, 22 Jul 2024 15:31:39 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVv0i-00000009xe0-23fv;
	Mon, 22 Jul 2024 15:31:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GR4SI6pmEQmykCZvEfeB9oVHSgH9UmELwWK83dJp60Eca3a1YH+ZKQQnU7BZcVors2tuUkY7ucW3XVYD7phgiNzwdqQcjkhIW4Air+1qDKkiL/aAUz5Ym/h5xkUva1feV4P86/PuRDPeoc91ZTDAS2ZwQ/1fTUNLH492ozkVSGMyOpnLMy9yba/bmKKFjV3i9I7GluYvGtASvqeS1kXiN9+ZcAklZheQeHwjdtv7ei1gIIrDhcGmysSXba2q+PMOIntnvLaAEBctBMx/r1XuLY7t5ENZ//3m/8UrMMr9E0x79W4rDoWM77sNAQMW/2Wim4HJArEKhYsefROhxqCH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7kfaMlxWYdj2EX82RxOCwxB3wzvS/1D+SzrJkkHjAhc=;
 b=sW9pzhVdmwjMR9/jRutTHCqsNex9ZV8mgGbmvJmLvuqiM37ep/v6aC3nFZrIKRzssHzscRpna1FygW+t63HNnJp0Wd3digwRdhhQI6TtMHc9q3OwQWMdkdyL0gi2R654+kyNIix40K+BiZvZW9zraRJCLadduAzdBGMnd2j4vgyGgkFLgTJZ5vZFckla+lZkbjfFMBEzByytz17Xs5MWyq5sGjKpGCHVed1rvuACfE1i/gB0n5Z1j5THZwD6rrzg4suWxfuiXMOoongiCkzcg+EZT2LbKzY/LrAa4u/Vlb1slZRBGDBlycMtywIYWwvJed5uuQzpbyWI+oyZSgSG1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kfaMlxWYdj2EX82RxOCwxB3wzvS/1D+SzrJkkHjAhc=;
 b=X8GmUpPejgT+8LjJLfrtTcUP9UX/zn9oXhDGqBtVIlxiu4psyHFkNLh4nZOLLKOIE6EUpZ3zoCvbCE5CIc7o5/uhJLuEXlPPpSeUSggHOrIbqluVOx3PWn6eHuMOU4T/ZPdNmrcekHbeTjNIFBt14hSZtT+vbyrggaw9x6j+yf0=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by GVXPR04MB10970.eurprd04.prod.outlook.com (2603:10a6:150:21b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Mon, 22 Jul
 2024 15:31:31 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Mon, 22 Jul 2024
 15:31:29 +0000
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
Thread-Index: AQHa2q/UwdGhmeTzHkyvzzjdx6DlRrIA7BMAgAHvxgCAAAKGAIAAAOaAgAADzYA=
Date: Mon, 22 Jul 2024 15:31:29 +0000
Message-ID: <53c3dbc6-5d14-455f-8c3d-6a7293068ed9@solid-run.com>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-3-4c16f9abdbdc@solid-run.com>
 <d48d261f-c428-4b96-9a88-725e29f6648f@kernel.org>
 <14090e3b-e627-4342-91b0-d6d0b769b736@solid-run.com>
 <55671e6b-abb3-4773-9f55-41920a3ff8f4@solid-run.com>
 <14f53dce-e26e-4af3-9275-f2aef4e03c98@kernel.org>
In-Reply-To: <14f53dce-e26e-4af3-9275-f2aef4e03c98@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|GVXPR04MB10970:EE_
x-ms-office365-filtering-correlation-id: ec9b5a8c-600a-447f-6ac2-08dcaa635ba5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?cXBCZFNZcm1iVDQ2aHIxWWVHaXcyK0FGcG53S3QvVDBKMUNJZjZZNHlkanda?=
 =?utf-8?B?THlCcFV2UlFVdENNaUVnUEE3ZGliSnNJVTFMVTVrMVFoUWdIYTJVU2haWUJa?=
 =?utf-8?B?K2ZjcC9ZcGQyMTd2aE5QbGo2UjJiVitFdmtwdWZKK0ozNk9qWXZOVEl6N0hz?=
 =?utf-8?B?YmpUZDRDaUdpR0NDQ2tlL0JGZVJhbmNNRS9GQm9CUmRUSEtzc2puWUZxaC9J?=
 =?utf-8?B?NnNJWHVOTHcyNk82ZGVvRWIvWGY3ZnNybm1peFl1eDFBUi9LeC8xT2JDVENm?=
 =?utf-8?B?ZVc1ZW9teEJoeXJTSElvUWVlRzhzYy9MWmJmQjl6bE9zbS9Pd1FKY01LdVRn?=
 =?utf-8?B?QnRXd21DM0wzSjB3VkxkcnQ2Q3lhUys1bG5tQWdZSFB0OWpjOGdxTmxGSDFL?=
 =?utf-8?B?TVhvYWxiR1BmaklFODFPOVI4bnppWlhtb3J0Sm9YMFNLSldmdVBVUExJN09s?=
 =?utf-8?B?NGF4dnZQUmFjZEJabE9wRkhKWVlVSC9PbzdmM0lUMzAzQWtBck03VEtEblBo?=
 =?utf-8?B?NytMK2dkekFXb0hqMFhnL2dCdTJBS0RaM21JbDliamVZWVVpRHB2c045YVJJ?=
 =?utf-8?B?cXgxZFhQVzR0QlNYc2hzQWtKRDFxajdOditoeHNXb2dQOFdYaUNlMG9GNHFz?=
 =?utf-8?B?VENyNGFPUFVEdUV2VUVwd3lKTW9xSURrY0M5QkhFdHN1Q0RWRkpkRlMwcXlT?=
 =?utf-8?B?Vy9XdGNlcXRSRjN1c3BSZVFQK0tBQmtxZGFyZjN6VUUzbkxzTnY4ZDJrVEhq?=
 =?utf-8?B?YUNSY1gxVURNRFdmMm43N1oxZkhzbGlYMU1uNlZYYmxqc2hld3RGU0VNOGIw?=
 =?utf-8?B?V2Y2blhXczF3ZzNvUjdTejlUQVRxM1lVYW1raXJpYmJnaER6TnA2dm1NMmMr?=
 =?utf-8?B?R1NWcU42MXMwSWJXMGRLUkRTdnVueW0xc282aVZ4cklWdnpja3FjajV1azli?=
 =?utf-8?B?VzJiSDdnRllod1hWMzlPdHZkbFJQTlZVZGZhRVFQaEd1YjBIbGEzci96RlJs?=
 =?utf-8?B?OCtKQytUQTVlcHJjSlhydlhyRm5McXUvNkl2Sk5rZ3lkVE1COW1TdEFyczhN?=
 =?utf-8?B?eklTQTR5RWd4TDQyMFZ1aHpLdUI2ZERKMHlIU2xYaDBRejJpdE1uVldKclBn?=
 =?utf-8?B?M2t6YnlDdkM3bDYySVhvbjZQYlhTTEttZ2FOTXlNb3JDTEJYL1Y0UmRPUHZz?=
 =?utf-8?B?OTBWWlpHYURDYlVWT1dJd0dlQy93SmdhcUhTVW5rTml3RG4yRHhIRVY1blY4?=
 =?utf-8?B?clY0TDdRN0NCRS92UXJFanRBeFJRYUJDcFpydlE0UHhocndqaHAwSGJCb3lH?=
 =?utf-8?B?YzN4UkJ0Zm1GRGhzaHhLcXBnSWFTZkRmZTRWbU55Vm1iRWxCK2JrUmVoL3B0?=
 =?utf-8?B?R0dvUjlZeTdIQ2UwelVYZzcvWjVXckZENEpLbklPelhqTUJNTXdIOUlkK1V4?=
 =?utf-8?B?Q2lDWmozN1A4TUFKRFpITXNtVTdmQ3NTRXJlMjNoVUpGUElSOTE3bkI5TWNI?=
 =?utf-8?B?b0FDRERXMHJJb2cveTNuNk1xR2poODJTU0VvMkhIK2lpQ1pkRzFYTDBHTW5H?=
 =?utf-8?B?cjJIQSt3bDFhVFJXWW5wcFVkYTdReUZXdmE3UDk3WXRDY3hDOFp0MVZHZko3?=
 =?utf-8?B?TlBWY2RTQTM4cWtadmVIZFQyVVk2YnB2alVRdjhwdXJZVVZDQTlqemlTTDJJ?=
 =?utf-8?B?NVhCcVNyNklmUGlNb0pKT0xVUzBFcVdvRlZPR2NxQ2oxWHNKVG5HQURlNGpw?=
 =?utf-8?B?YlBNcWUzMURFeUlxbFlMZGt4RUJQMjU2WlZkbVBENTRRY2hQN1o2WjAzMHls?=
 =?utf-8?B?Y3dGZ2pMenlmSEs0WnhxVFdFSDUzNHhHWHN2OVEvbHc4VFJzc3RoT1I4ckdI?=
 =?utf-8?B?cGVQMC96dkdadFg4Nk9xb000dVNoODV5TERmNWNTb0pzd3duc1BYWE4wTlgx?=
 =?utf-8?Q?Ff7w4ze4wsU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018)(921020);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0VreVl5VFExVlZ0S0ZTTEtJd29Oa0RsM1dCNitlNXlOdDBaQTV3QTNmYzRW?=
 =?utf-8?B?S1Y2S0RYempMWEtoNThPZ1haWkxvRWNScUIyWkovR2ZnU09JYjAvd2YzZm9j?=
 =?utf-8?B?cG9EbFZrVTBCTU94dkZDWm1DYkppR1hZOGl5ZmZ5L3Z1cEdoMEhOVUVMVy9V?=
 =?utf-8?B?UlhvZVpOT21UL09ZUStJRTkzRjljUTdsOUhpdlcyOHJCdU5sejlXRGd1dVhP?=
 =?utf-8?B?OTgyZ1ljNyt6WXM4VEdnaUVIaTlZOUtxaXNQK3BvaDNFdTVuZlBoN3VnaDVs?=
 =?utf-8?B?V3NYaU00NEZLN1ZySzlMTWJkUkFPaThubUUraVo0bzduTHpJQm9STHNBd2Rm?=
 =?utf-8?B?V3JtSzdnVHNyL0EwREFnUEVLN2xFVldzcWRDL1MzOG95RkNtWVRpQTJVVm5K?=
 =?utf-8?B?NVoxQ3l5YVM2Um1kZTE4UnR1cjZqL1FnZ2Z5UFZkMGRXaFhreHpjR1JlR3Vk?=
 =?utf-8?B?VkxlRGhHVkNHWkpYUytlMTBEWjJlVHhIZDQ3YjNmK29BOXhiM2E1dHhnN2tM?=
 =?utf-8?B?bko2M2RYQ0svQVUxaTJIWk4zSnhndjREUU5oUmk3UVFRakFBV1BLVFBCN3k4?=
 =?utf-8?B?aWlJZTMzTG9SbGZPNmMrTm9KK2pteTJodHBYNzR3elNlMTE5VlVLK0pXdzJM?=
 =?utf-8?B?bkRXdXpjSk56R3QxSzg5OUk0czRLRHEzSkNMS1FpSlRpRFdHYm42K2xPNXJH?=
 =?utf-8?B?ME1oZlV2S0lKRmdCUTdxbG9sYXk5OTBoblJZS0RPaHBQbEg1UDJDZU9zUkNS?=
 =?utf-8?B?c0hTVEFvN0ltaEwxenNlVTJOZzVxL2dRelhWcWJTVU5LbExPUDlGRjNubkkx?=
 =?utf-8?B?WU11MDA5SE9xZ3lGSGw3cXR1SnV1ZnpCa1ZrYnRlOXlGVFJlU2xpZ2ZWVmJt?=
 =?utf-8?B?Z1loR21PcnZ3V1k3cVo3Smg1MG1kWEh2emZxVlBYcEJsQXYrKzRGVVRvQ2JN?=
 =?utf-8?B?Vm9lWHlBWEdiMFM3UHk0b3dNN0pRaTNXMzFiTTdiU25mUVVzN05HV09TZ3Iv?=
 =?utf-8?B?eGtMakRTaHRFaCtDektjS2RjTHR1V0xwcnduN0x4MllRT1gzdTlDTWZRS09j?=
 =?utf-8?B?TzhvbUJzMDcxNWFoWlVOdUlLTHE2bTFyVVFTMnNZZ1FidHIvV0prdWN4akM0?=
 =?utf-8?B?aXdKbEJUYld4VEJVSE5tNEpWeEVpQTBlSVU1UUtZUlJGY1RHWG15dWFJNzBE?=
 =?utf-8?B?M1hESDZMTDJSNkhHd2g2RnBtRXBaTHg1em9oZERGeFNOdkZzNGNqSkdoQ0Rh?=
 =?utf-8?B?Um5Ma21SRXovb3JUWUU4TVREanhZUGtkbjBvNzdId1VSNEdqL2c3SFNvQzYw?=
 =?utf-8?B?YnJwbFFFbGFPSDFSTm0rT0k4T1FIZjVjWmlXQk1lQ3ZMbEhTTnZSNDVQajFK?=
 =?utf-8?B?MzVjczBkdzM0NG03RzBxWXcrVG9hMlBHTElrWFMzMW5JN29JbUpvSkZjbVJF?=
 =?utf-8?B?a3ZVcGViL3BydzI2Z2huTS8zanQvVGo1a0hXZUUwZCtVWW9FWXNnY2hFc1Uy?=
 =?utf-8?B?a2VtQllUUmFzS3hGeHFwQkRVNWRXYTZsRk5SNUZTRngvZ2VtQ1lyY0JjZVBJ?=
 =?utf-8?B?ZkRmeHNzZ2x4Tzl1VjdRc05YS1VTMEVHRzR5S2JIR1E0ZmdkMU02Tm9PWXpC?=
 =?utf-8?B?UGhsMlRzc0lBYlBBQ1JZUWowbXZlWnNpcEU2ZkxtWnBFcFAzT3JiM05xbmdm?=
 =?utf-8?B?TUtJak10aVNxanVJNC9CWW5iMi85QU0zWlRFWXUwUFJsZ1NidXpGdHExZVEr?=
 =?utf-8?B?Zjkzb3h1YnpUbHd6cks3NEVEZGM0WWNJWDV2MVF1Vy81N2luK09zL3JhL2Qy?=
 =?utf-8?B?Um96MS9jYUZ5dmJFbUI5WXRTN2F6bldVaFcvcStkRFBJRUtoQSt0VFNtTVJu?=
 =?utf-8?B?aEZMU1BZWFBOcTJzOHEwUjFWVHBtaitpeDhtclNJSk1PU3ZFbE4rNk1BY3Qz?=
 =?utf-8?B?N0NYSi95aUZWeHJ1UTRGUG9QdzR2dFY1NmxqeVdJK2Z5TFFBcUFDV1FRbGUw?=
 =?utf-8?B?ekxPejgwQVQ5MkEzNlVvS3lGYlUzZHpJT0doU1hFdGxBVmRvaEd0T2FxM0kr?=
 =?utf-8?B?ZithMVg5SDNNOWRsMVF1WHplUnJIQ3BMbE1YNXQrVm52bmxHY2R5bzY0WlQx?=
 =?utf-8?Q?C11HS6EHLasvlS1+1D9U4nn3H?=
Content-ID: <E7869809205FB447A0C9555BAB4DFCED@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9b5a8c-600a-447f-6ac2-08dcaa635ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2024 15:31:29.5320
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BHEo5J7j7umwGNS73z3+/dF7SsK78oOj6xfFh2DKxbyQ5UONhrMx/HWyNyUnU0eornFil2YqJzDmWm4AniWCaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_083136_558962_E161D0C0 
X-CRM114-Status: GOOD (  16.76  )
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

DQpBbSAyMi4wNy4yNCB1bSAxNzoxNyBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6DQo+IE9u
IDIyLzA3LzIwMjQgMTc6MTQsIEpvc3VhIE1heWVyIHdyb3RlOg0KPj4gQW0gMjIuMDcuMjQgdW0g
MTc6MDUgc2NocmllYiBKb3N1YSBNYXllcjoNCj4+PiBBbSAyMS4wNy4yNCB1bSAxMTozMSBzY2hy
aWViIEtyenlzenRvZiBLb3psb3dza2k6DQo+Pj4+IE9uIDIwLzA3LzIwMjQgMTY6MTksIEpvc3Vh
IE1heWVyIHdyb3RlOg0KPj4+Pj4gQXJtYWRhIDM4eCBVU0ItMi4wIFBIWXMgYXJlIHNpbWlsYXIg
dG8gQXJtYWRhIDhLIChDUDExMCkgYW5kIGNhbiBiZQ0KPj4+Pj4gc3VwcG9ydGVkIGJ5IHRoZSBz
YW1lIGRyaXZlciB3aXRoIHNtYWxsIGRpZmZlcmVuY2VzLg0KPj4+Pj4NCj4+Pj4+IEFkZCBuZXcg
Y29tcGF0aWJsZSBzdHJpbmcgZm9yIGFybWFkYS0zOHggdmFyaWFudCBvZiB1dG1pIHBoeS4NCj4+
Pj4+IFRoZW4gYWRkIGRlc2NyaXB0aW9ucyBhbmQgbmFtZXMgZm9yIHR3byBhZGRpdGlvbmFsIHJl
Z2lzdGVyIGRlZmluaXRpb25zDQo+Pj4+PiB0aGF0IG1heSBiZSBzcGVjaWZpZWQgaW5zdGVhZCBv
ZiBhIHN5c2NvbiBwaGFuZGxlLg0KPj4+Pj4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvc3VhIE1h
eWVyIDxqb3N1YUBzb2xpZC1ydW4uY29tPg0KPj4+Pj4gLS0tDQo+Pj4+PiAgLi4uL3BoeS9tYXJ2
ZWxsLGFybWFkYS1jcDExMC11dG1pLXBoeS55YW1sICAgICAgICAgfCAzNCArKysrKysrKysrKysr
KysrKystLS0tDQo+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvbWFydmVsbCxhcm1hZGEtY3AxMTAtdXRtaS1waHkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWFydmVsbCxhcm1hZGEtY3AxMTAt
dXRtaS1waHkueWFtbA0KPj4+Pj4gaW5kZXggOWNlN2I0YzZkMjA4Li4yNDZlNDhkNTE3NTUgMTAw
NjQ0DQo+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21h
cnZlbGwsYXJtYWRhLWNwMTEwLXV0bWktcGh5LnlhbWwNCj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWFydmVsbCxhcm1hZGEtY3AxMTAtdXRtaS1waHku
eWFtbA0KPj4gY3V0DQo+Pj4+PiBAQCAtNjgsNyArOTMsNiBAQCByZXF1aXJlZDoNCj4+Pj4+ICAg
IC0gcmVnDQo+Pj4+PiAgICAtICIjYWRkcmVzcy1jZWxscyINCj4+Pj4+ICAgIC0gIiNzaXplLWNl
bGxzIg0KPj4+Pj4gLSAgLSBtYXJ2ZWxsLHN5c3RlbS1jb250cm9sbGVyDQo+Pj4+IHlvdSBtaXNz
IGhlcmUgYWxsT2Y6aWY6dGhlbjogbmFycm93aW5nIGFuZCBtYXJ2ZWxsLHN5c3RlbS1jb250cm9s
bGVyIHBlcg0KPj4+PiBlYWNoIHZhcmlhbnQuDQo+PiBJIGFtIHN0cnVnZ2xpbmcgYSBiaXQgd2l0
aCB0aGUgb3B0aW9ucy4NCj4+DQo+PiBGaXJzdCBhdHRlbXB0IHNheXM6IGlmIG5vdCBib3RoIHVz
Yi1jZmcgYW5kIHV0bWktY2ZnIHJlZy1uYW1lcyBhcmUgc3BlY2lmaWVkLA0KPj4gdGhlbiBtYXJ2
ZWxsLHN5c3RlbS1jb250cm9sbGVyIGlzIHJlcXVpcmVkLg0KPj4NCj4+IGFsbE9mOg0KPj4gwqAg
LSByZXF1aXJlZDoNCj4gVGhhdCdzIG5vdCBwYXJ0IG9mIGFsbE9mLg0KPg0KPj4gwqDCoMKgwqDC
oCAtIGNvbXBhdGlibGUNCj4+IMKgwqDCoMKgwqAgLSByZWcNCj4+IMKgwqDCoMKgwqAgLSAiI2Fk
ZHJlc3MtY2VsbHMiDQo+PiDCoMKgwqDCoMKgIC0gIiNzaXplLWNlbGxzIg0KPj4gwqAgLSBpZjoN
Cj4+IMKgwqDCoMKgwqAgbm90Og0KPj4gwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoNCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCByZWctbmFtZXM6DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFs
bE9mOg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb250YWluczoNCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Q6IHVzYi1jZmcNCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC0gY29udGFpbnM6DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNvbnN0OiB1dG1pLWNmZw0KPj4gwqDCoMKgIHRoZW46DQo+PiDCoMKgwqDC
oMKgIHJlcXVpcmVkOg0KPj4gwqDCoMKgwqDCoMKgwqAgLSBtYXJ2ZWxsLHN5c3RlbS1jb250cm9s
bGVyDQo+Pg0KPj4gVGhpcyB3b3JrcyBva2F5IGZvciBhbnkgY29tYmluYXRpb25zIG9mIHJlZy1u
YW1lcy4NCj4gPz8/IEkgZXhwZWN0ZWQgdGhpcyB0byBiZSBwZXIgdmFyaWFudC4NCkFzIGluIGJ5
IGNvbXBhdGlibGUgc3RyaW5nPw0KPg0KPj4gSG93ZXZlciB3aGVuIGRldmljZS10cmVlIGlzIG1p
c3NpbmcgcmVnLW5hbWVzIGFsbCB0b2dldGhlciwNCj4+IG1hcnZlbGwsc3lzdGVtLWNvbnRyb2xs
ZXIgaXMgbm90IG1hcmtlZCByZXF1aXJlZC4NCj4+DQo+PiBXb3VsZCBpdCBiZSBhY2NlcHRhYmxl
IHRvIG1ha2UgcmVnLW5hbWVzIHJlcXVpcmVkPw0KPiBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5
b3Ugd2FudCB0byBhY2hpZXZlLg0KV2hlbiB0aGVyZSBhcmUgYm90aCB1c2ItY2ZnIGFuZCB1dG1p
LWNmZyByZWdzLA0KdGhlbiBtYXJ2ZWxsLHN5c3RlbS1jb250cm9sbGVyIGlzIG9wdGlvbmFsLA0K
DQpyZWdhcmRsZXNzIG9mIGFybWFkYSAzODAgb3IgOGsuDQoNCnNpbmNlcmVseQ0KSm9zdWEgTWF5
ZXINCg0KLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
