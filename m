Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99038C48260
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 14:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewf4zljQn2EFPnODTT9lSAVASvf1PiLdjDjjx4z5kq0=; b=vh+NNXPl22fViY
	9SMS1l1MW/a8KVUhLZemZje6Kb4onutM+6Rvfn62l40ETg+5KVnapbT4MQajjPkccoMtxHcps87jf
	djiJ/h+iW/AxZu6xfZo3pEgEo6yLQQFpMi3mLS7W/nPfofTiGyHdLAhE83vpEpjai8SGvF7PqjLQz
	JvdupB/KTuwf0PYSoBLOyrLmXxZhSK/JA0QHDOVKovy3dWf+r8jLGEr2GVCje7rIwzppqi87mCaL6
	cF7S+6miN6g2FCrgJtMzwVtjCSVOWy+rUbvgbhUD1c/M1MVX7n/3t3fdsLDytoInIzDT2cXORzjQi
	qAe6HI8MK634qjJvll3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNLK-00000004NFA-30Md;
	Fri, 26 Jan 2024 14:38:06 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNL2-00000004Mzg-0UDv;
	Fri, 26 Jan 2024 14:37:49 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id F15CA4000C;
	Fri, 26 Jan 2024 14:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tZJ+2FIjmJ3bZ38rbdAVVTffmaC+WvVgUK7GwRKTE04=;
	b=UpAgNFun0NVNnY8k9eOqBgvyd6OtEWrfn5hfbdJb2qghuKCU3lVrcVGffgLMqHcaoxFviT
	pTB1e8YU8XTPwd+W2XZD+RUiodvkRevqbKPCk8pAvEBeHmF6HaEvTfhvub2s3Kbn4Bcdtf
	2p5ppt4VTXli4/hl0EtBoYu7wcoP8i+4mZMeC1kawKLhTFwjx3Aco3xV6GwgSUKN9BPGD2
	2KiZAq5m5s1Ng8xEyE2NhWoxf3oyc6Ns5GFn+gClI8BpgUTB5xhVZquAI1fVWPmIH5bOZJ
	oj0upQRBh/YBaMDou6cDcjCbj+IPpvU9i7NZ5GJ+i5XhNhGpiF4hhnePELNHbA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Fri, 26 Jan 2024 15:36:47 +0100
Subject: [PATCH v2 05/15] mux: mmio: add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v2-5-8e4f7d228ec2@bootlin.com>
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
X-CRM114-CacheID: sfid-20240126_063748_355634_09A0A15E 
X-CRM114-Status: GOOD (  11.44  )
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

RnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KCk5vIG5lZWQgdG8g
c2F2ZSBzb21ldGhpbmcgZHVyaW5nIHRoZSBzdXNwZW5kIHN0YWdlLCBhcyB0aGUgbXV4IGNvcmUg
aGFzIGFuCmludGVybmFsIGNhY2hlIHRvIHN0b3JlIHRoZSBzdGF0ZSBvZiBtdXhlcy4KClRoaXMg
Y2FjaGUgaXMgdXNlZCBieSBtdXhfY2hpcF9yZXN1bWUgdG8gcmVzdG9yZSBhbGwgbXV4ZXMuCgpT
aWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0t
LQogZHJpdmVycy9tdXgvbW1pby5jIHwgMTIgKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXV4L21taW8uYyBiL2RyaXZl
cnMvbXV4L21taW8uYwppbmRleCBmZDFkMTIxYTU4NGIuLjg5MmZmNDcxNGI2OCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9tdXgvbW1pby5jCisrKyBiL2RyaXZlcnMvbXV4L21taW8uYwpAQCAtMTI1LDEz
ICsxMjUsMjUgQEAgc3RhdGljIGludCBtdXhfbW1pb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCiAJbXV4X2NoaXAtPm9wcyA9ICZtdXhfbW1pb19vcHM7CiAKKwlkZXZfc2V0
X2RydmRhdGEoZGV2LCBtdXhfY2hpcCk7CisKIAlyZXR1cm4gZGV2bV9tdXhfY2hpcF9yZWdpc3Rl
cihkZXYsIG11eF9jaGlwKTsKIH0KIAorc3RhdGljIGludCBtdXhfbW1pb19yZXN1bWVfbm9pcnEo
c3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBtdXhfY2hpcCAqbXV4X2NoaXAgPSBkZXZf
Z2V0X2RydmRhdGEoZGV2KTsKKworCXJldHVybiBtdXhfY2hpcF9yZXN1bWUobXV4X2NoaXApOwor
fQorCitzdGF0aWMgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMobXV4X21taW9fcG1fb3BzLCBOVUxM
LCBtdXhfbW1pb19yZXN1bWVfbm9pcnEpOworCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZl
ciBtdXhfbW1pb19kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSAibW1pby1tdXgi
LAogCQkub2ZfbWF0Y2hfdGFibGUJPSBtdXhfbW1pb19kdF9pZHMsCisJCS5wbSA9IHBtX3NsZWVw
X3B0cigmbXV4X21taW9fcG1fb3BzKSwKIAl9LAogCS5wcm9iZSA9IG11eF9tbWlvX3Byb2JlLAog
fTsKCi0tIAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
