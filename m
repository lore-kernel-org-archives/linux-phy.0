Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C75AD3C922
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 16:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIrvQs6IhdZtRyxdTG0GBR62hk6LYkaanMJProOzrhc=; b=QB4kp0uKnEB8Qu
	/dr2HXwM+DHcmBhlbEvx5O3TqydL4yoDHsQMP5PsOWd3xN3RZbYFBfy9dr8vG5Ibz6Iz5VymZ8qK5
	nfFnOrahKyUuNVO1aP7pfJmteJbtiKyRHMo+m30x0Orx3gGmO8oAmI6EFjAX07suZ/w8dV/1HqHqY
	mo442VSFUqsyGz4QlUu5kLQdNw1fv1WLxCG4kel6PcwvJpjuNjdcXh3B8wiIMufw7YI4wuDeqb/OH
	NkczoRLhBzPqApEeCi3emagiHtxCS3S6UJ++8916PL5CJxRL3tJQ6lxVGU5wwacx7jdMHZcOqNQgc
	UjiE5KFrH/kBnZSIm9AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTMiF-0000000Fbga-3Dgr;
	Wed, 10 Dec 2025 16:06:47 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTMiB-0000000Fbfa-4AsS
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 16:06:46 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5A9861A20B0;
	Wed, 10 Dec 2025 16:06:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1EF1560714;
	Wed, 10 Dec 2025 16:06:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4AD4B11931A8C;
	Wed, 10 Dec 2025 17:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765382798; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=3Z3jV2Yj9IT8vHbljyxoGx7tPeCujNrjG+4aQRJ7ptM=;
	b=1mXvKYJcP7otAFdBA1ryX/2go8lT8U3Bbf7K0BRl+qYoESbyXVnXH9EWzPhR3dDBvfsMUp
	eeq31lSCd2ocZgDscsfYsx0pCPppC/3aUYgtxifWBEfwkanF7pYtvMBrPs1CBv6SNTrGW1
	XrtszL9Wwxzb86DdqKVxpp7t5PDVitjZaWGhxiia7lnBezmnFjMFuDy4uVOXh/nMrOSMSU
	ejDtV3rD2+syhtpbbM+9BwGuo8nbPmclpZzg02kBJi0NSbJt/sRgdxPhZqHgKz0i4lFiWn
	LiaOxN7GlQpclyfGbef9spIKmqxgMExAkrBu+Qcf3Olo4zmvB1Tl9t12B5S3Wg==
Mime-Version: 1.0
Date: Wed, 10 Dec 2025 17:06:32 +0100
Message-Id: <DEUNYYW0Y23E.2SA0SOCS99NA0@bootlin.com>
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v4 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
X-Mailer: aerc 0.20.1
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-2-955c625a81a7@bootlin.com>
In-Reply-To: <20251124-macb-phy-v4-2-955c625a81a7@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_080644_635635_52892A28 
X-CRM114-Status: GOOD (  16.35  )
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

T24gTW9uIE5vdiAyNCwgMjAyNSBhdCAzOjQxIFBNIENFVCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+
IEV5ZVE1IGVtYmVkcyBhIHN5c3RlbS1jb250cm9sbGVyIGNhbGxlZCBPTEIuIEl0IGZlYXR1cmVz
IG1hbnkgdW5yZWxhdGVkCj4gcmVnaXN0ZXJzLCBhbmQgc29tZSBvZiB0aG9zZSBhcmUgcmVnaXN0
ZXJzIHVzZWQgdG8gY29uZmlndXJlIHRoZQo+IGludGVncmF0aW9uIG9mIHRoZSBSR01JSS9TR01J
SSBDYWRlbmNlIFBIWSB1c2VkIGJ5IE1BQ0IvR0VNIGluc3RhbmNlcy4KPgo+IFdyYXAgaW4gYSBu
ZWF0IGdlbmVyaWMgUEhZIHByb3ZpZGVyLCBleHBvc2luZyB0d28gUEhZcyB3aXRoIHN0YW5kYXJk
Cj4gcGh5X2luaXQoKSAvIHBoeV9zZXRfbW9kZSgpIC8gcGh5X3Bvd2VyX29uKCkgb3BlcmF0aW9u
cy4KPgo+IFNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5j
b20+CgpbLi4uXQoKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWV5ZXE1
LWV0aC5jCj4gQEAgLTAsMCArMSwyNTQgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seQo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2FycmF5X3NpemUuaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L2F1eGlsaWFyeV9idXMuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxk
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9idWcuaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2NsZWFudXAuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2NvbnRhaW5l
cl9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9l
cnIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pbml0
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9sb2NrZGVwLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2RfZGV2
aWNldGFibGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGh5Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9waHkv
cGh5Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC90eXBl
cy5oPgoKQXJlIGFsbCB0aGVzZSBpbmNsdWRlIGZpbGVzIHJlYWxseSBuZWVkZWQ/IEF0IGEgcXVp
Y2sgZ2xhbmNlIGJpdGZpZWxkLmgsCmNsZWFudXAuaCBhbmQgbG9ja2RlcC5oIGxvb2sgdW51c2Vk
IGluIHRoaXMgZmlsZS4KCj4gKyNkZWZpbmUgRVE1X1BIWV9DT1VOVAkyCgpbLi4uXQoKPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIGVxNV9waHlfb3BzID0gewo+ICsJLmluaXQJCT0gZXE1
X3BoeV9pbml0LAo+ICsJLmV4aXQJCT0gZXE1X3BoeV9leGl0LAo+ICsJLnNldF9tb2RlCT0gZXE1
X3BoeV9zZXRfbW9kZSwKPiArCS5wb3dlcl9vbgk9IGVxNV9waHlfcG93ZXJfb24sCj4gKwkucG93
ZXJfb2ZmCT0gZXE1X3BoeV9wb3dlcl9vZmYsCj4gK307Cj4gKwo+ICtzdGF0aWMgc3RydWN0IHBo
eSAqZXE1X3BoeV94bGF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gKwkJCQkgY29uc3Qgc3RydWN0
IG9mX3BoYW5kbGVfYXJncyAqYXJncykKPiArewo+ICsJc3RydWN0IGVxNV9waHlfcHJpdmF0ZSAq
cHJpdiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsKPiArCWlmIChhcmdzLT5hcmdzX2NvdW50
ICE9IDEgfHwgYXJncy0+YXJnc1swXSA+IDEpCgpNYXliZSwgZm9yIGJldHRlciBjbGFyaXR5OgoK
CWlmIChhcmdzLT5hcmdzX2NvdW50ICE9IDEgfHwgYXJncy0+YXJnc1swXSA+PSBFUTVfUEhZX0NP
VU5UKQoKPiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiArCj4gKwlyZXR1cm4gcHJpdi0+
cGh5c1thcmdzLT5hcmdzWzBdXS5waHk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgZXE1X3BoeV9w
cm9iZV9waHkoc3RydWN0IGVxNV9waHlfcHJpdmF0ZSAqcHJpdiwgdW5zaWduZWQgaW50IGluZGV4
LAo+ICsJCQkgICAgIHZvaWQgX19pb21lbSAqYmFzZSwgdW5zaWduZWQgaW50IGdwLAo+ICsJCQkg
ICAgIHVuc2lnbmVkIGludCBzZ21paSkKPiArewo+ICsJc3RydWN0IGVxNV9waHlfaW5zdCAqaW5z
dCA9ICZwcml2LT5waHlzW2luZGV4XTsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IHByaXYtPmRl
djsKPiArCXN0cnVjdCBwaHkgKnBoeTsKPiArCj4gKwlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2
LCBkZXYtPm9mX25vZGUsICZlcTVfcGh5X29wcyk7Cj4gKwlpZiAoSVNfRVJSKHBoeSkpIHsKPiAr
CQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBjcmVhdGUgUEhZICV1XG4iLCBpbmRleCk7Cj4gKwkJ
cmV0dXJuIFBUUl9FUlIocGh5KTsKPiArCX0KCldoeSBub3QgZGV2X2Vycl9wcm9iZSgpPyBJdCB3
b3VsZCBtYWtlIGNvZGUgbW9yZSBjb25jaXNlIHRvbzoKCglwaHkgPSBkZXZtX3BoeV9jcmVhdGUo
ZGV2LCBkZXYtPm9mX25vZGUsICZlcTVfcGh5X29wcyk7CglpZiAoSVNfRVJSKHBoeSkpCgkJcmV0
dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHBoeSksICJmYWlsZWQgdG8gY3JlYXRlIFBI
WSAldVxuIiwgaW5kZXgpOwoKPiArCj4gKwlpbnN0LT5wcml2ID0gcHJpdjsKPiArCWluc3QtPnBo
eSA9IHBoeTsKPiArCWluc3QtPmdwID0gYmFzZSArIGdwOwo+ICsJaW5zdC0+c2dtaWkgPSBiYXNl
ICsgc2dtaWk7Cj4gKwlpbnN0LT5waHlfaW50ZXJmYWNlID0gUEhZX0lOVEVSRkFDRV9NT0RFX05B
Owo+ICsJcGh5X3NldF9kcnZkYXRhKHBoeSwgaW5zdCk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30K
PiArCj4gK3N0YXRpYyBpbnQgZXE1X3BoeV9wcm9iZShzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZSAq
YWRldiwKPiArCQkJIGNvbnN0IHN0cnVjdCBhdXhpbGlhcnlfZGV2aWNlX2lkICppZCkKPiArewo+
ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJmFkZXYtPmRldjsKPiArCXN0cnVjdCBwaHlfcHJvdmlk
ZXIgKnByb3ZpZGVyOwo+ICsJc3RydWN0IGVxNV9waHlfcHJpdmF0ZSAqcHJpdjsKPiArCXZvaWQg
X19pb21lbSAqYmFzZTsKPiArCWludCByZXQ7Cj4gKwo+ICsJcHJpdiA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqcHJpdiksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFwcml2KQo+ICsJCXJldHVy
biAtRU5PTUVNOwo+ICsKPiArCXByaXYtPmRldiA9IGRldjsKPiArCWRldl9zZXRfZHJ2ZGF0YShk
ZXYsIHByaXYpOwo+ICsKPiArCWJhc2UgPSAodm9pZCBfX2lvbWVtICopZGV2X2dldF9wbGF0ZGF0
YShkZXYpOwo+ICsKPiArCXJldCA9IGVxNV9waHlfcHJvYmVfcGh5KHByaXYsIDAsIGJhc2UsIEVR
NV9QSFkwX0dQLCBFUTVfUEhZMF9TR01JSSk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7
Cj4gKwo+ICsJcmV0ID0gZXE1X3BoeV9wcm9iZV9waHkocHJpdiwgMSwgYmFzZSwgRVE1X1BIWTFf
R1AsIEVRNV9QSFkxX1NHTUlJKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4g
Kwlwcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwgZXE1X3BoeV94
bGF0ZSk7Cj4gKwlpZiAoSVNfRVJSKHByb3ZpZGVyKSkgewo+ICsJCWRldl9lcnIoZGV2LCAicmVn
aXN0ZXJpbmcgcHJvdmlkZXIgZmFpbGVkXG4iKTsKPiArCQlyZXR1cm4gUFRSX0VSUihwcm92aWRl
cik7Cj4gKwl9CgpBcyBhYm92ZSwgd2h5IG5vdCBkZXZfZXJyX3Byb2JlKCk/CgpPdGhlciB0aGFu
IHRoZSBhYm92ZSBtaW5vciBpc3N1ZXMsIExHVE0uIFRoaXMgZHJpdmVyIGxvb2tzIGNsZWFubHkK
aW1wbGVtZW50ZWQuCgpMdWNhCgotLQpMdWNhIENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExp
bnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
