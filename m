Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72897C021AA
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 13:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7mpyqhRa2BvoAn16XT8tReVuf8XCy1Kc19XMUTrziw=; b=I7wKyj38G7U2dy
	eKn+o2/8AwY+CNf7MUIMHR1b8qO+yN4sSnzS7EP1VGjKWU5+gOd2zXo8bC/YAuODYmYkK3B0fvpFG
	l2821R1/Mi8QieU7nQYSaCAywLy6MRqXyATV82nBl87eq06Jg31EoUaid5XEe7J49KhNvNbl//CdS
	a6dqwVMII900NVIEoyRwKtZlUKJmSh4VH6lDPLjHGmGkd7dU1ufXEg/i6GcK/NR3qSmArgEgOgSaw
	cXnMExg1lyzNXssJVxAr/7/10doa6zCOd4OegNa1hOF/nJl9mtVylKFeu8AEHIIYEApVSvJY0TRmZ
	gInsphs9ijgox6XOSz9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk17x-00000004eQC-2si5;
	Mon, 17 Feb 2025 13:25:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0uM-00000004azl-1f5c
	for linux-phy@bombadil.infradead.org;
	Mon, 17 Feb 2025 13:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Z8FrFmcl52E97W8QNml+sgF14cGt9W9Ek7UZQcAbeVI=; b=TbZrVpG9Bp1qRdHhPaWNR7AT4j
	8AqkHOjZ6kcBzkg0PH8wuaIII/eI0KW4KmBFS015h6P5/2pTptBq1cNCdCFxHh6S2p7crshKmo+zK
	xt2HtLBrkwhYuocGQpCPFkiY+HBiqnju/u6qktj95MIB2U6VF82TC1nWnhSrMYpOputz/phy8hzFY
	glTxUBAveZswskvsRkU9HYcQJP9Eg04R+10a84ouRILi9l1VUhGrZx0X+C2iF3srrEyPBNzWipatk
	pExUVLrNXdWvzaaPD8znybtUiHwUj28AxLVTG0ehwMhk+GPLQxCVzICEJLv6kSLilAeMheYR7V3+c
	QzeL1zRw==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0uJ-00000001pQE-1fpS
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 13:11:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C762FA41236;
	Mon, 17 Feb 2025 13:09:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E40C3C4CED1;
	Mon, 17 Feb 2025 13:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739797887;
	bh=1PiBDGXviXFsoAeEznRpjkJuqVWjReFh5mfoR8+tPJo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WLtC95GDNZ/X0s+hfQucYzO3kU+Rh5UgXxg+E6+ek+M4ridMVG6kAEleF01gndwVH
	 8kbjGK8bw3shQpq+zR5Sq5mTGyLenbNNTpk6vPcSBAERAm/YqIrevEy6deAw2gYd51
	 +6Z0P/gt6AH2RWzUjQCrhRXFdo7ErlgscBvdmNbqoywYjXZQybziAkfobxVGYS3OxT
	 5cOCBqcqHwvqlDolpX+gjqdLDpktZKKuSPwD6bYWh/ueX9jKkMRNJsJfc3krmttNSP
	 0x5gToctYLmU18WiDPJ6s/4/w8DzpdAuT9WEgRG5brTf7wwxDY2ymWUYBFwU8gqN7U
	 PmtYI/xK+DYfA==
Date: Mon, 17 Feb 2025 13:11:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Linus Walleij
 <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn
 <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, David
 Lechner <dlechner@baylibre.com>, Bartosz Golaszewski
 <bartosz.golaszewski@linaro.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, Jonathan
 Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add
 gpiod_multi_set_value_cansleep
Message-ID: <20250217131110.5803b68b@jic23-huawei>
In-Reply-To: <CAMRc=Meq639NMz6TuOw=xQ_A8VDwA5OXoXU47JNt7x0C7jDtGQ@mail.gmail.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
	<173952845012.57797.11986673064009251713.b4-ty@linaro.org>
	<CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
	<CAMRc=MefPRs-REL=OpuUFJe=MVbmeqqodp+wCxLCE8CQqdL4gQ@mail.gmail.com>
	<20250216142313.743af564@jic23-huawei>
	<CAMRc=Meq639NMz6TuOw=xQ_A8VDwA5OXoXU47JNt7x0C7jDtGQ@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_131131_722750_D0E8903D 
X-CRM114-Status: GOOD (  19.34  )
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

T24gU3VuLCAxNiBGZWIgMjAyNSAxNjo1NTowNCArMDEwMApCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKCj4gT24gU3VuLCBGZWIgMTYsIDIwMjUgYXQgMzoyM+KAr1BN
IEpvbmF0aGFuIENhbWVyb24gPGppYzIzQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIEZy
aSwgMTQgRmViIDIwMjUgMTU6Mzc6NDggKzAxMDAKPiA+IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgo+ID4gIAo+ID4gPiBPbiBGcmksIEZlYiAxNCwgMjAyNSBhdCAz
OjM14oCvUE0gQW5keSBTaGV2Y2hlbmtvCj4gPiA+IDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29t
PiB3cm90ZTogIAo+ID4gPiA+Cj4gPiA+ID4gT24gRnJpLCBGZWIgMTQsIDIwMjUgYXQgMTI6MjHi
gK9QTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZTogIAo+ID4gPiA+
ID4gT24gTW9uLCAxMCBGZWIgMjAyNSAxNjozMzoyNiAtMDYwMCwgRGF2aWQgTGVjaG5lciB3cm90
ZTogIAo+ID4gPiA+ID4gPiBUaGlzIHNlcmllcyB3YXMgaW5zcGlyZWQgYnkgc29tZSBtaW5vciBh
bm5veWFuY2UgSSBoYXZlIGV4cGVyaWVuY2VkIGEKPiA+ID4gPiA+ID4gZmV3IHRpbWVzIGluIHJl
Y2VudCByZXZpZXdzLiAgCj4gPiA+ID4KPiA+ID4gPiAuLi4KPiA+ID4gPiAgCj4gPiA+ID4gPiBb
MDcvMTVdIGlpbzogYWRjOiBhZDc2MDY6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xl
ZXAKPiA+ID4gPiA+ICAgICAgICAgY29tbWl0OiA4MjAzYmM4MWYwMjVhM2ZiMDg0MzU3YTNkOGE2
ZWIzMDUzYmM2MTNhCj4gPiA+ID4gPiBbMDgvMTVdIGlpbzogYW1wbGlmaWVyczogaG1jNDI1YTog
dXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4gPiA+ID4gICAgICAgICBjb21t
aXQ6IGUxOGQzNTliMGExMzJlYjY2MTk4MzZkMWJmNzAxZjViM2I1MzI5OWIKPiA+ID4gPiA+IFsw
OS8xNV0gaWlvOiByZXNvbHZlcjogYWQyczEyMTA6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVf
Y2Fuc2xlZXAKPiA+ID4gPiA+ICAgICAgICAgY29tbWl0OiA3OTIwZGYyOWYwZGQzYWFlM2FjZDhh
NzExNWQ1YTI1NDE0ZWVkNjhmCj4gPiA+ID4gPiBbMTAvMTVdIGlpbzogcmVzb2x2ZXI6IGFkMnMx
MjEwOiB1c2UgYml0bWFwX3dyaXRlCj4gPiA+ID4gPiAgICAgICAgIGNvbW1pdDogYTY3ZTQ1MDU1
ZWE5MDA0ODM3MjA2NjgxMWRhN2M3ZmUyZDkxZjlhYSAgCj4gPiA+ID4KPiA+ID4gPiBGV0lXLCBK
b25hdGhhbiB1c3VhbGx5IHRha2VzIGNhcmUgb2YgcGF0Y2ggcXVldWUgb24gd2Vla2VuZHMuCj4g
PiA+ID4gQnV0IHdoYXRldmVyLCBpdCdzIG5vdCBteSBidXNpbmVzcyBhZnRlciBhbGwgOi0pCj4g
PiA+ID4gIAo+ID4gPgo+ID4gPiBUb28gbWFueSBjb25mbGljdGluZyBzdWdnZXN0aW9ucy4gSSBq
dXN0IHBpY2tlZCB1cCBhbGwgQWNrZWQgcGF0Y2hlcy4gwq9cXyjjg4QpXy/CryAgCj4gPgo+ID4g
UmVzb2x1dGlvbiBvZiBhbnkgaXNzdWVzICdzaG91bGQnIGJlIGVhc3kgZW5vdWdoLiBMZXQncyBr
ZWVwIGFuIGV5ZSBvbiBob3cKPiA+IGl0IGdvZXMgYXMgb3RoZXIgc2VyaWVzIGhpdCBMaW51eCBu
ZXh0LiAgTWlnaHQgYmUgYSBsaXR0bGUgd29yayB0byBiZSBkb25lIHRoZXJlCj4gPiBhbmQgYnkg
TGludXMgaW4gbmV4dCBtZXJnZSB3aW5kb3cuCj4gPgo+ID4gSm9uYXRoYW4KPiA+ICAKPiAKPiBJ
J20gdG90YWxseSBmaW5lIHdpdGggcmVtb3ZpbmcgdGhlIGlpbyBjb21taXRzIGZyb20gbXkgcXVl
dWUgaWYgeW91Cj4gcHJlZmVyIHRvIHRha2UgdGhlbS4KPiAKSGkgQmFydG9zeiwKClRoYXQncyBw
cm9iYWJseSBnb2luZyB0byBwcm92ZSBzbGlnaHRseSBsZXNzIHBhaW5mdWwsIHNvIHBsZWFzZSBk
by4KSSdsbCBtZXJnZSBpbiB0aGF0IGltbXV0YWJsZSB0YWcgYW5kIHBpY2sgdGhlbSB1cCBvbmNl
IHlvdSd2ZSBkcm9wcGVkIHRoZW0uCgpKb25hdGhhbgoKPiBCYXJ0b3N6CgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
