Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B849C54E55
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hf26KXBz5VMTvqAZGtN3UKGRsdrN1Dn8NqLGdiTQBik=; b=bI1sVV4OrJF0ih
	h2j37MzjUTtZJeC1x4ob7k22mozIefplOoR1/jKZaIZ+OUe3OZENU+PjW/fi6Tv4JZTztlpriz81h
	inofkUObNEyXVAWUVOKuxNY0MxQEv/Z9KBC8M5UAJvy2vHoafo/FONszhzW4J+L9Yrx/w3tRqATD/
	OKcIw/xK9zcljwUUoiE3BRw7LFCVI1kcvpmeIArO3J2Uo41O0i08hU+fhrta8CNKYKAPWYBJCXdyk
	XcfresYy3PNoIowpdYIF9XyLzRB1dRyqVJSj5JbdwtZ+RzNpWC9TFFds38MxoF+i7nYoyoKmizxQh
	O9Yrji6tUZFvwJL5Rvzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMo-00000009chE-1QUW;
	Mon, 04 Mar 2024 15:36:38 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMW-00000009cQe-2DB0;
	Mon, 04 Mar 2024 15:36:22 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id E36641BF213;
	Mon,  4 Mar 2024 15:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566578;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jPqUbSf1Qdf1yloJtVBeCvPFg+XlI7QIXeQdbRho+l4=;
	b=iljZMdmRr0tNgzJK8i8VPTg8h7bHYkCzTSkGwJIhjCEjBBcw7oLlZonEqBI98qgCUaw+A6
	ciopRah50UFE4MW1Dps+6X2It29g3ZyxL6hGFdXVoyHdIvsNFx1ZAkz1bqSey3SNIITiDU
	2krSea/emSeDeavgElkWrdNOpPrGFCsl/2uk2OfRJOj7uUrzi8TOIGrP4QbEPduhgghnCS
	Y/Z/84Ytj45cR87v+fcOvdTTRITU/dtO6tk5Hw2yhC6MX9Y089sUv1KVeZqBTtTnqsqhWn
	l5bX8RVeVQi1vSyJ3ZS6zB4Ls1pUrXO4WVL95vKKyFlgFUfGaUltUsngq64U8A==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:48 +0100
Subject: [PATCH v4 05/18] mux: mmio: add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-5-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_073620_948314_A942AF2B 
X-CRM114-Status: GOOD (  11.55  )
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
Y2FjaGUgaXMgdXNlZCBieSBtdXhfY2hpcF9yZXN1bWUoKSB0byByZXN0b3JlIGFsbCBtdXhlcy4K
ClNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClNp
Z25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4K
LS0tCiBkcml2ZXJzL211eC9tbWlvLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdXgvbW1pby5jIGIvZHJp
dmVycy9tdXgvbW1pby5jCmluZGV4IDMwYTk1MmMzNDM2NS4uMDA0MDVhYmUzY2UzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL211eC9tbWlvLmMKKysrIGIvZHJpdmVycy9tdXgvbW1pby5jCkBAIC0xMzAs
MTMgKzEzMCwyNSBAQCBzdGF0aWMgaW50IG11eF9tbWlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiAKIAltdXhfY2hpcC0+b3BzID0gJm11eF9tbWlvX29wczsKIAorCWRldl9z
ZXRfZHJ2ZGF0YShkZXYsIG11eF9jaGlwKTsKKwogCXJldHVybiBkZXZtX211eF9jaGlwX3JlZ2lz
dGVyKGRldiwgbXV4X2NoaXApOwogfQogCitzdGF0aWMgaW50IG11eF9tbWlvX3Jlc3VtZV9ub2ly
cShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IG11eF9jaGlwICptdXhfY2hpcCA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOworCisJcmV0dXJuIG11eF9jaGlwX3Jlc3VtZShtdXhfY2hpcCk7
Cit9CisKK3N0YXRpYyBERUZJTkVfTk9JUlFfREVWX1BNX09QUyhtdXhfbW1pb19wbV9vcHMsIE5V
TEwsIG11eF9tbWlvX3Jlc3VtZV9ub2lycSk7CisKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIG11eF9tbWlvX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJtbWlvLW11
eCIsCiAJCS5vZl9tYXRjaF90YWJsZQk9IG11eF9tbWlvX2R0X2lkcywKKwkJLnBtID0gcG1fc2xl
ZXBfcHRyKCZtdXhfbW1pb19wbV9vcHMpLAogCX0sCiAJLnByb2JlID0gbXV4X21taW9fcHJvYmUs
CiB9OwoKLS0gCjIuMzkuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
