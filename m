Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C523C021AA
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 13:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNP/oG3P5xUnEcbUGJ7aU8MIu5EPCQXnEeA+7qp4QyQ=; b=u7S/8bh3c9rdhP
	IUDS7tyA+VBf/0rPAZWLfVhLoMnizivyZ5Rbd7u6Q/TijOeTVnFAX7xy6aqLD1a+QJwjjyED48loY
	pSJd3A9jH7Oq/9A/BZQuAVx3EnuifS5QyDAPNoQ+5oBdfsepSaGJUhcBYD2R9B6lSp4qO4OnfaQi8
	g4cHI/eJDMXvKJpUw/PWr5FgJF0fosKmaD8pxmdBgkVhyaJafmgkNaLZAmx/k5++QNIXU+BWNjtpX
	v43tpm3gEgoaodVGsS4JNoy4sUDnCI6x0xuoTubYAXAXBj/mJ7p3Oed9nR+FCRdg1rqQYrVP9DUzB
	80nv1rOeobaSWm9Ew0og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk1FF-00000004gHD-1cHa;
	Mon, 17 Feb 2025 13:33:09 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk17Q-00000004eKq-1Mys
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 13:25:05 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5454f00fc8dso1532356e87.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Feb 2025 05:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739798702; x=1740403502; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiVy1LLX/U1j468xBgrLR30ZUfJCR/waZMXhb8yr69M=;
        b=HuUpftKUSIbUIDcSiKeNqBQJFu/8gRxjyKqe6if4Jj3ACwjJAccf7qVLLQG7xebRDH
         /fN0Ar2syRRwOfYrEvYFT6kvtqCYZ1AsB5GNf4jiTSOBgHdLsQhLkv7BIAOtf71o/Up2
         6xSlUHNCKPO/i2RBerQNRqtTvCcB/AmrJ9qWSr9iv2euN00Ly0ovPTEMZaknto+VogSl
         bKSj7qo7Jr7jnm9o4sLI0PBRnlmNXFczuNL7jLyWhVyhjtXv0RYtPxOWfeSbi7nV2Jcw
         yNdikB9m5qr+/5FxAoQlyf/eF5FBjuPwgfR68byePq/aXj3cbUeB2Wltga+CEQWpIsH9
         Pd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739798702; x=1740403502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QiVy1LLX/U1j468xBgrLR30ZUfJCR/waZMXhb8yr69M=;
        b=Pp2fnsxV14bPWkQKpOmo0CIMn2FRJD+WL/ebj4OIPuPIWFd3qd+47ACorYQ/Q+SvkN
         ESv6p5YmJWrV4GH3Up4J3p7qgAXJ36dRHn9alxAJIXbbyw9BMyXP2a0isUhqfHgMZzJy
         t3FmehOpEQwIX4ozU8l1r9xQJcXDBx921KlgBiPvCGY2lqplMRyfwtcPR0gQy7pIQdBX
         ImTYndNRlLPbujbrxS4iufLcIOkhXhbN/y7pibY479aSSc2puGZjPPKIo1k2kwqbynk/
         ekLxOYpU9COUGU3xsXAibXk8FDuWH/Hc0PxJb7uxgz8yoTyM7EW9V65XIoKy9hmj1K/S
         2kxg==
X-Forwarded-Encrypted: i=1; AJvYcCVTwmM4BVfAlXh8q4Kpo7WeBiS1sDP1UTBT7+Npu8h2AOpKUAozX8nCbrCa0sYjM1wbpfNjtWKpfkk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWb3LkEwovIAsYLMzmh/utxU4aN86+zmelY1kzwm/Ru0zmpEud
	LNUA7nE8WhfKxYb4f/oeiWGyYevtXslWug10Jtf7gzGKZwT/XgKLnKsyEniOfOyK0BpBo3ohTqf
	V2RTNE0RKKijhIT4d2v+9qe4qLFTcUhb0kzYM5Q==
X-Gm-Gg: ASbGncvN8DClmZMgjEZ9sc3McSRm9CsM2zXdH4wUXG9+o+PkUJHIlul19OIwIM9Apwu
	7h5DkZ7XH1H7kXJXc231kunEUEWrezxHN4xeQSFoI3ua87k1LA7jTIGdb7GqB7LiLphRLJNjWe3
	Lee5xj03GkLdrQwT+Fp6tRxAJvGA==
X-Google-Smtp-Source: AGHT+IEb6JHw/5PakMZCVTYAlw84c60jmNtNM9WQpCnIP/Vmd74RSHMRaGMUWCimKY7la7twkBPZRBodM2VgArHLkgI=
X-Received: by 2002:a05:6512:2396:b0:545:bb6:8e32 with SMTP id
 2adb3069b0e04-5452fe2eb21mr2817688e87.12.1739798702259; Mon, 17 Feb 2025
 05:25:02 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173952845012.57797.11986673064009251713.b4-ty@linaro.org>
 <CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
 <CAMRc=MefPRs-REL=OpuUFJe=MVbmeqqodp+wCxLCE8CQqdL4gQ@mail.gmail.com>
 <20250216142313.743af564@jic23-huawei> <CAMRc=Meq639NMz6TuOw=xQ_A8VDwA5OXoXU47JNt7x0C7jDtGQ@mail.gmail.com>
 <20250217131110.5803b68b@jic23-huawei>
In-Reply-To: <20250217131110.5803b68b@jic23-huawei>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 17 Feb 2025 14:24:51 +0100
X-Gm-Features: AWEUYZmts5pHMv-WTAD5H0ycHChA4PeALdc-KhHeVO2LZrBUG0P1He-nzm1gLUk
Message-ID: <CAMRc=McM-f3NKGGPs9UCzDyOO2Fw_N+2HzyTPajcZiPTAUXDUw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250217_052504_623034_AB16EEA0 
X-CRM114-Status: GOOD (  21.35  )
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

T24gTW9uLCBGZWIgMTcsIDIwMjUgYXQgMjoxMeKAr1BNIEpvbmF0aGFuIENhbWVyb24gPGppYzIz
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gU3VuLCAxNiBGZWIgMjAyNSAxNjo1NTowNCArMDEw
MAo+IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gPiBPbiBT
dW4sIEZlYiAxNiwgMjAyNSBhdCAzOjIz4oCvUE0gSm9uYXRoYW4gQ2FtZXJvbiA8amljMjNAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIEZyaSwgMTQgRmViIDIwMjUgMTU6Mzc6NDgg
KzAxMDAKPiA+ID4gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4g
PiA+Cj4gPiA+ID4gT24gRnJpLCBGZWIgMTQsIDIwMjUgYXQgMzozNeKAr1BNIEFuZHkgU2hldmNo
ZW5rbwo+ID4gPiA+IDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBPbiBGcmksIEZlYiAxNCwgMjAyNSBhdCAxMjoyMeKAr1BNIEJhcnRvc3ogR29s
YXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBNb24sIDEwIEZl
YiAyMDI1IDE2OjMzOjI2IC0wNjAwLCBEYXZpZCBMZWNobmVyIHdyb3RlOgo+ID4gPiA+ID4gPiA+
IFRoaXMgc2VyaWVzIHdhcyBpbnNwaXJlZCBieSBzb21lIG1pbm9yIGFubm95YW5jZSBJIGhhdmUg
ZXhwZXJpZW5jZWQgYQo+ID4gPiA+ID4gPiA+IGZldyB0aW1lcyBpbiByZWNlbnQgcmV2aWV3cy4K
PiA+ID4gPiA+Cj4gPiA+ID4gPiAuLi4KPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFswNy8xNV0gaWlv
OiBhZGM6IGFkNzYwNjogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4gPiA+
ID4gPiAgICAgICAgIGNvbW1pdDogODIwM2JjODFmMDI1YTNmYjA4NDM1N2EzZDhhNmViMzA1M2Jj
NjEzYQo+ID4gPiA+ID4gPiBbMDgvMTVdIGlpbzogYW1wbGlmaWVyczogaG1jNDI1YTogdXNlIGdw
aW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4gPiA+ID4gPiAgICAgICAgIGNvbW1pdDog
ZTE4ZDM1OWIwYTEzMmViNjYxOTgzNmQxYmY3MDFmNWIzYjUzMjk5Ygo+ID4gPiA+ID4gPiBbMDkv
MTVdIGlpbzogcmVzb2x2ZXI6IGFkMnMxMjEwOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2Nh
bnNsZWVwCj4gPiA+ID4gPiA+ICAgICAgICAgY29tbWl0OiA3OTIwZGYyOWYwZGQzYWFlM2FjZDhh
NzExNWQ1YTI1NDE0ZWVkNjhmCj4gPiA+ID4gPiA+IFsxMC8xNV0gaWlvOiByZXNvbHZlcjogYWQy
czEyMTA6IHVzZSBiaXRtYXBfd3JpdGUKPiA+ID4gPiA+ID4gICAgICAgICBjb21taXQ6IGE2N2U0
NTA1NWVhOTAwNDgzNzIwNjY4MTFkYTdjN2ZlMmQ5MWY5YWEKPiA+ID4gPiA+Cj4gPiA+ID4gPiBG
V0lXLCBKb25hdGhhbiB1c3VhbGx5IHRha2VzIGNhcmUgb2YgcGF0Y2ggcXVldWUgb24gd2Vla2Vu
ZHMuCj4gPiA+ID4gPiBCdXQgd2hhdGV2ZXIsIGl0J3Mgbm90IG15IGJ1c2luZXNzIGFmdGVyIGFs
bCA6LSkKPiA+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBUb28gbWFueSBjb25mbGljdGluZyBzdWdn
ZXN0aW9ucy4gSSBqdXN0IHBpY2tlZCB1cCBhbGwgQWNrZWQgcGF0Y2hlcy4gwq9cXyjjg4QpXy/C
rwo+ID4gPgo+ID4gPiBSZXNvbHV0aW9uIG9mIGFueSBpc3N1ZXMgJ3Nob3VsZCcgYmUgZWFzeSBl
bm91Z2guIExldCdzIGtlZXAgYW4gZXllIG9uIGhvdwo+ID4gPiBpdCBnb2VzIGFzIG90aGVyIHNl
cmllcyBoaXQgTGludXggbmV4dC4gIE1pZ2h0IGJlIGEgbGl0dGxlIHdvcmsgdG8gYmUgZG9uZSB0
aGVyZQo+ID4gPiBhbmQgYnkgTGludXMgaW4gbmV4dCBtZXJnZSB3aW5kb3cuCj4gPiA+Cj4gPiA+
IEpvbmF0aGFuCj4gPiA+Cj4gPgo+ID4gSSdtIHRvdGFsbHkgZmluZSB3aXRoIHJlbW92aW5nIHRo
ZSBpaW8gY29tbWl0cyBmcm9tIG15IHF1ZXVlIGlmIHlvdQo+ID4gcHJlZmVyIHRvIHRha2UgdGhl
bS4KPiA+Cj4gSGkgQmFydG9zeiwKPgo+IFRoYXQncyBwcm9iYWJseSBnb2luZyB0byBwcm92ZSBz
bGlnaHRseSBsZXNzIHBhaW5mdWwsIHNvIHBsZWFzZSBkby4KPiBJJ2xsIG1lcmdlIGluIHRoYXQg
aW1tdXRhYmxlIHRhZyBhbmQgcGljayB0aGVtIHVwIG9uY2UgeW91J3ZlIGRyb3BwZWQgdGhlbS4K
PgoKRG9uZSwgeW91IGNhbiBwdXNoIHlvdXIgYnJhbmNoIG91dCBhbmQgdGhlIG5leHQgIm5leHQi
IHNob3VsZCBiZSBvayBub3cuCgpCYXJ0CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
