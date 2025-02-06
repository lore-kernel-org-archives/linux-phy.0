Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0CFEC02196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Coc9nFmPFHGMI5mY77bnaHcOOPygc3JwfbKdIVpRAM=; b=nLfr0YeQAyeC9D
	XqnHo0rz+NNSrTboilWOmPV34x7OjXgNbVkO7XHIsy0TZu/XIrMx1/H61tHurUgLP355TD5x+tC0E
	rbRQGQ7gpNhpgzfQfYy0NxQiFYIiTOXAfyK6vvmO/VUfctFYS+umqps5wW2U3EhCHuICYPuTLmKJ6
	H/94zV5j08ep+U0W7TkSmajo7jh1BEn3a9COQUXD5wssPitvIotl2lwL+i94Yq7nFxOBGCOPW2JK7
	m31Jch7frZCyReOWKe2q8QwrNZrhsDeBleosoqmhkFG/Ixow15lJLRRmU2NO74Ehpviv/SzdDA0rv
	n10TgWDx/G7h5gmmPDWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfh-00000007iNU-2FPv;
	Thu, 06 Feb 2025 22:48:33 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAff-00000007iLb-1lyn
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:32 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-71ded02b779so880373a34.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882110; x=1739486910; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b7U1tr86Bxzg8KMxqprTIoKXgh7O+YeZXgnU26M/an4=;
        b=lo19AbXfRnN9QNUzTSnl6c2rQI92wUK706bCLuv/xZS7ZR4TxEqX5YvSQ89VKnhpb4
         yuJrV3MgwSlknJKBDuCd2Fc56IfXJhhy8CP4XImrrnDU7jx+yakZwTgytgOr+Td2Rt8r
         IQy7wpHvekE3PwtR0byt2i+PJw+bhSNc1wkYwA1aYg6lYCKUfbkIue+QqZI4hxVZDMD/
         lbySPIU6B8liiasFsOrQh8k0s3jaXDsFmQn9YNht9fmmGUV5LJkhQhbNRAsVptyk3l6i
         xoQiymAAvBGf7xQY4v7FcC4T75t5uU+nQxZDI0NPIGMBS/G6VfUga9Z+2Be0fUO+K5Xc
         A4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882110; x=1739486910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b7U1tr86Bxzg8KMxqprTIoKXgh7O+YeZXgnU26M/an4=;
        b=jfXhKLbvUzxw+NzPDcDOSUxIzlBm+rUdyRclcOEOI8ECG1y8c8uGWNYMocQfg8rlP2
         jr9foppIscC1hFMdbSBiRYos3ngyPWBicuUZ7Fc+jWGVWJBj93b1VxUXnPkL5ltvqcu/
         GXSTFHxCVxwaZQkVHQMP/S4FsXJA00sAdt/hViJFrVEWCHuT1EkE72qam54n74eggCWA
         UHhQ6NW5c+0i/xT26byJWhTCNy3emfJBWzNiasVzlQY7f/QDjCqxVOZ3WSt5Cg20UpmB
         a2yhFL2MSPSGazGDtpF8JDJ9q8wqqCcKB5mL35Bnv+SLAoG+g2VFU+dKjwtIwnkUpqzv
         0AuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMhNAQbOSueJAnlnrwX8f3gsGkixJRne6RouJlNLGATcyAm5JQk1QkXtIXF9cGtFWQUvYlOkDnG1Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0Trh52BWkqybyLLvtA9nNoHyREkR4mXZMqaxOP84jcTho0nt1
	4JtwlTZApJZmnUrcrZ2eLe6UJ6J5O1Vx5HAnXR0Ycd/kWdd97MdanE+33xE2S20=
X-Gm-Gg: ASbGncvc35R5Brzx5CsxsT+IeV8mNiFoTCGktgELwwbyXxpoi4J+Mc5pNIdvb2EWhyj
	QhHVAp1gsrS9MJ4ggLI16NFfeBU/zvIE+e3EXCzVBy6Iy+Th9y33hzI5WpaoKrBacO/o7w0aBMH
	gF54SyAK/o8dk5t1IE6N9JOyEBmZOYkrb1n3ulSDEXC4McJYPx4PdoMutTsrsEOevl0YXZjTSyD
	SR7GOWHLeJs+CC9wP3Up1Iaqbpey65D/cUiTKzAqiuQEqrlpGUeokQC4ATmYpVM7KzqC/PmWMGh
	G4+ruu6H/nHFyqI8+tEgH6yx9FKYhw36WdzUVox/A24wqjE=
X-Google-Smtp-Source: AGHT+IH50vqJ+UKd/x8agnmRsrebnsoHILBPEML/hHVzdaMwyiH1jtZh+WCDNiEdIClFYG2pC1GB1g==
X-Received: by 2002:a05:6830:6710:b0:715:3258:4ea9 with SMTP id 46e09a7af769-726b88023b4mr646049a34.16.1738882110277;
        Thu, 06 Feb 2025 14:48:30 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:28 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:20 -0600
Subject: [PATCH v2 06/13] iio: adc: ad7606: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-6-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144831_471147_C35BA1F3 
X-CRM114-Status: GOOD (  13.90  )
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
gpiod_set_array_value().

These are not called in an atomic context, so changing to the cansleep
variant is fine.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ad7606.c     | 3 +--
 drivers/iio/adc/ad7606_spi.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index d8e3c7a43678c57470a5118715637a68b39125c1..9a124139924e4a4fbbbd234a8514eb77024442b3 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -818,8 +818,7 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
 
 	values[0] = val & GENMASK(2, 0);
 
-	gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
-			      st->gpio_os->info, values);
+	gpiod_multi_set_value_cansleep(st->gpio_os, values);
 
 	/* AD7616 requires a reset to update value */
 	if (st->chip_info->os_req_reset)
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index e2c1475257065c98bf8e2512bda921d6d88a3002..0fc41275e79f3af282c0ee4f31e222bbe8d8c1d2 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -297,8 +297,7 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 	 * otherwise, they must be hardwired to VDD
 	 */
 	if (st->gpio_os) {
-		gpiod_set_array_value(st->gpio_os->ndescs,
-				      st->gpio_os->desc, st->gpio_os->info, os);
+		gpiod_multi_set_value_cansleep(st->gpio_os, os);
 	}
 	/* OS of 128 and 256 are available only in software mode */
 	st->oversampling_avail = ad7606B_oversampling_avail;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
