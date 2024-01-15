Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F46C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJHMYtn7xaApDXKOx2fzF9u2a3BdY5BC44bhc+2HkSw=; b=N4hctOlPrFUsPB
	ZSkcEsuGBvRUUTnTpq2PfhOOnxs0kdHMKOELLBvSDnMsJcpFpJK+hG+Mpu69FX+lrV/GA/KY24vy3
	LJ0lNTvMbSe5PBffMRT13fKKDwrB7Obsku0cWCpuNm2I96vqvqoSiHPhDRLrsfMzpOiKTMeUrrNUc
	0QwMvmRk4xcaPXPZlek+/jkH3PK4HQWYeb8JedW34SzlP0llM2wHQrFjPrVUEIw9MvqlHV6UfQsYu
	UQHSYvwnWwf05wmRsUQgGeO9Ht3Bv7IdTEvIjTpbsOddftrBTwIKrlsO0IxCDn+P+++P5wjj7SOim
	m3DRNAp/ttgZ2I83bNbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdk-009ap2-10;
	Mon, 15 Jan 2024 16:16:44 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdQ-009aXA-3C;
	Mon, 15 Jan 2024 16:16:26 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5A97BC0014;
	Mon, 15 Jan 2024 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qwKGf7qwzlJSl38EGsWN6oKmN7+Z3kA3VFlKRRwxvC0=;
	b=Nyn6Z7nS4rpPrtcLEUkTF9AAgHB7htljXQCy+nyVz7Y/WDZKFIZ+B9Ry1SSldbMdvKl+ib
	AJcGsDJnar6WP+Nu5EVq49AY9dZ51z4Sydg6D6lWZFsLxozf+d6OliKbMCKVQYPSvM6yYD
	ztNFRagdPrThYH6N3QYZPRIifO90got8tY1XwISASqORDilOCeevf0nysbCbYro5OarwFY
	k3uy5zRU3eHZx90T+1ENgPQkW5TpzwfXbUjJWV82BamdC3HBiEuRuWx+Wqo2seucK8I8/8
	iFuZnSkdpejBFw5Y0p7k5A5xv2VI9sO+JFnQKQYkqEaLgt57sxDDiJ48qrPR0g==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:48 +0100
Subject: [PATCH 07/14] phy: cadence-torrent: extract calls to clk_get from
 cdns_torrent_clk
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-7-84e55da52400@bootlin.com>
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
X-CRM114-CacheID: sfid-20240115_081625_294297_1D8A6220 
X-CRM114-Status: GOOD (  11.53  )
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
bWUgd2l0aG91dCBsb29raW5nIHVwIHRoZSBjbG9jay4KCkJhc2VkIG9uIHRoZSB3b3JrIG9mIFRo
w6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+CgpTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9waHkv
Y2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgfCAyMiArKysrKysrKysrKysrKystLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyBiL2RyaXZl
cnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCmluZGV4IGE3NWM5NjM4NWM1Ny4u
OTQyOThhZDlmODc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNl
LXRvcnJlbnQuYworKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQu
YwpAQCAtMjY4MSwxOCArMjY4MSwyMiBAQCBzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9yZXNldChz
dHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRp
YyBpbnQgY2Ruc190b3JyZW50X2NsayhzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkp
CitzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9vZl9nZXRfY2xrKHN0cnVjdCBjZG5zX3RvcnJlbnRf
cGh5ICpjZG5zX3BoeSkKIHsKLQlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBjZG5zX3BoeS0+ZGV2Owot
CXVuc2lnbmVkIGxvbmcgcmVmX2Nsa19yYXRlOwotCWludCByZXQ7Ci0KLQljZG5zX3BoeS0+Y2xr
ID0gZGV2bV9jbGtfZ2V0KGRldiwgInJlZmNsayIpOworCWNkbnNfcGh5LT5jbGsgPSBkZXZtX2Ns
a19nZXQoY2Ruc19waHktPmRldiwgInJlZmNsayIpOwogCWlmIChJU19FUlIoY2Ruc19waHktPmNs
aykpIHsKLQkJZGV2X2VycihkZXYsICJwaHkgcmVmIGNsb2NrIG5vdCBmb3VuZFxuIik7CisJCWRl
dl9lcnIoY2Ruc19waHktPmRldiwgInBoeSByZWYgY2xvY2sgbm90IGZvdW5kXG4iKTsKIAkJcmV0
dXJuIFBUUl9FUlIoY2Ruc19waHktPmNsayk7CiAJfQogCisJcmV0dXJuIDA7Cit9CisKK3N0YXRp
YyBpbnQgY2Ruc190b3JyZW50X2NsayhzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkp
Cit7CisJdW5zaWduZWQgbG9uZyByZWZfY2xrX3JhdGU7CisJaW50IHJldDsKKwogCXJldCA9IGNs
a19wcmVwYXJlX2VuYWJsZShjZG5zX3BoeS0+Y2xrKTsKIAlpZiAocmV0KSB7CiAJCWRldl9lcnIo
Y2Ruc19waHktPmRldiwgIkZhaWxlZCB0byBwcmVwYXJlIHJlZiBjbG9ja1xuIik7CkBAIC0yNzc2
LDYgKzI3ODAsMTAgQEAgc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCXJldCA9
IGNkbnNfdG9ycmVudF9vZl9nZXRfY2xrKGNkbnNfcGh5KTsKKwlpZiAocmV0KQorCQlnb3RvIGNs
a19jbGVhbnVwOworCiAJcmVnbWFwX2ZpZWxkX3JlYWQoY2Ruc19waHktPnBoeV9wbWFfY21uX2N0
cmxfMSwgJmFscmVhZHlfY29uZmlndXJlZCk7CiAKIAlpZiAoIWFscmVhZHlfY29uZmlndXJlZCkg
ewoKLS0gCjIuMzkuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
