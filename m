Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A503C0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbLxD5I2T6u2xxBDI/v8uoOeSQWAkFGH7VykRqyWDSE=; b=iPeml7979tkYIT
	mjsbfutbOV5smhukKnEjLp2h/SkUtLAK5HAJ7McFsaXyMPSjx5arunThAhhKmUnmvSdidhOJaaDKT
	xipqKD1qvfq4W5zLTKE/3JdRVxfVQ7/BCYcJcBKnMd6lLjMq8M/JOjeEvMfSRqLvnwF2Spw7E30K8
	uv/e+CS5Uq6nI37eiSDFwxIX/055AKlePTyjpiFbYSi6a1Q0PO/F8L1rkTBCNjvDJb7R2xashLaHH
	+i2UMTNxB44EoMFVceKKrxUcHVH6XR5tEaWCiZaQ5cXQEUmjcxE80jm6fxruHzxD2DNAk9FjIOCYa
	eUpTcpAl8fd0MQ8EH4uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZP-0000000BMmg-0XMw;
	Fri, 31 Jan 2025 20:24:55 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZM-0000000BMlO-29tL
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:24:53 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-5f31b3db5ecso1003678eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355091; x=1738959891; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Y1Uq2vC9ngxtabj+o6Gf/0MmnPKx34MFqyZVe1ZJHY=;
        b=yMLNTYQazZarCdflcvMcn1spbSPYZpZDnKp8DT7A1S0bggj3EHG/l+3oxmYPgz0Mo1
         Xv3kkQC5auac8E0q0p10+U1Ik/a+7Bev38qy4E1EUGAZkZDEvzqD0GsxV3YwIysPJ/iy
         l8ehAbQxzkpG3mHVGtKqCD/XFLnuUPw2UC8xDUtiBnQehADPL1oaUfm6YAhfSK2CTl+d
         H3pGj45gRM3P+eWqAH28ood8zKSBExcJ0Sd1HG4FG2SMlckcuUqNVYL4U/1neVzTI0mZ
         ZImUzAWK/B132+TJhHCMD9Jxz/PghfZtasthuGlf2ftGQFn2ozvb1Ad9ZGCLPzJN0HzG
         yQvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355091; x=1738959891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Y1Uq2vC9ngxtabj+o6Gf/0MmnPKx34MFqyZVe1ZJHY=;
        b=Fhh87sc9EbdndyNSavltzvez6X4r0ovofJj1uTyM/A6DnkvRxgs3A8psdoOd9w0STW
         wr3CWQ2YeZZSIhOSFrbRYKZWJwG8QnALy5II4gn1y9mYCJzkq97Z9IWNz/Qrt1owrSxj
         2vsjmbNg8K81rhK1TYmjw8KeVxIbKtayaHuY+oEggIONyE7RDWE488Ya5DIp8L/BWi2Q
         TLiVYeg/4RxZ0AjTzmhjwgTL4lb5wpI6SBt3DaZG8CxSYYmmyOSnioVwjXOsle80ymld
         cZRe8UE9MfjgiyVNmskIhdBRt/fBJYs3Aqpu7R5wTJ8QXXPjsXBSHPItBkJrzpDgTmO7
         zS/g==
X-Forwarded-Encrypted: i=1; AJvYcCWDTmNKRecDUNGYgU8CBKaYdAMJVPNj4ks4GK9IDvyMG6XFh7FCS5YMwcYqYjGc5onWVGkVpS2ovJM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMXeHM4xVhdCsRFZNWk7dVHUz21QNKP30YTN0o3lgb1rsn09uZ
	R57YYXIjll2qSnJMX5bC7VzSRRMv9DYEqu+tukAbd7Z4ZOrkWA9TAvMph4+Z2d4=
X-Gm-Gg: ASbGncv8LldBJ1EeTOt84MMfSDUQytOTBUqA4+VyQcwzBNlTjf0E5cKnFV94V5Zs1Pg
	vG79jZ1YGubjArap1AoTclZw1AxDMKz5sIsD8z5JBjflOF3yL0JJnSamqVJLLT8Y+ma+mhXWhPj
	fYbSvdIUHQICXNyfrhR9GJKsIyQWLtBbBDiq3DLExfZ+Np8hVS3XwmlZoLg7NbYJQ1ms3cAYygN
	K4As3KbtMhWHfz+bACVi7eMLV6RQ0Tz+StoQX71a4+ACHAuM+zlfGb7GdO+52daTA3qKyh85Ok5
	r8xIkNy9z555NExcnmOYtutZw0hAtM5qR0f9mEEtAp3WRYw=
X-Google-Smtp-Source: AGHT+IHpL9OiC+7p99DGjWrddY5GvJC4qVZT5ABdvIbOzG8MeWG3IwFdHaR/KYiBNOSR8xIQZbb8jw==
X-Received: by 2002:a05:6870:ff46:b0:29f:ecfc:32df with SMTP id 586e51a60fabf-2b32f02152dmr8447581fac.14.1738355091503;
        Fri, 31 Jan 2025 12:24:51 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:50 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:42 -0600
Subject: [PATCH 02/13] auxdisplay: seg-led-gpio: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-2-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122452_558574_0CCB151E 
X-CRM114-Status: GOOD (  10.23  )
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
 drivers/auxdisplay/seg-led-gpio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/auxdisplay/seg-led-gpio.c b/drivers/auxdisplay/seg-led-gpio.c
index f10c25e6bf126cfaac3e4c353f8bfc6639d94a60..c158b2c2827415e75d0b122914b8b18c043e8c76 100644
--- a/drivers/auxdisplay/seg-led-gpio.c
+++ b/drivers/auxdisplay/seg-led-gpio.c
@@ -36,8 +36,7 @@ static void seg_led_update(struct work_struct *work)
 
 	bitmap_set_value8(values, map_to_seg7(&map->map.seg7, linedisp->buf[0]), 0);
 
-	gpiod_set_array_value_cansleep(priv->segment_gpios->ndescs, priv->segment_gpios->desc,
-				       priv->segment_gpios->info, values);
+	gpiods_set_array_value_cansleep(priv->segment_gpios, values);
 }
 
 static int seg_led_linedisp_get_map_type(struct linedisp *linedisp)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
