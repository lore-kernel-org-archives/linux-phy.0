Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE1CC02199
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 12:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRvru4SVFJy2Pkp7o+bMLXTEEkPAUNFZG57np+tB6NA=; b=VB7SS5/gQJCA1t
	TYgiw4l2zHpUEniG8TKvZSSbr3R9zVQeEDUQivqa9v8KuW/4zlSQ7EeOQ2cvZyrhyaPHyN7BVqs5a
	fYLBs3kpyoDYPKrno61L0ieNEPi01qjHW8u4S1+gPxFbV+n38InaFd+aIzLaSa83Ssxa1q/runupT
	an9N1hcTwKEZlCeM4SQFKNaV7k3heiL7c76Eu5xyrEwezy6X3irb4l/NDq9C7If7lDHsMNGa5KI/6
	UxNvG0fcC4FFp0IBKgMMH4TgE8qpvXBfOZ41WG/VV6mVWrqP+3jt+B/M3SQc8jre/izwEgNk1vwe6
	hD7YCQ93btkhINJ3TwSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNJW-00000009Tf4-2Fu3;
	Fri, 07 Feb 2025 12:18:30 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgNJT-00000009TdN-05xf
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 12:18:28 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-ab7157cf352so602818666b.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 04:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738930706; x=1739535506; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9AnS6zB1IqaiTJ947vhQew0524hQrc2UQ2tC8yNLWiQ=;
        b=gSxhLtCeXDx/ONjXjIwlozKvpQ6PjeQPtJPH24p7622eJv+DCtziD4EKo0AkqYwQEX
         UuX5yPtm9jpZykTXMG6vkfBHbQuCWlve/n9ABbjDhzLHXADjP0GxddNaWCtwI4fmYQ4t
         DN2XkMvjukt3yv02lxbflnJMIYOhqxyQ7LdTaCgRRReAbTgnlPvDLfPgm3EgTW/LNMJS
         b62qXedmi0MJPkLZQCjqngv/VVVDeU8fQF/aw01CAbDfnBghuT5Jx2481u9BBQJK3f4/
         gRuka7x3EfqYWzniyyHSmBeX1trLdrz8hIw1SI+Kjjc0FbDE7CleKClJ3oBAsqIykIO4
         aSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738930706; x=1739535506;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9AnS6zB1IqaiTJ947vhQew0524hQrc2UQ2tC8yNLWiQ=;
        b=ugljLaguSatYpJngpdNQoOT14Hn/7L4AL6hcEdhTIZLXttFB848GXg90yzm6iSplX2
         VC6GqCXvOJje7cuyBN2nA3gakFwynrkeTktyflAqVcaz/M34mL/dwN7GV+fK2b4o+yMR
         J07RiozSy4VfS3iiEpnFNp723hjV34qn8TCf0I51Xr8mFlMgQeNT3GMZHuNSd+7FjHWL
         mPtnw2vWM+ZCJ5lv3J/HO5Uezf0IEBkrEGqP8QBjRS8xXpdUO28K1776v+bK3Jojj3c3
         G/T1RD0gfNwZdhdhhrOGeJsoeye1Gd991L+ilOsXVHKWfQGH58v7ShKD0ZEbwQHPjBT/
         eecQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwRaqYzFVnIsbNEripy8yt30wONOceWeYYbKEzoJHLScBwRrnkVDjXmoPhTsownkvD45kT6be6DGk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsoxNvh5NYZaPLEND9xRn/2VYJfnpgvX0MDBrp/OqXe6LQYnNV
	GgkXP2NMN84Ztoc+11EJsf1x70g0gdfdasAwEkgwG2zCF+MXaJScfjW5hiuZzYeDf4YAQv+ZcYY
	jCN+4v1bIrks1Niv7w+LDfGiHhOU=
X-Gm-Gg: ASbGncvhkIgVpy55yt2sB+EGyRo60XmMADbmnDpJK8lnaxf2dMGuQNaLcsi9eNpm4Fy
	dcob8pwtbxp3pA4XN09fwuRCAcAp8SAgyZ05XLV9s3bNZuW/nSw0afNYvNE+v0NJ7vCoqd7sKkD
	E=
X-Google-Smtp-Source: AGHT+IGlS0cVAd0st91xU2D48nCL2gCa3SCGAKqVvd3cM5wglhTfa7vJ1XBkyOj94B8CwdZQN+GSKTNE0VwWA7/YmEo=
X-Received: by 2002:a17:907:7e97:b0:ab7:63fa:e4ae with SMTP id
 a640c23a62f3a-ab789a9a583mr278038666b.4.1738930705331; Fri, 07 Feb 2025
 04:18:25 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com> <CAHp75Vf+3pc84vV-900Ls64hM1M7Ji6Dmy8FPwL=n0=sJFSuVA@mail.gmail.com>
In-Reply-To: <CAHp75Vf+3pc84vV-900Ls64hM1M7Ji6Dmy8FPwL=n0=sJFSuVA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 7 Feb 2025 14:17:49 +0200
X-Gm-Features: AWEUYZkSs8v-7WJQOys6Nw0fuSh0Pf6jrpjU3caLBhYNMllzG2w7Y5BACdTLgxs
Message-ID: <CAHp75Vdt5EU83mJrB7Sb_pgRNbhvCQ=F2Lyq7mQLAvV-w6cqEA@mail.gmail.com>
Subject: Re: [PATCH v2 04/13] bus: ts-nbus: use gpiod_multi_set_value_cansleep
To: David Lechner <dlechner@baylibre.com>, Yury Norov <yury.norov@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_041827_072485_ED8A8B44 
X-CRM114-Status: UNSURE (   9.99  )
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

K1l1cnkuCgpPbiBGcmksIEZlYiA3LCAyMDI1IGF0IDI6MTXigK9QTSBBbmR5IFNoZXZjaGVua28K
PGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+IE9uIEZyaSwgRmViIDcsIDIwMjUg
YXQgMTI6NDjigK9BTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+IHdyb3Rl
OgoKLi4uCgo+ID4gIHN0YXRpYyB2b2lkIHRzX25idXNfd3JpdGVfYnl0ZShzdHJ1Y3QgdHNfbmJ1
cyAqdHNfbmJ1cywgdTggYnl0ZSkKPiA+ICB7Cj4gPiAtICAgICAgIHN0cnVjdCBncGlvX2Rlc2Nz
ICpncGlvcyA9IHRzX25idXMtPmRhdGE7Cj4gPiAgICAgICAgIERFQ0xBUkVfQklUTUFQKHZhbHVl
cywgOCk7Cj4gPgo+ID4gICAgICAgICB2YWx1ZXNbMF0gPSBieXRlOwo+ID4KPiA+IC0gICAgICAg
Z3Bpb2Rfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKDgsIGdwaW9zLT5kZXNjLCBncGlvcy0+aW5m
bywgdmFsdWVzKTsKPiA+ICsgICAgICAgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKHRz
X25idXMtPmRhdGEsIHZhbHVlcyk7Cj4KPiBBcyBJIHNhaWQgYmVmb3JlLCB0aGlzIGlzIGJ1Z2d5
IGNvZGUgb24gQkU2NC4gTmVlZHMgdG8gYmUgZml4ZWQuCgpPciBpc24ndD8gRG8gd2UgaGF2ZSBh
IHRlc3QgY2FzZSBpbiBiaXRtYXAgZm9yIHN1Y2ggYSBjYXNlPwoKPiA+ICB9CgoKLS0gCldpdGgg
QmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
