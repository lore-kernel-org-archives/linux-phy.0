Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EEC4CE8359
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 15:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+gDpJe/s2PIuo80fB+o1NLpy1xq1iFufdHbDF9JsQic=; b=ojPg+h7p7gTtk+
	OFMHkZjzn6nNLof0F5Rx6ighkPyPp2/Wk7lyCbM6/u05xW4ei1ZWXp8T82vPJqXGWpE9Ek9m9tP90
	4eaw4plFgiXwpxFBK1H5WuLbyOes62oMsjSKrk0YHE7Q11X/uniY2S7Bvs0C7RzbS4/BIHK+p5Dzy
	qR0lc7+7VCiaKcUTDLGWsRDb+U7bJILt+4jsRMWlCzibIcJTYRfD0qa6kVbzEOukDVuYK/SBNJSwX
	bxsz6WBA+q3OBHd9Jdau0Wzm5E5/LPpMSXtG9veMK5ATFbw1rENzPFtdm89PaUnHGLjR8lJZHnBc+
	M6vzE4NAJsrrfWd3Ntpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svHvr-000000000Qd-3BIg;
	Mon, 30 Sep 2024 15:03:27 +0000
Received: from mail-sh0chn02on20727.outbound.protection.partner.outlook.cn ([2406:e500:4420:2::727] helo=CHN02-SH0-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su6Lz-0000000AVGW-0oSQ
	for linux-phy@lists.infradead.org;
	Fri, 27 Sep 2024 08:29:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nR6iM9wH5CHl1UJhyjhRbjXnle2G39poltSjwML+i4xNB3hddkgjUBz3qb9b2k5SoXYXm2/D18+yB0wNgU9l7wUk5X8vX6rKOEtvrlAblIj983NZRtltX2yy+CPkckUAWYjHL52tKqArG00TvD+YAlTZNCpymRRsxrvojMG6Oca+ekGCDEL3n/gO3XiPQMYqDv28zH8lAY1j4zSHvZ3Rpuj7FnZfH0Z5lv89SDzrpD/EaxfRw2yQrdz6NUb2zE+uliFt/S/tv3kHHnf0yM2AMAa0HfGfOxxHwhDRcoQs3UIqaMMan5m20budoIwdoTt2K54XUzkt85EyLLzyO6wmJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aJo11stZDhM4tOaFBh9cMYRnBVuhn6lZ/bKrvBp3Zrs=;
 b=f0w4CdJlXUhHc42XNPyd8ZYyRJyogmKPmnT1tqC7jIaB5Tu7jiokHPiiTSm2IQYNd5g7sH2G7zS/JV+dUu23bMWS1tOpkj9HcYmpzwZKg2MFTqEsSd2nbPIeSzXQ3UtYae1vLb0gEpddF+bX18OPJ4r01op3TURSgc/u2M3lVmWEWy4I8AA5Gbv0Uh8l49hPXSAY7hnQ7NVrT/Rcp2ItyebDZxVZmDZCDAKAJQ4jSy/Wxoxpqcxzia6iYiHkTNmo6dbOM9K6yhj1BrfHRXCIA9vhROYUNu/5eQOcmQhDhpJHAkcxZIERqCC9V9P9wX3/yVRPw9xonCJiHx+ur0puJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn (10.2.9.230) by
 NTZPR01MB1116.CHNPR01.prod.partner.outlook.cn (10.2.8.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.31; Fri, 27 Sep 2024 08:14:51 +0000
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::512d:38d7:ed9f:dfbe]) by
 NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn ([fe80::512d:38d7:ed9f:dfbe%5])
 with mapi id 15.20.7962.016; Fri, 27 Sep 2024 08:14:51 +0000
From: Keith Zhao <keith.zhao@starfivetech.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"helpdesk@kernel.org" <helpdesk@kernel.org>
Subject: RE: Bouncing maintainer: Shengyang Chen
Thread-Index: AQHbDr/2zQS+owi3UUOHLQFA0JZXVbJrTENg
Date: Fri, 27 Sep 2024 08:14:51 +0000
Message-ID: <NTZPR01MB1050F6BD9AF195812C3FB7CCEE6B2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NTZPR01MB1050:EE_|NTZPR01MB1116:EE_
x-ms-office365-filtering-correlation-id: b7ec8b31-9269-44f7-a2c4-08dcdecc760f
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|41320700013|38070700018;
x-microsoft-antispam-message-info: 9F3Huz7yIikIlcJv71868kppVUvKuhwm+QnB5odOcoGJqh9d+7cIO5eTGIbFWsfz3F24xmNe7ihU4pDAC8F2WNn/4Py+w4gkiqK/KbUPTKHu+vzE4SO0/yS4o+UMZXtXYI4OTrf6/Pg3SzwYPg/+tQ2FMkBr39JQ63OMji6yisVWCjUqVW628PGXavWlgdl4UCEaGq/KcSMuVeHxEquLyYkl/dfTi6LqSDbyjIvsH+7Pbv6/RTo7NctRTeOlf9sGYFUy974NzlTRz4ysELi9VlxNdBmJqYZmH97H2FppMUwbJ2ZB83GyPfLIv0fI05WYbpiqLyyoYASC+bBxvZCdzx+nS3f2bV9dynRFW90eyWVgPWW83aUltHx7AZ44zpyMOHCtjs/zYYb/kiGWV/3N70E4bWvbw/OK5AZTa2449Ijo0bB8VN19EOo8DZjXiGuWmBGoHBVSTm0e8BzjAkzYllCy+2QzTCoAMwCpNbLVOzT40iDJZIMX/cqWl1FdHKC25xnCoA2AHMHymZh+QOd/g/auuf6cLLP4tH8w0Dt5KQYNxFJFApdSvtGueZ94yOT1OmO4mNBPUVicH9iL2zr+J7VuyvAlyH/Avd3Ql/slPptgMTzBdsQNBv1o0tGVPDvL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RSs2ZE5lK0tUM1RSVCtZRlNiSjk1NGpIOGZtVmx4UHdjamlaZ0JHYXRIZW5p?=
 =?utf-8?B?d1kydDYyREhRdFlkcktsTStNeTB4YlBFeFFOTDJlMXE4OXFka21LSWlyV2lo?=
 =?utf-8?B?RmM4QWY2Z001Nm5jSThveUJ5c2xHRTdYYXpNcHhJSTc1anBUcksza01aNCtI?=
 =?utf-8?B?azBiTTh4d2N3Sm1OaUQ0VnVGRkRpM3RoU3ZveUlpWnVjR3Jaa004ODNMT3Zo?=
 =?utf-8?B?YWVtUUZEZXpDaUdEVC9LZFJxcjM0N1U0N0VuSkhvdDc4L2dzWHJmTU9Xa3pY?=
 =?utf-8?B?OTM5Q29uck42WXA5SEZmTDVuek1nS2tuRHN5bFp6T2VoQUdPaUJsZXdzNzdR?=
 =?utf-8?B?SUNpSnJmYm1pT09yOXM1Tk05WG9BTUtWcks1R1V0L1ArSVcxbHZVb3BTYVVm?=
 =?utf-8?B?NS92Vk9neWFYVGd5Y3I2VUd3eHdrMlg2R1B3RllRSnZWQXlHbURmZHJZdW1u?=
 =?utf-8?B?ZHRITEJlUzkxdDNVenJOSE5oZTVkTVRSS05aQko5bGRnK1ZyZ1BTZ28zK1Yz?=
 =?utf-8?B?VjJ1TmdrRGZTTUJWT3RUOE9ScXNKalc3OXBFem1lMEFvZi9Nb2FrUitLNVFC?=
 =?utf-8?B?eG9seTM4T2pqT2c3WG55bHhYTDlEcjdzY1VuN2wycWJIVzRQUFNpbHdlY2tO?=
 =?utf-8?B?akZNaU1aV1BVUTZUV1c3dUZvaHkxbFNTYVNGTFVEaGhsZG9kazlxQWExZnlx?=
 =?utf-8?B?TW1wOHZHMEJUTHNWMmNHWlRVMEJ3elYxelBJYytKeEZwY2pkZWhVOUpFajhW?=
 =?utf-8?B?eU5rd2dvM214VmFTbWlrdTgyVEFrbEpNUnhiM2xGMldEaUhjMFp6eFFNVDZz?=
 =?utf-8?B?OWtxYkxtSmFzQWNnQTlSSW8yZHk2c1d1ektqbDRUelJ4d2FRQmN5RDBtUGNO?=
 =?utf-8?B?eVNFcE5oNHRJU0c5TmtaSVU4M0daS0RxQ01VRGpDRTQ3RDcza2hTYjFNRlBB?=
 =?utf-8?B?NHl6NEs4c1pIbE5rUW9EbVVGYWo5T0U0eWtZWDRzM0FNL0RicSt2dEd3V1JZ?=
 =?utf-8?B?aUZwOGRFT3Rta05pR2h3ZlFFSEpNbU92UFhsWFJtdDd5U2VULy9MZlJ4ZlRi?=
 =?utf-8?B?alhuNEU3SkRHakxVMjVxT1lQU3kxdWZFMERydU1aZ25CdGVlNEZsZFVhNVNi?=
 =?utf-8?B?dnBlS2RkdTd4d1NYWmkzQkJCV3ZVdU9xR3lWVzREeTQrU2lwRjVNQlhDOG1K?=
 =?utf-8?B?R0VMYkpZam5xaHBPMVlLTTJMRHRNU0t0TEdCbzl4Z3FzZ3RjNWMzUU5rcTVa?=
 =?utf-8?B?MzRVVDYvN2xveWU0RHYwMDdZYzhwNGhQbGlGdU1iam5Ub3Z4a3VvZHpVZW9X?=
 =?utf-8?B?cGUyenhZSHVVd09hSkhHM1Y2bUtoak05OTZDSmhlMEg1VEpjRy8vaDhPV0VQ?=
 =?utf-8?B?MUdwWUw5RmpVZ25WcnI0RmZiTGNLOVdUaDZTSVhQZEI2UElvdkZsQ1pvK1Zu?=
 =?utf-8?B?dE1QbGFKd2dpNUc0S0xzNXZ4MmJuV2djbzc5dURwRjY1WlhVazBJcGlaRjEr?=
 =?utf-8?B?V0ZCWURUcTNzRXdDUGczMEhsS3RRRTNrWHV0MDN3Ny9ISEdob3Z3VU9CbjF6?=
 =?utf-8?B?bGo2UE0vd3U4aksvZDdCS1QxUTRBZnlCWDlPQzV0R1M3QnpLWmVsN2d1VXA2?=
 =?utf-8?B?blgvaEJNcU1XaWZvTnQ5RGlmcGhsWGN2RUg1TmM2RzI1RHRvU2E4czVwdU5x?=
 =?utf-8?B?SkJvcVRqVEc4ZVJ0ODhxTmVocWdGTXU3bHg3R3VIZUtWeTBBMGNyNlp0aTRQ?=
 =?utf-8?B?bm90V21mT2dMUW1MTjZVdEU1VjJobVk4cXBRREYvSHkyWkFSdFBnZFJDZHdw?=
 =?utf-8?B?UjRScEFwWmpPb09jMkQ2MlFPZkFHUGRXWDdLMmZlQi9KbkdhR09Ddzltb1Ar?=
 =?utf-8?B?NGg4L1ZraXlLK2RnM2RYRHZ2TkVaL3dBZW12VjhGSWY1WE43SHNtYVdKOG9C?=
 =?utf-8?B?Smk1aUtwQnJNTEJkbVlsV3JHdXYzODdyeGJMbHNrYThpekRxTDVtakYzN2Zu?=
 =?utf-8?B?dEFmVmhoK3VsTmUvTzZjWVVpN05BQW9oVjJaSy9tYyt2MTJMaHBha1RmYmll?=
 =?utf-8?B?QmIzU0w3ODhWbGsyZ0VxaStEaHJTK2dyVXNDZlRaT3JHcjFIL0M5UVV4WFh4?=
 =?utf-8?B?c0JVNlZUUHhWUDQwQzREQWJUR1pROXJUNllwV2t3bjQ4S01TQ3VYRkl4MGt3?=
 =?utf-8?B?TEE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: b7ec8b31-9269-44f7-a2c4-08dcdecc760f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2024 08:14:51.4720
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jn1cGx7Hjnl2o1uSia44fC28LB/pXKDo8m0Z2i/tuf4VfZq8oaijDhj3kKUF50odffxzjpbUyq7zVXO3/H0OB8qWwafVh5djW6hJir1xWS4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1116
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_012931_354761_C81E8FA6 
X-CRM114-Status: GOOD (  15.73  )
X-Mailman-Approved-At: Mon, 30 Sep 2024 08:03:26 -0700
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

SGkgS29uc3RhbnRpbjoNCg0KSSB3aWxsIHN1Ym1pdCBhIHBhdGNoIHRvIHVwZGF0ZSB0aGUgTUFJ
TlRBSU5FUlMgZmlsZS4NCk06IFNoZW5neWFuZyBDaGVuIDxzaGVuZ3lhbmcuY2hlbkBzdGFyZml2
ZXRlY2guY29tPg0KDQpUaGFuayB5b3UgZm9yIHRoZSByZW1pbmRlci4NCg0KDQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtvbnN0YW50aW4gUnlhYml0c2V2IDxrb25zdGFu
dGluQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+IFNlbnQ6IDIwMjTlubQ55pyIMjXml6UgNDoyNg0K
PiBUbzogS2VpdGggWmhhbyA8a2VpdGguemhhb0BzdGFyZml2ZXRlY2guY29tPg0KPiBDYzogbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmc7IGhlbHBkZXNrQGtlcm5lbC5vcmcNCj4gU3ViamVj
dDogQm91bmNpbmcgbWFpbnRhaW5lcjogU2hlbmd5YW5nIENoZW4NCj4gDQo+IEhlbGxvOg0KPiAN
Cj4gSSdtIHJlYWNoaW5nIG91dCB0byBjby1tYWludGFpbmVycyBvZiB0aGUgZm9sbG93aW5nIHN1
YnN5c3RlbXM6DQo+IA0KPiAgIC0gU1RBUkZJVkUgSkg3MTEwIERQSFkgVFggRFJJVkVSDQo+IA0K
PiBUaGUgZW1haWwgYWRkcmVzcyBmb3Igb25lIG9mIHlvdXIgbWFpbnRhaW5lcnMgaXMgYm91bmNp
bmc6DQo+IA0KPiAgIE06IFNoZW5neWFuZyBDaGVuIDxzaGVuZ3lhbmcuY2hlbkBzdGFyZml2ZXRl
Y2guY29tPg0KPiANCj4gVGhlcmUgYXJlIHNldmVyYWwgcG9zc2libGUgY291cnNlcyBvZiBhY3Rp
b246DQo+IA0KPiAxLiBJZiB5b3Uga25vdyB0aGUgbmV3IGVtYWlsIGFkZHJlc3MgZm9yIHRoZSBt
YWludGFpbmVyLCBwbGVhc2UgYXNrIHRoZW0gdG8NCj4gICAgc3VibWl0IGEgcGF0Y2ggZm9yIE1B
SU5UQUlORVJTIGFuZCAubWFpbG1hcCBmaWxlcy4NCj4gDQo+IDIuIElmIHRoaXMgbWFpbnRhaW5l
ciBzdGVwcGVkIGF3YXkgZnJvbSB0aGVpciBkdXRpZXMsIG9yIGlmIGNvLW1haW50YWluZXJzIGFy
ZQ0KPiAgICBlcXVhbGx5IHVuYWJsZSB0byByZWFjaCB0aGVtIHZpYSBhbnkgb3RoZXIgbWVhbnMs
IHBsZWFzZSBzdWJtaXQgYSBwYXRjaCB0bw0KPiAgICBNQUlOVEFJTkVSUyB0byByZW1vdmUgdGhl
aXIgTTogZW50cnkuDQo+IA0KPiBUaGUgZ29hbCBpcyB0byBoYXZlIG5vIGJvdW5jaW5nIE06IGVu
dHJpZXMgaW4gdGhlIG1haW50YWluZXJzIGZpbGUsIHNvIHBsZWFzZQ0KPiBmb2xsb3cgdXAgYXMg
c29vbiBhcyB5b3UgaGF2ZSBkZWNpZGVkIG9uIHRoZSBjb3JyZWN0IGNvdXJzZSBvZiBhY3Rpb24u
DQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0tDQo+IEtvbnN0YW50aW4gUnlhYml0c2V2DQo+IExp
bnV4IEZvdW5kYXRpb24NCj4gDQo+IGJ1Z3NwcmF5IHRyYWNrDQotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
