Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E37C47DDF
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 14:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GrZ3AIXbX+ah6huQSX3t51ZWcYo9cqpoKfs9mUlk21E=; b=U1dmLF8OQtzicM
	dm3tb9RsQuzxXBCnJlZzJBUWQ3UUTz+4iYxyC5XYWx8iGlEOoHueVODxR51AQLTM5W0vbmWigcpKr
	xOF49Z/TXSnP/2c9YTHIpgJlClhqPv4HjVsPoBoUXDUgzN+GSyzKt04CihNCEz8udf7gimzmQMZLv
	JZqyLPi+5MPan7a43jl7zT0//u74IBwciiKU5mRPzosIWddeg7E6SrTXBOrBCWeoM7ooAdGbxbY5O
	ZFVxCaAsjvi/wEmsQjdE40sjCEEuaOlSGrZstiDdb1j9Xqpv/Pr5QuXC7UkWuA5r4UcuxpknKFINB
	QgAf3QyLcTB0dr7zn5Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNKs-00000004Mv2-1gGx;
	Fri, 26 Jan 2024 14:37:38 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNKo-00000004Msr-1Pbg;
	Fri, 26 Jan 2024 14:37:35 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3A5F94000C;
	Fri, 26 Jan 2024 14:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=62/qYpK4+YlKzbTb8Bu4FQMVmVipXLL21WAgCC0RYzA=;
	b=jYJ+UGbML212yaitjT4mp/B0Uhj+CdJw4jD57IsqiYRIgwE1hfwmCP4ECofgfoBbqQnNM1
	e5uVAXyA5/zPYjCo9OvZwSdnBssk0iN6GMJX+eWzY2rE2ctgKmhw9xAwV5f+86HVqVGSnY
	NoIlCcSt5qwkRpmaPKkO78NxWwWIP8nRtDmqwyGY/y5YhHSNYsmLZPyqOuo841+KBD4ys/
	3h94YI4MafeM0g6YI+/sN6zd2r5qGVHN48dh1XVQ2ebTqiP7bvyrtsyiXGFiE798lcgEDM
	vNhrh6WJx/tIpjPMgqDkRa7oXoJUA1g3LymgdRex25VzqieDKKrJy4xV8WqVJw==
From: Thomas Richard <thomas.richard@bootlin.com>
Subject: [PATCH v2 00/15] Add suspend to ram support for PCIe on J7200
Date: Fri, 26 Jan 2024 15:36:42 +0100
Message-Id: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHrDs2UC/3WNTQ6CMBBGr0K6dsy00iCuvIdh0ZZRxmhLOoRoC
 He3sHf5vp+8RQllJlGXalGZZhZOsYA5VCoMLj4IuC+sDJoaNRp4NgYRxsAEYjJQ8Nq1TUsn26h
 y8k4IfHYxDNvt7WSivBVjpjt/dtOtKzywTCl/d/Gst/SvY9aAcK7J2t7ZMsGrT2l6cTyG9Fbdu
 q4/Q9ZwwccAAAA=
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
X-CRM114-CacheID: sfid-20240126_063734_663331_2543CF42 
X-CRM114-Status: GOOD (  14.72  )
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

VGhpcyBhZGQgc3VzcGVuZCB0byByYW0gc3VwcG9ydCBmb3IgdGhlIFBDSWUgKFJDIG1vZGUpIG9u
IEo3MjAwIHBsYXRmb3JtLgoKSW4gUkMgbW9kZSwgdGhlIHJlc2V0IHBpbiBmb3IgZW5kcG9pbnRz
IGlzIG1hbmFnZWQgYnkgYSBncGlvIGV4cGFuZGVyIG9uIGEKaTJjIGJ1cy4gVGhpcyBwaW4gc2hh
bGwgYmUgbWFuYWdlZCBpbiBzdXNwZW5kX25vaXJxKCkgYW5kIHJlc3VtZV9ub2lycSgpLgpUaGUg
c3VzcGVuZC9yZXN1bWUgaGFzIGJlZW4gbW92ZWQgdG8gc3VzcGVuZF9ub2lycSgpL3Jlc3VtZV9u
b2lycSgpIGZvcgpwY2E5NTN4IChleHBhbmRlcikgYW5kIHBpbmN0cmwtc2luZ2xlLgoKVG8gZG8g
aTJjIGFjY2Vzc2VzIGR1cmluZyBzdXNwZW5kX25vaXJxL3Jlc3VtZV9ub2lycSwgd2UgbmVlZCB0
byBmb3JjZSB0aGUKd2FrZXVwIG9mIHRoZSBpMmMgY29udHJvbGxlciAod2hpY2ggaXMgYXV0b3N1
c3BlbmRlZCkgZHVyaW5nIHN1c3BlbmQKY2FsbGJhY2suIApJdCdzIHRoZSBvbmx5IHdheSB0byB3
YWtldXAgdGhlIGNvbnRyb2xsZXIgaWYgaXQncyBhdXRvc3VzcGVuZGVkLCBhcwpydW50aW1lIHBt
IGlzIGRpc2FibGVkIGluIHN1c3BlbmRfbm9pcnEgYW5kIHJlc3VtZV9ub2lycS4KClRoZSBtYWlu
IGNoYW5nZSBpbiB0aGlzIHYyIGlzIHRoZSBhZGQgb2YgbXV4X2NoaXBfcmVzdW1lKCkgZnVuY3Rp
b24gaW4gdGhlCm11eCBjb3JlLgpUaGlzIGZ1bmN0aW9uIHJlc3RvcmVzIHRoZSBzdGF0ZSBvZiBt
dXgtY2hpcCB1c2luZyBjYWNoZWQgc3RhdGUuIEl0J3MgdXNlZApieSBtbWlvIGRyaXZlciBpbiB0
aGUgcmVzdW1lX25vaXJxKCkgY2FsbGJhY2suCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFy
ZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIGFsbDog
Zml4IGNvbW1pdHMgbWVzc2FnZXMuCi0gYWxsOiB1c2UgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMg
YW5kIHBtX3NsZWVwX3B0ciBtYWNyb3MuCi0gYWxsOiByZW1vdmUgdXNlbGVzcyAjaWZkZWYgQ09O
RklHX1BNLgotIHBpbmN0cmwtc2luZ2xlOiBkcm9wIGRlYWQgY29kZQotIG11eDogYWRkIG11eF9j
aGlwX3Jlc3VtZSgpIGZ1bmN0aW9uIGluIG11eCBjb3JlLgotIG1taW86IHJlc3VtZSBzZXF1ZW5j
ZSBpcyBub3cgYSBjYWxsIHRvIG11eF9jaGlwX3Jlc3VtZSgpLgotIHBoeS1jYWRlbmNlLXRvcnJl
bnQ6IGZpeCB0eXBvIGluIHJlc3VtZSBzZXF1ZW5jZSAocmVzZXRfY29udHJvbF9hc3NlcnQoKQog
IGluc3RlYWQgb2YgcmVzZXRfY29udHJvbF9wdXQoKSkuCi0gcGh5LWNhZGVuY2UtdG9ycmVudDog
dXNlIFBIWSBpbnN0ZWFkIG9mIHBoeS4KLSBwY2ktajcyMWU6IGRvIG5vdCBzaGFkb3cgY2Ruc19w
Y2llX2hvc3Rfc2V0dXAgcmV0dXJuIGNvZGUgaW4gcmVzdW1lCiAgc2VxdWVuY2UuCi0gcGNpLWo3
MjFlOiBkcm9wIGRlYWQgY29kZS4KLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjQwMTAyLWo3MjAwLXBjaWUtczJyLXYxLTAtODRlNTVkYTUyNDAwQGJvb3RsaW4uY29t
CgotLS0KVGhvbWFzIFJpY2hhcmQgKDExKToKICAgICAgZ3BpbzogcGNhOTUzeDogbW92ZSBzdXNw
ZW5kKCkvcmVzdW1lKCkgdG8gc3VzcGVuZF9ub2lycSgpL3Jlc3VtZV9ub2lycSgpCiAgICAgIHBp
bmN0cmw6IHBpbmN0cmwtc2luZ2xlOiBtb3ZlIHN1c3BlbmQoKS9yZXN1bWUoKSBjYWxsYmFja3Mg
dG8gbm9pcnEKICAgICAgaTJjOiBvbWFwOiB3YWtldXAgdGhlIGNvbnRyb2xsZXIgZHVyaW5nIHN1
c3BlbmQoKSBjYWxsYmFjawogICAgICBtdXg6IGFkZCBtdXhfY2hpcF9yZXN1bWUoKSBmdW5jdGlv
bgogICAgICBwaHk6IHRpOiBwaHktajcyMWUtd2l6OiBtYWtlIHdpel9jbG9ja19pbml0IGNhbGxh
YmxlIG11bHRpcGxlIHRpbWVzCiAgICAgIHBoeTogdGk6IHBoeS1qNzIxZS13aXo6IGFkZCByZXN1
bWUgc3VwcG9ydAogICAgICBwaHk6IGNhZGVuY2UtdG9ycmVudDogZXh0cmFjdCBjYWxscyB0byBj
bGtfZ2V0IGZyb20gY2Ruc190b3JyZW50X2NsawogICAgICBwaHk6IGNhZGVuY2UtdG9ycmVudDog
cmVnaXN0ZXIgcmVzZXRzIGV2ZW4gaWYgdGhlIHBoeSBpcyBhbHJlYWR5IGNvbmZpZ3VyZWQKICAg
ICAgcGh5OiBjYWRlbmNlLXRvcnJlbnQ6IGFkZCBhbHJlYWR5X2NvbmZpZ3VyZWQgdG8gc3RydWN0
IGNkbnNfdG9ycmVudF9waHkKICAgICAgcGh5OiBjYWRlbmNlLXRvcnJlbnQ6IHJlbW92ZSBub29w
X29wcyBwaHkgb3BlcmF0aW9ucwogICAgICBwaHk6IGNhZGVuY2UtdG9ycmVudDogYWRkIHN1c3Bl
bmQgYW5kIHJlc3VtZSBzdXBwb3J0CgpUaMOpbyBMZWJydW4gKDQpOgogICAgICBtdXg6IG1taW86
IGFkZCByZXN1bWUgc3VwcG9ydAogICAgICBQQ0k6IGNhZGVuY2U6IGFkZCByZXN1bWUgc3VwcG9y
dCB0byBjZG5zX3BjaWVfaG9zdF9zZXR1cCgpCiAgICAgIFBDSTogajcyMWU6IGFkZCByZXNldCBH
UElPIHRvIHN0cnVjdCBqNzIxZV9wY2llCiAgICAgIFBDSTogajcyMWU6IGFkZCBzdXNwZW5kIGFu
ZCByZXN1bWUgc3VwcG9ydAoKIGRyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3guYyAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA3ICstCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLW9tYXAuYyAgICAg
ICAgICAgICAgICAgICAgICB8ICAxNCArKysKIGRyaXZlcnMvbXV4L2NvcmUuYyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDI3ICsrKysrCiBkcml2ZXJzL211eC9tbWlvLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMiArKwogZHJpdmVycy9wY2kvY29udHJv
bGxlci9jYWRlbmNlL3BjaS1qNzIxZS5jICAgICAgICAgfCAgOTMgKysrKysrKysrKysrKystLQog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaWUtY2FkZW5jZS1ob3N0LmMgfCAgNDkg
KysrKystLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLXBs
YXQuYyB8ICAgMiArLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaWUtY2FkZW5j
ZS5oICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVu
dC5jICAgICAgICAgIHwgMTIyICsrKysrKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9waHkvdGkv
cGh5LWo3MjFlLXdpei5jICAgICAgICAgICAgICAgICAgICAgfCAgOTUgKysrKysrKysrKysrLS0t
LQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc2luZ2xlLmMgICAgICAgICAgICAgICAgICAgfCAg
MjggKystLS0KIGluY2x1ZGUvbGludXgvbXV4L2RyaXZlci5oICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAxICsKIDEyIGZpbGVzIGNoYW5nZWQsIDM0MyBpbnNlcnRpb25zKCspLCAxMTEgZGVs
ZXRpb25zKC0pCi0tLQpiYXNlLWNvbW1pdDogMDBmZjBmOWNlNDBkYjhlNjRmZTE2YzQyNGE5NjVm
ZDdhYjc2OWM0MgpjaGFuZ2UtaWQ6IDIwMjQwMTAyLWo3MjAwLXBjaWUtczJyLWVjYjFhOTc5ZTM1
NwoKQmVzdCByZWdhcmRzLAotLSAKVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3Rs
aW4uY29tPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
