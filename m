Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34ED8C48BEB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1vm3CLUxathsAF0CA1Om0rLeKDwaAVovIgCMclH6YE=; b=DLcACGP5tpkM1S
	y6b586Tc+sbV6hGlKQvvteCgeenCf7ZqueiBDg4WuWtFZ49TaGR3jAOyHZAY6YRvqd2449+Dq7AqQ
	pWS84s8mx/H/FhME5MIGcceGs7EBprlmuJpsgcNctMWFMxufXbNSdmtd1obIMM9nBYf3mYqYhMQh3
	TobFI1kinRvxs4JTH6Q1Jzey8mzkimtxJP+tXqpotMC15qrnSLioWTKA4lnla8Jf+jJFUuWg/Fkcc
	4n78KXV4rxCqajG9h9BaDi0CURVL41lHIZzfG1m0pqc00N1ZfzIIVHAZ5HemmtgRVR66BNODJ19SD
	lZ7Fz1iq2b8fH+TPOUeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radVu-0000000GhUT-25W7;
	Thu, 15 Feb 2024 15:19:02 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radVA-0000000GgwV-3R8M;
	Thu, 15 Feb 2024 15:18:18 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 14ADC240010;
	Thu, 15 Feb 2024 15:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010295;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o/n4B9LOnxLUUU5hzy10sFMmyfzqbPQwJ7bYymZxm6Y=;
	b=l3I5opKm97eEdSGimUZKWbPZ7j4nyfXC8xekOA6RNJorZoQZU1aNZ1i7LlRJODHPFcROAn
	RLVPqfOyjAybiSSn6fjgs1d3ooZn5lPeoOwBo8XThE93l2+ODfyeZnFwHLrkG8lp+cTdxL
	W9COtNdDor33jiWcSXCWVg3D3nvy8ixFe4kFgFYa1PvrHl+bOE4V6dvSmfAiwqoYW2EVCG
	nYIWXvrUfeZc+wtzJ0K78oF0NluedTd0yExPXEIn+ViF+pcSwGRQNbMZcMmI+oIidKy93i
	V+Sw1qcw3sSdBiUfd54tEfC9BuJKUbBBlux7vm3ccucA67rTy4tQ5KxIbmep5g==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:59 +0100
Subject: [PATCH v3 14/18] phy: cadence-torrent: add suspend and resume
 support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
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
X-CRM114-CacheID: sfid-20240215_071817_172931_F2692713 
X-CRM114-Status: GOOD (  14.57  )
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

QWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LgoKVGhlIGFscmVhZHlfY29uZmlndXJlZCBm
bGFnIGlzIGNsZWFyZWQgZHVyaW5nIHRoZSBzdXNwZW5kIHN0YWdlIHRvIGZvcmNlCnRoZSBQSFkg
aW5pdGlhbGl6YXRpb24gZHVyaW5nIHRoZSByZXN1bWUgc3RhZ2UuCgpCYXNlZCBvbiB0aGUgd29y
ayBvZiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgoKU2lnbmVkLW9mZi1i
eTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZl
cnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jIHwgNTQgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyBiL2RyaXZl
cnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCmluZGV4IDUyY2FkY2E0YzA3Yi4u
Zjg5NDVhMTFlN2NhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNl
LXRvcnJlbnQuYworKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQu
YwpAQCAtMzAwNSw2ICszMDA1LDU5IEBAIHN0YXRpYyB2b2lkIGNkbnNfdG9ycmVudF9waHlfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJY2Ruc190b3JyZW50X2Nsa19jbGVh
bnVwKGNkbnNfcGh5KTsKIH0KIAorc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3N1c3BlbmRf
bm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpj
ZG5zX3BoeSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCWludCBpOworCisJcmVzZXRfY29udHJv
bF9hc3NlcnQoY2Ruc19waHktPnBoeV9yc3QpOworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNf
cGh5LT5hcGJfcnN0KTsKKwlmb3IgKGkgPSAwOyBpIDwgY2Ruc19waHktPm5zdWJub2RlczsgaSsr
KQorCQlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5sbmtfcnN0KTsKKwor
CWlmIChjZG5zX3BoeS0+YWxyZWFkeV9jb25maWd1cmVkKQorCQljZG5zX3BoeS0+YWxyZWFkeV9j
b25maWd1cmVkID0gMDsKKwllbHNlCisJCWNsa19kaXNhYmxlX3VucHJlcGFyZShjZG5zX3BoeS0+
Y2xrKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9waHlfcmVz
dW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgY2Ruc190b3JyZW50X3Bo
eSAqY2Ruc19waHkgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlpbnQgbm9kZSA9IGNkbnNfcGh5
LT5uc3Vibm9kZXM7CisJaW50IHJldCwgaTsKKworCXJldCA9IGNkbnNfdG9ycmVudF9jbGsoY2Ru
c19waHkpOworCWlmIChyZXQpCisJCWdvdG8gY2xrX2NsZWFudXA7CisKKwkvKiBFbmFibGUgQVBC
ICovCisJcmVzZXRfY29udHJvbF9kZWFzc2VydChjZG5zX3BoeS0+YXBiX3JzdCk7CisKKwlpZiAo
Y2Ruc19waHktPm5zdWJub2RlcyA+IDEpIHsKKwkJcmV0ID0gY2Ruc190b3JyZW50X3BoeV9jb25m
aWd1cmVfbXVsdGlsaW5rKGNkbnNfcGh5KTsKKwkJaWYgKHJldCkKKwkJCWdvdG8gcHV0X2xua19y
c3Q7CisJfQorCisJcmV0dXJuIDA7CisKK3B1dF9sbmtfcnN0OgorCWZvciAoaSA9IDA7IGkgPCBu
b2RlOyBpKyspCisJCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5waHlzW2ldLmxua19y
c3QpOworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5hcGJfcnN0KTsKKwljbGtfZGlz
YWJsZV91bnByZXBhcmUoY2Ruc19waHktPmNsayk7CitjbGtfY2xlYW51cDoKKwljZG5zX3RvcnJl
bnRfY2xrX2NsZWFudXAoY2Ruc19waHkpOworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBERUZJ
TkVfTk9JUlFfREVWX1BNX09QUyhjZG5zX3RvcnJlbnRfcGh5X3BtX29wcywKKwkJCSAgICAgICBj
ZG5zX3RvcnJlbnRfcGh5X3N1c3BlbmRfbm9pcnEsCisJCQkgICAgICAgY2Ruc190b3JyZW50X3Bo
eV9yZXN1bWVfbm9pcnEpOworCiAvKiBVU0IgYW5kIERQIGxpbmsgY29uZmlndXJhdGlvbiAqLwog
c3RhdGljIHN0cnVjdCBjZG5zX3JlZ19wYWlycyB1c2JfZHBfbGlua19jbW5fcmVnc1tdID0gewog
CXsweDAwMDIsIFBIWV9QTExfQ0ZHfSwKQEAgLTQ1NzYsNiArNDYyOSw3IEBAIHN0YXRpYyBzdHJ1
Y3QgcGxhdGZvcm1fZHJpdmVyIGNkbnNfdG9ycmVudF9waHlfZHJpdmVyID0gewogCS5kcml2ZXIg
PSB7CiAJCS5uYW1lCT0gImNkbnMtdG9ycmVudC1waHkiLAogCQkub2ZfbWF0Y2hfdGFibGUJPSBj
ZG5zX3RvcnJlbnRfcGh5X29mX21hdGNoLAorCQkucG0JPSBwbV9zbGVlcF9wdHIoJmNkbnNfdG9y
cmVudF9waHlfcG1fb3BzKSwKIAl9CiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihjZG5zX3Rv
cnJlbnRfcGh5X2RyaXZlcik7CgotLSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
