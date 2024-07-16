Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38462C3DA59
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jul 2024 08:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pn6LXuPx/OuMbEMHcvYOfUMSldUe5ahswV9Wi1N1TI8=; b=SpOgddHi9LMAc8
	+EiOrMl8K8S7Z272b17HWeIrs609WviG3b9lIMhMsYPZ49+BivivedylGhDWyBScBSVK6FHWFs70Q
	8nctt/L6MhbDdgD51sbQ1tHr1ioV7f214lQFSB5Z8PrWyfe6lkbCC3KomJkfY0Hh1JXLjqsYqzXmw
	OtLOiIeTtWJmPIDpp+dYUIhIxXJ3zHroWUHB57kXPMkYq+xfStJgPpCfwuCnWXd5AE8EqPRsnKGco
	tdkbPr1NszcDuwql0sG8EIj/Fw9MVCCqcqo0LUtZk/jhKrxI/oOAPQqIVcPqq6i8zauVipvIYbwZ+
	CA2/oDraYuhyqVz31igA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTdZs-00000009jSe-3S11;
	Tue, 16 Jul 2024 08:30:28 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTdZp-00000009jRI-0M4D;
	Tue, 16 Jul 2024 08:30:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kixpVhWDTKdkUU5i5GauxZRyX+BpHpRs6CawIzhJlsk3nCklydo9dgMV687ajvoHnx/ovWjRXPa+oq3vGPS14t3BTuVSAyBS6DsS5Wko+8kf+qWRG2J/nbOoZNwe3Mzqe+h9/6mKyr9Z3/zrWLM1RXbHw+Ka1l8TcwVDeue5rRJsTsY65WvSQvIswcfH8ZD12NxkPHHBUtJPo489yhKRtQNOlerPT+9EHUkrzXTRw8qL8lgpEZFbfg2bFrLZAQA2OA9jbBmCYoLHTWm0o7NjFB4VDAY1be7NqdOc4G4Tcqg23CAo2H1schnABF+qojhnHobQtS05JTZ2qeRRQIT6pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NwlTPUCHNubZ/AUVG61Mw5UEOgp0YF8ELIhx3wdAtEo=;
 b=lTPxmm6szS8Q/9eG1MRPxptT2cpPt5leWkVBjrWPDrWMM/CILCdHhAdroAJPkQuUQJd53Sy19j+mf/y4SlaXiv69BtIa0nudZrlXmBFmVI9H3IZ6Z0SC/lTfWXfGGcA67iZAMq5kO0SkpqRJF0W94A6Wxt7/JfIvesLms6ah5VxXTqIhsOygTRQ1bcXKy0h2kjaFY1UQdJdrny4sBSWzp/4TTzAz2UOuc2XpchrWLMP6gkbBXdCOxjFKMc6CihqIMXG+XLu9fC0bVqbx/Rl9uU+zYixf/NrJ2BxeIWSICgIh96+RVYx/RbLmSMNjGQNcTRwloIEq1n1KKk/2+vBWRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NwlTPUCHNubZ/AUVG61Mw5UEOgp0YF8ELIhx3wdAtEo=;
 b=CFBRXgSXE4zu949suMC9sSUgxn2xMgyyvrk1aMdHRIc5Y2O75z3lXEpcpwSpU9CKWzpNs/57HyCG9BTM+jVqFXZvRrXMIiIiQmnqhrwN1x9TqVcPYMbDkRuaG+ogyapvLMtho6ldPpSgqEP4q78BZbRrRissiQYUFvJ0DSu9ipA=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by AS5PR04MB9895.eurprd04.prod.outlook.com (2603:10a6:20b:651::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Tue, 16 Jul
 2024 08:30:11 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%3]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 08:30:11 +0000
From: Josua Mayer <josua@solid-run.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
	<sebastian.hesselbarth@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yazan
 Shhady <yazan.shhady@solid-run.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC 1/2] phy: mvebu-cp110-utmi: add support for armada-380
 utmi phys
Thread-Topic: [PATCH RFC 1/2] phy: mvebu-cp110-utmi: add support for
 armada-380 utmi phys
Thread-Index: AQHa1t8TfjddiryMQkiNldLCRfDlw7H4FU8AgADxsYA=
Date: Tue, 16 Jul 2024 08:30:11 +0000
Message-ID: <c5ac4b22-7632-4232-a81b-e32bc48df670@solid-run.com>
References: <20240715-a38x-utmi-phy-v1-0-d57250f53cf2@solid-run.com>
 <20240715-a38x-utmi-phy-v1-1-d57250f53cf2@solid-run.com>
 <837de973-0a58-4a07-a126-43445bfa7721@lunn.ch>
In-Reply-To: <837de973-0a58-4a07-a126-43445bfa7721@lunn.ch>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|AS5PR04MB9895:EE_
x-ms-office365-filtering-correlation-id: 63753aa2-6f8b-4d67-d7b3-08dca5718282
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dWVvU2pxdkQ4eG40dUN3Rm9KYTdTVk5wdUlDRklUUDFIditzT2NMTUV0M1FG?=
 =?utf-8?B?OXd3WHNuaEVUWU0vL25ObnJOV2FXbFQ3Y1pzNWU4UXRYUkJxQWpOWFZPZFJD?=
 =?utf-8?B?K3U1Ym85S1owUTJrL2NqdDF2TGwyZlM2d1lFV09YVTlGS0xBVk9YUkNiNjE1?=
 =?utf-8?B?UlE5QkdXdEpGelJ0blgzdHBXa3V6RWlzWmV5aExTNWZVTTAwa1NmYnBVa2Nx?=
 =?utf-8?B?YURWR2Q1em14ZThzTFdKU2Ria3FsRlpaMXl1a1FrWEhqUzRMK3ZsRFdiZklC?=
 =?utf-8?B?UkJ0eDNzcFlwNWRoUFBXZUlJZnp0QVJ4ME1GREk1QjFyK1Fua0V2ZXdJeU1B?=
 =?utf-8?B?bWhPdEpicWUrVm1XdksvMEZvelVRTjUzSDczUzFOZkpUKzZEaHdzeEY0VGNY?=
 =?utf-8?B?RFBPVUhVMFdBKzBTNFdZUmFyUGUwTks3eG9HQ204LzRudjYrWjVzWklzdDFi?=
 =?utf-8?B?dnNxTndqSkdUZHZnOFREL0U4eW4xclVSMDNSaHlKc3R2SFVLVUxUMEZaWDRp?=
 =?utf-8?B?WVJnRi9JOS85WWxaQzdFVmlVZ2xjMGw3aXpaTnNKNStYV25WZUhrNEFSYVdX?=
 =?utf-8?B?aDZvSEM4VXVsRDFTTVU5K2lrZDZQM1pUTnVOeUhUQjBQYmwvR2FaTDdtNDNO?=
 =?utf-8?B?NUJGTGV2NFJRN1poR1NsTVUxUm9Pa2Y2QnNnNkxuejlnUkF6NTJMZHdDRmpJ?=
 =?utf-8?B?K0N3REhlSy9sK2YrWXFDYzYrVlNDY1BUTEhWL1hrQmxHM0VHZTFLUW5PZFJw?=
 =?utf-8?B?QlFsMkNvMHhXTW9MSnZCN2w2TnB6YngxQmF2QlBjK1VIc3BabGJjYklab2xq?=
 =?utf-8?B?ZHozamFUNUxybzZjNWVpNXBQbmtBNlFSQXNDdzluYUZZY0VZK296VEg5MkUz?=
 =?utf-8?B?NFZwUjFOZ0VkellOc2ZyWmxpRjJZVWR2YXRQOXl2aE1SYWJZdjhZMlVpNmQr?=
 =?utf-8?B?Z3Q4ZzVwc3Fnck93ay9vNGRDS3FZTHQ4emoxNXNXS1ZES0g2cEw5ZTBNaVRw?=
 =?utf-8?B?UmpLSVVOc1MwRWdVZFo5ZU5EZ0lqWlFvSWJ1d2tMTCt3NUdtYmhMakZRVS80?=
 =?utf-8?B?MGlBTHFTeFhsRW42NkhGeWtNeXIrdmU2ZkxCUDdpZlh4QlRzSFV3cUE4dlVs?=
 =?utf-8?B?bEZxeGJQZ0xvNlJzYTBLVXlpREYrWHpRYng1VkFKaXpuUCt5TTM4QU5VKzNn?=
 =?utf-8?B?RU43TkRoTHRNK0trYnNLYWJab0xsTlBlalJGWDR2bkNjREI2RnhTbVFmN2Ni?=
 =?utf-8?B?QkZyMXN0UEtKZmM3alNXamRtUSt5cUdBTFZaZWFUZXNCTVVmZWE1NUJ3bmhY?=
 =?utf-8?B?dTJPVWR2dS9oaWQwd0JQczUrS0JVdVUwTXBRRGhFME81TnFqV0crcFBGR3px?=
 =?utf-8?B?YTlhVVR2SnZ0eDBDbTE4YU5POUYrNENrTFJxdkt4V01aVEdPMUdPelU4QjBR?=
 =?utf-8?B?QnFDc3FRMHN5MkdoakNFaEk1c2ZNT1Flb3FjYUhGSmxOY0s5YXVZRkJaVzFx?=
 =?utf-8?B?U3lOVVZLRkF6eGh5VmV6VVlRanlPQW1JMFV5T1ppUXdsdnRMNHRGOFFnZWV2?=
 =?utf-8?B?RENJQXpDQk5MWkdpRVpFQ1hVWlJMQ0ttSzFlM0IvVEw1aURFTEYxaVlpWGNF?=
 =?utf-8?B?TTBmZGRRYnh0eVJtYjdUb0k2MHdLZEpNNVRtMnFieHJSOTQ2c3NsanJ2eDVE?=
 =?utf-8?B?V2tzeTRaQzA4ZVhTWkJwOVg5VGF0RWZMeUxrSVREYy80M1pWcUFjelJKS3Ja?=
 =?utf-8?B?TCtYUG93NFR2SUk5NGN4KzZUNDllZzFjN3NsRC9JalNDVGxReFJwZnU2QTRH?=
 =?utf-8?B?TkdNZ2hwaUlGMFJaTEF0dWFLL0VsS1VQSkNvWXgxNWRDcHREcEg1MVVsdm80?=
 =?utf-8?B?c015Vi9HV1IvMGo5eDRIeklHU0xBWWx3QlRPMDUydk12bUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OURxQ1N5YVR6VnptVFArSmVSR3NNNllrQmtTV3RsWXNjcTFMNVYrSVJuQUI5?=
 =?utf-8?B?T3Jrc0NyZllTQU9jNkI5bjRRdFhSZkdrOC9OdnZXZW9kUjNLTk96blJSVHpQ?=
 =?utf-8?B?RUgrdTFwUkVyME5QSlI1NWpsSmFiUWFoaFZZZzdjc3NVdDVpc2toSHlSQ3do?=
 =?utf-8?B?UlhzRkFqSFozK0JoK0wrRHEvSmZDTzJDcFlHMmEzaDRoVm4wVjRLQW5zTUxl?=
 =?utf-8?B?TXJncDNkclpyRTk5VjVaMnl5Z0JBODlaU1ZJQTFnVDAxcll0THg2QytIdXBY?=
 =?utf-8?B?ZlYzV1BORkFzMTJpS0lPRncvbDVESUsyeDAvMWJVOEw5Z0RWNXFCc3E3dmk0?=
 =?utf-8?B?TmE2R1krY2xTZEVabTlHbG9BOU5qMjhub3VKVkhMci90MnljM2VNaytFV0wz?=
 =?utf-8?B?d095MEFwWWs4bG5JQ3gydTZDaVUycE83TGNndjdUSnIyZnVJdXhuQnZuNHNR?=
 =?utf-8?B?QllMRnVOL01SMTlhUUJDblZxM0xwdnhGdkFkTFBkdEJhRklyMlgvL0xJRHJT?=
 =?utf-8?B?ckRNdUtpeFQyTllGdEw5TGkxeG42aDhnd01DMko2VDlhYmNrclQ5V0JweTVK?=
 =?utf-8?B?QktPckRnR25WQkVxOE5WMDJBbEo4WnlvT0IrLzcvUFN0ejdVRWpEdC9tNnBW?=
 =?utf-8?B?RXNQSTV2RjhrOUs4OElVUFZ3SlJvZ1B5ZnlxMWpWRXFTVlorMWlRSy8xYXh0?=
 =?utf-8?B?anN6OWw0NU56c3k4VFNvVzJ5TWdsdGlnMjNFTjh6YzBQamFQclFiTk5RY1JL?=
 =?utf-8?B?RlltOGlWMGc4ZWVnNFhoWEV1VFNEQkIrd0dmT08ydFBZT1A0OHRXU2l1VXpv?=
 =?utf-8?B?TWxFS1AxMVdzSGtpeXV2aEVYSFdESGJhS3Y0aGg1dmRvRFVrVDExSUxQSzBO?=
 =?utf-8?B?OUY0d2Y4bVhQTW9NUHp5TTVzbEJabHlrZndrNGZCRFBRZDMyUHBiek9hVUo2?=
 =?utf-8?B?RHlSR1ZmcWhZZCtzYU5iV3A3OTdwRXBmSWFQVVI2aklwbzBlYUVJY1lETEpV?=
 =?utf-8?B?US9LZGV1bUhEUmZlQ0UvVGEvQmxNZ1NzU3FhLzZIZ201eDN0Y3dNV09ZOHZz?=
 =?utf-8?B?VlhmenVEa3VUb2wwZGJjYnJza2FUaHNNN1pqdDNRZnJTdkhVYXc1aVBjOUpl?=
 =?utf-8?B?YkNYL2VKZ2hsYjdwVkZtMWZXN1JnTVRRWjRyZSs5T0Y2KzVhZHB0SlYyZWYx?=
 =?utf-8?B?K3U5WUt5dHA4a2hQb04xa0Q3WVFWaWtwbEd2VVdjTkZIc25hck9sa0crVEFG?=
 =?utf-8?B?M2lJT3VXRlpvM1NUaVRDeWQvT1J2TjljdlVWVGp0cmdXdnp4cWJtdE5lRGtY?=
 =?utf-8?B?NmVlOVpqcHBON2gyRVUvQmgyeURUc3VJc1dsdG8xYkoxbXlKSGdjSWhVTXl1?=
 =?utf-8?B?cEdkQUlGMjlZMGV6bWZYMmMydlNPenFmdmZocjcrUDZncHFzS3ZSOWdUanpG?=
 =?utf-8?B?QlRJYjRBd2NYejJOREtZS0NGQXQ0R2tvS2NmSHVpaWlXZ3hQMGM1TGIvR3ha?=
 =?utf-8?B?VEMyZ0RldjdRd2NUczBTRk1XU203bnFlYWRwLzN0UUFQQWJNUGkvYXZSR1V5?=
 =?utf-8?B?OFRDMk1rQUk5bGpGZU13ZHlkcUNJc2ZFZXpKcUpVbTNxT0lubC8vNncwc1hC?=
 =?utf-8?B?cVc2Tlg0SWtaUnhaVjNFcGc0RmpqK05CRkZrR2toSUtsZnBYSzBnRE9jVlls?=
 =?utf-8?B?Mmc5aFhHby82WS93NW5tOXlmRDJKRHM1cCt0V3ZRMDZJcFJjdnRCUERMOFN2?=
 =?utf-8?B?MU8vNlROUVdmM1VCb0Iwb2ZlaGVVYXVtcU5CcmFNaCsveVZNOE4yY0kxeXR3?=
 =?utf-8?B?RTk1ejNweHVOWTNwUERTanpTelRvbklzYnVabE1hRkIrNHVsa0RWU1ExdE1G?=
 =?utf-8?B?R3pXRXpPUlNYUmpMakpLWFFZK1k4SkQxNkRrdk13RzF2Y1M3SWw0Rk0xY012?=
 =?utf-8?B?alQyY2Y2SERTY3lNS1BWdXBnTG92ZjQ5NFhkb0l4SVBBMUwvRzJNQTFIT1Rq?=
 =?utf-8?B?UVhMNXBQcW4xcExUamJtUWVlTmpQRzl2UUt6cGREaE5xMmgyR1JJV3Q0WWtn?=
 =?utf-8?B?MGltS3Z2aWw5dWpjQ3JCNEFQSUpJemh1QkJzbkVBQzluSUs2ZEtvQ1l1SDRp?=
 =?utf-8?Q?KvE5vM0/eNp0UW+i11PBAJlBX?=
Content-ID: <83CC75DD852EC8498604559271A3C7F9@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63753aa2-6f8b-4d67-d7b3-08dca5718282
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 08:30:11.8772
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V/+sz/XVYOqZxa/Zw8XzDKjjRJmoEWoM9GnZtz7Hb0bfo9r4/AwAOc+JMudUTIS3UAPyhM9equftaFGtwJ496A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_013025_218507_DEF93F95 
X-CRM114-Status: GOOD (  14.85  )
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

Am 15.07.24 um 20:05 schrieb Andrew Lunn:
>> @@ -191,8 +196,15 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	struct mvebu_cp110_utmi_port *port = phy_get_drvdata(phy);
>>  	struct mvebu_cp110_utmi *utmi = port->priv;
>>  	struct device *dev = &phy->dev;
>> +	const void *match;
>> +	enum mvebu_cp110_utmi_type type;
>>  	int ret;
>>  	u32 reg;
>> +	u32 sel;
>> +
>> +	match = of_device_get_match_data(dev);
Should be device_get_match_data?
>> +	if (match)
>> +		type = (enum mvebu_cp110_utmi_type)(uintptr_t)match;
>>  
>>  	/* It is necessary to power off UTMI before configuration */
>>  	ret = mvebu_cp110_utmi_phy_power_off(phy);
>> @@ -208,16 +220,38 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>>  	 * to UTMI0 or to UTMI1 PHY port, but not to both.
>>  	 */
>>  	if (port->dr_mode == USB_DR_MODE_PERIPHERAL) {
>> +		switch (type) {
> Just looking at this, i'm surprised there is not a warning about
> type possibly being uninitialled. 
Curious indeed. However I have not seen any compiler warnings
for uninitialized int (enum) recently.

I copied the pattern from drivers/gpu/drm/tiny/repaper.c,
there however is always an else case.

>
>> @@ -285,6 +320,8 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>>  	struct mvebu_cp110_utmi *utmi;
>>  	struct phy_provider *provider;
>>  	struct device_node *child;
>> +	const void *match;
>> +	enum mvebu_cp110_utmi_type type;
>>  	u32 usb_devices = 0;
>>  
>>  	utmi = devm_kzalloc(dev, sizeof(*utmi), GFP_KERNEL);
>> @@ -293,6 +330,10 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>>  
>>  	utmi->dev = dev;
>>  
>> +	match = of_device_get_match_data(dev);
>> +	if (match)
>> +		type = (enum mvebu_cp110_utmi_type)(uintptr_t)match;
>> +
>>  	/* Get system controller region */
>>  	utmi->syscon = syscon_regmap_lookup_by_phandle(dev->of_node,
>>  						       "marvell,system-controller");
>> @@ -326,6 +367,18 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>>  			return -ENOMEM;
>>  		}
>>  
>> +		/* Get port memory region */
>> +		switch (type) {
> Same here.
>
> 	Andrew
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
