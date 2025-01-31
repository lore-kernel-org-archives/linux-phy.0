Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5731C0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SsarTmFGYBdgPdOAo9xelP+EhlJRm5U8QswebjClTAc=; b=KbRVBG8f2XDSkg
	v67PGs39SIZjP6dF2ZJ5z1IEAONKC5/HX8j32IhkF/7p8uX+L5tc96cUJNyu8/XB5ODhDNTZ1kYPm
	vN/1BzDUIcDL6T1R0sOis2cjsw/McWzK3G+bOlxWfe7/h7cdlF30BAL/3aJG9qytXmikdfejUSs0P
	DncuVFU/fZItAbdMTlqKpbJhFYRb9LhjHglXWWoOBKpmSSH8sLXNGgICorsp21y6Ro8SUkyiWoPPC
	Kw1Hppe7gnV92GkHo89rY/WGVJWNbIxnl+/Z7lBEVoWlw/tSJUPMQR8AbQf+ZH5juiVczHpjpAMmN
	L1kldEOAju2nr073xxqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZK-0000000BMl3-2Xmb;
	Fri, 31 Jan 2025 20:24:50 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZH-0000000BMkQ-13pU
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:24:49 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5f6497fbccbso1877146eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355085; x=1738959885; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jn/Ny7UFv/UH6iRtjr6jsBabEKLnDl2l7pEqvfjMtFM=;
        b=0yEuFNDBUGXx+00J3BUBdN0AdmgDsU9d24iDmpL9zZjqyylZADRLAliozBTxMMPDP4
         Ty66pEw7HJ8i2IYHHVDuftnSLMQYv9rOT9aRA/P6ii1AujWrRkRavcoTNya1qIMX27Yy
         2zQ+PlvJJEfrxX3/FHfZAnY5MBPdX8XqMwWTt7sZAAMclNY4f+reLTlT18yeY8bI6O/C
         ySgTDDRD4yTSWsBDNDi+qJHAxDqXxsqX5AIcg0WGEVI1pcKxIHwWA5MAU4YYoaoRHcYu
         AUWSMt4QqSsAklSmGDTFU0OfArxALQsS2524i4l7ydKV/qNmEW9XGGk17kzsjDFVYxG1
         3Mrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355085; x=1738959885;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jn/Ny7UFv/UH6iRtjr6jsBabEKLnDl2l7pEqvfjMtFM=;
        b=nX3hl7hcsNfclT07+e+DhVtutc+9lAvVOpkmzZX9aG7LkGIwYOP5QaeHgsvMKP8F8J
         PCbJyp8GOaw0ebBl3BvYaI3xW6JZHRk56tG+ODhjHuCIRzvRI1PACBipXGsAOCjq1Afn
         MjO8Tg9+FQbtxxhz/bSCEZt7uHNlheng6gS4fUtR/pidENX199xGSVoRWpW+/V6g7cdB
         9aCOBfJov0ClD3WD9BRj+f53Odc7vinpBjA4Xa5TiS7/YG5A4UwNCHcnbdLV05PS/rqI
         5YPba3ca4zJGPmG6xNrpM4sQXZpR4MgRNwu8plyoNtWyG+TeE/uwRrXf8gIrJehDabIw
         WOsw==
X-Forwarded-Encrypted: i=1; AJvYcCWcDJ8s8fXjT03Z2TnbF6//oeFqHofeyrF4YDhYvHKsACKDRICowI6FcRhkRaRzjcvWnZekI59u7OM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/OWvus+1ArM2m+kHHYFssTlny59LHsEVERZRPAP6f9mOYLpoh
	sgVDngA+meH0qq0YxqbQu+4yLcYKi0jHsloCJluuV5HuVig/hS0p5Y6dUUB7nao=
X-Gm-Gg: ASbGnctAyoGPGb+EFeAKsBzAn9yNsRuY/SQ+fyAcCczl20u1X3FQCE+vz1eW5cltaTT
	cetElOrEw2YClewdJBnghmpoen8bMzm/HP8UsyjjlthP9l41GFHgyUZfL7Cv5fQxRDyaPaCuOQt
	WMybW07flEilF6rb4Mu+sqh+ulzrJJSkeTxqrq6oq6A1OgNprJI+3W/qhdxS07CYul4CmqcV2Tq
	23HpwgGAq7C8YgxXQHQmsbbkC1grZ1L+SxLUGY75WkAn0pyMfUB9Hsm+LLjwZMWHb4EYWvwgUFH
	jpQ+cpnlrDKfkRwVvuiHJ+0i7kkXI4mNO8ysefqL5Qk8kQo=
X-Google-Smtp-Source: AGHT+IEA6MI3/eVAdqj25y/O52sPRoTGczW1O2gqmD31jZVU/w0qKc/rISzimaZq3KsB0lB7wfNBfQ==
X-Received: by 2002:a05:6871:a581:b0:2b3:8c07:6461 with SMTP id 586e51a60fabf-2b38c07814dmr1466360fac.19.1738355085268;
        Fri, 31 Jan 2025 12:24:45 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:44 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
Date: Fri, 31 Jan 2025 14:24:40 -0600
Message-Id: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIgxnWcC/x3M3QpAQBBA4VfRXJvaHyKvIhfLjjUltlmJ5N1tL
 r+Lcx5IJEwJuuIBoZMT71uGLguYFrcFQvbZYJSplbYaQ+QdEx3oRNyNC62RBEdfOWta2yhvIbd
 RaObr//bD+35rVoI+ZwAAAA==
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
X-CRM114-CacheID: sfid-20250131_122447_522649_BFE471B5 
X-CRM114-Status: GOOD (  13.60  )
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

So I'm proposing that we add a gpiods_set_array_value_cansleep()
function that is a wrapper around gpiod_set_array_value_cansleep()
that has struct gpio_descs as the first parameter to make it a bit
easier to read the code and avoid the hard-coding temptation.

I've just done gpiods_set_array_value_cansleep() for now since there
were over 10 callers of this one. There aren't as many callers of
the get and atomic variants, but we can add those too if this seems
like a useful thing to do.

---
David Lechner (13):
      gpiolib: add gpiods_set_array_value_cansleep()
      auxdisplay: seg-led-gpio: use gpiods_set_array_value_cansleep
      bus: ts-nbus: validate ts,data-gpios array size
      bus: ts-nbus: use gpiods_set_array_value_cansleep
      gpio: max3191x: use gpiods_set_array_value_cansleep
      iio: adc: ad7606: use gpiods_set_array_value_cansleep
      iio: amplifiers: hmc425a: use gpiods_set_array_value_cansleep
      iio: resolver: ad2s1210: use gpiods_set_array_value_cansleep
      mmc: pwrseq_simple: use gpiods_set_array_value_cansleep
      mux: gpio: use gpiods_set_array_value_cansleep
      net: mdio: mux-gpio: use gpiods_set_array_value_cansleep
      phy: mapphone-mdm6600: use gpiods_set_array_value_cansleep
      ASoC: adau1701: use gpiods_set_array_value_cansleep

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
