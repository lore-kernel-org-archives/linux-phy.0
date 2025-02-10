Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40BCEC02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+9Dv5BcETQN/3vxfV7DPcqg1xZjWvQXcQ1P3r2TAmzM=; b=ZC4bKNYZjvbyM5
	IlrmaIj5nPi1zS83w/vgB11xayYkKLGt9RfNgRQsZLInwxWrlsH4EyQvM9JxKJZusxUpUyovuh/cz
	oqxWJXS6GM9K8ausOrBQt4oDwgw/sw3f8yXMdwLH+A7hqQ+t7VvfIU1mBEkjFlJUfZag0LVEoBFaI
	/1a+/e7t4CDL8XeDwT12o27Ddu90R4cCzBceujAagQbMX4h8OZ4h0mzRx465EW4GJ/paKEzFgFDxO
	klzducLnZjt/yrmOkeRZo14rMIre7uUhOJyBBaGRDAQiSyWeEJb6KQryVWF4QNQBFKH1dWWStM65G
	oNJYW/9emF36Vzyeq+Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgl-00000001kRN-030U;
	Mon, 10 Feb 2025 22:55:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPK-00000001gJ3-3YWT
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=Ab4LJ9OfN5R35QeUwpcAeHgQPVCquBOJeARRwrwUU60=; b=TngUuf+rcXv24UpttKP/xf31Go
	HoIpdaJlIrM4oGQ+EqfaslzfOaukglwKLl41RD9ejltjPA7FmHwQI7gcDdNUqPlAGC4zGJX4swt1R
	R7BH4LSJlo0CJpaerpJvAALJMOAGbgkn/azWEZOY4vPsjuaSpRqnNFW0wft0jj5BZnfZsCfYrbMef
	KiOmv8gKn5iNDDW1Yc/l/IHTUgcvjIciJzDWc3/90pP86RSAMIzGHaPcOYgBJvXOLjcZR4KGzVcTi
	xU3WTXcXgr/bNimMulIVgoCrraCD04ZNP6N3s3OT6EC2AgdPjysIzp22GtmoxidnK4ngcCDQ5eqXF
	vfmvwoMw==;
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPH-00000000KMj-0PcI
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:37 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3f3ace3d30eso1142586b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227050; x=1739831850; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ab4LJ9OfN5R35QeUwpcAeHgQPVCquBOJeARRwrwUU60=;
        b=P3/eVnXVXPXJnTXYREFvPdK/pWTrcziW0IvwqKtPGpQU8mxo9MdgzACLHGSMS8XNrY
         9wGfZ0ftm1EctWi0/SEBfIJlk7cDZhHOFgfcK23SyKa14GfAb9wmG8SZIXVggYCN/ddy
         Hm8snOaWafk5Foc3O5FXykUdjsHRfmTkam4PrNlOvdX6vrqFYuGWXVD5rM9tIfA03EMK
         aCBGlHc4xKVQDNhFAsKYaE+LqcJ9eaPzoHFYJhDTuFumXM0Sft2A7d7i8QKKODLYXcdt
         N5tRXx4RwsEpplEGxusfBMzYyBHIm5nUJQexeYYD5K60xeMj+Jq7wmM6zgDRIfctMEC1
         OX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227050; x=1739831850;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ab4LJ9OfN5R35QeUwpcAeHgQPVCquBOJeARRwrwUU60=;
        b=vU26ghhG266T56SeE8UAustqIPek5+YQ8iv2Lk5aowtoITYpq3SR+0sabLjxPjCg3R
         muQS+dg0Ic5E7QBe9jZqz8mJcb6w99PE+Fu9gZMCsWyceoXVw6cgex9CcDqjRGWf3cQU
         XHcbWW5lnt9+BbLP4ps2/r7m/EBwuw7o0F5T8MoxfRTxt9t7X5plbgOBof/VWAuIbrZQ
         j/4B/agLjTXmVdJVKV0AvEZcK8LNzMZNRueco5KzboY2w4oEaKF7gKSbNaLgg59hGZpp
         xXiRkIoanJQ0RVJMKrh64iq3buRTfj093/lBKcWYi0ge2vk486RkCb9WFKVBtpap8P2f
         uYNg==
X-Forwarded-Encrypted: i=1; AJvYcCV1UC3TvTLVIkwJJBUAIDJVdtxGE58LwB1pb4vYgwgLDFMOteGgvUU8icJk4HHZYswiZHqITclgjqI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfApXjxEVrJ/aqUwOoi3i+mWHUBI9Gwk5PW259dVe2eMnZcWYC
	8a2sfPJ1/dA0mL34jnjSuN7BWbtSngF87+bcS7oYsh0/fwmzsh4dEUjSiLMInZI=
X-Gm-Gg: ASbGncsdn/X8Po+zoZKM7aqrpkVpVjiQoLDKjCsq+Y84MxLy/EPRYx3HQzMAicUOQcL
	E8kI/VzaRlmSHpyiN0UhIWg07YklvSuGDa01S35DaaT2XFgAZ9s07pZehrlRwUNHWocFrTRaE0C
	XhtHSJkVC+pPcqkcZoxMptA06jLcBKxCOQUHw2g4dT80lpDfUhPWpWTKH9PExApkyzII81qR/bs
	qOZCrdDnyPyf/sr0vhMIWcPeBvK6Dg0VyjoG2E87mHzAk87aNc4PfKG8qhZvxCDAWbtnHfqeJtq
	PgibhbTvQjEW+NulTuRHM7V6ohmfEhs2oOGuz14pN3XEDvA=
X-Google-Smtp-Source: AGHT+IFEgA0pJb7eJnXxFcDkmebwOZge9kDnXmYCEiBKRqgUBP3v1eLeI1sEGHGrzyQ56T+MANckEg==
X-Received: by 2002:a05:6808:18a3:b0:3f3:bf98:c4b1 with SMTP id 5614622812f47-3f3bf98c976mr1193202b6e.33.1739227049851;
        Mon, 10 Feb 2025 14:37:29 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:28 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
Date: Mon, 10 Feb 2025 16:33:26 -0600
Message-Id: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALZ+qmcC/4XNywrCMBCF4VeRrB3JpVdXvoe4SNJpG6hNmZRgK
 X13024EQVz+B+ablQUkh4FdTysjjC44P6ZQ5xOzvR47BNekZpLLnAsloJuch4AzaCK9QI/DhAS
 mybSSlSp5o1i6nQhb9zrc+yN178LsaTneRLGv/8QogENdC1tZa7KmwJvRy+AM4cX6J9vRKD+Q5
 MUvSCZI2LzlWdWWtVVf0LZtb7b5zjgGAQAA
X-Change-ID: 20250131-gpio-set-array-helper-bd4a328370d3
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-sound@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy.shevchenko@gmail.com>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_223735_487530_54F55641 
X-CRM114-Status: GOOD (  16.52  )
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

This series was inspired by some minor annoyance I have experienced a
few times in recent reviews.

Calling gpiod_set_array_value_cansleep() can be quite verbose due to
having so many parameters. In most cases, we already have a struct
gpio_descs that contains the first 3 parameters so we end up with 3 (or
often even 6) pointer indirections at each call site. Also, people have
a tendency to want to hard-code the first argument instead of using
struct gpio_descs.ndescs, often without checking that ndescs >= the
hard-coded value.

So I'm proposing that we add a gpiod_multi_set_value_cansleep()
function that is a wrapper around gpiod_set_array_value_cansleep()
that has struct gpio_descs as the first parameter to make it a bit
easier to read the code and avoid the hard-coding temptation.

I've just done gpiod_multi_set_value_cansleep() for now since there
were over 10 callers of this one. There aren't as many callers of
the get and atomic variants, but we can add those too if this seems
like a useful thing to do.

Maintainers, if you prefer to have this go through the gpio tree, please
give your Acked-by:. Several maintainers have also requested an
immutable branch, so I expect that will be made available. And if there
is anything leftover after the next kernel release, I will resend it.

---
Changes in v3:
- Added IS_ERR_OR_NULL() check to gpiod_multi_set_value_cansleep()
- Added new patches to clean up accessing bitmap directly (ts-nbus, ad2s1210).
- Added function prefix for max3191x.
- Removed unnecessary braces in ad7606 patch.
- Picked up additional trailers.
- Link to v2: https://lore.kernel.org/r/20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com

Changes in v2:
- Renamed new function from gpiods_multi_set_value_cansleep() to
  gpiod_multi_set_value_cansleep()
- Fixed typo in name of replaced function in all commit messages.
- Picked up trailers.
- Link to v1: https://lore.kernel.org/r/20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com

---
David Lechner (15):
      gpiolib: add gpiod_multi_set_value_cansleep()
      auxdisplay: seg-led-gpio: use gpiod_multi_set_value_cansleep
      bus: ts-nbus: validate ts,data-gpios array size
      bus: ts-nbus: use gpiod_multi_set_value_cansleep
      bus: ts-nbus: use bitmap_get_value8()
      gpio: max3191x: use gpiod_multi_set_value_cansleep
      iio: adc: ad7606: use gpiod_multi_set_value_cansleep
      iio: amplifiers: hmc425a: use gpiod_multi_set_value_cansleep
      iio: resolver: ad2s1210: use gpiod_multi_set_value_cansleep
      iio: resolver: ad2s1210: use bitmap_write
      mmc: pwrseq_simple: use gpiod_multi_set_value_cansleep
      mux: gpio: use gpiod_multi_set_value_cansleep
      net: mdio: mux-gpio: use gpiod_multi_set_value_cansleep
      phy: mapphone-mdm6600: use gpiod_multi_set_value_cansleep
      ASoC: adau1701: use gpiod_multi_set_value_cansleep

 drivers/auxdisplay/seg-led-gpio.c           |  3 +--
 drivers/bus/ts-nbus.c                       | 15 +++++++++------
 drivers/gpio/gpio-max3191x.c                | 18 +++++++-----------
 drivers/iio/adc/ad7606.c                    |  3 +--
 drivers/iio/adc/ad7606_spi.c                |  7 +++----
 drivers/iio/amplifiers/hmc425a.c            |  3 +--
 drivers/iio/resolver/ad2s1210.c             | 13 +++++--------
 drivers/mmc/core/pwrseq_simple.c            |  3 +--
 drivers/mux/gpio.c                          |  4 +---
 drivers/net/mdio/mdio-mux-gpio.c            |  3 +--
 drivers/phy/motorola/phy-mapphone-mdm6600.c |  4 +---
 include/linux/gpio/consumer.h               | 11 +++++++++++
 sound/soc/codecs/adau1701.c                 |  4 +---
 13 files changed, 43 insertions(+), 48 deletions(-)
---
base-commit: df4b2bbff898227db0c14264ac7edd634e79f755
change-id: 20250131-gpio-set-array-helper-bd4a328370d3

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
