Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0190ACA101F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 10:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwJLh/FXOUyZw+0ZEZjV+3V88BKal0jGeOj1sd5M2TQ=; b=uoD/ZzTr8f3B1I
	1EywbBVpBv1bs50eq3tqQ/Hd1NTHXJv4WJ6x82V+Z8bnmV9i3x+ZZYujUb+T0n23hprNkA5R1EFZf
	K21NYaNrXtUyWkPoi1vKN/GSpWPxZi03AxQ70QsYy6hMG0kb7uHb21r1HktINWMIMYRO4/gFCeGsj
	4u+cEflEqmwRUNTAQu7zi+04xz1LQsnbR2iupqqqtTNYwgsPUEmSbWAdpBy4lykBH5HVgDibH/GxZ
	ldVGxv6MnGgGMqNXjSrUjClPlku8JOEHBKPkDSQoZ6V+bHBLIucIWtO7pglokbBXDImYGXgfmGiu8
	qrqtsihvaWvq/dBHyojg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwIJ5-0000000DaWf-2T1R;
	Wed, 10 Sep 2025 10:44:07 +0000
Received: from mail-tycjpn01on20608.outbound.protection.outlook.com ([2a01:111:f403:2019::608] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwIJ0-0000000DaTz-39l2
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 10:44:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZcdQ3BnBzzcDHhIvtlGSbl+yXxl91lBGt9nzauVtx7FiOHUkyVkDsXVKx+v0K3OlembxR0ARmmiWtCDf+2qJgAVcOhDuuKymA8ZoWUMpL39U/O9Wqa/CduHaQJDFkmvDk3toGOEA8MNwg2PeOohi3jKUVa42ExO0JnUWL+o520YB8ZodKWd+xvAG5cgRPxwGVBmnjVVMo+jTghpW5JX9Icws4BaK+L8fOa1c26oKcY4i+i33zn/O9mgeCy70GCwDmh/LuTcv4mjRC7wq4U0sjL+qONWOoiyJakeBC8/ohrSL0svKdut3xhaqztkEjS8k+RNXWZFa9jWyhTv7OBpspA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PVWHYwu7SOP426skdnWEGMHVFaz9NnvCUtVjxJp5fNc=;
 b=MdBE7SdK3BE2yGrH+rXx5RIaqUstbWvzuharOGi1+HmEqkvuSWhO20BlbIb6Cxu4FDIOnqgK6RCFRfFoRBcFsBKHGpbCQsiYMdV541PtRnh6B4sEdqEF43/TdbSwAwt8MB0u8sDhOEzFD910wAiJSAuv2X2IJivtG9TkOzf0KEP2jRPVVFG3q6uEZJfI747VqCSwIszdc+Hrg6fkwwLeZplvWulVHNYK/HZX5UD5xXwT0sfvcX0CDqUTqsO50rVOyP8JlVJnjO/+2aDv4Gxdagr3E0lMIC3lOu+cGHIMQ7oRI0ivOP0vk0CQ2hBj4+eHRebVIs6ILjWA90IUqJvuJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PVWHYwu7SOP426skdnWEGMHVFaz9NnvCUtVjxJp5fNc=;
 b=EJxH83IS6RhHeky2ivag/W6VOfyHhACrJ8X1ppbFGU7KW4xOT8arAkN+V5MIJJmGoFySKrVX7dzGXHujYzdgtSjIUKmvxhRswxHalHKXXwjUuUnX0+hR2JM1ZNtTinZ7lkf8XBVyVUuALdjF8cVX3eGvuT1axXr/HSoXIamxwnI=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYRPR01MB16144.jpnprd01.prod.outlook.com (2603:1096:405:2e3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 10:43:54 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%3]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 10:43:54 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, biju.das.au
	<biju.das.au@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
	magnus.damm <magnus.damm@gmail.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v2 04/11] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY
 driver
Thread-Topic: [PATCH v2 04/11] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY
 driver
Thread-Index: AQHcIbS3LerZ2Tiq6kuhENfC1p0JD7SMJCaAgAAXtjA=
Date: Wed, 10 Sep 2025 10:43:54 +0000
Message-ID: <TY3PR01MB11346B0B825BC26B1AF690EF7860EA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20250909180803.140939-1-biju.das.jz@bp.renesas.com>
	 <20250909180803.140939-5-biju.das.jz@bp.renesas.com>
 <94ce63da0edee178a49781b2c6ac9a863f13333f.camel@pengutronix.de>
In-Reply-To: <94ce63da0edee178a49781b2c6ac9a863f13333f.camel@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYRPR01MB16144:EE_
x-ms-office365-filtering-correlation-id: 4d876657-7586-4f14-565a-08ddf056f039
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?S0IzbkpzVFZtdFlJVTM1ZnlJc3c0ckl0bVFRYzhhTlVyd3J6SlZNanptajM4?=
 =?utf-8?B?M1MwekJRZE5DbFM5cEovS0FRQm9udUJjRS9yZWIwVkZWeHR3VlFWSzNSbnpM?=
 =?utf-8?B?dGF2NjQ3VElpOFFRYTVwOUF1cWJOei9iVTlqUHAxYWRqUjh6cTZMcm1RUGgr?=
 =?utf-8?B?V3Ric2V0UTVlQys1bDZ5OCtvajFkOXBwYXdBNDJVRUNzYUdZTjN3Znd6c1Fs?=
 =?utf-8?B?d1hNQS9aNjZobHFJQ1NycVlqdUdzY08vTE5uT2VldDd1Ync2bG9WVHQ2YXp5?=
 =?utf-8?B?YmJyeGd1ZGtRR3VtSXd0d1djNlRiZUllWVR1U3Z4cnY2MnhCbDdKR3dDNm5J?=
 =?utf-8?B?WWlBZjQxazFmUnJpODVOZ2tmeEpNNENlSjlFR05IWmRmc2F4WG5vUEVQOEdI?=
 =?utf-8?B?RitqOUQwMWNnWjBzN1pxVnVsYzJLNHZKNmFQNTRmeTdCbmgwQkFybDUwR05n?=
 =?utf-8?B?TjRxSzdEejFpaStva2hZV3Bzcm40N29iR1Z0ZkFJMkhvemYwTEJGK3hkTWs5?=
 =?utf-8?B?U1R1TEVFeVozR3VNMmt1ejF3VWZWVGJpTFNPUTRWRFJ3VXkvNUlWWTF1YVRj?=
 =?utf-8?B?TFN4Zm5lb3pHTFAxd21WSmx2VTh4UU1RczVCR0lIZVpoWWpZazhpQ0ljdjRz?=
 =?utf-8?B?UmY3VWZSakZSdWdQRWhwdzhhSHh2U0ExQnhUWHlCMHBiYmVBYzF1M2NwRXEx?=
 =?utf-8?B?emZkejB1QlJRYi9YY0JRYnkvOUt5bEUwd2tDeXZFeTZZYUFNcGVXOVAyajUv?=
 =?utf-8?B?WXJYajlwMDhFdGp3ZUJrb1JBM3Nud1E5Y2RuYVBGQlJRTzg5MFFZN2NaQlpX?=
 =?utf-8?B?Z0ZQVXowdGdKNjVqNHVjV204N0dmOFcxbGxkRnlTMmZCWGdZK0g5UHRPdXM2?=
 =?utf-8?B?OU8rZ2l0MkplbHZtTmJFYkIzR1FWUnVzUDdsajQzVTdwTzBORmduQ1FpUldk?=
 =?utf-8?B?TUZYYzFUOXN0WnlWNTVLcGdScmxIUDBucXF5NENYRG9raHJjdWtRMUhrRXVX?=
 =?utf-8?B?azl0THlDTVUybkYxSlMxc0UxMEg2VDBLL1hxWXlKQ2tuMUo2enVDSWphZE1Q?=
 =?utf-8?B?MEJGNjJIQTEyM2ZLOU1SWjN4U2NsSXBsci9hMFdaWFA5M0JUMXp5UURCRUcx?=
 =?utf-8?B?Zitra0lSVE9sQ0UyRzVLQ3BObGR2ck03WUJKNmdWR3dUZE53TlVBWDlGYUVU?=
 =?utf-8?B?em9hSmhVTHZGZEhrY3MyTzJZN3IwYU9HakVkZWN3NXdzTTN5ZTZ4OUs2OHNa?=
 =?utf-8?B?bmMwTFUwY0p2Q250bkx4UUprMTdiVGozRkN4SkpnUWlLWm95YVVEd3NQV2Jq?=
 =?utf-8?B?ZWluOXhkN0ZCVTh2c253elFMTnpZZVdqYjJWZUVFR1lzRi9mb3ZvYUZkQVgw?=
 =?utf-8?B?ZHZFM2MxNEpObzFESWNZV2t2d3dMM2pnR0IralVQSmszNlZrSTUzVUtkWmUx?=
 =?utf-8?B?MVZvc2UrVk55VmpJQWhRYVR5eXVGZVB1R2VVU0xMMjh1Y3d3dXhIdG1rRmg5?=
 =?utf-8?B?YVZGWEVSVFk0QnZVa05UK2R4U1AwdzRnc3NsNFJFcVFvMDYwZUEyN0NmTTZq?=
 =?utf-8?B?UkZPbytudnRJU0ZhV05QY3FOY0l5TVVYK0d0VTlud213SFJpVFNSZ1gxUW1j?=
 =?utf-8?B?QUxQYXBTbkRXRTdYWE83QnphVUZYSDV1RUpGREFTaDBKVU5aVkRvK2YraEhZ?=
 =?utf-8?B?c0Y2aURoc1lXRzlXQllRNGtGRnpuYmxKaXhRNHltU2hER3VWTERLellrdWF1?=
 =?utf-8?B?aGJXSjdHNXJSeURRQjY0N0hVM3hDVDVWaERsTW5IVldNMURSUXJTc2JSMnJw?=
 =?utf-8?B?b0NsTmEyZkZmRmY4TjJyZFRsdW52Q0k1N3lhT25vVm1uUDZKZTArUjgvd0Rv?=
 =?utf-8?B?dzRZSXgyNFRhV0Y2NEZndEIzRFZMMHpPS0psaGd1c1g4aVJMY3drTmxHcDJv?=
 =?utf-8?B?QlJOUE1ad2RtcE1yWmNGdjZVRWlleDh6S25PR083S0hoaGhTbFFyeHhDa2Rr?=
 =?utf-8?B?K2pjZXV1Um9nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFdKd3JudkNlTDR3ZytqaGV5d0kwaG1zNEx1TVBnSTJsWU5vNzJJQ0JEM2hH?=
 =?utf-8?B?a2prZE0xRkN4K1BYZUVmYStjYWxzUWtaRCtXRnFiaURucUttRlBibEc3QUtz?=
 =?utf-8?B?R1NkRnB3ckkvM21HWDREQy9aYTA3bVpTLzdmbXlIVDQwUC80d0ZMQXNzb3Y1?=
 =?utf-8?B?K0pwZDZVelh2SGIxeVRTMXh1RmNCUUptWm52Y3lkUzZab2V4dVN0OGhubGVL?=
 =?utf-8?B?bVE1NUJESmlZd1g1bTdoOVpCVk9QdmVrUlFvSUZaNTZYVXNMM20zTGN3Y29K?=
 =?utf-8?B?M1JoYXdsVWMzMGJmUFNmV2pGdE04WG5wZzJHWTVyd2RoaFF0V1dtYk51cTR1?=
 =?utf-8?B?UUg2dndtMmdmNjMwWGxPRm9NaW5vaWZnQU9qdGtpRWx2anpzS0tNWGtyYncx?=
 =?utf-8?B?WkdOZHdjU1JTRzNjbjNpelFkRVBLMWpXQjNTc3Z4ZzRscFBwcHBneXVOTU1C?=
 =?utf-8?B?dnlFQU03U01sU293RHpDRHFIZ0NlcUVKUnI3eUFkendZWXdHbGovQUV3ZzRj?=
 =?utf-8?B?MnVUZjh3YUhlZDlUR25QNmt0eEtpZHZQMEVUb3dRV2k0anMydE5yWFl0cWdF?=
 =?utf-8?B?bk5hYlVrZ0I4RkFxdXRkSkdVVW9MQThUYXBvN3ZDWnpWdXk3V1ZvczdzZjdD?=
 =?utf-8?B?Q2tCSEJmTDJaMlIvbXJlZm9UcDRYWjNDd3ZnMURHWVZtZWNMSytQT1d3WjBv?=
 =?utf-8?B?RklrVG4xdTA0VnlFNVY1aStiWXREQVlYQ0Z2SUJ0d3dESS8rREVPTWt1K05r?=
 =?utf-8?B?aFpGcmhIU1ptVGNISjBYOFl4UU9jeGY5dzN4SkpmQ25nYUVFQWxtY0FqQm5Z?=
 =?utf-8?B?NDlua25xSTcrU2lBSTlaaS9mVDFLcngyVnRwYTd5NVBWaUlza2ZyS3BQcnVT?=
 =?utf-8?B?aVMxdHUveXJsMnpZM0pwZGpkNDBuRFFBYStrTmtNQnEvdXBSN2JzdEZIL1hl?=
 =?utf-8?B?MlRPb1pTR0tWVmpYNVFuMnRaa3V3d0g0SmtsVjdjYVFwOTdDOW9zQkI3OUJm?=
 =?utf-8?B?YWl4aTlDRHFuc3RGUFp6TFJQRlhoeXdGOEhteHBCVmRWTzlvdVBneW5nVVhy?=
 =?utf-8?B?TnpnWURmWUtjVFEvczVHb0xvanRCNGxJTHlBUTFLalNaNG9OVzB2UHJaUEtl?=
 =?utf-8?B?WWtER25oMEUzUFhZSUZ2VEFxZ0dVc0tnYm9kRld5YXY3T1l1cU9xQkxLODg4?=
 =?utf-8?B?TVBqMEdLNmRnc1ZHUXRRT21Ib2xqcEtrckM0a3hEVzlxQlVWTGNSQXl0Nnht?=
 =?utf-8?B?bHphbmU4NGpreFYyd2tpWXFMU2xuTnROdWZzM0VEY3ZWL2R2R1E0R1hIMDdh?=
 =?utf-8?B?WVpJYXdta1lnZlNhTDhpL1hrTjNiVmZ6dzR5bUVHNUYrSUliZXc5TWRhZkdz?=
 =?utf-8?B?NkpzcXY3YnE5VFdIRkRyNmhZUVNtcGRPYW93ZjJVOEFoSWpudGR5aUZaYWY5?=
 =?utf-8?B?dk9pMytZRXpNNnM1dmhuUzVFaml1dlF0ZXRCR1RYMWQ5WUM1cStCMUdreXVU?=
 =?utf-8?B?YTdoRXVZdVVsalBVUkNBd1JqVmxJcmZtRW01Z1FDWGxaSm5pWWZlTUcyQ25n?=
 =?utf-8?B?dHNMdG8wZVp6WnJyUDFCaHlrOXZTKzRid08xUlNZbnFHUjJOTndJU25BNUVo?=
 =?utf-8?B?UUlVaDZNNDRHR1Rxa3RwY2puYmdyUWZJRmc3SDIyNVgrUkN6a1pMbHpkTEhN?=
 =?utf-8?B?TXkrMXVJbjlhTjFSTGgzUWNjbjVVcVFLSHpSMVVBNVRjcEJEZ0dTQmx1T3Fj?=
 =?utf-8?B?Zkt3QTQxd2l2Zmt0SU5wdFcvZ296NHpRS1E3TTE2ZUNkbXBQRzJ3T2FQRGZX?=
 =?utf-8?B?RFdJRmxSZ1hCUFJINXUzVjRJM21WaVVoK1I1bnBsODhHQUdMM1NENHQ5QW9z?=
 =?utf-8?B?Mzl6Q2dZOENLVnNrQ1VGL1F4ay9PSUFmelJXRm4yQVhrN3N1SHlaS2ZReVFt?=
 =?utf-8?B?M1dPVlJVeU9rU0hJQ2UzVlVCUFNSV1R0OC9aSVJOT1lFS25mMjEzc0k2SjF3?=
 =?utf-8?B?dUxIQ3lNSWhTcmEzSjFGTGdxTUJ5aGtPTWNOT0RBWWhDbmlhZ0dqSEl3Vkk3?=
 =?utf-8?B?RWJxZlFKRTVHYTVUQk9sNzZTZ1JEb3J5VjlVNWw5dGNhMGZ4Y2tvNVNNbnNr?=
 =?utf-8?B?cGI1empXcHNLOEtzZTJQeGI2UFFvcExjL3pQTDUxV25BUlhIL3ZyazE4bDlm?=
 =?utf-8?B?bkE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d876657-7586-4f14-565a-08ddf056f039
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2025 10:43:54.4525
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W7OE9YogdJa3uHAZVTsgd3Jb0OM9Cc5/i2SQmVhoRiSFLcfKSOSrjhXjnubnfhHQ6iC3gLCVcWATk4+KEWJSl6rN7K4OZ1dknavFTxXgabk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRPR01MB16144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_034403_140377_4063ACDD 
X-CRM114-Status: GOOD (  25.37  )
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

Hi Philipp Zabel,

Thanks for the feedback.

> -----Original Message-----
> From: Philipp Zabel <p.zabel@pengutronix.de>
> Sent: 10 September 2025 10:18
> Subject: Re: [PATCH v2 04/11] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
> 
> On Di, 2025-09-09 at 19:07 +0100, Biju wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > Add Renesas RZ/G3E USB3.0 PHY driver. This module is connected between
> > USB3 Host and PHY module. The main functions of this module are:
> >  1) Reset control
> >  2) Control of PHY input pins
> >  3) Monitoring of PHY output pins
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > ---
> > v1->v2:
> >  * Replaced magic numbers with macros.
> > ---
> >  drivers/phy/renesas/Kconfig          |   7 +
> >  drivers/phy/renesas/Makefile         |   1 +
> >  drivers/phy/renesas/phy-rzg3e-usb3.c | 271
> > +++++++++++++++++++++++++++
> >  3 files changed, 279 insertions(+)
> >  create mode 100644 drivers/phy/renesas/phy-rzg3e-usb3.c
> >
> [...]
> > diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c
> > b/drivers/phy/renesas/phy-rzg3e-usb3.c
> > new file mode 100644
> > index 000000000000..6463519b2c22
> > --- /dev/null
> > +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
> > @@ -0,0 +1,271 @@
> [...]
> > +static int rzg3e_phy_usb3_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct phy_provider *provider;
> > +	struct rz_usb3 *r;
> > +	struct phy *phy;
> > +	int ret;
> > +
> > +	r = devm_kzalloc(dev, sizeof(*r), GFP_KERNEL);
> > +	if (!r)
> > +		return -ENOMEM;
> > +
> > +	r->base = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(r->base))
> > +		return PTR_ERR(r->base);
> > +
> > +	r->rstc = devm_reset_control_get_shared(dev, NULL);
> > +	if (IS_ERR(r->rstc))
> > +		return dev_err_probe(dev, PTR_ERR(r->rstc), "failed to get
> > +reset\n");
> > +
> > +	ret = reset_control_deassert(r->rstc);
> > +	if (ret)
> > +		return ret;
> 
> It looks like you should be able to use
> devm_reset_control_get_shared_deasserted() and let devres handle reset control assertion on error and
> driver removal.
> 
> As is, the driver is missing a reset_control_assert() in the probe error paths.

Agreed. Will address this in next version.

Cheers,
Biju
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
