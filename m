Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45570C02196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D9/mDDMXEPKbWmN3+cLSfr49VIVF5Xvl+706+UOakW8=; b=pvnCbWmdeSxWI9
	hydxRoV6dGtF9PyBwNIsoIfYV/rQ3iTRGkWNzxlUiw9H5gPTGbSgTZs+pvrgGmknsKvZXYF+6XdMx
	whxeQRBIu24pf4Qt9POBa3m41UwKn7C65F8HSM6QRNcYZqOLE9rEDFMMpIIYwkv+pX1h9JHchAyVk
	OkeFMWOcu4w495sjGvm5KuRz2RSmXwJcUbscqunAUXKq9dUBLDj3EAO6vsZxFFUYPvcsgC6809Q9t
	LYkEbKa4Uhw2MLCEMtuBpS7BmCoN/VEHIf28DwLJyls/sTpCV0cIIUd9a9BH8+/V7vBgcUfIetVzH
	0eCNDiBqEkpQhz1H9b/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfZ-00000007iIz-47gU;
	Thu, 06 Feb 2025 22:48:25 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfW-00000007iHw-3YlP
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:24 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-723442fd88aso446173a34.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882101; x=1739486901; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nTjUVrGhE9LEkuAZwVXSbsr3BolYrhi8U68+FxZFaxQ=;
        b=wu+bQNNPs4to/5Ed+/nEcp36+KIlnaVyQXF8sbc4E3e1SOnVQYYxyOvsau1tAWkfFH
         t1C6mppZSQgsuQgNxFtdfIysWUd/eRiu/WMVAJULOoKhRfpkuP9LR+MMoPQ506+FCoym
         NjvjELLN2js+9Ue9TWvyK97r8dkjuTqNdfUxo9VVSrqdEerNC7RkqEZm8jO/GBhpfM04
         faoic0jBHaMnl6vf4pNjyFYkqj5ejJklr1MoSzKtpXNEdi0QFUX7w992UFuQyJJyrgS3
         l2OsC8zc9SZUKPHh2r2SpDoPiIbvFfo1kmA7lFVzox1Nu9jFZh5np/ntT8RPfzRi/nGV
         QAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882101; x=1739486901;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nTjUVrGhE9LEkuAZwVXSbsr3BolYrhi8U68+FxZFaxQ=;
        b=UnVPx9uvR5yhgRQ5/Bw1i8EvgARUwglYEerQisgWU6vA1rpQ3CL6aEOkXBGcAywSyx
         gGBdDFiGtnRCR8lSa735St/n9/whSXX3iBow624p1dzgs1pC72a6riZn0SqYLqV9Kvt9
         aWgokHwiof8CdjrGGDr5rN/iv/V7MoGrBxRvHdBpEDeFwJXxTkSu48LW7JdKNKZe/34c
         H+lVH5cZOVs/WCxJMzC/MbgrhygBnbbxE1DNa9ewy0qpyoxMSQVPjBzaGBBrfn90PELa
         XL+Fh5YYOMBHTWlXusY5j/TOsHuQR9P9zJPdKZbl/MDH7WDhvuMSM+haPHGE6o7SKGVR
         zODQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGKyjLiQCbHCimT5OQQ4nShVszSPgnOdK2itgb+BZ89oTBN0oyI47ybqZM19CIGWQeXu40yXFDlms=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBXOzkUHlXxLcLnPrPzGPIz+YZlOgHJlGAymt3EYb+LUf5TmFl
	9C0VPDJ56WYDX00z3IQqUY5hz3nlixRAfWrxUMVpRSZCh0BWTCapZXAqy8kJKBo=
X-Gm-Gg: ASbGnct7L5D8PcBjw3w+J0YNN5zcfaLlKM3UTRNK/9jLGNJ0BPqsyoMBKawfOtsbXTl
	qFH87uArBgaTdjQxPeUC9TchpL0NRsV+HrEOerjAC6aFQpi/leaxfW7fvqUkZc5wfV4eKmL5/yJ
	S6tJi8Rd7bwfxAG+UVFpms6h9vaYlVkZzPdUnytbq3SUxyBRy0DIRu/FXepacJibyauZl52GGzj
	ft0Ras3NAOY6KKwpXqlSEpp2wsd5bezf8VxvrQZ/P+PR+/6wvMyIFDSUrOV0Dd1ksj2gT0wXm7c
	TfJzFFfPDMAVtRZZUMqw5zh7yIKp1KUyESV+M2W+BVPe9o8=
X-Google-Smtp-Source: AGHT+IEe89bED7ukyh1rQCd1X1Mi1wrPA7ENfU7mpvKe6wSKoopBL7B45Hnhs3EJFS2hj21RE4OaAw==
X-Received: by 2002:a05:6830:6204:b0:71d:fe93:2570 with SMTP id 46e09a7af769-726b883e93emr835305a34.14.1738882101425;
        Thu, 06 Feb 2025 14:48:21 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:21 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 00/13] gpiolib: add gpiod_multi_set_value_cansleep
Date: Thu, 06 Feb 2025 16:48:14 -0600
Message-Id: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC48pWcC/4WNSw6CQBAFr0JmbZv5oIIr72FYzKeFTpAhPYRIy
 NzdkQu4rEpevV0kZMIk7tUuGFdKFKcC+lQJP9ipR6BQWGipL1IZBf1MERIuYJntBgOOMzK4UFu
 jG3OTwYiynRlf9Dm6z67wQGmJvB03q/rZf8VVgYS2Vb7x3tXhig9nt5Ec49nHt+hyzl9lqEWmv
 QAAAA==
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
 linux-sound@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_144822_894351_5BE78F8A 
X-CRM114-Status: GOOD (  16.15  )
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
give your Acked-by:, otherwise I will resend what is left after the next
kernel release.

---
Changes in v2:
- Renamed new function from gpiods_multi_set_value_cansleep() to
  gpiod_multi_set_value_cansleep()
- Fixed typo in name of replaced function in all commit messages.
- Picked up trailers.
- Link to v1: https://lore.kernel.org/r/20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com

---
David Lechner (13):
      gpiolib: add gpiod_multi_set_value_cansleep()
      auxdisplay: seg-led-gpio: use gpiod_multi_set_value_cansleep
      bus: ts-nbus: validate ts,data-gpios array size
      bus: ts-nbus: use gpiod_multi_set_value_cansleep
      gpio: max3191x: use gpiod_multi_set_value_cansleep
      iio: adc: ad7606: use gpiod_multi_set_value_cansleep
      iio: amplifiers: hmc425a: use gpiod_multi_set_value_cansleep
      iio: resolver: ad2s1210: use gpiod_multi_set_value_cansleep
      mmc: pwrseq_simple: use gpiod_multi_set_value_cansleep
      mux: gpio: use gpiod_multi_set_value_cansleep
      net: mdio: mux-gpio: use gpiod_multi_set_value_cansleep
      phy: mapphone-mdm6600: use gpiod_multi_set_value_cansleep
      ASoC: adau1701: use gpiod_multi_set_value_cansleep

 drivers/auxdisplay/seg-led-gpio.c           |  3 +--
 drivers/bus/ts-nbus.c                       | 10 ++++++----
 drivers/gpio/gpio-max3191x.c                | 18 +++++++-----------
 drivers/iio/adc/ad7606.c                    |  3 +--
 drivers/iio/adc/ad7606_spi.c                |  3 +--
 drivers/iio/amplifiers/hmc425a.c            |  3 +--
 drivers/iio/resolver/ad2s1210.c             |  8 ++------
 drivers/mmc/core/pwrseq_simple.c            |  3 +--
 drivers/mux/gpio.c                          |  4 +---
 drivers/net/mdio/mdio-mux-gpio.c            |  3 +--
 drivers/phy/motorola/phy-mapphone-mdm6600.c |  4 +---
 include/linux/gpio/consumer.h               |  7 +++++++
 sound/soc/codecs/adau1701.c                 |  4 +---
 13 files changed, 31 insertions(+), 42 deletions(-)
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
