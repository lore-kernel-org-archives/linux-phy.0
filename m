Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3BFCC4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wV8hksk2K5qtM08hkr3lY54YSVJO9k9m4yMgViTuumE=; b=gtrCkYvU1yHcbN
	mjdNs+iVSdJDuiuk9Pc/Z2g3hgmKpwvIwPoOjzXB6jVYv7XXxPBui5HXXrXMlNOiZXiNiPvfSv1rO
	eNvbfpYnjO7Y5pLxkqyVWRcgGxSm+WwCOMNDjxSlfuq9vnlgauVDEoaQNaXUWa0qCtYW4Vq7IzIq3
	ZPOMlUKDik0xTIuA14t1P9seNrsQ6EjiXH5fOImQD/KAb7JfBY5Tiw6q0T0KHUXwEVmnW4y6HIcVd
	28Q7rmBBzHZPVve66/a2pVOQ2isXMvGo6J0TrRt9CY1ASCe47TjW88LyVuJNEMB4kWw9IO4RVfsGM
	dWGrv4VWSFbinC8vpgYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radVl-0000000GhMN-3do1;
	Thu, 15 Feb 2024 15:18:53 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radV5-0000000Ggrf-0eFv;
	Thu, 15 Feb 2024 15:18:12 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8C55F240010;
	Thu, 15 Feb 2024 15:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=elGcazR3RAYdE1WwV1YDwOp1CVUqVY3SVp9Rpe8awS8=;
	b=hxT15foxAPdxrh9+jDZrsMZme2b4pSEQWPLGbELqJ7wHekbnDI4a/szJ/LLrGNVMRlaSiw
	076ABYE/WZmzZMwjI3bycuJPack20ILG4yg725ztMdc5CLGRPzyWHCtY1zKp+4/3VHEhsB
	SRKDRfcJ4e7PDc0SNPOL5DehAGDQpTlBOPVJfwxDpK4dUIsvOuWZLjHxGw8oRUXPTuoGds
	VVaGdH6s2ZhGypPJZDxGJnOGgSJiO/ebirE1trq8DkcfdN8VOvRN7PbNr6vDC2FY7AVAXg
	vX4lNr7DwDKjfJiqYEZWBkqihZ7ZyoYTqVtaghUUkQGyyc1RBvJtUHZptjjzhw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:54 +0100
Subject: [PATCH v3 09/18] phy: ti: phy-j721e-wiz: add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-9-5c2e4a3fac1f@bootlin.com>
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
X-CRM114-CacheID: sfid-20240215_071811_474039_01397B2D 
X-CRM114-Status: GOOD (  12.40  )
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
IFNSMi4wLgoKQmFzZWQgb24gdGhlIHdvcmsgb2YgVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBi
b290bGluLmNvbT4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9tYXMucmljaGFy
ZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgfCAyOSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgYi9kcml2
ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKaW5kZXggNDVjNWE0ZTljZDEyLi5jZGUzODE4MmUz
NGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYworKysgYi9kcml2
ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKQEAgLTE2NjAsMTIgKzE2NjAsNDEgQEAgc3RhdGlj
IHZvaWQgd2l6X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXBtX3J1bnRp
bWVfZGlzYWJsZShkZXYpOwogfQogCitzdGF0aWMgaW50IHdpel9yZXN1bWVfbm9pcnEoc3RydWN0
IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGRldi0+b2Zfbm9k
ZTsKKwlzdHJ1Y3Qgd2l6ICp3aXogPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlpbnQgcmV0Owor
CisJLyogRW5hYmxlIHN1cHBsZW1lbnRhbCBDb250cm9sIG92ZXJyaWRlIGlmIGF2YWlsYWJsZSAq
LworCWlmICh3aXotPnN1cF9sZWdhY3lfY2xrX292ZXJyaWRlKQorCQlyZWdtYXBfZmllbGRfd3Jp
dGUod2l6LT5zdXBfbGVnYWN5X2Nsa19vdmVycmlkZSwgMSk7CisKKwl3aXpfY2xvY2tfaW5pdCh3
aXopOworCisJcmV0ID0gd2l6X2luaXQod2l6KTsKKwlpZiAocmV0KSB7CisJCWRldl9lcnIoZGV2
LCAiV0laIGluaXRpYWxpemF0aW9uIGZhaWxlZFxuIik7CisJCWdvdG8gZXJyX3dpel9pbml0Owor
CX0KKworCXJldHVybiAwOworCitlcnJfd2l6X2luaXQ6CisJd2l6X2Nsb2NrX2NsZWFudXAod2l6
LCBub2RlKTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBERUZJTkVfTk9JUlFfREVWX1BN
X09QUyh3aXpfcG1fb3BzLCBOVUxMLCB3aXpfcmVzdW1lX25vaXJxKTsKKwogc3RhdGljIHN0cnVj
dCBwbGF0Zm9ybV9kcml2ZXIgd2l6X2RyaXZlciA9IHsKIAkucHJvYmUJCT0gd2l6X3Byb2JlLAog
CS5yZW1vdmVfbmV3CT0gd2l6X3JlbW92ZSwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJPSAid2l6
IiwKIAkJLm9mX21hdGNoX3RhYmxlID0gd2l6X2lkX3RhYmxlLAorCQkucG0JPSBwbV9zbGVlcF9w
dHIoJndpel9wbV9vcHMpLAogCX0sCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcih3aXpfZHJp
dmVyKTsKCi0tIAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
