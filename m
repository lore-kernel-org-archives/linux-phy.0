Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98541C52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 09:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMIIS1sHT/j1eQmBE/iSS1IseQo6Zoh8yaKcfmISiOs=; b=TACMX1vsIHXrBy
	BERHuckfWtuHyF4fKiONyzMuy64qcrgpjHgQ5zFOvGz6wpR9MYrqiN7JpiPb/Ycvs8CBT19z2Becn
	Ke3eEXctSc8GRAVQjIIqdqxGgxXawi4y9vCqLS2iETKawoOmyRJKWBlHKMhkKO6ERDfYF8Z/rUNU3
	ikOMIRanq628IHpp4lOA+4o0ZcfJJgAoESzVsqq6tZIsniENHL2A67lr/rM7ab4kapAKAZ/a0s4qn
	xvFRYMmhXkTidiGE9Qo48weB6gR1Dm9NLGM+DgAev9s/JGvyk05SNPdQGDdtdUYqWZ6qBHDA+UCFf
	t3y69N2MQmlEZc8AKUSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQJ8-0000000G2Fu-1GxZ;
	Fri, 23 Aug 2024 09:10:10 +0000
Received: from mail-japaneastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQAM-0000000G09l-0cqo;
	Fri, 23 Aug 2024 09:01:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=br2eVDUTnDq38XQfogRlr715bwROX0phG2ir2S4zZ8uSkLyrHyVG7NgVUAV+RXKCsIM7HyLYpRyKgrSpbMPdC6gC9MDqLT196zhToDxL7gvX/gsriWE2rvEvBIC3IGcBZUaQWaxyzKIUWZykI+UsqwlFeJVdVgbtjOkeVIqfCKMAYgLU3YhtXFvyJXiM+D+ZxNHe40jM7z0vtV3nRztewHRJ0sga2FxcjlEhwy9GDoN7lUrDAiZKSjAGHvNJdIVq2Mzu+0aHCC+ATMQo1Y7rN+qc22DaC+CzaWr5oOWMtBP8a7XEOKjMc0VrQvjKpFvCARDTXcKSji0POSMAx2AXKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ihcUZ6ygve1J3SiMQjg0q+nKqY9fXdDauAqp3k6nhLQ=;
 b=fc1kquRHGuE6bjRD4Hm5gzg/LhLvqlCxLlhWDPxWzkttBnxrHIU2cTvVia12v6dLhfWKdoyqsWClC+v9uIUu2x4NoET/gqmTvSzW3nPhSAXNeK20n82YKlg/PAhijv16ZbuPN0XfieNxBb8j50xxyf2zgVVcP9BfE72orwriYUwjLsAAUWNasLqIzpV/QPv4ILernhXNLFs3nBoXaaEFqweGmVElOR4H+cC/QIdTjyniUEeHe9HcDm2djD2W3uCYowN1wHZGV8TPpDC0etGilrKDF2m1fJxQfTplUHpOk4UdXeaGAvveZv30GuvUySMrKAbQBpfSnU/2ejWYSxjNAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihcUZ6ygve1J3SiMQjg0q+nKqY9fXdDauAqp3k6nhLQ=;
 b=h1uv7uJo1yBO/NWdBTGO6u3KaOpFc1U1qEpfReLlh8S2L7UYTy4v6rFPTM6HWaF+rzMj26Sv86uDJriJJF2+zvJjQefzrVJMU7iXB3d3AxwrL82kkaHgmV8IOWrsw/kC4L5Sf10Os4+ZVWwDfRJ89/NtcF7YVD38ZM7sU3Fw6Jc=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by TYAPR01MB5820.jpnprd01.prod.outlook.com (2603:1096:404:8053::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Fri, 23 Aug
 2024 09:01:01 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 09:01:01 +0000
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "geert+renesas@glider.be"
	<geert+renesas@glider.be>, "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
	<sboyd@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	"ulf.hansson@linaro.org" <ulf.hansson@linaro.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
	<linux-clk@vger.kernel.org>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: RE: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
 initialize the bus
Thread-Topic: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
 initialize the bus
Thread-Index: AQHa9Kf4PPM3ttIrIU+GFs1JG0RdeLI0cirAgAAZfgCAAABPEA==
Date: Fri, 23 Aug 2024 09:01:00 +0000
Message-ID: <TY3PR01MB11346FBA77256F2156D374ECF86882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-11-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB113468A6CA4ADBCA577670AD486882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <8faa6b6d-a013-4a71-a8b7-af02ac92d94b@tuxon.dev>
In-Reply-To: <8faa6b6d-a013-4a71-a8b7-af02ac92d94b@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|TYAPR01MB5820:EE_
x-ms-office365-filtering-correlation-id: dace2aee-6271-4026-3523-08dcc3521c51
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|38070700018|921020;
x-microsoft-antispam-message-info: =?utf-8?B?ZE82SDFKZ04wZVZaS3Z5WWIyVnp4SDVMN3plRW5BOXJNQ0k5ZU43WlExc3N0?=
 =?utf-8?B?NlpFSEF3SXRidmJYWGUzY1lzcXFjNjlqWWNxMUJ4bHg2NEorQWFETTB1Q0R5?=
 =?utf-8?B?Ni94SWF1YjJFdVo2VjFpOGtzclF2QWtpNHlhakVnUzlIVitoMG4zRG5kSlRj?=
 =?utf-8?B?Q0d5UTl2UFZxOUtnYk5ZbUhwdE00citnRFVRNWkvRWYveGZwbmg2eDhoMlNt?=
 =?utf-8?B?SVpMRTRITktiSElhZmxza0daTmdva0JVUmkxRllTbjRDM3RsTGdyRG9USksy?=
 =?utf-8?B?cFdIUlN2bHVGVkJFN2FzL2VUa3RkVC9haDlkQXRyYlZmdEJvTjl1a2o5WC9j?=
 =?utf-8?B?MlhtMmZRSHFnbWZYM0xGNS9UeDJONi9FZkM4VUdrM0ppOHlhS3RWWG4wcHhI?=
 =?utf-8?B?aE5zTThWK0E4MjlYNFdsdFByR3dhcURScWs0RHNLdXFacnhsNVhLMjBxNmVL?=
 =?utf-8?B?T3JvYVozMmdqNS9xMWsvRmVBdHE5QUxsYWN0aHdWNnEvajMxNnFVZ2l6QW40?=
 =?utf-8?B?NXNscCt0TGlkTFZ4dFN6UXRrU2dxNmNXdnFkQWRMRlh5LzZSa3ZiL2o4Sytl?=
 =?utf-8?B?K0NmVDF2V2Y3cllaR3NtTXU2Tm9HQ2wxb1Vkc0laUkRuRnNBbThoOTc2b2xC?=
 =?utf-8?B?RjNmV3Ava0E3ZXJvQkV5M3k2Y0tpdnRVcDVUb216bmMwZzdyaEFpNkppUFVj?=
 =?utf-8?B?VnJUcmo3OEh5MlZQeDB5b25hRE9oZFN0WVIvb2FwRlRNVWVIZTF1OUZhT25M?=
 =?utf-8?B?NXhMV2krK284eUtPYkxMUE8rM25GS3BEbml2VDFPRHRWYmZla09YaU5nckll?=
 =?utf-8?B?aWdSMG14RHRlMkc0aElCS1d2d1NUNURNKzVsUjBwZkNRdGpsbzdtRUttRDNQ?=
 =?utf-8?B?bG5SWTlPRkNtdjNKVGxDQUNqY2JFZmNOYXhBYXFlRVUzS3lhMUxteXI4SURX?=
 =?utf-8?B?R1RZaUFaM2lFUjc5eUlIcUMwR3kyZWN3MDRLNk1TWktTaGlpc2NPMktZejNo?=
 =?utf-8?B?UGVORnNabG8yK0ZKL0JTaVBRc0JXV0RGSTlFYWdybjRPb2hDVGNXRUVQdXA5?=
 =?utf-8?B?S3pGbzU2aXpreUV0YlFUbXBFcVErNFJBVUtEQ2dueWxhL0IwSFB0STgwK2N4?=
 =?utf-8?B?bCtHbFRqS0NJcnRhZ1ZoOFRwV01USXM1Y0o1MXZHS2lqaWorVU5ocFNIaVFQ?=
 =?utf-8?B?VjRkNWY4SVVXT1ROVXJOVFNLMGFIQlA2Y2g2aGdPaE1KekhLZXN3T05QSm1O?=
 =?utf-8?B?MU5yL0IwSEhYSEZaRnBNbG04aGthVFlOTTljWWQ0b3ZKSnE3Q2c5cHZRUU1K?=
 =?utf-8?B?YktZZTBuRzFWNEw1TVZwbHZLSTY2aVRqcGNUUXdNOE1NNVJGOGhpVklVL0Rz?=
 =?utf-8?B?M2hJSDNHYTVNZllBak0yN0s2RmNrUlNMekgvZUVVYzViT0UzZUpVN2tobnBp?=
 =?utf-8?B?bU9TckY2SzRuc3ZGOGUxSEhLUmdtWlhKQTN6Ym1yWGErZ3MxVjltTEZDVXIr?=
 =?utf-8?B?ZlNkMGFEb29PdlRaN0l3eFp6RXFkVGJLZytJWERvSmJMMFBVeWxKWnROaVlY?=
 =?utf-8?B?Y3JIeURoNVg1UUc1MjA5ZmpZTUdiRy9PMk5YRTNrMFJoZ0hkTjFPZnJaam9i?=
 =?utf-8?B?SXVscGJkU0dGUmMvZFdkQzFKY3ZsSzlVcVFCY1YxY2RNUlkrWklPcTFPa3RG?=
 =?utf-8?B?ZzREZXM2eXFTMXlaSWZEbDlzMllZMVl6eDNiYUJNa20rYVdoVGVQM3M2ZG9F?=
 =?utf-8?B?TGR4bjVYcDU5MCtjUVdsMWZkN29hS00xak5HelF2YXQ5UmhCbTJnZzZ6U28v?=
 =?utf-8?B?WE9GbmIya1lIa1FJcGVPeG9JUWl5Nmw3RWh3ZWFDeUhvY1Y2WFozYitWV2pL?=
 =?utf-8?B?S1VEZ2g1STIvdUxBS2pKazNubmJlUTU2OFVPNld3S28yb3EvWUYvZW03QUJI?=
 =?utf-8?Q?77570HusCVA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXZNbitWdXk3YmF1WGVJaGVWbGxqWG8rM1U0NWdsRC82c3MrbnB2V1JGTEVo?=
 =?utf-8?B?R3N1WkVtWnAvSHJsNXVNbmpnVWd4MEJ1VEJ4cmwzSmZVSFdFSTk4dE9PQ2kx?=
 =?utf-8?B?QlF0dGVDY2NTazdTeWFsc01mZDF0Z2VCaFhhZ1Z1Zm1IMVc2amNjL0kvaEI3?=
 =?utf-8?B?Nk93aXZxdGdVdldhQ0V2dk5NN3VQa3dqT1FLbDY0NFdTcVdsYWp6NWtBRmFq?=
 =?utf-8?B?TDg0SGgyN2oyV3BBRkJsbzZDV1lGbCtQR0lnKzh4SnVDK1A2d3JLd2lPSldI?=
 =?utf-8?B?Z1hQUWdvYmtwbnRzY2dyVzhLZEpxYURUUjRpKy9wTFZmU3B3a1JkZSsycmp4?=
 =?utf-8?B?ZlVwUzRKWitVTnBodnFTMEJMWHZmUUZGZmMzY2thd3FDcStlaFJ4STZZaS9U?=
 =?utf-8?B?WHNnNFZUaE56QTZFNWtLSThNRm1URmw3UlAvWUdyODgxaUVYY01yQWxRcm5x?=
 =?utf-8?B?TnVRZHpsK1NFdkxucHJ2Q2xBWEQ1VDNYekdGdzhZUHRQeTkyUEcwd0tzNnNL?=
 =?utf-8?B?M3loUStKcFV5UHF0YmprWHNHTC8vQm9aRVovSlZBUEhtcWZGb056SjB5VG5o?=
 =?utf-8?B?VTQ3bGJIQU5hemVrTGhVSVlnOFZDYnR0cENUME1YRUxsbVMyOU5HeTlaREhG?=
 =?utf-8?B?RHJWbnhkSFZYaHJRSGRBcktXZXRid1RuSEtVcnU3WjhHbGZGQmNuZzNGcWly?=
 =?utf-8?B?UFNpNjJTVFNGMVZCT1U5TytTR1g2NHRZTHk0Z2dTRC9iSVVlcHJVZ1lyYWds?=
 =?utf-8?B?RlZBQ05YT3I2dDEyQlYwbnVJZDUrZVJScjEyTDk4WHJsZEdna005bXpXYmtV?=
 =?utf-8?B?WmIvYm4yc3RuTHhEV0IzZnVTMUV1UU5KWnFuM0FkcGpOcUVwTXduQTdSaTV4?=
 =?utf-8?B?Rk8zTEpSMEJ2aVRKZkVZQllkTkVGaldwTUlLWE9XNHRKRllsSi95S3hBSzU5?=
 =?utf-8?B?OFY1UU9iTWtIc0dVTnJmbUZEd1VOeTFIN2VOZG5ON1VQdnByNXF4Vmhkb0VK?=
 =?utf-8?B?blZpSHkvS1NMMjlKZkYwdy8yT2V1S3pCSjIyNTlZZnZrQUZTdnUrVXJnU1pv?=
 =?utf-8?B?QW9ValVZL0licmk2dCtFa1dXcHZIRmMzV3gwWHlWRTAyOExOSVR4cWVyQy8z?=
 =?utf-8?B?U0p4RWxwQVR3Z0ZKUGV1M1h6Yjc0dy9VTS9wY04zMTNveUYyb0dOK3JNa1g1?=
 =?utf-8?B?RVJxN3VBaVMyWGZNZi9DbXQ4NnB0UkpxU00wVDVJczlZUHNObDhPY0sxNmtO?=
 =?utf-8?B?UUd6QS8rcXNYWno3cmFZM0dBei8yc2d1UXVZVDg4MzU2VTZjNldnTmRxR0Ny?=
 =?utf-8?B?bXJ5NSs5WTBWR2FSbmp1RWJZR3k4WHliY3ByS0V5YWdRdTNHNWdMYVA3RTB1?=
 =?utf-8?B?M2FNTUE2L2xYQUEwcGxBSXkyeWZqbFFOdHdZQkJxbWRWSlV0Y24zMmxxSU9r?=
 =?utf-8?B?WUhOWGJtaW5WMjBvR05xUk91YlRCVXQ5Q1V3Q013dHd4TXgyNUhoWGcvSjlC?=
 =?utf-8?B?THh2dDBOWloxOWdBMnF2bWFlN0FxVnhZaE9YZC92N1oydDlSQzh0MVNRd1Jl?=
 =?utf-8?B?cmxxUmM0Wk1BVUo0STMxb1dNUXp6dmtFcU5remVaM3R4Z2lJeTJ4d2llMTFl?=
 =?utf-8?B?eDZFTlBibUowaGNBdmF0TWNXdmt3eE04M0FTQWZIeUMzTVhETmZnOG1DbTJQ?=
 =?utf-8?B?Q09yUDZCT0JFdWxUbVBHMlZjTjRJcHRyL292S0hvcU9NbGpUK0k0QnBxTDVr?=
 =?utf-8?B?RjZ1Nk1GaHlldjdzNFY0SWliQTFzWnRwSkhCdVlYUHFJWEJiQ2luQnhIbUVw?=
 =?utf-8?B?QXhsOXVzMldFMVR0TXltNFlFT0NkVVI4ZHZqMlFkWVQrS1Y5ZzVhMWpZc2tU?=
 =?utf-8?B?cUVPUmZFckhjc2ZtSW9FZHhhc2lMWnc1ZEtGeU9ML2hmZ2N1TndXZUZ5OHJ3?=
 =?utf-8?B?OFM1ZTRINTROYkxaY0tIaVdTZ3FRQmJxS1NvRDFtQ2tCMUl4MGRzSWNWY3Nv?=
 =?utf-8?B?eTlXTjUyL2VtQjQ4dXVEUSttSkM0eVRvYTVObm1yY2tmNHNFSlJMellHL21s?=
 =?utf-8?B?a0NoblRGSHVvZEhmNGRIVDYzV1VvL0Zad2UzTERXbjZORkVNemVxTEhwdWRx?=
 =?utf-8?B?bFREUVFNTFQ0WFVVMEg0eWdNU2FVL1lCRk1Qam9CQ1plQTExTml1RjlDOXNa?=
 =?utf-8?B?VFE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dace2aee-6271-4026-3523-08dcc3521c51
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2024 09:01:00.9234
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iQTXKuyXCk67j7D9coI6VLIGARGovslaKMIQUMCvKJqhSK1MFV3atqO0To/6obQDD3LbxAdSka/ZM9zeKMTnqEJXOWUPLihrWUowvaO529A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_020106_337326_D363A7A7 
X-CRM114-Status: GOOD (  28.92  )
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
> Sent: Friday, August 23, 2024 9:58 AM
-
> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Subject: Re: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to initialize the bus
> 
> Hi, Biju,
> 
> On 23.08.2024 10:35, Biju Das wrote:
> > Hi Claudiu,
> >
> >> -----Original Message-----
> >> From: Claudiu <claudiu.beznea@tuxon.dev>
> >> Sent: Thursday, August 22, 2024 4:28 PM
> >> Subject: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
> >> initialize the bus
> >>
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> The Renesas RZ/G3S need to initialize the USB BUS before transferring data due to hardware
> limitation.
> >> As the register that need to be touched for this is in the address
> >> space of the USB PHY, and the UBS PHY need to be initialized before
> >> any other USB drivers handling data transfer, add support to initialize the USB BUS.
> >>
> >> As the USB PHY is probed before any other USB drivers that enables
> >> clocks and de-assert the reset signals and the BUS initialization is
> >> done in the probe phase, we need to add code to de-assert reset signal and runtime resume the
> device (which enables its clocks) before accessing the registers.
> >>
> >> As the reset signals are not required by the USB PHY driver for the
> >> other USB PHY hardware variants, the reset signals and runtime PM was handled only in the function
> that initialize the USB BUS.
> >>
> >> The PHY initialization was done right after runtime PM enable to have
> >> all in place when the PHYs are registered.
> >
> > There is no user for this patch. The first user is RZ/G3S and you
> > should merge this patch with next one.
> 
> I think this is a matter of taste... This is how I usually format the patches (for scenarios like
> this) and got no request for squashing.

That is strange for trivial patches like this.

Cheers,
Biju



> >
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >> ---
> >>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 50
> >> ++++++++++++++++++++++--
> >>  1 file changed, 47 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> >> b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> >> index 7594f64eb737..cf4299cea579 100644
> >> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> >> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> >> @@ -19,12 +19,14 @@
> >>  #include <linux/platform_device.h>
> >>  #include <linux/pm_runtime.h>
> >>  #include <linux/regulator/consumer.h>
> >> +#include <linux/reset.h>
> >>  #include <linux/string.h>
> >>  #include <linux/usb/of.h>
> >>  #include <linux/workqueue.h>
> >>
> >>  /******* USB2.0 Host registers (original offset is +0x200) *******/
> >>  #define USB2_INT_ENABLE		0x000
> >> +#define USB2_AHB_BUS_CTR	0x008
> >>  #define USB2_USBCTR		0x00c
> >>  #define USB2_SPD_RSM_TIMSET	0x10c
> >>  #define USB2_OC_TIMSET		0x110
> >> @@ -40,6 +42,10 @@
> >>  #define USB2_INT_ENABLE_USBH_INTB_EN	BIT(2)	/* For EHCI */
> >>  #define USB2_INT_ENABLE_USBH_INTA_EN	BIT(1)	/* For OHCI */
> >>
> >> +/* AHB_BUS_CTR */
> >> +#define USB2_AHB_BUS_CTR_MBL_MASK	GENMASK(1, 0)
> >> +#define USB2_AHB_BUS_CTR_MBL_INCR4	2
> >> +
> >>  /* USBCTR */
> >>  #define USB2_USBCTR_DIRPD	BIT(2)
> >>  #define USB2_USBCTR_PLL_RST	BIT(1)
> >> @@ -111,6 +117,7 @@ struct rcar_gen3_chan {
> >>  	struct extcon_dev *extcon;
> >>  	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
> >>  	struct regulator *vbus;
> >> +	struct reset_control *rstc;
> >>  	struct work_struct work;
> >>  	struct mutex lock;	/* protects rphys[...].powered */
> >>  	enum usb_dr_mode dr_mode;
> >> @@ -125,6 +132,7 @@ struct rcar_gen3_chan {  struct rcar_gen3_phy_drv_data {
> >>  	const struct phy_ops *phy_usb2_ops;
> >>  	bool no_adp_ctrl;
> >> +	bool init_bus;
> >>  };
> >>
> >>  /*
> >> @@ -650,6 +658,35 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
> >>  	return candidate;
> >>  }
> >>
> >> +static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan
> >> +*channel) {
> >> +	struct device *dev = channel->dev;
> >> +	int ret;
> >> +	u32 val;
> >> +
> >> +	channel->rstc = devm_reset_control_array_get_shared(dev);
> >> +	if (IS_ERR(channel->rstc))
> >> +		return PTR_ERR(channel->rstc);
> >> +
> >> +	ret = pm_runtime_resume_and_get(dev);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	ret = reset_control_deassert(channel->rstc);
> >> +	if (ret)
> >> +		goto rpm_put;
> >> +
> >> +	val = readl(channel->base + USB2_AHB_BUS_CTR);
> >> +	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
> >> +	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
> >> +	writel(val, channel->base + USB2_AHB_BUS_CTR);
> >> +
> >> +rpm_put:
> >> +	pm_runtime_put(dev);
> >> +
> >> +	return ret;
> >> +}
> >> +
> >>  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)  {
> >>  	const struct rcar_gen3_phy_drv_data *phy_data; @@ -703,6 +740,15 @@
> >> static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> >>  		goto error;
> >>  	}
> >>
> >> +	platform_set_drvdata(pdev, channel);
> >> +	channel->dev = dev;
> >> +
> >> +	if (phy_data->init_bus) {
> >> +		ret = rcar_gen3_phy_usb2_init_bus(channel);
> >> +		if (ret)
> >> +			goto error;
> >> +	}
> >> +
> >>  	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
> >>  	if (phy_data->no_adp_ctrl)
> >>  		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN; @@ -733,9 +779,6
> >> @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> >>  		channel->vbus = NULL;
> >>  	}
> >>
> >> -	platform_set_drvdata(pdev, channel);
> >> -	channel->dev = dev;
> >> -
> >>  	provider = devm_of_phy_provider_register(dev, rcar_gen3_phy_usb2_xlate);
> >>  	if (IS_ERR(provider)) {
> >>  		dev_err(dev, "Failed to register PHY provider\n"); @@ -762,6
> >> +805,7 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
> >>  	if (channel->is_otg_channel)
> >>  		device_remove_file(&pdev->dev, &dev_attr_role);
> >>
> >> +	reset_control_assert(channel->rstc);
> >>  	pm_runtime_disable(&pdev->dev);
> >>  };
> >>
> >> --
> >> 2.39.2
> >
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
