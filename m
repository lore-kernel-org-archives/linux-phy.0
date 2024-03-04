Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F026C54E58
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gbs+WSL1Z5BZwMWcK6lVE/kDR3MQyM22PVRM1g7fe9I=; b=clc+b0VBxviaPm
	6mBpPDtMwjW7g6W1dsMHGkfEuKVOYzP/vso/Ty31n6ZtBekunDZ0Zem722DYLCnxjUflyLYY4fioD
	T4ycEEu5zKQmzMQThGh+DcJ27T85GK4Z3V0xuscJCuFfyxjPDtAdb/Y/vB+r+TQTQGxTXuMUjIsG0
	DJ1FIZPllW5WVEPTdun3ZgN7KM2esssRqfwsD+dQZ2RgypU1Dq+j8hslHkhwpdmfVTYFc/1GT5qKV
	9xKKsIm96EJ99d555GEyw5W7veDJ2zjew0F2LO1ZclF5E3afYgprSOSfR/ZaotQQa3xT3Xw68qMJ0
	vWa732TAWbAcjYGHQ5lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhANX-00000009dE0-3kd1;
	Mon, 04 Mar 2024 15:37:23 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMd-00000009cXs-43aO;
	Mon, 04 Mar 2024 15:36:36 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5B7AE1BF20A;
	Mon,  4 Mar 2024 15:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566586;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sztGcTF1zNnT//0yUibe2G7ihiKGeSnHpVbJVpHAUPU=;
	b=XhUhcsxz5kqKybZ+IslbKDjzFBEMPd3pYU8SMD9mtQJOmvIF2Oe4kdsywdRL7c0/txh+OT
	C1VUnu18E7+RX/0hxOvd7tTkBa5fsBOpPAXi/ur7w34iqzsnK/fYQVGEpnGEfZR6Xh2g3x
	1BLQiJz2eAzdKGP4TtbpEI4+Z5mDW5CaCLRUnUWRkzIbXxVSgBAjgyLZ8tjrw43qgDXS4o
	gUwlLOag6tSHf56Nu8f4idZeMEIMCTTPD4dZLfpxJBI69kbqULvWheg6kkm/Q2GIVQj+ne
	XetoYoxbYZmJtYFW2zNH3eyDpy1+0efrvgWEgg4IqAcXoraaRAH+xl9xIACw2g==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:52 +0100
Subject: [PATCH v4 09/18] phy: cadence-torrent: extract calls to clk_get
 from cdns_torrent_clk
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-9-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_073628_908172_0C2C77EE 
X-CRM114-Status: GOOD (  12.06  )
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

RXh0cmFjdCBjYWxscyB0byBjbGtfZ2V0IGZyb20gY2Ruc190b3JyZW50X2NsayBpbnRvIGEgc2Vw
YXJhdGUgZnVuY3Rpb24uCkl0IG5lZWRzIHRvIGNhbGwgY2Ruc190b3JyZW50X2NsayBhdCByZXN1
bWUgd2l0aG91dCBsb29raW5nIHVwIHRoZSBjbG9jay4KCkNvLWRldmVsb3BlZC1ieTogVGjDqW8g
TGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVi
cnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hh
cmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGh5L2NhZGVuY2Uv
cGh5LWNhZGVuY2UtdG9ycmVudC5jIHwgMjEgKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyBiL2RyaXZlcnMvcGh5L2Nh
ZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCmluZGV4IGE3NWM5NjM4NWM1Ny4uODAzYTc2YWNm
MmZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQu
YworKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwpAQCAtMjY4
MSwxOCArMjY4MSwyMSBAQCBzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9yZXNldChzdHJ1Y3QgY2Ru
c190b3JyZW50X3BoeSAqY2Ruc19waHkpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgY2Ru
c190b3JyZW50X29mX2dldF9jbGsoc3RydWN0IGNkbnNfdG9ycmVudF9waHkgKmNkbnNfcGh5KQor
eworCWNkbnNfcGh5LT5jbGsgPSBkZXZtX2Nsa19nZXQoY2Ruc19waHktPmRldiwgInJlZmNsayIp
OworCWlmIChJU19FUlIoY2Ruc19waHktPmNsaykpCisJCXJldHVybiBkZXZfZXJyX3Byb2JlKGNk
bnNfcGh5LT5kZXYsIFBUUl9FUlIoY2Ruc19waHktPmNsayksCisJCQkJICAgICAicGh5IHJlZiBj
bG9jayBub3QgZm91bmRcbiIpOworCisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyBpbnQgY2Ruc190
b3JyZW50X2NsayhzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkpCiB7Ci0Jc3RydWN0
IGRldmljZSAqZGV2ID0gY2Ruc19waHktPmRldjsKIAl1bnNpZ25lZCBsb25nIHJlZl9jbGtfcmF0
ZTsKIAlpbnQgcmV0OwogCi0JY2Ruc19waHktPmNsayA9IGRldm1fY2xrX2dldChkZXYsICJyZWZj
bGsiKTsKLQlpZiAoSVNfRVJSKGNkbnNfcGh5LT5jbGspKSB7Ci0JCWRldl9lcnIoZGV2LCAicGh5
IHJlZiBjbG9jayBub3QgZm91bmRcbiIpOwotCQlyZXR1cm4gUFRSX0VSUihjZG5zX3BoeS0+Y2xr
KTsKLQl9Ci0KIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoY2Ruc19waHktPmNsayk7CiAJaWYg
KHJldCkgewogCQlkZXZfZXJyKGNkbnNfcGh5LT5kZXYsICJGYWlsZWQgdG8gcHJlcGFyZSByZWYg
Y2xvY2tcbiIpOwpAQCAtMjc3Niw2ICsyNzc5LDEwIEBAIHN0YXRpYyBpbnQgY2Ruc190b3JyZW50
X3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7CiAKKwlyZXQgPSBjZG5zX3RvcnJlbnRfb2ZfZ2V0X2NsayhjZG5zX3BoeSk7CisJ
aWYgKHJldCkKKwkJZ290byBjbGtfY2xlYW51cDsKKwogCXJlZ21hcF9maWVsZF9yZWFkKGNkbnNf
cGh5LT5waHlfcG1hX2Ntbl9jdHJsXzEsICZhbHJlYWR5X2NvbmZpZ3VyZWQpOwogCiAJaWYgKCFh
bHJlYWR5X2NvbmZpZ3VyZWQpIHsKCi0tIAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
