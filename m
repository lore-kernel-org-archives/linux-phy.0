Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82B55C54E55
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ub8yo0MPimiqqTxVM4vNJQF/vsXxpmTS0UGwFpF2dzI=; b=vAKF3d77Dco0DO
	yYKNs6Xdo+AWJO8ShDB8A4PByhhYjZYIbb755ATVWOELadc4is3wrWnS+4w9MsDhOTPuSrwREWi1n
	w+WQsrfXik3wX8DzVjZ92RNGYHZw/0TxEfJTHT48ziTkNOvF17UAxZMj+JcVtrE2P6TVdWKRsNUPh
	IBzX6foTFsLghWdXDjlczLGT82bUpNXCeOlHXJLLzkKe5gr3sJC+UbcqUMJKLA+qwEGldpufIeHMd
	aaqV678VW8Jt00UTxAsRBzGsKneK07BQbYI2QMvz8g44ns1sdGZ4Dum/QtqXAV0gLZ4X+kNwnj357
	MFaXnhWx5BfLJ9mmyWUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhANW-00000009dCv-0nBV;
	Mon, 04 Mar 2024 15:37:22 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMc-00000009cVL-0jGL;
	Mon, 04 Mar 2024 15:36:36 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 948841BF214;
	Mon,  4 Mar 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O2OqSyPPWtiaASZZ8fL+0nOgh8uzFroOQ4LwJV+N5EE=;
	b=Upw1ehRrYckmxR7s0sIaRde2rNTfRmIGymX3WOWIMcmwJn2tnZ5SJSZeFZzhVRZdPirmKr
	bni3uAVKVIw4fu7A1VZWffvCAqJQF060OqoWZNXHu/UiVrELnfqu195k/GHe8HsIAEZ3CC
	7/ZYFec/AvlECjmYdwdzofKDYrpV20COkdQuetKUMQYw3lgKkROpYFIabNg8YvW38scIfM
	H04oJxv1HlhO9xpzMYEDGpylIN0kcTkZCvzKR3RcufYUsc69vIyKwhhn7KxCVNQND8IVrp
	4izfZHh51RkXyhEVkG83Es2QoNVlTLtNZ9auBiCBaYRyFkJauy7nD1jV2SiOmA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:51 +0100
Subject: [PATCH v4 08/18] phy: ti: phy-j721e-wiz: add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-8-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_073626_995777_FB83280C 
X-CRM114-Status: GOOD (  12.64  )
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

QWRkIHJlc3VtZSBzdXBwb3J0LgpJdCBoYXMgYmVlbiB0ZXN0ZWQgb24gSjcyMDAgU1IxLjAgYW5k
IFNSMi4wLgoKQ28tZGV2ZWxvcGVkLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3Rs
aW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4u
Y29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxp
bi5jb20+Ci0tLQogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMjkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIGIvZHJpdmVycy9waHkv
dGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IDBlM2NiMWVkNWE1Mi4uYjIzMjBmMmVmYjcyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKKysrIGIvZHJpdmVycy9waHkv
dGkvcGh5LWo3MjFlLXdpei5jCkBAIC0xNjYwLDEyICsxNjYwLDQxIEBAIHN0YXRpYyB2b2lkIHdp
el9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlwbV9ydW50aW1lX2Rpc2Fi
bGUoZGV2KTsKIH0KIAorc3RhdGljIGludCB3aXpfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2Ug
KmRldikKK3sKKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9mX25vZGU7CisJc3Ry
dWN0IHdpeiAqd2l6ID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJaW50IHJldDsKKworCS8qIEVu
YWJsZSBzdXBwbGVtZW50YWwgQ29udHJvbCBvdmVycmlkZSBpZiBhdmFpbGFibGUgKi8KKwlpZiAo
d2l6LT5zdXBfbGVnYWN5X2Nsa19vdmVycmlkZSkKKwkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+
c3VwX2xlZ2FjeV9jbGtfb3ZlcnJpZGUsIDEpOworCisJd2l6X2Nsb2NrX2luaXQod2l6KTsKKwor
CXJldCA9IHdpel9pbml0KHdpeik7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgIldJWiBp
bml0aWFsaXphdGlvbiBmYWlsZWRcbiIpOworCQlnb3RvIGVycl93aXpfaW5pdDsKKwl9CisKKwly
ZXR1cm4gMDsKKworZXJyX3dpel9pbml0OgorCXdpel9jbG9ja19jbGVhbnVwKHdpeiwgbm9kZSk7
CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMod2l6
X3BtX29wcywgTlVMTCwgd2l6X3Jlc3VtZV9ub2lycSk7CisKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIHdpel9kcml2ZXIgPSB7CiAJLnByb2JlCQk9IHdpel9wcm9iZSwKIAkucmVtb3Zl
X25ldwk9IHdpel9yZW1vdmUsCiAJLmRyaXZlcgkJPSB7CiAJCS5uYW1lCT0gIndpeiIsCiAJCS5v
Zl9tYXRjaF90YWJsZSA9IHdpel9pZF90YWJsZSwKKwkJLnBtCT0gcG1fc2xlZXBfcHRyKCZ3aXpf
cG1fb3BzKSwKIAl9LAogfTsKIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIod2l6X2RyaXZlcik7Cgot
LSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
