Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7557C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 15:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2h7D+DH04jpRq+D0XNm7EE1gux2CvpVtiT9qrt8Rhc=; b=dcsgeV9J2R5w7A
	Li8wlRgQ2xKcJpcecPqEVW4YO3zLyY93LgtP+0e2YCOZ/ELmURG01IWK0n6AsKnW5pe2qNgTWSupg
	5wzqw9l00GvccZKbqoKTDW771x6ZZU5ZEdDPP7rq15BKKaoMWLk3YAuUawDzPv6XlrAsumppl2WmK
	X4kuegeid5tz/PIROui2rS+BazE9H3PhPwxQUqDItT/0tmFDqhSTx5Ycd1xBhHjdjws3GKisHsMnZ
	WfFYJa/W6m0QK4ZlywUsyGbU3kvAx8ty1ePEqjxn4V1TbSnFOVklRB95uQeO4UdUUgXmJNJ1K027C
	5cc+34GUaO8luBkd0bcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTOSp-00000004aEB-1lMq;
	Fri, 26 Jan 2024 15:49:55 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNL8-00000004N42-07cb;
	Fri, 26 Jan 2024 14:37:55 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 466B04000F;
	Fri, 26 Jan 2024 14:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279872;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I18NFvlzsoQfZSmja7rXdApCroRS70XYkOT3y7UrK2g=;
	b=fumspxXRNw5UiOEesNyasc94ujx9HeTv582Up4GE0IaxaMpACWSc19XX5ZdiGHjcP2H5Cy
	foG4E5lxEtWWThdX+GRtdP2ppslw2kiq5USgOYsDkwvI9D/yQVdURPKIBjKtBoRn8kRSzM
	qd+FZ0ZJfKxIGSn9ziVAPpNEp8aCgkND7XQ1tlUdLFz+kb7b+CI2szTvaf8bkshv1Gx0Js
	5UMY6+3ARpLmSGbzwOlqLZfz6tkvjZkcq2FW6rycjJSzffzsw8vQd3xumCNWCzSpQ5cLQQ
	feZjVdsEItXk5zxcz5wk+R/ZcGQs7JLBDLCXqc4Oc9Vg8bDFrhe3XB3qMirEjQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Fri, 26 Jan 2024 15:36:49 +0100
Subject: [PATCH v2 07/15] phy: ti: phy-j721e-wiz: add resume support
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v2-7-8e4f7d228ec2@bootlin.com>
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
X-CRM114-CacheID: sfid-20240126_063754_363512_9FE0B5A9 
X-CRM114-Status: GOOD (  13.83  )
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
ZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgfCAzNSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDM1IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMg
Yi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKaW5kZXggMDlmN2VkZjE2NTYyLi4xNjNh
YzNlOTVkZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYworKysg
Yi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKQEAgLTE2NjYsMTIgKzE2NjYsNDcgQEAg
c3RhdGljIHZvaWQgd2l6X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXBt
X3J1bnRpbWVfZGlzYWJsZShkZXYpOwogfQogCitzdGF0aWMgaW50IHdpel9yZXN1bWVfbm9pcnEo
c3RydWN0IGRldmljZSAqZGV2KQoreworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGRldi0+
b2Zfbm9kZTsKKwlzdHJ1Y3Qgd2l6ICp3aXogPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlpbnQg
cmV0OworCisJLyogRW5hYmxlIHN1cHBsZW1lbnRhbCBDb250cm9sIG92ZXJyaWRlIGlmIGF2YWls
YWJsZSAqLworCWlmICh3aXotPnN1cF9sZWdhY3lfY2xrX292ZXJyaWRlKQorCQlyZWdtYXBfZmll
bGRfd3JpdGUod2l6LT5zdXBfbGVnYWN5X2Nsa19vdmVycmlkZSwgMSk7CisKKwlyZXQgPSB3aXpf
Y2xvY2tfaW5pdCh3aXosIG5vZGUsIGZhbHNlKTsKKwlpZiAocmV0IDwgMCkgeworCQlkZXZfd2Fy
bihkZXYsICJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBjbG9ja3NcbiIpOworCQlnb3RvIGVycl9nZXRf
c3luYzsKKwl9CisKKwlyZXQgPSB3aXpfaW5pdCh3aXopOworCWlmIChyZXQpIHsKKwkJZGV2X2Vy
cihkZXYsICJXSVogaW5pdGlhbGl6YXRpb24gZmFpbGVkXG4iKTsKKwkJZ290byBlcnJfd2l6X2lu
aXQ7CisJfQorCisJcmV0dXJuIDA7CisKK2Vycl93aXpfaW5pdDoKKwl3aXpfY2xvY2tfY2xlYW51
cCh3aXosIG5vZGUpOworCitlcnJfZ2V0X3N5bmM6CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0
aWMgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMod2l6X3BtX29wcywgTlVMTCwgd2l6X3Jlc3VtZV9u
b2lycSk7CisKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHdpel9kcml2ZXIgPSB7CiAJ
LnByb2JlCQk9IHdpel9wcm9iZSwKIAkucmVtb3ZlX25ldwk9IHdpel9yZW1vdmUsCiAJLmRyaXZl
cgkJPSB7CiAJCS5uYW1lCT0gIndpeiIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IHdpel9pZF90YWJs
ZSwKKwkJLnBtCT0gcG1fc2xlZXBfcHRyKCZ3aXpfcG1fb3BzKSwKIAl9LAogfTsKIG1vZHVsZV9w
bGF0Zm9ybV9kcml2ZXIod2l6X2RyaXZlcik7CgotLSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
