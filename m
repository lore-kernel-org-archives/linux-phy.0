Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28AE5CA1002
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 15:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3B9VAMIHypEMkPlKgqH0HAXoSKF5fpqaismePLg5xA=; b=YWqyR94N6z7Zzz
	BLJkZ5c+piZSzqa/5crek6Xi1JY1HAanxx+PNfy5q4myJH6v1jy/2DiOCQy5hCLpK8KQIDVkgkkj9
	6hV3XIt19BZFUkTn6VmbMKH5L/xxQwqxlnMCXvH8nODbLpB7K1u54PBUOu8Antkb5x2kzS88HOcGK
	A9PQGHANwU4lpYOMyd+VwXSqwQrr8GNjSKraZmYIHVujKVx50ELcusPHHSPzJZm3lHYQAcSbwuU+/
	gVm6gZpSlDYNsfOFo8S9jWAt4GSRjOMzPzsnKfjo7N8Ti9Yt0JxhMcX1EaRkkQU4IkcnvOKyaJwY4
	R5N7Z6/THKPtVAzGNtuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1GG-00000006FPO-3hzA;
	Fri, 29 Aug 2025 15:43:32 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urxkX-00000005YrX-3vn1
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 11:58:38 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250829115827epoutp0226f9f0000084ff28bf1850bf9cd72f6b~gOvvCP-_R2570625706epoutp02n
	for <linux-phy@lists.infradead.org>; Fri, 29 Aug 2025 11:58:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250829115827epoutp0226f9f0000084ff28bf1850bf9cd72f6b~gOvvCP-_R2570625706epoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756468707;
	bh=uwY5hixuwzaZTDT5buByhfxmW867fLKpSCP8rlpiI14=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=CysoOR9PC9hnqe3pml403GQnA2oc/kH9yTcRYWraVwncS6r0Ua7oKrZX8fYTY8UiF
	 wkmMBTtTPFS8p8p/SBihey+pSFosShUCntvBWl+YoSz6EKKZoIOEa6n7z321Lfvwa1
	 +ys3ZAmEG4PVEJOSTVSBzmqJSKzG06tJCI9Fb7tQ=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250829115827epcas5p1f685d8dfedaaf5048eb61a23746eb119~gOvueZGSr1701717017epcas5p1U;
	Fri, 29 Aug 2025 11:58:27 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.95]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4cCxcL15L7z3hhT4; Fri, 29 Aug
	2025 11:58:26 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250829115825epcas5p308b9c24446175f4cd3107cd25d87d005~gOvtI56rB0210702107epcas5p3A;
	Fri, 29 Aug 2025 11:58:25 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250829115822epsmtip19020d35d0d51e22cc1325735aeef32e0~gOvqKeOfY1508415084epsmtip1L;
	Fri, 29 Aug 2025 11:58:22 +0000 (GMT)
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
In-Reply-To: <6b5f20ed-4e88-441e-8f61-20866e2b39c7@kernel.org>
Subject: RE: [PATCH v7 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Fri, 29 Aug 2025 17:28:21 +0530
Message-ID: <264501dc18dc$39afb340$ad0f19c0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGSd8blfqR9gZc/NH28iGAFaSn12QHbdVSHAGa/K48CXY/t+wLwFCB2ArX7ZGwBn6FItwLUPA9DAP+/dGQCDX8RFrR+i4pg
Content-Language: en-us
X-CMS-MailID: 20250829115825epcas5p308b9c24446175f4cd3107cd25d87d005
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
X-CRM114-CacheID: sfid-20250829_045836_247792_83B8A9D2 
X-CRM114-Status: GOOD (  24.00  )
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
LCAyMDI1IDQ6NTYgUE0KPiBUbzogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29t
PjsgJ1ByaXRhbSBNYW5vaGFyIFN1dGFyJwo+IDxwcml0YW0uc3V0YXJAc2Ftc3VuZy5jb20+Cj4g
Q2M6IHZrb3VsQGtlcm5lbC5vcmc7IGtpc2hvbkBrZXJuZWwub3JnOyByb2JoQGtlcm5lbC5vcmc7
Cj4ga3J6aytkdEBrZXJuZWwub3JnOyBjb25vcitkdEBrZXJuZWwub3JnOyBhbmRyZS5kcmFzemlr
QGxpbmFyby5vcmc7Cj4gCltTbmlwXQo+ID4+Pj4+PiBPbiBGcmksIEF1ZyAyMiwgMjAyNSBhdCAw
MzowODo0NFBNICswNTMwLCBQcml0YW0gTWFub2hhciBTdXRhcgo+IHdyb3RlOgo+ID4+Pj4+Pj4g
VGhpcyBwaHkgc3VwcG9ydHMgVVNCMy4xIFNTUCsoMTBHYnBzKSBwcm90b2NvbCBhbmQgaXMgYmFj
a3dhcmRzCj4gPj4+Pj4+PiBjb21wYXRpYmxlIHRvIHRoZSBVU0IzLjAgU1MoNUdicHMpLiBJdCBy
ZXF1aXJlcyB0d28gY2xvY2tzLAo+ID4+Pj4+Pj4gbmFtZWQgInBoeSIgYW5kICJyZWYiLiBUaGUg
cmVxdWlyZWQgc3VwcGxpZXMgZm9yIFVTQjMuMSBhcmUKPiA+Pj4+Pj4+IG5hbWVkIGFzIHZkZDA3
NV91c2IzMCgwLjc1diksIHZkZDE4X3VzYjMwKDEuOHYpLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBQbGVh
c2UgZG8gbm90IGRlc2NyaWJlIHRoZSBzY2hlbWEsIGJ1dCBoYXJkd2FyZS4gVGhpcyBzZW50ZW5j
ZQo+ID4+Pj4+PiBkb2VzIG5vdCBoZWxwIG1lIGluIG15IHF1ZXN0aW9uIGZ1cnRoZXIuCj4gPj4+
Pj4KPiA+Pj4+PiBUaGlzIGlzIGEgY29tYm8gcGh5IGhhdmluZyBTeW5vcHN5cyB1c2IyMCBhbmQg
dXNiMzAgcGh5cyAodGhlc2UgMgo+ID4+Pj4+IHBoeXMgYXJlCj4gPj4+PiB0b3RhbGx5IGRpZmZl
cmVudCkuCj4gPj4+Pj4gT25lIFBIWSBvbmx5IHN1cHBvcnRzIHVzYjIuMCBhbmQgZGF0YSByYXRl
cyB3aGVyZWFzIGFub3RoZXIgb25lCj4gPj4+Pj4gZG9lcwo+ID4+Pj4+IHVzYjMuMSBzc3ArIGFu
ZCB1c2IzLjEgc3NwCj4gPj4+Pj4KPiA+Pj4+PiBUaGlzIHBhdGNoIG9ubHkgZXhwbGFpbnMgYWJv
dXQgdXNiMzAgKHNpbmNlIHRoZXNlIGFyZSB0d28KPiA+Pj4+PiBkaWZmZXJlbnQKPiA+Pj4+PiBw
aHlzKSBwaHkKPiA+Pj4+IGFuZCBvbWl0dGVkIGluY2x1c2lvbiBvZiB1c2IyMCByZWZlcmVuY2Ug
KGFkZGVkIHNlcGFyYXRlIHBhdGNoIGZvcgo+ID4+Pj4gdGhpcyBwYXRjaCBubyAzKS4KPiA+Pj4+
Pgo+ID4+Pj4+IEhvcGUgdGhpcyBpcyBjbGVhci4KPiA+Pj4+Cj4gPj4+PiBOby4gVGhhdCBzZW50
ZW5jZSBzdGlsbCBleHBsYWlucyB3aGF0IHNjaGVtYSBpcyBkb2luZy4KPiA+Pj4+Cj4gPj4+Cj4g
Pj4+IE9rLCBsZXQgbWUgc2ltcGxpZnkgdGhlIGNvbW1pdCBtZXNzYWdlIGZ1cnRoZXIgc29tZXRo
aW5nIGxpa2UgYmVsb3cuCj4gPj4+IEFueXdheXMsIHRoZSBjb3ZlcmxldHRlciBjb250YWlucyBt
b3JlIGRldGFpbHMgYWJvdXQgaXQuCj4gPj4+Cj4gPj4+ICJkdC1iaW5kaW5nczogcGh5OiBzYW1z
dW5nLHVzYjMtZHJkLXBoeTogYWRkIEV4eW5vc0F1dG92OTIwIGNvbWJvCj4gPj4+IHNzcGh5Cj4g
Pj4+Cj4gPj4+ICAgQWRkIHNjaGVtYSBmb3IgY29tYm8gc3NwaHkgZm91bmQgb24gdGhpcyBTb0Mu
Cj4gPj4+ICIKPiA+Pj4KPiA+Pj4gUGxlYXNlIGNvbmZpcm0gaWYgdGhpcyBsb29rcyBmaW5lPwo+
ID4+PiBJZiBzbywgd2lsbCByZWZsZWN0IHRoZSBzaW1pbGFyIGNvbW1pdCBtZXNzYWdlcyBpbiBw
YXRjaCAxIGFuZCAzLgo+ID4+Cj4gPj4gUGxlYXNlIHJlYWQgbXkgZmlyc3QgY29tbWVudCBhZ2Fp
bi4gSSBkbyBub3Qgc2VlIGhvdyBkb2VzIHRoaXMKPiA+PiBzYXRpc2Z5IGhhcmR3YXJlIGV4cGxh
bmF0aW9uLgo+ID4+Cj4gPiBKdXN0IHdlbnQgdGhyb3VnaCB0aGUgY29udmVyc2F0aW9uIGFib3Zl
LCB1bnRpbCB3aGF0IGV4dGVudCBoYXJkd2FyZQo+ID4gZGVzY3JpcHRpb24gbmVlZCB0byBiZSBl
eHBsYWluIGluIHRoZSBjb21taXQ/Cj4gPiBEbyB3ZSBoYXZlIGFueSBndWlkZWxpbmUgZm9yIHRo
ZSBzYW1lPwo+ID4gQ291bGQgeW91IHBsZWFzZSBoZWxwIHdpdGggYW4gZXhhbXBsZSBmcm9tIHBy
ZXZpb3VzIGFueSBjb21taXQgb3Igc29tZQo+IG90aGVyIHBhdGNoZXM/Cj4gPiBJIHVuZGVyc3Rh
bmQgdGhhdCBtZW50aW9uaW5nLCDigJx0d28gY2xvY2tzLCB0d28gc3VwcGxpZXMgZXRjIiBhcmUg
cGFydA0KPiA+IG9mIHNjaGVtYSwgb25lIG1heSBvciBtYXkgbm90IGNhcHR1cmUgdGhhdCBpbiB0
aGUgY29tbWl0Lg0KPiA+IEhvd2V2ZXIgbWVudGlvbmluZywg4oCcdGhpcyBoYXJkd2FyZSAoU29D
KSBjb250YWluIGEgY29tYm8gUEhZIHdoaWNoDQo+IHN1cHBvcnRzIHVzYjMuMSBhbmQgdXNiMy4w
IiBpcyBub3Qgb2s/DQo+IA0KPiANCj4gTWF5YmUgdGhhdCdzIGp1c3QgbGFuZ3VhZ2UsIGJ1dCB0
byBtZSB0aGUgY29tbWl0IG1zZyBkaWQgbm90IGRlc2NyaWJlDQo+IGhhcmR3YXJlIGFmdGVyIGZp
cnN0IHNlbnRlbmNlLCBidXQgc2FpZCB3aGF0IHNjaGVtYSByZXF1aXJlcyAoc29tZQ0KPiBjbG9j
a3MgYW5kIHN1cHBsaWVzKS4gT3RoZXIgZXhhbXBsZXM6DQo+IDAwMzk5YmJlMDJkMmJiNmZkOGQ2
ZWI5MDU3M2VjMzA1NjE2NDQ5ZjQNCj4gZTRjOWE3YjQ3NWU1ZDBkOWIyNDQwZWU0OGY5MWQxMzY0
ZWFiZDZjYg0KPiANClRoYW5rcyBmb3Igc3VnZ2VzdGlvbiBhcyBhbHdheXMsIEkgaG9wZSB0aGUg
YXV0aG9yIGNhbiBmb2xsb3cgdGhpcy4gDQoNCj4gYW5kIGhlcmUgYW5vdGhlciBhbnRpLXBhdHRl
cm46DQo+IDIzZjc5Mzg1MGU5ZWU3MzkwNTg0YzA4MDlmMDg1ZDZjODhkZTdkM2YNCj4gDQo+IChh
bmQgYmVmb3JlIHlvdSBhc2sgd2h5IGFib3ZlIGNhcnJpZXMgbXkgUmIgdGFnLCB0aGVuIG5vdGUg
dGhhdA0KSSB3aWxsIG5vdCBhc2sgOi0pDQo+IFNhbXN1bmcncyByZXZlbnVlIGlzIGFyb3VuZCAy
MjAgYmlsbGlvbiBVU0QsIHNvIGZvciBzdXJlIGl0IGhhcyBhIGxvdCwNCj4gcmVhbGx5IGEgbG90
IG9mIHJlc291cmNlcyB0byByZXZpZXcgcGF0Y2hlcyBpbnRlcm5hbGx5IGFuZCBpbXByb3ZlIHRo
ZWlyDQo+IHF1YWxpdHkgYmVmb3JlIHBvc3RpbmcpLg0KPiANCkhtbS4uLiwgaG93ZXZlciBsZXQg
bWUgY2hlY2sgaW50ZXJuYWxseS4NCg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0KDQoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
