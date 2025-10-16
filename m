Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24AFFCCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 11:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXn7VcR7ZivWgshXKCII6+5lOM45fmFOtZ8a7cTVhhw=; b=buL44xHlO3WOyq
	6lKGZcXdY32oMInGBT9e9XpZfSfb8cB6ztbXkrzE++FIBG+wEmRjwrIg5s6I82tXWwq5wm1PjMCio
	SkKXyNGWBUUcmQhZbnahectbim1UO1Sa2J0cv1D+GaNaDCqQG6QTuMAClnUE36gzT22awZCms+1+E
	Y6MHF3HlAMTZh0U6hTK6LgypDlPGYdiZox+u0xJSqXx3ZWRjQtsZx+MYIX1Bf88Kj/EyiPm9ahk3M
	rxIrmuWJpGYGRtrwPp1rKL8nCiOjK8TBAJ0TRCREItHsht6hRX7wGHWxAQ//Hka5adq+CcGffBqSC
	qZZhc2Y9ClLVNQ2MZboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MR2-00000004cly-2aTD;
	Thu, 16 Oct 2025 11:46:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9MQz-00000004ckl-0rOE
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 11:46:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E203B4A8B2
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 11:46:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA9AC116B1
	for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 11:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760615176;
	bh=PZizulifq2HVUabPYk3xuoVBwllBTb+3Td/PKhrD1JE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eVASFOd8Ywqe6KQNNwIc5W99wHDhxMRKImkDDotqZhGfqTqo7WZv7EpFgufnGXg98
	 JH71O97kUeMbKxS8dK8TarWgbulGDPG/N2osi7PB/ojtJuHmlrHJipQhJK1fGQIqx8
	 op6BUxlQydtozthCzk1GkU+Z3xEyU2pJ07NmKzV3wJgQe358X8/mJd5VrRKTvZKzl+
	 +9FQpN9xIDocbbmTswT52JCnNKVhQThGt3s6bdIntcRH2MwGnePaTwIuWYel9QlktR
	 HIEBISbSt0jVuOZKcib3uQCDBxbXZ82Ji+VD8qp8E1NGjRdxSMw+Et1p/mpAswLeL7
	 3l+fyNXce0nKg==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-637dbabdb32so1200935a12.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 04:46:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXKg35JtvIebPqScSwTg38BBvqkxjCd6FfhLy16BGq2LqfRPrVD76GKJqwdA5xieJtId31CKIcKZa4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzE4P8moQZb9gpD/jXiWvIjJw5Q9iq0ntF94URPkXNyBlu8FSzd
	/9kKoJQ2NYhpC5Y8dmTnzr/TYjhfE/E4tkUSDsnoiygttYqBBiGbQzZVvLZyXPnkLGUegC4lRyb
	GkSinIXFbnRn4MCLIeYLsP/N9g1hOLw==
X-Google-Smtp-Source: AGHT+IG/cukXQVGNzPUMXsg5+RoCAkU44f3RdQmcvQZOd/ZrFBQ7UEz32fqOhzDQMAOYnE1PB3ZCi0DPIcgQtV+P3zk=
X-Received: by 2002:a17:907:7e96:b0:b3d:d6be:4cbe with SMTP id
 a640c23a62f3a-b50aa8a9063mr3962097166b.18.1760615174961; Thu, 16 Oct 2025
 04:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org> <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
In-Reply-To: <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Oct 2025 06:46:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL1KL4CvnxF5eQG2kN2VOxJ2Fh1yBx9=tqJEWOeg0DdzQ@mail.gmail.com>
X-Gm-Features: AS18NWBW0tx10CGZVgmCxHc_hmn_UbUIH_yG162ZfRbVO05hKCLDAYOsOpbWm_A
Message-ID: <CAL_JsqL1KL4CvnxF5eQG2kN2VOxJ2Fh1yBx9=tqJEWOeg0DdzQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_044617_309880_2B921BFB 
X-CRM114-Status: GOOD (  18.58  )
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

T24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMjo1N+KAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+Cj4gSGkgUm9iLAo+Cj4gT24gVGh1LCAxNiBPY3Qg
MjAyNSBhdCAwMToyMCwgUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6
Cj4gPiB5YW1sbGludCBoYXMgZ2FpbmVkIGEgbmV3IGNoZWNrIHdoaWNoIGNoZWNrcyBmb3IgaW5j
b25zaXN0ZW50IHF1b3RpbmcKPiA+IChtaXhlZCAiIGFuZCAnIHF1b3RlcyB3aXRoaW4gYSBmaWxl
KS4gRml4IGFsbCB0aGUgY2FzZXMgeWFtbGxpbnQgZm91bmQKPiA+IHNvIHdlIGNhbiBlbmFibGUg
dGhlIGNoZWNrIChvbmNlIHRoZSBjaGVjayBpcyBpbiBhIHJlbGVhc2UpLiBVc2UKPiA+IHdoaWNo
ZXZlciBxdW90aW5nIGlzIGRvbWluYXRlIGluIHRoZSBmaWxlLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4KPiBUaGFua3MgZm9yIHlv
dXIgcGF0Y2ghCj4KPiBTaW5jZSB5b3UgYXJlIG1lbnRpb25pbmcgbWl4ZWQgcXVvdGVzLCBpcyBv
bmUgb3IgdGhlIG90aGVyIHByZWZlcnJlZD8KCkkgaGF2ZSBhIHNsaWdodCBwcmVmZXJlbmNlIGZv
ciBzaW5nbGUgcXVvdGVzLgoKPiBTaG91bGRuJ3Qgd2UgdHJ5IHRvIGJlIGNvbnNpc3RlbnQgYWNy
b3NzIGFsbCBmaWxlcz8KCkkgZG9uJ3QgcGFydGljdWxhcmx5IGNhcmUgdG8gY2hhbmdlIDkxNSBm
aWxlcy4gQW5kIGlmIHRoZSB0b29scyBkb24ndAplbmZvcmNlIGl0LCBJJ20gbm90IGdvaW5nIHRv
IGRvIHNvIGluIHJldmlld3MuCgo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BpbmN0cmwvcmVuZXNhcyxwZmMueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BpbmN0cmwvcmVuZXNhcyxwZmMueWFtbAo+ID4gQEAgLTEyOSw3
ICsxMjksNyBAQCBhZGRpdGlvbmFsUHJvcGVydGllczoKPiA+Cj4gPiAgICAgIC0gdHlwZTogb2Jq
ZWN0Cj4gPiAgICAgICAgYWRkaXRpb25hbFByb3BlcnRpZXM6Cj4gPiAtICAgICAgICAkcmVmOiAi
Iy9hZGRpdGlvbmFsUHJvcGVydGllcy9hbnlPZi8wIgo+ID4gKyAgICAgICAgJHJlZjogJyMvYWRk
aXRpb25hbFByb3BlcnRpZXMvYW55T2YvMCcKPiA+Cj4gPiAgZXhhbXBsZXM6Cj4gPiAgICAtIHwK
PiA+IEBAIC0xOTAsNyArMTkwLDcgQEAgZXhhbXBsZXM6Cj4gPgo+ID4gICAgICAgICAgICAgIHNk
aGkwX3BpbnM6IHNkMCB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICBncm91cHMgPSAic2RoaTBf
ZGF0YTQiLCAic2RoaTBfY3RybCI7Cj4gPiAtICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9
ICJzZGhpMCI7Cj4gPiArICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJzZGhpMCc7Cj4K
PiBIdWg/CgpPbmUgdG9vIG1hbnkgc2VhcmNoIGFuZCByZXBsYWNlLiBGaXhlZC4KClJvYgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
