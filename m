Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDB34C47DDB
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 14:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVlaOn2ditWhSKtmen70gbrxRGje0+CODz8Bjg+G6Mc=; b=1t3HgQ8PBmedXZ
	+Aw+BrERqwdh0GAc8Cja/QScCEN2zI5hkhIfEDuKUD3gzxpvspQ80/YPbq3mpasmA7m1n/ywNxwGn
	B6e5cyXtyFgZdkV5hpAKtaPbiN1ORbY87LFdnIkQhoWvToNj7v/EpWetllKaoZ8rvDvyEd2WUeIZU
	Ejn7y6+XTz9tQSCfckOPJuhRv+slbJhTC8jFtN506CP3e636ascY3p5+eegYBD+0r6KyPo9VnImbc
	1kawlHnGD+TZ+z36bdPkaEtuPae0q5vdPJJZvepNSz4EUgzRnMZ2+nCrZeV8Epa6RH2zH4N4ek02d
	GlaDhcAOGAle+eicXEVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvN4-00CPoi-1B;
	Mon, 22 Jan 2024 14:33:54 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvN0-00CPmy-37;
	Mon, 22 Jan 2024 14:33:52 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B9AD3C0005;
	Mon, 22 Jan 2024 14:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705934029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ECi8ka7o1qBq74OdBGRcMDsclI+BCMKdvpZSkSVLU5c=;
	b=iyDQ3mV2HYp9n6jneaoazt/KuPqicWfJiZkwpHsB42dxKDV8a1uDS6ss0GeAMuass4XZhM
	RynadnWy/eWHcEfPdnp6xnFS/nRFlSVsPxhu3zGw5+7itca99ey3jHqb9PKY5tB0Sblduw
	BK4sHegl3lmj6Uz2+oX/9fpruduP/U35zav7+2dMH+/nGHfinVAYM06VL8fD/sMoz+qEWp
	K2waEve2OrLdorRlnfCMTPUgfIzWiR9Ou4I65R8Hr//9gwjVSeOh9JaAqgmfuxPnNBVgy0
	lUt+dPqyOEpAQUpnIYdZG1BWm9x1fP/pacpIWJbdT7Hiud0xlghzcBww476yAg==
Message-ID: <b59067f0-fdba-40d1-bb52-9f66fd833f40@bootlin.com>
Date: Mon, 22 Jan 2024 15:33:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] pinctrl: pinctrl-single: move suspend/resume to
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
 <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
 <CAHp75Verff06LE0QFaDRoun=ANpGfVU1tHknvvQZd_KyzLVP5Q@mail.gmail.com>
 <223422cc-2a1c-417b-8fa1-20d3b3eb41ef@bootlin.com>
 <CAHp75VcaABafPh7o1TjrHW2txXRRSxjT443XJe33gfS1YD4bhA@mail.gmail.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CAHp75VcaABafPh7o1TjrHW2txXRRSxjT443XJe33gfS1YD4bhA@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_063351_154867_061224F8 
X-CRM114-Status: UNSURE (   9.79  )
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

T24gMS8xOS8yNCAxNzoxMSwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIEZyaSwgSmFuIDE5
LCAyMDI0IGF0IDY6MDjigK9QTSBUaG9tYXMgUmljaGFyZAo+IDx0aG9tYXMucmljaGFyZEBib290
bGluLmNvbT4gd3JvdGU6Cj4+IE9uIDEvMTUvMjQgMjE6MDIsIEFuZHkgU2hldmNoZW5rbyB3cm90
ZToKPj4+IE9uIE1vbiwgSmFuIDE1LCAyMDI0IGF0IDY6MTbigK9QTSBUaG9tYXMgUmljaGFyZAo+
Pj4gPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiAKPiAuLi4KPiAKPj4+PiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHBpbmN0cmxfc2luZ2xlX3BtX29wcyA9IHsK
Pj4+PiArICAgICAgIFNFVF9OT0lSUV9TWVNURU1fU0xFRVBfUE1fT1BTKHBpbmN0cmxfc2luZ2xl
X3N1c3BlbmRfbm9pcnEsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwaW5jdHJsX3NpbmdsZV9yZXN1bWVfbm9pcnEpCj4+Pj4gK307Cj4+Pgo+Pj4gVXNlIHByb3Bl
ciAvIG1vZGVybiBtYWNyby4KPj4KPj4gZml4ZWQsIHVzZSBERUZJTkVfTk9JUlFfREVWX1BNX09Q
UyBub3cKPiAKPiAuLi4KPiAKPj4+PiAgI2VuZGlmCj4+Pgo+Pj4gV2h5IGlmZGVmZXJyeSBpcyBu
ZWVkZWQgKGVzcC4gdGFraW5nIGludG8gYWNjb3VudCBwbV9wdHIoKSB1c2UgYmVsb3cpPwo+Pgo+
PiBXZSBtYXkgaGF2ZSBhbiAidW51c2VkIHZhcmlhYmxlIiB3YXJuaW5nIGZvciBwaW5jdHJsX3Np
bmdsZV9wbV9vcHMgaWYKPj4gQ09ORklHX1BNIGlzIHVuZGVmaW5lZCAoZHVlIHRvIHBtX3B0ciku
Cj4gCj4gVGhpcyBpcyBjb3VwbGVkIHdpdGggdGhlIGFib3ZlLiBGaXhpbmcgYWJvdmUgd2lsbCBh
dXRvbWF0aWNhbGx5IG1ha2UKPiB0aGUgcmlnaHQgdGhpbmcuCgpZZXMgeW91J3JlIHJpZ2h0LgpC
eSB0aGUgd2F5IEkgY2FuIHVzZSBwbV9zbGVlcF9wdHIgaW5zdGVhZCBvZiBwbV9wdHIuCgotLSAK
VGhvbWFzIFJpY2hhcmQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVl
cmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
