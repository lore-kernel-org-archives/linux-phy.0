Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C8F0C021A5
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHa02Y/k9SWiDcpgPJ9kK6JzeITo5EMgsDnFKMZNSJ8=; b=kR1JA5o6+KyCVv
	P+pNAGqLJKirhXHzLEuBh2AZFYldohJLp4aiiLoNBsgBX2L+mHzbeINT0Y5aurX6r9HKUscuzEEub
	IQiwOkJO2GmTdHTxa/G3bW8ajpZ9pkmguo09cfqTPyXVDvP/AEEHWBS7JxkWshmHdf4ETPyGjJILj
	JaXQAAUnu9H/HvyI0US785vItJNXXCgmWQhoreTQiYhRrVPfNN487oa8yiE1XfU2TJOm0o0ZgE1Pq
	ZTyss7hAOhxXDHio7TBNpi2FphPA/rAoStvCJcQp/Z0rL2Y2eV6JzYYDiwqfkXZFfn9lAg09PmKdD
	kS3ZIGAWrLnKeq0R9mmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgm-00000001kUU-3VIz;
	Mon, 10 Feb 2025 22:55:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPZ-00000001gME-1tcA
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=bXHiG48V9LuVOCVuPYOg0jYRbGMvcGRS76/y0RlN0SA=; b=aLvHUaXJ81mmUgbbYqpF78/0Wn
	WXFf7/9qCp5eoFpnMQ5LDpluXX2k+xO2ovZWy8Ds9hgDdc+IO4I7o+K6koRGcbPVyB6bT2rOWtHqU
	/+15aId3S3Lz+EJe4Gvo4MfDvVZYGDT7WuAoY6OcwNO/zym12DZy0ZPHUVmarMqU/0rzayWI8nVLq
	W/ADE6JjN6twfEOiBXyoLA8q12G62znz64hF056QVAKQVmVmNgxpqFaLnKkJh7Q1l555/BgqG79+N
	NZyDlgV3iGLVbxj6Lgojz9TJFNasdbaERmB5icukEyhrUJgyZkkrRiTl8sqk5Yknf+csU/ZRr02ng
	G3mj+tdg==;
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPV-00000000KPa-1VMw
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:51 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3f3b8f6ff68so698336b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227068; x=1739831868; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bXHiG48V9LuVOCVuPYOg0jYRbGMvcGRS76/y0RlN0SA=;
        b=FdDghCATlBq9FwXkNhFMozMgbf/tiGLKmndRsHE6kNcuyUM4ZFTbm3gdtHXaO1OaIb
         cPh1UDaG3XfTyIhTftXdq5dsJbv2k4edIiRpgaKutIcL8/hSNFdb9rNTWASg7sGc8QT6
         VcpL9M94otaVdQZFGjRQgfQyl1EcEJQrZNyHzPOpaQDTxqQ+LYfl83km06A9GL+52OeF
         GhSopgFZppdpzmqZBr8QJ1VE6sJQLgV1PGBL/RMT3C1785psJSAJEWlITX0LNKDDhDNv
         8TebdfKSrdkY5mDA9o8/ivJsy7HvcNt9uhfO8ehmMLSjhn2cI9QOP0ZCU7+2QiU1xXr/
         nrbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227068; x=1739831868;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bXHiG48V9LuVOCVuPYOg0jYRbGMvcGRS76/y0RlN0SA=;
        b=D5Zcci9Crlvx6/HCtYid5lo2qTvIl9NwYbZIpyGRlBVqJA0PGUlanx5dCkcCEIjdnB
         2hEwxgj2qGI7B5gS6pIa2ymqL7tg1yi47LKn+xWn247Pp0/j9NmIVVIb02dtlTCNVlzf
         YNczIozJY0ydDbux1Wcm1MF5io6kJdPQBH1b65vupY+nH5Cgh/e9ikPuDH8ZAAtwOdqy
         kiQQC3zw3jtbpqDEgu2iC3YpV5MBOLkiB2FAY2F0ciUcr97pbVMwQpC01mGp14iVFQxP
         2HwZ3Obtwx3JcI4nz4CigKpYrkYWTDvCj39PchUajmqU9i6MRPnQdd5LXCY6hjh5Dy3c
         0MNA==
X-Forwarded-Encrypted: i=1; AJvYcCWPqWhwqIH71HYrPcRExgjOVKoedZQe5otUXMCvPSHl0IoolMrYPpQglafYEkdlbu0ZE1Z2qysPzNA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGJZDTtAytIPg14JUsXTUjDDJDibsmexBfFEBxHresZCQfHeg0
	WC1absQVdhNQciwPu0K2vYAnuqaIWh50KsU23YJ9bdAI9tJMaj9KWDLdPGhviiE=
X-Gm-Gg: ASbGncugLyxbmOk2uY0RQ1hMEEbsH/ZBoM2o0OxAZQya417bMtiHXrpwThSV6nl+jhC
	7rpwMXUnBhbyCYWQ7G81AM2CwCkZ0zYejvkHg58lbbxaZqA70jFyWBcCjKJjWsG1aVzttDGRLWD
	/mYPEsT0hosvtkgS7FtRW9a3KbUbLcX3v2RSXq7k6OYwE1LgEgBRq22GWlZ51tqCdjhnJHbpBie
	mQhyHnO96rSLww7mT4oGLMikVdjxFytZGpd1HMv3koE30FLVsq5XXoOBi75NMjiD7rrOBxYaN9b
	jT/oztav6fHluWoMZ19R46tA2/6vTIjuyEcjOm4jAd/eF2Q=
X-Google-Smtp-Source: AGHT+IFehF7HNx0K+6D6lVInKbCaf1fMxaCHCpkyg1GkxvFsa7pSUfnDQ2Sc+6Hc2oSsp+PH8uo0Jg==
X-Received: by 2002:a05:6808:2f13:b0:3eb:8d22:b6ef with SMTP id 5614622812f47-3f3923b0208mr10855482b6e.37.1739227068102;
        Mon, 10 Feb 2025 14:37:48 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:46 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:32 -0600
Subject: [PATCH v3 06/15] gpio: max3191x: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-6-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223749_496820_A0067BD6 
X-CRM114-Status: GOOD (  12.70  )
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

Also add max3191x_ namespace prefix to the driver's helper function
since we are changing the function signature anyway.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/gpio/gpio-max3191x.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpio/gpio-max3191x.c b/drivers/gpio/gpio-max3191x.c
index bbacc714632b70e672a3d8494636fbc40dfea8ec..fc0708ab5192bd518bb0e6362f737bacbd549d61 100644
--- a/drivers/gpio/gpio-max3191x.c
+++ b/drivers/gpio/gpio-max3191x.c
@@ -309,23 +309,21 @@ static int max3191x_set_config(struct gpio_chip *gpio, unsigned int offset,
 	return 0;
 }
 
-static void gpiod_set_array_single_value_cansleep(unsigned int ndescs,
-						  struct gpio_desc **desc,
-						  struct gpio_array *info,
+static void max3191x_gpiod_multi_set_single_value(struct gpio_descs *descs,
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
+		max3191x_gpiod_multi_set_single_value(max3191x->modesel_pins,
+						      max3191x->mode);
 
 	max3191x->ignore_uv = device_property_read_bool(dev,
 						  "maxim,ignore-undervoltage");

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
