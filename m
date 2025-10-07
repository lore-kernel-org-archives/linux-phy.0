Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE06CCA476
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 15:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb1Dt4RrvmY8F0NdIzLVvtS03jiwc2j9APTrJz61t5s=; b=VO6122Hmi6n8Ny
	qwKfolKi6falk3BX5luLFtlbzoZV3r7y7LMHb1EVagunN/Vhd6E7/q0FE3mOq2WbK4qEew3Y226D3
	lwHFXMxzT2L7p32eXsC2OiHqlW3B8R4qeohYy8K/oqQ27elA4ACZfW11Zyo7Y0SQ6rIuBKAbruth/
	9BsvldGB7gNaMaQU/vf7/BnEXkLYU7dDNditTaRQI7lzGQyi4J68Qm0S+ouzPzkmpFS17IX+2hujr
	1Pa/QzrDv5seec92+HabK4n/nSULVKsW8csMIbrRhIg0elh9Mu5EaigHmuKyt37EdA8BcvtvhRyBW
	Zb6YVWD2jhFaI24oDXhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v69Ue-00000002GpJ-2DUw;
	Tue, 07 Oct 2025 15:20:48 +0000
Received: from mail-japanwestazlp170100003.outbound.protection.outlook.com ([2a01:111:f403:c407::3] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v69UZ-00000002Go4-3IjV
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 15:20:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s3IHsl8i24j1N1zsPP2T4u3AXBfGYY9YzNhxSs8fPqzc2QUeLoPywGeIZ8Xm6fs6BiUtbqs4VYCGhi3UqAmlk9nKrvXIp+CGZwrTixgeBjZBHEWuV2QfU0RQy2OiKKBvK0Vv/h9i+U5DAZCySfIpHKQq8Lw54qpfxQuTOTySaiB+K6rIotfpTLSz+pqGnpkJpOzz9pZ3ox7gx7aGBEx0FJWq8Pw+B30ZP3e+NZYYmTIv7BIXs8JwAdu9apTuDaIoQgigCZnQycVdoeXyfhDgGqS2RrhYyasyvQHFCkQAyCUUZXrRmG0g8Nk1eJEl01ADv1w15jF/wNmPIFnaOsnkwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GJzA26d3TB+fcmbC+HeyB6pP24b1pqbi8abMObcE/d4=;
 b=hPmtaxxgu8Jue6dY7pr2jm1dUJdA0CW4sdrULPw+yQTPLDdZkw5d6ioEBTRMQQX3LE0JVQBuE3zqzpqld80fuG2q6lhfk/C5WQbsUHKbRqodnBCGc3BLPK7BqCn47hkT3wP9GpsqA+zdX9biWJ1yMitk9f0iUc0wWQPl9P/AkGk9L/OkjD8fK5wTEXTCt40A+LTQZtc7gbHaxTeQchhNZirppszRj9KUjRr3dAIr/Bzdu12k/u7GPAji/GRMajCnPz5b84NEgOOzKkf8WpJF+pepr6kCea5n8Uccg9Py/4qip8Utw0sZL1AVhBaf5XJHC55+oZ9sYoxhUgYTFg10AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GJzA26d3TB+fcmbC+HeyB6pP24b1pqbi8abMObcE/d4=;
 b=TzxcCpCN7tQz5/7n2zPl4MqCGDwFfGBhWktQOvTk8kg1Cl9wsIFHx3wqdVwXZpFutnl9gzRYzrK4Zpv48hMZsVvqs4JpxFrue2GRcQlIK4I+gOeSWx0QCANxI4QetKPmpyjZoXUY8lGUfF4h4LK/UWWj3skaDPuySgqqKZG3OZo=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYYPR01MB13952.jpnprd01.prod.outlook.com (2603:1096:405:210::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Tue, 7 Oct
 2025 15:20:19 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%4]) with mapi id 15.20.9203.007; Tue, 7 Oct 2025
 15:20:19 +0000
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
Thread-Index: AQHcNt66G8TP9Ee94kC0LXwMMOw9YrS2DljwgABhwgCAAAaEkIAARKAAgAAQ5kA=
Date: Tue, 7 Oct 2025 15:20:19 +0000
Message-ID: <TY3PR01MB1134612B0952B267BE89E686F86E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
			 <20251001212709.579080-5-tommaso.merciai.xr@bp.renesas.com>
		 <593eb851ae6ce0ec03ddeacf436180b6538fdd1e.camel@pengutronix.de>
		 <TY3PR01MB1134635745721CC005B35702286E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
	 <01fc3101ab2e3898932afeaaaf060a6676cdf323.camel@pengutronix.de>
	 <TY3PR01MB1134623A14F4F313986F631ED86E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <988658d3485232a0bb6c433b6533ebf0ae41226a.camel@pengutronix.de>
In-Reply-To: <988658d3485232a0bb6c433b6533ebf0ae41226a.camel@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYYPR01MB13952:EE_
x-ms-office365-filtering-correlation-id: e411f5b1-6dfe-41d9-b913-08de05b506ed
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZmR5QVMySUdzQVpteXVZM1doY3NSd0E2MnhtY1djaFlhNm01bzZQQWVlbWNy?=
 =?utf-8?B?Y091cWdSSVRyN0VCbFlwZjVZeEFQYThPK3dGQzFnV2N2YWlSOEJmODhQWEc0?=
 =?utf-8?B?eEtsVzg2c3h0SGZBMkgyb2kwTFV1aVBpOFpHKzl1bHR3c0pXQ0Vta1VTdk9V?=
 =?utf-8?B?OUxtV2oyOTJhTkJrelQ2bHNLVkhuYTc5WnpDOWhhT2JRWDg0ckhWWkJ4ckUy?=
 =?utf-8?B?OUdHLzBxQ09TQy9pTmNSTllKTGM3VnFFY1dVaW5IaXpGcDl1dUxsMU5vdGtY?=
 =?utf-8?B?TmphMHlGYmdSei96OGd3SjBOeWtaZGRwSjE5c0NmS1JPc0h3TVoyNlhYbERD?=
 =?utf-8?B?ZFVieEl0N2l3SUpRd3ZDeDJSZC9FYklxWXlITElCVWczMWZTUDZ2Q1VuZ0tS?=
 =?utf-8?B?UHpKS1pwUGVQTmJCYlN3RThOUVhmbndLYXNXVVh6SUl5TDZFdHJZU3Nlam4x?=
 =?utf-8?B?a1lncDhvajcwVHJRMWVENVdSR3M1cHBBU2RBOUp4QUtCODRwZmVDMzVHQkUv?=
 =?utf-8?B?c0lEdVR5YStKT1ZQbXE3OEliRXFlN3pEUUtqYW1XUDNmempHRFd1SFpFR0pw?=
 =?utf-8?B?dXVxS05jbXRDQ250Yk5LaDluYmtxbTNpd1BrdDNiNTdma0s0Um4zOHRYL1Zh?=
 =?utf-8?B?c1B1S05EOHdsOHVQZEdqRktlWW5MMHlIa05wNDVYT3NjdC93VS9XRnQ2a1kr?=
 =?utf-8?B?TVFpajN5RVZTQ3NjdEhJK0xpYkpZaFFUNytrQVBmL3gyM0hUVWZ4Tjh2YTRI?=
 =?utf-8?B?QXhrZkRJK3B4aWdjTERKR25oeUo2MVRFYlNEUlNYUHNjMURxNjd3SHZFU3ZI?=
 =?utf-8?B?Nlh0RE9taEh0aVlyWDczL1lTQzRqZjFFcTVVanhJMC9hRGNHYUwveWVQNk5R?=
 =?utf-8?B?dVdVcnRuVkJ1eVd3Q1duajNNQ2x1Q1dUaXpvRXdxQ1A0YmdWM3d1S01Ob0sw?=
 =?utf-8?B?SkFLaUVtZytrT0I0RlkwRFVURHhVUjYrZEhBUmZ6M25EdC9EcmJmaWN1TzlI?=
 =?utf-8?B?M201MGhORzA4SnpNcHlMbjBrZC9UNDNkdEZSZGtNcEFIaXYzSWplNXNFbmJC?=
 =?utf-8?B?SDFPeXhEazE1TkVIRHdsbTdZb1FNUndTUUN1WXUrYXplZ1gvN1JQQWlDclM2?=
 =?utf-8?B?eDY4L0duaks0TnlVMmdmQjVOZ2dzUWwzWjYrSUxFblRqNGNCQUlNeldWREFi?=
 =?utf-8?B?Qm42d2N2aGtIVnQ0MUF5UWJ0dHlLRVpOcXhmREZhbFVXREI0em5Vc0NzK0tu?=
 =?utf-8?B?ZllmMFBxMDRsMjN0RC9FWWJQNnZnczFyUXE4SXBteTgvVllacU4wODZ3TjBy?=
 =?utf-8?B?RjRteEpVVTl3MUNIaDlyaEJyZFVTVTEweGppeVEvQ1dMRHJ6Y2grQXBRb1lM?=
 =?utf-8?B?cXlZMk45N2NVL1FDc0dzZC8rbzFEanNTM2RHaUxlRU5zTmRjMjJWaDVYODM2?=
 =?utf-8?B?dFg5dDg4VVBNeWxKTWs2NlNkcFRDRzZHTEVCbzFvZXRaVGRwTEtHREZFMWxP?=
 =?utf-8?B?YkR5WGpKUXpIRk9ISDNDcGZRV3ZiNjQwbnU1UE1WLzh6UHJ2ODkrTUQ1cVFt?=
 =?utf-8?B?dS9POWdnRGNkbWFxMDl6UmthcHY0cEE0SGFjYjVDMWE2VVhDWFc0SmE5N0lq?=
 =?utf-8?B?NWE0cGs4QTBkQ0M4UXpoVnZpakJkM1JGRVd0RVFjOFg5YWl2NEE3aGFCTWY4?=
 =?utf-8?B?cVJBd1YzTi9BVG9INTROSWY3WlkvaVlaTk1BenMyUyszYXhGMW51azBwNWps?=
 =?utf-8?B?U1FLckZodXRXeU9MdWNHb2lwdHFLY29GQ0thUTBaM0x6c3NLR2djOVh3TFRs?=
 =?utf-8?B?SkRoYmtER3Q5Q202OFF3VkNiYkNtVVBMS1ZuamlBY2ZsSDZ4Q1lMYkZCeWo3?=
 =?utf-8?B?dk5OV0pQSTdHaEdpSVdyZCtsK0ZaVWVLN0pGQ01WTmlZZ0MzVUpuaW1wdm1h?=
 =?utf-8?B?WFFmRENEdWxpOXZGOVR3cHFaRDJoSlBHQkZMYWI3NlVGY0F4T3NnTTBTN0tD?=
 =?utf-8?B?UVArQllrWVo2OFlvSE1KdFN0aE8vamY0SHFKK0JKK2I4WFNiYUFQYTdrUDE0?=
 =?utf-8?Q?+Hjrdw?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEoyU2ZBZEZuUWwzMlF2bWhMVHJ5aXEyeE5XTzZzd0NpN2E5ZnZFZWdsV1Nw?=
 =?utf-8?B?eFRwU3FnWFJLcFNqTzJOM25pcGk1cE5jc0VBS3RIbUZ0aDFpMlVPOWlRTS9a?=
 =?utf-8?B?d3RIWE52SEpVR0pISGI5SU5EMXVRelVtdWR0dHo0NHpNUTBsTldIMktYQ0Vi?=
 =?utf-8?B?NVBJZC9YSWMzeTdiSEFPcW5kb3BrREoyNGpLSm1GL1hyY3ljQ1IvRHd1T1Fs?=
 =?utf-8?B?NERSV1Y5R1NxdE0yWGJjN3JVekVhUG5oM2krZXJhVGZiTDhDTGRGdlBxUkNZ?=
 =?utf-8?B?emRPd1dOUWhhYk9BcTFvMDFUakZlcytDTTcrUTRUNGZRY3g4NFZnYVQxWFNr?=
 =?utf-8?B?K25mTWJqbUZBMkU3R3ZMM2JrYVRXTnpyZ2lZL1ZUNTlKWjc0dmxRUHYxNG83?=
 =?utf-8?B?bUphNGVIK0RacVZUQkV1NDdtVE9oUUcvWmt0d1RPSFFWWnBGakFwdy85Tjg5?=
 =?utf-8?B?MFp2NXprbFJSdlFtTDdtOHNIZ1lQYUo5QUZOWmlsZWJIZE1pZnB0RnNIQmJP?=
 =?utf-8?B?UHIwTzEyU1g5bUpneExHVXBaLzlTVW1OR2R2eW9ES0YrSjg5SkpNdkZpbmZK?=
 =?utf-8?B?U1hoTE54VjFkc0lpNTA1d1AwLzJxVnYzZUFaZ1N4RkpaZk1lRmM0WkJTc0FU?=
 =?utf-8?B?STVvN3RweWhEQUxWSDdDTkMxa2FreFRrRnVmT1V2aWs1MHBqcGZvUnltMTY4?=
 =?utf-8?B?Wkl2Q0JLa3k2VnpRTldhVyt3MDdiYU1nc0cvb1BFMUZyeXBmTURZdlljaWgr?=
 =?utf-8?B?UlY3V1hJTnF0S3ZHQ0VDRElxOWs3a2VKY0IxQkhSQTg5OVAvZkxFc0lLUEdY?=
 =?utf-8?B?RHNZZTVrL0xQUCtDVzRhTzgwaXVCTjdZcCt2VmxBN1pNL0ZNYkNCemdMeFB0?=
 =?utf-8?B?ZGNIb0FUeUwrNE9WUmJvdVpuRnoyNUkwMXNvNHJsaE5BVFdUL3kvOW9FYzYr?=
 =?utf-8?B?a2QwSitremtJWTJ0N1VZVEh4bDhhSmdTQkMxZ01rdE4vdlNOdWR0Mmt0WGxr?=
 =?utf-8?B?YmJEYzJMTkpxbjZqdHUvc0UzTUFSaUJPT3NWbW5wQzJWVnJEZldmdUJkbXRE?=
 =?utf-8?B?WTJGMFMzVmZZQm1zTFB0Mll4eTNOZkpPejIvS1A2VEtQZGowVTZGeXhNN0c5?=
 =?utf-8?B?OFUzeEZaNTJlRVZITk9SR3hXQXJtZUpuUWRXejJka3JGNCttS1hqSGN2aGdB?=
 =?utf-8?B?c0c0Slh5Uk9YQkt5aktCdVRwOFRaQThEdVMyb2RlbGZCQkNDblJDeEwvcHJi?=
 =?utf-8?B?RWZSQU1MaEV4MVNRVkhtZWQ5L2FDNmVQUVdrOEpRNVpwMGcySDgwWCsvQ2ha?=
 =?utf-8?B?Mnk2dVF6eDJ3YkY0aDgvOVR5S296dHpMMHVXa0V3WUNIUUZxN1VpeDVHM1dT?=
 =?utf-8?B?LzR4VksxbFZvbGk3OElqRmNtaWZ0SmZEbDAvL21ibG5Zd2xmMktkWEtOZ3Z2?=
 =?utf-8?B?UFNZZmVUOUJ6Sjg4TUhuY3hzN3ZvOWpHSi9yaG1zZURiekZlUHE4bUIwcGc4?=
 =?utf-8?B?YnJxMnRid25lYkZWeHZDMm5zeEg0NFowU25kN2tHZXhKNGJzUnZmaS9ML3Bk?=
 =?utf-8?B?aDNRR25Ua2g3YVdQdzREbER1bmNvMzRlamdSZmJPdWFuYjk5aHN6R3FVZ1VT?=
 =?utf-8?B?YXp1eUpiY1BkOG1TaEQ1bzlvMWp4Um5rYmdZTHZod3JOVWxVQUJOVFdaVVdB?=
 =?utf-8?B?WklYSnVPbkI5R2ZWQ1h2eWJlSmM3dGRaazBKRXRnQng1U3pjUGY3aEkvbXF3?=
 =?utf-8?B?TTFHU2xoYmZqN3kySEFJNWZGVm95OGFrTStoYzF5dnNlV0JwUERXV0o2NXRU?=
 =?utf-8?B?VTRZcVZMbE5NeEN1NWpZamVrdkwzci9VazdZMFpnNXpuRzB3RjFOMGhjTjNs?=
 =?utf-8?B?RWJxeUsrNGY3WVZrVXpVTmFqeVFMMzRKNVptREpxMTZsaTJEaUVlUEpFUnNL?=
 =?utf-8?B?Z0xsMEFoM0NDNlNROFNDd0VQS3NXdlJmaVlRV0dSQVN4QU5VVGw3V3hLMzIv?=
 =?utf-8?B?OUg5YTl0S2g0QXlLQjU3M3FldHgyS0FwSmlnY2w0QmQzMkZzWW11Y1Z2Y2tu?=
 =?utf-8?B?d0w3WTZ2NnF6VWcxRjcrUWxaNG1BTVRBZjVOMnhqcUpZRTMxVnBiVTVTQ0pz?=
 =?utf-8?Q?jqFaZTDAFANFVAU3bY2vFVesa?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e411f5b1-6dfe-41d9-b913-08de05b506ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 15:20:19.6230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JvQPB4gdT4MVsRg6kUyT3f8vLdGbEA3j65DaSIN9Y/3Zqf5GUSjvf0TD5lbQUBGizB9JDVofzwHILdS5ogvmQFU/yE75JCkUSTtnTf4tb24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB13952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_082044_002751_B2675CC7 
X-CRM114-Status: GOOD (  29.40  )
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

> -----Original Message-----
> From: Philipp Zabel <p.zabel@pengutronix.de>
> Sent: 07 October 2025 15:13
> Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG mode
> 
> Hi Biju,
> 
> On Di, 2025-10-07 at 11:04 +0000, Biju Das wrote:
> > Hi Philipp,
> >
> > > -----Original Message-----
> > > From: Philipp Zabel <p.zabel@pengutronix.de>
> > > Sent: 07 October 2025 10:44
> > > Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL
> > > register for OTG mode
> > >
> > > Hi Biju,
> > >
> > > On Di, 2025-10-07 at 04:02 +0000, Biju Das wrote:
> > > > Hi Philipp,
> > > >
> > > > Thanks for the feedback.
> > > >
> > > > > -----Original Message-----
> > > > > From: Philipp Zabel <p.zabel@pengutronix.de>
> > > > > Sent: 06 October 2025 17:32
> > > > > Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL
> > > > > register for OTG mode
> > > > >
> > > > > On Mi, 2025-10-01 at 23:26 +0200, Tommaso Merciai wrote:
> > > > > > Add logic to set the VBENCTL register when the USB controller
> > > > > > operates in OTG mode. This is required to ensure proper USB
> > > > > > transceiver behavior when the device is configured as OTG.
> > > > > >
> > > > > > Signed-off-by: Tommaso Merciai
> > > > > > <tommaso.merciai.xr@bp.renesas.com>
> > > > >
> > > > > I had reservations about this driver before, because of the
> > > > > opaque register initialization sequence, and I was told that no, this is a reset driver
> alright [1].
> > > >
> > > > The latest hardware manual document about VBENCTRL register which sets source for VBUS
> selection.
> > > > s
> > >
> > > I still can't look at this, right? The USB2PHY control register space appears to be documented in
> > > the "RZ/V2H Group User's Manual: Hardware (Additional document)" (under NDA).
> >
> > It is documented here[1], Page 2177, USB2PHY Control Register
> > (USB2m_PHY_VBENCTL)
> >
> > [1]
> > https://www.renesas.com/en/document/mah/rzg3e-group-users-manual-hardw
> > are?r=25574493
> 
> For me, that link points to a document without the USB2m_PHY_* register definitions. Page 2177 is
> unrelated (documenting PCI_EP_HLOG2_Fn, somewhere in the PCIe interface chapter).

My Bad. I rechecked the link and confirm what you said is correct.
I am using NDA document.

> 
> > > > > Can you please try to find a proper abstraction for this,
> > > > > because drivers/reset is not the correct place for USB OTG mode handling.
> > > >
> > > > Sorry for the confusion. This driver is not handling USB OTG mode.
> > > > It just configures VBENCTRL(one time setting) that selects the
> > > > source for VBUS_SEL. Actual USB OTG mode handling is done USB PHY
> > > > driver which sets host/device mode based on
> > > ID detection.
> > >
> > > So this is a mux for the VBUS_SEL signal?
> >
> > Yes, Please find the bit definition.
> >
> > 0 VBUS_SEL 0h RW Select VBUSEN control
> > 0b: Output PP controlled by PORTSC1 register of the Host Controller as VBUSEN.
> > 1b: Output VBOUT controlled by VBCTRL register of the Host Controller as VBUSEN.
> >
> > We have USB PHY control driver(This driver)-> USB PHY driver->| USB HOST(Generic ehci/ohci)
> >                                                        	  | USB
> > function (renesas usbhs)
> >
> > We plan to set 1b for this IP in this driver for OTG channel during probe.
> > After that using VBOUT register the PHY driver can switch between Host and device.
> 
> Thank you for the explanation.
> 
> > > Why don't the USB host controller drivers parse their "dr_mode"
> > > property themselves and control USB2PHY VBENCTRL via the mux API, for example?
> >
> > Currently for OTG channel, based ID detection IRQ, the USB PHY driver
> > switches between host and device. We use method2 below for the host operation.
> >
> > For Host operation:
> > Method1: USB2m_PHY_VBENCTL.VBUS_SEL=0
> > or
> > method2: USB2m_PHY_VBENCTL.VBUS_SEL=1 and USB_HOST_VBCTRL.VBOUT = 1
> >
> > For device operation:
> > USB2m_PHY_VBENCTL.VBUS_SEL=1 and USB_HOST_VBCTRL.VBOUT = 0
> >
> > Are you suggesting to use method1(mux) for host operation?
> 
> No, not necessarily. I was thinking of letting the PHY driver, before registering the VBOUT
> controlled VBUS regulator in its probe function, call into the mux API to set VBENCTL.VBUS_SEL=1 and
> thus make the VBOUT bit functional.

OK.

> 
> > Currently this is one time configuration. If we plan to use mux, then
> > it becomes dynamic.
> >
> > How we can we make use of PHY driver using mux API to select the mux
> > register(VBUS_SEL) in USB PHY control Driver?
> 
> For example, this driver could spawn an auxiliary mux device with a driver in drivers/mux that
> registers a mux for VBENCTL.VBUS_SEL on the &usb20phyrst node.
> 
> The phy could then get a "mux-states = <&usb20phyrst 1>;" property in its device tree node and call
> the equivalent of:
> 
>   mux_state = devm_mux_state_get_optional(dev, NULL);
>   mux_state_select(mux_state);
> 
> to switch to VBOUT controlled VBUSEN.

Will check this and update you.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
