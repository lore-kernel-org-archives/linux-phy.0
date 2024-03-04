Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E91C54E49
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kKKOinWQAmjey77u6RIejW9zO5rt+9FwM0Yu1LUkIA=; b=Y7tPrht3PiViC3
	AiJ+TNU71K4wYNZwg0La3sLb53+4MAw/vU6DaAqm3SoVqx80QHKwZWm6fcrGPwzYAPog474jPOsTC
	mQA3Sm7x+3X6K2rK7kMvEuYvBJK7c67zqk5AUtzzx+qkXO1LuG21xB5IXEat3bPVO0sAakf35P5Mz
	ZzLdikyr70nWF/PtTsn1dqUD4bHxfZSXrl6nu5sWuif2k0vZe4CzyPj5HAakBYOvVMv0s5qI0wE90
	PEpWz68v/w2gvA/nPrc7v1zUIp3CD6N9gLiOe1i5iXiysatKg7/GT8iSQjZY4WRm2DdMUJPcWSKya
	+2Z61pU/WCCoS9cXHXRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBWH-00000009tf2-1i4M;
	Mon, 04 Mar 2024 16:50:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMz-00000009cs1-1SaH;
	Mon, 04 Mar 2024 15:36:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=s6E/Ne64c6+x0FpS9CVe8d7lEAGfcFSrGEubkDw5WnM=; b=an0kXuXSxhWIng+WfEaM7+Vl17
	H4cxpBNpnU0+K+9qtVs8toF67jG15iUKeQFcm4ouh4XNsC7+o1vurnWk0TB6ThdHRdwZIaOFn2TN2
	V8B6jhqVcLPmDQFjwTVWv5n5sPlRDCgBAh42o+PDcu1fsZ8WOD3NJj0bF5xMZlab/VocIbiwxFyuV
	GMBdcXVhwW6gKpXN5MOuPxY4+q6BmBcNLbtuQhlIpLZG232RyhkCgD7elpLhhfJGImp3Depam1P2D
	8LfVOsSTwmIgdnCVu0/MRuKVG7psZguDvGlRiP1Sm8aIlnFhasa9v0wtCEFhlVQoPqjqNjkVZWJen
	cnYh0E6A==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMt-00000004wgE-3Rc9;
	Mon, 04 Mar 2024 15:36:48 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C85DC1BF20D;
	Mon,  4 Mar 2024 15:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s6E/Ne64c6+x0FpS9CVe8d7lEAGfcFSrGEubkDw5WnM=;
	b=DkCG7exsY9UG0LnSnUH7x6xVnM2DPQ1Lj6I2RzBY+M7bkhHNhhakHh7CoGAHXYsXcvlGbq
	A4ejNjPUVEZWsUjN2ioBLevD96g9DYAkOMpX7opwl8btRLw7jmFxXMP/bauJTQo844czGL
	OSe/8J5KC3IpIFWpHreXS9ou4YhhpN0nCNBtkCj/ruw3mJOxuLyXilxeDtASBR76Qigb6K
	B114owohauREEMF/fDdF5MUh0CSC+C5D2QJqkBiZCrO6hRngqjLDG85AFBezRdn59uE0IG
	3Rwp0QtrYvsmiBlp+g4K7wa2jNHudKR/F5DFFBkYT9eyk43BYTXkAVvLynrQSw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:36:01 +0100
Subject: [PATCH v4 18/18] PCI: j721e: Add suspend and resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-18-6f1f53390c85@bootlin.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_153644_025522_B4C10A36 
X-CRM114-Status: GOOD (  17.83  )
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

RnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KCkFkZCBzdXNwZW5k
IGFuZCByZXN1bWUgc3VwcG9ydC4gT25seSB0aGUgcmMgbW9kZSBpcyBzdXBwb3J0ZWQuCgpEdXJp
bmcgdGhlIHN1c3BlbmQgc3RhZ2UgUEVSU1QjIGlzIGFzc2VydGVkLCB0aGVuIGRlYXNzZXJ0ZWQg
ZHVyaW5nIHRoZQpyZXN1bWUgc3RhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRo
ZW8ubGVicnVuQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhv
bWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRl
bmNlL3BjaS1qNzIxZS5jIHwgODYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgODYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2Fk
ZW5jZS9wY2ktajcyMWUuYwppbmRleCA5YWY0ZmQ2NGMxZjkuLmExZjEyMzJlOGVlNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaS1qNzIxZS5jCisrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYwpAQCAtNyw2ICs3LDggQEAK
ICAqLwogCiAjaW5jbHVkZSA8bGludXgvY2xrLmg+CisjaW5jbHVkZSA8bGludXgvY2xrLXByb3Zp
ZGVyLmg+CisjaW5jbHVkZSA8bGludXgvY29udGFpbmVyX29mLmg+CiAjaW5jbHVkZSA8bGludXgv
ZGVsYXkuaD4KICNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+CiAjaW5jbHVkZSA8bGlu
dXgvaW8uaD4KQEAgLTIyLDYgKzI0LDggQEAKICNpbmNsdWRlICIuLi8uLi9wY2kuaCIKICNpbmNs
dWRlICJwY2llLWNhZGVuY2UuaCIKIAorI2RlZmluZSBjZG5zX3BjaWVfdG9fcmMocCkgY29udGFp
bmVyX29mKHAsIHN0cnVjdCBjZG5zX3BjaWVfcmMsIHBjaWUpCisKICNkZWZpbmUgRU5BQkxFX1JF
R19TWVNfMgkweDEwOAogI2RlZmluZSBTVEFUVVNfUkVHX1NZU18yCTB4NTA4CiAjZGVmaW5lIFNU
QVRVU19DTFJfUkVHX1NZU18yCTB4NzA4CkBAIC01ODgsNiArNTkyLDg3IEBAIHN0YXRpYyB2b2lk
IGo3MjFlX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcG1fcnVu
dGltZV9kaXNhYmxlKGRldik7CiB9CiAKK3N0YXRpYyBpbnQgajcyMWVfcGNpZV9zdXNwZW5kX25v
aXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgajcyMWVfcGNpZSAqcGNpZSA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOworCisJaWYgKHBjaWUtPm1vZGUgPT0gUENJX01PREVfUkMpIHsK
KwkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8sIDApOworCQljbGtf
ZGlzYWJsZV91bnByZXBhcmUocGNpZS0+cmVmY2xrKTsKKwl9CisKKwljZG5zX3BjaWVfZGlzYWJs
ZV9waHkocGNpZS0+Y2Ruc19wY2llKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGo3
MjFlX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3Qgajcy
MWVfcGNpZSAqcGNpZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCXN0cnVjdCBjZG5zX3BjaWUg
KmNkbnNfcGNpZSA9IHBjaWUtPmNkbnNfcGNpZTsKKwlpbnQgcmV0OworCisJcmV0ID0gajcyMWVf
cGNpZV9jdHJsX2luaXQocGNpZSk7CisJaWYgKHJldCA8IDApCisJCXJldHVybiByZXQ7CisKKwlq
NzIxZV9wY2llX2NvbmZpZ19saW5rX2lycShwY2llKTsKKworCS8qCisJICogVGhpcyBpcyBub3Qg
Y2FsbGVkIGV4cGxpY2l0bHkgaW4gdGhlIHByb2JlLCBpdCBpcyBjYWxsZWQgYnkKKwkgKiBjZG5z
X3BjaWVfaW5pdF9waHkoKS4KKwkgKi8KKwlyZXQgPSBjZG5zX3BjaWVfZW5hYmxlX3BoeShwY2ll
LT5jZG5zX3BjaWUpOworCWlmIChyZXQgPCAwKQorCQlyZXR1cm4gcmV0OworCisJaWYgKHBjaWUt
Pm1vZGUgPT0gUENJX01PREVfUkMpIHsKKwkJc3RydWN0IGNkbnNfcGNpZV9yYyAqcmMgPSBjZG5z
X3BjaWVfdG9fcmMoY2Ruc19wY2llKTsKKworCQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGNp
ZS0+cmVmY2xrKTsKKwkJaWYgKHJldCA8IDApCisJCQlyZXR1cm4gcmV0OworCisJCS8qCisJCSAq
ICJQb3dlciBTZXF1ZW5jaW5nIGFuZCBSZXNldCBTaWduYWwgVGltaW5ncyIgdGFibGUgaW4KKwkJ
ICogUENJIEVYUFJFU1MgQ0FSRCBFTEVDVFJPTUVDSEFOSUNBTCBTUEVDSUZJQ0FUSU9OLCBSRVYu
IDMuMAorCQkgKiBpbmRpY2F0ZXMgUEVSU1QjIHNob3VsZCBiZSBkZWFzc2VydGVkIGFmdGVyIG1p
bmltdW0gb2YgMTAwdXMKKwkJICogb25jZSBSRUZDTEsgaXMgc3RhYmxlLiBUaGUgUkVGQ0xLIHRv
IHRoZSBjb25uZWN0b3IgaW4gUkMKKwkJICogbW9kZSBpcyBzZWxlY3RlZCB3aGlsZSBlbmFibGlu
ZyB0aGUgUEhZLiBTbyBkZWFzc2VydCBQRVJTVCMKKwkJICogYWZ0ZXIgMTAwIHVzLgorCQkgKi8K
KwkJaWYgKHBjaWUtPnJlc2V0X2dwaW8pIHsKKwkJCWZzbGVlcCgxMDApOworCQkJZ3Bpb2Rfc2V0
X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8sIDEpOworCQl9CisKKwkJcmV0ID0gY2Ru
c19wY2llX2hvc3RfbGlua19zZXR1cChyYyk7CisJCWlmIChyZXQgPCAwKSB7CisJCQljbGtfZGlz
YWJsZV91bnByZXBhcmUocGNpZS0+cmVmY2xrKTsKKwkJCXJldHVybiByZXQ7CisJCX0KKworCQkv
KgorCQkgKiBSZXNldCBpbnRlcm5hbCBzdGF0dXMgb2YgQkFScyB0byBmb3JjZSByZWluaXRpYWxp
emF0aW9uIGluCisJCSAqIGNkbnNfcGNpZV9ob3N0X2luaXQoKS4KKwkJICovCisJCWZvciAoZW51
bSBjZG5zX3BjaWVfcnBfYmFyIGJhciA9IFJQX0JBUjA7IGJhciA8PSBSUF9OT19CQVI7IGJhcisr
KQorCQkJcmMtPmF2YWlsX2liX2JhcltiYXJdID0gdHJ1ZTsKKworCQlyZXQgPSBjZG5zX3BjaWVf
aG9zdF9pbml0KHJjKTsKKwkJaWYgKHJldCkgeworCQkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBj
aWUtPnJlZmNsayk7CisJCQlyZXR1cm4gcmV0OworCQl9CisJfQorCisJcmV0dXJuIDA7Cit9CisK
K3N0YXRpYyBERUZJTkVfTk9JUlFfREVWX1BNX09QUyhqNzIxZV9wY2llX3BtX29wcywKKwkJCSAg
ICAgICBqNzIxZV9wY2llX3N1c3BlbmRfbm9pcnEsCisJCQkgICAgICAgajcyMWVfcGNpZV9yZXN1
bWVfbm9pcnEpOworCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBqNzIxZV9wY2llX2Ry
aXZlciA9IHsKIAkucHJvYmUgID0gajcyMWVfcGNpZV9wcm9iZSwKIAkucmVtb3ZlX25ldyA9IGo3
MjFlX3BjaWVfcmVtb3ZlLApAQCAtNTk1LDYgKzY4MCw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIGo3MjFlX3BjaWVfZHJpdmVyID0gewogCQkubmFtZQk9ICJqNzIxZS1wY2llIiwK
IAkJLm9mX21hdGNoX3RhYmxlID0gb2ZfajcyMWVfcGNpZV9tYXRjaCwKIAkJLnN1cHByZXNzX2Jp
bmRfYXR0cnMgPSB0cnVlLAorCQkucG0JPSBwbV9zbGVlcF9wdHIoJmo3MjFlX3BjaWVfcG1fb3Bz
KSwKIAl9LAogfTsKIGJ1aWx0aW5fcGxhdGZvcm1fZHJpdmVyKGo3MjFlX3BjaWVfZHJpdmVyKTsK
Ci0tIAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
