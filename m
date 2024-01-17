Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5469C47DA2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9zKyy5xS67VXVeAvxnQ0mMnUfIq6xC8FDtsBqf1CNU=; b=ljID68OkW07Hvc
	dNN1OTplIfe2r3s4B+4woH1I2BZPKvobO1KvA0Sb8EsD2sY0mUbseniwQ4XkBs+Owjb+4L/eYDBzx
	XHtjx2SMJqAEbPNcmJ895lnlRJlTafh+yP+urj24xQ2R3GAYQFVWg9VQp34XOC5jM8o3P6MqjVfLH
	91H9CPORJwHjclu10TTLA0Bdq9wks3sfOog4pOCM0z3hSewU9WShug9X2dM2lKVtaK4t7fT7VikAz
	0NwORKYixY2My5upln5Y+eOukkMiwzArGkSWMW4B9GoOJqxrRFmPTFSU2XNzBb9p5m/YO6ySN39XZ
	IepBYvC1wlq+qRCqn/HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ7bW-00HOrd-1D;
	Wed, 17 Jan 2024 15:13:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ7bT-00HOoB-1m
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 15:13:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rQ7b0-0000IN-Ew; Wed, 17 Jan 2024 16:12:50 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rQ7ay-000UW3-1a; Wed, 17 Jan 2024 16:12:48 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rQ7ax-000C5F-36;
	Wed, 17 Jan 2024 16:12:47 +0100
Message-ID: <cf6440c08b8b7382e6693e18cdd29325aaea9cc9.camel@pengutronix.de>
Subject: Re: [PATCH 11/14] phy: cadence-torrent: add suspend and resume
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Thomas Richard <thomas.richard@bootlin.com>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy
 Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, Haojian
 Zhuang <haojian.zhuang@linaro.org>,  Vignesh R <vigneshr@ti.com>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Tom
 Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,  Rob Herring
 <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com,  thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Date: Wed, 17 Jan 2024 16:12:47 +0100
In-Reply-To: <20240102-j7200-pcie-s2r-v1-11-84e55da52400@bootlin.com>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
	 <20240102-j7200-pcie-s2r-v1-11-84e55da52400@bootlin.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_071319_713872_1BB535DC 
X-CRM114-Status: GOOD (  16.93  )
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

SGkgVGhvbWFzLAoKT24gTW8sIDIwMjQtMDEtMTUgYXQgMTc6MTQgKzAxMDAsIFRob21hcyBSaWNo
YXJkIHdyb3RlOgo+IEFkZCBzdXNwZW5kIGFuZCByZXN1bWUgc3VwcG9ydC4KPiBUaGUgYWxyZWFk
X2NvbmZpZ3VyZWQgZmxhZyBpcyBjbGVhcmVkIGR1cmluZyBzdXNwZW5kIHN0YWdlIHRvIGZvcmNl
IHRoZQo+IHBoeSBpbml0aWFsaXphdGlvbiBkdXJpbmcgdGhlIHJlc3VtZSBzdGFnZS4KPiAKPiBC
YXNlZCBvbiB0aGUgd29yayBvZiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29t
Pgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9tYXMucmljaGFyZEBib290
bGluLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50
LmMgfCA1NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA1NyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2NhZGVuY2Uv
cGh5LWNhZGVuY2UtdG9ycmVudC5jIGIvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10
b3JyZW50LmMKPiBpbmRleCA3MDQxM2ZjYTU3NzYuLjMxYjI1OTRlNTk0MiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCj4gQEAgLTMwMDYsNiArMzAwNiw2
MiBAQCBzdGF0aWMgdm9pZCBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQpbLi4uXQo+ICtzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9waHlfcmVzdW1l
X25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IGNkbnNfdG9ycmVudF9w
aHkgKmNkbnNfcGh5ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwlpbnQgbm9kZSA9IGNkbnNf
cGh5LT5uc3Vibm9kZXM7Cj4gKwlpbnQgcmV0LCBpOwo+ICsKPiArCXJldCA9IGNkbnNfdG9ycmVu
dF9jbGsoY2Ruc19waHkpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGNsa19jbGVhbnVwOwo+ICsK
PiArCS8qIEVuYWJsZSBBUEIgKi8KPiArCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoY2Ruc19waHkt
PmFwYl9yc3QpOwo+ICsKPiArCWlmIChjZG5zX3BoeS0+bnN1Ym5vZGVzID4gMSkgewo+ICsJCXJl
dCA9IGNkbnNfdG9ycmVudF9waHlfY29uZmlndXJlX211bHRpbGluayhjZG5zX3BoeSk7Cj4gKwkJ
aWYgKHJldCkKPiArCQkJZ290byBwdXRfbG5rX3JzdDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsK
PiArCj4gK3B1dF9sbmtfcnN0Ogo+ICsJZm9yIChpID0gMDsgaSA8IG5vZGU7IGkrKykKPiArCQly
ZXNldF9jb250cm9sX3B1dChjZG5zX3BoeS0+cGh5c1tpXS5sbmtfcnN0KTsKCldoYXQgaXMgdGhp
cyBpbnRlbmRlZCB0byBkbz8gSSBleHBlY3QgdGhpcyB0byBleHBsb2RlIGluIF9yZW1vdmUsIHdo
ZXJlCnRoZcKgbG5rX3JzdCBhcmUgcHV0IGFnYWluLiBTaG91bGQgdGhpcyBiZToKCgkJcmVzZXRf
Y29udHJvbF9hc3NlcnQoY2Ruc19waHktPnBoeXNbaV0ubG5rX3JzdCk7Cgo/CgoKcmVnYXJkcwpQ
aGlsaXBwCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
