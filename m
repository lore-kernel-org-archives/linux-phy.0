Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A76C47DA9
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 22:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1scSdBpT1yVCS6EjYQCd0Le7aECm24WufmkwI0j+zE=; b=uZQEqtTBijKYrl
	KZymEBayubuM98pkyEJR1NYEtIDsK/A8CoR70WiFOLO2SZWly3oiXr3sBcqOetZoEgufCNO0nxZFR
	rh2qACFkL+C7MHJKe1W/y2tiM7qX6gGRzPlQmBAS6owGwifTY5njMnla/JIs1/WJ8wLaYIIk6g+Ww
	b3jj/Dp99YQFPFsnQajZLsiPzZLfzNXud5STUjVZSjdfy+Mp1E2eMm7QvjeQP0Zs/+dD+C+RXiYRT
	h6pIwkK5skOhQsRZZQgoUT0aLgwj7WO0j15eFvRFKOoig+z0QtMc7Naett3Vxo79PavjzA1U2iXzg
	GLI4LzEh2NuJnIXcRxDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaRX-0000000EWAu-0WM4;
	Mon, 29 Jan 2024 22:49:31 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaRT-0000000EW9u-3xkw;
	Mon, 29 Jan 2024 22:49:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CE2FACE13E7;
	Mon, 29 Jan 2024 22:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6089EC433C7;
	Mon, 29 Jan 2024 22:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706568564;
	bh=by+ve1UBbFb+J2zjnMunK9KbwOF5Bwt69isjqXT6wJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XrHpYcOKjqSNUCB68RIn9ULWsfa6YD7kKYl3fS+dxSpAxqzXWqgdjXRHMiVwxPKKe
	 Y6G0zrB0RcKBd8bDenDGthQJEYHGFrGIEjSb0zpYXgLepXPQ9b1An7et4kYnUj9Ebi
	 K+qxh0SX/D5+m8THertBdWrpRQFxLdXKZS2GbHgUnOX9dfb4UsAxTqcxdnS0vFVWA4
	 4pZ25SkIaMKP1VdVC+unr8VYkSYpM8n4v11YRXdjaio5sKcDoVWJF1lC5N0l26iesV
	 39QbcK6jjT4vVZlbDmAfutSFyjIUZ+m42GXOTUyWjdGmRgq+slDCdj8ZG2Z0kR9C7r
	 6RZ3dJdAYKzdg==
Date: Mon, 29 Jan 2024 23:49:19 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Thomas Richard <thomas.richard@bootlin.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH v2 02/15] pinctrl: pinctrl-single: move
 suspend()/resume() callbacks to noirq
Message-ID: <6hyubhrho6xbki6yxtmqedylc2gpeyj4yu5gtrjrq4nsthcr7g@elfukmqeve2a>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
 <CACRpkdYBnQ6xh2yNsnvquTOq5r7NeDhot6To9myfuNbonKcgzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYBnQ6xh2yNsnvquTOq5r7NeDhot6To9myfuNbonKcgzQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_144928_183674_06A47074 
X-CRM114-Status: GOOD (  14.77  )
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

SGkgTGludXMsCgpPbiBTYXQsIEphbiAyNywgMjAyNCBhdCAxMTozMToxMVBNICswMTAwLCBMaW51
cyBXYWxsZWlqIHdyb3RlOgo+IE9uIEZyaSwgSmFuIDI2LCAyMDI0IGF0IDM6MzfigK9QTSBUaG9t
YXMgUmljaGFyZAo+IDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBU
aGUgZ29hbCBpcyB0byBleHRlbmQgdGhlIGFjdGl2ZSBwZXJpb2Qgb2YgcGluY3RybC4KPiA+IFNv
bWUgZGV2aWNlcyBtYXkgbmVlZCBhY3RpdmUgcGluY3RybCBhZnRlciBzdXNwZW5kKCkgYW5kL29y
IGJlZm9yZQo+ID4gcmVzdW1lKCkuCj4gPiBTbyBtb3ZlIHN1c3BlbmQoKS9yZXN1bWUoKSB0byBz
dXNwZW5kX25vaXJxKCkvcmVzdW1lX25vaXJxKCkgaW4gb3JkZXIgdG8KPiA+IGhhdmUgYWN0aXZl
IHBpbmN0cmwgdW50aWwgc3VzcGVuZF9ub2lycSgpIChpbmNsdWRlZCksIGFuZCBmcm9tCj4gPiBy
ZXN1bWVfbm9pcnEoKSAoaW5jbHVkZWQpLgo+ID4KPiA+IFRoZSBkZXByZWNhdGVkIEFQSSBoYXMg
YmVlbiByZW1vdmVkIHRvIHVzZSB0aGUgbmV3IG9uZSAoZGV2X3BtX29wcyBzdHJ1Y3QpLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9tYXMucmljaGFyZEBib290bGlu
LmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5h
cm8ub3JnPgo+IAo+IERvIHlvdSB3YW50IHRvIG1lcmdlIHRoaXMgYXMgYSBzZXJpZXMgb3IgaXMg
dGhpcyBzb21ldGhpbmcgSQo+IHNob3VsZCBqdXN0IGFwcGx5PwoKdGhlcmUgaXMgc3RpbGwgYSBj
b21tZW50IGZyb20gbWUgcGVuZGluZy4KClRoYW5rcywKQW5kaQoKPiBZb3VycywKPiBMaW51cyBX
YWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
