Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C87C47DA9
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 22:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HiC+lE/MDmyNTpC13vGpHX9XinlfNqhSlYAWfCRL/UQ=; b=40x26JtlWMtQgw
	HsWGII4Ma3ELtiLmV9SW2ibhKZCRBti/Vw3KD6vfsBg/anGz2IPzgdr8MGBDb3Sqk/NfXMe05Q73E
	+D5JqqmZjwD4O8HTGUpDWDWsrFrBubvHpPAGRqa7PR7iZDojUTtTTxQ9LdURKGtQCtBdvpHzmxbdS
	0JgX8RYiN3zU/Swrbz3dknouB1YaV6Mtk8Mac121++zTF1b1pPDxqoHULmpXCtWsMsEJqGKdzSoXf
	35n3KHkoedhVVWAyDsbpvGPy3ZdENprG7NWnHOIqqIAf60qqFz3G9vbUPwwVyKs8Zw/HlF/QmsVs6
	kjTaPCWTMDtVIhDFvYIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUa3H-0000000ET8q-25HP;
	Mon, 29 Jan 2024 22:24:27 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUa3E-0000000ET7y-1Jxf;
	Mon, 29 Jan 2024 22:24:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3EC50CE0159;
	Mon, 29 Jan 2024 22:24:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37A73C433C7;
	Mon, 29 Jan 2024 22:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706567059;
	bh=ybFG/1Z4KxjabyhfsG3KnCV0yC0WVemE8bZH31BWBWs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Ck2k0fZwm/Pk8pIi0KJeREyhovqDDsGwMIZgTbTDEMIvOq+jcsS6gwzg6tSqm2yg/
	 Un7ZiJ28Dy5HREDsy3riYcb7eyEhabvcj1iKQ4sPAxSVHGGGB0HE/fsf2aBy4FAhMQ
	 pEC7ux/ujiSzz8Y7i5g4gIQxwMxX5NHtu9xqWz+Qb4x2l05G7BsmL3oMOh4m6siavA
	 TCiOXzOQdnUGZzjSpIyAukY0UNO5mkt2X8Sy5TzavFpMOQQLgruDl//y/D89GDN+T+
	 JkRoApJbNDyjseUhath0mAq9O1iHmGXNMri1QlN1mzR6hlIcdcMBI3yBc8XFxF9QZ+
	 VFCMG08qKy0mw==
Date: Mon, 29 Jan 2024 16:24:17 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v2 13/15] PCI: cadence: add resume support to
 cdns_pcie_host_setup()
Message-ID: <20240129222417.GA477936@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240129221647.GA477676@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_142424_551822_7244DE0C 
X-CRM114-Status: GOOD (  17.33  )
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

T24gTW9uLCBKYW4gMjksIDIwMjQgYXQgMDQ6MTY6NDlQTSAtMDYwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBGcmksIEphbiAyNiwgMjAyNCBhdCAwMzo0MzozOVBNIC0wNjAwLCBCam9ybiBI
ZWxnYWFzIHdyb3RlOgo+ID4gT24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMDM6MzY6NTVQTSArMDEw
MCwgVGhvbWFzIFJpY2hhcmQgd3JvdGU6Cj4gPiA+IEZyb206IFRow6lvIExlYnJ1biA8dGhlby5s
ZWJydW5AYm9vdGxpbi5jb20+Cj4gPiA+IAo+ID4gPiBUaGF0IGZ1bmN0aW9uIG1peGVzIHByb2Jl
IHN0cnVjdHVyZSBpbml0IGFuZCBoYXJkd2FyZSBjb25maWcuCj4gPiA+IFRoZSB3aG9sZSBoYXJk
d2FyZSBjb25maWcgcGFydCBtdXN0IGJlIGRvbmUgYXQgcmVzdW1lIGFmdGVyIGEgc3VzcGVuZCB0
bwo+ID4gPiByYW0uCj4gPiA+IFdlIHRoZXJlZm9yZSBwYXNzIGl0IGEgYm9vbGVhbiBmbGFnIGRl
dGVybWluaW5nIGlmIHdlIGFyZSBhdCBwcm9iZSBvciBhdAo+ID4gPiByZXN1bWUuCj4gPiAuLi4K
Cj4gPiBJdCdkIGJlIHN1cGVyIG5pY2UgdG8gaGF2ZSB0aGVtIHRoZSBzYW1lLiAgUGFzc2luZyBp
biBhICJwcm9iZSIgZmxhZwo+ID4gd29ya3MgYnV0IHNlZW1zIGEgbGl0dGxlIGhhcmRlciB0byBy
ZWFkIGluIGNkbnNfcGNpZV9ob3N0X3NldHVwKCkgYW5kCj4gPiB5b3UgaGF2ZSB0byBrZWVwIHRy
YWNrIG9mIHdoYXQgaXQgbWVhbnMgaW4gdGhlIGNhbGxlcnMuCj4gCj4gTWF5YmUgYSBiZXR0ZXIg
d2F5IHRvIHNheSB0aGlzIGlzIHRoYXQgdGhpcyBwYXRjaCB1c2VzIHRoZSAicHJvYmUiCj4gZmxh
ZyB0byBzZWxlY3QgdGhlIGJlaGF2aW9yIG9mIGNkbnNfcGNpZV9ob3N0X3NldHVwKCksIGFuZCBJ
IHRoaW5rIGl0Cj4gd291bGQgYmUgbmljZXIgdG8gc3BsaXQgdGhvc2UgdHdvIGJlaGF2aW9ycyBp
bnRvIHNlcGFyYXRlIGZ1bmN0aW9ucy4KCk9vcHMsIHNvcnJ5LCBBbmR5LCBJIHdyb3RlIHRoaXMg
YmVmb3JlIEkgc2F3IHlvdXIgc2ltaWxhciByZXNwb25zZQpmcm9tIGxhc3QgRnJpZGF5LiAgRGlk
bid0IG1lYW4gdG8gcmVwZWF0IHdoYXQgeW91IGFscmVhZHkgc2FpZCEKCkJqb3JuCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
