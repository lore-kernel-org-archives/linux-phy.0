Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B802C54788
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYuVcBVxq4Uvn+hR7lCe7HWE/FR1iUPVzyOcsOGmR2w=; b=EYrR7W38tlU94S
	lp5lbZZgdtIEc/H95Bajx7GyPJceCJ/JXPZTWaf/oso8+GhZJ0PtL9hW+9F6Ldo+63rTyShrIIVgP
	+kXndQ81MkttTaCGOBgmgJnpGwxKHZg54iGIq1fnNz+5UVP272lo6GCCWyVMe4sbpSHg2tyFe/t3v
	Q2sAlv0BbAin2iTgw87nt+PxkgDKiIokyRxIaXGO7w0IkIx2tdY97YNfAPhMaTnpkOyGa9O+PKVQ9
	u6eP0W7kIiZFXLXcliciAwJZU9CV3b72LoZt3xdwmbCSFWGYOwgCX2RxDu+sxxWdatYd8uRk2J3fh
	ZzYTm3DWX80HYBFnM1ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcn7r-00000001ADk-3fgR;
	Wed, 21 Feb 2024 13:59:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcn7n-00000001ABn-40GK
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 13:59:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcn7W-0000Lo-VY; Wed, 21 Feb 2024 14:58:46 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcn7U-0023E5-1L; Wed, 21 Feb 2024 14:58:44 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcn7T-000AN8-35;
	Wed, 21 Feb 2024 14:58:43 +0100
Message-ID: <338419fd10ffcc62b135d924f766d66af8186346.camel@pengutronix.de>
Subject: Re: [PATCH v3 14/18] phy: cadence-torrent: add suspend and resume
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Thomas Richard <thomas.richard@bootlin.com>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy
 Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, Haojian
 Zhuang <haojian.zhuang@linaro.org>,  Vignesh R <vigneshr@ti.com>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof
 =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com,  thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Date: Wed, 21 Feb 2024 14:58:43 +0100
In-Reply-To: <113b7f2e-1313-4ebf-a403-e5fcae8f01ca@bootlin.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
	 <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
	 <c105bfa8567f9e76731f2b018f4ca3176357204d.camel@pengutronix.de>
	 <113b7f2e-1313-4ebf-a403-e5fcae8f01ca@bootlin.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_055904_006119_A62CF0B3 
X-CRM114-Status: GOOD (  29.67  )
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

T24gTWksIDIwMjQtMDItMjEgYXQgMTQ6NDEgKzAxMDAsIFRob21hcyBSaWNoYXJkIHdyb3RlOgo+
IE9uIDIvMjEvMjQgMTQ6MDksIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4gPiBPbiBEbywgMjAyNC0w
Mi0xNSBhdCAxNjoxNyArMDEwMCwgVGhvbWFzIFJpY2hhcmQgd3JvdGU6Cj4gPiA+IEFkZCBzdXNw
ZW5kIGFuZCByZXN1bWUgc3VwcG9ydC4KPiA+ID4gCj4gPiA+IFRoZSBhbHJlYWR5X2NvbmZpZ3Vy
ZWQgZmxhZyBpcyBjbGVhcmVkIGR1cmluZyB0aGUgc3VzcGVuZCBzdGFnZSB0byBmb3JjZQo+ID4g
PiB0aGUgUEhZIGluaXRpYWxpemF0aW9uIGR1cmluZyB0aGUgcmVzdW1lIHN0YWdlLgo+ID4gPiAK
PiA+ID4gQmFzZWQgb24gdGhlIHdvcmsgb2YgVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290
bGluLmNvbT4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9t
YXMucmljaGFyZEBib290bGluLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3BoeS9jYWRl
bmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyB8IDU0ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspCj4gPiA+IAo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMg
Yi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwo+ID4gPiBpbmRleCA1
MmNhZGNhNGMwN2IuLmY4OTQ1YTExZTdjYSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkv
Y2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKPiA+ID4gKysrIGIvZHJpdmVycy9waHkvY2Fk
ZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKPiA+ID4gQEAgLTMwMDUsNiArMzAwNSw1OSBAQCBz
dGF0aWMgdm9pZCBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gPiAgCWNkbnNfdG9ycmVudF9jbGtfY2xlYW51cChjZG5zX3BoeSk7Cj4gPiA+
ICB9Cj4gPiA+ICAKPiA+ID4gK3N0YXRpYyBpbnQgY2Ruc190b3JyZW50X3BoeV9zdXNwZW5kX25v
aXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgY2Ruc190b3Jy
ZW50X3BoeSAqY2Ruc19waHkgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+ID4gKwlpbnQgaTsK
PiA+ID4gKwo+ID4gPiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5waHlfcnN0KTsK
PiA+ID4gKwlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+YXBiX3JzdCk7Cj4gPiA+ICsJ
Zm9yIChpID0gMDsgaSA8IGNkbnNfcGh5LT5uc3Vibm9kZXM7IGkrKykKPiA+ID4gKwkJcmVzZXRf
Y29udHJvbF9hc3NlcnQoY2Ruc19waHktPnBoeXNbaV0ubG5rX3JzdCk7Cj4gPiA+ICsKPiA+ID4g
KwlpZiAoY2Ruc19waHktPmFscmVhZHlfY29uZmlndXJlZCkKPiA+ID4gKwkJY2Ruc19waHktPmFs
cmVhZHlfY29uZmlndXJlZCA9IDA7Cj4gPiA+ICsJZWxzZQo+ID4gPiArCQljbGtfZGlzYWJsZV91
bnByZXBhcmUoY2Ruc19waHktPmNsayk7Cj4gPiA+ICsKPiA+ID4gKwlyZXR1cm4gMDsKPiA+ID4g
K30KPiA+ID4gKwo+ID4gPiArc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3Jlc3VtZV9ub2ly
cShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IGNkbnNfdG9ycmVu
dF9waHkgKmNkbnNfcGh5ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPiA+ICsJaW50IG5vZGUg
PSBjZG5zX3BoeS0+bnN1Ym5vZGVzOwo+ID4gPiArCWludCByZXQsIGk7Cj4gPiA+ICsKPiA+ID4g
KwlyZXQgPSBjZG5zX3RvcnJlbnRfY2xrKGNkbnNfcGh5KTsKPiA+ID4gKwlpZiAocmV0KQo+ID4g
PiArCQlnb3RvIGNsa19jbGVhbnVwOwo+ID4gPiArCj4gPiA+ICsJLyogRW5hYmxlIEFQQiAqLwo+
ID4gPiArCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoY2Ruc19waHktPmFwYl9yc3QpOwo+ID4gPiAr
Cj4gPiA+ICsJaWYgKGNkbnNfcGh5LT5uc3Vibm9kZXMgPiAxKSB7Cj4gPiA+ICsJCXJldCA9IGNk
bnNfdG9ycmVudF9waHlfY29uZmlndXJlX211bHRpbGluayhjZG5zX3BoeSk7Cj4gPiA+ICsJCWlm
IChyZXQpCj4gPiA+ICsJCQlnb3RvIHB1dF9sbmtfcnN0Owo+ID4gPiArCX0KPiA+ID4gKwo+ID4g
PiArCXJldHVybiAwOwo+ID4gPiArCj4gPiA+ICtwdXRfbG5rX3JzdDoKPiA+ID4gKwlmb3IgKGkg
PSAwOyBpIDwgbm9kZTsgaSsrKQo+ID4gPiArCQlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3Bo
eS0+cGh5c1tpXS5sbmtfcnN0KTsKPiA+IAo+ID4gVGhlIHNhbWUgY2xlYW51cCBpcyBmb3VuZCBp
biBwcm9iZS4gV291bGQgaXQgYmUgY2xlYW5lciB0byBtb3ZlIHRoaXMKPiA+IGludG8gY2Ruc190
b3JyZW50X3BoeV9jb25maWd1cmVfbXVsdGlsaW5rKCkgaW5zdGVhZCBvZiBkdXBsaWNhdGluZyBp
dAo+ID4gaGVyZT8KPiAKPiBIZWxsbyBQaGlsaXBwLAo+IAo+IFllcyBJIGNvdWxkLCBidXQgZnJv
bSBteSBwb2ludCBvZiB2aWV3LCBpdCB3b3VsZCBub3QgYmUgY2xlYW5lci4KPiBUaGlzIGNsZWFu
dXAgaXMgY2FsbGVkIGZyb20gbWFueSBwbGFjZXMgaW4gdGhlIHByb2JlOgo+IC0KPiBodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni44LXJjNS9zb3VyY2UvZHJpdmVycy9waHkvY2Fk
ZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMjTDI5NDgKPiAtCj4gaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjYuOC1yYzUvc291cmNlL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNh
ZGVuY2UtdG9ycmVudC5jI0wyOTU0Cj4gLQo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y2LjgtcmM1L3NvdXJjZS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJl
bnQuYyNMMjk2MAo+Cj4gSWYgSSBhZGQgdGhpcyBjbGVhbnVwIGluIGNkbnNfdG9ycmVudF9waHlf
Y29uZmlndXJlX211bHRpbGluaygpLCB5ZXMgSQo+IGNvdWxkIHJlbW92ZSBpdCBmcm9tIGNkbnNf
dG9ycmVudF9waHlfcmVzdW1lX25vaXJxKCksIGJ1dCBJIHNob3VsZCBrZWVwCj4gaXQgaW4gdGhl
IHByb2JlLiBBbmQgSSBzaG91bGQgbW9kaWZ5IHRoZSBwcm9iZSB0byBqdW1wIHRvIGNsa19jbGVh
bnVwIGlmCj4gY2Ruc190b3JyZW50X3BoeV9jb25maWd1cmVfbXVsdGlsaW5rKCkgZmFpbHMuCgpJ
IHNlZSBpdCBub3cuIElmIGl0IGNhbid0IGJlIGNvbnNvbGlkYXRlZCwgaXQncyBub3QgdXNlZnVs
IHRvIG1vdmUgaXQKYXJvdW5kLgoKPiAKcmVnYXJkcwpQaGlsaXBwCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
