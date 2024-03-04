Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8DBFC5478C
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3B9rPfeMQK857aG8lz5yj7kGVUxmkp1tpGOkBxT5PP0=; b=AElPJjqPP4lUrs
	AVfme6kadn6VUBlRyJzwnMBs4gpkDkTYQ/5Czjdaedf8fnF3h4owae+Yabn0RmvRsPcrAepahL3gl
	lWpUAAWszlcxRlA8YMXd76lQ36TmREepbDU3SdrZ9Z0tuPDJav5F+ptc/M5n8xM/HfC1J+7PgvsHr
	6/Y7l7snEvDD1MwYzGAtfAMMISvgnoXEA1t3FpFX5csI5e9GOWLcSl33mNuxq1VL2tAn+VwRPhTn9
	E/KlbcK0Rdf/uV6e2SzktATtpt1zGx5qF5rTb4sO4p1wsjY9Wl7w1mlKHc2+TMZxe6KfBRU6UuFRj
	//I1C5sn4ndumQaWkm6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBWD-00000009tak-1LJq;
	Mon, 04 Mar 2024 16:50:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMs-00000009cmE-3VKD;
	Mon, 04 Mar 2024 15:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=UcbAmu4dmEBPFqimSZPh3yEPPq1ape6wFi34dJc4ne4=; b=O8r1ttlEe623yyHHLYQS0U2Cbi
	I3CcSOrQrfgFkBBidl+h2yCzIZzT/LAN3RwKe/P/GjPdH9A61LAFZ/3n4kFxayOnd4vOOypvwa+i9
	AlsrEJLtR00S4CQTeu2Yx4M4f3jtJQZWb94fykrOhPoAc4e5DvgxW1HmAXWoAWZQaUPffTbZECm3N
	BxzMJP6yP1GUVH7ytRK8GhBSwqvdl8EKFTb+secmihZFd5dcEUPl8j/hpVyzFPrDVkDY3PxQUCXso
	B805W0CdpVquBiVpirpSBp12/nbYKvsY9DQo4eo32fxdWvZEw4UYNsaVqBJCSvGSvRT1iaNoMITTa
	jHDEdhtQ==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMp-00000004wd3-0xnN;
	Mon, 04 Mar 2024 15:36:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 865931BF216;
	Mon,  4 Mar 2024 15:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566593;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UcbAmu4dmEBPFqimSZPh3yEPPq1ape6wFi34dJc4ne4=;
	b=OYOTK8boA3wSOeBGMzlrYVBUR9aW9TAdg4WSIxbjoRSEvtuaNf3OVnimXwUEVR2m+g+60V
	g48l7l/BeSQJd00hnTI9Bs9ZDP/SG2wWhAoeAxaXAi59KsD12vbclhui7/fCyrRa6Y0rSa
	u6obxZ0hZdmtn3WwNDZf1yVpNeiVfb7cZgt3RdiDcecGrVHuOZU0sFhVqaLEhQjQh5btSb
	om/h4Qf7eG/OWOyb/yaJ7x9bnkMQU7gDfBtHJ0y9+t4v1vnJ+eSPUQzjF0wM7dYcotnzF+
	+iawwIgWi9DzikK9K8x1kcZkn9Q1DTGLrDS0ozAV1x71MwuDcquxfbIq9Dy6lA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:56 +0100
Subject: [PATCH v4 13/18] phy: cadence-torrent: add suspend and resume
 support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-13-6f1f53390c85@bootlin.com>
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
X-CRM114-CacheID: sfid-20240304_153639_349409_52C7753F 
X-CRM114-Status: GOOD (  14.63  )
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
bGFnIGlzIGNsZWFyZWQgZHVyaW5nIHRoZSBzdXNwZW5kIHN0YWdlIHRvIGZvcmNlCnRoZSBQSFkg
aW5pdGlhbGl6YXRpb24gZHVyaW5nIHRoZSByZXN1bWUgc3RhZ2UuCgpDby1kZXZlbG9wZWQtYnk6
IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFRo
w6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFRob21h
cyBSaWNoYXJkIDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9j
YWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyB8IDUzICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgYi9kcml2ZXJzL3BoeS9j
YWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwppbmRleCA1MmNhZGNhNGMwN2IuLmI0MjQ1YzA4
ODc2MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50
LmMKKysrIGIvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKQEAgLTMw
MDUsNiArMzAwNSw1OCBAQCBzdGF0aWMgdm9pZCBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWNkbnNfdG9ycmVudF9jbGtfY2xlYW51cChjZG5z
X3BoeSk7CiB9CiAKK3N0YXRpYyBpbnQgY2Ruc190b3JyZW50X3BoeV9zdXNwZW5kX25vaXJxKHN0
cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkg
PSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlpbnQgaTsKKworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0
KGNkbnNfcGh5LT5waHlfcnN0KTsKKwlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+YXBi
X3JzdCk7CisJZm9yIChpID0gMDsgaSA8IGNkbnNfcGh5LT5uc3Vibm9kZXM7IGkrKykKKwkJcmVz
ZXRfY29udHJvbF9hc3NlcnQoY2Ruc19waHktPnBoeXNbaV0ubG5rX3JzdCk7CisKKwlpZiAoY2Ru
c19waHktPmFscmVhZHlfY29uZmlndXJlZCkKKwkJY2Ruc19waHktPmFscmVhZHlfY29uZmlndXJl
ZCA9IDA7CisJZWxzZQorCQljbGtfZGlzYWJsZV91bnByZXBhcmUoY2Ruc19waHktPmNsayk7CisK
KwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3Jlc3VtZV9ub2ly
cShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IGNkbnNfdG9ycmVudF9waHkgKmNkbnNf
cGh5ID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJaW50IG5vZGUgPSBjZG5zX3BoeS0+bnN1Ym5v
ZGVzOworCWludCByZXQsIGk7CisKKwlyZXQgPSBjZG5zX3RvcnJlbnRfY2xrKGNkbnNfcGh5KTsK
KwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJLyogRW5hYmxlIEFQQiAqLworCXJlc2V0X2Nv
bnRyb2xfZGVhc3NlcnQoY2Ruc19waHktPmFwYl9yc3QpOworCisJaWYgKGNkbnNfcGh5LT5uc3Vi
bm9kZXMgPiAxKSB7CisJCXJldCA9IGNkbnNfdG9ycmVudF9waHlfY29uZmlndXJlX211bHRpbGlu
ayhjZG5zX3BoeSk7CisJCWlmIChyZXQpCisJCQlnb3RvIHB1dF9sbmtfcnN0OworCX0KKworCXJl
dHVybiAwOworCitwdXRfbG5rX3JzdDoKKwlmb3IgKGkgPSAwOyBpIDwgbm9kZTsgaSsrKQorCQly
ZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5sbmtfcnN0KTsKKwlyZXNldF9j
b250cm9sX2Fzc2VydChjZG5zX3BoeS0+YXBiX3JzdCk7CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KGNkbnNfcGh5LT5jbGspOworCisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIERFRklORV9OT0lS
UV9ERVZfUE1fT1BTKGNkbnNfdG9ycmVudF9waHlfcG1fb3BzLAorCQkJICAgICAgIGNkbnNfdG9y
cmVudF9waHlfc3VzcGVuZF9ub2lycSwKKwkJCSAgICAgICBjZG5zX3RvcnJlbnRfcGh5X3Jlc3Vt
ZV9ub2lycSk7CisKIC8qIFVTQiBhbmQgRFAgbGluayBjb25maWd1cmF0aW9uICovCiBzdGF0aWMg
c3RydWN0IGNkbnNfcmVnX3BhaXJzIHVzYl9kcF9saW5rX2Ntbl9yZWdzW10gPSB7CiAJezB4MDAw
MiwgUEhZX1BMTF9DRkd9LApAQCAtNDU3Niw2ICs0NjI4LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgY2Ruc190b3JyZW50X3BoeV9kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJ
Lm5hbWUJPSAiY2Rucy10b3JyZW50LXBoeSIsCiAJCS5vZl9tYXRjaF90YWJsZQk9IGNkbnNfdG9y
cmVudF9waHlfb2ZfbWF0Y2gsCisJCS5wbQk9IHBtX3NsZWVwX3B0cigmY2Ruc190b3JyZW50X3Bo
eV9wbV9vcHMpLAogCX0KIH07CiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGNkbnNfdG9ycmVudF9w
aHlfZHJpdmVyKTsKCi0tIAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
