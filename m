Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA01C021A4
	for <linux-phy@archiver.kernel.org>; Sun, 16 Feb 2025 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZwXTe5Wns1e2LH0C+V4xjg3JVpGLZ4P7HEOLCcvHNI=; b=XkzSU8067O16uR
	eQt6wOcGa23IYfhfXiu1XBPMkj1ioTRCKANZZ1tNEkjcO7dNbQ+iSATuypcnTFt/jsCK6+xggxVLA
	Ak77lkPl6PwqTZbL6Lc1Sq3PWjRTX2PWFhaplUvQovcddL30kuTLA4pD1ZQByLAXkYM8VxYqIGgJT
	C4g2q9OXWd2Cc+GdUBTORz0jfMlBnB9qo2yLhbfoZMVfUkN54f/sdJtZNELiJQqMXbvlYsRbWS4p/
	ZoOX5Xam+rLb/7IaM6sY88DpKlVIQwWxLUOwyAJezusMU7zU+BJzosNPcCnyeSFHug0rRGyGRY/rC
	eJfegGL8WYUpgv5AYKZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgzJ-000000023lF-2MuY;
	Sun, 16 Feb 2025 15:55:21 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgzG-000000023ke-2P3N
	for linux-phy@lists.infradead.org;
	Sun, 16 Feb 2025 15:55:20 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5452ca02bdbso2027121e87.1
        for <linux-phy@lists.infradead.org>; Sun, 16 Feb 2025 07:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739721316; x=1740326116; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkW3Uzq4pFyxE3zKB7NeWEe8NL5/OGKMv8Mar8FWkgQ=;
        b=osfhsJYZKm7M+q7IhFX9tt7p0TaV2FxwCFHR2lsG+/CzZyGm4XhBpHC5aDYYTU6Tsw
         MX1axcZv/+LivMyX48NRRR8ODX3124Bozpq7chrLQ1lPK7/R77Xutg7KCjy4NmZ3wLJT
         G2qFXeTWV55HgGDWzZ3e/EJgbRWhkT3d4CrHw9LKxgMSH5sJL1dKjOaJi1EYDD6EJbbn
         U3Pphrfe4NiyxNxvpE2o67k8aNcByE+sbBKIEO/RFOMVnHwkdGSmQI+JjrCOC9Oofqx8
         Idw5wQC7iBU6JqEbpehNOcMlg+UmX+lulo/qguPb588bF8Nz53Yl1LMIOb8XMsZ2KzVi
         z9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739721316; x=1740326116;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WkW3Uzq4pFyxE3zKB7NeWEe8NL5/OGKMv8Mar8FWkgQ=;
        b=RWOZ68TMCkRVRcz3bxu5UjxVvbbhUO8wBG/EODFKOGu3LhylI25Ys46mqgQXpSnn0w
         K3n/LX4bPEojLOc7Phrr7AmOYexyg8nfRpr2Masv5TgZaHclh5NH7sGIx7P3KeBiz3UG
         XitK69hRkPAfs8jxIes2JKqzeJlt76z9frNr2INBEg8sHoWNH4u6JVQ3h9FFQcPXZomG
         JqFhhYA1mWoDglJmOsP4HlpLX8jZX9HNzYmzKLyRVHNMh9dV0WUadlbBt561cmsXTf7j
         7ZP9rUjTZlPS7gtHb2WsmPyg9W1ik/dojA/KcvGvxNWCsId9UFk8J68VGX/w6xJnXU9e
         QmBw==
X-Forwarded-Encrypted: i=1; AJvYcCXT2q3uvp7jKPzXEjZesmxt+39wd5jbj/tnFF8JXDxMC/4lGqPQGOYiqcu2fjRnfl4Mj8PibQ2b0M4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzerTzbjmLIZZPW4pR6VsyzAN1027i0Wd8ZS91oqnckGUGNoJm9
	ZWwoMk3keKMGmz4zK4A1O+XQLtG7G+O/vH1YGQYALwAeTKwMAvDmlvsYVyDpovlHZsIHUz0jORO
	eLN0tUJTT/ZottOQPAM9L2mCFTE4BaBtKzD/3cw==
X-Gm-Gg: ASbGncu9c9q8E7gKVHubusCwf3A9IEUZ/bbAOpiMjmRzU8usYFO2ctwgNlp4D160aDs
	0/EvBO3e2Ei7ZK6tDRHTmRCSwTYi4nprhNNpasT9O5UfgszHcWVP9c0GKFctx0yDr73oglMtHl1
	jnA1XgOEmvvXlK5TTG3sTbo7RUgB1G
X-Google-Smtp-Source: AGHT+IG2BEfJtto7vZKlWMr7rwzaPz49+FDMar4oAHkHlYmVolmXyGHpWwSYEsdEq+L5tztvS5LmTmktUkAulacIOqw=
X-Received: by 2002:a05:6512:3dab:b0:545:d72:95e5 with SMTP id
 2adb3069b0e04-5452fe2e42cmr2095090e87.7.1739721315922; Sun, 16 Feb 2025
 07:55:15 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173952845012.57797.11986673064009251713.b4-ty@linaro.org>
 <CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
 <CAMRc=MefPRs-REL=OpuUFJe=MVbmeqqodp+wCxLCE8CQqdL4gQ@mail.gmail.com> <20250216142313.743af564@jic23-huawei>
In-Reply-To: <20250216142313.743af564@jic23-huawei>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sun, 16 Feb 2025 16:55:04 +0100
X-Gm-Features: AWEUYZm8mDhVubH4-WZdsHqF8a_56E8frsslpTDc00yv0WTOnH25v97UXrDvKPg
Message-ID: <CAMRc=Meq639NMz6TuOw=xQ_A8VDwA5OXoXU47JNt7x0C7jDtGQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
To: Jonathan Cameron <jic23@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, David Lechner <dlechner@baylibre.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_075518_871085_D6503565 
X-CRM114-Status: GOOD (  16.26  )
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

T24gU3VuLCBGZWIgMTYsIDIwMjUgYXQgMzoyM+KAr1BNIEpvbmF0aGFuIENhbWVyb24gPGppYzIz
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCAxNCBGZWIgMjAyNSAxNTozNzo0OCArMDEw
MAo+IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gPiBPbiBG
cmksIEZlYiAxNCwgMjAyNSBhdCAzOjM14oCvUE0gQW5keSBTaGV2Y2hlbmtvCj4gPiA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIEZyaSwgRmViIDE0LCAy
MDI1IGF0IDEyOjIx4oCvUE0gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3Jv
dGU6Cj4gPiA+ID4gT24gTW9uLCAxMCBGZWIgMjAyNSAxNjozMzoyNiAtMDYwMCwgRGF2aWQgTGVj
aG5lciB3cm90ZToKPiA+ID4gPiA+IFRoaXMgc2VyaWVzIHdhcyBpbnNwaXJlZCBieSBzb21lIG1p
bm9yIGFubm95YW5jZSBJIGhhdmUgZXhwZXJpZW5jZWQgYQo+ID4gPiA+ID4gZmV3IHRpbWVzIGlu
IHJlY2VudCByZXZpZXdzLgo+ID4gPgo+ID4gPiAuLi4KPiA+ID4KPiA+ID4gPiBbMDcvMTVdIGlp
bzogYWRjOiBhZDc2MDY6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAKPiA+ID4g
PiAgICAgICAgIGNvbW1pdDogODIwM2JjODFmMDI1YTNmYjA4NDM1N2EzZDhhNmViMzA1M2JjNjEz
YQo+ID4gPiA+IFswOC8xNV0gaWlvOiBhbXBsaWZpZXJzOiBobWM0MjVhOiB1c2UgZ3Bpb2RfbXVs
dGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gPiA+ID4gICAgICAgICBjb21taXQ6IGUxOGQzNTliMGEx
MzJlYjY2MTk4MzZkMWJmNzAxZjViM2I1MzI5OWIKPiA+ID4gPiBbMDkvMTVdIGlpbzogcmVzb2x2
ZXI6IGFkMnMxMjEwOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gPiA+ID4g
ICAgICAgICBjb21taXQ6IDc5MjBkZjI5ZjBkZDNhYWUzYWNkOGE3MTE1ZDVhMjU0MTRlZWQ2OGYK
PiA+ID4gPiBbMTAvMTVdIGlpbzogcmVzb2x2ZXI6IGFkMnMxMjEwOiB1c2UgYml0bWFwX3dyaXRl
Cj4gPiA+ID4gICAgICAgICBjb21taXQ6IGE2N2U0NTA1NWVhOTAwNDgzNzIwNjY4MTFkYTdjN2Zl
MmQ5MWY5YWEKPiA+ID4KPiA+ID4gRldJVywgSm9uYXRoYW4gdXN1YWxseSB0YWtlcyBjYXJlIG9m
IHBhdGNoIHF1ZXVlIG9uIHdlZWtlbmRzLgo+ID4gPiBCdXQgd2hhdGV2ZXIsIGl0J3Mgbm90IG15
IGJ1c2luZXNzIGFmdGVyIGFsbCA6LSkKPiA+ID4KPiA+Cj4gPiBUb28gbWFueSBjb25mbGljdGlu
ZyBzdWdnZXN0aW9ucy4gSSBqdXN0IHBpY2tlZCB1cCBhbGwgQWNrZWQgcGF0Y2hlcy4gwq9cXyjj
g4QpXy/Crwo+Cj4gUmVzb2x1dGlvbiBvZiBhbnkgaXNzdWVzICdzaG91bGQnIGJlIGVhc3kgZW5v
dWdoLiBMZXQncyBrZWVwIGFuIGV5ZSBvbiBob3cKPiBpdCBnb2VzIGFzIG90aGVyIHNlcmllcyBo
aXQgTGludXggbmV4dC4gIE1pZ2h0IGJlIGEgbGl0dGxlIHdvcmsgdG8gYmUgZG9uZSB0aGVyZQo+
IGFuZCBieSBMaW51cyBpbiBuZXh0IG1lcmdlIHdpbmRvdy4KPgo+IEpvbmF0aGFuCj4KCkknbSB0
b3RhbGx5IGZpbmUgd2l0aCByZW1vdmluZyB0aGUgaWlvIGNvbW1pdHMgZnJvbSBteSBxdWV1ZSBp
ZiB5b3UKcHJlZmVyIHRvIHRha2UgdGhlbS4KCkJhcnRvc3oKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
