Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B23DBC5478C
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsiuXqsf2Qu++OULoqz2nE0nKGq3gv2qXEXh1f9tHmo=; b=jwRT7bgdL0dXLY
	rxpJkrVxd4bbg5WUdDQZcYf/6smN5tM7AeChG0RB+luL3EsvQTFYbKwrBohjmWqXM7jg2wfwoBXjk
	UV3TUdoH3rqglZsx5Tga96hPojNkG+1yGi0AHGB+BpukjnzM9ETnqXt1yMPW8SFfwJidfKW9zPL0l
	YNc7fDwtfV00o9VqX4v1snWn/EXCu2Nw7BdWcvtEcPqFwjkWzIi5uEdkecoq6RkKKR4fNVI7gz4Ji
	MaBiGEAqsUYzEkl0/AbN4TwdO1/QPNT8rJilRva6OVTRu/bC93qeQBY7Iy1/ucBUOuEsfDoF4XaYv
	S5DA0AIEZYCNRLw8562A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBWi-00000009tyj-1TCA;
	Mon, 04 Mar 2024 16:50:56 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMt-00000009cli-36Tf;
	Mon, 04 Mar 2024 15:37:01 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 155381BF207;
	Mon,  4 Mar 2024 15:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566600;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pAhWJDZy3Qxtd03byX/QomLU+QUbXtxsEhEbMTufqk0=;
	b=Kc17rCqkc6LOuhYPwzljGg/aEZQJ8pXDhF6R5AXxVwGA3rWUtr6nJ+P/hf1YcshHcsgfln
	r3emNG6lXMTbJ0PzSHKu5p+6lxRGBaBfH5U26dL9aGFQilO5dcI04j9QqvWFLrX6gLXu55
	44G9/+PQVO9Js+sc7Ok4WYHoEFsPLM5dIM3oceE8QEYk4r1obpEnDwGTkDTW8HN9OIvNMb
	T2EUi1aDs0gMPskOlN08SRld8nN/yfZ6LT4POBBN2f26/mqHy+7JiM54p4LFoC+FRGzIDC
	+Ul80YVITQ4Tlr/nA2VCuukU/XrDcfSEDHcq2vNFaMcme9jU19vIfIJ+TQnjZA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:36:00 +0100
Subject: [PATCH v4 17/18] PCI: j721e: Add reset GPIO to struct j721e_pcie
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-17-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_073645_544161_BEC05BA0 
X-CRM114-Status: GOOD (  10.27  )
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

RnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KCkFkZCByZXNldCBH
UElPIHRvIHN0cnVjdCBqNzIxZV9wY2llLCBzbyBpdCBjYW4gYmUgdXNlZCBhdCBzdXNwZW5kIGFu
ZApyZXN1bWUgc3RhZ2VzLgoKU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1
bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNo
YXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2kt
ajcyMWUuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMKaW5kZXggOTg0ODRmMDAxNTYyLi45
YWY0ZmQ2NGMxZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9w
Y2ktajcyMWUuYworKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFl
LmMKQEAgLTUyLDYgKzUyLDcgQEAgc3RydWN0IGo3MjFlX3BjaWUgewogCXUzMgkJCW1vZGU7CiAJ
dTMyCQkJbnVtX2xhbmVzOwogCXUzMgkJCW1heF9sYW5lczsKKwlzdHJ1Y3QgZ3Bpb19kZXNjCSpy
ZXNldF9ncGlvOwogCXZvaWQgX19pb21lbQkJKnVzZXJfY2ZnX2Jhc2U7CiAJdm9pZCBfX2lvbWVt
CQkqaW50ZF9jZmdfYmFzZTsKIAl1MzIJCQlsaW5rZG93bl9pcnFfcmVnZmllbGQ7CkBAIC01MDgs
NiArNTA5LDcgQEAgc3RhdGljIGludCBqNzIxZV9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiAJCQlyZXQgPSBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihncGlvZCks
ICJGYWlsZWQgdG8gZ2V0IHJlc2V0IEdQSU9cbiIpOwogCQkJZ290byBlcnJfZ2V0X3N5bmM7CiAJ
CX0KKwkJcGNpZS0+cmVzZXRfZ3BpbyA9IGdwaW9kOwogCiAJCXJldCA9IGNkbnNfcGNpZV9pbml0
X3BoeShkZXYsIGNkbnNfcGNpZSk7CiAJCWlmIChyZXQpIHsKCi0tIAoyLjM5LjIKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
