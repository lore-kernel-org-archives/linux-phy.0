Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E4FC021AB
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN53qPRX6m8hHEesF+w1afNHB5HoeaqePnKQ+8oSsfM=; b=YzyfWlSJfPj1Rm
	zP6aLDS6yZ9/KH6tEO7GBfS5Y5y250JpZX0MmZJ5zBKvdsgiC/67KxdnACeK1ikIQOoRDSvlVuL3I
	5lAkOo7jv4pkTmGDUZ7hMm3EjPhWriiG/p0jc56F320wtNsEgFW4o9egXg8wpWkdKoQcv3+5RrR4+
	aYy+yqnIP8jYcKil30y+IPjfdoQZ3hl9k+SDDgWjCY1HIiF/PAPk6114+uQOQ0t/I1izpmqnamT3e
	qjajRZWanSWh58HJqsFFvNAy6ZxHAuANouqFkWXLfbe+7YUQYZD1tgPq1lfY3YzLCfvemjFu+AvHy
	SdyIigwLRGcAmPzgD6og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgn-00000001kVz-3SD4;
	Mon, 10 Feb 2025 22:55:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPj-00000001gOU-2jw7
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=teHDghklDJ1V7cAi8g37Bvg2ko8a0NpXKiatSq796/g=; b=YbArmSs1thBnuU1LsIEXSMDUx2
	ZRi4wjBWwFtRPvBk96VT6n6klMBVeQTKprYxLSfH66X9HQuyA6c8SFBbpY91iKg8SERKXWV96baAX
	U5bXNp3xGuytqzYHcU/RfUwtBP1D402oggTWyTwnoW471OjZq+y4Z6rawNi/2qa9EnJ2PhpZB/Yq4
	HD29t69W+GZoXFj5IB7GEVIXR04QL9COFYSDpZPZKt3cp6VMNXnLh7l1BUA/vZHZbGM0by9dYv2K5
	DHaT0q20cHNircJ5aAQNeZN0KU6WbfXY8rYePW0uzOHQmI4/BK3YTrRGD7BM3nVd6wgnjIJwmm1g2
	ma/AQkTA==;
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPg-00000000KRv-2B4X
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:02 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3f3b46db87eso881306b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227078; x=1739831878; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=teHDghklDJ1V7cAi8g37Bvg2ko8a0NpXKiatSq796/g=;
        b=RyMVqfXW20TXfmKALd9qW4l+gbMCss5HzempNlDcq5+oHJHMmhJL33fvSqaRdYQ+Fn
         SjqmO3sS4k7y8shiuaHqzITWJQZNOejgEDEQHc8FmhJUeLx6Q7JZ/zOwiG941wZgr5W4
         x7rDctBNjwQE0UD81XVHu5OqOfgPp67ThoYVY9ephvF6TE4yXWJzsm03buvnl0V/Nn5o
         BcVRtwhheEi6SRhvjDluYy+m0hoV26+2xr9I8sx3fhS14j0V1Gc1wQj0MX9yDDuWeF//
         rIkwgroIRAClmXw28UMEPlRKEyeq7deTKSK3wXxQwbGEY5ckOj5bYfGVmdJHwFnuwnHS
         2BUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227078; x=1739831878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=teHDghklDJ1V7cAi8g37Bvg2ko8a0NpXKiatSq796/g=;
        b=FgapfMVyKHj09qhmsOEC6mNr1ER2Dsa7KMITLkCmWlN/p392MC98MmBQWx4pIppsdN
         ognNHHa+klz5eDhFHVCr6U7F4eTI+Oe7T4tXGyvNR3dPtiHYYcSvOaLzlqPnGePGeiCm
         7If0BaucdW0/RWiP7yzzG+78OZONVlerIFkzw+i7KKlnJX4tWSUpmOMPmCr2SoJ7ZRWM
         P0QDedRvi303bVW/QDjVr1HB191YOzcWBRCEzx/YJZfXw9JrOmHjeC6yt6w7Ft2CJrJN
         iPJNFW1sPg/UkMYJ5jChQK70CoAlPNUOhTDVJ5odb96KSoPKbDArZbOckO3TVJVphW5u
         fF0g==
X-Forwarded-Encrypted: i=1; AJvYcCU7+UGAZVQWVWfGpyNd6Z2J0wdy5VIDF5vNPmfYrBVx/tq+OUudhffZPTxK+DMktGCAjcmgFsGgcHU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6u1RKlFjQ4aKjhfDE0NiQiqj4c1lhqENe1Xz5aiFRVpg30dkW
	JlKma/ZwRlUQ/au/c4cD67bDIzYuSMcKt8wUOE1tZZ6hPkRCTbZq5zKWfyQzHqA=
X-Gm-Gg: ASbGncsZiL/QIqfkWor49BYMqkUobOQbarcptJDrIxb/pdQshxIHhTcaPpwEitoujGN
	AnK5qviEcK9918eMjrzkwB72eS0Vil90vJTN1qndLUbkWCyHXj5baFV7FIPHO06hZz25JzlNuLU
	yerdkKwG7jVu2nXip5QRkCmwk8bC9kLdw3EaLX6OEIE7jRssizFYdTpOVwWzWoV+pI5wLOZkXjR
	cunvSffLBq0lL4GsjOY8sYVfmlHKxNZ8F30s6po8f1YO9XmnsJoX6lTP1Io/k3lFBMzoBqN0TpP
	kHPgauVxB8O9czOThojAA7lERCpQ5vjpRg8llwXvFi/nViY=
X-Google-Smtp-Source: AGHT+IG3DTzAWvVW4SJ21A/SRgFk31074gXMN9+oGlJqzs/MtMc8XsiOogFgKzSWDZ9AZ40PkdjrRg==
X-Received: by 2002:a05:6808:3c8e:b0:3f3:bda5:5739 with SMTP id 5614622812f47-3f3bda570bamr2064722b6e.17.1739227077726;
        Mon, 10 Feb 2025 14:37:57 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:56 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:35 -0600
Subject: [PATCH v3 09/15] iio: resolver: ad2s1210: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-9-d6a673674da8@baylibre.com>
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
 linux-sound@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_223800_781248_DCB28573 
X-CRM114-Status: GOOD (  12.51  )
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
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
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
