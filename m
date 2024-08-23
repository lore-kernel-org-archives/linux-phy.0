Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E24EC52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00JDYJodQBKFZgspyU+dU28qbCHc5/+JTd8eiTdkgzQ=; b=ZxC/puOgZNFH+P
	qsD+SapBNRFtUCZydOKxUvj84iW3CjTkHXiPsdCpenVDcOu3wL3R2Jtm4NqYjlhiS8xiOtJscQ6uE
	vGlgOGmEstcW+N6Wercx/+7+KvHA3FZem8Ea+esiZFJ94tLYp+rH7/oiRKIjj3jfhcKgBHNqesr+K
	QXvuq/idhOfvT0BUt0BKTbYvxeWd5Rg+B/pXAoA0G+wRLKTjqyJXyGnazVhClLfW6tjWLx78fmGtI
	iyKpG2Z9qbkLU8RsirbcWrUk6M6wamoslfPK+t3xde5X8LExOD3WBeSWw6EBAZ+QM6TKM58s0YzkO
	0deC4gfUDGpCrAdCO13Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPer-0000000FsCo-0cBp;
	Fri, 23 Aug 2024 08:28:33 +0000
Received: from mail-japanwestazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c406::1] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPUc-0000000Fpn6-1iMJ;
	Fri, 23 Aug 2024 08:18:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/B3s2Nb9DpUJOsMJ9yyGyS2K+QjXGRaEbCJDVOzQ1p7AeFeWAYwFlRZyZ/H5wa3pd3H48cHclKZtW5MtMHcrLRqVcJnJ7zVx4tFhhsj/EBGmIWfN+qOEEFRXXv3iF20lRQ+mRRMc1tYMqvbdzlbx9cOSjsE9gzl/Mkf9lfoELJdw2fWtVI1F5lWziFG8hJGObjDFndb3ZNCXfkp1MUzFVfs6Au/W3u9piZouPs1Ln6Y+PYUJSELNSrJEoahHY+y0sdL1NHkj4soCYQpsp7nwEb9LakXRAtTWwEpl6hAD+ndBiY0FUlgxS9hktrzhPngHOy1lBHMuTcc8mI/xbxIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejoL3u7/ok0ZMFopSzQK/2INqPb+8d6879nrgzVKUAM=;
 b=aNaM1sieGfdi9hrdWNjFcz3y7Npz+iTuQ6gQWnBDsgyhbvlld5RpnfBwj8Dolue//rX9WPYwUmo//wlojuZ6aRBzJqtWyaExIDUKCporIn4s3oLmV6JzjtazUBcQ192cmxgYrQQ96ukJHWRLag9phhsYhR4BLEW2UkqrhisqG0Ubt6RFGc8/rML20ukIOYfs5gyoNpcybHR2oFQaSBdm2+GknvJ3ONh8i8pVILtyeH6I5sOEbeTL+v/xs8CGcW4FrvAZshQvyiqOzAKzDGoW1W+gV6ppZ+JVe2P+V/KU0Q1eLd7MwoRNvT+Snw+7bk6aNmXmgJ1t7PrVjL7uABsu9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ejoL3u7/ok0ZMFopSzQK/2INqPb+8d6879nrgzVKUAM=;
 b=wnB6EM4WEdDXiZJ6Xo81RHviF9y3AAwxvSOxqep8khd96bxboIuRrgb8UcH3WMM59pwl4BLrS6nW0r4aHPOnCCnG4utr2EAFB6WH8Y71yKNgwSlrkA3E27IY8UnVNRi3yTa1E/d/trTvI4XnAO16wX5yF5wRuRliA0c1w455LHg=
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com (2603:1096:400:3d0::7)
 by OS7PR01MB11871.jpnprd01.prod.outlook.com (2603:1096:604:23d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.17; Fri, 23 Aug
 2024 08:17:51 +0000
Received: from TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1]) by TY3PR01MB11346.jpnprd01.prod.outlook.com
 ([fe80::86ef:ca98:234d:60e1%6]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 08:17:51 +0000
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
Subject: RE: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
Thread-Topic: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
Thread-Index: AQHa9KfzjUIr6NsDo02njnbQaEM3ZLI0cJ3QgAAMbACAAAJOoA==
Date: Fri, 23 Aug 2024 08:17:51 +0000
Message-ID: <TY3PR01MB113467345E2DD50E165FFCC0086882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-8-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346900BCCEB55580C2F912086882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5f14dc3a-edff-45f3-a162-3f6fd567777f@tuxon.dev>
In-Reply-To: <5f14dc3a-edff-45f3-a162-3f6fd567777f@tuxon.dev>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11346:EE_|OS7PR01MB11871:EE_
x-ms-office365-filtering-correlation-id: 96b35982-460d-4537-6fc4-08dcc34c14ed
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|921020|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aUUzRStHQ1BReUVVQlVNV0ZkYzVoRGdRVG90a2dYMVd3bUg3VjBmNnI4Si9O?=
 =?utf-8?B?bG5DNzQ2ZmE1c1BzelpGeCtIaDJpeTlWQ1ZRMFQ5QkMyWEdvMVhpamhWallo?=
 =?utf-8?B?cGt2aURIbFQ0T20wQ05EYU9iZUI4MEhCeFZzZ1BBa0VhQ2w4ZmpFaHdiSVZO?=
 =?utf-8?B?RGU4QkxtSFpwYWNKaXRzSU5keFpkRGFPM00wcUI4MWhTeC9HRTJBUTgzd2Vw?=
 =?utf-8?B?dmQ5Q3FIellGWXJZdEg2dHBxbDRxUjArUE1QdnhKUW9xcGZ2UEtuV0JKQnBq?=
 =?utf-8?B?azFNaEtIdHZYYlNlc0xQUTdjQll3VTFnM21WUzdnalNwM3JuMlRvTEdWNDdm?=
 =?utf-8?B?Z2hiL2RmNVRwWnB3Z3RBL0ZVVzNpcklJMEpuQnNZaWZET2RCYTNUSWFDd2ZN?=
 =?utf-8?B?YW9lSmZ2emRCdVRDeWswZnFmdHJ1dHhDRHV0cW1VN1VUZ3RFTjVhc0I0NWx2?=
 =?utf-8?B?b1N6NEtLSEZEUHRocldWTkd2WWNjZ2hzRkxuZ3JpSCswR2h6QWE0WWVhdVV3?=
 =?utf-8?B?cUVRMkZ3bnEwS2h1VitIVkxCcmVoTWk1UlY3WW41R01oVU5NcTVPK254M08r?=
 =?utf-8?B?a3NsRGZpVXRqM2F3aitYZ2M5Y1ZyTGFNV2o4bjhzUFU1YnY0UllldGRRbDF2?=
 =?utf-8?B?MnYvRnU1cmhkZjRCN3FubzJvSVAvWFV1cUZ6WW5Oazc3N2txbFpxd20xamQx?=
 =?utf-8?B?cVBPb2hFdFZPT2VRT3Q2OW1ZWHdjVmg4RHNKU3NZUTV5YkZwcVhEYllVT0h0?=
 =?utf-8?B?VU55ZDE3cit4NWxkaFlTaUphLzJSTkt4VVNHVWxLQ3dTWks1ZFBMV3h2WWFs?=
 =?utf-8?B?YmFaaW1aRW4rd3I3UWgwMjMvdTBVNHJtQkhWd3NFOU85dndjbG9CN0cyN1hk?=
 =?utf-8?B?Kzc4ZTd6SDg3SWM0NmJTR2hxWk9sdFZWQUtwREJucDF2QTZjQ1gzRHd5Vy9S?=
 =?utf-8?B?MTZmQytuUzdSVnFiVUtMQVV5cllwMXNQNWpYaStCbGNoNm03dnliS1UwT3lJ?=
 =?utf-8?B?VHR6Q09Bbm1DS1dWVlp6Z0J6a1hpcGtJZ3pzbE1pTG5Jb1pOS0dOQzRtMWlE?=
 =?utf-8?B?YXBjdHN6UnI2VnIvaTU0dkpGYUltbmd6d3BOU2RhU2RnUGNqbndzSC9iaHNX?=
 =?utf-8?B?QVRHWDZ5TmxFOXNEeS8vZmlFc0JGMTF2ZG9TMVpwcHNoVTVLL1dMQkVDbzVl?=
 =?utf-8?B?Q0lBZmcrSXBmK1FsL1BrZnBTaXNSbUROWEgvNmxlenhBS1I4VFFkSXZnckZq?=
 =?utf-8?B?dll5dUlJd1lNWnFwTmlFcEpsQ1dYMzRMTWJZdlk2SHpXMGJiditlMkhhUU5m?=
 =?utf-8?B?ZVlGMXJKTXpzNUdCZ3paWFJTYmJ2NVAzRlFXNCtONDFMQzhXbVJCdUo0RmdW?=
 =?utf-8?B?c29GVUdDdzNiTzk3QnJBNHU3dkYybDIvMFhPampXY0M0UDBVbkp3NmtwZlhB?=
 =?utf-8?B?ZFBJcUt0cmJoNFNSdVpDUExDZVNwTFNnM0grTWVrM0Y3UjhSY1RwSVBsUGpW?=
 =?utf-8?B?TTJZeUtKUmNVVjNFdmtrcHRjTWhxUFZjL3dOWmNyZHBSdHkyVnpmOEpHY3Vm?=
 =?utf-8?B?OXpuZVA0UFNETDgraXBDLzhQMnNMUldobnNCOEJ6ZHRHVzFCUXRqV3FGN2Ux?=
 =?utf-8?B?Y2FEL1lDNDZUL21NdmJZUEsvYnFwY2wzUjdZQWV4cllONjFlY3ZZQ0szK05B?=
 =?utf-8?B?YnNuYUd0OWFxTmRBRkV1V0tYMTJDMGo2MjA3YjF3aG4xWlYxSnVFcDgwb1M0?=
 =?utf-8?B?WDdyYnVFMitScG9XdDlzbkkycDl1ejBIenozWEliYzhpcDhKWTloN0JOVUtF?=
 =?utf-8?B?NllpMmx4SE9aQ3kxZU9yZzd4VG9LaEJVcFdveXU0QjNXRmRlVjFRc0hzOERp?=
 =?utf-8?B?YkpoOFkyRVBRVTc5VndWNmVvSGRpaytoUC9aWEIvM1JwQzN1blVKWVJYNkF3?=
 =?utf-8?Q?dOjaYpFoVsw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11346.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFdYREFWTTBBbnNjeTJ2dnpEbHRMOE1WSnlIaDVEOEdFZkViRzJUZGh5bkJq?=
 =?utf-8?B?V05XY3VMMUJKUk1CVVlLZjVXdm93VWk5eXVURFlHcDhTSWQycEk2a3VyVlN4?=
 =?utf-8?B?TlBSWkd6WjZONHI3NnE1bFV3L1AzY241SUNNUHJmWWVoL2tmZzduWkVWUXlL?=
 =?utf-8?B?dTB1S2Q4bWc3OTVPME5hcE0zeS9aZFBkZkg1Y0tHZVBNS1Nad3ZCWTA4Tlls?=
 =?utf-8?B?R1JMK29Jc1A1dGs1N3NFWUhKeWRTbHNCQ2hKSVBxWHBYUmhIdFRvRDU0bXIw?=
 =?utf-8?B?NDBpUTlDUXJpaldScGxubDZ6c3dkN1NqakR1RzNoZ2hZUW9sMmtWNEpPZzBm?=
 =?utf-8?B?dndpek13OUhzUTN4SkVlWmRmSTVId2FYNkR4TmhOalVLL3pBVEtUaGdORTF2?=
 =?utf-8?B?UTVnbEIzbG1qSXdVVk9zOTNYRUJMb2orSmVlUHM0RE90YkpTWU1VbFpPSUF0?=
 =?utf-8?B?R0FndUxBVmFLY3JNOVU1TVVZelFZRHFiMnhWd0JvRWw3YjBCM3l2cVAxRXRZ?=
 =?utf-8?B?K29hNE5aOWdnOWJ3TWRkT2FmemtPOTV0Y09IRU5ORVlzS2VBV2lVcEQ0SEwv?=
 =?utf-8?B?cFMxcWs5aUhYV2JmV09IaVhEcnVxdzdKOGxzajhIMTFISlhrbGNUcVdjQ0Na?=
 =?utf-8?B?TXdYRXg0Q2cyMnFOWmRTaW9kMVJ4M1lIMDlTTmNXcHc0aDdmWW1PVEJGQVZB?=
 =?utf-8?B?d0hscGhrRUN0OUJ2eHY1RktrUHI1MFdMS2dJYnNTcjVvWnBCdndaWHFTd3l5?=
 =?utf-8?B?eTNwNlFBZS9CSlllcDdqelpsUlhJQy9TR3dJZXRxUnBLTWZ0c295WlEyZmxS?=
 =?utf-8?B?ci8zUGI4alVEMndwR3c3ektJQWY2UGJvVEE3K1JBNkt2Z1M2V1hBbkR6MG1j?=
 =?utf-8?B?eTRydDhJTCtLZmJqWFBWNEx4OFprKzBOQmxWeDExYWYxK0xhM2d6U2lqNitP?=
 =?utf-8?B?QUxnOEJ2V1Z6MWNkbGNuSmZvc044MUdUNVQ0RE1YVDhsSGsxQkc5V1lZUEx2?=
 =?utf-8?B?MkNwV3dEbVMwaFhtN3VTbDJFam1QWDBMSzVrS0FmVVBtK1c0dHR5NFp6Q213?=
 =?utf-8?B?RmIzakQ3cG8rYXJsNWhacVBSYlBhaERDQk92eGdScFZsck5nemIreGhZMG9w?=
 =?utf-8?B?ZGFoMmd4OE1qNEhPNkhaRTdsYXQ1Y1poaWx1eUxPcGFZM2Z2QjJRb0dCM05x?=
 =?utf-8?B?QTdjUGU5N2dxRDhrTENkVFphcmdLei95WkhmWWhNakgrWlZOalhidFl2V2tF?=
 =?utf-8?B?MGswUmlVUUxGN2hjMFE4NEhGNlVRUEFVbmFaTy9ZQk1obUQySWgxd1VReStk?=
 =?utf-8?B?TS9HdlE4Q1NUQ3pRUlBSRS96T2djZmtNbEI4V2pIWE1YTDBBb2FCaHNFRW1L?=
 =?utf-8?B?bEViaWFFU3RGVUFYaHI4d01lVXFEM0FFSXlrbjVSdjJWU3hCYjAxdXQxWHp0?=
 =?utf-8?B?N280ZDBYM3RRazdKaWhBa3ZUSVhrS1hUSXJydkdSYzZGY3JMYWZSRkdVbzhZ?=
 =?utf-8?B?VktxYWRNTllTMWltVEcycXllSnM2N28zM3EzR1pCTVltbkRsK2w0S1JUd1Jk?=
 =?utf-8?B?RlFaOVl3L0FCZHFxNXBabHc0N1BzUXJvWnM0Ynk2MjdFelM2bGdidEgxd25j?=
 =?utf-8?B?SjNydjdtU2tOVTI0ajZiVGhlMnAwOW5PM21WNGgyS0xTQ3dvQXErZ1NCZlR6?=
 =?utf-8?B?Uk5FdkEyaXZ4cFZEWnI1NVB3QkNJMWVXTjdoRm1RaW8zRkV1S2RicnFPNVFV?=
 =?utf-8?B?enY2M2sxRWo5Qm12c1FjcHFvOVFDU0ZaYTdTNUY5ckNISEVsL1VYYlM1OGlt?=
 =?utf-8?B?RjRYZWVpdGQweHVTV29XaVBHMGw3U0JybXZlQnhJUmp3V2JIb3B0dmErSzRU?=
 =?utf-8?B?RXVoN2htMUVSVDJOckgzRXVOU3NleWoxdEdBWkdqYUJWRmcyNk1VL1Jtd3ZK?=
 =?utf-8?B?RGEyMjVONFFzMVI1dlFIb21hYW1NS01RWnhtTGtKeSs0ZEN3SlFUSnN4UDFk?=
 =?utf-8?B?U0p4U0hzZ0oyTmNnN3JkYk11OVMzVzBTNXozK0dwSXpzekRCM0pGQVR2eXRu?=
 =?utf-8?B?NExmb25XVG1SQzRwSGUwLzJJVmZ1NlN0UmdrZlEvNUlocXBGY3pXRHpLcUlv?=
 =?utf-8?B?bzdhUFZqWlRNRWdVRlprTmFmVktnT2ZiTWVjVmt0ekZNb1dHRDJSTDZ4NDhJ?=
 =?utf-8?B?TkE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11346.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96b35982-460d-4537-6fc4-08dcc34c14ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2024 08:17:51.5767
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qKRI1eOvkKafGKbb0hhD10Z182hbo/GVydUdPHffeLFcA2SqTqKN/TMhIroAmH8qqXlQQVF5eAY0XkiRYbCU84MQCAGypi9EiUrz54sJ3yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS7PR01MB11871
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_011758_693021_F28E4981 
X-CRM114-Status: GOOD (  39.80  )
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
> Sent: Friday, August 23, 2024 9:05 AM
> Subject: Re: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
> 
> Hi, Biju,
> 
> On 23.08.2024 10:25, Biju Das wrote:
> > Hi Claudiu,
> >
> >> -----Original Message-----
> >> From: Claudiu <claudiu.beznea@tuxon.dev>
> >> Sent: Thursday, August 22, 2024 4:28 PM
> >> Subject: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control
> >> array
> >>
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> Before accessing the USB area of the RZ/G3S SoC the PWRRDY bit of the
> >> SYS_USB_PWRRDY register need to be cleared. When USB area is not used the PWRRDY bit of the
> SYS_USB_PWRRDY register need to be set.
> >> This register is in the SYSC controller address space and the
> >> assert/de-assert of the signal handled by SYSC_USB_PWRRDY was implemented as a reset signal.
> >>
> >> The USB modules available on the RZ/G3S SoC that need this bit set are:
> >> - USB ch0 (supporting host and peripheral mode)
> >> - USB ch2 (supporting host mode)
> >> - USBPHY control
> >>
> >> As the USBPHY control is the root device for all the other USB
> >> channels (USB ch0, USB ch1) add support to set the PWRRDY for the USB
> >> area when initializing the USBPHY control. As this is done though reset signals get the reset array
> in the USBPHY control driver.
> >>
> >
> > Comment applicable, if the USB PWRRDY signal is modelled as reset signal.
> >
> > There is no user for this patch. The first user is RZ/G3S and is there is no support yet.
> > I think you should merge this patch with next one so that there is a
> > user(RZ/G3S) for this patch.
> 
> I have nothing against to squash it. I was seeing it differently:
> - this patch prepares the ground for the addition of RZ/G3S
> - the next patch just enables the support for RZ/G3S
> 
> It looks to me more modular like this, patches are simpler, easier for review and each issue is
> described differently in patch description.
> 
> I can do it either ways.

If it is complicated restructuring for supporting new SoC then it make sense to split into
a number of patches.

This is straight forward. You need a device quirk to support RZ/G3S.
So this kind of changes can go in a single patch, as on second patch
you are just filling device entry.

Previously I got feedback from mainline to add a patch, if there is a user.

Cheers,
Biju


> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >> ---
> >>  drivers/reset/reset-rzg2l-usbphy-ctrl.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
> >> b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
> >> index 1cd157f4f03b..8b64c12f3bec 100644
> >> --- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
> >> +++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
> >> @@ -132,7 +132,7 @@ static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
> >>  	if (IS_ERR(regmap))
> >>  		return PTR_ERR(regmap);
> >>
> >> -	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> >> +	priv->rstc = devm_reset_control_array_get_exclusive(&pdev->dev);
> >>  	if (IS_ERR(priv->rstc))
> >>  		return dev_err_probe(dev, PTR_ERR(priv->rstc),
> >>  				     "failed to get reset\n");
> >> --
> >> 2.39.2
> >
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
