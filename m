Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27D8DC47422
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 17:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMwIafNBaH2voCkLGXEpCgQ6LDV9woBJxNTZQAswX7g=; b=Q0uh4pVvrYWeZ6
	9boLAfyUSv2GD4KXOxVkvd7TWrac+U16l4MYLmv49gOpg3dKzEVT5gtI5DvDzNUk2lRo9+LAMhXDQ
	i50Hl0mvwEKzRAPj3SPNiebdMhfV72tM8ZOKbI4Zn+gkksvZuQd65SY4E6fVjJD+qUqFvwcHcWDNQ
	AoXVReATmBuTZoVDz6JVkBG0H6hMzRKt6M/VKKolNYzD/ZluwQci7qjEDSxAjbnG3CCQrhs82iCk0
	KN//Tg4amqBD6C2nv+jbG7IKRoE/6MVaTc46kCxIshZByVqEKu9dTfBKwjee/aXMsPw7IkGBYvo+O
	qrAxHYK0xXcvtw0HUWUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQn0-009oq0-0v;
	Mon, 15 Jan 2024 17:30:22 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdY-009acg-0k;
	Mon, 15 Jan 2024 16:16:33 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 85B07C000B;
	Mon, 15 Jan 2024 16:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335390;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6Zc7oDGWLY59Id14ADaThozzre9i+PeSim2lQYTQhJU=;
	b=X9WmaQWwwETfW8dfJA1H1y0E/fv7gA9agoRHyRjTmfy4DU6xneG2cNNHyxhTAP8o/90RXr
	wqNNK3LbwCu3OiYNWMPnwY6Iv3PXuZGfDHelcqvc+kPycf0AH/FVGB6dlb1LcOD1O56v6I
	lItnrOTKbPIwsut/lHb0AZouJXqv74d5litMfv8xIB0q7iOgSWAr9Z1wI1QAgpl8vj9JmL
	qa8IbSiF38YNuq6zJz0xBsNz0W4NzxbenqgznEbAzFds/o8uJ8CYxjv5vlu1aSC6S5bL1m
	H9eHBIfqubYclIYmf5ufs4GWb4u8TSBT8xOsiDAiH9/Tr0lihoNGJ5dx5Xtfuw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:54 +0100
Subject: [PATCH 13/14] PCI: j721e: move reset GPIO to device struct
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-13-84e55da52400@bootlin.com>
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
X-CRM114-CacheID: sfid-20240115_081632_555535_73E1804D 
X-CRM114-Status: GOOD (  13.58  )
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

RnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KCk1vdmUgcmVzZXQg
R1BJTyB0byBkZXZpY2Ugc3RydWN0LCBzbyBpdCBjYW4gYmUgdXNlZCBhdCBzdXNwZW5kIGFuZApy
ZXN1bWUgc3RhZ2VzLgoKU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBi
b290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJk
QGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ktajcy
MWUuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVu
Y2UvcGNpLWo3MjFlLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFl
LmMKaW5kZXggOWIzNDNhNDZkYTExLi40NzcyNzVkNzIyNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYworKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMKQEAgLTU0LDYgKzU0LDcgQEAgc3RydWN0IGo3MjFl
X3BjaWUgewogCXN0cnVjdCBjbGsJCSpyZWZjbGs7CiAJdTMyCQkJbW9kZTsKIAl1MzIJCQludW1f
bGFuZXM7CisJc3RydWN0IGdwaW9fZGVzYwkqcmVzZXRfZ3BpbzsKIAl2b2lkIF9faW9tZW0JCSp1
c2VyX2NmZ19iYXNlOwogCXZvaWQgX19pb21lbQkJKmludGRfY2ZnX2Jhc2U7CiAJdTMyCQkJbGlu
a2Rvd25faXJxX3JlZ2ZpZWxkOwpAQCAtMzU5LDcgKzM2MCw2IEBAIHN0YXRpYyBpbnQgajcyMWVf
cGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXN0cnVjdCBqNzIxZV9w
Y2llICpwY2llOwogCXN0cnVjdCBjZG5zX3BjaWVfcmMgKnJjID0gTlVMTDsKIAlzdHJ1Y3QgY2Ru
c19wY2llX2VwICplcCA9IE5VTEw7Ci0Jc3RydWN0IGdwaW9fZGVzYyAqZ3Bpb2Q7CiAJdm9pZCBf
X2lvbWVtICpiYXNlOwogCXN0cnVjdCBjbGsgKmNsazsKIAl1MzIgbnVtX2xhbmVzOwpAQCAtNDY4
LDkgKzQ2OCw5IEBAIHN0YXRpYyBpbnQgajcyMWVfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogCiAJc3dpdGNoIChtb2RlKSB7CiAJY2FzZSBQQ0lfTU9ERV9SQzoKLQkJ
Z3Bpb2QgPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJyZXNldCIsIEdQSU9EX09VVF9M
T1cpOwotCQlpZiAoSVNfRVJSKGdwaW9kKSkgewotCQkJcmV0ID0gUFRSX0VSUihncGlvZCk7CisJ
CXBjaWUtPnJlc2V0X2dwaW8gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJyZXNldCIs
IEdQSU9EX09VVF9MT1cpOworCQlpZiAoSVNfRVJSKHBjaWUtPnJlc2V0X2dwaW8pKSB7CisJCQly
ZXQgPSBQVFJfRVJSKHBjaWUtPnJlc2V0X2dwaW8pOwogCQkJaWYgKHJldCAhPSAtRVBST0JFX0RF
RkVSKQogCQkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCByZXNldCBHUElPXG4iKTsKIAkJ
CWdvdG8gZXJyX2dldF9zeW5jOwpAQCAtNTA0LDkgKzUwNCw5IEBAIHN0YXRpYyBpbnQgajcyMWVf
cGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQkgKiBtb2RlIGlzIHNl
bGVjdGVkIHdoaWxlIGVuYWJsaW5nIHRoZSBQSFkuIFNvIGRlYXNzZXJ0IFBFUlNUIwogCQkgKiBh
ZnRlciAxMDAgdXMuCiAJCSAqLwotCQlpZiAoZ3Bpb2QpIHsKKwkJaWYgKHBjaWUtPnJlc2V0X2dw
aW8pIHsKIAkJCXVzbGVlcF9yYW5nZSgxMDAsIDIwMCk7Ci0JCQlncGlvZF9zZXRfdmFsdWVfY2Fu
c2xlZXAoZ3Bpb2QsIDEpOworCQkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0
X2dwaW8sIDEpOwogCQl9CiAKIAkJcmV0ID0gY2Ruc19wY2llX2hvc3Rfc2V0dXAocmMsIHRydWUp
OwoKLS0gCjIuMzkuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
