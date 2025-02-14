Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CDABC02198
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 14:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVzdqGR8+zwzOrjScSycbQ4PSjP2XDaTSZTkuBFdSY4=; b=YWzIm5A8iFgeKC
	25Ol9jDSMSDMEprvanDaH0JvEdbGJuRqgg9zyf+6ljuJ0k/LHZzgHIjwonAfXtB4+QkLPLmpsFGde
	DlnQDyXpN6YLpyxhUgYivCh0CDl/SBQpDojintLBpkkttTrlJaYHE9KS8A8LIP++xwlIgiFm9SxmZ
	Yw5wKb1bRuIfT0KezRQ12NsIFrv+uBAGxd4LywDTPsT4T7tovhdx+iu6zxScOq1SHwZiwtOAklk6B
	OyJ9CsP3gXeTW9CpGKOlD68rUEKX9d07xXRJOPoEK1nxfUKSdX6qaNMHdaWNoLZhWL0pbi3vt+AaI
	X95Zd9MQf6d+F4TzEj0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwz7-0000000FD6r-3Agz;
	Fri, 14 Feb 2025 14:48:05 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwnA-0000000FAuO-32hu
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 14:35:45 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-ab2b29dfc65so317824066b.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Feb 2025 06:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739543742; x=1740148542; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0N53k3Mv7p8S+u3QWaaS2dkskmcl5RUICb2LIij7Obo=;
        b=iTlIKQBVryS42IXyaopCZD4SMBBKzqeqs4+f2K9AY6BbD8/9T1e3DRSSe51bcA0Iea
         UAePvTHymPIjwzwrG9ThKG1kQRoeBJii9bga4op4LQ2CT4iyzyzBn5KYn1JyZwFDVUBG
         ZjYssZCqvviuPme2RG14T3NzajOyBKVoZcp/5lNI0TXdrl0fTYKzvdpgIahMoZqabmHN
         HQq/RHAw5xXp9PptFdpMVLceictbVrQ3Ipd3gzsuJBt+cnEmt6acBEZtBogDW5EiG79b
         OR5C5IB2ZW9PrhFQN0qBmz8NL9yYGa2bU5P3Txqx1JXPPtl6qan28XLNh4FTzpkNEj4z
         EJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739543742; x=1740148542;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0N53k3Mv7p8S+u3QWaaS2dkskmcl5RUICb2LIij7Obo=;
        b=TNsaaA44/+b4yJ1QJEEOhnZrCCkjK8gUurBqYeggj8+P0EWUhlaqEQlQ8eaDF/U89T
         +DXr7aOEdcQ7VR5lff9yEB18FRx3CorhwEm6ye7SHtjAs+/bNqi3dU7dSUuUbdjRAp5a
         n+KMxanngv2QgzvriymoyEzJYrOdxAqpHBzBQ6HPn50BDDo9ppaf0VUUECCdaBjrgMFi
         ZpCWDUsxVOJAHlhlRZdHD4Fqv/bvPtMmp9n7wOUCEvS7zSe8tlHllbXMZwxW/BSZvqDW
         g9rmn9PBac8w/vvW/4tK5zfpz/tYuGTweJKWKsxwOg7u1DEdXlHVGjea1WM93GqODeob
         f/QQ==
X-Forwarded-Encrypted: i=1; AJvYcCU27FB6QVLU57iesI4M556f/Ks5qveZCJ5hkR2pZ2BKG556EKDd5Rr3ZWFfZLQ/BA/zz1G94Op1FmU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMNGIXNzgEn9xub9Tf6lBiko4fAzaE4QlOB0wfvg4wNarU9AVs
	vYgNo67LYzRffUy2NIRCWfxhwMRZiVxLoEnnLyNgeYtcr6POtg0YnRGdd04Wcy3RKPIlzUg7oYr
	BKkm7g3pMyOEgI4CZaVSU8X2aAGI=
X-Gm-Gg: ASbGncvVpKPSk5DlL0P2y5kKVfwab3zGS7TpZAIdAAgAvTMzBWQ+S9lIfAE7J17Z5l5
	VEfCICqJJ35NDjjzxGrXqRKAmPltXmzbgMcp8erTH6wiv0WIfXh2cHrWx1Dd6WIQwVWqgRC943u
	o=
X-Google-Smtp-Source: AGHT+IHxLwa+LdK+RIXBQ61ufPDBdw4TCe0dzmGVWhQ+eDRL2W7fpPEWqmtiDOs8fU5xo2LozSswPlPXUTchqM8RUgI=
X-Received: by 2002:a17:907:7251:b0:ab6:d7c5:124 with SMTP id
 a640c23a62f3a-ab7f347db92mr1285351166b.43.1739543741827; Fri, 14 Feb 2025
 06:35:41 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com> <173952845012.57797.11986673064009251713.b4-ty@linaro.org>
In-Reply-To: <173952845012.57797.11986673064009251713.b4-ty@linaro.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 14 Feb 2025 16:35:04 +0200
X-Gm-Features: AWEUYZkvU1c5l4b-twNM_d1j1Z5Bjc4iuI1xUAHGQWgComsx2eFjxZsFC8qZig0
Message-ID: <CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
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
X-CRM114-CacheID: sfid-20250214_063544_761109_043B3C32 
X-CRM114-Status: GOOD (  10.13  )
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

T24gRnJpLCBGZWIgMTQsIDIwMjUgYXQgMTI6MjHigK9QTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKPiBPbiBNb24sIDEwIEZlYiAyMDI1IDE2OjMzOjI2IC0wNjAw
LCBEYXZpZCBMZWNobmVyIHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgd2FzIGluc3BpcmVkIGJ5IHNv
bWUgbWlub3IgYW5ub3lhbmNlIEkgaGF2ZSBleHBlcmllbmNlZCBhCj4gPiBmZXcgdGltZXMgaW4g
cmVjZW50IHJldmlld3MuCgouLi4KCj4gWzA3LzE1XSBpaW86IGFkYzogYWQ3NjA2OiB1c2UgZ3Bp
b2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gICAgICAgICBjb21taXQ6IDgyMDNiYzgxZjAy
NWEzZmIwODQzNTdhM2Q4YTZlYjMwNTNiYzYxM2EKPiBbMDgvMTVdIGlpbzogYW1wbGlmaWVyczog
aG1jNDI1YTogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ICAgICAgICAgY29t
bWl0OiBlMThkMzU5YjBhMTMyZWI2NjE5ODM2ZDFiZjcwMWY1YjNiNTMyOTliCj4gWzA5LzE1XSBp
aW86IHJlc29sdmVyOiBhZDJzMTIxMDogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVl
cAo+ICAgICAgICAgY29tbWl0OiA3OTIwZGYyOWYwZGQzYWFlM2FjZDhhNzExNWQ1YTI1NDE0ZWVk
NjhmCj4gWzEwLzE1XSBpaW86IHJlc29sdmVyOiBhZDJzMTIxMDogdXNlIGJpdG1hcF93cml0ZQo+
ICAgICAgICAgY29tbWl0OiBhNjdlNDUwNTVlYTkwMDQ4MzcyMDY2ODExZGE3YzdmZTJkOTFmOWFh
CgpGV0lXLCBKb25hdGhhbiB1c3VhbGx5IHRha2VzIGNhcmUgb2YgcGF0Y2ggcXVldWUgb24gd2Vl
a2VuZHMuCkJ1dCB3aGF0ZXZlciwgaXQncyBub3QgbXkgYnVzaW5lc3MgYWZ0ZXIgYWxsIDotKQoK
LS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
