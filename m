Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 796D9C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxjmHl7cm2LAMNUXcWW6FOC5OxJ9jO93/2BKNRQJo1U=; b=CGJcpsXGrXcjru
	Hg2d9cUueOHvoiU52WC8DffbALLtSkyviX+cyPUCOY3ilmEM/WCgPFoNz5r9xs9o9VcEScIzVNawZ
	Wi648UPmMWNt0bXvzLpBRMvSmZhOVSDa2Wlp5It71EONcY7B5u2BAn7SrgfezkzcUWFAP5Ne4hu4q
	Lu6z00vAB9zgimYh3wzVjI5EGwRy6kEwYhSz2g23k2TBUgCSMZNm12urImLxIl32DA+EDUBX/a4L7
	xiZZ448KFP1dZj+ucoEAnMcnypte8xwyiEgWLdqw/0WHrsjjGC+KAwSVdtAzQHzt6XDLt1QQypR6O
	LfWegRDbBBRKCOj+uEUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdc-009ai9-30;
	Mon, 15 Jan 2024 16:16:36 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdN-009aVe-1w;
	Mon, 15 Jan 2024 16:16:25 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id BDBC5C0013;
	Mon, 15 Jan 2024 16:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335379;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j40X4Nu4eW/wfOAO/d7B3IGTPdOyDBc/O2ndpv/7HmA=;
	b=F/+6IPqFmci0LEpiKsOSrjUeL2jGbhF/9atcE8qzUcQtLYK/brxsei7e3RZeUzfNzN4Zl2
	BGlSDC3rbCowgKD1C6eTFBU1KYs8J170dSsLKAxAGLb2ni6COkWoRLHmLL1jwYqx3Ch5Af
	zl09x0HFnGDfU3Fi/Bad5Ts6Eepgr9LpWyS/LUKkUKi5kJ8CbI3poOU9kBNwb4eqj3eSz7
	8SkHeoB8uoXuyuGPqE9qRUEGtApJV5vm5q2cBoX+Qj9/W5zB4Y1Y4Og2oXQprGsUYBsgdE
	PrfoPZIl7V9Vcn9ajzE7R+g0B2UK1Y+noBqRgt17q0pucMB5duEqKE63/r9EsA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:45 +0100
Subject: [PATCH 04/14] mux: mmio: Add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-4-84e55da52400@bootlin.com>
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
X-CRM114-CacheID: sfid-20240115_081621_789715_13E88755 
X-CRM114-Status: GOOD (  13.41  )
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

RnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KCkltcGxlbWVudCBy
ZXN1bWUgc3VwcG9ydAoKU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBi
b290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJk
QGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvbXV4L21taW8uYyB8IDM0ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tdXgvbW1pby5jIGIvZHJpdmVycy9tdXgvbW1pby5jCmluZGV4
IGZkMWQxMjFhNTg0Yi4uYWI0ZWYxOTVmYzBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL211eC9tbWlv
LmMKKysrIGIvZHJpdmVycy9tdXgvbW1pby5jCkBAIC0xMjUsMTMgKzEyNSw0NyBAQCBzdGF0aWMg
aW50IG11eF9tbWlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAltdXhf
Y2hpcC0+b3BzID0gJm11eF9tbWlvX29wczsKIAorCWRldl9zZXRfZHJ2ZGF0YShkZXYsIG11eF9j
aGlwKTsKKwogCXJldHVybiBkZXZtX211eF9jaGlwX3JlZ2lzdGVyKGRldiwgbXV4X2NoaXApOwog
fQogCisjaWZkZWYgQ09ORklHX1BNCitzdGF0aWMgaW50IG11eF9tbWlvX3Jlc3VtZV9ub2lycShz
dHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IG11eF9jaGlwICptdXhfY2hpcCA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOworCWludCBnbG9iYWxfcmV0ID0gMDsKKwl1bnNpZ25lZCBpbnQgaTsK
KworCWZvciAoaSA9IDA7IGkgPCBtdXhfY2hpcC0+Y29udHJvbGxlcnM7IGkrKykgeworCQlzdHJ1
Y3QgbXV4X2NvbnRyb2wgKm11eCA9ICZtdXhfY2hpcC0+bXV4W2ldOworCQlpbnQgdmFsID0gbXV4
LT5jYWNoZWRfc3RhdGU7CisJCWludCByZXQ7CisKKwkJaWYgKHZhbCA9PSBNVVhfSURMRV9BU19J
UykKKwkJCWNvbnRpbnVlOworCisJCXJldCA9IG11eF9tbWlvX3NldChtdXgsIHZhbCk7CisJCWlm
IChyZXQpIHsKKwkJCWRldl9lcnIoZGV2LCAiY29udHJvbCAldTogZXJyb3IgcmVzdG9yaW5nIG11
eDogJWRcbiIsIGksIHJldCk7CisJCQlpZiAoIWdsb2JhbF9yZXQpCisJCQkJZ2xvYmFsX3JldCA9
IHJldDsKKwkJfQorCX0KKworCXJldHVybiBnbG9iYWxfcmV0OworfQorI2VuZGlmCisKK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyBtdXhfbW1pb19wbV9vcHMgPSB7CisJU0VUX05PSVJR
X1NZU1RFTV9TTEVFUF9QTV9PUFMoTlVMTCwgbXV4X21taW9fcmVzdW1lX25vaXJxKQorfTsKKwog
c3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgbXV4X21taW9fZHJpdmVyID0gewogCS5kcml2
ZXIgPSB7CiAJCS5uYW1lID0gIm1taW8tbXV4IiwKIAkJLm9mX21hdGNoX3RhYmxlCT0gbXV4X21t
aW9fZHRfaWRzLAorCQkucG0gPSAmbXV4X21taW9fcG1fb3BzLAogCX0sCiAJLnByb2JlID0gbXV4
X21taW9fcHJvYmUsCiB9OwoKLS0gCjIuMzkuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
