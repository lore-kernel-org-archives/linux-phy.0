Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A55C47DA2
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZtBY/+D88FcRZujX74sP7+cZcd5JhiU643vVDfpDvPY=; b=BmfnVDgtaaF1iH
	LaV54cu5sIsoj3rbh6fiD1TTMAKRbgBe4dbiUgM7JGh5WnZIHDnPzLvhliEiHzZs5zo5u3ZVBVqxX
	Ye5CDjj4qek9YaGPsGD9tXZtDjyOR3wuaiu5WAMnx5VfhDO9gzZCdh48I1Jk5rxP0DIdskP37gPEt
	+S6U6RSAQItxHOY4EzC5IavHnwS2byw1MO7R7UjysdBhyYW/xiJXJdoQrH9r/bo47NLbPxEtO4mLp
	Ran9bq04xCNfDSJrVmBoI069BFeA65aQ88D0k1gZyT1v7L7SEE48FprQY5gzpaXBQYzZdModogF6O
	K+Kirb3dS7wuJ7LS7WXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdg-009aki-0Q;
	Mon, 15 Jan 2024 16:16:40 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdN-009aUe-03;
	Mon, 15 Jan 2024 16:16:25 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C8333C000A;
	Mon, 15 Jan 2024 16:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335375;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FTQqCzxmqCmlYgHh3ktXPX0P1HCGFzF7LoD+ZqCYJUk=;
	b=RJ1p+lSeuPctrMJTsfUuaITNbe+buWSru/jnSfFXQoT8He0ouAn9HpqNISomUAfaiuYaDb
	sj6wgjZCcgcWoIQT/jPEDnQKPrJ/YEEMSRheHxrOvbq/NVyhWfRW2rJ8HZ5XwCY4m+6hx7
	gWbH9Os6b24MmF47qQhtyHcjU8F7uaGeeIcwbmb5LPRRuzAxUcwAJ6qNct71edKD8qCI8y
	FYnDk1JlLnJxaRym4sQEIcixdOi2mDDqSEs4t7GDk5AwYGZeSz8OvQoqIddG4V3frE/e1G
	TKEUv/CbSR+Xmmu8swfG7A3CjqR/lRNY+WvPkgL4C8PMHHYyG114pVWaPADOvQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Subject: [PATCH 00/14] Add suspend to ram support for PCIe on J7200
Date: Mon, 15 Jan 2024 17:14:41 +0100
Message-Id: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPJZpWUC/x2NQQrCQAwAv1JyNpCNylK/Ih6ya7QRXEsiIpT+3
 a3HYRhmgVA3DTgNC7h+LOzVOqTdAHWSdle0a2dg4gMlYnxkJsK5mmKwo9aSZMyj7o8ZelQkFIt
 Lq9OWPSXe6puYXW/2/Z/Ol3X9AbewuWd5AAAA
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
X-CRM114-CacheID: sfid-20240115_081621_349959_592D2168 
X-CRM114-Status: GOOD (  10.01  )
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
IEo3MjAwCnBsYXRmb3JtLgoKSW4gUkMgbW9kZSwgdGhlIHJlc2V0IHBpbiBmb3IgZW5kcG9pbnRz
IGlzIG1hbmFnZWQgYnkgYSBncGlvIGV4cGFuZGVyCm9uIGEgaTJjIGJ1cy4gVGhpcyBwaW4gc2hh
bGwgYmUgbWFuYWdlZCBpbiBzdXNwZW5kX25vaXJxIGFuZApyZXN1bWVfbm9pcnEuClRoZSBzdXNw
ZW5kL3Jlc3VtZSBoYXMgYmVlbiBtb3ZlZCB0byBzdXNwZW5kX25vaXJxL3Jlc3VtZV9ub2lycSBm
b3IKcGNhOTUzeCAoZXhwYW5kZXIpIGFuZCBwaW5jdHJsLXNpbmdsZS4KClRvIGRvIGkyYyBhY2Nl
c3NlcyBkdXJpbmcgc3VzcGVuZF9ub2lycS9yZXN1bWVfbm9pcnEsIHdlIG5lZWQgdG8gZm9yY2UK
dGhlIHdha2V1cCBvZiB0aGUgaTJjIGNvbnRyb2xsZXIgKHdoaWNoIGlzIGF1dG9zdXNwZW5kZWQp
IGR1cmluZwpzdXNwZW5kIGNhbGxiYWNrLiAKSXQncyB0aGUgb25seSB3YXkgdG8gd2FrZXVwIHRo
ZSBjb250cm9sbGVyIGlmIGl0J3MgYXV0b3N1c3BlbmRlZCwgYXMKcnVudGltZSBwbSBpcyBkaXNh
YmxlZCBpbiBzdXNwZW5kX25vaXJxIGFuZCByZXN1bWVfbm9pcnEuCgpTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0tLQpUaG9tYXMgUmlj
aGFyZCAoMTApOgogICAgICBncGlvOiBwY2E5NTN4OiBtb3ZlIHN1c3BlbmQvcmVzdW1lIHRvIHN1
c3BlbmRfbm9pcnEvcmVzdW1lX25vaXJxCiAgICAgIHBpbmN0cmw6IHBpbmN0cmwtc2luZ2xlOiBt
b3ZlIHN1c3BlbmQvcmVzdW1lIHRvIHN1c3BlbmRfbm9pcnEvcmVzdW1lX25vaXJxCiAgICAgIGky
Yzogb21hcDogd2FrZXVwIHRoZSBjb250cm9sbGVyIGR1cmluZyBzdXNwZW5kIGNhbGxiYWNrCiAg
ICAgIHBoeTogdGk6IHBoeS1qNzIxZS13aXo6IG1ha2Ugd2l6X2Nsb2NrX2luaXQgY2FsbGFibGUg
bXVsdGlwbGUgdGltZXMKICAgICAgcGh5OiB0aTogcGh5LWo3MjFlLXdpejogYWRkIHJlc3VtZSBz
dXBwb3J0CiAgICAgIHBoeTogY2FkZW5jZS10b3JyZW50OiBleHRyYWN0IGNhbGxzIHRvIGNsa19n
ZXQgZnJvbSBjZG5zX3RvcnJlbnRfY2xrCiAgICAgIHBoeTogY2FkZW5jZS10b3JyZW50OiByZWdp
c3RlciByZXNldHMgZXZlbiBpZiB0aGUgcGh5IGlzIGFscmVhZHkgY29uZmlndXJlZAogICAgICBw
aHk6IGNhZGVuY2UtdG9ycmVudDogbW92ZSBhbHJlYWR5X2NvbmZpZ3VyZWQgdG8gc3RydWN0IGNk
bnNfdG9ycmVudF9waHkKICAgICAgcGh5OiBjYWRlbmNlLXRvcnJlbnQ6IHJlbW92ZSBub29wX29w
cyBwaHkgb3BlcmF0aW9ucwogICAgICBwaHk6IGNhZGVuY2UtdG9ycmVudDogYWRkIHN1c3BlbmQg
YW5kIHJlc3VtZSBzdXBwb3J0CgpUaMOpbyBMZWJydW4gKDQpOgogICAgICBtdXg6IG1taW86IEFk
ZCByZXN1bWUgc3VwcG9ydAogICAgICBQQ0k6IGNhZGVuY2U6IGFkZCByZXN1bWUgc3VwcG9ydCB0
byBjZG5zX3BjaWVfaG9zdF9zZXR1cCgpCiAgICAgIFBDSTogajcyMWU6IG1vdmUgcmVzZXQgR1BJ
TyB0byBkZXZpY2Ugc3RydWN0CiAgICAgIFBDSTogajcyMWU6IGFkZCBzdXNwZW5kIGFuZCByZXN1
bWUgc3VwcG9ydAoKIGRyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3guYyAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLW9tYXAuYyAgICAgICAgICAg
ICAgICAgICAgICB8ICAxNSArKysKIGRyaXZlcnMvbXV4L21taW8uYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDM0ICsrKysrKwogZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRl
bmNlL3BjaS1qNzIxZS5jICAgICAgICAgfCAgODYgKysrKysrKysrKysrLS0KIGRyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UtaG9zdC5jIHwgIDQ5ICsrKystLS0tCiBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLXBsYXQuYyB8ICAgMiAr
LQogZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaWUtY2FkZW5jZS5oICAgICAgfCAg
IDcgKy0KIGRyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jICAgICAgICAg
IHwgMTI1ICsrKysrKysrKysrKysrKy0tLS0tLQogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdp
ei5jICAgICAgICAgICAgICAgICAgICAgfCAgOTkgKysrKysrKysrKysrLS0tLQogZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtc2luZ2xlLmMgICAgICAgICAgICAgICAgICAgfCAgMTkgKystLQogMTAg
ZmlsZXMgY2hhbmdlZCwgMzQyIGluc2VydGlvbnMoKyksIDEwMiBkZWxldGlvbnMoLSkKLS0tCmJh
c2UtY29tbWl0OiAwMGZmMGY5Y2U0MGRiOGU2NGZlMTZjNDI0YTk2NWZkN2FiNzY5YzQyCmNoYW5n
ZS1pZDogMjAyNDAxMDItajcyMDAtcGNpZS1zMnItZWNiMWE5NzllMzU3CgpCZXN0IHJlZ2FyZHMs
Ci0tIApUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+CgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
