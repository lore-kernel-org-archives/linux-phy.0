Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3633C44508
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 05:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGEFPHdC5l9ERAOKIdabdXMZXNsT9yDIclfdoIvvlw8=; b=RfJObah8esqB7r
	+wVNYKGu42D06ze9g1P+j/UaLUDpsln6Qu5qYcI///8ksIn3fREXlRIlYyKEUY8pjGwAcQo1LA1Yy
	WlcO9tbfiatABWRU8kfld2KS0Hoae/RcaRq39bK6MQl5SzSgZ/9Gw8ZpuMbKR1Qj958OF0gpbToQX
	rBq1WDV3T8l7gJijmd88/LbAROu1U098rzKZ1gDvNgtPvCcGhVvxdtyc30sy0myVcogMCWscsPXHF
	KiFEvzxdun9b4XXd420oHEBg7eqMjfj/W9S5gaZuTzn9AY2ldAm+BsXl05HvqbXQGZOD482ZKMWtk
	IVJj48437Dz9ggcKFrfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjsb5-0000000Dpun-0p0V;
	Wed, 15 Jul 2026 05:55:55 +0000
Received: from mail-japaneastazon11022100.outbound.protection.outlook.com ([52.101.126.100] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjsb2-0000000Dpu6-09D0;
	Wed, 15 Jul 2026 05:55:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N5CPJls6Kt6NXIL82Bx6NxTlK8s3zppyvKJpO9hSS10sMwFytJWV8z0hCfcm4wCzZC2wotUVy9stSI/ClsvhL3ojj6Y1AB0pAQSDq06ZnTxOt69YGNL/Ldza0hFv0xRca0T1IgY53JXjp+qyiUpfBJXNRzQrSo+wHIYAtqujBM3N2kyx1H+E1jeoj0roL+tnJ/QQSzE4uD22r2PPp0/WIJO1mh/H/CRqrC2ImaV2Xz6Cg4psUphLWMVricFOCSHqc5yHu1IBiupJMqGA4f13COAKgDOCCCEb9XKt0H0UYYKRhXBqOaCM7W+DhE6mqNFB4KQxF7ClB4s564KCL8O+cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROjfA8jsXOCE2lf6W5pB4p8ezgVVzwVhVC3TwjBm9uQ=;
 b=ihGci0BEdigjS0bqSUESuGO5z7wyO4GfAYUSC9Wiri4TTH+dSqccvZW+qBnHAmVck0E0WQzns+sJ8oLfYEQv5cegi2mp4hgpMIG2vnWIi/BwMl3f4c+7H3z3/RNsdxmlzx5CbYWeGsTH6E5TQVpADQ1uXprHRmoejbkisbrdIIRA8TcbHyyQeFaG9HHANtFiOzoKzQonC4dmVV9quycRcROMZZ6WIe5C/D6jiDOk+mfVBxohl6bDmYf4tW4GJA2wdyT7TTmsjuTwn/iDliv1E6xCpWsxBAn32J4B0tllTfVUgUohbLAGNWbo5qvFQCqU9OiN0NobYIu2n5+CzCDFbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROjfA8jsXOCE2lf6W5pB4p8ezgVVzwVhVC3TwjBm9uQ=;
 b=BXrPMGuqwYa+Z9FI6lHwsPYbrqAMdwa+II7qZAaVNLxVuffZlp73aApjMArU1s3kR0fzE/G0H9MoLioxy6j8kFca2PFX9jFRgQGLXBVtyhxdMPVZ5B6WIrmjtFnaHdlp54oxp8E7cv6irwFlumzgVuUJpQKR9D3r9Abxb4yZ592pV3P5K161qoXujEH+9mwn5mf7illTvrumE3lFsZqJRFKSo1fUhOg76FrnCPvxIHdb6GGb4hby+C/pfSBYxnnggsAJwUU1XCIEeerwaP96U6RFUwZRrDgoFkJlUVxjgTJH0Y4KyL8h1q5Nv4YVsFNkPqFllgrU2P6XoTwnj1Q3TQ==
Received: from TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com (2603:1096:408::791)
 by OSNPR06MB8520.apcprd06.prod.outlook.com (2603:1096:604:490::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.11; Wed, 15 Jul
 2026 05:55:32 +0000
Received: from TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com
 ([fe80::43a0:9857:dd1e:76d2]) by TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com
 ([fe80::43a0:9857:dd1e:76d2%4]) with mapi id 15.21.0181.012; Wed, 15 Jul 2026
 05:55:32 +0000
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>, Vinod Koul
	<vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 2/3] phy: add AST2700 usb3.2 phy driver
Thread-Topic: [PATCH v2 2/3] phy: add AST2700 usb3.2 phy driver
Thread-Index: AQHchpNOnM449AUerUiXvoW6kWH3sbZlhJQAgAA9O2A=
Date: Wed, 15 Jul 2026 05:55:32 +0000
Message-ID: <TY2PPF5CB9A1BE6AE5B658D558EBDF24450F2F82@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
References: <20260116-upstream_usb3phy-v2-0-0b0c9f3eb6f4@aspeedtech.com>
	 <20260116-upstream_usb3phy-v2-2-0b0c9f3eb6f4@aspeedtech.com>
 <ddb133ca1a3be605ee776b2276c1907c9ad32491.camel@codeconstruct.com.au>
In-Reply-To: <ddb133ca1a3be605ee776b2276c1907c9ad32491.camel@codeconstruct.com.au>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PPF5CB9A1BE6:EE_|OSNPR06MB8520:EE_
x-ms-office365-filtering-correlation-id: dfa940f6-8176-47af-c35d-08dee235ae70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|376014|7416014|366016|6133799003|56012099006|4143699003|3023799007|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: A2H3tIymh7H5oEqF4KyejIoFZkNQ9BGcKgd1Fsp+A5CNkp2H0hz9wU1RTO49yBdGR6x7W4wRIqAPnrAvHJzQoaBotHAO3yQhaO6vM1PpikA4VAa11GA571eCEgVlpdt/lL0B55fqA+k9H14k4KbkssjLwXKHyNRRg4PHylVMyXcCZ7kDC+FImPc77TKP4VtffMUBPTrSFecQi4H4gNTwBSgxz/wlsgcgieI0YqAkAYxNjTsksUYfIboMF43Omaa+OtVlErP7eQKNbymTGsbeQ1H3ZEe9ar209r7pPqlcjigFteJJib+HdjYksxgz6vu4jMzJouWwUxPMvMMnPvpzsdsg14R9gHEdv1ihRyj7g0z2mraUWZ7auV9PgBPG4YYKHlwfaXlfILX1e+y+f5LHgPp/xGrl7Q9R37rXT5KqFu7P2AZNCq0nD7JqKtnraScle/vW3kM0tLZEeyAkNANgopatvzKBBEottZVEeKUNz4KEeEWXvjrqAEYgWk/gubIRoq9byN63JyabNqUPUM13NutBPMDbsMKfx9tfrKc0cZyXAmHJEsSzkJBw8GvkUpwfZCP6/Ml6syuWppREi1SWgtUsHzK7lB3ap5dMssnoxaJ6wlhHWdXc2di2WWHAz00CscYV//+TJBcVNYkz7uWCWKUSD+yZfUPQR0u6knnQvnz0QybjOO2nhAo389avbbvcY5ULZ2TALmrCWolMeiNnWW9c769hbjhTaf8tvET0SAg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(376014)(7416014)(366016)(6133799003)(56012099006)(4143699003)(3023799007)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3hzTzNUb1hkNWtuNjFBVytldG1ZVFFoZnlTNVJBbS9FNlp4TGRLQi9jNm5o?=
 =?utf-8?B?eEd0eWtsM1cxdDd0WnovUXJudzZnRlg0cHZMeHlsMUpXK3ZwZ2ZyMzhMRUgv?=
 =?utf-8?B?SE83TUxzVzBxeHVwRkI0UWgrMVNwRElJVGR6bmZMZjFieHpmY0tSNFRjWEVX?=
 =?utf-8?B?MWw2dWRRSkNvQmMzUS94Uk41VmZqUW5qcVRYaHYzdUlSSDZ4SWQxbFR1N1V5?=
 =?utf-8?B?a2JYb2k1WHNwZFgwQ0Z0ZjVZUzhEeEFadHl3a0xJNUdPRnA0b0J0QWd5eVQ0?=
 =?utf-8?B?bUVYcTh3alErMDkrWkpPNmc0cE4yZ2xkT1B2NXdXUmhWRkVQdUR6Vk9qQ1Ew?=
 =?utf-8?B?bXBsMzFOeDV6M2dnTmp0K1NQWWtpUmRyRHgrTEw2cFdrcG9CaXZ2emxSTjdN?=
 =?utf-8?B?Y210Wk50blJXTHc4N2VXdHNKejhpc3Y0L1FaelhWRUJxNWZpVmpKcE4vSzhX?=
 =?utf-8?B?OWFwVm4rSGlYN1VmWFgwZ3k4TXVwNHUxVUpKL082dDlya3NDU0J5TVFEdTlL?=
 =?utf-8?B?Nks0ZGp2eDVZaThkTERuQTRvZXlVWDVnQnpiY3NNeU1lR0ZyMldSUFVPSU1Y?=
 =?utf-8?B?ZTVEcDhpYTAzL0hSQ1dHUnB1RWI1QjM3cWs3c0ZFc3l1aDlrQ0NpR2NCeE9O?=
 =?utf-8?B?bWVRREZZcE55djUxUk1STTdqRXZ4R2N3MzZFd1Znc2kyTEdFNnp3SkN6UE0z?=
 =?utf-8?B?eHVvTnNJL2JPMlk2VnVGZkxkQlZ2cXdJWGFDWUNDZW1CM2hObW5qQk5INVcw?=
 =?utf-8?B?d2JwRXpBblVPaTZtL1luVk1PbW1SNTAySnV0dE02R2tYS24rc1dYdVpCVXZj?=
 =?utf-8?B?YlR4ZStnRG9teWlPUVhtSXV6WFlwSnRNNlAxMXJKUEsrbFkrM2NoTFpNVU1G?=
 =?utf-8?B?TDJNcjRCeFIvbkVvSU1vSEJuc3Qyd0ZjdytQNmxlV3hkc1I2OWR1elhieGtn?=
 =?utf-8?B?dk9EUnh2N3RtM2FhRDJRVUlmbitXSjh4UlR5SjVvL1Y4UWFYSTBWWXA0c01p?=
 =?utf-8?B?UDJoNXpXeVZmMUVXMU9ZUFZLRHNleStNZ2JyVTArWVJwTTFJbmlubXhyTE9T?=
 =?utf-8?B?K3VMM1dRbHVKU3B5bGhWcy80NExEdDllMFQyV2JUQ21hMythcTdvL1pnNTF2?=
 =?utf-8?B?WUlWVEY3VVREbVR0RU14alNVUk9NYnV2TXBNTmFqdlNDOXVhV1FZSkVzbXRW?=
 =?utf-8?B?em53U1VXdm0veGI4QjRSa0VIbjU3RVZaQVkwVkQ4ejFSNTJKZkMxYTEvOWJ1?=
 =?utf-8?B?ZFFKa3IvSFVaS0orV1NyQXZXeXpnWExzS24waW1qc1JBTnVzZVZmSk1Lam5u?=
 =?utf-8?B?SmJiZVRtT3FFYVd1QmlXU2dGaStVaUhVd3kvSXhQR0lRN0t4b1hhWWQzMjli?=
 =?utf-8?B?eEZCaGwwR1FGMG9SSlVQUUlndXhQWFdjTjVaeURnMGUzUlBLMGxmRHVPQzRt?=
 =?utf-8?B?TkF0NzQrYk1sTTZHRWliaGFIQXRnZ2Q4NnhvWXlyNEdzN0ZrQ1FuWHd0bmVW?=
 =?utf-8?B?RG1NbjR0R0ZIejZZN2o2bzY4VjZldEZxNE9KQzVkNmJ2Sm5PL2I2R3RocC9w?=
 =?utf-8?B?WWg3MDdVRGl2THJXN0Z6WGlxUnFLdkd5RnlYNEJVbmFqSUw3Y2IzYmp3VFJ4?=
 =?utf-8?B?a2srTHFxOEJVSUJ1b1FueWhNWVMra1Y2VjZRNGtRaElhYXBUZS80YjhLc3pT?=
 =?utf-8?B?Q24wMzNHdmVqbWtzaWZEUWtnNnNUZEZGWmhqKzJrY2cwNUpyWXlUczQySDc3?=
 =?utf-8?B?dHFSaTl4Q2Fpcm9JMG5meERIRTA5VHNZYysyV3BBdldUSWp1d3FBN3RxTzBj?=
 =?utf-8?B?ZEc4NFBDTFpSTmdSTkdUVTRTeFNSbzAyaU5OVTBiQ3RVTklNQ2FpR1UxbkxN?=
 =?utf-8?B?ZkNuZCtKb1B6TUh5NVdHbUlVVGI3bnEyM2R5MzE3bmxtZ0ptY3RIcjNQVVBs?=
 =?utf-8?B?bGUxSk9VTVM4SnR3YmVPM3dIajQrUEVvcGhmaS9yaC9YckVoTmhyMnJVK0U1?=
 =?utf-8?B?NVEyTWJjVjh6akEyM0xaT0c0dnhjWVBPLzhzS1o5MTJORllvbWNia2c4elFZ?=
 =?utf-8?B?aXB6U0VxbXpmYWlub1U1TDBSdFFFeTBtUkVtUTRNQkhTWW9sSFZHU0JVd3RT?=
 =?utf-8?B?cEdDS3JpZWk2NjBwQmE5UDNDdUNPRVNzRFJpb1VVUmlLYzBIN0psZ3VDUitj?=
 =?utf-8?B?V2RVRjY5SXNoZWRGbWtNWlEvUGF3RjRTYnlhcTErZ3FwNHpDRFBmcEhkaXpu?=
 =?utf-8?B?Yk9ueUcwZTBPS2lubk1scnJxK0dBT01lSGhPcXNDbzg2WFJLRG9YZE82M3hz?=
 =?utf-8?B?NXQ2b0NQWVJEVGFsY1RqYnJrRm0rMmw0eGJ2dXJDNDQvRyt6TjdrUT09?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa940f6-8176-47af-c35d-08dee235ae70
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 05:55:32.0765
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DbszcwLbcvV3yc28sszfP2nQenpPayl38uWw+ir8azTo4AhvA4ylVpf1EPv36i43WwFoZB3U76xqt9TV1JrIvCwTm2Udb1+j25fVzzWpXBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSNPR06MB8520
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_225552_512799_A8D75C9F 
X-CRM114-Status: GOOD (  30.47  )
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

> Subject: Re: [PATCH v2 2/3] phy: add AST2700 usb3.2 phy driver
> 
> Hi Ryan,
> 
> On Fri, 2026-01-16 at 10:53 +0800, Ryan Chen wrote:
> 
> 
> ...
> 
> > diff --git a/drivers/phy/aspeed/phy-aspeed-usb3.c
> > b/drivers/phy/aspeed/phy-aspeed-usb3.c
> > new file mode 100644
> > index 000000000000..872d2163fcf5
> > --- /dev/null
> > +++ b/drivers/phy/aspeed/phy-aspeed-usb3.c
> > @@ -0,0 +1,236 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2026 Aspeed Technology Inc.
> > + */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reset.h>
> > +
> > +#define PHY3S00		0x00
> > +#define PHY3S00_INIT_DONE		BIT(15)
> > +#define PHY3S00_SRAM_BYPASS		BIT(7)
> > +#define PHY3S00_SRAM_EXT_LOAD	BIT(6)
> >
> 
> ...
> 
> > +
> > +static int aspeed_usb3_phy_init(struct phy *phy) {
> > +	struct aspeed_usb3_phy *aspeed_phy = phy_get_drvdata(phy);
> > +	u32 val;
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(aspeed_phy->clk);
> > +	if (ret) {
> > +		dev_err(aspeed_phy->dev, "Failed to enable clock %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret = reset_control_deassert(aspeed_phy->rst);
> > +	if (ret) {
> > +		clk_disable_unprepare(aspeed_phy->clk);
> > +		return ret;
> 
> Nit: Given we have to do this below if the reset_control_deassert() succeeds,
> perhaps add a label below and use goto here?

Will update

	ret = reset_control_deassert(aspeed_phy->rst);
	if (ret)
		goto err_disable_clk;
	...
	if (ret) {
		dev_err(aspeed_phy->dev, "SRAM init timeout\n");
		goto err_assert_reset;
	}
	...
	return 0;

err_assert_reset:
	reset_control_assert(aspeed_phy->rst);
err_disable_clk:
	clk_disable_unprepare(aspeed_phy->clk);
	return ret;


> 
> > +	}
> > +
> > +	/* Wait for USB3 PHY internal SRAM initialization done */
> > +	ret = readl_poll_timeout(aspeed_phy->regs + PHY3S00, val,
> > +				 val & PHY3S00_INIT_DONE,
> > +				 USEC_PER_MSEC, 10 * USEC_PER_MSEC);
> > +	if (ret) {
> > +		dev_err(aspeed_phy->dev, "SRAM init timeout\n");
> > +		goto err_assert_reset;
> > +	}
> > +
> > +	val = readl(aspeed_phy->regs + PHY3S00);
> > +	val |= PHY3S00_SRAM_BYPASS;
> > +	writel(val, aspeed_phy->regs + PHY3S00);
> 
> According to the datasheet PHY3S00[15] (PHY3S00_INIT_DONE above)
> indicates that the PHY internal SRAM initialisation is complete. The datasheet
> reports the SRAM is used for configuration of calibration among other things.
> PHY3S00[6] instructs the PHY that software has completed loading the
> configuration data into SRAM, however PHY3S00_SRAM_BYPASS (PHY3S00[7])
> tells the PHY to load configuration from "hard wired" values.
> 
> Is it necessary to wait for SRAM initialisation to complete if we're bypassing it?
> Or are there other side-effects involved in the setting of PHY3S00[15]?

Yes, it is necessary to wait SRAM initial, the driver polls PHY3S00[15].
It reports that the boot loader in the PCS has finished initialising the 
SRAM (loading the contents into the PCS), and that initialisation has 
to complete before sram_bypass (PHY3S00[7]) may be asserted. 


> 
> > +
> > +	/* Set protocol1_ext signals as default PHY3 settings based on SNPS
> documents.
> > +	 * Including PCFGI[54]: protocol1_ext_rx_los_lfps_en for better
> compatibility
> > +	 */
> > +	writel(PHY3P00_DEFAULT, aspeed_phy->regs + PHY3P00);
> > +	writel(PHY3P04_DEFAULT, aspeed_phy->regs + PHY3P04);
> > +	writel(PHY3P08_DEFAULT, aspeed_phy->regs + PHY3P08);
> > +	writel(PHY3P0C_DEFAULT, aspeed_phy->regs + PHY3P0C);
> > +
> > +	return 0;
> > +
> > +err_assert_reset:
> > +	reset_control_assert(aspeed_phy->rst);
> > +	clk_disable_unprepare(aspeed_phy->clk);
> > +	return ret;
> > +}
> >
> 
> ...
> 
> >
> > +static struct platform_driver aspeed_usb3_phy_driver = {
> > +	.probe		= aspeed_usb3_phy_probe,
> > +	.driver		= {
> > +		.name	= KBUILD_MODNAME,
> > +		.of_match_table	= aspeed_usb3_phy_match_table,
> > +	},
> > +};
> > +module_platform_driver(aspeed_usb3_phy_driver);
> > +
> > +MODULE_LICENSE("GPL");
> > +MODULE_DESCRIPTION("ASPEED USB3.0 PHY Driver");
> 
> MODULE_AUTHOR()?
Will update
MODULE_AUTHOR("Ryan Chen <ryan_chen@aspeedtech.com>");
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
