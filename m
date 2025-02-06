Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED3AC0219B
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogCypZgbMCVk5MViYwS/koqgqEu+ncFqz9OrZ3ndJ0g=; b=Vw8nrdrQ9N6T5q
	k2C1G0RH22wtsctuFgk1KFCjvrhJBzOGH5SJLWqmJxTSQuucns7EXr9vXFMfuVZy8bT0ff/bmB+Y8
	T8UIIhx2Y7cMTDFXTS8g2+NZl08yE1QP2O2rrvRWI7dHoj/hGHULNn8vQA3i/dHb5S9/6YJxwa2Qz
	j7z5OVjh0bZf0n6SKX3i9M39KB3n0sLVzC4mX8J0SEdFtoGiGNzhjNTcgaKwDv/wXnfOXOMYtbUXU
	Ox2BxNP5cwnt6LGKrr8jZoTY1TuXtuPFGswdPMHlf9a0J6FtwWttf2Fi0qfGYoEQq2J8quvGq+bwj
	0BK5LdBQcWug+uWDjTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAff-00000007iLc-00Qz;
	Thu, 06 Feb 2025 22:48:31 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfd-00000007iKV-0Dpp
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:30 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5f4ce54feb8so813326eaf.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882108; x=1739486908; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1G+5KuhaA9Y/JWZMuBnNAEnz6cO9OcsXFwLiAeC3p1s=;
        b=1v0B3reZ8VdrFQXLTGxDdO+KIhlrrSTRuVwjjD90/Fs1Va83OmMUwp6DaIZQgY3TK+
         9/zP1JXEuFqvfbALVBs1Ae77GLWgNt2VM5V9RMzHoFIEBkfwocFGlQpOJ+CLzBYoz+iq
         bpjzJWIOBvAZWKpBn7kYRU31wYZkn0r1FtV8Mukt6NTMW7j02F4M+tVeNu7lMlJvGMav
         DI5/2K7wtd73xEAg5G8rgiK8zjElFfp7HYtgMjTmF+OgG8Fv0Awz0BAQVQPm9sgsVrOA
         GfoXWhSH5mRIXEVVeCw1BLPFFiR8xx0KlvmUMt96L5RJij+48I/ts3ZV6QlPFQ8BeRC7
         AoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882108; x=1739486908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1G+5KuhaA9Y/JWZMuBnNAEnz6cO9OcsXFwLiAeC3p1s=;
        b=ETMsd1l8L+qNgvMEU9qoWil6dy9KlUUfEIlyNfCnbMHgRr9r/JEHHK4h/LebVvkr7s
         EyYF7OIgMxHg6nc1c+sxi0tOGJVbF8vBXvqG/Qw2kf+FW4lrj5mNBQo0i2xNSf5P0Fns
         QHw2rdMAbNUtZU/Zrfm5ZUsEjnBNy8e7rgiZsGFIr/X8ij5cFFH0IAJcbh1dt7HwOrjS
         wKdO+993eKCu6bl4lzvjjQtqfFCcws1kP1MW5IWr/vD0W5zdgr4CzXqU0ONL9LcZnHep
         bUT/q6tPeBNO5+iN1a7eAjRG89WAW/3xKaP+VYKGwSnEI2LRCGattNrLWgiKWeHVRGq7
         eYow==
X-Forwarded-Encrypted: i=1; AJvYcCUATKLDxSKWyML6Uk7LWRbqU9d+aG+TgjKB+ED+/5EWzG+iPihkfwYsR2HB8Lc1DB+P5U6GalojpWw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNHFEOzpvLwVw4rQ2ET1cF7+v0N9zFRZ9tRbe3TEW0vnhffM3X
	2+X0Bd1QV3f9jFhvAsx6ui0HSvh8965JMrhFGi6BpTOwecMyOOyewa8oiG0NRck=
X-Gm-Gg: ASbGncsKZWtsP4uhSit4X0NCHykYldGax2aimHuVwPXHMdoALW2cr1lvC3QJUoqBgnu
	KL4mxnM6wScu9gMgT7dBeTYzvRD0JJoIzGP0nX8mr+COmwkTEIyr4urSji/bNmcFGHWh1kpSL2J
	Z1kk4hv/meKyUSzj8PSAI/rXRa7FdJqIW3sAd9f0vAXXtpf+tJPkkQmgJX7m68/BIttbAy7Yfd6
	9Ec7m28sl6/Fxqi3K2E/wmb6S10LmgBetNMPC8FdQVSMMRX2NHlOGHu3jr+I7RcwTEvGpSioxvu
	hHO1j/q/1TsSDaVRUUNWRF/8EJfDrVrGIpxh3Iyvesca2fk=
X-Google-Smtp-Source: AGHT+IHhS6xIbsoZ9Y9JyXWh4zSyrZ2jgd8SnPiV9tauY6RFNa0jyaYnEj0rYnfG1jHSP16xj2DPIg==
X-Received: by 2002:a05:6871:70e:b0:29f:b7f1:d844 with SMTP id 586e51a60fabf-2b83eb6727cmr752453fac.2.1738882108087;
        Thu, 06 Feb 2025 14:48:28 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:27 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:19 -0600
Subject: [PATCH v2 05/13] gpio: max3191x: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-5-1c5f048f79c3@baylibre.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144829_100745_AA9DDB80 
X-CRM114-Status: GOOD (  11.72  )
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

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/gpio/gpio-max3191x.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpio/gpio-max3191x.c b/drivers/gpio/gpio-max3191x.c
index bbacc714632b70e672a3d8494636fbc40dfea8ec..36ca07be3e1811fd3f0b27f41bfd307de50ec5b4 100644
--- a/drivers/gpio/gpio-max3191x.c
+++ b/drivers/gpio/gpio-max3191x.c
@@ -309,23 +309,21 @@ static int max3191x_set_config(struct gpio_chip *gpio, unsigned int offset,
 	return 0;
 }
 
-static void gpiod_set_array_single_value_cansleep(unsigned int ndescs,
-						  struct gpio_desc **desc,
-						  struct gpio_array *info,
+static void gpiod_set_array_single_value_cansleep(struct gpio_descs *descs,
 						  int value)
 {
 	unsigned long *values;
 
-	values = bitmap_alloc(ndescs, GFP_KERNEL);
+	values = bitmap_alloc(descs->ndescs, GFP_KERNEL);
 	if (!values)
 		return;
 
 	if (value)
-		bitmap_fill(values, ndescs);
+		bitmap_fill(values, descs->ndescs);
 	else
-		bitmap_zero(values, ndescs);
+		bitmap_zero(values, descs->ndescs);
 
-	gpiod_set_array_value_cansleep(ndescs, desc, info, values);
+	gpiod_multi_set_value_cansleep(descs, values);
 	bitmap_free(values);
 }
 
@@ -396,10 +394,8 @@ static int max3191x_probe(struct spi_device *spi)
 	max3191x->mode = device_property_read_bool(dev, "maxim,modesel-8bit")
 				 ? STATUS_BYTE_DISABLED : STATUS_BYTE_ENABLED;
 	if (max3191x->modesel_pins)
-		gpiod_set_array_single_value_cansleep(
-				 max3191x->modesel_pins->ndescs,
-				 max3191x->modesel_pins->desc,
-				 max3191x->modesel_pins->info, max3191x->mode);
+		gpiod_set_array_single_value_cansleep(max3191x->modesel_pins,
+						      max3191x->mode);
 
 	max3191x->ignore_uv = device_property_read_bool(dev,
 						  "maxim,ignore-undervoltage");

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
