Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C033AC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 14:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UdKxCbzs/5e2Si9/UBh2cl4MSpRd/AvNki6idthOKM=; b=hQ7h/TUQWtQJJP
	KEZp0RhESmSnRFhDNSxE61H9dr0SiU9i15SXK/Y/s+K3pbsasRVjCx6FD7sbhrHlYZDd7FU2dc/a0
	cjbXMbFa6OnAkdqSwkk61sD4F8TkhJEFZ58peb1L8w/Z7faURG0+BGHWncYxB8pVYHX1Izd1lz0ua
	YhE/CRJ1wJAHNvDsiG9BhLWDId/r/Ic4lKWQU6M14rRA4jo7Ja5PY7AJgbeDcuuyAUKuDVYeOU5uM
	JhkqOMLTUp/5pGnvHhIvfzBFNUaekl5Hnny3WSXHKNaKceZSYoTMRlY5vzCuydyvX4vzuNpwMeocn
	mDCszrtbIysCK0X2eWxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNMd-00000004O7T-1lk7;
	Fri, 26 Jan 2024 14:39:27 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNLL-00000004NEr-2vNZ;
	Fri, 26 Jan 2024 14:38:20 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4A4CC40006;
	Fri, 26 Jan 2024 14:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L1Wa2mY0ZsxjqXg85U4q4TJn+2bPk0WDE8ok1dd694Q=;
	b=JrLwE1YhIpUGiROfu5Z8MPi46E2d+RrF/zQoKlXIwnH2k9kF57QC6Uex4mY2QvRtCzjED1
	h8ga3G6Ua8bxI+VSx31SrVOL5Gb37K4odJvfa2R5S6UmyIBQJufg0s7rvzG7gqyKa1QLRO
	N8mOLdwusdyTbNFpSi2qjD1d1CK5Nmvyo1g6u7ygIBAWknlBtu4FZDIaXwc0pE7H9KUcBn
	Dnj2eyJNAAGWM6BanbHn9JmlVfO1XTMPgP2c+I4rKwCcjmRn+mXkA2yvsE0QvImileV9zB
	YEDcQlpKKu1W105qqUHJ59nYkHSZBsN2Xpqzg3BJCk1CPJukul03PadoC5w68w==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Fri, 26 Jan 2024 15:36:54 +0100
Subject: [PATCH v2 12/15] phy: cadence-torrent: add suspend and resume
 support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v2-12-8e4f7d228ec2@bootlin.com>
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
X-CRM114-CacheID: sfid-20240126_063808_422534_FC5F4638 
X-CRM114-Status: GOOD (  14.55  )
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

QWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LgoKVGhlIGFscmVhZHlfY29uZmlndXJlZCBm
bGFnIGlzIGNsZWFyZWQgZHVyaW5nIHN1c3BlbmQgc3RhZ2UgdG8gZm9yY2UgdGhlClBIWSBpbml0
aWFsaXphdGlvbiBkdXJpbmcgdGhlIHJlc3VtZSBzdGFnZS4KCkJhc2VkIG9uIHRoZSB3b3JrIG9m
IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+CgpTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9w
aHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgfCA1NCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jIGIvZHJpdmVycy9w
aHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKaW5kZXggNzA0MTNmY2E1Nzc2Li41ZjRl
Y2YzNzEwMzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9y
cmVudC5jCisrKyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCkBA
IC0zMDA2LDYgKzMwMDYsNTkgQEAgc3RhdGljIHZvaWQgY2Ruc190b3JyZW50X3BoeV9yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAljZG5zX3RvcnJlbnRfY2xrX2NsZWFudXAo
Y2Ruc19waHkpOwogfQogCitzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9waHlfc3VzcGVuZF9ub2ly
cShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IGNkbnNfdG9ycmVudF9waHkgKmNkbnNf
cGh5ID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJaW50IGk7CisKKwlyZXNldF9jb250cm9sX2Fz
c2VydChjZG5zX3BoeS0+cGh5X3JzdCk7CisJcmVzZXRfY29udHJvbF9hc3NlcnQoY2Ruc19waHkt
PmFwYl9yc3QpOworCWZvciAoaSA9IDA7IGkgPCBjZG5zX3BoeS0+bnN1Ym5vZGVzOyBpKyspCisJ
CXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5waHlzW2ldLmxua19yc3QpOworCisJaWYg
KCFjZG5zX3BoeS0+YWxyZWFkeV9jb25maWd1cmVkKQorCQljbGtfZGlzYWJsZV91bnByZXBhcmUo
Y2Ruc19waHktPmNsayk7CisJZWxzZQorCQljZG5zX3BoeS0+YWxyZWFkeV9jb25maWd1cmVkID0g
MDsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9waHlfcmVzdW1l
X25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAq
Y2Ruc19waHkgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlpbnQgbm9kZSA9IGNkbnNfcGh5LT5u
c3Vibm9kZXM7CisJaW50IHJldCwgaTsKKworCXJldCA9IGNkbnNfdG9ycmVudF9jbGsoY2Ruc19w
aHkpOworCWlmIChyZXQpCisJCWdvdG8gY2xrX2NsZWFudXA7CisKKwkvKiBFbmFibGUgQVBCICov
CisJcmVzZXRfY29udHJvbF9kZWFzc2VydChjZG5zX3BoeS0+YXBiX3JzdCk7CisKKwlpZiAoY2Ru
c19waHktPm5zdWJub2RlcyA+IDEpIHsKKwkJcmV0ID0gY2Ruc190b3JyZW50X3BoeV9jb25maWd1
cmVfbXVsdGlsaW5rKGNkbnNfcGh5KTsKKwkJaWYgKHJldCkKKwkJCWdvdG8gcHV0X2xua19yc3Q7
CisJfQorCisJcmV0dXJuIDA7CisKK3B1dF9sbmtfcnN0OgorCWZvciAoaSA9IDA7IGkgPCBub2Rl
OyBpKyspCisJCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5waHlzW2ldLmxua19yc3Qp
OworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5hcGJfcnN0KTsKKwljbGtfZGlzYWJs
ZV91bnByZXBhcmUoY2Ruc19waHktPmNsayk7CitjbGtfY2xlYW51cDoKKwljZG5zX3RvcnJlbnRf
Y2xrX2NsZWFudXAoY2Ruc19waHkpOworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBERUZJTkVf
Tk9JUlFfREVWX1BNX09QUyhjZG5zX3RvcnJlbnRfcGh5X3BtX29wcywKKwkJCSAgICAgICBjZG5z
X3RvcnJlbnRfcGh5X3N1c3BlbmRfbm9pcnEsCisJCQkgICAgICAgY2Ruc190b3JyZW50X3BoeV9y
ZXN1bWVfbm9pcnEpOworCiAvKiBVU0IgYW5kIERQIGxpbmsgY29uZmlndXJhdGlvbiAqLwogc3Rh
dGljIHN0cnVjdCBjZG5zX3JlZ19wYWlycyB1c2JfZHBfbGlua19jbW5fcmVnc1tdID0gewogCXsw
eDAwMDIsIFBIWV9QTExfQ0ZHfSwKQEAgLTQ1NzcsNiArNDYzMCw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIGNkbnNfdG9ycmVudF9waHlfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7
CiAJCS5uYW1lCT0gImNkbnMtdG9ycmVudC1waHkiLAogCQkub2ZfbWF0Y2hfdGFibGUJPSBjZG5z
X3RvcnJlbnRfcGh5X29mX21hdGNoLAorCQkucG0JPSBwbV9zbGVlcF9wdHIoJmNkbnNfdG9ycmVu
dF9waHlfcG1fb3BzKSwKIAl9CiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihjZG5zX3RvcnJl
bnRfcGh5X2RyaXZlcik7CgotLSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
