Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC083C71136
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 01:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhOY6tuNoBSb9paEN5/GyHRFICrTfs+tSK+70NC8JqI=; b=qRV5tpic4qSRTj
	XNhGav/o+clMYEtIpyY5FEwiurGENlBliSACMjV+dZaZirphu8p8NgTFrfPNiPC/z2M9wM7Imwlqd
	X5Q39SUNylSoANRb8tvJAs0Z7nKNpqQZgacvrvvjCVkMbMOU07hH0CpCufXuqOFjshQoOpiYiEhLh
	KL5YiD4zIsykXhxFEMI7IWA7o8H4IU3pgF2fCrCNKY1+/GCuadtPLvK6L0BSSGAGPjlvkefSH4vSO
	XFdrQqkhzeLAcA280+JaMd4vLq9dLsTQBJDJrEsURHLh7nNAgCcZgPEBVhYKHy94MJVE7erZrBU+D
	t4m9hNhrHy09CW3HvYUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhWX-00000008kL0-1rj6;
	Wed, 18 Jun 2025 01:23:33 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhQh-00000008jfJ-2stH
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 01:17:33 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250618011728epoutp0401cb7949532005dd2ad3352edcd92431~J-jhyoMNi1988819888epoutp04E
	for <linux-phy@lists.infradead.org>; Wed, 18 Jun 2025 01:17:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250618011728epoutp0401cb7949532005dd2ad3352edcd92431~J-jhyoMNi1988819888epoutp04E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750209448;
	bh=FmDPUKjdxkABnjlOOT1kBNy0I7s0S7ikbeAULNkoib4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=p28eAWFqfSILy8HrE9lGug8ES+qTudu+cz8x/G2s1NgIJIBRk07mpDR/gfMCF3jt/
	 R3EtmQqWBKbKSuOdB9DJ5AFgDlKPs6gyQWQr6WfwA/agAHzfjd7pQH8jKUdYrvrOBH
	 xeOOVZn00YPzpT5QtoHo8O568BAv0Ikr5MjmKLqM=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250618011727epcas5p4d4aa4a5e04fb9ac44fd13789efc87711~J-jhKMtDk3093530935epcas5p4v;
	Wed, 18 Jun 2025 01:17:27 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.177]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bMQny0bkVz6B9mG; Wed, 18 Jun
	2025 01:17:26 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250617173634epcas5p3dbbe9a86be00bc8124444dc9a2cea1bc~J5RHWoRox3236532365epcas5p36;
	Tue, 17 Jun 2025 17:36:34 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250617173631epsmtip1593e56249b8600e799f1c8e2d4c868c4~J5REgnjn72629126291epsmtip1e;
	Tue, 17 Jun 2025 17:36:31 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250616-boisterous-mouse-of-current-adfd67@kuoka>
Subject: RE: [PATCH v3 2/9] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
Date: Tue, 17 Jun 2025 23:06:30 +0530
Message-ID: <000201dbdfae$5ef17e70$1cd47b50$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNTkACKxnsdZBPuyPiYuNftoBZF1gLGzMbPAZuXxZEB509h9LDl7H+g
Content-Language: en-in
X-CMS-MailID: 20250617173634epcas5p3dbbe9a86be00bc8124444dc9a2cea1bc
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055043epcas5p2437abc65042529a2012a6ca80559ac80
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055043epcas5p2437abc65042529a2012a6ca80559ac80@epcas5p2.samsung.com>
	<20250613055613.866909-3-pritam.sutar@samsung.com>
	<20250616-boisterous-mouse-of-current-adfd67@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_181732_032690_7E18EBFD 
X-CRM114-Status: GOOD (  18.44  )
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

SGkgS3J6eXN6dG9mLAoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiBTZW50OiAxNiBKdW5lIDIwMjUgMDE6
NDMgUE0KPiBUbzogUHJpdGFtIE1hbm9oYXIgU3V0YXIgPHByaXRhbS5zdXRhckBzYW1zdW5nLmNv
bT4KPiBDYzogdmtvdWxAa2VybmVsLm9yZzsga2lzaG9uQGtlcm5lbC5vcmc7IHJvYmhAa2VybmVs
Lm9yZzsKPiBrcnprK2R0QGtlcm5lbC5vcmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7IGFsaW0uYWto
dGFyQHNhbXN1bmcuY29tOwo+IGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZzsgcGV0ZXIuZ3JpZmZp
bkBsaW5hcm8ub3JnOyBrYXVzY2hsdXNzQGRpc3Jvb3Qub3JnOwo+IGl2by5pdmFub3YuaXZhbm92
MUBnbWFpbC5jb207IG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbTsKPiBzLm5hd3JvY2tpQHNhbXN1
bmcuY29tOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLQo+IGtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1zYW1zdW5nLXNvY0B2Z2VyLmtlcm5lbC5v
cmc7Cj4gcm9zYS5waWxhQHNhbXN1bmcuY29tOyBkZXYudGFpbG9yQHNhbXN1bmcuY29tOwo+IGZh
cmF6LmF0YUBzYW1zdW5nLmNvbTsgbXVoYW1tZWQuYWxpQHNhbXN1bmcuY29tOwo+IHNlbHZhcmFz
dS5nQHNhbXN1bmcuY29tCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyAyLzldIHBoeTogZXh5b25z
NS11c2JkcmQ6IHN1cHBvcnQgSFMgcGh5IGZvcgo+IEV4eW5vc0F1dG92OTIwCj4gCj4gT24gRnJp
LCBKdW4gMTMsIDIwMjUgYXQgMTE6MjY6MDZBTSBHTVQsIFByaXRhbSBNYW5vaGFyIFN1dGFyIHdy
b3RlOgo+ID4gVGhpcyBTb0MgaGFzIGEgc2luZ2xlIFVTQiAzLjEgRFJEIGNvbWJvIHBoeSB0aGF0
IHN1cHBvcnRzIGJvdGgKPiA+IFVUTUkrIChIUykgYW5kIFBJUEUzIChTUykgYW5kIHRocmVlIFVT
QjIuMCBEUkQgSFMgcGh5IGNvbnRyb2xsZXJzCj4gPiB0aG9zZSBvbmx5IHN1cHBvcnQgdGhlIFVU
TUkrIChIUykgaW50ZXJmYWNlLgo+ID4KPiA+IFN1cHBvcnQgb25seSBVVE1JKyBwb3J0IGZvciB0
aGlzIFNvQyB3aGljaCBpcyB2ZXJ5IHNpbWlsYXIgdG8gd2hhdCB0aGUKPiA+IGV4aXN0aW5nIEV4
eW5vczg1MCBzdXBwb3J0cy4KPiA+Cj4gPiBUaGUgY29tYm8gcGh5IHN1cHBvcnQgaXMgb3V0IG9m
IHNjb3BlIG9mIHRoaXMgY29tbWl0Lgo+ID4KPiA+IEFkZCByZXF1aXJlZCBjaGFuZ2UgaW4gcGh5
IGRyaXZlciB0byBzdXBwb3J0IEhTIHBoeSBmb3IgdGhpcyBTb0MuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogUHJpdGFtIE1hbm9oYXIgU3V0YXIgPHByaXRhbS5zdXRhckBzYW1zdW5nLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCAyNQo+
ID4gKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2Vy
dGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwo+ID4gYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRy
ZC5jCj4gPiBpbmRleCA5MTdhNzZkNTg0ZjAuLjE1OTY1YjRjNmY3OCAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiA+ICsrKyBiL2RyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiA+IEBAIC0yMDI1LDYgKzIwMjUs
MjggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfZHJ2ZGF0YQo+IGV4
eW5vczg1MF91c2JkcmRfcGh5ID0gewo+ID4gIAkubl9yZWd1bGF0b3JzCQk9IEFSUkFZX1NJWkUo
ZXh5bm9zNV9yZWd1bGF0b3JfbmFtZXMpLAo+ID4gIH07Cj4gPgo+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgcGh5X29wcyBleHlub3NhdXRvdjkyMF91c2JkcmRfcGh5X29wcyA9IHsKPiA+ICsJLmlu
aXQJCT0gZXh5bm9zODUwX3VzYmRyZF9waHlfaW5pdCwKPiA+ICsJLmV4aXQJCT0gZXh5bm9zODUw
X3VzYmRyZF9waHlfZXhpdCwKPiA+ICsJLm93bmVyCQk9IFRISVNfTU9EVUxFLAo+ID4gK307Cj4g
PiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfY29uZmlnCj4g
cGh5X2NmZ19leHlub3NhdXRvdjkyMFtdID0gewo+ID4gKwl7Cj4gPiArCQkuaWQJCT0gRVhZTk9T
NV9EUkRQSFlfVVRNSSwKPiA+ICsJCS5waHlfaW5pdAk9IGV4eW5vczg1MF91c2JkcmRfdXRtaV9p
bml0LAo+ID4gKwl9LAo+ID4gK307Cj4gPiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBleHlu
b3M1X3VzYmRyZF9waHlfZHJ2ZGF0YQo+IGV4eW5vc2F1dG92OTIwX3VzYmRyZF9waHkgPSB7Cj4g
PiArCS5waHlfY2ZnCQk9IHBoeV9jZmdfZXh5bm9zYXV0b3Y5MjAsCj4gPiArCS5waHlfb3BzCQk9
ICZleHlub3NhdXRvdjkyMF91c2JkcmRfcGh5X29wcywKPiA+ICsJLmNsa19uYW1lcwkJPSBleHlu
b3M1X2Nsa19uYW1lcywKPiA+ICsJLm5fY2xrcwkJCT0gQVJSQVlfU0laRShleHlub3M1X2Nsa19u
YW1lcyksCj4gPiArCS5jb3JlX2Nsa19uYW1lcwkJPSBleHlub3M1X2NvcmVfY2xrX25hbWVzLAo+
ID4gKwkubl9jb3JlX2Nsa3MJCT0gQVJSQVlfU0laRShleHlub3M1X2NvcmVfY2xrX25hbWVzKSwK
PiAKPiBXaGVyZSBhcmUgdGhlIHN1cHBsaWVzPyBXaGVyZSBpcyBwb3dlciBvbi9vZmYgc2VxZXF1
ZW5jZSBpbiB0aGUgcGh5IG9wcz8KPiAKPiBObyBwbXUgY29udHJvbCAobWlzc2luZyBvZmZzZXQp
Pwo+IAoKTERPIHJlZ3VsYXRvcnMgYXJlIGFsd2F5cyBvbi4gIFVTQiBkb27igJl0IGNvbnRyb2wg
dGhlbSBmb3IgRXh5bm9zQXV0b3Y5MjAuDQpQaHkgaXNvbCBpcyBzaGFyZWQgYWNyb3NzIHRoZSBV
U0JzLiBBbmQgaXQgaXMgaGFuZGxlZCBpbiBib290bG9hZGVyIChpZiBvbmUgY2F1c2VzIHBoeSBl
eGl0LCBpdCBpc29sYXRlcyBhbGwgdGhlIHBoeXMpLiANCg0KSGVuY2UsIHN1cHBsaWVzIGFuZCBw
b3dlciBvbi9vZmYgYXJlIHJlbW92ZWQgZnJvbSBwaHkgb3BzLg0KDQo+IFlvdSBoYXZlIGVudGly
ZSBjb21taXQgbXNnIHRvIGV4cGxhaW4gdW51c3VhbCB0aGluZ3MuDQo+IA0KDQpXaWxsIHVwZGF0
ZSB0aGUgc2FtZSB3aXRoIGNvbW1pdCBtZXNzYWdlIGluIG5leHQgdmVyc2lvbiBvZiB0aGUgcGF0
Y2gtc2V0ICh2NCkuIA0KDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNCg0KVGhhbmsg
eW91LA0KDQpSZWdhcmRzLA0KUHJpdGFtDQoNCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
