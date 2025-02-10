Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1FDBC021A2
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKkKlPFb9y6f1Z6qlPIVNmhLf2w5r0h+tQM7vMElSyA=; b=dS5Rf0sxkxI4o3
	xZaRjdDUIbpNZI9jAhgdemx1TrOKCNvlpBZ/xxRNSi0pW8jsd+0Avt4uuc/fk7VfUxYZmG1Gk6sEE
	xGopW1wR+CDrizmwwHJUHq3QvEfZez+VWGVg2GYPbroxHQ+OdBPN2ZXUZw/UTlJYJg4jCRIcTwJ67
	gcH69aMh6mW2LomE6cC5Nfd9jOu4M01gXLuMd5f5DNNMb+RhrO7aeuRIldLJxCXzOMi85RJZoklDl
	iwcqNIiY/wsbu6ipAgRtqR3T6633jLJeKRoFYSP0Hi0Xta2KEHtRPEJDHY/mfYcFb8fcqz0OPycJg
	Q5YNdT+WyljVJPf4d07g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgl-00000001kS6-2Msr;
	Mon, 10 Feb 2025 22:55:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPP-00000001gJz-4Bh3
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YJrdF9PqOCsaQVoyXe6fXVbwa2pQeAvJKGzGuCxpxAQ=; b=O/XXKVwqbDAeCvG2MhHGxrqs0C
	aAuMTci/GNG9QoyCctisk9FWrBrcwXkYKMElFepXcLX8IC3nCvV7LCKIvNah8udjdUo6iQdmYRrjw
	kom5A1bWlHJ+hPl41P/Kn6DfO/eHVZ5BUzEOHIESyfBlaiZBD4ugGtfADQn6tBqiIJBEoj1UrwZiS
	zHnf2d9127smJ7FdWxol2n5uXLlMJMbefnb4MFRJ9OxumlT6rABj5t4sMzUxJ53LUhhW8ijtVdooh
	vkwPddgBMKRBv7i7GOqIt/eYukcDU64FLMoU3Jw7ZVkwjvilZy/4in6oXMrvHiw7w1YDu39+KWggX
	/Y1ODtKQ==;
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPL-00000000KNE-0rxB
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:42 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3f3b8f6ff68so698241b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227056; x=1739831856; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YJrdF9PqOCsaQVoyXe6fXVbwa2pQeAvJKGzGuCxpxAQ=;
        b=X1dCkdClgZ29Vcl+9Mm7QHQTEzb02XHJhpN0sQn7w6EPdei+6wzoOhxYwg30eLUypN
         EXeoclWIU34RP+7eI0pburIyfOq8pKfwZijDflIKNbvUxAwiep/CfizwkQSCBzNR8L6b
         k29LDGAwVOBUXZ+4fUslSPkdDUcrTmlLE9VEdoVa52opR3RnQePe3avy6Spbxm4v1gJK
         BvZmGDLCYRNvM4sHGzSQ8TnYwgspxBphgwW6q5CU1QlHndy+oVuBezDn4rAxw+OyrfR8
         RAcJ51mBHosjqFNC5zHQx6sAuvhcmK/X418SlcvbqfX4P7TNfXU63Psvvswc4z3cDH7l
         T9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227056; x=1739831856;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YJrdF9PqOCsaQVoyXe6fXVbwa2pQeAvJKGzGuCxpxAQ=;
        b=WAsXAT8MhpxSy0s/HwLSrEhWCz6lSdGa+NIrXzJFyB2MtogEQk67J3/oz4yWSofNlp
         dn8zaJYD0YI0CzQscqR1ZNC4h5gpu2r7O7cKh9tburtWQFupbZv/apAMmC7V6/UNVKnM
         +4LiopwiccifU9rWWAgS+FUzdAvYQfDb+BebZZwgCijPlgpZ4pBs1/trVPHEVNPQc3Ja
         kU8z3H+kE3UL7gIKAAyWadMucz3TfRzS+DN5CYL0T/LPV7oRRl8v20yJaegcm2WUIRhD
         nlDlMxkVkPr54whM4eKariUleFyB2yhNdXC9dL6QuZkh6CR4O6N/3ZJXeH5aVXl9dnlc
         e7fQ==
X-Forwarded-Encrypted: i=1; AJvYcCU30W/ScPdc/Cq7DGsr5ALROn3lAWvrYGnJobyj+HRv5hr4QZFl0++m/ZEbFyr6SvoW7xwJG4FAGxc=@lists.infradead.org
X-Gm-Message-State: AOJu0YztyFFEaQHh0uBGaCTVHS6y+Nx4D61BeJy7TZFK5zybLRG7GOwW
	AFV+5IBnSU5JQbFEkGWAgw75VayYXjq5m1mF8Ejq0J4nQzRe2aHbX95PzmvfDP0w8rdzNwvQ2WG
	d
X-Gm-Gg: ASbGncs5CGBVnEtxtulFdlyU19LGCHAbLMxsio7NF3g9MydeZDSe42LZSjl93rXM6jE
	zWNx9/MyBjyAZ0uImFtTm3EeTQ6Y+87h4mQYKBtKXUmc7Y97+1RaQ5LdEIh1/BQ6MtEeKrZXR8Z
	L3R62GkPJL8Fah/43WjlNhX1jQEPByeTpWFwC4Srlxft4y9J9wXmEk/BZUaE/oltXe6y13wztP2
	GAD2LMLPsJDtz1eKQCUuvkN2PVfPFmCxLZeGGXWEM3pEdKbgQMLsb7JQ8/CbQGa24NfUunWcRQ3
	rJpvxyADJiyUoskgXgN9U/F9EGxyGHbvuywYMeA0EZD13OM=
X-Google-Smtp-Source: AGHT+IEaS15Bntym3mAt6zrku3a2Uko68yjmwMRgXiq6dPbA7MZZB8Aa64yOncDet1fFdEO8/9GX1g==
X-Received: by 2002:a05:6808:198f:b0:3f3:b6c2:a29 with SMTP id 5614622812f47-3f3b6c2115dmr3804142b6e.7.1739227056176;
        Mon, 10 Feb 2025 14:37:36 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:34 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:28 -0600
Subject: [PATCH v3 02/15] auxdisplay: seg-led-gpio: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-2-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223739_611351_576BB740 
X-CRM114-Status: GOOD (  10.99  )
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

Acked-by: Andy Shevchenko <andy@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/auxdisplay/seg-led-gpio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/auxdisplay/seg-led-gpio.c b/drivers/auxdisplay/seg-led-gpio.c
index f10c25e6bf126cfaac3e4c353f8bfc6639d94a60..dfb62e9ce9b407fe356c3a7d2d25319b91a11a75 100644
--- a/drivers/auxdisplay/seg-led-gpio.c
+++ b/drivers/auxdisplay/seg-led-gpio.c
@@ -36,8 +36,7 @@ static void seg_led_update(struct work_struct *work)
 
 	bitmap_set_value8(values, map_to_seg7(&map->map.seg7, linedisp->buf[0]), 0);
 
-	gpiod_set_array_value_cansleep(priv->segment_gpios->ndescs, priv->segment_gpios->desc,
-				       priv->segment_gpios->info, values);
+	gpiod_multi_set_value_cansleep(priv->segment_gpios, values);
 }
 
 static int seg_led_linedisp_get_map_type(struct linedisp *linedisp)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
