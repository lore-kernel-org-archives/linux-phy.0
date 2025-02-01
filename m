Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5331C0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 10:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+K5h7HIIsMnOQ1gml/UORnXARWrLCHNzvMDArg19WbQ=; b=U+YcppbBdSrwrcIn0ahb31vn6H
	5U5KgCptQ5qtnnTX57aYrYVqP7YRvj4R1VE+YQb2Z7xrk2jHBpzqvl2s1B50z3uEMhDa0IiEl1JOm
	DZfPBAEf8aRWwl/tp/AT4St3IX9DsHl5z7ubdyi/7AoGufkS+kix6uORtxKEKILtG8I7a7Ht1Z9eu
	ffXQCZTv+C+xzIphlWyoYkkhOCoEkel7n84w16NxAW6HWaKqKuizojF/6ieaVtmTqWGfYi7MqPYjv
	HANSGUL93nMRDIhGH7SXdQui3eSgJnwkujgBpeYWXUww8+/j6fXxEGi41hpKRVaf6IOflzOYaHabV
	9uMjvDRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teArT-0000000C9hi-1PO5;
	Sat, 01 Feb 2025 10:36:27 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teArQ-0000000C9hI-1xA0
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 10:36:25 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-30034ad2ca3so22059761fa.1
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 02:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738406182; x=1739010982; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=oDdRJ+I4mzWc8IF8+OQqo1T57d81vrjPzSqlTDqBnks=;
        b=rjKTlnK/dn7mDlyA/QCrlRKDw/2REs/fCJYwmsLENXxZVQuRanpFOq3gfdRlGcOa2+
         hgVMWsc7s3PUaG9SZau6ypou1GHg6Cw2T8dnDAo39SfdYzDPY+i2yd6hCHf4PfOMEZGv
         acrwPFd8DTqo/NBjX+SID9MrcaO4j0284YV7a52Yov0ZDPLxHvuBW4VbzEDNh9Aervnv
         mlkSQ+qqxGIEOHBPns6hfcSzilHvypiBms5Vw/JyodVSookVCauJpsInu5jol5xq+Cdh
         3nSJN5m94+IbOiE8n9utPfJqs2sXLPgfEZeA8X9rorMZ3uotGUXY2MQRXNr0ZPe3zAxJ
         0udA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738406182; x=1739010982;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDdRJ+I4mzWc8IF8+OQqo1T57d81vrjPzSqlTDqBnks=;
        b=WohQtPQHbRLTrEn2+d1eKcITUfRDjllUyvej9lqjULR5Lp5eEYu6gNXIxJXsoOSQs+
         05Z16IJsyj92Mis4F0iGZJxD1LQdHfUsi//EsHwD/Yj07zBRbCUl3x50kxgVqd9V7+m5
         yVTmZAv7Uw+1OMRXBKgQqgqvLNm2v42c3t8xr6PheX4dCUtojVvgiZidAmEjbzWIJQFI
         lJpEWJybcoQEes5UmD9eSYve2rWdLx/L/p5JSqmy/8e5c8FOk7Dk4ySrqQ4z9vUEKRbM
         g+moTsxMhEVi9caVIexyZHcJiJ5SVOGLZobzPyfW1IOajAv8HksMDjO4TEObIGbAYNvO
         eGzA==
X-Forwarded-Encrypted: i=1; AJvYcCW2YPFU67tS9n1LUIwIiyT0M31BmeorK0IyI+3pbzxr9WzgQvqjYuL7nIhwEN7Y675jcurOtuJC5Hk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpjICJpvbIm4B2IkRIlwxBAqtAuqyqVLhX/z48jl7A7/XtJv1j
	XSFRE5mi82tKw6611vHDfOAwaUjzSBMdKXIHZ8lYZL4gvPu5l++FeWnS/6J5XGpqYOdzBtU+v2O
	BYt5hwBKNQVP3tpxTgqel56IfDBSerkmLfTghRg==
X-Gm-Gg: ASbGncsZsJY4oImPUMzS1YtwIiGfxbIoNG9+kJLEGnPd5UrddZLN2RtJ/b32faprB7w
	ZTaVJ5/rmYYwI3Jnt/UQWO3f22STzJWM1QAcVfgcv2E+9tKKsHiNrk5AINSUONIOpAzuNSlG5
X-Google-Smtp-Source: AGHT+IG/TVS8htf084OR17kIjfzG2VfKKdd+Zm7iyJX53veJ+z8OFO/m1mmCuR205oUFZ0hgVzWPIgYd5gwR9N1dJcc=
X-Received: by 2002:a05:651c:2116:b0:2ff:d044:61fc with SMTP id
 38308e7fff4ca-3079690e02amr50683871fa.33.1738406181352; Sat, 01 Feb 2025
 02:36:21 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 1 Feb 2025 02:36:20 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 1 Feb 2025 02:36:20 -0800
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
Date: Sat, 1 Feb 2025 02:36:20 -0800
X-Gm-Features: AWEUYZlUDyMyvD5QqatzuRcJ92GC2-lApzNfXLMZZCZq3wVbhWt8z_DF3wi7h90
Message-ID: <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_023624_783108_BE0BE577 
X-CRM114-Status: GOOD (  21.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 31 Jan 2025 21:24:40 +0100, David Lechner <dlechner@baylibre.com> said:
> This series was inspired by some minor annoyance I have experienced a
> few times in recent reviews.
>
> Calling gpiod_set_array_value_cansleep() can be quite verbose due to
> having so many parameters. In most cases, we already have a struct
> gpio_descs that contains the first 3 parameters so we end up with 3 (or
> often even 6) pointer indirections at each call site. Also, people have
> a tendency to want to hard-code the first argument instead of using
> struct gpio_descs.ndescs, often without checking that ndescs >= the
> hard-coded value.
>
> So I'm proposing that we add a gpiods_set_array_value_cansleep()
> function that is a wrapper around gpiod_set_array_value_cansleep()
> that has struct gpio_descs as the first parameter to make it a bit
> easier to read the code and avoid the hard-coding temptation.
>
> I've just done gpiods_set_array_value_cansleep() for now since there
> were over 10 callers of this one. There aren't as many callers of
> the get and atomic variants, but we can add those too if this seems
> like a useful thing to do.
>
> ---
> David Lechner (13):
>       gpiolib: add gpiods_set_array_value_cansleep()
>       auxdisplay: seg-led-gpio: use gpiods_set_array_value_cansleep
>       bus: ts-nbus: validate ts,data-gpios array size
>       bus: ts-nbus: use gpiods_set_array_value_cansleep
>       gpio: max3191x: use gpiods_set_array_value_cansleep
>       iio: adc: ad7606: use gpiods_set_array_value_cansleep
>       iio: amplifiers: hmc425a: use gpiods_set_array_value_cansleep
>       iio: resolver: ad2s1210: use gpiods_set_array_value_cansleep
>       mmc: pwrseq_simple: use gpiods_set_array_value_cansleep
>       mux: gpio: use gpiods_set_array_value_cansleep
>       net: mdio: mux-gpio: use gpiods_set_array_value_cansleep
>       phy: mapphone-mdm6600: use gpiods_set_array_value_cansleep
>       ASoC: adau1701: use gpiods_set_array_value_cansleep
>
>  drivers/auxdisplay/seg-led-gpio.c           |  3 +--
>  drivers/bus/ts-nbus.c                       | 10 ++++++----
>  drivers/gpio/gpio-max3191x.c                | 18 +++++++-----------
>  drivers/iio/adc/ad7606.c                    |  3 +--
>  drivers/iio/adc/ad7606_spi.c                |  3 +--
>  drivers/iio/amplifiers/hmc425a.c            |  3 +--
>  drivers/iio/resolver/ad2s1210.c             |  8 ++------
>  drivers/mmc/core/pwrseq_simple.c            |  3 +--
>  drivers/mux/gpio.c                          |  4 +---
>  drivers/net/mdio/mdio-mux-gpio.c            |  3 +--
>  drivers/phy/motorola/phy-mapphone-mdm6600.c |  4 +---
>  include/linux/gpio/consumer.h               |  7 +++++++
>  sound/soc/codecs/adau1701.c                 |  4 +---
>  13 files changed, 31 insertions(+), 42 deletions(-)
> ---
> base-commit: df4b2bbff898227db0c14264ac7edd634e79f755
> change-id: 20250131-gpio-set-array-helper-bd4a328370d3
>
> Best regards,
> --
> David Lechner <dlechner@baylibre.com>
>
>

This looks good to me except for one thing: the function prefix. I would
really appreciate it if we could stay within the existing gpiod_ namespace and
not add a new one in the form of gpiods_.

Maybe: gpiod_multiple_set_ or gpiod_collected_set...?

Bartosz

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
