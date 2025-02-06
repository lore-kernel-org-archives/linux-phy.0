Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84058C02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsDl7aLYzZqgdNFJK1eP/EtiKcVjPAgyb3yD0JefTJA=; b=mLlPKeKIoL9dUH
	xIxj9Q5a9h9nM6LmSVmrm2lIAirR1fYIxGUwMLZucHI9gfpOKrkNHhDUblePU/daQYUj3ogBpSzjO
	uZ4Z4MSsTne4fqCNcdlzQFKpqOZQANab26s8OulkyDPVAFz5Q+ntAu9XMsR/2gq1TeoqKUfNtfuvL
	OgoNHolmksxOLwT6bkKfEpIaHNSaP06FwF/OsQQHWfImMegi0P33sp0X3Ea3pIsYzUbkHh0BHC17e
	+2vVfWuZRiKuoMbROjKx8qVeZTJ3i0fmMsvzP/mjN/Bqo5cY1H+qPcpgvWxgowUxRcU2cSk6gcHsG
	fuP0guU5TlVb5Wc3mkZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfj-00000007iOr-1Dz8;
	Thu, 06 Feb 2025 22:48:35 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfh-00000007iN9-1MRq
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:34 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-71e2766994bso849776a34.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882112; x=1739486912; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qt9BcvBwXw7VI7drRQ9jRI7HoN4iY1rdT776+r9izwk=;
        b=TSZpQ2vFYYydpR6dQLMtGcnH44BaaXw6w9XArNlkXXQP0U6BFe5/V3xxHjDG0Du3zt
         OqSPilftiHdeU5AuZR3pHlnAVTSjiU1qNpduKJL3eh9Mi5F9NDCDHrkyFk4gUL45QgWt
         HW1vp6PZ+DnqdIotY8NlPrprFl+lnFzKr9BnMV2uIuBzKZkb0SGaBSEeGzh6XIqyQvM4
         IkvWTnw553nOx0mVJzTP53ex9K5EI+nRF2XlgbsD87tWMXrbI2IwA+msN8Dzn60UDQB0
         +IYDprBg8SJgSXsaEOVlOZtqjJIeUbGV1CBIKfoRltY/pbTSd5d6rjZxIWtlKy+i1RHS
         XdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882112; x=1739486912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qt9BcvBwXw7VI7drRQ9jRI7HoN4iY1rdT776+r9izwk=;
        b=eZotjvS0M7BEzMXuXr9/tXMWimvNK9JCwT6o+xZcQX74qUMhPco/oM/gM9BUvKifNT
         ut4SzI8d14fdq3E7gPUxFgiqfHXB8PFfjlxkj8IhokjWgP97MLPy1t5XZBHCBBc7EaYz
         xGTJ105047bGhMi9/Zgdm4uqdKL+AqDqr1YG135vL6aRPQkA1ZDhB2x8/8eCNah/1qhc
         kKF/B6e5lRE5GveV4NFP4Oa6xGUpPIoSS/jJuhU97miiacKrV+SSfycz5VjrBsh7mvHP
         vt6itWm6mBpAULWlTMZMF+y4n1tYBzOvfMEKIGTKjE6sjYSIZsetoNiZJXRs6oC4UfBh
         GBpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRdSiN3RydHhDtV2IaGtPrfk0KP/3jGdQzDSG+2OmhsA9GOFGTEy0E9qFFto8lS+WWvEN0QTGGzkE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKCwPotaDECVn7jnAauKhre5uLIWpDq9BhoRt2xy79vIU5rYl6
	6ioEjk9QP4KhqA4R0E4+nLvXeoRxUjxrYzl2J9d5nOMUnrwJr+avZxkiwOwtXhY=
X-Gm-Gg: ASbGncviVRV9s2x55t/qZzWFN+IQXLOf+BtVzzXzm7bG/GZW8FEB22fP4ZPdFFSDjs6
	wufkvsY1JIAdak1vQD3C2Keir5cCxJn6Ta96NpCUKQPLdmC+lJk1E86SpxWZbzZUBFH9VajVN7F
	/ZXp6FezI1UWc1nV4Dj/i1yw+ixQ30bPwiZ6z/mZYIqDxZCqMvPVPyefax1ZPaHWRkVAI0XkWoG
	9PtCGoKGQ7MVP3x03vz01P+SBBAT/Ezmza/JzFNHQ8Q1YiE54MmdJAtIefButaiC3MUHX0B7kOA
	lJm7dAy6Ich8fr8FUlhi7a9OM4xmc2JFQnE7w7tHopWi2kM=
X-Google-Smtp-Source: AGHT+IHXxKi2A/XYeV5UWyLNbvoQ8dEflCn5kPNBQNuzG5uM6VGTHdJPWbFF8OVEjlJC3/X0uqQhvA==
X-Received: by 2002:a05:6830:668e:b0:71e:48b1:ad28 with SMTP id 46e09a7af769-726b87b3665mr815075a34.4.1738882112753;
        Thu, 06 Feb 2025 14:48:32 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:32 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:22 -0600
Subject: [PATCH v2 08/13] iio: resolver: ad2s1210: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-8-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144833_369358_919EF70F 
X-CRM114-Status: GOOD (  11.96  )
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
 drivers/iio/resolver/ad2s1210.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
index b681129a99b6cf399668bf01a1f5a15fbc4f95b8..7f18df790157f1e411fb70de193a49f0677c999f 100644
--- a/drivers/iio/resolver/ad2s1210.c
+++ b/drivers/iio/resolver/ad2s1210.c
@@ -182,8 +182,7 @@ static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
 
 	bitmap[0] = mode;
 
-	return gpiod_set_array_value(gpios->ndescs, gpios->desc, gpios->info,
-				     bitmap);
+	return gpiod_multi_set_value_cansleep(gpios, bitmap);
 }
 
 /*
@@ -1473,10 +1472,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
 
 		bitmap[0] = st->resolution;
 
-		ret = gpiod_set_array_value(resolution_gpios->ndescs,
-					    resolution_gpios->desc,
-					    resolution_gpios->info,
-					    bitmap);
+		ret = gpiod_multi_set_value_cansleep(resolution_gpios, bitmap);
 		if (ret < 0)
 			return dev_err_probe(dev, ret,
 					     "failed to set resolution gpios\n");

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
