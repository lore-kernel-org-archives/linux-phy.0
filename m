Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BAC4C47DA2
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 17:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEEfip8B1xNOj1fibNSKDu4WMUJM+KuRdXvxuRMPj7M=; b=3EtUpgwFadzTbU
	mQeZrapvZBsxhPDdI6bsaOs4cW/Intvw19npxaB4taWYGTjHLoPLQ6ZKNG7hr3jpu15bfYJsMxZQB
	5Bd+uiRdFP0hNsYHvtGqi31492irtUZd01uzvrrKooqzTEoLCM+xTiH2r4ijc6RTqHA9lwCb/Mryr
	Hxu47UUa+5k5/fHaVHT+pC8EuVoj0xTBw2iIlLNbrkfWmIn8WvMv8j9i/QNykmfsLTQJMhqUTBaXk
	94FaxM6wmeEVrYLlrMzfjYcD0FTsE1lGW75Fs5JgYiqZj5hlP5S2F2ONjRvhtJ7ra3A5F/TZm6ciq
	z1wRHYvEdoskaOaVNyGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQn1-009oqn-02;
	Mon, 15 Jan 2024 17:30:23 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdZ-009ade-1e;
	Mon, 15 Jan 2024 16:16:36 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B13B1C0013;
	Mon, 15 Jan 2024 16:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xl/fBZ1aUKL0hWMZVIAmwRdTreoofQFnHKDzk938IBg=;
	b=cYFsUOgl6y7i2QuPpsxsXWBrOBwsQ90mM3tk+a1DxY/7dFN4h/eO7KKH3s1uiLM6iQv4KK
	04a/UkuS2hDma7uli8r7cwrd/YRBsweBdnep0Ox3XvjPj9dsvdV0+V8Dz/mBzypQ5Iqu9z
	HB+xGlK9bIWWSpoz4LZZvDOyYWdFJ8mISjZ7AsF/+karA/IsfPBU/T0SzhQQLhz03pnaWI
	nxu4Hd+kFzQ6zYEt+zZViZQSiFWITjkIdicyPh22QOS9CXNnLh7P6X0CKHiDvRccg7gwHC
	Ff5Z32FMODVnAQ963/KoO/YhyuurA4DFam8aB5kK61mZElvfDZSOG5C/qh8iDg==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:55 +0100
Subject: [PATCH 14/14] PCI: j721e: add suspend and resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-14-84e55da52400@bootlin.com>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>, 
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
X-CRM114-CacheID: sfid-20240115_081633_866153_D803F942 
X-CRM114-Status: GOOD (  17.50  )
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
IGFuZCByZXN1bWUgc3VwcG9ydCBmb3IgcmMgbW9kZS4KClNpZ25lZC1vZmYtYnk6IFRow6lvIExl
YnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNo
YXJkIDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMgICAgfCA3MiArKysrKysrKysrKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UuaCB8ICAzICst
CiAyIGZpbGVzIGNoYW5nZWQsIDc0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMKaW5kZXggNDc3Mjc1ZDcyMjU3
Li41MTg2N2EzZjI0OTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5j
ZS9wY2ktajcyMWUuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3
MjFlLmMKQEAgLTYsNiArNiw3IEBACiAgKiBBdXRob3I6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkg
PGtpc2hvbkB0aS5jb20+CiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4L2Nsay1wcm92aWRlci5oPgog
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVk
ZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgpAQCAtNTU0LDYgKzU1NSw3NiBAQCBzdGF0aWMgdm9p
ZCBqNzIxZV9wY2llX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXBtX3J1
bnRpbWVfZGlzYWJsZShkZXYpOwogfQogCisjaWZkZWYgQ09ORklHX1BNCitzdGF0aWMgaW50IGo3
MjFlX3BjaWVfc3VzcGVuZF9ub2lycShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IGo3
MjFlX3BjaWUgKnBjaWUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKworCWlmIChwY2llLT5tb2Rl
ID09IFBDSV9NT0RFX1JDKSB7CisJCWlmIChwY2llLT5yZXNldF9ncGlvKQorCQkJZ3Bpb2Rfc2V0
X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8sIDApOworCisJCWNsa19kaXNhYmxlX3Vu
cHJlcGFyZShwY2llLT5yZWZjbGspOworCX0KKworCWNkbnNfcGNpZV9kaXNhYmxlX3BoeShwY2ll
LT5jZG5zX3BjaWUpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgajcyMWVfcGNpZV9y
ZXN1bWVfbm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBqNzIxZV9wY2llICpw
Y2llID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJc3RydWN0IGNkbnNfcGNpZSAqY2Ruc19wY2ll
ID0gcGNpZS0+Y2Ruc19wY2llOworCWludCByZXQ7CisKKwlyZXQgPSBqNzIxZV9wY2llX2N0cmxf
aW5pdChwY2llKTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfZXJyKGRldiwgImo3MjFlX3BjaWVf
Y3RybF9pbml0IGZhaWxlZFxuIik7CisJCXJldHVybiByZXQ7CisJfQorCisJajcyMWVfcGNpZV9j
b25maWdfbGlua19pcnEocGNpZSk7CisKKwkvKgorCSAqIFRoaXMgaXMgbm90IGNhbGxlZCBleHBs
aWNpdGx5IGluIHRoZSBwcm9iZSwgaXQgaXMgY2FsbGVkIGJ5CisJICogY2Ruc19wY2llX2luaXRf
cGh5LgorCSAqLworCXJldCA9IGNkbnNfcGNpZV9lbmFibGVfcGh5KHBjaWUtPmNkbnNfcGNpZSk7
CisJaWYgKHJldCA8IDApIHsKKwkJZGV2X2VycihkZXYsICJjZG5zX3BjaWVfZW5hYmxlX3BoeSBm
YWlsZWRcbiIpOworCQlyZXR1cm4gLUVOT0RFVjsKKwl9CisKKwlpZiAocGNpZS0+bW9kZSA9PSBQ
Q0lfTU9ERV9SQykgeworCQlzdHJ1Y3QgY2Ruc19wY2llX3JjICpyYyA9IGNkbnNfcGNpZV90b19y
YyhjZG5zX3BjaWUpOworCisJCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwY2llLT5yZWZjbGsp
OworCQlpZiAocmV0IDwgMCkgeworCQkJZGV2X2VycihkZXYsICJjbGtfcHJlcGFyZV9lbmFibGUg
ZmFpbGVkXG4iKTsKKwkJCXJldHVybiAtRU5PREVWOworCQl9CisKKwkJaWYgKHBjaWUtPnJlc2V0
X2dwaW8pIHsKKwkJCXVzbGVlcF9yYW5nZSgxMDAsIDIwMCk7CisJCQlncGlvZF9zZXRfdmFsdWVf
Y2Fuc2xlZXAocGNpZS0+cmVzZXRfZ3BpbywgMSk7CisJCX0KKworCQlyZXQgPSBjZG5zX3BjaWVf
aG9zdF9zZXR1cChyYywgZmFsc2UpOworCQlpZiAocmV0IDwgMCkgeworCQkJY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKHBjaWUtPnJlZmNsayk7CisJCQlyZXR1cm4gLUVOT0RFVjsKKwkJfQorCX0KKwor
CXJldHVybiAwOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgajcyMWVfcGNp
ZV9wbV9vcHMgPSB7CisJU0VUX05PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMoajcyMWVfcGNpZV9z
dXNwZW5kX25vaXJxLCBqNzIxZV9wY2llX3Jlc3VtZV9ub2lycSkKK307CisjZW5kaWYKKwogc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgajcyMWVfcGNpZV9kcml2ZXIgPSB7CiAJLnByb2Jl
ICA9IGo3MjFlX3BjaWVfcHJvYmUsCiAJLnJlbW92ZV9uZXcgPSBqNzIxZV9wY2llX3JlbW92ZSwK
QEAgLTU2MSw2ICs2MzIsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBqNzIxZV9w
Y2llX2RyaXZlciA9IHsKIAkJLm5hbWUJPSAiajcyMWUtcGNpZSIsCiAJCS5vZl9tYXRjaF90YWJs
ZSA9IG9mX2o3MjFlX3BjaWVfbWF0Y2gsCiAJCS5zdXBwcmVzc19iaW5kX2F0dHJzID0gdHJ1ZSwK
KwkJLnBtCT0gcG1fcHRyKCZqNzIxZV9wY2llX3BtX29wcyksCiAJfSwKIH07CiBidWlsdGluX3Bs
YXRmb3JtX2RyaXZlcihqNzIxZV9wY2llX2RyaXZlcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLmggYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLmgKaW5kZXggM2IwZGE4ODllZDY0Li4wNWQ0Yjk2ZmM3
MWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVu
Y2UuaAorKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLmgK
QEAgLTMzMSw2ICszMzEsOCBAQCBzdHJ1Y3QgY2Ruc19wY2llX3JjIHsKIAl1bnNpZ25lZCBpbnQJ
CXF1aXJrX2RldGVjdF9xdWlldF9mbGFnOjE7CiB9OwogCisjZGVmaW5lIGNkbnNfcGNpZV90b19y
YyhwKSBjb250YWluZXJfb2YocCwgc3RydWN0IGNkbnNfcGNpZV9yYywgcGNpZSkKKwogLyoqCiAg
KiBzdHJ1Y3QgY2Ruc19wY2llX2VwZiAtIFN0cnVjdHVyZSB0byBob2xkIGluZm8gYWJvdXQgZW5k
cG9pbnQgZnVuY3Rpb24KICAqIEBlcGY6IEluZm8gYWJvdXQgdmlydHVhbCBmdW5jdGlvbnMgYXR0
YWNoZWQgdG8gdGhlIHBoeXNpY2FsIGZ1bmN0aW9uCkBAIC0zODEsNyArMzgzLDYgQEAgc3RydWN0
IGNkbnNfcGNpZV9lcCB7CiAJdW5zaWduZWQgaW50CQlxdWlya19kaXNhYmxlX2ZscjoxOwogfTsK
IAotCiAvKiBSZWdpc3RlciBhY2Nlc3MgKi8KIHN0YXRpYyBpbmxpbmUgdm9pZCBjZG5zX3BjaWVf
d3JpdGVsKHN0cnVjdCBjZG5zX3BjaWUgKnBjaWUsIHUzMiByZWcsIHUzMiB2YWx1ZSkKIHsKCi0t
IAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
