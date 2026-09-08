Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236C7C79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 17:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJKSY6AG8eUfrbfbr1bWE7Jkx08xN+5YzfPwZYqmFuo=; b=oZVMqpatht+atW
	Wov5EZT9qfEA2JgFJRd5jkw+NQXOo1BtxtCzbrxE8cnIWMPqIdyC/6kr+5XNmF3eiTLU9myXBa0pI
	BUvFN7YNQl867R8SSG5DeLfiRMMzDvmAjmN5R9mJOArhupN4KTG6YqcpdtMx/3jouQ17wNVtIRJwn
	iGqILOssD1AB1zhzlN2az7H19RHIQmTRds+gRHzTALX0Mc41+10CFjAvN06bLzfRUXoJKsg+x1vmk
	tkCz9A4GkHnTRq7OfcffK12JllwMt+DmT7Jo76VV/CB7ypgr5WYp4dk8DHSmvoblMpf8JWiBSm9nP
	zDQJ0LLQyVISCToviyDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3zhY-00000009q7k-2fsJ;
	Tue, 08 Sep 2026 17:33:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3zhX-00000009q7U-22a0
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 17:33:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A03243FB2
	for <linux-phy@lists.infradead.org>; Tue,  8 Sep 2026 17:33:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3C141F00ADF
	for <linux-phy@lists.infradead.org>; Tue,  8 Sep 2026 17:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788888823;
	bh=gmIGR0/AjmJLqjqIA+b+biNqhfd5J7r7shYDGeksk7M=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=oYUkJxypWqLI8uJLzQPHxhQ71Ks/IyFSnoobdkhybHg/VFrZcScUaUzcU5iGJu3Yg
	 SVr1zNYq9lzWcvDiEUcX1atpf0jaVT6xPToEVsGnnnsYQD5x0GXAUtiUe+VTGJC6+U
	 lVLE5LREy7a0wkg5nqv6jsrAjqnRn4VO+GvC4P1WC1OuR3Y0iPEm0L25Nk/xBf6b9z
	 uj+EZWNfmBY9zPHxZZzMY+PZaGLcUap6z6HgDOpRkikwj/4SgkOIg8RzL7eKjY5zR2
	 8qBXig3e3zoeZ5+dV8aYrX3pQiy5jGox/+C0yb3jT+lcAU0xZn8D99wJLkp8fHxUtM
	 u1lhsOfW8IKpA==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5b0231a3e86so4503045e87.0
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 10:33:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByIheZ/HNPyUKVH0yRq8HzxZr04M1b64dcCFzeU4DPPiDZ3iQn7f4eW7WICG2SxvVPoEbR4pUplgGY=@lists.infradead.org
X-Gm-Message-State: AFuF++k2tRQ0C9o415wM7ZNyLyaJJ3eH38X+H4judWcYYnR4b5c+5iqx
	PpDM4YXf8h2OGZx7m5be8+Mv9LUUXf8a1KrdthHCvQfKIN4YGHGuZ5XW5acWdj44Y9BwzdHxjYp
	VYVZGfMyxIuqW0FKPRRwn8+TKSmQ9TQM=
X-Received: by 2002:a05:6512:2241:b0:5b5:fae5:b241 with SMTP id
 2adb3069b0e04-5b616f22e66mr5771186e87.14.1788888821627; Tue, 08 Sep 2026
 10:33:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260908152808.3928630-1-arnd@kernel.org> <20260908152808.3928630-6-arnd@kernel.org>
In-Reply-To: <20260908152808.3928630-6-arnd@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 8 Sep 2026 19:33:29 +0200
X-Gmail-Original-Message-ID: <CAD++jLka1EcE_pgbQ+k-==7ZBy4t=UzMRoSpftToUvqSWikfOA@mail.gmail.com>
X-Gm-Features: AcwNN1W4V_RHIjZXrzOUvAHXUKzBi-tBnO9Xu5bnMkKM7BxKaEWn60o-CzXXb5s
Message-ID: <CAD++jLka1EcE_pgbQ+k-==7ZBy4t=UzMRoSpftToUvqSWikfOA@mail.gmail.com>
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
To: Arnd Bergmann <arnd@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Russell King <linux@armlinux.org.uk>, Drew Fustini <fustini@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>, Stefan Agner <stefan@agner.ch>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Andrew Lunn <andrew@lunn.ch>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Kristoffer Ericson <kristoffer.ericson@gmail.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Alexander Sverdlin <alexander.sverdlin@siemens.com>, 
	Shawn Guo <shawnguo@kernel.org>, Karl Mehltretter <kmehltretter@gmail.com>, 
	"David Hildenbrand (Arm)" <david@kernel.org>, Nicolas Pitre <npitre@baylibre.com>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, linux-omap@vger.kernel.org, 
	Alexander Clouter <alex@digriz.org.uk>, "Jeremy J. Peper" <jeremy@jeremypeper.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>, Ulf Hansson <ulfh@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Thomas Weissschuh <thomas.weissschuh@linutronix.de>, 
	linux-ide@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-rtc@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-gpio@vger.kernel.org
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

T24gVHVlLCBTZXAgOCwgMjAyNiBhdCA1OjI54oCvUE0gQXJuZCBCZXJnbWFubiA8YXJuZEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPgo+
IFRoZSAnb3Jpb24nIHBsYXRmb3JtIGlzIHRoZSBwcmVkZWNlc3NvciB0byB3aGF0IGxpbnV4IG5v
dyBjYWxscyB0aGUKPiAnbXZlYnUnIGxpbmUgb2YgTWFydmVsbCBTb0NzLCBhbmQgb3JpZ2luYWxs
eSBjb3ZlcmVkIG9yaW9uNXgsCj4gbXY3OHh4MCwga2lya3dvb2QsIGRvdmUgYW5kIGEgZmV3IG90
aGVycyB0aGF0IGRvIG5vdCBoYXZlIGFueQo+IHVwc3RyZWFtIHN1cHBvcnQgYXQgdGhlIG1vbWVu
dC4KPgo+IE9ubHkgYSBmZXcgYm9hcmQgZmlsZXMgcmVtYWluIGhlcmUsIHRoZXNlIGFyZSB0aGUg
b25lcyBsZWZ0Cj4gaW4gMjAyMiBib2FyZCBmaWxlIHB1cmdlIGJlY2F1c2UgdGhleSBoYWQgc29t
ZSBsZXZlbCBvZiBzdXBwb3J0Cj4gaW4gRGViaWFuIG9yIE9wZW5XUlQsIG1vc3RseSBmb3IgY29t
bWVyY2lhbCBOQVMgb3Igcm91dGVyIGJveGVzLgo+IFRoaXMgZGlzdHJvIHN1cHBvcnQgaXMgbm93
IGdvbmUsIGFuZCBub2JvZHkgaGFzIGNvbnZlcnRlZCB0aGUKPiBib2FyZCBmaWxlcyB0byBkZXZp
Y2V0cmVlLCB0aG91Z2ggdGhlIG9yaW9uNXggYW5kIGRvdmUgcGxhdGZvcm1zCj4gYWxzbyBjb21l
IHdpdGggZGV2aWNldHJlZSBzdXBwb3J0IGZvciBzb21lIG90aGVyIG1hY2hpbmVzLgo+Cj4gQ2M6
IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiBDYzogU2ViYXN0aWFuIEhlc3NlbGJhcnRo
IDxzZWJhc3RpYW4uaGVzc2VsYmFydGhAZ21haWwuY29tPgo+IENjOiBHcmVnb3J5IENsZW1lbnQg
PGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4KPiBDYzogQWxleGFuZGVyIENsb3V0ZXIgPGFs
ZXhAZGlncml6Lm9yZy51az4KPiBDYzogSmVyZW15IEouIFBlcGVyIDxqZXJlbXlAamVyZW15cGVw
ZXIuY29tPgo+IENjOiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgo+IENjOiBO
aWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KPiBDYzogVWxmIEhhbnNzb24gPHVsZmhA
a2VybmVsLm9yZz4KPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxwaWVyYWxpc2lAa2VybmVsLm9y
Zz4KPiBDYzogIktyenlzenRvZiBXaWxjennFhHNraSIgPGt3aWxjenluc2tpQGtlcm5lbC5vcmc+
Cj4gQ2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgo+IENjOiBSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IENjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bn
b29nbGUuY29tPgo+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+IENjOiBBbGV4
YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+Cj4gQ2M6ICJSYWZh
ZWwgSi4gV3lzb2NraSIgPHJhZmFlbEBrZXJuZWwub3JnPgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8
ZGFuaWVsLmxlemNhbm9Aa2VybmVsLm9yZz4KPiBDYzogR3VlbnRlciBSb2VjayA8bGludXhAcm9l
Y2stdXMubmV0Pgo+IENjOiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+Cj4gQ2M6IExp
bnVzIFdhbGxlaWogPGxpbnVzd0BrZXJuZWwub3JnPgo+IENjOiBCYXJ0b3N6IEdvbGFzemV3c2tp
IDxicmdsQGtlcm5lbC5vcmc+Cj4gQ2M6IFRob21hcyBXZWlzc3NjaHVoIDx0aG9tYXMud2Vpc3Nz
Y2h1aEBsaW51dHJvbml4LmRlPgo+IENjOiBsaW51eC1pZGVAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IGxpbnV4LW1tY0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9y
Zwo+IENjOiBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1ydGNAdmdl
ci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXBtQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC13
YXRjaGRvZ0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtc291bmRAdmdlci5rZXJuZWwub3Jn
Cj4gQ2M6IGxpbnV4LWdwaW9Admdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogQXJuZCBC
ZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCkFja2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51c3dA
a2VybmVsLm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
