Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A405EC4725D
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 15:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTzFQlLh8LAWb1ry6pgjwEukbhHwZMhH5mDyLkKNnb0=; b=lKPleMg+zbMeTU
	kplnokMDIckWM7Ud4GTbLFqpoIgwQyjekNHbAF26Gzm21Z6nsk/ekt9zHrIkVwwWqgspu5zgkZ7GA
	0BmXOpYrYejomvTjv/A24vXH7POZ5wZBVAFFawDME5mrrXAmxCUetnGqZpBIxYDPEJHCd2uwl7qy8
	Wv+c5SxK0dgdDrXomwNLf+PLvL546rP7t/tIprijqZwUIIYDCXKnziMobxxLm5HK+8+rEKypSuhJA
	VCfgbF14Guqm7aIYvoFo2VerpLyrMtssnvjpRNROJVm/KhVH/om3L1uo/WYqQOUPSJeSWpJvH9m+Y
	kVLCWX0PcXmm1cP0Vfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQr8K-0061wF-0V;
	Fri, 19 Jan 2024 15:50:16 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQr8F-0061v3-2p;
	Fri, 19 Jan 2024 15:50:14 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 26730C000A;
	Fri, 19 Jan 2024 15:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705679405;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=no9Zk1+Ofv930fy1IruQYBJcZcLId9qedsWBTajBqLk=;
	b=jAd3/erbItSU8bRgfAurVO1vRfyY/x0FFjkEhN5ogLafuPpdFJlYMmw2mvONe7FjotJExF
	BCJ0M7Lt4+ymTm4ZxxE8hUAKY/pe8tNemwOl1tSMTwHlHpwxf5NQblXa4VMrDmXoQsrNS5
	5b/Rmf+/gXOlw2geifYAL25tJpZnR5yejCKR8gMnrQ17x0KZP6d/kMzlnHMV5f8bI4EVi7
	dkvJwUcXwAyhIksBlz/wEdHtqMQyIg4YOvKycNYAi3OZvUi9otL4B/8Q0qUTWFa7aAlIJM
	jJIjiN22G+zWSX/1su7DBWwGIYuS9eT9gCUYSoahyvjaAQq5ux+PvpfWVOZocw==
Message-ID: <a4627e51-c851-4abf-a3b2-222b2b315d4e@bootlin.com>
Date: Fri, 19 Jan 2024 16:50:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to
 suspend_noirq/resume_noirq
Content-Language: en-US
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
 <CAHp75VezeBp3Umg4prvdS83WrHViyTs-hBV0SejVD2BBnGYEvg@mail.gmail.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CAHp75VezeBp3Umg4prvdS83WrHViyTs-hBV0SejVD2BBnGYEvg@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_075012_216522_7456C5D4 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

T24gMS8xNS8yNCAyMDo1NiwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIE1vbiwgSmFuIDE1
LCAyMDI0IGF0IDY6MTbigK9QTSBUaG9tYXMgUmljaGFyZAo+IDx0aG9tYXMucmljaGFyZEBib290
bGluLmNvbT4gd3JvdGU6Cj4+Cj4+IFNvbWUgSU9zIGNhbiBiZSBuZWVkZWQgZHVyaW5nIHN1c3Bl
bmRfbm9pcnEvcmVzdW1lX25vaXJxLgo+IAo+IC0+c3VzcGVuZF9ub2lycSgpIC8gLT5yZXN1bWVf
bm9pcnEoKQo+IAo+PiBTbyBtb3ZlIHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcyB0byBub2lycS4K
PiAKPiAuLi4KPiAKPj4gLXN0YXRpYyBERUZJTkVfU0lNUExFX0RFVl9QTV9PUFMocGNhOTUzeF9w
bV9vcHMsIHBjYTk1M3hfc3VzcGVuZCwgcGNhOTUzeF9yZXN1bWUpOwo+PiArc3RhdGljIGNvbnN0
IHN0cnVjdCBkZXZfcG1fb3BzIHBjYTk1M3hfcG1fb3BzID0gewo+PiArICAgICAgIFNFVF9OT0lS
UV9TWVNURU1fU0xFRVBfUE1fT1BTKHBjYTk1M3hfc3VzcGVuZF9ub2lycSwgcGNhOTUzeF9yZXN1
bWVfbm9pcnEpCj4+ICt9Owo+IAo+IFBsZWFzZSwgdXNlIGNvcnJlY3QgLyBtb2Rlcm4gbWFjcm8u
Cj4gCgpIZWxsbyBBbmR5LAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3cy4KCkkgYXBwbGllZCB5b3Vy
IGNvbW1lbnRzIGZvciB0aGUgbmV4dCBpdGVyYXRpb24uCgpSZWdhcmRzLAoKLS0gClRob21hcyBS
aWNoYXJkLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0
cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
