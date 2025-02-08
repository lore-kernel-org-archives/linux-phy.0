Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B6B1C0219E
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 13:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKV5whFj6CPw1ixjPYdoFwSU5i0Uhv1oXpaBoL6eK10=; b=GKpO1A0Amz7OOX
	RotqyPaiHdtPRhl7CvnZwHGdOw2eGNL+aqxUUaICJGMruMlucGDM0M0bd2Gm+VEF9VIqYcf48GPxq
	qzWfwCYayHDBsAJWqXuL23ptr+2kAeThGMZwX0jXSjV+0sOlnO5NMeEmiYAdr4XGOy9btfaiRLvSq
	WUC9YPEThQwz9RaatRh+QLZ7A5uxx1Q9yEEQu/UiWFhXZQpIp6dvRiTf8BAZF/9CQbkkpdtkuvSZu
	7u4WKrlLi7x3lHXLl7opZ/VwwRoxdATx2oP4IDW3omFzF3qmedVOWJ/Y0OatpWUCtSxvozfq7QXzd
	FS3lRZc7sJS/8PtoCZpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgklG-0000000Cz4n-2Rxm;
	Sat, 08 Feb 2025 13:20:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgklD-0000000Cz4M-3NiX
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 13:20:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5E359A41BCE;
	Sat,  8 Feb 2025 13:18:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E52FAC4CED6;
	Sat,  8 Feb 2025 13:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739020837;
	bh=9W1Za/kbQu2xjBOIJYW7uwANkTVDwhxj/uoxldA8a54=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RrOIag8iqPc6KucVE91+M9OmAQtQ+pTpaePLyLuUomKErjy7CfkIoji0E2gJGBrPP
	 juxtLBHD4HXGM+K2063t/St1rKXOYVYo2GJgEdWTCyCHAGX43DGvMJJIssiVRh0vdh
	 naUzKVmpMN6/8o6jJHrA5XRi6FPUVwpCQCHT4Eresz0CpkfJud0IUbEuT6cnMvvWEJ
	 F5lZE8DaR8bbeeC+a0Zaff3qqIWzgDvOPYXTtwoKZASCtLqZ99Jb+2CCE2ewI8su1a
	 NZ7Qr23h/O7RZZBcQQC+CIbYF3LigoEkwoBcQR/tZpK5pZAvGGr9qE5ofDljpaqJJs
	 vYWfToR/We03g==
Date: Sat, 8 Feb 2025 13:20:22 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, David Lechner <dlechner@baylibre.com>, Linus Walleij
 <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Peter Rosin
 <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
 <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi
 Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 00/13] gpiolib: add gpiod_multi_set_value_cansleep
Message-ID: <20250208132022.564e7a46@jic23-huawei>
In-Reply-To: <CAHp75VdmN2wqwwnea0gtTQJ+Y5twQaJp6iEL2esEMCHDi8bvVg@mail.gmail.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
	<CAMRc=Mf9WQjVXvea7tHx0MJG2H8Yqxw=zGqvjp7dfD7+=huDKw@mail.gmail.com>
	<CAPDyKFoNuXpTEm1rLPvAgib+ugqr7XyETZhfrNr6ypOOKRwjXQ@mail.gmail.com>
	<CAHp75VdmN2wqwwnea0gtTQJ+Y5twQaJp6iEL2esEMCHDi8bvVg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_052040_016066_BF4309BB 
X-CRM114-Status: GOOD (  21.83  )
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

T24gRnJpLCA3IEZlYiAyMDI1IDE0OjIwOjE2ICswMjAwCkFuZHkgU2hldmNoZW5rbyA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IE9uIEZyaSwgRmViIDcsIDIwMjUgYXQgMTE6
NDjigK9BTSBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiBP
biBGcmksIDcgRmViIDIwMjUgYXQgMDg6NDksIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdk
ZXYucGw+IHdyb3RlOiAgCj4gPiA+IE9uIFRodSwgRmViIDYsIDIwMjUgYXQgMTE6NDjigK9QTSBE
YXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+IHdyb3RlOiAgCj4gCj4gLi4uCj4g
Cj4gPiA+ID4gTWFpbnRhaW5lcnMsIGlmIHlvdSBwcmVmZXIgdG8gaGF2ZSB0aGlzIGdvIHRocm91
Z2ggdGhlIGdwaW8gdHJlZSwgcGxlYXNlCj4gPiA+ID4gZ2l2ZSB5b3VyIEFja2VkLWJ5Oiwgb3Ro
ZXJ3aXNlIEkgd2lsbCByZXNlbmQgd2hhdCBpcyBsZWZ0IGFmdGVyIHRoZSBuZXh0Cj4gPiA+ID4g
a2VybmVsIHJlbGVhc2UuICAKPiAKPiA+ID4gSSBjYW4gcHJvdmlkZSBhbiBpbW11dGFibGUgYnJh
bmNoIGZvciB0aGUgZW50aXJlIHNlcmllcyBmb3IgZXZlcnlvbmUKPiA+ID4gdG8gcHVsbCBvciBJ
IGNhbiBhcHBseSBwYXRjaCBvbmUsIHByb3ZpZGUgYW4gaW1tdXRhYmxlIGJyYW5jaCBhbmQKPiA+
ID4gZXZlcnkgc3Vic3lzdGVtIGNhbiB0YWtlIHRoZWlyIHJlc3BlY3RpdmUgcGF0Y2hlcy4gV2hh
dCBkbyB5b3UgcHJlZmVyPyAgCj4gPgo+ID4gVGhlIGNoYW5nZXMgbG9vayBzbWFsbCBhbmQgdHJp
dmlhbCB0byBtZS4gSSB3b3VsZG4ndCBtaW5kIGlmIHlvdSB0YWtlCj4gPiB0aGVtIGFsbCAoYXQg
bGVhc3QgZm9yIG1tYykuIEFuIGltbXV0YWJsZSBicmFuY2ggd291bGQgYmUgZ29vZCwgaWYgaXQK
PiA+IHR1cm5zIG91dCB0aGF0IHdlIG5lZWQgdG8gcHVsbCB0aGVtLiAgCj4gCj4gKzEgaGVyZSwg
dGhlIHBvdGVudGlhbCB1c2VyIGZvciBpbW11dGFibGUgYnJhbmNoL3RhZyBpcyBJSU8uCj4gVGhl
IHJlc3QgbG9va3MgdHJpdmlhbCBhbmQgdW5saWtlbHkgdG8gaGF2ZSBjb25mbGljdHMuCgpXaGls
c3QgSSdtIG5vdCBzdXJlIGlmIHdlJ2xsIG5lZWQgaXQsIGRlZmluaXRlbHkgZ29vZCB0byBoYXZl
IGltbXV0YWJsZQpicmFuY2gganVzdCBpbiBjYXNlLgoKVGhlcmUgaXMgYW5vdGhlciBjaGFuZ2Ug
dG8gdGhlIGFkNzYwNiBvbiBsaXN0LCBidXQgaXQncyBubyB3aGVyZSBuZWFyCnRoaXMgY29kZSBz
byBzaG91bGRuJ3QgYmUgYSBwcm9ibGVtIGhvd2V2ZXIgdGhpcyBnb2VzIGluLgpNeSBzbGlnaHQg
cHJlZmVyZW5jZSB3b3VsZCBiZSBhbiBpbW11dGFibGUgd2l0aCBhIHRhZyBvbiBwYXRjaCAxLgpJ
J2xsIHB1bGwgdGhhdCBhbmQgYXBwbHkgdGhlIElJTyBvbmVzIG9uIHRvcC4KCklmIHlvdSB3YW50
IHRvIGdyYWIgdGhlIGxvdCB0aG91Z2ggdGhhdCBzaG91bGQgYmUgZmluZSBhcyB3ZWxsLgoKSm9u
YXRoYW4KCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
