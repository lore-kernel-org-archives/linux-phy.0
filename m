Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63E7FC47258
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoTtEAnG2vvm3EajI+MDBnyITPhAriXA3M81FRQtTfo=; b=t5ef702PoJNuF+
	3VL0lqt/CxwV/TRN8cxKhiJo0YFTQeVWEn1amgw1J0JTIR/ajSc+c3vSI/bnVEAGFaTQIlzBJGXGr
	bPhfEzCpLBnI5fVjvBuDoarWPdhROA7nDohSZt++bcQ8xRqUAwC1k+mHoQ4ReQ2+jDZeW/LB8/NP+
	XvE3hWyihbPEGphQPZB2voxuAt5Hzpdvt5PZg0RQ8brPhbenfK3SpHRYaDP/WBnJ867V1skSLNMoJ
	hDKz+pGhIzLjUjMNRN347zyH1V+FXgbdonsKQFV3KmxqRuxtGIMu1NmOSv01vn3KOvHBW6rnjDeof
	ZPCC0lWmgx7Y6SdRkXnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdg-009alI-1s;
	Mon, 15 Jan 2024 16:16:40 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdP-009aWi-2T;
	Mon, 15 Jan 2024 16:16:25 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 322DFC0008;
	Mon, 15 Jan 2024 16:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5sUS3vLWJetwrOxifoKHwojurtz05QQ0WVVV+b0as8c=;
	b=COOXp3qPdfsNX4WwaTj+W6tNhEJvjMWJwGpreYYsAzWHkD+A6UGJGtR6y0XvJRVUth+rs2
	1gASrl5oLU9BrJ/J2UDxOXzPYx03q3SW8eLI+TtSKxG9C06QjLKmVsS5khzb3ZRbjvTjOi
	0LH8AB+Uh+p8St2qxjjUc4GPijrgM5cK0qsEYAYs0yFtAl2NRy6aXsbXjmZJUAKhoy/JwA
	2nMmfnm1FYFGQrlzibu6pz121m3l+m5C2Lyc2+WMMqyVY77aIttUeEwpzzSfk2qOJvNgLY
	qYRFtnhkloQNhaO9Tw9kjSKVn8hh8m1vhZseUUKfrl3wnB7AmJhciG9L9f7Aww==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:47 +0100
Subject: [PATCH 06/14] phy: ti: phy-j721e-wiz: add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-6-84e55da52400@bootlin.com>
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
X-CRM114-CacheID: sfid-20240115_081624_140411_7F96BE29 
X-CRM114-Status: GOOD (  13.74  )
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
ZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgfCAzOSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAz
OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdp
ei5jIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IDA5ZjdlZGYxNjU2Mi4u
ZmFjNzA3MGE5ZDZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMK
KysrIGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCkBAIC0xNjY2LDEyICsxNjY2LDUx
IEBAIHN0YXRpYyB2b2lkIHdpel9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IAlwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKIH0KIAorI2lmZGVmIENPTkZJR19QTQorc3RhdGlj
IGludCB3aXpfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9mX25vZGU7CisJc3RydWN0IHdpeiAqd2l6ID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7CisJaW50IHJldDsKKworCS8qIEVuYWJsZSBzdXBwbGVtZW50YWwgQ29u
dHJvbCBvdmVycmlkZSBpZiBhdmFpbGFibGUgKi8KKwlpZiAod2l6LT5zdXBfbGVnYWN5X2Nsa19v
dmVycmlkZSkKKwkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+c3VwX2xlZ2FjeV9jbGtfb3ZlcnJp
ZGUsIDEpOworCisJcmV0ID0gd2l6X2Nsb2NrX2luaXQod2l6LCBub2RlLCBmYWxzZSk7CisJaWYg
KHJldCA8IDApIHsKKwkJZGV2X3dhcm4oZGV2LCAiRmFpbGVkIHRvIGluaXRpYWxpemUgY2xvY2tz
XG4iKTsKKwkJZ290byBlcnJfZ2V0X3N5bmM7CisJfQorCisJcmV0ID0gd2l6X2luaXQod2l6KTsK
KwlpZiAocmV0KSB7CisJCWRldl9lcnIoZGV2LCAiV0laIGluaXRpYWxpemF0aW9uIGZhaWxlZFxu
Iik7CisJCWdvdG8gZXJyX3dpel9pbml0OworCX0KKworCXJldHVybiAwOworCitlcnJfd2l6X2lu
aXQ6CisJd2l6X2Nsb2NrX2NsZWFudXAod2l6LCBub2RlKTsKKworZXJyX2dldF9zeW5jOgorCisJ
cmV0dXJuIHJldDsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHdpel9wbV9v
cHMgPSB7CisJU0VUX05PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMoTlVMTCwgd2l6X3Jlc3VtZV9u
b2lycSkKK307CisjZW5kaWYKKwogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgd2l6X2Ry
aXZlciA9IHsKIAkucHJvYmUJCT0gd2l6X3Byb2JlLAogCS5yZW1vdmVfbmV3CT0gd2l6X3JlbW92
ZSwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJPSAid2l6IiwKIAkJLm9mX21hdGNoX3RhYmxlID0g
d2l6X2lkX3RhYmxlLAorCQkucG0JPSBwbV9wdHIoJndpel9wbV9vcHMpLAogCX0sCiB9OwogbW9k
dWxlX3BsYXRmb3JtX2RyaXZlcih3aXpfZHJpdmVyKTsKCi0tIAoyLjM5LjIKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
