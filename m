Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5A0CD1292
	for <linux-phy@archiver.kernel.org>; Sun,  7 Apr 2024 22:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Content-ID:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLduDEKUrmEMWHhRy6pe1LqBJU+EETS+ogS0+XpF9qM=; b=ZmHHo8A/h4q2yn
	nULuQ7wNvgYrCXrC+vVk7nkHCQCOhy2vDdCLC4ssRdcT5jVw7v05iRqJ+C3vdTVPH2ucGQHvImPP1
	JpvqRiRprMxoE/ViFNKv2hgS/7AmB+ve69nd/1Q9q9I981gcBSMIzKQ8rOar9Xfi6czm7EISA5sO+
	HNR9OIlDjNHReHjZGO6sMcdbQkCRgut68AsKhnZ5cr5AvrZhmgxfxrI8+FECxqk/a9u37FKPRlH2q
	R44DsTThVBEFyWu4+Q1eZ8fdrVy04u6EGb0tirGc+nMQrqgrSfPc3t7RQq4gW7ota/bgtwl39K5bJ
	pOVV/hzkdNpz6UTYZJpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtave-0000000DdkF-2w3f;
	Sun, 07 Apr 2024 22:23:58 +0000
Received: from de-smtp-delivery-113.mimecast.com ([194.104.111.113])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtavZ-0000000Ddj6-3Sxo
	for linux-phy@lists.infradead.org;
	Sun, 07 Apr 2024 22:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com; s=toradex-com;
	t=1712528630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sC5GcZXyrePCCWR3bYKipQizSJgKT2ChbUtbwXDDRXk=;
	b=WwoOYYniS//rIYXL2ZsupWn+XVhXH2vQr9EZ4gMaFr2hzMreU1+jiP+X8pKZYwEp9XBAzR
	F9CduJxlwChOn3mrfxXqvwHQ/KrnYcM8SxR8vU2ZXEYpKINsNyqk1crxWRkst3dX0a2Q+B
	UrF6g4LAx6TmD993LfaO5gRu7kj1Rio=
Received: from ZRAP278CU002.outbound.protection.outlook.com
 (mail-switzerlandnorthazlp17010000.outbound.protection.outlook.com
 [40.93.85.0]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-74-bM6qDtXDPemaFBk4aDyCWQ-1; Mon, 08 Apr 2024 00:23:48 +0200
X-MC-Unique: bM6qDtXDPemaFBk4aDyCWQ-1
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:3b::9) by
 GV0P278MB1096.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:4f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.46; Sun, 7 Apr 2024 22:23:46 +0000
Received: from ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ff81:7388:f0a:3555]) by ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ff81:7388:f0a:3555%7]) with mapi id 15.20.7409.042; Sun, 7 Apr 2024
 22:23:46 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>
CC: "hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>, "linux-imx@nxp.com"
	<linux-imx@nxp.com>, "robh@kernel.org" <robh@kernel.org>, "kishon@kernel.org"
	<kishon@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>,
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>, "yang.lee@linux.alibaba.com"
	<yang.lee@linux.alibaba.com>, "sergio.paracuellos@gmail.com"
	<sergio.paracuellos@gmail.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "tharvey@gateworks.com"
	<tharvey@gateworks.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "s.hauer@pengutronix.de"
	<s.hauer@pengutronix.de>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "imx@lists.linux.dev"
	<imx@lists.linux.dev>, "festevam@gmail.com" <festevam@gmail.com>
Subject: Re: [PATCH v2] phy: freescale: imx8m-pcie: fix pcie link-up
 instability
Thread-Topic: [PATCH v2] phy: freescale: imx8m-pcie: fix pcie link-up
 instability
Thread-Index: AQHagBc70+962RNE/Eq5VMcSCZxzu7FbBqkAgAJtqoA=
Date: Sun, 7 Apr 2024 22:23:45 +0000
Message-ID: <7ba92b06aecb4d8894ba9ec8f92376bd971d2a72.camel@toradex.com>
References: <20240327071946.8869-1-marcel@ziswiler.com>
	 <171239512402.352254.17030670986383011631.b4-ty@kernel.org>
In-Reply-To: <171239512402.352254.17030670986383011631.b4-ty@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZR0P278MB0683:EE_|GV0P278MB1096:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 2HdSL1wxdqhLSSJb0hg/0nLJjWQoYAHEsdI55cJGxsClvOsetc/ahyisPQnvtj9/M4VS902GG9vyNlK1FHWWspo6tFDjamrqh9G6n00U10qelYaQT0dRZhfhvdFI2VdQVW7zdAEh9mOTz4xlsFmSpEq4XpRrS3LVnwjuvlSkxcZM8uv60bovAJ/96IuNFHENcUzCtEvoBqn5rSv8yLaItd1LAJHxRKEPRTeg5BN0g/umVXvwQz+eGmrdNBlm6lTGjD+yZNfqRU/IGelxYZy3d302MCuGvH9F5IXy2e3URKQx1SUbK2JfBbWTJbZJYnljgiafh7l64A+xnaueITdn9G7oSdoQhWlYf33PDF+OBvQRHYKvd3PqEqBo0kKINkptWiz9gZimm/ob9wqabdyYag4FbFbMbeter9fftY4D9DgodB2htcL8hl6Tjesujp4G+K+wP5vpPIzko4BVNwciUS1nLjJwc+ScexvV+r/YL3ajdP6VLravyvqEGb7FMOl3Zu7/G90g/sfA9thPBsMzWADlYQe3wd9wPCV0bjf4kZw/BZOuM6lye+Cl2ZBTwmsh6eSFnlaqy0oz3V6aZRrZBhVKW2t5uKP/Mq0YvG2TkrvsyT+hwl7wKeuIBVFdPjaxTkJBbpBJVAqK8DiCzR+AYEeJHsWEPe5dWM1adcJB2Qg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEd5cTBsaTZBK0FIMUI1OXVWWWVnK3N6Yi9rUXFtTjNtUlVaZmR0MEpYbUFM?=
 =?utf-8?B?UTlIZDRwNDRtL09ZM2dVMUxwNmd1blRmQlFaVmNsdGZNaGlvQmhWZmhkRWd1?=
 =?utf-8?B?WGVBK0VjeDUwYVZSTkc0TFpqS0h2MXdUSkFPR1B4ZGZRUFVsZTFTTU9rWWw3?=
 =?utf-8?B?YkFKRHJQZGhxUUNFR00vYW0xK1VIYU1lZGtqanBiZmNFajB2bzhub2dtZzZX?=
 =?utf-8?B?TTNLRXJ6c05mV2o3M3lVa0Vla0dDRzB2dTBIYXlPdjZybG5SeS82dmhORE1J?=
 =?utf-8?B?Y1BIcGdOamxlMktzZDJXTmV2WWdMYVlibFhqclUvQUYzZlhiZjlScm84d2lK?=
 =?utf-8?B?MnJ5c2c3RTRjMVpMOTdRYVAwMVlESzE1TlZlV3NFejJpUEFYTmo0Y2hZTHBR?=
 =?utf-8?B?ZGtLU091elFLRUZBc2UyNlcraklFSStXa05TT0lXQ1RJYndkRzhEMTVYanM4?=
 =?utf-8?B?aVlvdWpvQXkxUkhnSTFsQVdMcEdpTFpvTDRiZDRweWlzamFvcm9MWkllOFJH?=
 =?utf-8?B?NmdCWkppYlFxSHZYUDdKNXhuUUgrcExXRHVpT0djcmprbzErRDZ1ajM4OFFQ?=
 =?utf-8?B?WTZDYjVEb3hFTjJ4YWtwby9Edkt4OGI5NENvbGVmanZiMjFYMFNSNTRSZ3d3?=
 =?utf-8?B?eFZ6bTNGQk04eHErQzJFWEhObDFkUWkrNnlBS1pwNHlpekpnTk1IL3lMTHBu?=
 =?utf-8?B?ZlBZdnlQMWtVNDF4VVU3Q0ZqaG9WYWRXWEZJQnVVWXNYcHRWelU0b2IzTDBX?=
 =?utf-8?B?MTZvOHJjNkVhMGZ4aUlvT0F2OHNlWGNKM2pNcXB6bC9vZHh3UGViWk5RKzFD?=
 =?utf-8?B?Q0cvallhbC83ZDgzZ2ZydVVDTDY2aDZWc3VyUXhHUWY1bmJoaEMza1JRT2tQ?=
 =?utf-8?B?UGlHMXovcFE5RUovdmY0QmZua0hQcGFLTjJXaDBoeGd2WE55NHd5VDZjL0RB?=
 =?utf-8?B?dnhpVDBReW9vQWYzSktzK0JvdmNHQ2tyMkZTc29INFBDMXpBUURhVVlQOHpV?=
 =?utf-8?B?K29DbjU4Y2FCUjByWllQTTc3ZVlJdHh0Zmd4eS9wRFJUNjU3V2g4QVZheVZt?=
 =?utf-8?B?cmpVcGhVZjJMb2lhMnJ1NzNVcVhYLzE1Y00xUHhxRWVmVGJSQ1Q5YTZycXcz?=
 =?utf-8?B?Zi9pRnFIY1NhdXJ0ZzVwOFIvNmcweVliYU13TmE0bDNySEJqaEpxdFRRQ3VN?=
 =?utf-8?B?ak94U0p4MnBFUDBOcTNOMnFHTGpVbVc2enhPbm91VnlWemlza2VSRG5jYWxE?=
 =?utf-8?B?MUdzQVlQSy8zemJpYmY5TWxzbkl2TWpEQjU5TjJ6YzA4blE5NDljd2Q3QStv?=
 =?utf-8?B?c05ySHh0cnRTT0VKeHR2d3ExL1lWdVB5SkJITVg5OUZMTXhRVmkzbGhHdzJR?=
 =?utf-8?B?MytEaGxuN21ybzJZTXV2YVJvaXNVZGNwUW9xbFozb0RPTTFPdDNXQy9YdXg5?=
 =?utf-8?B?SEU5MVc5dEFQbk54ZGlaR2hheSs2czMvV2FXb1JYRmJONE9TN3l3M2o4cFA2?=
 =?utf-8?B?TTNDZ3U5ZUhSU0ZNTFdUVEVGS2U5WDJ1dWRqK2pWcWtDOEsrSUZkSkV5OTZ6?=
 =?utf-8?B?U1dkbjJHRm1RamtIYjVvSThiTWJ1WFdwbTRuOGJ6dVlsb0FEUDNXVFZFV3JN?=
 =?utf-8?B?bnVVZFNDNXc0VVRCVVlzRzZmZjN6d09OYURsdHNkWVlxU3NZYzNlZG15cG1Z?=
 =?utf-8?B?K3ZiWjY4VEVEdUpnK3JLK3ZQQmZMMDdkK1lqWGNGYzhPTE5yNzBLVlpZeS81?=
 =?utf-8?B?eVpiU0dvME1IM0RCclYwcFIxNHpVZHhocVQ4WXd0YXN0eVdORjlqalU3QzNn?=
 =?utf-8?B?NU02WHk4SU40dDJlSG9UMThLWWxBOWh4MElaSEg5Z2ovcHZGeTJ0dm9ZU2NV?=
 =?utf-8?B?MmtVVlFXMmtwQ0NHTGNLWFYwZW1CdkxUR0hiRXp6RWpNYlBlbDcydEFSVFVB?=
 =?utf-8?B?ZmlWYzl3NHVxdzlPQlJRWmEvU3IxSWJzOTBSOG56cVBLUXNXUGNXR3VlUTVN?=
 =?utf-8?B?ZzdkL05lSEIzZG5WYzFOdDd4N3JjcTF6VTIzalYwVDN2c3Q1anZIVDQ1YzVu?=
 =?utf-8?B?OUQvZ3M1WVVwVjNTRzNQT1RBUHhtS3h5NkxqZmlFWXg3ZkFyN1dKWTJyemtv?=
 =?utf-8?B?RkRod1d6c1BER29YRFB0Zjloc0dOb3Z2RC9DMEVlUW1MRzd2Qk9VVzdMb3hL?=
 =?utf-8?B?aTVmSEh6cUhYR294cjRTR05IRE1QUzViOE15T3E0dnBoR09zU3hzbDUrU0JJ?=
 =?utf-8?B?a205RU5FZzNPbXpCKy8wWmZJVXVnPT0=?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0683.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3d006b-4318-4aed-6685-08dc575163eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2024 22:23:45.9583
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hvUWULUPV2p8PBeTHaEjDT16wQFLCOC99PJoLBJ9oVEbqLb/6EVYRujFRu0b3lYly+FFgLTdKtr6fUU7v8rn1wHb05eFshDN6RjYb5mMjwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB1096
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-ID: <44D0177C0401514AB281A7FB79472847@CHEP278.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_152354_047783_F886DC46 
X-CRM114-Status: GOOD (  19.37  )
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

SGkgVmlub2QNCg0KT24gU2F0LCAyMDI0LTA0LTA2IGF0IDE0OjQ4ICswNTMwLCBWaW5vZCBLb3Vs
IHdyb3RlOg0KPiANCj4gT24gV2VkLCAyNyBNYXIgMjAyNCAwODoxOTozNyArMDEwMCwgTWFyY2Vs
IFppc3dpbGVyIHdyb3RlOg0KPiA+IE9uIHRoZSBpLk1YIDhNIE1pbmksIHRoZSBBVVhfUExMX1JF
RkNMS19TRUwgaGFzIHRvIGJlIGxlZnQgYXQgaXRzIHJlc2V0DQo+ID4gZGVmYXVsdCBvZiBBVVhf
SU4gKFBMTCBjbG9jaykuDQo+ID4gDQo+ID4gQmFja2dyb3VuZCBJbmZvcm1hdGlvbjoNCj4gPiBJ
biBvdXIgYXV0b21hdGVkIHRlc3Rpbmcgc2V0dXAsIHdlIHVzZSBEZWxvY2sgTWluaS1QQ0llIFNB
VEEgY2FyZHMgWzFdLg0KPiA+IFdoaWxlIHRoaXMgc2V0dXAgaGFzIHByb3ZlbiB2ZXJ5IHN0YWJs
ZSBvdmVyYWxsIHdlIG5vdGljZWQgdXBzdHJlYW0gb24NCj4gPiB0aGUgaS5NWCA4TSBNaW5pIGZh
aWxzIHF1aXRlIHJlZ3VsYXJseSAoYWJvdXQgNTAvNTApIHRvIGJyaW5nIHVwIHRoZQ0KPiA+IFBD
SWUgbGluayB3aGlsZSB3aXRoIE5YUCdzIGRvd25zdHJlYW0gQlNQIDUuMTUuNzFfMi4yLjIgaXQg
YWx3YXlzIHdvcmtzLg0KPiA+IEFzIHRoYXQgb2xkIGRvd25zdHJlYW0gc3R1ZmYgd2FzIHF1aXRl
IGRpZmZlcmVudCwgSSBmaXJzdCBhbHNvIHRyaWVkDQo+ID4gTlhQJ3MgbGF0ZXN0IGRvd25zdHJl
YW0gQlNQIDYuMS41NV8yLjIuMCB3aGljaCBmcm9tIGEgUENJZSBwb2ludCBvZiB2aWV3DQo+ID4g
aXMgZmFpcmx5IHZhbmlsbGEsIGhvd2V2ZXIsIGFsc28gdGhlcmUgdGhlIFBDSWUgbGluay11cCB3
YXMgbm90IHN0YWJsZS4NCj4gPiBDb21wYXJpbmcgYW5kIGRlYnVnZ2luZyBJIG5vdGljZWQgdGhh
dCB1cHN0cmVhbSBleHBsaWNpdGx5IGNvbmZpZ3VyZXMNCj4gPiB0aGUgQVVYX1BMTF9SRUZDTEtf
U0VMIHRvIElfUExMX1JFRkNMS19GUk9NX1NZU1BMTCB3aGlsZSB3b3JraW5nDQo+ID4gZG93bnN0
cmVhbSBbMl0gbGVhdmluZyBpdCBhdCByZXNldCBkZWZhdWx0cyBvZiBBVVhfSU4gKFBMTCBjbG9j
aykuDQo+ID4gVW5mb3J0dW5hdGVseSwgdGhlIFRSTSBkb2VzIG5vdCBtZW50aW9uIGFueSBmdXJ0
aGVyIGRldGFpbHMgYWJvdXQgdGhpcw0KPiA+IHJlZ2lzdGVyIChib3RoIGZvciB0aGUgaS5NWCA4
TSBNaW5pIGFzIHdlbGwgYXMgdGhlIFBsdXMpLg0KPiA+IE5YUCBjb25maXJtZWQgdGhlaXIgdmFs
aWRhdGlvbiBjb2RlcyBmb3IgdGhlIGkuTVg4TU0gUENJZSBkb2Vzbid0DQo+ID4gY29uZmlndXJl
IGNtbl9yZWcwNjMgKG9mZnNldDogMHgxOEMpLg0KPiA+IEJUVzogT24gdGhlIGkuTVggOE0gUGx1
cyB3ZSBoYXZlIG5vdCBzZWVuIGFueSBpc3N1ZXMgd2l0aCBQQ0llIHdpdGggdGhlDQo+ID4gZXhh
Y3Qgc2FtZSBzZXR1cCB3aGljaCBpcyB3aHkgSSBsZWZ0IGl0IHVuY2hhbmdlZC4NCj4gPiANCj4g
PiBbLi4uXQ0KPiANCj4gQXBwbGllZCwgdGhhbmtzIQ0KPiANCj4gWzEvMV0gcGh5OiBmcmVlc2Nh
bGU6IGlteDhtLXBjaWU6IGZpeCBwY2llIGxpbmstdXAgaW5zdGFiaWxpdHkNCj4gwqDCoMKgwqDC
oCBjb21taXQ6IDNhMTYxMDE3ZjFkZTU1Y2M0OGJlODFmNjE1NjAwNGMxNTFmMzI2NzcNCg0KU29y
cnksIGJ1dCBpdCBpcyBzbGlnaHRseSBjb25mdXNpbmcgd2hldGhlciB2MSBvciB2MiBub3cgZ290
IGFwcGxpZWQuIEkgYmVsaWV2ZSB2MSBidXQgdGhlbiBvbmx5IHRoZSBjb21taXQNCm1lc3NhZ2Vz
IGRpZmZlci4gSG93ZXZlciwgcGxlYXNlIG5vdGUgdGhhdCBvbmx5IHYyIGluY2x1ZGVkIGluZm9y
bWF0aW9uIG9uIGhvdyB0byBwcm9jZWVkIGNvbmNlcm5pbmcNCmJhY2twb3J0aW5nIHRvIHN0YWJs
ZSA2LjEueC4NCg0KVGhhbmtzIQ0KDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gLVZpbm9kDQoN
CkNoZWVycw0KDQpNYXJjZWwNCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
