Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3791CD342F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 08:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmE5NcEnTlT91BQSBsHyK2HFN0iBi4MVNhlf5A1KiLM=; b=YE92KQuyRVldEq
	tyKRoqUMjSqtByCnDhP9U4crqAUhc5rXGSp/2o6iV0r8R+dYKzXSAXkkd9Q/ZxQtpwpCDbdhud8Uk
	KalchpP+TGG5erYkqXF1W3fTDI7kSD2kgBOBmzROkX8xVQlJaRntq8J4keCsDVtI9UZcbz070RknK
	hCcGThUnurXk8O33NMw0znYLQyrsi9lu6rV5zM7rqwaad0SR5Bo1dBDuMuxQPzsp5Ss4k+wshkfJc
	rTAHob0dAgmEuFGrPX3PHCcBGRPTVhlzk26uydZowcc1ViLvWp58TnVkbcA61I1eyydM8b/SYPktq
	jLbRlTwJvxjJgXabM+Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOX5-0000000GpIL-1RKv;
	Tue, 03 Sep 2024 08:04:59 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOX1-0000000GpHn-2ttt
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 08:04:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EqdIxNAZ7BcgD6mulBE0zOeyW1wDr+fWY9fzlaHL6q6EzzeDk4n6186Rw6JZeDe0IrRTp6omhNMF/aRJyvdxeVJpqkWmYpOxJvWQ6AXYDsS/gzrtlEbW2hX8lRTWkxuY6XSOGk/3JgMrN/w9bPK1EEpyvq9jLIbs4P3zqZrp0MHvbqZvlyxua+i+Dv27o0o9lcyGd3LcYC03jnE5ZNIvBLGwUnlg7U7ROGRsovnZWyTu/+2Kcp88UasHVKyZh4bEbHnfMuDWeOELRNolxmFXdZpmUb3AJM4vZP2ksyiy7cLgRYkOl/bQm0q6L3wekMz0Fv7yT6QFsIZJodE+kC3AvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=38NgYpqvCPB4LYth2CSGtptPAu44UzJHKxyoLfj1VKY=;
 b=CPsV4LcJAQ+1iHsstwRydpacQSbK67+mfRHJoBNvt3dERCsQ1cSyt0Tgv1cL6L+Mtg1CqJ1wIKguedOhRnOEGVD5nTiJGDnw5eR8blVPII4nGGjgffXINirlKhGq8y8f7ELSuwqF4Y+JYo9EMxKXasE1sNJftP9e+M3eoDQLBMl6A4GMX7XrIuSeV9tnd6T/g4TZwKF1OxcN6wHTpgKj87YmSfifDbSoS3IVp5kRpJa6vJRdt99QcsN/AiLM7B6l1REqyE9EAjtowjNB+U6F/ZoV//eCHpB+d1P/O7QPdBArgSrb8wWqqCEaxuvASgKUZFBeeclSNwHDRLuwNv6tRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=38NgYpqvCPB4LYth2CSGtptPAu44UzJHKxyoLfj1VKY=;
 b=W+fjasQEp1c/RMEf620/Sv4YGv0T+XO4IH0Quooc/sTLNEnJfsd88DGBcFMRSahCmyuy6xlK10RBrlmgjQXgsj/Zi1yheSImSRd6M770oalxEpzjN0IkVS+7BghJPYg27AAFK0qFfZAP7ZpVv3LGH7CAs0r9Qi0eTtSoJTZqN60=
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by VI2PR04MB10268.eurprd04.prod.outlook.com (2603:10a6:800:21f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 3 Sep
 2024 08:04:48 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 08:04:48 +0000
From: Josua Mayer <josua@solid-run.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by
 dts property
Thread-Topic: [PATCH] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by
 dts property
Thread-Index: AQHaziKJ25umVhM0WES7ES4zD/83tbIXkNWAgC6CyQA=
Date: Tue, 3 Sep 2024 08:04:48 +0000
Message-ID: <ae576164-f60d-4048-96aa-4f21117f5f4d@solid-run.com>
References: <20240704-mvebu-utmi-phy-v1-1-9d3c8eea46e5@solid-run.com>
 <Zq--_WIgaPXPiYRQ@matsya>
In-Reply-To: <Zq--_WIgaPXPiYRQ@matsya>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB7586:EE_|VI2PR04MB10268:EE_
x-ms-office365-filtering-correlation-id: 14f668e0-6687-4681-b718-08dccbef14ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b2RidDBNTDdodDZQbFB5Y3d1U3VFQUJFZkNlNUFMdXg4WTRCMkMwUU5kSmVq?=
 =?utf-8?B?UnhyWVhnVGZOY2hvOXBhbVJCRE5wWnphSU5SRHFkYnFFanY5a2hMSVM4VmRP?=
 =?utf-8?B?MFZES0kxUG9ES2l3SjBXc0R4Vi9zTXlRQVNWcm0yOTg0cERBQWZwa0h4OXN2?=
 =?utf-8?B?YXQwazRhUUY4ZWlSZmFiekprQlFyU242SzlkQ1QwYWxhOUFPQk5ZNTZaUEYw?=
 =?utf-8?B?QzdMSE5iK3BxYkVxYkkvV3FZK0xnb01ncUwxd0JWNEROZ2ZJU0lpR1ZDaHBX?=
 =?utf-8?B?eko2NGtGRkY3TlN3ZzE2c0F3cnpjUkwyS0ExNVYyOTcvWkFwbERHYXFwRVZP?=
 =?utf-8?B?NUtRQ2ZWekZYTnRlTkFHZmNBcEFFZGhRYVVwb1JaWXUrVWIwZTlFUEZySkdV?=
 =?utf-8?B?MkRvd0hRVThGWUhYWGhNTklKWDl1bUsyUThNN1AwbEhUaU9XS3gyNjZCOVdV?=
 =?utf-8?B?d3psRys5VGhVOHk4YW1CSzNUMkxtMU53bWR3TVVnT0s4Qm00RFZtYjRESXlB?=
 =?utf-8?B?NjhMUi9BYWw5MGIyS3NaNmZCeXRyS2JxdWF2cHllSlN2dUJhZ3hZYXBoa1ho?=
 =?utf-8?B?aHYvZWt4bmE0NnQ0a2lvRFNnMUw3TjNSZUJGTFVXdS8xK3Uvd3MyMFRjc1Jj?=
 =?utf-8?B?dld6ZlBRNE03d29KbmZqeDJKckJMaC9mYklGT1U2VGljOGUwdEh1VUdkOFZz?=
 =?utf-8?B?R1pJYjVxUU5EaGZCVlkxZnNJbDYwSXYzV2hCNUQvdEZWK1RZNHZwaFV4djM5?=
 =?utf-8?B?RldhV0w2ck1BWDIxTmcxUE41b0w2Y2RBOXpOS1U5c1ZheHNFNHE5djVKL3g3?=
 =?utf-8?B?NUI1QWZUQ0pwUXRKRjJ6TndsWjZLMkhtTGsyaVEzcWhHU1VodERTaWpMdUNV?=
 =?utf-8?B?MHpoR3plTGVKQTRtbWIxQzRITWJRTXFrMS9zZmp0YW9VdVRrZHVFV0VkZCtH?=
 =?utf-8?B?ZTE3b1FyWGFsdGNSQTBSNFhyZ2RoRlppb2pkSHZZVllsR2NKY3lqaHBxN0kv?=
 =?utf-8?B?TS9udXBzRDdOZ1Y5QmUzMGxvZmdTQ0wzQjZ4dzdIekY2dFJjbDVhU1JHeVdz?=
 =?utf-8?B?ZFArTEZzY3JnekFVZFpZcWJMUzlBTnVHTENiZmhxNHErbzdjb3VMeThTd2I3?=
 =?utf-8?B?RndlOFZDTTBhYnR2MVk3cythaFU1YXpwR2hvcStIb2o0MUxMS1JnR2tlV3Y2?=
 =?utf-8?B?b2JKcWZWUHhDSFVIS2N3ZW5vejN1cFUzaXdBUnhNRVJnbEpPa0NYZUQwWHFv?=
 =?utf-8?B?UXlUK2ZJYTZudS80VHRLSTVoOCtWcTJtK0YzckVoQlBSTnYrQXZ5RmM4bER0?=
 =?utf-8?B?WnBvMFhNdnh5M0dpMyszU3pHREtCL0pKa3IvakJjSUgzbmhMTjRFbm16TkVl?=
 =?utf-8?B?YklBU3ROSWxvZVJGVUlBRS9RZngvbGNWV1Y1K3lTRi9KNjNIV1ZtZFdUdnBq?=
 =?utf-8?B?NEV1S1d0ZzRxWHZqSlBQb2N3eDl5b09qcXpMZm0yN2NCVDRMa2hOc3JubzF2?=
 =?utf-8?B?VkFlNFhzNzlHMTRwUndIU21NaU5TMnNzV0lvYnlEc1kzSXhBWEk2SkVHUkwy?=
 =?utf-8?B?Smd0dHlZR0hyLzhES0prUzd5dWttVXV2cFIzeW1aQk9XeU5JQ1ZjdmdzN0h3?=
 =?utf-8?B?K3BRSkdMK3c0YWpYbEdLZ2dMdllFVXlWWXRxRVV3elZ2ZUJJbk9saHRuY0dj?=
 =?utf-8?B?a3NabjdCMEJUU1FXN2RJZTlxVHNucTdvNGE3bXMvbmU1ODBXU2ZTU3BmdEVN?=
 =?utf-8?B?MnZtbEZ5RTBxbitPK1NQakFmbEtjdDJSTFR6T1BzTiswNUxKT2xQNW80RG8v?=
 =?utf-8?B?RFhIU0s2VEprdmtnMVd1bWVaZzd5NUZiVUJYdGhLWDFZRmgvcjdZOVJJZjA3?=
 =?utf-8?B?cnpkTFlmdk96c2hMcU5uSFFQaEU2U2ZjSktQTlVOak8vZ3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGVBZHFiUS9lTTJHVDhTdlVzdldhdThpdjFXdERlSUVsNDVwSHVHdmc5RXpW?=
 =?utf-8?B?dFBsREhvc0xZWHRZZlM4Q3VtRld6TVNMVWxPcWZlc1ZseVFBa2xUeWN1ajNV?=
 =?utf-8?B?OWlJbU1MWk1SUG04Q2RsMStrNXlMTXc0VCtma25SME5zb0w3c0hpUUJzY214?=
 =?utf-8?B?NEE5NGo0VmtpdEZ3SDNNaUlXcDJEY3YvQ2NoM3ZjQloxQ29aM28yeDJjWDdT?=
 =?utf-8?B?SjdFOGw2UTVHU0xuVURGYWlPei9FRG9LRjNWWnZWYk1NcC8wN0JoeVZNZzhH?=
 =?utf-8?B?QUhXSW9zYmRZSUE2b2lCbkgvVmFVNERoalQvbkRIdmI4R1d4ZXl4ZmRWeGxw?=
 =?utf-8?B?LzlMUWllOUJSYThld1ovTXV6ZjVVWDVxTWM0VnRNc1kvMU54TTIzZVNtTlF5?=
 =?utf-8?B?SXo4MXowWjVkVFdEYUgvY1dmc1ZHbnA4SDEzbUNJN3dkK3BEcmNMdGNFaDU2?=
 =?utf-8?B?c1JYaG4zS2pOZzFLMlFRV1pHNCt1eWRaMmpqUjVsaERqQURlQ05FclBzZDhD?=
 =?utf-8?B?bGk5TTBnQjVDSW8yam91NUNHcXV3K251YnlqYjEreHRYcEpySnBHRTEvTGR4?=
 =?utf-8?B?SmQrMVJRRTJQU0Y0L2kzc0xjWTV5emJSSlhBSDU3VnZjbnNPS2t1WUR2WFYz?=
 =?utf-8?B?b3FxeVA3Um1FK2dKL2xLMU53VjhRUnRKdFlLMVk3WGNCRndwS3VsM05RVWVO?=
 =?utf-8?B?RmtMRjVJakprN2JWd1psUDRNMnpJNURBT3dSUlFwdm1rUDVVMzV6aWhDR3ZU?=
 =?utf-8?B?TXR4Nk5PS2FmQ01ibVJzVDVXeGxISHVLL1FuZklOQ2NCQVh0MmhRWkNpbmZD?=
 =?utf-8?B?dmNtb04vaDRia3BqZ3Z4OEdLdmJJRmdDMHBUT2Y5eUdWeTBZYnpQTXFUTjNn?=
 =?utf-8?B?N3NENWdqbFBFS0dYclYxTUdlQllFM0hKbW1VdWRNNUFSeUtBbVlYcVBLdE4y?=
 =?utf-8?B?RHpJc2dodzkvcFFrZU1oTVcxRWRLQ0hUMVdrUmhEcFpFU0VrTDV1Q0tMdVhG?=
 =?utf-8?B?TmpRc1hUVVpQTm5BOWpoWU8rOUoyWWxmWEtvS3J1V2Q4ekt1YXFJR3p4WnBt?=
 =?utf-8?B?ZG8yUmhBOVBadkJjalk1NzU2anQ0T2l2aGNPcWUzUU5maWdkT2xST0tPYUxx?=
 =?utf-8?B?RTgveGVZVkdZTDdWZUJkZFNVRUV3aE94OFNHZVc5Q3RJWk1xdDFMYlQyQmJu?=
 =?utf-8?B?bTJwNTZ1TVhla0FSeFBVNnFmSWx5UU5IRWpldW52R1ZIVjBLQ3ZmbE5xVnFv?=
 =?utf-8?B?T00vb1F2MktJY1JVamI0bjNIZUtNdkhLeGtrMEdYUG4vWjFrclRtNE5pamR1?=
 =?utf-8?B?K0VLNEhHWW9xNnNHOXVHdXBTdmtWSHhWbkNyZzZENGxwekxpRlZEQmFuWWdQ?=
 =?utf-8?B?eFdjV2ZacGM3Q0VqVTJ2NWF5L3dJeGU0MCtkNEkwekU5TjdqVStPV253RVpM?=
 =?utf-8?B?MjluZURQZ2NHTmV5bDBvbVFlOXFHZktIWlRXa1J2QU5VVSs3b1NIN2JCYWZq?=
 =?utf-8?B?WkY3dURLVStramMzcU5YZ3d2ZU5SYnUzOEZ1d2crckxSWHJOWTFiVCtJVThL?=
 =?utf-8?B?dERsS3ByNllZNm1IU3M2TUhRb2NtRG00YmZnVUNNNVRqOHFieVoxR2hubnkr?=
 =?utf-8?B?N3ArOFIyVVZPMTNhY0oxZHlRdE0xUGFvM1ZEM29HWFVnQWc0VkRpUXBYVnAw?=
 =?utf-8?B?WFJ0SmovUkFCRlc5ajhmejBoRXRFdXpYR3Q1b2JOSmI5ajBkY2RJdHYvR1FS?=
 =?utf-8?B?N2hNZVFhOVJtbThHcSt0ZHRHaEZkL1FWemJ5TG1Rc3NNQ2pSQ0dXUyswdGxF?=
 =?utf-8?B?cEhsN3hXVU5YbzZQd2R1OU1xdnRBQkpJKzcrT1krT1RWekRGTkdYQ1poS0hU?=
 =?utf-8?B?TElPU2srbHlKa0JEZWR4Ym41UGFRQy91aUhnVlVIak9kMmJvWGhmczBzZ2FC?=
 =?utf-8?B?eCttUjdKcVBBQWtWRVd2a1ZQelFqWjRLNmZTNGozOVJscS9LZkZNYzVDZk5P?=
 =?utf-8?B?ZnlCNGtuT3B6Rnl1NHRZZkVtRzk3c2xFMEdGcndFV3J1dUxrSmZxRFd2eHV4?=
 =?utf-8?B?WVdpNWozZkZ0WVI1eTVDSVdUYkpUVG94WkxuejdBbG0ya2Qwb3F4d09pV2Nx?=
 =?utf-8?Q?IGn85cSOAbYMok5XBBPy8k108?=
Content-ID: <E937059838142D48B15E1023B26BE1A8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14f668e0-6687-4681-b718-08dccbef14ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 08:04:48.4029
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LtMkw1CIyrCAYnOU/Mn6bS2nW7m/kZEjI1xyEecfW2Plv7DbCKs8oWklkdJI/KRFzZAaSb3R0hJiTS4vZu955Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10268
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_010455_918891_A8085CE5 
X-CRM114-Status: GOOD (  24.04  )
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

SGkgVmlub2QsDQoNClRoYW5rIHlvdSBmb3IgbG9va2luZyBhdCBteSBwYXRjaCENCg0KQW0gMDQu
MDguMjQgdW0gMjA6NDggc2NocmllYiBWaW5vZCBLb3VsOg0KPiBPbiAwNC0wNy0yNCwgMTY6NTcs
IEpvc3VhIE1heWVyIHdyb3RlOg0KPj4gQ1AxMXggVVRNSSBQSFkgc3VwcG9ydHMgc3dhcHBpbmcg
RCsvRC0gc2lnbmFscyB2aWEgZGlnaXRhbCBjb250cm9sDQo+PiByZWdpc3RlciAxLg0KPj4NCj4+
IEFkZCBzdXBwb3J0IGZvciB0aGUgInN3YXAtZHgtbGFuZXMiIGRldmljZS10cmVlIHByb3BlcnR5
LCB3aGljaCBsaXN0cw0KPj4gdGhlIHBvcnQtaWRzIHRoYXQgc2hvdWxkIHN3YXAgRCsgYW5kIEQt
Lg0KPj4gVGhlIHByb3BlcnR5IGlzIGV2YWx1YXRlZCBpbiBwcm9iZSBhbmQgYXBwbGllZCBiZWZv
cmUgcG93ZXItb24NCj4+IGR1cmluZyBtdmVidV9jcDExMF91dG1pX3BvcnRfc2V0dXAuDQo+IEl0
IGZhaWxzIG15IGJ1aWxkIHRlc3RzDQpJIHdpbGwgcmViYXNlIG9uIHY2LjExLXJjMSwgY29tcGls
ZS10ZXN0IGFuZCB0aGVuIHN1Ym1pdCBhIG5ldyB2ZXJzaW9uLg0KPg0KPiBkcml2ZXJzL3BoeS9t
YXJ2ZWxsL3BoeS1tdmVidS1jcDExMC11dG1pLmM6DQo+IEluIGZ1bmN0aW9uIOKAmG12ZWJ1X2Nw
MTEwX3V0bWlfcGh5X3Byb2Jl4oCZOg0KPiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1j
cDExMC11dG1pLmM6MzYxOjg5Og0KPiBlcnJvcjogbWFjcm8gIm9mX3Byb3BlcnR5X2Zvcl9lYWNo
X3UzMiIgcGFzc2VkIDUgYXJndW1lbnRzLCBidXQgdGFrZXMNCj4ganVzdCAzDQo+ICAgIDM2MSB8
ICAgICAgICAgICAgICAgICBvZl9wcm9wZXJ0eV9mb3JfZWFjaF91MzIoZGV2LT5vZl9ub2RlLA0K
PiAic3dhcC1keC1sYW5lcyIsIHByb3AsIHAsIHN3YXBfZHgpDQo+ICAgICAgICB8DQo+IF4NCj4g
SW4gZmlsZSBpbmNsdWRlZCBmcm9tDQo+IGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWNw
MTEwLXV0bWkuYzoxNToNCj4gaW5jbHVkZS9saW51eC9vZi5oOjE0MzI6IG5vdGU6DQo+IG1hY3Jv
ICJvZl9wcm9wZXJ0eV9mb3JfZWFjaF91MzIiIGRlZmluZWQgaGVyZQ0KPiAgIDE0MzIgfCAjZGVm
aW5lIG9mX3Byb3BlcnR5X2Zvcl9lYWNoX3UzMihucCwgcHJvcG5hbWUsIHUpDQo+IFwNCj4gICAg
ICAgIHwNCj4gZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtY3AxMTAtdXRtaS5jOjM2MTox
NzoNCj4gZXJyb3I6IOKAmG9mX3Byb3BlcnR5X2Zvcl9lYWNoX3UzMuKAmSB1bmRlY2xhcmVkIChm
aXJzdCB1c2UgaW4gdGhpcw0KPiBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhvZl9wcm9wZXJ0
eV9yZWFkX3UzMuKAmT8NCj4gICAgMzYxIHwgICAgICAgICAgICAgICAgIG9mX3Byb3BlcnR5X2Zv
cl9lYWNoX3UzMihkZXYtPm9mX25vZGUsDQo+ICJzd2FwLWR4LWxhbmVzIiwgcHJvcCwgcCwgc3dh
cF9keCkNCj4gICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fg0KPiAgICAgICAgfCAgICAgICAgICAgICAgICAgb2ZfcHJvcGVydHlfcmVhZF91MzINCj4gZHJp
dmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtY3AxMTAtdXRtaS5jOjM2MToxNzoNCj4gbm90ZTog
ZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNo
IGZ1bmN0aW9uDQo+IGl0IGFwcGVhcnMgaW4NCj4gZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZl
YnUtY3AxMTAtdXRtaS5jOjM2MTo0MToNCj4gZXJyb3I6IGV4cGVjdGVkIOKAmDvigJkgYmVmb3Jl
IOKAmGlm4oCZDQo+ICAgIDM2MSB8ICAgICAgICAgICAgICAgICBvZl9wcm9wZXJ0eV9mb3JfZWFj
aF91MzIoZGV2LT5vZl9ub2RlLA0KPiAic3dhcC1keC1sYW5lcyIsIHByb3AsIHAsIHN3YXBfZHgp
DQo+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeDQo+
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA7DQo+ICAg
IDM2MiB8ICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChzd2FwX2R4ID09IHBvcnRfaWQpDQo+
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgIH5+DQo+IGRyaXZlcnMvcGh5L21hcnZl
bGwvcGh5LW12ZWJ1LWNwMTEwLXV0bWkuYzozMDE6MTM6DQo+IGVycm9yOiB1bnVzZWQgdmFyaWFi
bGUg4oCYc3dhcF9keOKAmSBbLVdlcnJvcj11bnVzZWQtdmFyaWFibGVdDQo+ICAgIDMwMSB8ICAg
ICAgICAgdTMyIHN3YXBfZHggPSAwOw0KPiAgICAgICAgfCAgICAgICAgICAgICBefn5+fn5+DQo+
IGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWNwMTEwLXV0bWkuYzoyOTk6MjM6DQo+IGVy
cm9yOiB1bnVzZWQgdmFyaWFibGUg4oCYcOKAmSBbLVdlcnJvcj11bnVzZWQtdmFyaWFibGVdDQo+
ICAgIDI5OSB8ICAgICAgICAgY29uc3QgX19iZTMyICpwOw0KPiAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgXg0KPiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1jcDExMC11dG1p
LmM6Mjk4OjI2Og0KPiBlcnJvcjogdW51c2VkIHZhcmlhYmxlIOKAmHByb3DigJkgWy1XZXJyb3I9
dW51c2VkLXZhcmlhYmxlXQ0KPiAgICAyOTggfCAgICAgICAgIHN0cnVjdCBwcm9wZXJ0eSAqcHJv
cDsNCj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn4NCj4gY2MxOiBhbGwg
d2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMNCj4NCj4NCj4+IFNpZ25lZC1vZmYtYnk6
IEpvc3VhIE1heWVyIDxqb3N1YUBzb2xpZC1ydW4uY29tPg0KPj4gLS0tDQo+PiAgIGRyaXZlcnMv
cGh5L21hcnZlbGwvcGh5LW12ZWJ1LWNwMTEwLXV0bWkuYyB8IDE3ICsrKysrKysrKysrKysrKysr
DQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWNwMTEwLXV0bWkuYyBiL2RyaXZlcnMv
cGh5L21hcnZlbGwvcGh5LW12ZWJ1LWNwMTEwLXV0bWkuYw0KPj4gaW5kZXggNDkyMmE1ZjMzMjdk
Li41ZTQwM2Y4NDJlOWEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1t
dmVidS1jcDExMC11dG1pLmMNCj4+ICsrKyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1
LWNwMTEwLXV0bWkuYw0KPj4gQEAgLTYyLDYgKzYyLDggQEANCj4+ICAgI2RlZmluZSAgIFNRX0FN
UF9DQUxfTUFTSwkJCUdFTk1BU0soMiwgMCkNCj4+ICAgI2RlZmluZSAgIFNRX0FNUF9DQUxfVkFM
CQkJMQ0KPj4gICAjZGVmaW5lICAgU1FfQU1QX0NBTF9FTgkJCQlCSVQoMykNCj4+ICsjZGVmaW5l
IFVUTUlfRElHX0NUUkwxX1JFRwkJCTB4MjANCj4+ICsjZGVmaW5lICAgU1dBUF9EUERNCQkJCUJJ
VCgxNSkNCj4+ICAgI2RlZmluZSBVVE1JX0NUUkxfU1RBVFVTMF9SRUcJCQkweDI0DQo+PiAgICNk
ZWZpbmUgICBTVVNQRU5ETQkJCQlCSVQoMjIpDQo+PiAgICNkZWZpbmUgICBURVNUX1NFTAkJCQlC
SVQoMjUpDQo+PiBAQCAtMTA0LDYgKzEwNiw3IEBAIHN0cnVjdCBtdmVidV9jcDExMF91dG1pX3Bv
cnQgew0KPj4gICAJc3RydWN0IG12ZWJ1X2NwMTEwX3V0bWkgKnByaXY7DQo+PiAgIAl1MzIgaWQ7
DQo+PiAgIAllbnVtIHVzYl9kcl9tb2RlIGRyX21vZGU7DQo+PiArCWJvb2wgc3dhcF9keDsNCj4+
ICAgfTsNCj4+ICAgDQo+PiAgIHN0YXRpYyB2b2lkIG12ZWJ1X2NwMTEwX3V0bWlfcG9ydF9zZXR1
cChzdHJ1Y3QgbXZlYnVfY3AxMTBfdXRtaV9wb3J0ICpwb3J0KQ0KPj4gQEAgLTE1OSw2ICsxNjIs
MTMgQEAgc3RhdGljIHZvaWQgbXZlYnVfY3AxMTBfdXRtaV9wb3J0X3NldHVwKHN0cnVjdCBtdmVi
dV9jcDExMF91dG1pX3BvcnQgKnBvcnQpDQo+PiAgIAlyZWcgJj0gfihWREFUX01BU0sgfCBWU1JD
X01BU0spOw0KPj4gICAJcmVnIHw9IChWREFUX1ZBTCA8PCBWREFUX09GRlNFVCkgfCAoVlNSQ19W
QUwgPDwgVlNSQ19PRkZTRVQpOw0KPj4gICAJd3JpdGVsKHJlZywgUE9SVF9SRUdTKHBvcnQpICsg
VVRNSV9DSEdEVENfQ1RSTF9SRUcpOw0KPj4gKw0KPj4gKwkvKiBTd2FwIEQrL0QtICovDQo+PiAr
CXJlZyA9IHJlYWRsKFBPUlRfUkVHUyhwb3J0KSArIFVUTUlfRElHX0NUUkwxX1JFRyk7DQo+PiAr
CXJlZyAmPSB+KFNXQVBfRFBETSk7DQo+PiArCWlmIChwb3J0LT5zd2FwX2R4KQ0KPj4gKwkJcmVn
IHw9IFNXQVBfRFBETTsNCj4+ICsJd3JpdGVsKHJlZywgUE9SVF9SRUdTKHBvcnQpICsgVVRNSV9E
SUdfQ1RSTDFfUkVHKTsNCj4+ICAgfQ0KPj4gICANCj4+ICAgc3RhdGljIGludCBtdmVidV9jcDEx
MF91dG1pX3BoeV9wb3dlcl9vZmYoc3RydWN0IHBoeSAqcGh5KQ0KPj4gQEAgLTI4NSw3ICsyOTUs
MTAgQEAgc3RhdGljIGludCBtdmVidV9jcDExMF91dG1pX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQ0KPj4gICAJc3RydWN0IG12ZWJ1X2NwMTEwX3V0bWkgKnV0bWk7DQo+
PiAgIAlzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpwcm92aWRlcjsNCj4+ICAgCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqY2hpbGQ7DQo+PiArCXN0cnVjdCBwcm9wZXJ0eSAqcHJvcDsNCj4+ICsJY29uc3QgX19i
ZTMyICpwOw0KPj4gICAJdTMyIHVzYl9kZXZpY2VzID0gMDsNCj4+ICsJdTMyIHN3YXBfZHggPSAw
Ow0KPj4gICANCj4+ICAgCXV0bWkgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnV0bWkpLCBH
RlBfS0VSTkVMKTsNCj4+ICAgCWlmICghdXRtaSkNCj4+IEBAIC0zNDUsNiArMzU4LDEwIEBAIHN0
YXRpYyBpbnQgbXZlYnVfY3AxMTBfdXRtaV9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikNCj4+ICAgCQkJfQ0KPj4gICAJCX0NCj4+ICAgDQo+PiArCQlvZl9wcm9wZXJ0eV9m
b3JfZWFjaF91MzIoZGV2LT5vZl9ub2RlLCAic3dhcC1keC1sYW5lcyIsIHByb3AsIHAsIHN3YXBf
ZHgpDQo+PiArCQkJaWYgKHN3YXBfZHggPT0gcG9ydF9pZCkNCj4+ICsJCQkJcG9ydC0+c3dhcF9k
eCA9IDE7DQo+PiArDQo+PiAgIAkJLyogUmV0cmlldmUgUEhZIGNhcGFiaWxpdGllcyAqLw0KPj4g
ICAJCXV0bWktPm9wcyA9ICZtdmVidV9jcDExMF91dG1pX3BoeV9vcHM7DQo+PiAgIA0KPj4NCj4+
IC0tLQ0KPj4gYmFzZS1jb21taXQ6IDRkZTQ4MDI2NDk0OGNiZjJiMDhhNzJjMzllZTEyMmE5Zjk3
NjFlMDMNCj4+IGNoYW5nZS1pZDogMjAyNDA3MDQtbXZlYnUtdXRtaS1waHktODRhYTNiZjM5NTdk
DQo+Pg0KPj4gU2luY2VyZWx5LA0KPj4gLS0gDQo+PiBKb3N1YSBNYXllciA8am9zdWFAc29saWQt
cnVuLmNvbT4NCg0KDQotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
