Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E74FCAC5B0
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 04:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqnWnlf6XKzvYbbVqMw47iqCj0Mk5fnurMkG5uUC3gg=; b=utZWrnq6XTKx1k
	83BbX/d+VdxPNI1iRVhfQs3PHIttCTV0UtZSttGYSq1zi7EHh0zfLHv8SRhltpJnz8Zvo/lyE9ain
	3EfQC8CHXv0wFW7jY9oo9kJaJadtFiO1T5Ui5uZysDR8CPiKylUMPV4XO9t5Mf6H5pNs6vQkdNNDS
	EKiYkIBTGfUCLj/CLXCq8KsqeHWbr4mgTscW+DOJRZ8+xRqRi/kvlKUSCr+6FrWshdAUMY0uvY9S2
	abmLHXuEH9dvDrELFcVszuDhIXJ0yyXBLiOZfqnyWXJGf0fO7qUrw7u0VlCaMqoNCA87BaxP6g7Fv
	a4bva86CRBX/5yqgn2Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5yuz-00000001Ecw-0FVf;
	Tue, 07 Oct 2025 04:03:17 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5yuu-00000001EaR-2sEL
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 04:03:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iLL604ZpgPPRfx3M3QgpP/GFHtrYS8aT8Bbqhwga3gXhZFxImC4IVHnPf6Q8ksBKhksudS0WhMzNwaRUsBhtxFhhQpb4deOc7spIn9G9Y1cRHv8++jN+y3tZtxSg7Tm2vaE4RjtWO13+xwQ+H9uuU2cHq4TtaXpIQLNAJodRGC1T9jhMm5Gd3RAhYXV0Jd/vYBI6N8/1heKi/zGPAWSLYoCNutOh6h8/8VEpGLUV19vjczFrVQhWgunQMo7DsymlMRHMXo9A8ke1cjVvovABRaIbSaO/OMhazsyByUbalL//OE6brs3RYkfrO02N5TTpqJ+L3PTHd4w4Y2oY7iZaLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NS6ToFE6XWXKbSe4eXlgKqTbBn+CZsQf3E6GAc/LfQk=;
 b=PLjHjxUuLR3IXqMOhh9SDNQ9OntLsp4hDSJHcwZRmpnVcZ/Os4f4jn/7B7BGmee/kOhDBjfL0369W2rToIS8kxfYd84MDwjgJv/q1kzdcWIy+mT2zPfR3wy4egA6RitNbBSRkv6zNbc8MdCpdpE0nZI4auXwd+XAdDuQDzqZplKDKPwF0WBkxqJR4w+Rk29uUYhFLosxJkYbqQvkXYgHcWwXhBouM0zqHpd9+ESP4geKt0EjFdYX7XkIvG6/THdd4vJPt0jo9/y2jUJjPd5mpTBEgiHc6mVXI12Vmw3LgK4iiwQEY89vSr+qiYs4RKJhThOf/LEvqhtHVtzCTL/Yzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NS6ToFE6XWXKbSe4eXlgKqTbBn+CZsQf3E6GAc/LfQk=;
 b=Mr7bElp7JE7JCz8p87WA411qbYnRqqVoMEWZ/zUS6hljziGcoLcUhABcX/334wcW67gvfgM9WdLJoRTq711x8HGvTTjIRBmSUdLsCOAOXRgyg9a/hmO+EmRZ74kWghYk5pViVYl7MaY48vQtEQ4KI8tVYpjLz0vAZ1C6h2Bf/5o=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYYPR01MB13281.jpnprd01.prod.outlook.com (2603:1096:405:165::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Tue, 7 Oct
 2025 04:02:55 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%4]) with mapi id 15.20.9203.007; Tue, 7 Oct 2025
 04:02:55 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Tommaso Merciai
	<tommaso.merciai.xr@bp.renesas.com>, Tommaso Merciai <tomm.merciai@gmail.com>
CC: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, magnus.damm <magnus.damm@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Prabhakar Mahadev Lad
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG
 mode
Thread-Topic: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG
 mode
Thread-Index: AQHcNt66G8TP9Ee94kC0LXwMMOw9YrS2Dljw
Date: Tue, 7 Oct 2025 04:02:54 +0000
Message-ID: <TY3PR01MB1134635745721CC005B35702286E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
	 <20251001212709.579080-5-tommaso.merciai.xr@bp.renesas.com>
 <593eb851ae6ce0ec03ddeacf436180b6538fdd1e.camel@pengutronix.de>
In-Reply-To: <593eb851ae6ce0ec03ddeacf436180b6538fdd1e.camel@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYYPR01MB13281:EE_
x-ms-office365-filtering-correlation-id: 373a8a4f-c399-45bd-2485-08de055664fa
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?OGZtMU1PczFzQ1lBam1HSVZCQjZSeE1teE4yMXZSME9wT2U1b0dBaTFLRDQz?=
 =?utf-8?B?MXhtSm1CcGdmL1lTbXIzUld0cmJPZkdtY2pkL1FiWEM5cWJIYy9xWFRwd1NS?=
 =?utf-8?B?aEs5SHR5TUhaOHp2N3o4eWVDaW9hL1c0NWJYTlplUDRVQld5NDVpVWxzZ0h6?=
 =?utf-8?B?MXRzNktXZXVKc0M3Y3lUZ0ZMeDVFZy80Z2dvQTRROGpkaEpEOTZhVEEvenZm?=
 =?utf-8?B?UllTcTBOdEpQSkxlVnJSQ2Z3UlZDUWNIbEkrb29pOVY5bGVKUVVmSEg2UEJw?=
 =?utf-8?B?ZThWdGJWaS9MR3JrVFJ0T3dwNis0QWxDa2FLQVJtZWRjRHpjRzJTZWFncVhD?=
 =?utf-8?B?ZVJNb2VoMEw4ZG5PYmVyREdyWkhWOVc2TWN2eDBtNzZBTUpsZ2xoRldvRk9w?=
 =?utf-8?B?VjVocUxUTGFlUlAvUDN2NGdFMDI0c2loRXYvN2pNMGF5MitHL0NubFhVSFBa?=
 =?utf-8?B?ZUViMXBoTzFVL0ZZOUFLQ3c0V3RMaWJNd2xSUmpkTWxKSnN5RjRjVE56UEo5?=
 =?utf-8?B?aDg0UStZVkw3Q0s3UDgyWkVwUUYzUlVNZUtZK092TkwvQ2krOTZiMnlXSWJS?=
 =?utf-8?B?OXJLTlh0YTN3UEU1WlA5MXp4OEdCTTlscXY4VDJBaHlMbVltdHhoVXo5UVNH?=
 =?utf-8?B?cWVldTIzZEJmOGtvL1Y4RktMcit5MThRT0JLUDZ3T25YTStiWXVNbE1JRjk5?=
 =?utf-8?B?dVk1UGlZVC83bUZISnF2VDgzR0RrMnc0bE1vaHBWUjRYb2E5Qk5ZY3NhSVdF?=
 =?utf-8?B?NmxKK2pYdWFSRXpyZkVWM1NjMERqQTcxUE4xd1JScnNVc0NBcXJpRjdNQ25N?=
 =?utf-8?B?dUd0OFZ0TjhrNHhaeTB1L0xCMkFyL0lRUi9ockJLd2RsaksxUTIwaFFmbjM0?=
 =?utf-8?B?T0JFYXBRbENqamNDMzFlRWV6NTAyUkVLVGJuT0RIQit2VGZuaElPSXBwNEgv?=
 =?utf-8?B?U2hqLzg4Z1BXTEhjZVdxY3BWaElRczZoM2owRTBWRlVZSzhIcnFmelBhakRK?=
 =?utf-8?B?YXQ4ZXpPS2t3NUxZTjFpd0FvTWVpZTEwemlTRHlaYmJ2amdHdVc2T1hvMzVi?=
 =?utf-8?B?Ym5HOXp1TUJuZ1dnSzZ4M2dNdngzR3dXNGVTWjJQSVR0OU5xOFBKbVZobXZ5?=
 =?utf-8?B?RXZ4VXhybXdrT1h5MGxXbDJTckQ1b2hQdnZEWW1CcnY1RHNid0VpMFFiTjla?=
 =?utf-8?B?dmJjSHVPOEhYdlVxVTMxTUtWVHBSTHBEeGdZczVpcVBPOHhTa3RpWmZxS0tt?=
 =?utf-8?B?VWdPMGhvVTk4NTBvWkR4TUl1bUxyaFNXbytRM21uQVRNeHQ4REdxWGs0SXhX?=
 =?utf-8?B?VWxNei9jdjI1VW5nTHo1NlZMaXRvQzJkZENudzB4Z05LWm1FZUxydG9nK1pZ?=
 =?utf-8?B?S2c5c2N3blFZTjFUVGRLcVlwdUxmSHZCY2tCbjhkSXA5MWU1R0dHbW9oaWV1?=
 =?utf-8?B?Q1NBUWZPWGNMT2NYVnNxVmZRcHVVWHNhNUxaeVdadjJNZ1dSZEw1ZkM0aW9B?=
 =?utf-8?B?L0d3MVR6T21ZUElCZnVjNWRFVlpWb0FKenAvc2JmOU52alBXK3N3NHNWbTBn?=
 =?utf-8?B?cDB3UE9Zb012dUJuOE1JWGNUeVZuRXo0b0lZZUwwclRadU1TNDhSTE9DZmZX?=
 =?utf-8?B?ajNXQ3F5OG9EUTJtd2x2eG1FelJWaU12K2xJL3ZOWUpQRVQ4WFdTaks0UmtC?=
 =?utf-8?B?bUlsZ2VKdWxQbmRhWFJDaWRZODRFbzRDeXRtZ2ExNG9HQWROaTkzajJOTWNT?=
 =?utf-8?B?MkZDVGEzTDBUL09YK0s1TmY1RGF3MkhER3NBZk0zdys0bjQ5MWZINlFmMEM4?=
 =?utf-8?B?My9VUXdBRUh1OTBKZ3o1Q1lWYWtOOXRoazl0a0xvTVpDamtPSTBnU3JrVUIw?=
 =?utf-8?B?dmNWaElTMGFnOTFJb0pseU5Ia0NYY3FrOXFvZ3MrUkR3djA4Wmhwa2VqbC9u?=
 =?utf-8?B?WHgzdDZ2M1RGQm5rS1FIV05ER2ZtUlBqcWFxcFk1VnhibWplSnBvd05WU2s2?=
 =?utf-8?B?M1QvMkVPOXUxTlVhWGo5UWRKT2hucjBzSmFPRkJPUmFySTdaMkhBcTlFaFNv?=
 =?utf-8?Q?1+LB4a?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHZtUE1NV205dzlPdm1ZZzFkR1QvcUg1NW1CbjVzQjNRelBhb2tsMkIvUU8r?=
 =?utf-8?B?UVltWWV5NGJncTNHdzhacUczazJKbUFCZ21PS0xrUW81THNWeUdkL3doc3Rz?=
 =?utf-8?B?OUk3d2l5VUM3bWEvVXVla0VDMS9MSmU1bXRoVy9hcFdHUXZCSVNxWDFFaFRa?=
 =?utf-8?B?N2hOU21OOCtFWXFQcG5neWEwak1zQ2hTMUNvZTNWRHFSWklrck15ME9VUzBP?=
 =?utf-8?B?M3ZLbmwvV3JNRjVUeS9PalAxc2swQnQwWThHOEU3bjNqVlFLV3pDTWwwL2t1?=
 =?utf-8?B?MGpTditmb1UrU3VXOWZUN0lENEtVMWQ1NGVWU21rak1sSE9oWEV1Uzh5NUh2?=
 =?utf-8?B?eExyR3lSL1h5dFVjMHIvTi9VMmlCSjNDa3dnYktwUFlObmxqVXdRZWFlbjRq?=
 =?utf-8?B?MFJWTWxYN1Q2L2xHbjhKRHdva0hTYU9uNm1NQ1J3OTlIVGdRdEZ3dnBlZXVj?=
 =?utf-8?B?b3JHQlJ2VHVUOVZMMjM1VGFZd2ZzVDRvQUVMa3ZSU0hjcDA1Zlp2dWt3YVV3?=
 =?utf-8?B?R0hkdlBScDFpNldMN3JNNHFSMEYwU0UzaFdYelBkU21RYmxobW53ZFhwM2tV?=
 =?utf-8?B?UlBxaGdIMDFNVzN1Vzk1anNpZ0FyTTdpRkQyRHlPVEs1ZlEwTzN3WXg3T0R2?=
 =?utf-8?B?cHQ1ZkpIeVR0aE9OMmQ0SkJhNVlVWmFSM3kwQmF0azVaZ0RlTzJLZ2dqSEZC?=
 =?utf-8?B?YkFicjNwQXh3VzZBbW9uNU15WXZaWkdwMEVQSlh3eHdDcnBFQk5WeGFRcXUz?=
 =?utf-8?B?ci9qZy9TRHlOcHplTTNBR0kydjZ2VUNaMFVPTDdVL1dFbFhWelVFK09BRnFR?=
 =?utf-8?B?c2Vwb1JIaG5jSjJsSVJaNkZLSC9PdHExWDdTZUhuRm5qWkk4Q2crNXlBTTZ4?=
 =?utf-8?B?d044WE1SZmhZeXNCLzJpS0xCbW5XK3Vmb2IvZVZqZ2pWaWJ0RUxQRHNENGcw?=
 =?utf-8?B?dVJjeUJvQ3VKV01vcDZPbjlzOW1nUnFETFRNV1lGcmNneEtDT2UvTy9VY3Rv?=
 =?utf-8?B?RkxObFU5Wk1GRUtyaFZIMmxkK25kT016OEtaRzZtZG5WSlVXTkhKK2tyYWNT?=
 =?utf-8?B?ZlNMS0pGN0tQY1ZUZkZJSjlqTldYQzQwUUFpTGpKbDFXSXBHUTJ4K3pkN28x?=
 =?utf-8?B?S0xQUGo1cXhsZzBWd0FESjFxdXlrTVkvQ2gxc3QyVE5mUFBkMzRjZ1AwNlZL?=
 =?utf-8?B?U2l1b3crOGd1dFVzSURESm5NcEEwZ3loV28vN0pzTmVzaGUwWGFnUFY1Z2c1?=
 =?utf-8?B?L0dIWTMybmR3WlMwVnFpVDVGRkNORWVmakJtdGV5OEswRDJxRkN0ZmlmeDlu?=
 =?utf-8?B?Tm5KMk03czZsNjJCVFpCMzY0NmVURXlFUHluMUZlL0owYUVqc2t2NU9sS3V2?=
 =?utf-8?B?VnRVRjN5Zk1iSGVSNWpCVWdOV2J5RnVvMUdpV2RDdVF0YVFYeFpSV3ZVbFpH?=
 =?utf-8?B?Tjg5cWtTK3RYRzhrOU9ScklnZnBiSElTWXJXOTNzZzhBVzJtV1IxQ0NlcjRs?=
 =?utf-8?B?UGxVUHFUK1V3cTljU2FhTjFxSmFNMkloVS9lYlEwQk0xOU9qRWpZZkdaOVZw?=
 =?utf-8?B?MU8vR1MxVjVNcDBueEdYZ3h0NzNwYnJsQmJRaC9lMzQ1UDNVVkxNL3RXalFH?=
 =?utf-8?B?SVVQMVdpM0xUV2JNWWgwK2lrTHFKcFRBUDRWTDM3ZHI4aitWQ1U2WjQrMEF2?=
 =?utf-8?B?bUo1ZG1rQk41K2c0KzcyOXVXeGVMWWVpZUtha1h3MG4rODNIekRUb3lPTHNY?=
 =?utf-8?B?WHpZM083KzcybVlLa2l2NVhoY3lHUTBGakJzZjB2bm5JR2w0bEwyS1FjY1pZ?=
 =?utf-8?B?ZjJ1WjdTdDU3SEtsSm1CN3FFdFg1cVVuNXBWejQvUmduQUk3ajcrbU54Sjdy?=
 =?utf-8?B?NHNBQ21tM1UzN2JUVm4vQ3dPcHMxNDNtTS90WkRJd0g1dSs2bkpvR0t4c28v?=
 =?utf-8?B?U1JLWG16amJXR0RralYzdm45cXpKUHgyd0Nrd3pseE4rbzJQamFJUWdhN3Qz?=
 =?utf-8?B?b05jM0hQMXl0YWluWVFncnpkemRhYTRTWFJDa0ZXSmlTTWdTTkRBWWpldEdh?=
 =?utf-8?B?OC9lYXlFTVRRNXdXM3JNNzhVYnMyMzBxSlpKOXNKbUlsSWlGYVBpSXpxU04y?=
 =?utf-8?Q?biKH2fHqocKW06bYgZWxtCkBe?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 373a8a4f-c399-45bd-2485-08de055664fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 04:02:54.8203
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dMCuw6CmxEIrWf2tKArBo0OvdWCbpfXNo6mzRmnRScFe6CjmSwnFKnDcLrKxdfwrnjB2GLp5EqxuBR8G6yoHwRFZyk9uJmRVT3je3fP6ZNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB13281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_210312_722477_16DE6152 
X-CRM114-Status: GOOD (  17.85  )
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

Hi Philipp,

Thanks for the feedback.

> -----Original Message-----
> From: Philipp Zabel <p.zabel@pengutronix.de>
> Sent: 06 October 2025 17:32
> Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG mode
> 
> On Mi, 2025-10-01 at 23:26 +0200, Tommaso Merciai wrote:
> > Add logic to set the VBENCTL register when the USB controller operates
> > in OTG mode. This is required to ensure proper USB transceiver
> > behavior when the device is configured as OTG.
> >
> > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> 
> I had reservations about this driver before, because of the opaque register initialization sequence, and
> I was told that no, this is a reset driver alright [1].

The latest hardware manual document about VBENCTRL register which sets source for VBUS selection.
s
> 
> Can you please try to find a proper abstraction for this, because drivers/reset is not the correct place
> for USB OTG mode handling.

Sorry for the confusion. This driver is not handling USB OTG mode. It just configures VBENCTRL(one time setting)
that selects the source for VBUS_SEL. Actual USB OTG mode handling is done USB PHY driver
which sets host/device mode based on ID detection.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
