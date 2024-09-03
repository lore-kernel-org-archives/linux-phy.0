Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54640CD343D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 14:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op20my/njLkDo25wHQ346g45Z3k6+pU1DcO/0OSrqmw=; b=mwsJbCdX/qzu8m
	yN5oaCtGb8rdAhls/7ChwQpXsDubN2rR01+9TlmV6jmgajmaoRj76Cdq8u/TISMVtvo1l7W3K17uk
	XNBHYnNH1em/pbE4Dz5z73I907SzRvRicCCXidwRxfNlUkKHGOI6U9El82wXuqATNGWo6cMb/He3s
	VfV3o4RsdatvOUhmiMNxWkum394eZQ9S6HT/UwqJXN0i9M+oIjHIl3sP5/5pmlP0ptzsAkY+CNhyT
	+CemMHOjBjjMhptRdZOBM/5err9O1ODT8JJcJHmmWCme6dO2C29cNOWel+zSki2LPBTLSatI5qEb6
	g/c2FBR/deT0iiG3gIag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUml-00000000eEB-3YOL;
	Tue, 03 Sep 2024 14:45:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTqa-00000000Ph6-13od;
	Tue, 03 Sep 2024 13:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Iin/JRb9B94GXS7k4cL1DurkqYtyX2R9gJh27FoHioA=; b=HVRfjC8JW8JVzstflDECtzIGJb
	EqdQnu3cyOfx7npwM6GD8sjZsvs0wv8P9v41sXqtCsbTwBzqAyDmhEUau5q34Az5QtsN1qznMZCUf
	FC3bioQSyVNMobflXmhf0m4b6uYN0nfXFgZeu9sy79mqNM6QSAi3AgRfSjdKSFEv1bEkC7bcAouLe
	4vjlKx7Nu+Az8zqgKa5BQe9PE8j7RnDBL7Rm/ZajdLnyGuO4qA+eMtztVKowR8cQel2+jDBtctM/6
	QzTe9tBt8ss1LiOOOq2BvxC6up6fg9pPWNeNa8nDHQkWy+KgzGu9qe/H0Sp4f3F++lCvzaVRnE33K
	7Bg7eN2g==;
Received: from mail-japanwestazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c406::1] helo=OS0P286CU011.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTqU-0000000CL4N-3tDU;
	Tue, 03 Sep 2024 13:45:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tkZXgJpPsa2uT8Z5Qddnzbd/c1nERkIuBOfMqxPq/y8o0+JT/SzxKYSAUwFCwvg10Q8xpuDakuk8q2sryNz2vJOfauVpv2cNfZfrbIBASz01I2mzZjYiMTHU7nD+9EVqB4HV2DDAGjkAwROttOLbP7qs8awCGrV/ReLTydZTKLS/TWFb8HKOcG7M+exvAfkD7BprRidXk7648v2CQBAKFjYLSVDfJeQKs/v4LQg6flp3/D47WCk+mEkp+TaZ3lcQ20PK2qwUu6eB3fYUifCfMhg9rNVU/s3+667KJnQ7fCdXk5HwGHIq/Ep878dwX2YSQY5hLFbj9g+6FquYY1GM3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iin/JRb9B94GXS7k4cL1DurkqYtyX2R9gJh27FoHioA=;
 b=HkocxInd5U7wmkfwkXUURJsSezZciN/rH7gR65q2DOAymCPInZmijcCucrpJXa/3xXCHUl8jKzSD7NXSL0/vHpuFuIrmOEIY49PBUZJfYGzw2757cp7yAotBiKI8VByKDgBle8nZ8eAQMHPCPUCnxQIfQVNpHWSOoxXlS7EkyjuWkOJoOGLs43J6NoQyp+yXoAvFWsbu3+P/BeyzV8BTrNOK3JtMmOoiujXfufYFvnd1ionAwl/q7dZdRGYHOeHwH6QsS+PeXv55tWWTXSLRm3iGgkAJO+EJGYx3H2t5D7OoPi2YLJoQHBjI/NJbQEHJdG1HtVYceFR5g/C8JEGkaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Iin/JRb9B94GXS7k4cL1DurkqYtyX2R9gJh27FoHioA=;
 b=wz6kKBFkR+ZVUWoExlqUzFh/6uZXBzvG/T+G1MF5ZrlV6Ir2cfwyv8aAfvBGUxulXlA3dSLM8hTlvZ4Cl6XX9HXBIWOcp0cHNDmr2QcNb06MdTa+H3G3rLZ3bvfSg/CPypy9ov1Dtukg0asfJA6mgy/MW69n+twOQ7ydqOJBQ3g=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TY3PR01MB9980.jpnprd01.prod.outlook.com (2603:1096:400:1aa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 13:45:04 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 13:45:04 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, Ulf Hansson
	<ulf.hansson@linaro.org>
CC: "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "magnus.damm@gmail.com"
	<magnus.damm@gmail.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "mturquette@baylibre.com"
	<mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
	<linux-clk@vger.kernel.org>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Topic: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Thread-Index: AQHa9KfrLpE8CCuWg0uaPyaAgZR3ArI+ZjUAgAEcCoCAAVgqEIADVdkwgAAP5ACAAACycIAABtQAgAAAhkCAABeagIAAAFcwgAFU0LCAADjlgIAAAKQQgAAJGICAAAE9UIAADyWwgAAHkoCAAADSkIAAB+2AgAAJdkA=
Date: Tue, 3 Sep 2024 13:45:04 +0000
Message-ID: <TY3PR01MB1134690F9D37E3BB4814D864386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
 <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
 <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <0b73544b-0253-43b9-b631-6578b48eaca8@tuxon.dev>
 <TY3PR01MB1134689573A785E91A9041E1886932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
In-Reply-To: <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TY3PR01MB9980:EE_
x-ms-office365-filtering-correlation-id: e4a27979-1ddc-44eb-94f0-08dccc1e9d6e
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?S0tIcUYwQU5uRVBDUERUNHExNG81bTFNT1M2YU5uQm4vOTZHZEtMblZqaG1q?=
 =?utf-8?B?cDk5ZTV1VzZxWUFwQUxyM1BucjNTNXdsL0E5S0RvQVU0ckhSWlJaRDBDUWcz?=
 =?utf-8?B?TnFPQzgrbU9ES1c1ejAvOEtkSDdPVFlsZFFTbUdjcEVLTmxpN0k4L2QvUTdM?=
 =?utf-8?B?VE9rQUxTWDFoeVNLd3BpMUpJSUNCZXdqRytLakw0QlJ5K2ZuUkZWZnd3b3Ex?=
 =?utf-8?B?QTdhTm5FeXdwQzhyRVByQytiRksxZTlTQzV3QVpaY0xUQVdVdkZtaG5MdmVw?=
 =?utf-8?B?UjhFbk1tdUJNRHZhTUE4WG5LTkQrMXFYMWppWnZPNzZURzgrZE1wVEdHQ1JF?=
 =?utf-8?B?R3Jja2VpSWxvUStFMW1HL3MvT1BrRUtLc3hGVVFrT3M4dHMvMHZyL1d5b3py?=
 =?utf-8?B?bHRiQjAxRFNOUjY3Kzc5RTJUNWtGeFR5MVRjdjFyU1VaUjR1L2tKQVUvY3Zs?=
 =?utf-8?B?TUFmeUNkYXM2QXNESWtxMzdIWFFLL1JxdWpEQUlyUitaTjRBTU1SNWtSRkdS?=
 =?utf-8?B?TFdIS3FOeDltQnRrV3BsVWtXME5BdkNFdkp0NjZ0ajlaOG14eHhVWlMvN205?=
 =?utf-8?B?NjRqc0JaQVc2NWtJOUFpVzJRUWk5TjRvdE1GbjJ3SThjU2xqSThXcnNCMHpx?=
 =?utf-8?B?c2RBMEZIRmZJTk9OVnpGRVVvMFVyY3dlSGozOXJFemprUzJ4cjZDT3M1ZXZV?=
 =?utf-8?B?RHp2b2ZrSXo3UjlydXlyc0Ztd29YRXF5eVNiREV4QjlnM3pIeUlvV2o1RnhU?=
 =?utf-8?B?aFNzS2hJQlkyaDRXMWR2UUdHZUZGczRTZFB1YjgwWm13K0F6bjFwam5qZWV0?=
 =?utf-8?B?clkxMGY0ckczYkJsZDlHaGo3SXV6WWp2SHBEQzlLMWE0SGFrTTNRdEEwWkZz?=
 =?utf-8?B?bVVHV1Z1YVAyOXRIenh3bTZIcEpSSytOUzdvNVF3cERLNXBhSDFlejZXUUcx?=
 =?utf-8?B?MW82TUJhSzc5VXlkcVJaYjR6THhjV0pVTmlDRUdYOFU4WGV4cjhaSnBpWmZR?=
 =?utf-8?B?NHB4ZEFYQk9GOVZ5TjlaVTAxbzhKNzFFbmIwMjhOamFFeFlycmQ4MlB2MmdT?=
 =?utf-8?B?eG5EbzNuRXo0RitUQ0tkNFhhWm5jZFNoUHZaaEhrRXRaaGczUWNYWHNPb2JR?=
 =?utf-8?B?a0pMOXhwTEd0S3FDa2MxWnRRUkt6OW9SbURQUzJDdi9TL0hRZ3pDTjZKQzdP?=
 =?utf-8?B?V2VqL3pHaG1xamJzazBKaUhoT0ZDN1Uycy8vTEJtdld5L01BeEx4VG16MlBE?=
 =?utf-8?B?NTlqdWN2TmpzVEVXU0VudDR6aW11eDZJSHk5ZkdMWm9UNUpkM1N2ZUh5Q3VM?=
 =?utf-8?B?M25IYzdWdS9CRUExY3RBWHVwOEZZNGVkc0JUblUwMEVwMnZ4bmtxMUZkVC9Y?=
 =?utf-8?B?MGR0YVVSVVNuZ2ZvaGpSaGlpOTV2NEx0OXRyMWRtVDJoWjdIQW5CMGRzWFpL?=
 =?utf-8?B?Z0ljcjQ1Z0M3eVp5VHZrYVhHUkVtU2ttUWlDdmM0bTlxNUJYRFprQ2lhUit0?=
 =?utf-8?B?TWkxcEpiR2g5NDd6M0NpZHNOQ1R4YzVzMzVOWGE4cjZMWkdtY1BMUjE3WjZh?=
 =?utf-8?B?NWJZSEc5UWxBYm5BQ0pYWS92UDlTNktCY2lsalN4Q3lRZ2F1VGZ5bnhDWTh0?=
 =?utf-8?B?RVRLWlk1UGc2blFrOWRmaVJIaS9IaDlzZnR4cFhwajJiSnlnY1R5ZStSZHM2?=
 =?utf-8?B?VVlhT0dHSHc0OHJEWklPV2Z4NGtseUtUSG01RmZWK0tQQjFaNlNiQTBqcFBk?=
 =?utf-8?B?eHNSOUdYNzFDTDJUL2ZYVHFKVzVGc1RiVUE3Z0xPZ2VuYzZGMytYTjhoUHVh?=
 =?utf-8?B?dXN2ZlgrUkw1eEVMK1crMlBweDBhcHFGKzl1Tzh0QVdzNVpHRVNPTENjbFhT?=
 =?utf-8?B?MURCTHNWZ2ViNm5XcmJHOEVwWjBPLzgvSno2c1AvajVKU1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVBqK0RzT0IwUDFTK3Z4RjhxYW91Vk12S1M2VFFBUFJOVXFlOGtGL3hJWnJB?=
 =?utf-8?B?bnltWEM1Nmd1blYvRHN4YVhoU3lVTkh2U0FveW1ORTBBb29TYzJ4MzVrOEZu?=
 =?utf-8?B?TEVZQU9ReUp3c212bXRxSWl3QkxLQ2NBR2pBNDlXakpHdlk2NkZUWncxbE1s?=
 =?utf-8?B?RDdwTDI1VWRHaVJINDVDZW8rSFRURGZRdFNxYTl4dy9OUEZGeWhNOGNTZDBK?=
 =?utf-8?B?RkdXQWdoeCs0ZUx3dlcyS2NTcWJSd21DVCsxaFBRQzZEZzE5S3VGWFFRNUpv?=
 =?utf-8?B?Z1hwWWZxbVlRdVhkUmpwV1h0K3N3Um1YTjVEY0loR3Q4L29qL2xkb0MwU2Ux?=
 =?utf-8?B?eTZlbVIrYU5JdnJseFdpekpsVW41RXNPVnByQjVuSmsxTW03QVl4bXNpajd5?=
 =?utf-8?B?bE14Z1lnbmRvNENrZ3N2L1ZnM2lsZm5qTmxaN0szYXlTa2pnMzVnWlZ4TDFD?=
 =?utf-8?B?aEJxcS8ydzJBVTZhVVlyUkxNOFY5VmtneVZBaG83WVh6UWpIZ29KSjVhVHdn?=
 =?utf-8?B?b0xxUWJqaXhRMDdxR3Z2ck04cUpLNG82NlZzaDliamJnc0FBaWdoTGlBVlFa?=
 =?utf-8?B?d3Iva0JxN2RGWjJvMU1YWjZDMTlQdHc5eEljU040d3h1MFRNc0MrTjlvZ2JB?=
 =?utf-8?B?bWphNi8rRnZqbUg4RjEvT3IzT09aYzNmQ1F0YXk3bEJERlJNWmxDMXhqaURh?=
 =?utf-8?B?ZWZxVTlYelF4Q3VXZkpGckxFMlphOVQ0a1NaSzdicWhXU3lkcEhnSUJwNmhi?=
 =?utf-8?B?TWtFY201UUhUeFhiSFd0Z05WWGROQlZPVWc1bHVXTWFVOEhGY1d3NXFQWTZI?=
 =?utf-8?B?Yys1TjI4aVpCZ0ZNRDE4VEl6bFZrREZxeFQwS0RySWxnZDhCTjlGRWVzOWti?=
 =?utf-8?B?NTE0RmduVHpRZ0VFbHp0U2xyMXdGYTNITm1NeGJaVVFNdGxreHFRWldRV3ZE?=
 =?utf-8?B?QVp6VlJhTHVWUEw2VTRuYWp1ZXZLSys0Z2Q2eENlaUlvQUNUVmRrK0R6U2tU?=
 =?utf-8?B?T0NjWkRidHRrS005M1N6TXlxSkVQSjFLVG0wc3c1WXJhcG1odjR6YllsUXc3?=
 =?utf-8?B?RDkxaWoxY09BMkcyNDhqTytkQnMxYldsTGEyZmJBRW5Ub1o0K1ppTDI3TXF0?=
 =?utf-8?B?K1dnWHEzV0xCS0pKWVphVGQ4K051ZGVYTWhrU1Eya3dzSXJmaHdrSmptNGFz?=
 =?utf-8?B?WXdTeEVEOFhValZQU3dBWDdsS2RmczB2WHdnc0p0dG1haEE0a25qMSttdXJM?=
 =?utf-8?B?S04ybnRmdGNwajBvbVJpTjl0ZkpkM2JzQ2FKMlBjZSt3L3dQMCtEZUZWdndq?=
 =?utf-8?B?UGR1eVoxaFRVOEhPS2Z0S21jNVR0aC9Ea2VWdS8yL2JRVGJOVVFWTEpnd1JS?=
 =?utf-8?B?cEwyLytXcGt5bW5DYzlzZUFjbFYyWW81R3FNeEIwamd3SSthSzlCNFdJS3dz?=
 =?utf-8?B?YjhYN1hIUUxncWFjNjhVSWRtN0dURGgybVY3QndLTitpZGdvUlo4V0Y4d2g2?=
 =?utf-8?B?R1NFdHRmbFBLTnY4dkFhK1hZVzNNUlZZVXdETFZ5TGdsSXU3YVpGajU5eXhr?=
 =?utf-8?B?MTYvZHdvK2UrT29aM01kZC9UUmkrdHdBYWI2WW1hdlhPS0wyVnYxRE9LSktr?=
 =?utf-8?B?UDJWWU9vNTRoOE53cjVIa3l5R3VjM1cxbTR4cUhydGYzbUE1RXZyejBNZlBs?=
 =?utf-8?B?SFJ5RW0xU0J4YzVYY3N5cjFGaGEwOEh2ak5adi9MQlpscmhGVTRCRTREd21J?=
 =?utf-8?B?N2QzVXZiVnJCdWs1ZmZoUXNHYitKd1E4MlJtN1lIZm5DVTR5d0dKLzUzbDNN?=
 =?utf-8?B?ZWtnV2ZKNDdKb1lrMkpyazZrcmJMYktmKytjblJXM3NEWld1VkpSTVRrNUpS?=
 =?utf-8?B?MHdhMnRKemhsellPR28vZENRZFViWGZDRFFscndrK2xrdlpraVVJaVR6QzNz?=
 =?utf-8?B?SXNjNXY0RmJXbFQyRVYycTI0V2VYME5Wcys0Rm9QcElMMDk4RUgvbkd4ZFBS?=
 =?utf-8?B?Vjl5RVhFSnB3eVU5Qk93ZEVvaVpDRjRYR3JXd3N3alRPS2FUTk5iK2VLSDd5?=
 =?utf-8?B?Z2FUbDlLSHl1Q2ZxYkRCRTVVN3hqOUpoNkNmeGUyVk1pWmd6ZDhwVENkdHlD?=
 =?utf-8?B?Ni9ueW5TZ2J5MThsOWVrVFQvTmZBa3BTZFo3ZDhZbUY5MnJPejN2QUNvZllj?=
 =?utf-8?B?OFE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a27979-1ddc-44eb-94f0-08dccc1e9d6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 13:45:04.2054
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: liOg/asHDaHH95DndOcAwhgjeYzI2JDH2GWN6Dz10bBTzpGoVxEaJPvJ+qT34cNucZMSVrmK3YHkdsik52q+Rsv/Z/2chxbVS/+rbWobyqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB9980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_144523_340620_73059403 
X-CRM114-Status: GOOD (  12.01  )
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

Hi Claudiu,

> -----Original Message-----
> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> Sent: Tuesday, September 3, 2024 1:57 PM
> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
> 
> 
> 
> On 03.09.2024 15:37, Biju Das wrote:
> >
> >
> >> -----Original Message-----
> >> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >> Sent: Tuesday, September 3, 2024 1:26 PM
> >> To: Biju Das <biju.das.jz@bp.renesas.com>; Ulf Hansson
> >> <ulf.hansson@linaro.org>
> >> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
> >> geert+renesas@glider.be; magnus.damm@gmail.com;
> >> gregkh@linuxfoundation.org; mturquette@baylibre.com;
> >> sboyd@kernel.org; Yoshihiro Shimoda
> >> <yoshihiro.shimoda.uh@renesas.com>;
> >> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> >> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
> >> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea
> >> <claudiu.beznea.uj@bp.renesas.com>
> >> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >> RZ/G3S SoC
> >>
> >>
> >>
> >> On 03.09.2024 15:00, Biju Das wrote:
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: Biju Das <biju.das.jz@bp.renesas.com>
> >>>> Sent: Tuesday, September 3, 2024 12:07 PM
> >>>> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson
> >>>> <ulf.hansson@linaro.org>
> >>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >>>> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
> >>>> geert+renesas@glider.be; magnus.damm@gmail.com;
> >>>> gregkh@linuxfoundation.org; mturquette@baylibre.com;
> >>>> sboyd@kernel.org; Yoshihiro Shimoda
> >>>> <yoshihiro.shimoda.uh@renesas.com>;
> >>>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> >>>> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
> >>>> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >>>> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu
> >>>> Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
> >>>> RZ/G3S SoC
> >>>>
> >>>> Hi Claudiu,
> >>>>
> >>>>> -----Original Message-----
> >>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
> >>>>> Sent: Tuesday, September 3, 2024 12:00 PM
> >>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
> >>>>> RZ/G3S SoC
> >>>>>
> >>>>>
> >>>>>
> >>>>> On 03.09.2024 13:31, Biju Das wrote:
> >>>>>>>> During boot clr USB PWR READY signal in TF-A.
> >>>>>>>> STR case, suspend set USB PWR READY signal in TF-A.
> >>>>>>>> STR case, resume clr USB PWR READY signal in TF-A.
> >>>>>>> As I said previously, it can be done in different ways. My point
> >>>>>>> was to let Linux set what it needs for all it's devices to work.
> >>>>>>> I think the way to go forward is a
> >>>>> maintainer decision.
> >>>>>>
> >>>>>> I agree, there can be n number of solution for a problem.
> >>>>>>
> >>>>>> Since you modelled system state signal (USB PWRRDY) as reset
> >>>>>> control signal, it is reset/DT maintainer's decision to say the
> >>>>>> final word whether this signal fits in reset
> >>>>> system framework or not?
> >>>>>
> >>>>> I was thinking:
> >>>>> 1/ Geert would be the best to say if he considers it OK to handle this
> >>>>>    in Linux
> >>>>
> >>>> I agree Geert is the right person for taking SYSTEM decisions,
> >>>> since the signal is used only during state transitions (Table
> >>>> 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)
> >>>
> >>> One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.
> >>
> >> The "controlled by" column mentions CA-55 on PWRRDY signal control
> >> line and it is b/w steps "DDR exits from retention mode" and  "clock
> >> start settings for system bus and peripheral modules". AFAICT, after DDR exists retention mode
> Linux is ready to run.
> >
> > DDR retention exit happens in TF-A and it jumps into reset code where it executes BL2 in TF_A. Bl2
> checks for warm or cold reset.
> > If it is warm reset, it sets required minimal clocks/resets and pass
> > the control to linux by calling the SMC callback handler. Which in turn calls resume(step 11-->14)
> path.
> 
> Is this from HW manual or some specific documentation? I'm referring at "resume" == "steps 11-->14"
> 
> >
> > Step 8, Cortex-A55 Exit from DDR retention mode (when using) Setting
> > for exiting form DDR retention mode Step 9, Cortex-A55 USB PHY PWRRDY
> > signal control (if use USB) SYS_USB_PWRRDY Step 10, Cortex-A55 PCIe
> > RST_RSM_B signal control (if use PCIe) SYS_PCIE_RST_RSM_B
> 
> Note *if use*: how does the TF-A know if USB/PCIe is used by Linux? The documentation mention to set
> it *if use*. Same note is on ALL_ON to VBATT transition documentation (namely "if using USB", "if
> using PCIe"). If TF-A will do this it should set this signals unconditionally. It will not be
> something wrong though. We don't know at the moment what this involves in terms of power consumption,
> if it means something...

IIUC,
The only information we have is,

"SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from ALL_ON to AWO (or from AWO to ALL_ON).
"When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break"

ALL_ON to AWO_MODE state transition: 
USB/PCIe are part of PD_ISOVCC power domain and before turning PD_ISOVCC to off,
we need to set USBPWRRDY signal.

AWO_MODE to ALL_ON state transition:

Turn on PD_ISOVCC first, then clr USBPWRRDY signal for USB usage in linux.

Maybe we need to ask hw team, exact usage of USBPWRRDY signal other than state transition.

Cheers,
Biju


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
