Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C329C0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 16:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiKmt2qi2QaiEaAeZ9Ms0avS6nmLY4QaeEX+6al0vIU=; b=o3TnKcklvUgL0x
	uCUN75wy15RoTmJDK057SdKRHeXrX2q1Wdoo6zwl2/GcVjnBZ8t4C/peF6XWnyTACk0nodbBXy5Cq
	17+V95Ya+QYzftiNlI/iyL8JTDUofQBO0sh8Y+36nETHiD00qBw8k3eq1f87OrMaDvZvtIJ3q1mqB
	iaLNzjL6Fh2xwY8jMVQ3OYsZw3GUhPfSl/lDQ6dPHFesnQjdQegj48FKQ1uflRpoNoKqOzybM0qpj
	SclFcUe4PpwDY1InOskdoJ/kDLG2Sw5V1tWPORFbueD1wlOtkRQQR77iLBE3luzj4n+modlH54bHJ
	skPHqRZE/5BMAKJ5vtfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teG8V-0000000CqYU-05Lp;
	Sat, 01 Feb 2025 16:14:23 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teG8S-0000000CqY6-2Rkw
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 16:14:21 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-30225b2586cso37849811fa.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 08:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738426458; x=1739031258; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xNz1P4fn6SHLp6Se+/Xd8y5hZ3fQaq8gKIv1BgEs6ZU=;
        b=Tb1x4/CBNgjMbESNOL5rJi1GlxwPy2LKJHgIqXU3bkMh+hBN55E15MAkmgMEj93eSP
         VGgGdgb35tlA5kQkYLHd+fKhw5zPB99i3EBzwvEhCvye02X6WgKo8G8ylzYyJAY99HaA
         6gC62uJWjMrezn5XBFADc3HwZqFy5Gort1SQUBkN2MxEV/vPmRXK9Yh9OO4Ai7PK8Uro
         ZjozQ7aidm7S7F6YE17KBF1bX48H2NPQn/HFfljfcwvX4fvKW1tO7GmI/Nex2n0ITpdO
         YzxDqmSgglcp3awRjE0GpeUAiXgaFBhFzlOJTVpwvkwyLub4f+p0BKMi5FNMhDYDk/ag
         8UsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738426458; x=1739031258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNz1P4fn6SHLp6Se+/Xd8y5hZ3fQaq8gKIv1BgEs6ZU=;
        b=Gd28UweZoMU5FYmuAH/xDunWhKVgkAOSwdfkuIJvrGCeeFJJLbuqw2t/PhzD/IaNH8
         LEifF5EiDjsg/2fT+wkmQyeEZGylUyfptbKC1OUMLl/j2Cwgm7UTFCmz7f64J33XRPtT
         ocj9bRZlOh0rZaYF+3yuPoBz4ZWnw3J/bGHhgAMmVS49W2tI3oyAt3g65MvfDdl5c29K
         yIctt5n2v5B9XXIxE9kvYBpxMOh9F07uNS+45qlJK7V4ELN1eIrjZ0CgEw8k4tjrvmE5
         ogUTl+exx8eVedvBPpf+mapFx3l+A5Drop4Xs06o857rp511j70HK7Op/xK14E1uNqy7
         Wl6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWn4DPPmZRpXZSjDwnZKjO0XVg2mufnWWCSZLaX26ru/dlWZHO5IB4LkPUrbzf1coO1c3aI7evyzIM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+i+LcgqTEc4qkF4mY2UJOCPbjOznjjcR4pwIB09wER6q0j6eq
	Bzk7x4R9rtE8yUyS1kApy/efn1M3mNz6duGKJl5SqzoyHYcX7h8ZNmFd7SmapAaLSGYsuAzrLKX
	UU4HgXQuSSGw+eoo6/4CsnRmOTL9JNSXgEyo3XQ==
X-Gm-Gg: ASbGncs8D1qseGLof3GzJf9kXr1g77O3E/WXCvnW7824u6kuIG7uaixeGmeMo8WKAKM
	nKncMbOnhYGMpDk0IN/2Lhboa5HzljDwRm2Tw3AtIr1GBAkkXhA/HdAS7lK9hm1AnY+QF8zZj
X-Google-Smtp-Source: AGHT+IGlv2R3jtX2X1VFHTPpZpLbOQdApeKMA2CRHsCTqn123m8l/Z4mj83w+N6PPjEJM/2MUw/JdE1JvqkdgQxw2Mg=
X-Received: by 2002:a2e:a986:0:b0:2ff:5d45:883d with SMTP id
 38308e7fff4ca-307a1126c46mr32671401fa.13.1738426458577; Sat, 01 Feb 2025
 08:14:18 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com> <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com>
In-Reply-To: <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 1 Feb 2025 17:14:07 +0100
X-Gm-Features: AWEUYZnn5tAerJ98yOvgMfMy8eGRnDAVRVuV8JcXFwp2t0YOLgaRfMmHkesJgpU
Message-ID: <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_081420_622687_5430C4AF 
X-CRM114-Status: GOOD (  15.24  )
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

T24gU2F0LCBGZWIgMSwgMjAyNSBhdCA1OjA54oCvUE0gRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJA
YmF5bGlicmUuY29tPiB3cm90ZToKPgo+IE9uIDIvMS8yNSA0OjM2IEFNLCBCYXJ0b3N6IEdvbGFz
emV3c2tpIHdyb3RlOgo+ID4KPiA+IFRoaXMgbG9va3MgZ29vZCB0byBtZSBleGNlcHQgZm9yIG9u
ZSB0aGluZzogdGhlIGZ1bmN0aW9uIHByZWZpeC4gSSB3b3VsZAo+ID4gcmVhbGx5IGFwcHJlY2lh
dGUgaXQgaWYgd2UgY291bGQgc3RheSB3aXRoaW4gdGhlIGV4aXN0aW5nIGdwaW9kXyBuYW1lc3Bh
Y2UgYW5kCj4gPiBub3QgYWRkIGEgbmV3IG9uZSBpbiB0aGUgZm9ybSBvZiBncGlvZHNfLgo+ID4K
PiA+IE1heWJlOiBncGlvZF9tdWx0aXBsZV9zZXRfIG9yIGdwaW9kX2NvbGxlY3RlZF9zZXQuLi4/
Cj4gPgo+ID4gQmFydG9zego+Cj4gSSB3YXMgd2FpdGluZyBmb3Igc29tZW9uZSB0byBjb21wbGFp
biBhYm91dCB0aGUgbmFtaW5nLiA7LSkKPgo+IEkgd2FzIGdvaW5nIGZvciBhcyBzaG9ydCBhcyBw
b3NzaWJsZSwgYnV0IE9LLCB0aGUgbW9zdCBvYnZpb3VzIHByZWZpeCB0byBtZQo+IHdvdWxkIGJl
IGBncGlvX2Rlc2NzXy4uLmAgKHRvIG1hdGNoIHRoZSBmaXJzdCBwYXJhbWV0ZXIpLiBBbnkgb2Jq
ZWN0aW9ucyB0bwo+IHRoYXQ/Cj4KClllcywgb2JqZWN0aW9uISBBcyBmYXIgYXMgYW55IGV4cG9y
dGVkIGludGVyZmFjZXMgZ286IGluIG15IGJvb2sKImdwaW9fIiBpcyB0aGUgcHJlZml4IGZvciBs
ZWdhY3kgc3ltYm9scyB3ZSB3YW50IHRvIGdvIGF3YXkgYW5kCiJncGlvZF8iIGlzIHRoZSBwcmVm
aXggZm9yIGN1cnJlbnQsIGRlc2NyaXB0b3ItYmFzZWQgQVBJLiBBbnl0aGluZwplbHNlIGlzIGEg
bm8tZ28uIEkgcHJlZmVyIGEgbG9uZ2VyIG5hbWUgdGhhdCBzdGFydHMgd2l0aCBncGlvZF8gb3Zl
cgphbnl0aGluZyB0aGF0J3Mgc2hvcnRlciBidXQgZG9lc24ndC4KCkJhcnRvc3oKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
