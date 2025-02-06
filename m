Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 146B2C0219B
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/k5FPH38Hnp+a2048IsfzuL4hym2p2gsbtH7VmoZ5Tk=; b=igypjbgbIwhsRI
	9oxT3FOzotCU7GM+f3MWoxWBe4FoiTYX8LgVlz/SNwlYs96AabCSHOoOFzMMM64vuSRMfIADXNA8H
	4yhUTLt2nGg4mor2Xw2uKYeWTBFo9d5jxYaymfvt3qJrif8krV6/IdLCjzcWkhybVkiw7GRQGAYir
	aXeU3ipB9DfFfZPT/0sv2r2I5BnrDFC69G3xac0WtBjCapNgiNwuHeGRkSQZGlFH8zfbDgCwgj06E
	W22RlTyaUOM5cpwyuVDklu7iehhbOVxluNHKRvvksirxRIJZOBOStqzxPUWvawyC62cgJ5++2taS4
	hagKXu0fZlgtmEVFebmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfm-00000007iQq-3TFH;
	Thu, 06 Feb 2025 22:48:38 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfk-00000007iP8-07li
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:37 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-71e181fb288so995338a34.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882115; x=1739486915; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/aqCjYxf4gSpR0G6gRQq6zdrmHAVbQWmkyM76ZxN2F8=;
        b=x/39aebDBNYRCTEfstUKSRJ086Re2w7yDegBDRw0bypgf9AMcsjLgD++4lly+uioSM
         MAKMDUNJfQYv8Ja22YRhxzne5lh1pQW3b8bKz0ZS1gV9iXaG3cJ85h++bQp4RES5+6LL
         D10sHfQYVbvyW2nx5SzApUIdxlCgYoquRsMpvVi6f/uguDuq567GsQucbCxBJV8wj/Xb
         f3O/BDl1RZw1O1efhuVV6uU+xS1D7i9kypoN8mA7KKqHsQ0XbobatTklqEI3ijeX7yK4
         cEJ5Js4yHECV5VtxSJWrkfxFqyEyudqFbzjQu0ETY3n09qZGKH7ih0ceZBVL7N0KNb5D
         mQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882115; x=1739486915;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aqCjYxf4gSpR0G6gRQq6zdrmHAVbQWmkyM76ZxN2F8=;
        b=YwbPx9cI9LgNQOHwKhFfHMsE/4a93nVLdqm1imlC8O/Vgxuh36XFmtgfAIzGAOvf9g
         M4ktoVY2jQEFXxORKaLOs70VookdccwqQaQoMYi3ch+CdSvyLR8HBkaHvPNKbuDlyzEs
         IJDtru+SRCHamCwjYQ5k+cLvSBV27Ry5IGmtNwYag7t6f8/mXylk/j8Nn+Yi9gUAHuei
         kZsr+laAy/kBADFKZa/CF8JXNzL/yxyNyx6El2+JnvE6yyjGOtW2n8I0osji82CbVYoO
         zZ9Oxs8dxUtEGbtaxD5lfVB2JZJQ8brM9va9TTLVZAIvq3cv4lO8IvqrM++zkkv1uA+n
         a5CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVu2OIB0AoTl4iEUhUWalN3LgOA47N6ALsUna+5U1U9othiz0+6Yune9QGM3PM4q3UiLdScM5iY0/Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoCcd6LDVN/4yBinR9el7WXTn6xi3gIIOv9nK6hyypDoLhKclr
	Lo4Go2+Rkqu1iuYFRhMyhMhziUcVy42EFSScChFHe9tIoo0snXhXbEGtkPYq6kI=
X-Gm-Gg: ASbGncs8UvOPv5seGpPkjkiTgtKmldvYWBA4dY37ba8BTUvBaAqfrfOQA6W+rfkcMWb
	HCxhOyfpu5jIxTRmrJnzDVQar33gubT0gzGIz0jqBE9KVLA17fGQKYYowr4hTUyvEJfv/C225bt
	2y4BIX0b/D3zwwVSISz3YcBmU8QjKdi0WEqqaIXmynu9OV6nd0cz1VmOszYJ9infm5C+dayxRWx
	WTAB8+lLTbf/g1xetqvaaMrWVa00atigLRAZ1mmxvBNfKo+0pKN4a22v4txOcSG5Fy9E1SBnhFX
	qxPPSmy7Svr00hPvG8lsKrfR6oofNpZGGgCARBSWkj6iSGg=
X-Google-Smtp-Source: AGHT+IFi5pOT04kq25kPl4tFke6cDrSG8LtrrGuNrjvHOS0CkDrwzGgg5qxvsBSG8EfBe8D1EHBqsg==
X-Received: by 2002:a05:6830:d81:b0:71e:17c1:45e with SMTP id 46e09a7af769-726b88883famr823900a34.21.1738882115069;
        Thu, 06 Feb 2025 14:48:35 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:34 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:24 -0600
Subject: [PATCH v2 10/13] mux: gpio: use gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-10-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144836_074918_860EB480 
X-CRM114-Status: GOOD (  10.69  )
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

Acked-by: Peter Rosin <peda@axentia.se>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/mux/gpio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index cc5f2c1861d4a22d984bcd37efb98dd3561ee765..5710879cd47f89b6ef4458d6b4419a1fe9ad349f 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -28,9 +28,7 @@ static int mux_gpio_set(struct mux_control *mux, int state)
 
 	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
 
-	gpiod_set_array_value_cansleep(mux_gpio->gpios->ndescs,
-				       mux_gpio->gpios->desc,
-				       mux_gpio->gpios->info, values);
+	gpiod_multi_set_value_cansleep(mux_gpio->gpios, values);
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
