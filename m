Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30129C61DB2
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 09:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLyVhqInUM3r1kDWat10oXRrbXrb9qyePAatkmtuaxU=; b=lLFbAPuUizBCWw
	+HeCOfIk3SUfdLK0abMVH0NOxQbL/tFSH12IYH9tyNzeU6CtmowgEQIrH/vxoLYHfmt0bIDXxpvyd
	VCA6X4rCDMOu5aO/opVfDnxWhcwijc5cOK0RxNTx4t42ZLB1hE/0dVUaaiuEO+ilvEHOrmWBNactU
	8BMSPjjCd47OM6I+6CwCl406Bl1oos12Y+p0lp0GgNc4bxTFCIB+5Evnf9FhbhqmjFXlptIHIfVzf
	uR1V1I52AZZeePtBtoZ/4oYInc4wCva4I1GMlcHus39QjV0gGNsesxEV1QfjHHDyfsOk49Dm37IbZ
	c9KBRkE2IWF5eTLufylQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Ny-0000000FrFA-3uGM;
	Fri, 13 Jun 2025 09:07:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0LR-0000000FqMj-38sl;
	Fri, 13 Jun 2025 09:05:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 79DFD49D84;
	Fri, 13 Jun 2025 09:05:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A22C4CEE3;
	Fri, 13 Jun 2025 09:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749805505;
	bh=/z3ISYzkV0unW5sqeJeb8uAQIRvRJjWrGvnYEIkJOl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I1D314jDshWGk9VU2FaY4xmGqqNeYJ+VEfnVmgJTbLmVUHHkWXnQ/bz5woAKzjvTP
	 /DOvGnVk+VFicXXGm06il7p1yMWrGU1SrtwLvKYooEcl1/LvCtWvSdod2fqOwHKinI
	 StbcptvHentF5Eltm8p22RKUHdoQ8dkhrZbjNGzfbjCDBfPqIjy3CbCryp/gAlspNP
	 nuP7WJp4925btgScwJ1DSd8MdyUnu4D9EASBYnU5c4z+mq08FLc+QW5rd6RDW3eene
	 yN6Ex20uiZkditsFIUM2eMD/uqKuvBx+c4h1Q9GSHmhOOXLosJ4N/TXPLe1SvV8MF1
	 g9Dz9rRKzCncg==
Date: Fri, 13 Jun 2025 14:34:54 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: 'Krzysztof Kozlowski' <krzk@kernel.org>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.or, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de, 
	m.szyprowski@samsung.com, jh80.chung@samsung.com, 
	'Pankaj Dubey' <pankaj.dubey@samsung.com>
Subject: Re: [PATCH 04/10] PCI: exynos: Add platform device private data
Message-ID: <fty3sp3brzpcs6jeqg6yxiwgpbyqogxqt5mo7owiw4vkl7vj2j@b33zfdizuy4d>
References: <20250518193152.63476-1-shradha.t@samsung.com>
 <CGME20250518193239epcas5p4cb4112382560f38ad9708e000eb2335f@epcas5p4.samsung.com>
 <20250518193152.63476-5-shradha.t@samsung.com>
 <20250521-cheerful-spiked-mackerel-ef7ade@kuoka>
 <0e2301dbcef4$42969af0$c7c3d0d0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e2301dbcef4$42969af0$c7c3d0d0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_020505_846513_CA471982 
X-CRM114-Status: GOOD (  26.25  )
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

T24gVHVlLCBNYXkgMjcsIDIwMjUgYXQgMDQ6MTM6NThQTSArMDUzMCwgU2hyYWRoYSBUb2RpIHdy
b3RlOgo+IAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiA+IFNlbnQ6IDIxIE1heSAyMDI1IDE1
OjE1Cj4gPiBUbzogU2hyYWRoYSBUb2RpIDxzaHJhZGhhLnRAc2Ftc3VuZy5jb20+Cj4gPiBDYzog
bGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtc2Ftc3VuZy1zb2NAdmdl
ci5rZXJuZWwub3I7Cj4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZzsgbWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc7IGxw
aWVyYWxpc2lAa2VybmVsLm9yZzsKPiA+IGt3QGxpbnV4LmNvbTsgcm9iaEBrZXJuZWwub3JnOyBi
aGVsZ2Fhc0Bnb29nbGUuY29tOyBqaW5nb29oYW4xQGdtYWlsLmNvbTsga3J6aytkdEBrZXJuZWwu
b3JnOyBjb25vcitkdEBrZXJuZWwub3JnOwo+ID4gYWxpbS5ha2h0YXJAc2Ftc3VuZy5jb207IHZr
b3VsQGtlcm5lbC5vcmc7IGtpc2hvbkBrZXJuZWwub3JnOyBhcm5kQGFybmRiLmRlOyBtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb207Cj4gPiBqaDgwLmNodW5nQHNhbXN1bmcuY29tOyBQYW5rYWogRHVi
ZXkgPHBhbmthai5kdWJleUBzYW1zdW5nLmNvbT4KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMDQv
MTBdIFBDSTogZXh5bm9zOiBBZGQgcGxhdGZvcm0gZGV2aWNlIHByaXZhdGUgZGF0YQo+ID4gCj4g
PiBPbiBNb24sIE1heSAxOSwgMjAyNSBhdCAwMTowMTo0NkFNIEdNVCwgU2hyYWRoYSBUb2RpIHdy
b3RlOgo+ID4gPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBkd19wY2llX29wcyBkd19wY2llX29wcyA9
IHsKPiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMgZXh5bm9zX2R3X3BjaWVf
b3BzID0gewo+ID4gPiAgCS5yZWFkX2RiaSA9IGV4eW5vc19wY2llX3JlYWRfZGJpLAo+ID4gPiAg
CS53cml0ZV9kYmkgPSBleHlub3NfcGNpZV93cml0ZV9kYmksCj4gPiA+ICAJLmxpbmtfdXAgPSBl
eHlub3NfcGNpZV9saW5rX3VwLAo+ID4gPiBAQCAtMjc5LDYgKzI4Niw3IEBAIHN0YXRpYyBpbnQg
ZXh5bm9zX3BjaWVfcHJvYmUoc3RydWN0Cj4gPiA+IHBsYXRmb3JtX2RldmljZSAqcGRldikgIHsK
PiA+ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gPiAgCXN0cnVjdCBl
eHlub3NfcGNpZSAqZXA7Cj4gPiA+ICsJY29uc3Qgc3RydWN0IHNhbXN1bmdfcGNpZV9wZGF0YSAq
cGRhdGE7Cj4gPiA+ICAJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPiA+
ID4gIAlpbnQgcmV0Owo+ID4gPgo+ID4gPiBAQCAtMjg2LDggKzI5NCwxMSBAQCBzdGF0aWMgaW50
IGV4eW5vc19wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ICAJ
aWYgKCFlcCkKPiA+ID4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gPiA+Cj4gPiA+ICsJcGRhdGEgPSBv
Zl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPiA+ID4gKwo+ID4gPiArCWVwLT5wZGF0YSA9
IHBkYXRhOwo+ID4gPiAgCWVwLT5wY2kuZGV2ID0gZGV2Owo+ID4gPiAtCWVwLT5wY2kub3BzID0g
JmR3X3BjaWVfb3BzOwo+ID4gPiArCWVwLT5wY2kub3BzID0gcGRhdGEtPmR3Y19vcHM7Cj4gPiA+
Cj4gPiA+ICAJZXAtPnBoeSA9IGRldm1fb2ZfcGh5X2dldChkZXYsIG5wLCBOVUxMKTsKPiA+ID4g
IAlpZiAoSVNfRVJSKGVwLT5waHkpKQo+ID4gPiBAQCAtMzYzLDkgKzM3NCw5IEBAIHN0YXRpYyBp
bnQgZXh5bm9zX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4gIAkJ
cmV0dXJuIHJldDsKPiA+ID4KPiA+ID4gIAkvKiBleHlub3NfcGNpZV9ob3N0X2luaXQgY29udHJv
bHMgZXAtPnBoeSAqLwo+ID4gPiAtCWV4eW5vc19wY2llX2hvc3RfaW5pdChwcCk7Cj4gPiA+ICsJ
ZXAtPnBkYXRhLT5ob3N0X29wcy0+aW5pdChwcCk7Cj4gPiA+ICAJZHdfcGNpZV9zZXR1cF9yYyhw
cCk7Cj4gPiA+IC0JZXh5bm9zX3BjaWVfc3RhcnRfbGluayhwY2kpOwo+ID4gPiArCWVwLT5wZGF0
YS0+ZHdjX29wcy0+c3RhcnRfbGluayhwY2kpOwo+ID4gCj4gPiBPbmUgbW9yZSBsYXllciBvZiBp
bmRpcmVjdGlvbi4KPiA+IAo+ID4gUmVhZDoKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC9DQUxfSnNxSmdhZU9jblV6dytyVUYyeU80aFFZQ2RaWXNzanhIenJEdnZIR0ppbXJBU0FAbWFp
bC5nbWFpbC5jb20vCj4gPiAKPiAKPiBJIHdlbnQgdGhyb3VnaCB0aGlzIHRocmVhZCBhbmQgdGhl
IHNvbHV0aW9uIHRvIGF2b2lkIHJlZGlyZWN0aW9uIHNlZW1zIHRvIGJlOgo+IDEuIE1ha2UgdGhl
IGNvbW1vbiBwYXJ0cyBpbnRvIGEgbGlicmFyeSB0aGF0IGVhY2ggZHJpdmVyIGNhbiBjYWxsCj4g
Mi4gV2hlbiB0aGVyZSBpcyBiYXJlbHkgYW55dGhpbmcgaW4gY29tbW9uLCBtYWtlIGEgc2VwYXJh
dGUgZHJpdmVyCj4gCj4gRnJvbSBteSB1bmRlcnN0YW5kaW5nIG9mIHRoZXNlIDIgZHJpdmVycywg
dGhlcmUgaXMgaGFyZGx5IGFueXRoaW5nIHRoYXQgY2FuIGdvIGludG8gY29tbW9uIGxpYnJhcnkK
PiAxLiBob3N0X2luaXQsIGRiaV9yZWFkLCBkYmlfd3JpdGUgdGhlc2Ugb3BzIGhhdmUgY29tcGxl
dGVseSBkaWZmZXJlbnQgZmxvdwo+IDIuIGxpbmtfdXAsIHN0YXJ0X2xpbmsgaGF2ZSBzaW1pbGFy
IGZsb3cgYnV0IGRpZmZlcmVudCByZWdpc3RlciBvZmZzZXRzCj4gMy4gd3JpdGVfZGJpMiBhbmQg
c3RvcF9saW5rIGlzIG5vdCBpbXBsZW1lbnRlZCBmb3IgZXh5bm9zIGJ1dCBuZWVkZWQgZm9yIEZT
RAo+IDQuIFJlc291cmNlcyBhcmUgZGlmZmVyZW50IC0gRlNEIGRvZXMgbm90IGhhdmUgcmVndWxh
dG9yLCBFeHlub3M1NDMzIGRvZXMgbm90IGhhdmUgc3lzY29uLCBGU0QgaGFzIG1zaSBJUlEgdnMg
ZXh5bm9zNTQzMyBoYXMgbGVnYWN5Cj4gNS4gRXh5bm9zIGlzIGhvc3Qgb25seSB3aGVyZWFzIEZT
RCBpcyBkdWFsIG1vZGUgY29udHJvbGxlci4KPiAKPiBJIGRvbuKAmXQgc2VlIGFueSBvdGhlciB3
YXkgZXhjZXB0IHJlZGlyZWN0aW9uLCBvciB1c2luZyBsb3RzIG9mIGlmKHZhcmlhbnQgPT0gRlNE
KSB3aGljaCBpcyBhbHNvIGRpc2NvdXJhZ2VkLgoKUGxlYXNlIHdyYXAgeW91ciByZXBsaWVzIHRv
IDgwIGNvbHVtbnMuCgo+IAoKSU1PIGl0IGlzIE9LIHRvIGhhdmUgdGhlIGNhbGxiYWNrcyBmb3Ig
Y2FzZXMgbGlrZSB0aGlzLiBUaGlzIGlzIGFsc28gc2ltaWxhciB0bwpRY29tIGRyaXZlciB3aGVy
ZSBlYWNoIFNvQyByZXF1aXJlcyBjdXN0b20gcmVnaXN0ZXIgdXBkYXRlcyBhbmQgZ29pbmcgYnkg
dGhlCmNvbW1vbiBsaWJyYXJ5IG9yIGEgbmV3IGRyaXZlciB3b3VsZG4ndCBiZSBmZWFzaWJsZS4K
Cj4gQW5kIGFib3V0IG1ha2luZyBpdCBhIGRpZmZlcmVudCBkcml2ZXIgYWx0b2dldGhlciwgSSdt
IGNvbXBsZXRlbHkgb2theSB0byBkbyBzby4gSW4gZmFjdCB3ZSBoYWQgcHJldmlvdXNseSB0cmll
ZCB0byBwb3N0IGl0IGFzIGEKPiBkaWZmZXJlbnQgZHJpdmVyIHdoaWNoIHdhcyByZWplY3RlZC4K
PiAKCk5vLCBwbGVhc2UgZG8gbm90IGNyZWF0ZSBhIG5ldyBkcml2ZXIsIHRoYXQgaXMgYW5vdGhl
ciBtYWludGFpbmVyIGJ1cmRlbi4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
