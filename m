Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B6CCA1004
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 15:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+0z9CvAn71E4aZ5n6nv5RM9MOsv22ubSpA0snbKKjQ=; b=qF4zo7TKXzjp7v
	5Ry/09WibZrF77qYaorAoUvgzeOAVNiKFy0Bx944RDnkivRPuCsJsoBjAn7Pg8omw0/QlZqXPbbiU
	TkhmlOzTKnZmpTEOVzS7rC7iurjOxvGvroY5FZ3ka/QbSBd4+ABLWgS0kBbcwvH0DOGe48/Azuuva
	TVjkMFdEN5llEuA4kdorBXWS4gIG5gmSluL/TARU4t31oMwLOQS01IJjspUVaPyVLCiA45Vog9e+u
	xmRK3SyBRzTvjElmDQSTe1IJ/IvTT48F2gmVfNFr70nvW8POwieiAYbomBskwY+toxwtkUesxjQHl
	yvK8dGT5fHfFu9MClUcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1GP-00000006FcM-01aN;
	Fri, 29 Aug 2025 15:43:41 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urxpH-00000005aQM-1c9C
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 12:03:29 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250829120322epoutp0312ea78fd6f10ffc2216ff8384b33a821~gO0B1yHj-2480024800epoutp03e
	for <linux-phy@lists.infradead.org>; Fri, 29 Aug 2025 12:03:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250829120322epoutp0312ea78fd6f10ffc2216ff8384b33a821~gO0B1yHj-2480024800epoutp03e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756469002;
	bh=N9szQPe/7ipHEDNbxZo34E063kPc1jQMPVE3QTXxPAw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=bLD1OemGrCXJjy0NGdgGQuVg9OxwfwBqDlUf7A4YCvPM1R5lqkANtyCPp97RIgJ8u
	 xzpFudJv9M2VdIlrlYqxLOs7fzxcpj2V51r6FPTlXnFWIGj6GnKlGsqkpVjPEoQae+
	 F1RjH6KJZhW+UdU38I3XU0eJ92EjxbIIyv3gCh8Y=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250829120322epcas5p12448fdc22bfd06ebd17fabf10c3e92e8~gO0BSebHi3201832018epcas5p1i;
	Fri, 29 Aug 2025 12:03:22 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.86]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cCxk11NSyz2SSKX; Fri, 29 Aug
	2025 12:03:21 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250829120320epcas5p3eb6abcefc16910b3b7b73d5e5b169f43~gOz-yUdR00051000510epcas5p3A;
	Fri, 29 Aug 2025 12:03:20 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250829120317epsmtip14cec5995bc2dbc0cbf21ccbf1f9a1b72~gOz80JLJO1511815118epsmtip1e;
	Fri, 29 Aug 2025 12:03:17 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Alim Akhtar'"
	<alim.akhtar@samsung.com>
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
In-Reply-To: <6b5f20ed-4e88-441e-8f61-20866e2b39c7@kernel.org>
Subject: RE: [PATCH v7 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Fri, 29 Aug 2025 17:33:16 +0530
Message-ID: <001101dc18dc$e97457e0$bc5d07a0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGSd8blfqR9gZc/NH28iGAFaSn12QHbdVSHAGa/K48CXY/t+wLwFCB2ArX7ZGwBn6FItwLUPA9DAP+/dGQCDX8RFrR+kenQ
Content-Language: en-in
X-CMS-MailID: 20250829120320epcas5p3eb6abcefc16910b3b7b73d5e5b169f43
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
	<263801dc18d3$d1e20950$75a61bf0$@samsung.com>
	<6b5f20ed-4e88-441e-8f61-20866e2b39c7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_050327_742527_D339264B 
X-CRM114-Status: GOOD (  25.62  )
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
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiBTZW50OiAyOSBBdWd1c3QgMjAyNSAw
NDo1NiBQTQo+IFRvOiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+OyAnUHJp
dGFtIE1hbm9oYXIgU3V0YXInCj4gPHByaXRhbS5zdXRhckBzYW1zdW5nLmNvbT4KPiBDYzogdmtv
dWxAa2VybmVsLm9yZzsga2lzaG9uQGtlcm5lbC5vcmc7IHJvYmhAa2VybmVsLm9yZzsKPiBrcnpr
K2R0QGtlcm5lbC5vcmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7IGFuZHJlLmRyYXN6aWtAbGluYXJv
Lm9yZzsKPiBwZXRlci5ncmlmZmluQGxpbmFyby5vcmc7IGthdXNjaGx1c3NAZGlzcm9vdC5vcmc7
Cj4gaXZvLml2YW5vdi5pdmFub3YxQGdtYWlsLmNvbTsgaWdvci5iZWx3b25AbWVudGFsbHlzYW5l
bWFpbmxpbmVycy5vcmc7Cj4gam9oYW5Aa2VybmVsLm9yZzsgbS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tOyBzLm5hd3JvY2tpQHNhbXN1bmcuY29tOwo+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtCj4ga2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1zYW1z
dW5nLQo+IHNvY0B2Z2VyLmtlcm5lbC5vcmc7IHJvc2EucGlsYUBzYW1zdW5nLmNvbTsgZGV2LnRh
aWxvckBzYW1zdW5nLmNvbTsKPiBmYXJhei5hdGFAc2Ftc3VuZy5jb207IG11aGFtbWVkLmFsaUBz
YW1zdW5nLmNvbTsKPiBzZWx2YXJhc3UuZ0BzYW1zdW5nLmNvbQo+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggdjcgNS82XSBkdC1iaW5kaW5nczogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBoeTogYWRkCj4g
RXh5bm9zQXV0b3Y5MjAgY29tYm8gc3NwaHkKPiAKPiBPbiAyOS8wOC8yMDI1IDEyOjU4LCBBbGlt
IEFraHRhciB3cm90ZToKPiA+IEhpIEtyenlzenRvZgo+ID4KPiA+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+ID4+IEZyb206IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9y
Zz4KPiA+PiBTZW50OiBGcmlkYXksIEF1Z3VzdCAyOSwgMjAyNSA0OjA3IFBNCj4gPj4gVG86IFBy
aXRhbSBNYW5vaGFyIFN1dGFyIDxwcml0YW0uc3V0YXJAc2Ftc3VuZy5jb20+Cj4gPj4gQ2M6IHZr
b3VsQGtlcm5lbC5vcmc7IGtpc2hvbkBrZXJuZWwub3JnOyByb2JoQGtlcm5lbC5vcmc7Cj4gPj4g
a3J6aytkdEBrZXJuZWwub3JnOyBjb25vcitkdEBrZXJuZWwub3JnOyBhbGltLmFraHRhckBzYW1z
dW5nLmNvbTsKPiA+PiBhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc7IHBldGVyLmdyaWZmaW5AbGlu
YXJvLm9yZzsKPiA+PiBrYXVzY2hsdXNzQGRpc3Jvb3Qub3JnOyBpdm8uaXZhbm92Lml2YW5vdjFA
Z21haWwuY29tOwo+ID4+IGlnb3IuYmVsd29uQG1lbnRhbGx5c2FuZW1haW5saW5lcnMub3JnOwo+
ID4+IGpvaGFuQGtlcm5lbC5vcmc7IG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbTsgcy5uYXdyb2Nr
aUBzYW1zdW5nLmNvbTsKPiA+PiBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7Cj4gPj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsg
bGludXgtYXJtLSBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+PiBsaW51eC1zYW1zdW5n
LXNvY0B2Z2VyLmtlcm5lbC5vcmc7Cj4gPj4gcm9zYS5waWxhQHNhbXN1bmcuY29tOyBkZXYudGFp
bG9yQHNhbXN1bmcuY29tOwo+IGZhcmF6LmF0YUBzYW1zdW5nLmNvbTsKPiA+PiBtdWhhbW1lZC5h
bGlAc2Ftc3VuZy5jb207IHNlbHZhcmFzdS5nQHNhbXN1bmcuY29tCj4gPj4gU3ViamVjdDogUmU6
IFtQQVRDSCB2NyA1LzZdIGR0LWJpbmRpbmdzOiBwaHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5Ogo+
ID4+IGFkZAo+ID4+IEV4eW5vc0F1dG92OTIwIGNvbWJvIHNzcGh5Cj4gPj4KPiA+PiBPbiAyOS8w
OC8yMDI1IDEyOjE1LCBQcml0YW0gTWFub2hhciBTdXRhciB3cm90ZToKPiA+Pj4gSGkgS3J6eXN6
dG9mCj4gPj4+Cj4gPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4+Pj4gRnJvbTog
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+ID4+Pj4gU2VudDogMjYgQXVn
dXN0IDIwMjUgMDI6MDUgUE0KPiA+Pj4+IFRvOiBQcml0YW0gTWFub2hhciBTdXRhciA8cHJpdGFt
LnN1dGFyQHNhbXN1bmcuY29tPgo+ID4+Pj4gQ2M6IHZrb3VsQGtlcm5lbC5vcmc7IGtpc2hvbkBr
ZXJuZWwub3JnOyByb2JoQGtlcm5lbC5vcmc7Cj4gPj4+IC4KPiA+Pj4gLgo+ID4+PiBbc25pcF0K
PiA+Pj4gLgo+ID4+PiAuCj4gPj4+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjcgNS82XSBkdC1i
aW5kaW5nczogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBoeToKPiA+Pj4+Pj4gYWRkCj4gPj4+Pj4+
IEV4eW5vc0F1dG92OTIwIGNvbWJvIHNzcGh5Cj4gPj4+Pj4+Cj4gPj4+Pj4+IE9uIEZyaSwgQXVn
IDIyLCAyMDI1IGF0IDAzOjA4OjQ0UE0gKzA1MzAsIFByaXRhbSBNYW5vaGFyIFN1dGFyIHdyb3Rl
Ogo+ID4+Pj4+Pj4gVGhpcyBwaHkgc3VwcG9ydHMgVVNCMy4xIFNTUCsoMTBHYnBzKSBwcm90b2Nv
bCBhbmQgaXMgYmFja3dhcmRzCj4gPj4+Pj4+PiBjb21wYXRpYmxlIHRvIHRoZSBVU0IzLjAgU1Mo
NUdicHMpLiBJdCByZXF1aXJlcyB0d28gY2xvY2tzLAo+ID4+Pj4+Pj4gbmFtZWQgInBoeSIgYW5k
ICJyZWYiLiBUaGUgcmVxdWlyZWQgc3VwcGxpZXMgZm9yIFVTQjMuMSBhcmUKPiA+Pj4+Pj4+IG5h
bWVkIGFzIHZkZDA3NV91c2IzMCgwLjc1diksIHZkZDE4X3VzYjMwKDEuOHYpLgo+ID4+Pj4+Pgo+
ID4+Pj4+PiBQbGVhc2UgZG8gbm90IGRlc2NyaWJlIHRoZSBzY2hlbWEsIGJ1dCBoYXJkd2FyZS4g
VGhpcyBzZW50ZW5jZQo+ID4+Pj4+PiBkb2VzIG5vdCBoZWxwIG1lIGluIG15IHF1ZXN0aW9uIGZ1
cnRoZXIuCj4gPj4+Pj4KPiA+Pj4+PiBUaGlzIGlzIGEgY29tYm8gcGh5IGhhdmluZyBTeW5vcHN5
cyB1c2IyMCBhbmQgdXNiMzAgcGh5cyAodGhlc2UgMgo+ID4+Pj4+IHBoeXMgYXJlCj4gPj4+PiB0
b3RhbGx5IGRpZmZlcmVudCkuCj4gPj4+Pj4gT25lIFBIWSBvbmx5IHN1cHBvcnRzIHVzYjIuMCBh
bmQgZGF0YSByYXRlcyB3aGVyZWFzIGFub3RoZXIgb25lCj4gPj4+Pj4gZG9lcwo+ID4+Pj4+IHVz
YjMuMSBzc3ArIGFuZCB1c2IzLjEgc3NwCj4gPj4+Pj4KPiA+Pj4+PiBUaGlzIHBhdGNoIG9ubHkg
ZXhwbGFpbnMgYWJvdXQgdXNiMzAgKHNpbmNlIHRoZXNlIGFyZSB0d28KPiA+Pj4+PiBkaWZmZXJl
bnQKPiA+Pj4+PiBwaHlzKSBwaHkKPiA+Pj4+IGFuZCBvbWl0dGVkIGluY2x1c2lvbiBvZiB1c2Iy
MCByZWZlcmVuY2UgKGFkZGVkIHNlcGFyYXRlIHBhdGNoIGZvcgo+ID4+Pj4gdGhpcyBwYXRjaCBu
byAzKS4KPiA+Pj4+Pgo+ID4+Pj4+IEhvcGUgdGhpcyBpcyBjbGVhci4KPiA+Pj4+Cj4gPj4+PiBO
by4gVGhhdCBzZW50ZW5jZSBzdGlsbCBleHBsYWlucyB3aGF0IHNjaGVtYSBpcyBkb2luZy4KPiA+
Pj4+Cj4gPj4+Cj4gPj4+IE9rLCBsZXQgbWUgc2ltcGxpZnkgdGhlIGNvbW1pdCBtZXNzYWdlIGZ1
cnRoZXIgc29tZXRoaW5nIGxpa2UgYmVsb3cuCj4gPj4+IEFueXdheXMsIHRoZSBjb3ZlcmxldHRl
ciBjb250YWlucyBtb3JlIGRldGFpbHMgYWJvdXQgaXQuCj4gPj4+Cj4gPj4+ICJkdC1iaW5kaW5n
czogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBoeTogYWRkIEV4eW5vc0F1dG92OTIwIGNvbWJvCj4g
Pj4+IHNzcGh5Cj4gPj4+Cj4gPj4+ICAgQWRkIHNjaGVtYSBmb3IgY29tYm8gc3NwaHkgZm91bmQg
b24gdGhpcyBTb0MuCj4gPj4+ICIKPiA+Pj4KPiA+Pj4gUGxlYXNlIGNvbmZpcm0gaWYgdGhpcyBs
b29rcyBmaW5lPwo+ID4+PiBJZiBzbywgd2lsbCByZWZsZWN0IHRoZSBzaW1pbGFyIGNvbW1pdCBt
ZXNzYWdlcyBpbiBwYXRjaCAxIGFuZCAzLgo+ID4+Cj4gPj4gUGxlYXNlIHJlYWQgbXkgZmlyc3Qg
Y29tbWVudCBhZ2Fpbi4gSSBkbyBub3Qgc2VlIGhvdyBkb2VzIHRoaXMKPiA+PiBzYXRpc2Z5IGhh
cmR3YXJlIGV4cGxhbmF0aW9uLgo+ID4+Cj4gPiBKdXN0IHdlbnQgdGhyb3VnaCB0aGUgY29udmVy
c2F0aW9uIGFib3ZlLCB1bnRpbCB3aGF0IGV4dGVudCBoYXJkd2FyZQo+ID4gZGVzY3JpcHRpb24g
bmVlZCB0byBiZSBleHBsYWluIGluIHRoZSBjb21taXQ/Cj4gPiBEbyB3ZSBoYXZlIGFueSBndWlk
ZWxpbmUgZm9yIHRoZSBzYW1lPwo+ID4gQ291bGQgeW91IHBsZWFzZSBoZWxwIHdpdGggYW4gZXhh
bXBsZSBmcm9tIHByZXZpb3VzIGFueSBjb21taXQgb3Igc29tZQo+IG90aGVyIHBhdGNoZXM/Cj4g
PiBJIHVuZGVyc3RhbmQgdGhhdCBtZW50aW9uaW5nLCDigJx0d28gY2xvY2tzLCB0d28gc3VwcGxp
ZXMgZXRjIiBhcmUgcGFydA0KPiA+IG9mIHNjaGVtYSwgb25lIG1heSBvciBtYXkgbm90IGNhcHR1
cmUgdGhhdCBpbiB0aGUgY29tbWl0Lg0KPiA+IEhvd2V2ZXIgbWVudGlvbmluZywg4oCcdGhpcyBo
YXJkd2FyZSAoU29DKSBjb250YWluIGEgY29tYm8gUEhZIHdoaWNoDQo+IHN1cHBvcnRzIHVzYjMu
MSBhbmQgdXNiMy4wIiBpcyBub3Qgb2s/DQo+IA0KPiANCj4gTWF5YmUgdGhhdCdzIGp1c3QgbGFu
Z3VhZ2UsIGJ1dCB0byBtZSB0aGUgY29tbWl0IG1zZyBkaWQgbm90IGRlc2NyaWJlDQo+IGhhcmR3
YXJlIGFmdGVyIGZpcnN0IHNlbnRlbmNlLCBidXQgc2FpZCB3aGF0IHNjaGVtYSByZXF1aXJlcyAo
c29tZQ0KPiBjbG9ja3MgYW5kIHN1cHBsaWVzKS4gT3RoZXIgZXhhbXBsZXM6DQo+IDAwMzk5YmJl
MDJkMmJiNmZkOGQ2ZWI5MDU3M2VjMzA1NjE2NDQ5ZjQNCj4gZTRjOWE3YjQ3NWU1ZDBkOWIyNDQw
ZWU0OGY5MWQxMzY0ZWFiZDZjYg0KPiANCg0KVGhhbmsgeW91IGZvciB0aGUgcG9pbnRlcnMsIHdp
bGwgcmVmZXIgdGhlIGV4YW1wbGVzIGFuZCANCnVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2VzIGFj
Y29yZGluZ2x5LiANCg0KPiBhbmQgaGVyZSBhbm90aGVyIGFudGktcGF0dGVybjoNCj4gMjNmNzkz
ODUwZTllZTczOTA1ODRjMDgwOWYwODVkNmM4OGRlN2QzZg0KPiANCj4gKGFuZCBiZWZvcmUgeW91
IGFzayB3aHkgYWJvdmUgY2FycmllcyBteSBSYiB0YWcsIHRoZW4gbm90ZSB0aGF0DQo+IFNhbXN1
bmcncyByZXZlbnVlIGlzIGFyb3VuZCAyMjAgYmlsbGlvbiBVU0QsIHNvIGZvciBzdXJlIGl0IGhh
cyBhIGxvdCwNCj4gcmVhbGx5IGEgbG90IG9mIHJlc291cmNlcyB0byByZXZpZXcgcGF0Y2hlcyBp
bnRlcm5hbGx5IGFuZCBpbXByb3ZlIHRoZWlyDQo+IHF1YWxpdHkgYmVmb3JlIHBvc3RpbmcpLg0K
PiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KVGhhbmsgeW91Lg0KDQpSZWdhcmRz
LA0KUHJpdGFtDQoNCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
