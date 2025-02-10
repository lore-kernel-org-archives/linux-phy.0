Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81123C021B1
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pYHTh0GgHhmzhCgd6Ki2KjaS7jWnCpqpAbL/+di8zI=; b=mMAkZTpORHk7s/
	7rjGM4XYsIDOnipwCwKTMWh8nkkeV4qdatVSxlp67YL4/33NY/H/zktfRy4guIorsA/+4XcVFph4p
	hmkQnszNTAhN8pG2Xmxf2QhTlZX8Y/Fh9VIasbDkbOnBUlP7qzgDI1Emp8WBcTf3XKO63QC0wm/84
	UM/e+u3ZvLcWnyXJixlt8af1PLbx7qQ8a4Oyyt7jv4yvtVgrsrDGXBTuKr1hYNatG0NbwXP31tghq
	v+AxuUVnvGDUAUM/bV+q7I4w4ormKiPcUk6LfIgufdZee0+Ho6HHQReOCUsLg4hluvAakAdTjuvHs
	xpV8r4W9WvQpJl981bYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgp-00000001kYI-1B3e;
	Mon, 10 Feb 2025 22:55:44 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPy-00000001gT4-06eC
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:19 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3f3b96246bdso697781b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227097; x=1739831897; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zrl0lG0s99SDBuGZ/+AcMLJIAJmPLy1NCd/dBoX8jU8=;
        b=P6IwoSZt5vxc1NGfHNpAM4grX4J5FetS9zmg3GU6frdv2ur+R88ZVFtYC6ImXZjjAn
         a6GdDsDsF2MGH7r3+WbNxHN5tFbd1ABLOJtLxvyFyhK42fR9LuZTddY5d7ADWOWcd3lS
         KR3eYHFyJdUxKYZ3Xlweppn6JMgUjgty3UTgtzi7zFz1DJO9krd9URRZ1VkuTM00BlWu
         a+rk5bbuQGmFWARq6gd9xOVc+PSNOLcFuCTpCdgEwsPqfY8zXTom8wZySRzG3RvBorv0
         Fsb+uAtQFSdXB9cagi8x91mqYUvJXshFS4t85Jmc8jnTFJonOOXeWvKaw8uVayf/oJUv
         ygNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227097; x=1739831897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zrl0lG0s99SDBuGZ/+AcMLJIAJmPLy1NCd/dBoX8jU8=;
        b=sc6DIJf8CCM18iZINRXEslQGG9FtCta0T77OuAICjRycb6wBIsH/CtFxDvFSm+JqmE
         NGo61M/iO3KiUmLskMmxNagoiKQgw9BGTfQ8/AOLevS0IjoJLL7h64SBUcHgFRueM5bQ
         RhtfXI0jSmcCEkHhryhiqSvGC4QrnqC2O2DE5YwTBhXVQ3pRJjach/g1+d5CVhvBh4cr
         XITZkR7XepvpdZ6n6aLkZj2yS76h+f0PBq4ISf1NrQGOFJCJV7f3On2ShMfu34I0TDmE
         2+lsDLesQovtqwe9oJBo1/RZQM2h80HOcZwB1n8PaauIH3JxRWGT1Zq0m6pwUxhzR0Xc
         nt6g==
X-Forwarded-Encrypted: i=1; AJvYcCWpOz6ujCw88fYioHxMXbE+FbqqRlXFZ66C8zTqTj1ij2PtHpJ4OL26/xpxSOv/W26SXJLXnfph6Kk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyprXW2Mgz4MEILw2sfMfxYZJKafEx1B0KBavgqDwyQEFGRlw1H
	Ir5+AgawwUKQjaq/sBavRZqgsXG9HtJZP9Szg6thdoMalZr8jQa9D0U7brelipo=
X-Gm-Gg: ASbGnctfAeyjgTyo6ahc7/P0GkgvkthlDMBWmkZMLe6Eu6fUv2zFJJ2qtG1de/IVQc6
	3XxVnIk5vG8wpf1hcAWTXuuO2D/qvN9rfeoZL6v64TBp4hjWIEIetf6U0DnuuFXMuE7I7KQHHCg
	UkOUDM9FX4LuNAFLakog6UznuZI3fIKwxXvE/yWmuNis1jZtg/U4vk4fmNfyC77iSWkBJ139T6i
	gCosmYUqTCazCkp5sIkf11cv1qXl+bCzu8/4kfDPCapF5yVRdYGb69d8dPz0ZMWPGpJiEh8gAXj
	QdIDeXw7raVTgCgOToNcl4v93rOydSeWIxpW0rEpoQX5DlE=
X-Google-Smtp-Source: AGHT+IENohB4+Vdl15nvUdajyBJJbaG44s39TfMb4Zf97z1Hi7JTuCyMgAhZEnJb83znOkXtS3I7Kg==
X-Received: by 2002:a05:6808:10c7:b0:3f3:be50:2a69 with SMTP id 5614622812f47-3f3be502d24mr1971166b6e.17.1739227097004;
        Mon, 10 Feb 2025 14:38:17 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:38:15 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:41 -0600
Subject: [PATCH v3 15/15] ASoC: adau1701: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-15-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
In-Reply-To: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_143818_066316_FC561D27 
X-CRM114-Status: GOOD (  10.87  )
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

Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
gpiod_set_array_value_cansleep().

Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 sound/soc/codecs/adau1701.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/adau1701.c b/sound/soc/codecs/adau1701.c
index 291249e0a2a32df7dde81904dce2f6be143fc2d7..6876462d8bdbb41d551f776c2d7fe6ed46115fa1 100644
--- a/sound/soc/codecs/adau1701.c
+++ b/sound/soc/codecs/adau1701.c
@@ -325,9 +325,7 @@ static int adau1701_reset(struct snd_soc_component *component, unsigned int clkd
 			__assign_bit(1, values, 1);
 			break;
 		}
-		gpiod_set_array_value_cansleep(adau1701->gpio_pll_mode->ndescs,
-				adau1701->gpio_pll_mode->desc, adau1701->gpio_pll_mode->info,
-				values);
+		gpiod_multi_set_value_cansleep(adau1701->gpio_pll_mode, values);
 	}
 
 	adau1701->pll_clkdiv = clkdiv;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
