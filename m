Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB02CA1001
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WMY9ryhJRKVvanZ3oH76AJCLTacLyT6z9XnGpOUD7s=; b=G3H7L0ic4w3RWF
	8L47Mk8bFwa22Uh6U+/WtMByYRmoU7HoLA9aPoaDdNtTHf/q9wKaw8/P9mFa5wUf0OBGKbuzhQuDY
	uT0VEMcsQGHw7Xh6z7U1eX8xaPi45ftvvE07BKAhkNn7m8Jnzc+KngF23qwSgWrr1JEWiWF+WE9U8
	XYK2iqq0jDjp4BosyuJ+MUDgUB7KuVbjAJDH8+01Qa0iNfm5FHKpL+C4Z1ZgCoWQ3rZVP3zcx88+U
	RgX0gJvFSYDvDW9n+UljcNjIXJFQdxDgCCsKBzQsHCwhEgEaFMmkY+Vvqr9K2nLlgVLAxu7L7WPhY
	R1rfmlBUCaCmuk58/71g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0US-000000066oh-0pVz;
	Fri, 29 Aug 2025 14:54:08 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urwoL-00000005PiR-06jL
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 10:58:27 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250829105818epoutp016db11572af5cdb07b970962b8c96f5c0~gN7Npy6QI1349513495epoutp01T
	for <linux-phy@lists.infradead.org>; Fri, 29 Aug 2025 10:58:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250829105818epoutp016db11572af5cdb07b970962b8c96f5c0~gN7Npy6QI1349513495epoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756465098;
	bh=KbXZsLg/Ue7PwUbZF2XDqNQLk+AaXNqWgxb8Ug1xzoo=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=sOxvIw4E6HlG5GO3fkt2pOd0U2sj7ZduR/swuv+PGLsza8lD4PLKZFcM3jXMpRMsU
	 hwEDhjzAHVzNg+A+iaJg5ni2AmAl4slysJNNh4GnNmpkP6NhYtVVtSHzmn9FYwG6pl
	 MIkbdB8Sqg1jLXlQRUflYrePkaQoDgfual6XuVJQ=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250829105817epcas5p494efd395966d195b9bc5c726c9377107~gN7MZgVqD1496314963epcas5p4g;
	Fri, 29 Aug 2025 10:58:17 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.92]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cCwGw0Vhsz2SSKg; Fri, 29 Aug
	2025 10:58:16 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250829105815epcas5p47f74045e2c06d71f16fac7b8ddcb9efe~gN7K8KPhO1496314963epcas5p4X;
	Fri, 29 Aug 2025 10:58:15 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250829105812epsmtip21b0817b549a0c83092589c33ae363fc6~gN7H6iEol0293702937epsmtip2h;
	Fri, 29 Aug 2025 10:58:12 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Pritam Manohar Sutar'"
	<pritam.sutar@samsung.com>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <andre.draszik@linaro.org>,
	<peter.griffin@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <igor.belwon@mentallysanemainliners.org>,
	<johan@kernel.org>, <m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <e8e99c16-ad40-4d79-be92-1aa55c13f9ea@kernel.org>
Subject: RE: [PATCH v7 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Fri, 29 Aug 2025 16:28:10 +0530
Message-ID: <263801dc18d3$d1e20950$75a61bf0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGSd8blfqR9gZc/NH28iGAFaSn12QHbdVSHAGa/K48CXY/t+wLwFCB2ArX7ZGwBn6FItwLUPA9DtJbmBNA=
Content-Language: en-us
X-CMS-MailID: 20250829105815epcas5p47f74045e2c06d71f16fac7b8ddcb9efe
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250822093022epcas5p42d8c16c851769dab0e1da9d45743ab1f
References: <20250822093845.1179395-1-pritam.sutar@samsung.com>
	<CGME20250822093022epcas5p42d8c16c851769dab0e1da9d45743ab1f@epcas5p4.samsung.com>
	<20250822093845.1179395-6-pritam.sutar@samsung.com>
	<20250824-rough-fresh-orangutan-eecb2f@kuoka>
	<007501dc1653$e36c3b50$aa44b1f0$@samsung.com>
	<83dc9435-5850-425d-b345-52e84ef9262c@kernel.org>
	<000401dc18cd$ec02a1b0$c407e510$@samsung.com>
	<e8e99c16-ad40-4d79-be92-1aa55c13f9ea@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_035825_711078_419199B2 
X-CRM114-Status: GOOD (  26.37  )
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

SGkgS3J6eXN6dG9mCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IFNlbnQ6IEZyaWRheSwgQXVndXN0IDI5
LCAyMDI1IDQ6MDcgUE0KPiBUbzogUHJpdGFtIE1hbm9oYXIgU3V0YXIgPHByaXRhbS5zdXRhckBz
YW1zdW5nLmNvbT4KPiBDYzogdmtvdWxAa2VybmVsLm9yZzsga2lzaG9uQGtlcm5lbC5vcmc7IHJv
YmhAa2VybmVsLm9yZzsKPiBrcnprK2R0QGtlcm5lbC5vcmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7
IGFsaW0uYWtodGFyQHNhbXN1bmcuY29tOwo+IGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZzsgcGV0
ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnOyBrYXVzY2hsdXNzQGRpc3Jvb3Qub3JnOwo+IGl2by5pdmFu
b3YuaXZhbm92MUBnbWFpbC5jb207IGlnb3IuYmVsd29uQG1lbnRhbGx5c2FuZW1haW5saW5lcnMu
b3JnOwo+IGpvaGFuQGtlcm5lbC5vcmc7IG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbTsKPiBzLm5h
d3JvY2tpQHNhbXN1bmcuY29tOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGlu
dXgtYXJtLQo+IGtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1zYW1zdW5nLXNvY0B2
Z2VyLmtlcm5lbC5vcmc7Cj4gcm9zYS5waWxhQHNhbXN1bmcuY29tOyBkZXYudGFpbG9yQHNhbXN1
bmcuY29tOwo+IGZhcmF6LmF0YUBzYW1zdW5nLmNvbTsgbXVoYW1tZWQuYWxpQHNhbXN1bmcuY29t
Owo+IHNlbHZhcmFzdS5nQHNhbXN1bmcuY29tCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NyA1LzZd
IGR0LWJpbmRpbmdzOiBwaHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5OiBhZGQKPiBFeHlub3NBdXRv
djkyMCBjb21ibyBzc3BoeQo+IAo+IE9uIDI5LzA4LzIwMjUgMTI6MTUsIFByaXRhbSBNYW5vaGFy
IFN1dGFyIHdyb3RlOgo+ID4gSGkgS3J6eXN6dG9mCj4gPgo+ID4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4gPj4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
Pgo+ID4+IFNlbnQ6IDI2IEF1Z3VzdCAyMDI1IDAyOjA1IFBNCj4gPj4gVG86IFByaXRhbSBNYW5v
aGFyIFN1dGFyIDxwcml0YW0uc3V0YXJAc2Ftc3VuZy5jb20+Cj4gPj4gQ2M6IHZrb3VsQGtlcm5l
bC5vcmc7IGtpc2hvbkBrZXJuZWwub3JnOyByb2JoQGtlcm5lbC5vcmc7Cj4gPiAuCj4gPiAuCj4g
PiBbc25pcF0KPiA+IC4KPiA+IC4KPiA+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjcgNS82XSBk
dC1iaW5kaW5nczogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBoeToKPiA+Pj4+IGFkZAo+ID4+Pj4g
RXh5bm9zQXV0b3Y5MjAgY29tYm8gc3NwaHkKPiA+Pj4+Cj4gPj4+PiBPbiBGcmksIEF1ZyAyMiwg
MjAyNSBhdCAwMzowODo0NFBNICswNTMwLCBQcml0YW0gTWFub2hhciBTdXRhciB3cm90ZToKPiA+
Pj4+PiBUaGlzIHBoeSBzdXBwb3J0cyBVU0IzLjEgU1NQKygxMEdicHMpIHByb3RvY29sIGFuZCBp
cyBiYWNrd2FyZHMKPiA+Pj4+PiBjb21wYXRpYmxlIHRvIHRoZSBVU0IzLjAgU1MoNUdicHMpLiBJ
dCByZXF1aXJlcyB0d28gY2xvY2tzLCBuYW1lZAo+ID4+Pj4+ICJwaHkiIGFuZCAicmVmIi4gVGhl
IHJlcXVpcmVkIHN1cHBsaWVzIGZvciBVU0IzLjEgYXJlIG5hbWVkIGFzCj4gPj4+Pj4gdmRkMDc1
X3VzYjMwKDAuNzV2KSwgdmRkMThfdXNiMzAoMS44dikuCj4gPj4+Pgo+ID4+Pj4gUGxlYXNlIGRv
IG5vdCBkZXNjcmliZSB0aGUgc2NoZW1hLCBidXQgaGFyZHdhcmUuIFRoaXMgc2VudGVuY2UgZG9l
cwo+ID4+Pj4gbm90IGhlbHAgbWUgaW4gbXkgcXVlc3Rpb24gZnVydGhlci4KPiA+Pj4KPiA+Pj4g
VGhpcyBpcyBhIGNvbWJvIHBoeSBoYXZpbmcgU3lub3BzeXMgdXNiMjAgYW5kIHVzYjMwIHBoeXMg
KHRoZXNlIDIKPiA+Pj4gcGh5cyBhcmUKPiA+PiB0b3RhbGx5IGRpZmZlcmVudCkuCj4gPj4+IE9u
ZSBQSFkgb25seSBzdXBwb3J0cyB1c2IyLjAgYW5kIGRhdGEgcmF0ZXMgd2hlcmVhcyBhbm90aGVy
IG9uZSBkb2VzCj4gPj4+IHVzYjMuMSBzc3ArIGFuZCB1c2IzLjEgc3NwCj4gPj4+Cj4gPj4+IFRo
aXMgcGF0Y2ggb25seSBleHBsYWlucyBhYm91dCB1c2IzMCAoc2luY2UgdGhlc2UgYXJlIHR3byBk
aWZmZXJlbnQKPiA+Pj4gcGh5cykgcGh5Cj4gPj4gYW5kIG9taXR0ZWQgaW5jbHVzaW9uIG9mIHVz
YjIwIHJlZmVyZW5jZSAoYWRkZWQgc2VwYXJhdGUgcGF0Y2ggZm9yCj4gPj4gdGhpcyBwYXRjaCBu
byAzKS4KPiA+Pj4KPiA+Pj4gSG9wZSB0aGlzIGlzIGNsZWFyLgo+ID4+Cj4gPj4gTm8uIFRoYXQg
c2VudGVuY2Ugc3RpbGwgZXhwbGFpbnMgd2hhdCBzY2hlbWEgaXMgZG9pbmcuCj4gPj4KPiA+Cj4g
PiBPaywgbGV0IG1lIHNpbXBsaWZ5IHRoZSBjb21taXQgbWVzc2FnZSBmdXJ0aGVyIHNvbWV0aGlu
ZyBsaWtlIGJlbG93Lgo+ID4gQW55d2F5cywgdGhlIGNvdmVybGV0dGVyIGNvbnRhaW5zIG1vcmUg
ZGV0YWlscyBhYm91dCBpdC4KPiA+Cj4gPiAiZHQtYmluZGluZ3M6IHBoeTogc2Ftc3VuZyx1c2Iz
LWRyZC1waHk6IGFkZCBFeHlub3NBdXRvdjkyMCBjb21ibwo+ID4gc3NwaHkKPiA+Cj4gPiAgIEFk
ZCBzY2hlbWEgZm9yIGNvbWJvIHNzcGh5IGZvdW5kIG9uIHRoaXMgU29DLgo+ID4gIgo+ID4KPiA+
IFBsZWFzZSBjb25maXJtIGlmIHRoaXMgbG9va3MgZmluZT8KPiA+IElmIHNvLCB3aWxsIHJlZmxl
Y3QgdGhlIHNpbWlsYXIgY29tbWl0IG1lc3NhZ2VzIGluIHBhdGNoIDEgYW5kIDMuCj4gCj4gUGxl
YXNlIHJlYWQgbXkgZmlyc3QgY29tbWVudCBhZ2Fpbi4gSSBkbyBub3Qgc2VlIGhvdyBkb2VzIHRo
aXMgc2F0aXNmeQo+IGhhcmR3YXJlIGV4cGxhbmF0aW9uLgo+IApKdXN0IHdlbnQgdGhyb3VnaCB0
aGUgY29udmVyc2F0aW9uIGFib3ZlLCAKdW50aWwgd2hhdCBleHRlbnQgaGFyZHdhcmUgZGVzY3Jp
cHRpb24gbmVlZCB0byBiZSBleHBsYWluIGluIHRoZSBjb21taXQ/CkRvIHdlIGhhdmUgYW55IGd1
aWRlbGluZSBmb3IgdGhlIHNhbWU/CkNvdWxkIHlvdSBwbGVhc2UgaGVscCB3aXRoIGFuIGV4YW1w
bGUgZnJvbSBwcmV2aW91cyBhbnkgY29tbWl0IG9yIHNvbWUgb3RoZXIgcGF0Y2hlcz8gCkkgdW5k
ZXJzdGFuZCB0aGF0IG1lbnRpb25pbmcsIOKAnHR3byBjbG9ja3MsIHR3byBzdXBwbGllcyBldGMi
IGFyZSBwYXJ0IG9mIHNjaGVtYSwgDQpvbmUgbWF5IG9yIG1heSBub3QgY2FwdHVyZSB0aGF0IGlu
IHRoZSBjb21taXQuIA0KSG93ZXZlciBtZW50aW9uaW5nLCDigJx0aGlzIGhhcmR3YXJlIChTb0Mp
IGNvbnRhaW4gYSBjb21ibyBQSFkgd2hpY2ggc3VwcG9ydHMgdXNiMy4xIGFuZCB1c2IzLjAiIGlz
IG5vdCBvaz8gDQoNCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
