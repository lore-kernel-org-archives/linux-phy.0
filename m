Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30606C02193
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nP9clFA9YNJgiaE2f+LpjY9TGxi7wt62ysrR75LmFM=; b=ZuR3kZlsAZpKlL
	6dxb6eG6P165b8wnlQ9IJYw8WTiWL0ZfbB08ChZSr7iTFm5YfhXUQxqbwX+BK1epzISjFMLYXgoF9
	IB7wtorFCzvpmpy9aNe8pp0NbqbajrK7d5NIYa7T1b7pkRpRzL6OZOy55He26rk2c090IgrV3RIfO
	Pz4Ka5Ek9skkmrJ7hzF+RA8S/NLi4HxKar895SoJPmNCYtSoarjPQ13wq5Ll8U0bk98FxUqYo6THj
	3cWctnrNFmWYHqS1gMElSW2tOsQ0ZU0f82fd8E6ybAJGyLGMquUPBF+UsWyJfXrr/JjYwCUNdrnkX
	260O+wz/+Nh2JAMPg4bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZm-0000000BMxh-3sd0;
	Fri, 31 Jan 2025 20:25:18 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZk-0000000BMwP-2wOT
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:17 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-724f4d99ba0so1124298a34.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355116; x=1738959916; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=59JJI4CO0oacXanEEbv/QOEs28IMbairlUQePRWumA8=;
        b=HS9fidPbcF0Z5ui4TidcdVE8z5UEb/nrBE5UOZ8i+C0raY3fyh3OM04ogXKPlZyVs7
         wzeZSc3q50VhmUKzVam04wa0I+8G/aou6oKy7Ovw35lkAmberBM/1E3z4xa9KT8a3HXV
         IKTQ/rvUrpKgrT+0VGv1BL6WaLA+ejZWyvknj4bZGkMPJbbIFFQytkbuuCzCeW5f8ops
         R1IuzCCl7BmS8W+DOr7l/hOk4NoUrrG5PYdY2IWZErL6vmzmDaHpOC1DZXqxwIsGb0Xr
         uUT7FeIvYicjkaMX1i0Mw39Jk9jC4pPtl0ShVS+pZ8p2b8iN7BOekxoDB25VPbxyak6P
         Ygug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355116; x=1738959916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=59JJI4CO0oacXanEEbv/QOEs28IMbairlUQePRWumA8=;
        b=d9a2o+9gS6EXnGO3n/TZrV0rgL2COjdd3Y45UBFJYAxrAjcQXgd0KLWXnNWzi9kSXn
         sQUmd7QojUc7P/5++in5iGeEKHYso89Jg4xPEB+Xh/nlM7A9YxVxxiN8IxBnXCL3Q1Zm
         2AEOqJDk0YEvX1X4ZB3sNF7h1TQ/J0iICYNSsKaUGXHayP4GsXxJOgf8ffVdcEpR2GnZ
         BbJQdCKDhyUeeVzy9Sa0Zx2ZAw0vHmCaHO+teo7Nm3DEBM7dG8gVrdoCaCs45ywTJTOL
         GwnhJc2D6djfRNXK8iYdXMmG03/3Nd/Y6tiViazugBL9Q5UXrlb++ofhObDC6Pq1s363
         KPEg==
X-Forwarded-Encrypted: i=1; AJvYcCVKZSUpakTnZoAsgtXd2bb8omjvt/58aYgsI2q2jOCB6CPaGCHRHlDBcJdhG4+DUMoUHDxrONhT6eE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0nzYDSVW4w5gkDlfrBkmsk08JpBbTCm5WQl/LGeVEE2Xj8o15
	eISoXOhF3anb0bRoePr+tWau3/t7n1N7wMl5fT3ZWHHpezbsUkT5hsw5CwHUXQ0=
X-Gm-Gg: ASbGncsrRaxZsAC/I5yp+/ChCPQrLzDCpj9Zix3eYhPSzPArsTiqarRzzsG10Iw/Uvl
	o1l/TkW5NHueHDkOPWagL08lIR3c9v7isiQMyjh2jQxQ2S9mmiy85UTpaGzskPzAvCeH7cd/zsr
	Vf2vUlx4tmO5PUKXWXsiSSVWMkzm1JsefMUnmXYAWx+70xkJRjZCP2TNtVY3veZcuxLdC+/ZSCK
	9TvL1Nkm/VW7WpzJIGLkBfR1obPap3P+g5pv3U/+kGbYobEfgnAHRKbGa3MirP/qXsrAWWhmbfl
	6YDa1+FTNBg8c0N0mdBGllO4s5IzoK30obje8YnhELbLgHo=
X-Google-Smtp-Source: AGHT+IFrVMAfd3Y3wOZ0h4O9q45j+fMg4Vw3AAmlNZ9ZgYIq1KVZZxWHseA00ADe6a66eu+rR/ZJMg==
X-Received: by 2002:a05:6830:6805:b0:71d:eb02:baed with SMTP id 46e09a7af769-72656774376mr9460293a34.8.1738355115546;
        Fri, 31 Jan 2025 12:25:15 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:14 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:51 -0600
Subject: [PATCH 11/13] net: mdio: mux-gpio: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-11-991c8ccb4d6e@baylibre.com>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122516_743148_817584C3 
X-CRM114-Status: GOOD (  10.45  )
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

Reduce verbosity by using gpiods_set_array_value_cansleep() instead of
gpiods_set_array_value_cansleep().

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/net/mdio/mdio-mux-gpio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/mdio/mdio-mux-gpio.c b/drivers/net/mdio/mdio-mux-gpio.c
index ef77bd1abae984e5b1e51315de39cae33e0d063d..d7eaeadde2873977606bdcb5821dba18aa4a578f 100644
--- a/drivers/net/mdio/mdio-mux-gpio.c
+++ b/drivers/net/mdio/mdio-mux-gpio.c
@@ -30,8 +30,7 @@ static int mdio_mux_gpio_switch_fn(int current_child, int desired_child,
 
 	values[0] = desired_child;
 
-	gpiod_set_array_value_cansleep(s->gpios->ndescs, s->gpios->desc,
-				       s->gpios->info, values);
+	gpiods_set_array_value_cansleep(s->gpios, values);
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
