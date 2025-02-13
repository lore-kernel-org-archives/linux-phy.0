Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 677EFC021A4
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 18:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLRH/L5uJ2czjGC9A+nG3enEKLKnnjH1E+jor3i4fhw=; b=tUhZQ0tQ/vup64
	InpTfxf+AGEGCPuhwTLdaTlqZ1pLtiaFI6LRyTXEbVHBp25At/+s2wIaTuZwaZFl3NabOxDrGgYR4
	LhmRgHmUTURohv5alytMML2eLQko0WDXw5gfrJv4W42hwF+dGDo61JktEcDYP/e0TAeZw6rrObv0O
	WTFWTGdXy4vIxhXbFFgjhGot2VJogDN+Bkw34xQTRYpm+wjSThs/jL7ezbQoJwSezbQSVqxCMhrQ8
	CUGRP2ilBxYrmVgF3IHJ8OC4+W3KLGDZ3GxZa8sACY9Xd5zyC22EMW9n1fGFSxy0w/xkkO9L0mL73
	5FqrW9CVCO0TvBI4Ra7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiduc-0000000CE7d-0gDK;
	Thu, 13 Feb 2025 18:26:10 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidEP-0000000C3KZ-1BRt
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 17:42:34 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-54298ec925bso1587077e87.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Feb 2025 09:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739468551; x=1740073351; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o7poaTbadceb30IF+pZHsHhZOoR9b8z1fPvVtB4cPUk=;
        b=FHO9Hq3t539mZlCcVEJVgz7tmkx0QLCNKS88fLnV65tiR3jec0BTowZXEt87+WSnLe
         2ipK3JqqNYlHt1wJ0N5dPwSVzEmR0yqj5qqjk+IloeOy3m70aUL6wu7Rgp9B9c0ZbVUw
         VukVSajCu9NABScY6msUcx9MrENp2HtO92ZbNN5mXdr/Rk97iSWLUubFOm/M0ecBYae3
         iizA5EzhfxCGHOHMGaBELZdZjbTfKVIMImY5/q9V4EW7FbL1M5ywxQkJ7B3HJjjVLLRK
         UR6beL/EipujI5/S0s69yu3Us0NGWvYhxebsWLTWBTGyYRu3VALmFMKpTcZiN2w16dnL
         cb4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739468551; x=1740073351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o7poaTbadceb30IF+pZHsHhZOoR9b8z1fPvVtB4cPUk=;
        b=jKR8EtC8zmVioDZ8lxvsVP6EnZQT0YqU54Zns/Kc5yajj6FC266xMQ720joylecsAO
         gtneFrpaOkcum6cS8lPdI8h5n6xCjBOy58EraK7CVK7Prz8w/c80ugulfqMNNiYIMB4m
         Saw+b/0reMIml3TCW+OSzInKoWQTkjOWN6/n+yi/OTSkn4/qwUKHtNkjleNDpZyf4cz5
         rpu70H1+GhUVaVQn9SrkWqdqQlgGAsxAxvLBLouC8W1HYeGbomufaHNSk8N1eDGPrah7
         sXV3BGdltVm40U+EWqB4hRCOjC+MzK6kjVEt6W/ptxtuyK82toOd4MKRIjG8ut0vkgvS
         EkHg==
X-Forwarded-Encrypted: i=1; AJvYcCXOIs9ZNV+EoE7n7UhS6sCz2dQdY0Uj0gpKQDuxiN02rJ5ztiTDLdsS591cCjZwt8UuTllt8mARYAY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYUNoj4HM9Ag5RNJhhwwySM8+qlgPV1/CAbczYX7y/AznO6LMZ
	o37lPNQA2UA4Bok8ceUSbHWnDYNqWquzsKXKmFsqPaZjusaImNm747ozj4iZ0qvgoauPhn1iA/D
	nBFYV3jHJhfe6Utg1ei1OHRidrn7AHA6Tthn49g==
X-Gm-Gg: ASbGnctYYVGI1KrzBJRd6HPST8I78zVvEm/yqFbGSK97yTT/cNnuMgSPPOAigHomkvS
	RqnLfMK1ISl1ZydfsJMjjr3N47a5XF+Yy5/oCPrI2fJKrVJAtniLrbQirPfh6Xj7NgeQCxhbUGJ
	MBG/MpX2zLRwfW/eApYyx1x2EiEAjJ
X-Google-Smtp-Source: AGHT+IF+fWjLMy4RC4fJfJhppdyGnDeRMMDIkKzyGd/CQOlFqBivCx8W/IGAYdJvOJJTC/43hOWG0nQaRr0ngZJNi/U=
X-Received: by 2002:a05:6512:3d88:b0:545:8cb:2183 with SMTP id
 2adb3069b0e04-54518122c71mr2468700e87.29.1739468550462; Thu, 13 Feb 2025
 09:42:30 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173935301204.11039.10193374588878813157.b4-ty@linaro.org> <801b5364-129f-42e9-bf9a-a90d9eeb4629@baylibre.com>
In-Reply-To: <801b5364-129f-42e9-bf9a-a90d9eeb4629@baylibre.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 13 Feb 2025 18:42:19 +0100
X-Gm-Features: AWEUYZkzHoDq5i_PpQBC_MEOqx6J4QYBMs6-RGY-gc-y6YI9Zv84ton-OV3XB6s
Message-ID: <CAMRc=MeXTvPnEPjOmPd5Vw0FYKHzndsB0SVjQErA4CY_0MGsMQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_094233_573376_AC5D793D 
X-CRM114-Status: GOOD (  20.03  )
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

T24gVGh1LCBGZWIgMTMsIDIwMjUgYXQgNjoyNeKAr1BNIERhdmlkIExlY2huZXIgPGRsZWNobmVy
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBPbiAyLzEyLzI1IDM6MzYgQU0sIEJhcnRvc3ogR29s
YXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6Lmdv
bGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPgo+ID4KPiA+IE9uIE1vbiwgMTAgRmViIDIwMjUgMTY6
MzM6MjYgLTA2MDAsIERhdmlkIExlY2huZXIgd3JvdGU6Cj4gPj4gVGhpcyBzZXJpZXMgd2FzIGlu
c3BpcmVkIGJ5IHNvbWUgbWlub3IgYW5ub3lhbmNlIEkgaGF2ZSBleHBlcmllbmNlZCBhCj4gPj4g
ZmV3IHRpbWVzIGluIHJlY2VudCByZXZpZXdzLgo+ID4+Cj4gPj4gQ2FsbGluZyBncGlvZF9zZXRf
YXJyYXlfdmFsdWVfY2Fuc2xlZXAoKSBjYW4gYmUgcXVpdGUgdmVyYm9zZSBkdWUgdG8KPiA+PiBo
YXZpbmcgc28gbWFueSBwYXJhbWV0ZXJzLiBJbiBtb3N0IGNhc2VzLCB3ZSBhbHJlYWR5IGhhdmUg
YSBzdHJ1Y3QKPiA+PiBncGlvX2Rlc2NzIHRoYXQgY29udGFpbnMgdGhlIGZpcnN0IDMgcGFyYW1l
dGVycyBzbyB3ZSBlbmQgdXAgd2l0aCAzIChvcgo+ID4+IG9mdGVuIGV2ZW4gNikgcG9pbnRlciBp
bmRpcmVjdGlvbnMgYXQgZWFjaCBjYWxsIHNpdGUuIEFsc28sIHBlb3BsZSBoYXZlCj4gPj4gYSB0
ZW5kZW5jeSB0byB3YW50IHRvIGhhcmQtY29kZSB0aGUgZmlyc3QgYXJndW1lbnQgaW5zdGVhZCBv
ZiB1c2luZwo+ID4+IHN0cnVjdCBncGlvX2Rlc2NzLm5kZXNjcywgb2Z0ZW4gd2l0aG91dCBjaGVj
a2luZyB0aGF0IG5kZXNjcyA+PSB0aGUKPiA+PiBoYXJkLWNvZGVkIHZhbHVlLgo+ID4+Cj4gPj4g
Wy4uLl0KPiA+Cj4gPiBBcHBsaWVkLCB0aGFua3MhCj4gPgo+ID4gWzA2LzE1XSBncGlvOiBtYXgz
MTkxeDogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4gICAgICAgICBjb21t
aXQ6IGViMmU5YzMwOGQyODgyZDlkMzY0YWYwNDhlYjNkODMzNmQ0MWM0YmIKPiA+Cj4gPiBCZXN0
IHJlZ2FyZHMsCj4KPiBIaSBCYXJ0b3N6LAo+Cj4gRG8geW91IHBsYW4gdG8gcGljayB1cCB0aGUg
b3RoZXIgcGF0Y2hlcyB0aGF0IGhhdmUgYmVlbiBhY2tlZAo+IGFzIHdlbGw/IEl0IHNlZW1zIGxp
a2UgbW9zdCBmb2xrcyB3ZXJlIE9LIHdpdGggZXZlcnl0aGluZyBnb2luZwo+IHRob3VnaCB0aGUg
Z3BpbyB0cmVlIHNpbmNlIHRoZSBjaGFuZ2VzIGFyZSBzbWFsbC4KPgoKSm9uYXRoYW4gcmVxdWVz
dGVkIGEgYnJhbmNoIHNvIEkgbWFkZSBvbmUgYW5kIHNlbnQgb3V0IGEgUFIuIEkgZmlndXJlZApw
ZW9wbGUgd291bGQganVzdCBwaWNrIHRoZSByZWxldmFudCBwYXRjaGVzIGludG8gdGhlaXIgcmVz
cGVjdGl2ZQp0cmVlcz8gRm9yIHBhdGNoZXMgdGhhdCB3b24ndCBiZSBpbiBuZXh0IGJ5IHJjNSAt
IEkgd2lsbCB0YWtlIHRoZW0gaWYKQWNrZWQgLSBqdXN0IHJlbWluZCBtZS4KCkJhcnQKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
