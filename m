Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 346BDC48BEB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 17:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VikAkKeFjIr3fwxa/5igh2JCMZ0vvi4M2pjGwb9dGxc=; b=VitoPhoXLDjvJb
	PyhfNiqelghFJgUnfc2p1fo3ih5TxnjKGN9B6cNtQ+GpVexdUSmrCUfUM8uPS3BCEtRpA5fZRv3x4
	kQXZw4i0QRyrLFzNDD+V5WOKfWU9P8JZYZjzu3OkAdDtjQ5bXzlOR3ZMjfyjJPNc6vtZbSpLE529b
	UHk/dQDWZmcWr+QcEXCuST/imaQz/spc6blAFqWsWkKpdgSF9dv0c0gA5zTq/0AYxnlgkcnSBAjg2
	tVZjloLymKRBY9pSJ4dpbqx1Ruuth0Zr1/YmHvQC6axLHFeKb2tjnMPkhFKDSgbLCe8NTsKD60405
	OGN007QsLqE1U3Hr7Y+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rafoI-0000000HE78-326U;
	Thu, 15 Feb 2024 17:46:10 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radVF-0000000Gh0E-1ASx;
	Thu, 15 Feb 2024 15:18:26 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 97609240007;
	Thu, 15 Feb 2024 15:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7WlARA5/yoLE3vqCDpUZDlZg7z0Nm6s4ziTMlbtRK8g=;
	b=MNu4P6qIuZ5L+2NKBXMCAIXg/mFufNUbzfb6phIdl9ZNtwvOlcvGInZcOh+9UT3LFbN4zM
	UN+QeiAPWP1BHJAGYSl9s/YSrH6fE49OdTK6YMfcAyLb+CyDy89eOJZNErpJYBFJZzzMZp
	LVa5Ds5kE35vRddMN75xSWb3jGokXMiwnp4HMEVqq6eIJyxL9pE/1mLawAUw1W6DFi/YCr
	1Z2+SdExyzfFy3di/juX0CcwWv4UGDSKurTcwS8CFv31oME2EQ+wEnMr7/mh+TnDEXJAWf
	FhWX/1EstrMAt6OtRgChG+47AZzwia+N2UlYbE8CpkrXtGBS/mI30am/3Z/UjQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:18:03 +0100
Subject: [PATCH v3 18/18] PCI: j721e: add suspend and resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
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
X-CRM114-CacheID: sfid-20240215_071821_985661_7BE77F3C 
X-CRM114-Status: GOOD (  17.77  )
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
bmNlL3BjaS1qNzIxZS5jIHwgOTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgOTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2Fk
ZW5jZS9wY2ktajcyMWUuYwppbmRleCA5YzU4OGU3OWY1YWMuLmNmYTdiYTIzN2UxYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaS1qNzIxZS5jCisrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYwpAQCAtNiw2ICs2LDcgQEAK
ICAqIEF1dGhvcjogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KICAqLwog
CisjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+CiAjaW5jbHVkZSA8bGludXgvY2xrLmg+
CiAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KICNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVy
Lmg+CkBAIC0xOCwxMCArMTksMTMgQEAKICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2Uu
aD4KICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+CiAjaW5jbHVkZSA8bGludXgvcmVnbWFw
Lmg+CisjaW5jbHVkZSA8bGludXgvY29udGFpbmVyX29mLmg+CiAKICNpbmNsdWRlICIuLi8uLi9w
Y2kuaCIKICNpbmNsdWRlICJwY2llLWNhZGVuY2UuaCIKIAorI2RlZmluZSBjZG5zX3BjaWVfdG9f
cmMocCkgY29udGFpbmVyX29mKHAsIHN0cnVjdCBjZG5zX3BjaWVfcmMsIHBjaWUpCisKICNkZWZp
bmUgRU5BQkxFX1JFR19TWVNfMgkweDEwOAogI2RlZmluZSBTVEFUVVNfUkVHX1NZU18yCTB4NTA4
CiAjZGVmaW5lIFNUQVRVU19DTFJfUkVHX1NZU18yCTB4NzA4CkBAIC01NTQsNiArNTU4LDkxIEBA
IHN0YXRpYyB2b2lkIGo3MjFlX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJcG1fcnVudGltZV9kaXNhYmxlKGRldik7CiB9CiAKK3N0YXRpYyBpbnQgajcyMWVfcGNp
ZV9zdXNwZW5kX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgajcyMWVfcGNp
ZSAqcGNpZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCisJaWYgKHBjaWUtPm1vZGUgPT0gUENJ
X01PREVfUkMpIHsKKwkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8s
IDApOworCQljbGtfZGlzYWJsZV91bnByZXBhcmUocGNpZS0+cmVmY2xrKTsKKwl9CisKKwljZG5z
X3BjaWVfZGlzYWJsZV9waHkocGNpZS0+Y2Ruc19wY2llKTsKKworCXJldHVybiAwOworfQorCitz
dGF0aWMgaW50IGo3MjFlX3BjaWVfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sK
KwlzdHJ1Y3QgajcyMWVfcGNpZSAqcGNpZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCXN0cnVj
dCBjZG5zX3BjaWUgKmNkbnNfcGNpZSA9IHBjaWUtPmNkbnNfcGNpZTsKKwlpbnQgcmV0OworCisJ
cmV0ID0gajcyMWVfcGNpZV9jdHJsX2luaXQocGNpZSk7CisJaWYgKHJldCA8IDApIHsKKwkJZGV2
X2VycihkZXYsICJqNzIxZV9wY2llX2N0cmxfaW5pdCBmYWlsZWRcbiIpOworCQlyZXR1cm4gcmV0
OworCX0KKworCWo3MjFlX3BjaWVfY29uZmlnX2xpbmtfaXJxKHBjaWUpOworCisJLyoKKwkgKiBU
aGlzIGlzIG5vdCBjYWxsZWQgZXhwbGljaXRseSBpbiB0aGUgcHJvYmUsIGl0IGlzIGNhbGxlZCBi
eQorCSAqIGNkbnNfcGNpZV9pbml0X3BoeS4KKwkgKi8KKwlyZXQgPSBjZG5zX3BjaWVfZW5hYmxl
X3BoeShwY2llLT5jZG5zX3BjaWUpOworCWlmIChyZXQgPCAwKSB7CisJCWRldl9lcnIoZGV2LCAi
Y2Ruc19wY2llX2VuYWJsZV9waHkgZmFpbGVkXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQor
CisJaWYgKHBjaWUtPm1vZGUgPT0gUENJX01PREVfUkMpIHsKKwkJc3RydWN0IGNkbnNfcGNpZV9y
YyAqcmMgPSBjZG5zX3BjaWVfdG9fcmMoY2Ruc19wY2llKTsKKworCQlyZXQgPSBjbGtfcHJlcGFy
ZV9lbmFibGUocGNpZS0+cmVmY2xrKTsKKwkJaWYgKHJldCA8IDApIHsKKwkJCWRldl9lcnIoZGV2
LCAiY2xrX3ByZXBhcmVfZW5hYmxlIGZhaWxlZFxuIik7CisJCQlyZXR1cm4gLUVOT0RFVjsKKwkJ
fQorCisJCS8qCisJCSAqICJQb3dlciBTZXF1ZW5jaW5nIGFuZCBSZXNldCBTaWduYWwgVGltaW5n
cyIgdGFibGUgaW4KKwkJICogUENJIEVYUFJFU1MgQ0FSRCBFTEVDVFJPTUVDSEFOSUNBTCBTUEVD
SUZJQ0FUSU9OLCBSRVYuIDMuMAorCQkgKiBpbmRpY2F0ZXMgUEVSU1QjIHNob3VsZCBiZSBkZWFz
c2VydGVkIGFmdGVyIG1pbmltdW0gb2YgMTAwdXMKKwkJICogb25jZSBSRUZDTEsgaXMgc3RhYmxl
LiBUaGUgUkVGQ0xLIHRvIHRoZSBjb25uZWN0b3IgaW4gUkMKKwkJICogbW9kZSBpcyBzZWxlY3Rl
ZCB3aGlsZSBlbmFibGluZyB0aGUgUEhZLiBTbyBkZWFzc2VydCBQRVJTVCMKKwkJICogYWZ0ZXIg
MTAwIHVzLgorCQkgKi8KKwkJaWYgKHBjaWUtPnJlc2V0X2dwaW8pIHsKKwkJCXVzbGVlcF9yYW5n
ZSgxMDAsIDIwMCk7CisJCQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNpZS0+cmVzZXRfZ3Bp
bywgMSk7CisJCX0KKworCQlyZXQgPSBjZG5zX3BjaWVfaG9zdF9saW5rX3NldHVwKHJjKTsKKwkJ
aWYgKHJldCA8IDApIHsKKwkJCWNsa19kaXNhYmxlX3VucHJlcGFyZShwY2llLT5yZWZjbGspOwor
CQkJcmV0dXJuIHJldDsKKwkJfQorCisJCS8qCisJCSAqIFJlc2V0IGludGVybmFsIHN0YXR1cyBv
ZiBCQVJzIHRvIGZvcmNlIHJlaW5pdGlhbGl6YXRpb24gaW4KKwkJICogY2Ruc19wY2llX2hvc3Rf
aW5pdCgpLgorCQkgKi8KKwkJZm9yIChlbnVtIGNkbnNfcGNpZV9ycF9iYXIgYmFyID0gUlBfQkFS
MDsgYmFyIDw9IFJQX05PX0JBUjsgYmFyKyspCisJCQlyYy0+YXZhaWxfaWJfYmFyW2Jhcl0gPSB0
cnVlOworCisJCXJldCA9IGNkbnNfcGNpZV9ob3N0X2luaXQocmMpOworCQlpZiAocmV0KQorCQkJ
cmV0dXJuIHJldDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIERFRklORV9OT0lSUV9E
RVZfUE1fT1BTKGo3MjFlX3BjaWVfcG1fb3BzLAorCQkJICAgICAgIGo3MjFlX3BjaWVfc3VzcGVu
ZF9ub2lycSwKKwkJCSAgICAgICBqNzIxZV9wY2llX3Jlc3VtZV9ub2lycSk7CisKIHN0YXRpYyBz
dHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGo3MjFlX3BjaWVfZHJpdmVyID0gewogCS5wcm9iZSAgPSBq
NzIxZV9wY2llX3Byb2JlLAogCS5yZW1vdmVfbmV3ID0gajcyMWVfcGNpZV9yZW1vdmUsCkBAIC01
NjEsNiArNjUwLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgajcyMWVfcGNpZV9k
cml2ZXIgPSB7CiAJCS5uYW1lCT0gImo3MjFlLXBjaWUiLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBv
Zl9qNzIxZV9wY2llX21hdGNoLAogCQkuc3VwcHJlc3NfYmluZF9hdHRycyA9IHRydWUsCisJCS5w
bQk9IHBtX3NsZWVwX3B0cigmajcyMWVfcGNpZV9wbV9vcHMpLAogCX0sCiB9OwogYnVpbHRpbl9w
bGF0Zm9ybV9kcml2ZXIoajcyMWVfcGNpZV9kcml2ZXIpOwoKLS0gCjIuMzkuMgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
