Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE97BC47422
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfbofSTolJiS5F5abi4HpQzaSVfyfZKzMPQzAJ8r06g=; b=vq83IaprjFBHu0
	mdWPpgW2lybFIas045qi5wULSzEl2nbkV+Of0zhOG/hWa/kkvVP6P9/QIdK+429qxZpch5Eth8KJr
	uNBHc6Z3AFuGUJ0mA2IVMsXF5QniSa5Bq26WoCQyGegw6Euh/o+ZcJyv1iOMeTBtNFy8x+XdkyW26
	CdDVw+hNJQAnPTsQVKZB71CQ4JYuFU8RlfswmLDcYxbZz01mKWQk39+h8oXR/dAHJ7QMjmJeuqjmN
	RF5cgblWq9fK4nRRvQ6eLV4UyK3ClkUZ1wmLovhbKiTUyUzSutQ07TMnWLjvOyQCfEv2Cek6W+OC6
	cZjqKVGBsZV12GsFXwSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPe6-009bBs-08;
	Mon, 15 Jan 2024 16:17:06 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdV-009abA-2l;
	Mon, 15 Jan 2024 16:16:31 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 26252C0010;
	Mon, 15 Jan 2024 16:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335388;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZG2Pox00yczUKsAlTmAE1lwg+/Kk7l0gD46+mEZfvAE=;
	b=XGvUOA+e6WdCR5PyqrZfuF3SK/PbCfdr6CrX72v2I0IcCGz6htsbkE35DqpOh78dCB30vx
	VmFbjwqxVuXofkTBoLio5wn+Osd0rYWMUhLDcrcdGQWTYKBf40QT8yDgCq+tZlbEUziIDf
	cvIITxE0+8Q9SQNpINfr3+L7LLsYBXMBKsqbthuzb85zrjiN8Q8aZHbWrsh0gqE6C6vpfF
	/FbHjbC8TGebFkQyb7tSjXBBq5QRt6ttYsD0fuZcjzEAi6fJCkjskscR8YBQuhHD9VKnfR
	GdU01PLTUzSM0c/Bo6VKZRp5iyooUBB62UGPMuBLkxyop3kw1iTa7PznPYj/hQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:52 +0100
Subject: [PATCH 11/14] phy: cadence-torrent: add suspend and resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-11-84e55da52400@bootlin.com>
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
X-CRM114-CacheID: sfid-20240115_081630_184738_3D449409 
X-CRM114-Status: GOOD (  14.32  )
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

QWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LgpUaGUgYWxyZWFkX2NvbmZpZ3VyZWQgZmxh
ZyBpcyBjbGVhcmVkIGR1cmluZyBzdXNwZW5kIHN0YWdlIHRvIGZvcmNlIHRoZQpwaHkgaW5pdGlh
bGl6YXRpb24gZHVyaW5nIHRoZSByZXN1bWUgc3RhZ2UuCgpCYXNlZCBvbiB0aGUgd29yayBvZiBU
aMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgoKU2lnbmVkLW9mZi1ieTogVGhv
bWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGh5
L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jIHwgNTcgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyBiL2RyaXZlcnMvcGh5
L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCmluZGV4IDcwNDEzZmNhNTc3Ni4uMzFiMjU5
NGU1OTQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJl
bnQuYworKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwpAQCAt
MzAwNiw2ICszMDA2LDYyIEBAIHN0YXRpYyB2b2lkIGNkbnNfdG9ycmVudF9waHlfcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJY2Ruc190b3JyZW50X2Nsa19jbGVhbnVwKGNk
bnNfcGh5KTsKIH0KIAorI2lmZGVmIENPTkZJR19QTQorc3RhdGljIGludCBjZG5zX3RvcnJlbnRf
cGh5X3N1c3BlbmRfbm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBjZG5zX3Rv
cnJlbnRfcGh5ICpjZG5zX3BoeSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCWludCBpOworCisJ
cmVzZXRfY29udHJvbF9hc3NlcnQoY2Ruc19waHktPnBoeV9yc3QpOworCXJlc2V0X2NvbnRyb2xf
YXNzZXJ0KGNkbnNfcGh5LT5hcGJfcnN0KTsKKwlmb3IgKGkgPSAwOyBpIDwgY2Ruc19waHktPm5z
dWJub2RlczsgaSsrKQorCQlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5s
bmtfcnN0KTsKKworCWlmICghY2Ruc19waHktPmFscmVhZHlfY29uZmlndXJlZCkKKwkJY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKGNkbnNfcGh5LT5jbGspOworCWVsc2UKKwkJY2Ruc19waHktPmFscmVh
ZHlfY29uZmlndXJlZCA9IDA7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBjZG5zX3Rv
cnJlbnRfcGh5X3Jlc3VtZV9ub2lycShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IGNk
bnNfdG9ycmVudF9waHkgKmNkbnNfcGh5ID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJaW50IG5v
ZGUgPSBjZG5zX3BoeS0+bnN1Ym5vZGVzOworCWludCByZXQsIGk7CisKKwlyZXQgPSBjZG5zX3Rv
cnJlbnRfY2xrKGNkbnNfcGh5KTsKKwlpZiAocmV0KQorCQlnb3RvIGNsa19jbGVhbnVwOworCisJ
LyogRW5hYmxlIEFQQiAqLworCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoY2Ruc19waHktPmFwYl9y
c3QpOworCisJaWYgKGNkbnNfcGh5LT5uc3Vibm9kZXMgPiAxKSB7CisJCXJldCA9IGNkbnNfdG9y
cmVudF9waHlfY29uZmlndXJlX211bHRpbGluayhjZG5zX3BoeSk7CisJCWlmIChyZXQpCisJCQln
b3RvIHB1dF9sbmtfcnN0OworCX0KKworCXJldHVybiAwOworCitwdXRfbG5rX3JzdDoKKwlmb3Ig
KGkgPSAwOyBpIDwgbm9kZTsgaSsrKQorCQlyZXNldF9jb250cm9sX3B1dChjZG5zX3BoeS0+cGh5
c1tpXS5sbmtfcnN0KTsKKwlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+YXBiX3JzdCk7
CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGNkbnNfcGh5LT5jbGspOworY2xrX2NsZWFudXA6CisJ
Y2Ruc190b3JyZW50X2Nsa19jbGVhbnVwKGNkbnNfcGh5KTsKKwlyZXR1cm4gcmV0OworfQorCitz
dGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgY2Ruc190b3JyZW50X3BoeV9wbV9vcHMgPSB7
CisJU0VUX05PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMoY2Ruc190b3JyZW50X3BoeV9zdXNwZW5k
X25vaXJxLAorCQkJCSAgICAgIGNkbnNfdG9ycmVudF9waHlfcmVzdW1lX25vaXJxKQorfTsKKyNl
bmRpZgorCiAvKiBVU0IgYW5kIERQIGxpbmsgY29uZmlndXJhdGlvbiAqLwogc3RhdGljIHN0cnVj
dCBjZG5zX3JlZ19wYWlycyB1c2JfZHBfbGlua19jbW5fcmVnc1tdID0gewogCXsweDAwMDIsIFBI
WV9QTExfQ0ZHfSwKQEAgLTQ1NzcsNiArNDYzMyw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1f
ZHJpdmVyIGNkbnNfdG9ycmVudF9waHlfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1l
CT0gImNkbnMtdG9ycmVudC1waHkiLAogCQkub2ZfbWF0Y2hfdGFibGUJPSBjZG5zX3RvcnJlbnRf
cGh5X29mX21hdGNoLAorCQkucG0JPSBwbV9wdHIoJmNkbnNfdG9ycmVudF9waHlfcG1fb3BzKSwK
IAl9CiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihjZG5zX3RvcnJlbnRfcGh5X2RyaXZlcik7
CgotLSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
