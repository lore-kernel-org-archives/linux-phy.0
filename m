Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FCAEC021A1
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 13:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRRYH+7Ob9n2XVJqwevlIdgLFv1MksW5X2ycYGv4ULY=; b=V3NliEYbZa3WF3
	93C5qjtTr4wJIL3SfEFC3B+9NlWwZJ0rouzRRWVwFPtLduPlWFIjSa44cJ7LIOvthg9PlKllbGvuH
	coSlCrfan1zAL65VDhFoUyp3Hy0gQU35jeTbn6v4VNmKMGo3Eq9kfwFe0qMkR8kE7AWF3Cp6OM+EC
	ADHLkw6nsZ18STk7xtnyTkVeNjI9cn1E1LCl5ItyW6KCA3x6irMUjqFdgZeDOnTHZYB7fO9NghzrN
	Uy9bqTy+ziCxBUypqPur2GdldpMTM7svVjxXvsAPiXjQbdk+aHBTcbTDFHmU+VsHje9NCqsDx4Th5
	xJZJHA3uhbCQpJ8yAr+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgkoJ-0000000CzWD-0XHW;
	Sat, 08 Feb 2025 13:23:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgknx-0000000CzQy-1rgg
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 13:23:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3F6A95C552A;
	Sat,  8 Feb 2025 13:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51BC1C4CED6;
	Sat,  8 Feb 2025 13:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739021008;
	bh=UNQXvy+RWVdaIktgs9KmgGDMboPWfIfWS1mqCJ2dRMg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=n7mZXu+FCZa2zBnn8hwWDCQCrgdVRU/FiEZdEcQhRFE2+nrnbu4E/0rVIg30241ib
	 j0uIVrbv8sxiG5Wl8Yy7b/XA4xW3Sd4uxw3aSH7yTq04q3R7OFyMX+WHkGLZuizJ9k
	 z6GuuALfG/T8Bah6qucmpo2JYD+ThC0uCCsoYMYUlvSsIkD6sneYZan+4gme1v3dxB
	 B6zYusbkISPsakXAcWU4bCRtbGN6JI/Don++Czch/tP72/U2kR50qAmUDp6wVrUfyQ
	 xTrNY7rF50Zq6Fg8HGxNLhtOrMUMH9Hd45oFh73gupOaHy3TLmExhSv0xB6tntaZ2r
	 whcVehzM3yyeA==
Date: Sat, 8 Feb 2025 13:23:13 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy
 Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Ulf Hansson <ulf.hansson@linaro.org>, Peter
 Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
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
Subject: Re: [PATCH v2 06/13] iio: adc: ad7606: use
 gpiod_multi_set_value_cansleep
Message-ID: <20250208132313.5b151ca0@jic23-huawei>
In-Reply-To: <CAHp75Vfb7EgHkHtqm4b0QnG=uWwszpWwFe8MLDPRSifKtQFAcA@mail.gmail.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
	<20250206-gpio-set-array-helper-v2-6-1c5f048f79c3@baylibre.com>
	<CAHp75Vfb7EgHkHtqm4b0QnG=uWwszpWwFe8MLDPRSifKtQFAcA@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_052329_528070_C863A709 
X-CRM114-Status: GOOD (  13.48  )
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

T24gRnJpLCA3IEZlYiAyMDI1IDE0OjEzOjIzICswMjAwCkFuZHkgU2hldmNoZW5rbyA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IE9uIEZyaSwgRmViIDcsIDIwMjUgYXQgMTI6
NDjigK9BTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+ID4K
PiA+IFJlZHVjZSB2ZXJib3NpdHkgYnkgdXNpbmcgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNs
ZWVwKCkgaW5zdGVhZCBvZgo+ID4gZ3Bpb2Rfc2V0X2FycmF5X3ZhbHVlKCkuCj4gPgo+ID4gVGhl
c2UgYXJlIG5vdCBjYWxsZWQgaW4gYW4gYXRvbWljIGNvbnRleHQsIHNvIGNoYW5naW5nIHRvIHRo
ZSBjYW5zbGVlcAo+ID4gdmFyaWFudCBpcyBmaW5lLiAgCj4gCj4gLi4uCj4gCj4gPiAgICAgICAg
IGlmIChzdC0+Z3Bpb19vcykgewo+ID4gLSAgICAgICAgICAgICAgIGdwaW9kX3NldF9hcnJheV92
YWx1ZShzdC0+Z3Bpb19vcy0+bmRlc2NzLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdC0+Z3Bpb19vcy0+ZGVzYywgc3QtPmdwaW9fb3MtPmluZm8sIG9zKTsKPiA+
ICsgICAgICAgICAgICAgICBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAoc3QtPmdwaW9f
b3MsIG9zKTsKPiA+ICAgICAgICAgfSAgCj4gCj4gTm93IEkgZG8gbm90IHNlZSBhbnkganVzdGlm
aWNhdGlvbiB0byBsZWF2ZSB7fS4KPiAKV2l0aCB0aGF0IHRpZGllZCB1cCAoZ29vZCBzcG90ISkg
aWYgdGhpcyBnb2VzIHRocm91Z2ggdGhlIEdQSU8gdHJlZQpBY2tlZC1ieTogSm9uYXRoYW4gQ2Ft
ZXJvbiA8Sm9uYXRoYW4uQ2FtZXJvbkBodWF3ZWkuY29tPgoKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
