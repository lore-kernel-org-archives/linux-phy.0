Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A388C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 14:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiQ2lVoAiitazw4XY3VtToXeuuXBVF8zCrDW/fcO4V0=; b=0otMOx12y5LJVV
	yncZvNxd4d8YH2OWX7HWhKf3pZTdCaTeoNJVwVYx5y6eF5SyPf7eyhTbuYBmb/BQ7f01oQRDBezdS
	JRiVDhJN9uR0PtNaHUn9SjQyGQU+vXW7Sdhh+t/dud27ucoBrDbN9dC960JzDhLLNy9haqjqnTOLF
	I/I14fSajek1a94bwh7GSGn3xzWNPFX8PxbTLdZPr46Qy0px3OLbOvwwWvWyLFHkLXw+MOXtgyGqa
	Y5O80h1zqFnVNJ2XOdQzcfkOB+ggXSxefXwJy3dbThq+WQ7tB3A0TWZRTFJC7GKkYzhn1MRLaJfFq
	stz5UX7zsmNEpHlavm0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNMn-00000004OBo-0etf;
	Fri, 26 Jan 2024 14:39:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNLa-00000004NSd-1rcX;
	Fri, 26 Jan 2024 14:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=DV+PfVFG+B6uq9zkwyO5cQW010WYXqAyimrtCyB36hg=; b=hRbnnQA0w4Qmu1bMAmKYgR1v0J
	7XC2Hi2AqBt8qiH+7GibLAh1UCbIkFz5MgwdhejKg+eMBtSPbeFc/KubVFy+t6ArZBu6BvhvlNaew
	a6uzPIcg0BRBoUeYpSU6ACiNJFp+LbdDCMrsZxq0mfeu7RXiDRq07JTq4hqmzh1atZ5Z0Zi+Fvg4W
	q5Ze3x4kCLqLwN2TSZBuDTp10pEWtlEILeQq+avkZSGaWGqI9lWSZb8AexSxw7Bc6bfTc4P7IhSkX
	G6K5YE2gGin+GugjDDwsVjqzppCejxfMAjVgoB30kIRhFIOCvPCT1QvAYBwnGrEX0XWpo/00E43jh
	A2A3qSXQ==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNLT-0000000655r-1X7o;
	Fri, 26 Jan 2024 14:38:19 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5B40B40004;
	Fri, 26 Jan 2024 14:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279894;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DV+PfVFG+B6uq9zkwyO5cQW010WYXqAyimrtCyB36hg=;
	b=PIftpjT+y/RyuehPANnuJOuPqUqHRnH5Lr5aRuer/H/+YHouEsFoSxIGW5TWrtVINGTxRH
	ChZoIqNqYtEejdsgdQDaQBhOsPDmi8m7+UmpihImWXSHTxs6GPuPV32pJUEc28Ji89R6Pw
	AF2EBRI5o4O0X3EJsmmgWpKjbrgCOMX4AuoNn/OCclmaTI/TQG1oHoss+CWbXQDpW/e6V2
	j1y/BQ8thUsJHI/aTN0KtaboXeccHA3gnDhzBsY7ymkiXVUvJ111h3MTOKGtLjpMZ/mgve
	pLY3jvhniQLLuvFL3rGXn7K3DVX1QS0fUJgc5pNGiRG1Hv0yRpbfa6mc6pYefw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Fri, 26 Jan 2024 15:36:57 +0100
Subject: [PATCH v2 15/15] PCI: j721e: add suspend and resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v2-15-8e4f7d228ec2@bootlin.com>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
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
X-CRM114-CacheID: sfid-20240126_143815_787740_9B440D78 
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
bmNlL3BjaS1qNzIxZS5jIHwgNzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2Fk
ZW5jZS9wY2ktajcyMWUuYwppbmRleCA0NzcyNzVkNzIyNTcuLjY2OGQ5ODQyMmM0ZCAxMDA2NDQK
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
CiAjZGVmaW5lIFNUQVRVU19DTFJfUkVHX1NZU18yCTB4NzA4CkBAIC01NTQsNiArNTU4LDgwIEBA
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
bywgMSk7CisJCX0KKworCQlyZXQgPSBjZG5zX3BjaWVfaG9zdF9zZXR1cChyYywgZmFsc2UpOwor
CQlpZiAocmV0IDwgMCkgeworCQkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBjaWUtPnJlZmNsayk7
CisJCQlyZXR1cm4gcmV0OworCQl9CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBERUZJ
TkVfTk9JUlFfREVWX1BNX09QUyhqNzIxZV9wY2llX3BtX29wcywKKwkJCSAgICAgICBqNzIxZV9w
Y2llX3N1c3BlbmRfbm9pcnEsCisJCQkgICAgICAgajcyMWVfcGNpZV9yZXN1bWVfbm9pcnEpOwor
CiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBqNzIxZV9wY2llX2RyaXZlciA9IHsKIAku
cHJvYmUgID0gajcyMWVfcGNpZV9wcm9iZSwKIAkucmVtb3ZlX25ldyA9IGo3MjFlX3BjaWVfcmVt
b3ZlLApAQCAtNTYxLDYgKzYzOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGo3
MjFlX3BjaWVfZHJpdmVyID0gewogCQkubmFtZQk9ICJqNzIxZS1wY2llIiwKIAkJLm9mX21hdGNo
X3RhYmxlID0gb2ZfajcyMWVfcGNpZV9tYXRjaCwKIAkJLnN1cHByZXNzX2JpbmRfYXR0cnMgPSB0
cnVlLAorCQkucG0JPSBwbV9zbGVlcF9wdHIoJmo3MjFlX3BjaWVfcG1fb3BzKSwKIAl9LAogfTsK
IGJ1aWx0aW5fcGxhdGZvcm1fZHJpdmVyKGo3MjFlX3BjaWVfZHJpdmVyKTsKCi0tIAoyLjM5LjIK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
