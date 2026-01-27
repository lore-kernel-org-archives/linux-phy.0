Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 772D2D2FEC0
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TI9uYgSEsHbtX4twncf6LI8RfNMzAtcvRQ5nMm6oZc4=; b=LG9P0inrfXicFf
	ZL+7xy7rRiCX+nOFKo1MZWLQsxU5FtXZPwax6c3fBPmH+Y/oyXnfUYYEMLrbpCIT36q+c8hQ/3mAj
	l8RGLhRE3UbZ9D/IzdtJIJ1P6T9hYQuhlWjpvNFDRu2TnHNU2s/PKUT5xyCpqUdY6UrWGzE32mtk+
	AyF50LKTsNAQnpVeioPhvKODOCcX8TWmtO/NEzsIvm9bw2jHwclVKneyNkUrIJQopgefn0gjA96W7
	iAt6knI0TiBGBHP3blOT9CADbbsbdprn1R6FQXfZYZGoRdeVDp2WXUsZW9ZsqEHsvPP0tWGZVV8Md
	afm0ABMVypTOCk/wwBJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZd-0000000Ei4m-0596;
	Tue, 27 Jan 2026 17:09:53 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZZ-0000000Ei1O-2OE1
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 17:09:51 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4D5AD4E422D4;
	Tue, 27 Jan 2026 17:09:47 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2261A606F5;
	Tue, 27 Jan 2026 17:09:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 787F6119A8697;
	Tue, 27 Jan 2026 18:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769533786; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=k5FHfCu3lXplllIOLz1R5tej0eu2UNbtzmdh0flsAZE=;
	b=py0WR0nWX2GnUu4N/GqxjYjxYBGGu/OJjmF9tUKH94Iw5meXdeI8VWP5N++WHvI153oQ/8
	aD0fKbFK0abnAhvujcanARVeeXFxf8faQeKRyYzzlH/WeSx6B68PSx7LSTwVt51kZaXIfG
	MW+N4e5UtGHxbACNdMKwD5rzPpEowBcXc6leHZeSIp6D7ETVvrs6u3uQfM3OivaVU5fmwJ
	stQheBdz8IlnreFCf8PP8KDNN+yKo6qPIPha0TNrn+N72mtsYpw51lXH2lAAOjxVk+EP0t
	o37ZIBuV0ckXkrVnPN92igmPc8qOpaoMBM5xaElTMTs3M4312/j5b8/jkH/9Qw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 27 Jan 2026 18:09:33 +0100
Subject: [PATCH v6 5/8] clk: eyeq: add EyeQ5 children auxiliary device for
 generic PHYs
MIME-Version: 1.0
Message-Id: <20260127-macb-phy-v6-5-cdd840588188@bootlin.com>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
In-Reply-To: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_090949_747016_08A2D289 
X-CRM114-Status: GOOD (  10.86  )
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

R3JvdyBvdXIgY2xrLWV5ZXEgZmFtaWx5OyBpdCBrbm93cyBob3cgdG8gc3Bhd24gcmVzZXQgcHJv
dmlkZXIgYW5kIHBpbgpjb250cm9sbGVyIGNoaWxkcmVuLiBFeHBhbmQgd2l0aCBhIGdlbmVyaWMg
UEhZIGRyaXZlciBvbiBFeWVRNS4KClJldmlld2VkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNl
cmVzb2xpQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVi
cnVuQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvY2xrL2Nsay1leWVxLmMgfCAzICsrKwogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2Ns
ay1leWVxLmMgYi9kcml2ZXJzL2Nsay9jbGstZXllcS5jCmluZGV4IDY2NGNlN2Q3ODY4ZC4uYTlk
ZTU3MzE1ZTQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9jbGstZXllcS5jCisrKyBiL2RyaXZl
cnMvY2xrL2Nsay1leWVxLmMKQEAgLTEwOSw2ICsxMDksNyBAQCBzdHJ1Y3QgZXFjX21hdGNoX2Rh
dGEgewogCiAJY29uc3QgY2hhcgkJKnJlc2V0X2F1eGRldl9uYW1lOwogCWNvbnN0IGNoYXIJCSpw
aW5jdHJsX2F1eGRldl9uYW1lOworCWNvbnN0IGNoYXIJCSpldGhfcGh5X2F1eGRldl9uYW1lOwog
CiAJdW5zaWduZWQgaW50CQllYXJseV9jbGtfY291bnQ7CiB9OwpAQCAtMzYxLDYgKzM2Miw3IEBA
IHN0YXRpYyBpbnQgZXFjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJLyog
SW5pdCBvcHRpb25hbCBhdXhpbGlhcnkgZGV2aWNlcy4gKi8KIAllcWNfYXV4ZGV2X2NyZWF0ZV9v
cHRpb25hbChkZXYsIGJhc2UsIGRhdGEtPnJlc2V0X2F1eGRldl9uYW1lKTsKIAllcWNfYXV4ZGV2
X2NyZWF0ZV9vcHRpb25hbChkZXYsIGJhc2UsIGRhdGEtPnBpbmN0cmxfYXV4ZGV2X25hbWUpOwor
CWVxY19hdXhkZXZfY3JlYXRlX29wdGlvbmFsKGRldiwgYmFzZSwgZGF0YS0+ZXRoX3BoeV9hdXhk
ZXZfbmFtZSk7CiAKIAlpZiAoZGF0YS0+cGxsX2NvdW50ICsgZGF0YS0+ZGl2X2NvdW50ICsgZGF0
YS0+Zml4ZWRfZmFjdG9yX2NvdW50ID09IDApCiAJCXJldHVybiAwOyAvKiBaZXJvIGNsb2Nrcywg
d2UgYXJlIGRvbmUuICovCkBAIC01MjEsNiArNTIzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBl
cWNfbWF0Y2hfZGF0YSBlcWNfZXllcTVfbWF0Y2hfZGF0YSA9IHsKIAogCS5yZXNldF9hdXhkZXZf
bmFtZSA9ICJyZXNldCIsCiAJLnBpbmN0cmxfYXV4ZGV2X25hbWUgPSAicGluY3RybCIsCisJLmV0
aF9waHlfYXV4ZGV2X25hbWUgPSAicGh5IiwKIAogCS5lYXJseV9jbGtfY291bnQgPSBBUlJBWV9T
SVpFKGVxY19leWVxNV9lYXJseV9wbGxzKSArCiAJCQkgICBBUlJBWV9TSVpFKGVxY19leWVxNV9l
YXJseV9maXhlZF9mYWN0b3JzKSwKCi0tIAoyLjUyLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
