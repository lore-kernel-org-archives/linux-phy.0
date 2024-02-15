Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6830CC4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 16:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POyJ8CMWyWrvCkv/W9QbVQuOV2J9U2hbOcKwDwikbYE=; b=dP21G6pXLRPpy2
	8S9Bg9RPDnjIAG6Vv+xG1E2/7P9l0sbUUUm2wsL1qlb2xtP1+SZbYKE+Ceux502qM+wmF7O8rubBf
	Tme6vsZyqYcZ6ohOwSsxScezc7pAo3XPMYNSnNc09MSImuJfuu0wcqrX/rMh4826wRGMoJfsSIMHx
	7mg0lXOf1qyFxtiCl4+qsigdCrjjJR3RT6PP8BYuTN9yWXoYdfOz6LFc3Xtvn7uI2jLMvpINxSId3
	UEQv2tRQmZ9JsgNBV6h1WJ/v3BPu9t+odPHd7wnMn1MTtEevfQbrq6yBKuusIKyQguQPngNgLy1am
	vo4naG3I3FuA8saH6CwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raedb-0000000GyvW-0DuA;
	Thu, 15 Feb 2024 16:31:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radV6-0000000Ggsm-0YDv;
	Thu, 15 Feb 2024 15:18:13 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9FE6E24000D;
	Thu, 15 Feb 2024 15:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708010290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EQj8fkDqiCncYkbq3rqvKqeGNPNTXUz4lWxpr6Y6suo=;
	b=UDiws/SjWesPdNffMn2bHZI5uY7/Dr/iLgrz0mbUng6Y/CkR88vM9/q3/ROqauOm7USTx1
	8LvrR//w1kOPNTrulzu2HdHY+xUo+/FfplD/jj3YHb+N4AnwFHaygD68bejfY9RaToGIpi
	W6oLksh/lSnoIk/zrtcFbyYgturyDn0UZUoAy1NkIfgBIzfVlCjqkllOJLJeHELNC62F6w
	mUBrAB0bbyGxX36m/Km7D5yNI7BlkZiytRgVIz6RaAFY2hW9B2qCMddQNj17N10pscxamt
	X/yyuSpNXboa++2kJtw/gGTCpInol8oV82XaMCgz13kKsbXyGOO6J6KLmTbDEA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Thu, 15 Feb 2024 16:17:55 +0100
Subject: [PATCH v3 10/18] phy: cadence-torrent: extract calls to clk_get
 from cdns_torrent_clk
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v3-10-5c2e4a3fac1f@bootlin.com>
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
X-CRM114-CacheID: sfid-20240215_071812_502748_CD1896E7 
X-CRM114-Status: GOOD (  11.78  )
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
Y2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgfCAyMSArKysrKysrKysrKysrKy0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jIGIvZHJpdmVy
cy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKaW5kZXggYTc1Yzk2Mzg1YzU3Li44
MDNhNzZhY2YyZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Ut
dG9ycmVudC5jCisrKyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5j
CkBAIC0yNjgxLDE4ICsyNjgxLDIxIEBAIHN0YXRpYyBpbnQgY2Ruc190b3JyZW50X3Jlc2V0KHN0
cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpjZG5zX3BoeSkKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGlj
IGludCBjZG5zX3RvcnJlbnRfb2ZfZ2V0X2NsayhzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ru
c19waHkpCit7CisJY2Ruc19waHktPmNsayA9IGRldm1fY2xrX2dldChjZG5zX3BoeS0+ZGV2LCAi
cmVmY2xrIik7CisJaWYgKElTX0VSUihjZG5zX3BoeS0+Y2xrKSkKKwkJcmV0dXJuIGRldl9lcnJf
cHJvYmUoY2Ruc19waHktPmRldiwgUFRSX0VSUihjZG5zX3BoeS0+Y2xrKSwKKwkJCQkgICAgICJw
aHkgcmVmIGNsb2NrIG5vdCBmb3VuZFxuIik7CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIGlu
dCBjZG5zX3RvcnJlbnRfY2xrKHN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpjZG5zX3BoeSkKIHsK
LQlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBjZG5zX3BoeS0+ZGV2OwogCXVuc2lnbmVkIGxvbmcgcmVm
X2Nsa19yYXRlOwogCWludCByZXQ7CiAKLQljZG5zX3BoeS0+Y2xrID0gZGV2bV9jbGtfZ2V0KGRl
diwgInJlZmNsayIpOwotCWlmIChJU19FUlIoY2Ruc19waHktPmNsaykpIHsKLQkJZGV2X2Vycihk
ZXYsICJwaHkgcmVmIGNsb2NrIG5vdCBmb3VuZFxuIik7Ci0JCXJldHVybiBQVFJfRVJSKGNkbnNf
cGh5LT5jbGspOwotCX0KLQogCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShjZG5zX3BoeS0+Y2xr
KTsKIAlpZiAocmV0KSB7CiAJCWRldl9lcnIoY2Ruc19waHktPmRldiwgIkZhaWxlZCB0byBwcmVw
YXJlIHJlZiBjbG9ja1xuIik7CkBAIC0yNzc2LDYgKzI3NzksMTAgQEAgc3RhdGljIGludCBjZG5z
X3RvcnJlbnRfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJl
dCkKIAkJcmV0dXJuIHJldDsKIAorCXJldCA9IGNkbnNfdG9ycmVudF9vZl9nZXRfY2xrKGNkbnNf
cGh5KTsKKwlpZiAocmV0KQorCQlnb3RvIGNsa19jbGVhbnVwOworCiAJcmVnbWFwX2ZpZWxkX3Jl
YWQoY2Ruc19waHktPnBoeV9wbWFfY21uX2N0cmxfMSwgJmFscmVhZHlfY29uZmlndXJlZCk7CiAK
IAlpZiAoIWFscmVhZHlfY29uZmlndXJlZCkgewoKLS0gCjIuMzkuMgoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
