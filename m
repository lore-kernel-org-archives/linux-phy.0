Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F6EC021A7
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMkHR476oMdYSvp6v8ZsQOT5MNrVHOBoslWMHDv69AQ=; b=1L84OOw0hpor4i
	Ru2qZavKxiH2Ebcgo1P9H89mgZIFcbp25wfNl8adsUbIvkkoj3j2iJ/sHsPTuKEuaV8DqjOVndYd1
	CfilRsVM8Ft31K1nxi0KACAiAlBRRHmWtXAcODbxMHQ17n2iyOLieKPngk/vXKmBfpFGevMwu1sIy
	X1UtmginMv3i4jFkoe2bq1VYjtMNbX9MwO8e3WRrK9K1WvPYQ/A8zvV6G1ZuRHK0HJN/uDglxJ+U8
	DKcxObIMC99ul4gmZI07Trmygo5U7w2ZKkByeOC/aDJcbQcpjeV2xcOAVN19SZVJYRHZb7eTLUxV7
	nshrZgSBdp6uNo82BXgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgo-00000001kX3-1p6l;
	Mon, 10 Feb 2025 22:55:42 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPl-00000001gOf-2UXH
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:07 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3f34101f68eso984234b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227084; x=1739831884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hnz0az7lntDGiOpb5KMBiHYUt+/ZN1SFQQir1JT9FNk=;
        b=mk0hXkOyX5jtC7lDs39VgcJvN7kSnQhGk4/pnRySTNdG4j+F5KgieMhYweDzoBtvkd
         RKoUbykNPcW0M9y1XNeBT78XGXUiMdvnCSeBtJnIIcwRhOdJoQakzTXIEaa2wMl6E5p4
         tmMCaimBQdNPMQd2dw1xJOpAsU0GS5vXGxgwv8N/eCyhLjDjUeiDX/Z+js40//GdMbvt
         jHnVesI04LVDzQz0NnazX9/v7GLeGNPO6vxd7VSA2aLytTWZbw1wx8dvd5IDQnbUUH3d
         8+FV8UAQNGqQTUvgzKdWMKIm1c2fcsPeJtOQOEqDDHdKx3Lrxcvoys4C5ifjwvm9HtsM
         E8CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227084; x=1739831884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hnz0az7lntDGiOpb5KMBiHYUt+/ZN1SFQQir1JT9FNk=;
        b=b2E2R99nQ05fUntEdA7Y66IzlOoMi2XBpPC1TmnjHUEcM1gIJm8gcUNjafzoiSACIt
         RUZC9/h8Jhw/06J5vqmv1zKGyRT781BeX8Za3maXs9PxZlxHN/qf5ztw5uolMueB3jBw
         zNhodNzv5f21rpbHBUSIYdif5UBBPHpwRmG8B8ccDaVbf8t9EsBm7U+TpBJJfv8MvFOU
         QqOzKhGwAS5N95ZPWu8/YVVeSKxj41Wsypov93jLGAZIWU4pclmU09ymH7j1RU8lv1tb
         2vmkgGqqjrvgOstlHVnWZ1lrQ8vodiQ3pb9ExiGAJf5L+dkNvRRD0EqLLOjK3lj4/Y01
         c6lg==
X-Forwarded-Encrypted: i=1; AJvYcCVZq8337By1v6c6iyv7jigYYl9aQmLiHdVxsT3XysOBba9HEIzTgRG2AO/F/D/P3cqxM278EllLKzI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMUOfmOnTf1++BQjl+V9v8P4vzeKzMoIA+yWm1UPuwU+Y2ZcMi
	mjlgNl5BmH44nDiBmAiKsY6V9sTeV++my0+Yt5Dw/XyoeEJToF8QU/N8EjW7ADE=
X-Gm-Gg: ASbGncus1mOLkWmqtnve0UaNw2v57cnqpm1bjas7DV+9URk+HO92OFq0KYiHQnsAr5x
	+gL/L9Rx/zKWPD/luyijnW+I627aWUZxecwmL0zgS1c4Ri7bOmM6jI/bjYyPvdHhDwpryxshaEX
	vh3gQ/zD1L2T06Y37YxKsttn5YNX+5pSCvrE5+ndLWTtY8s9wRTsaNiYok3rf0PTEHjDL0ohvZ+
	ZR5xNFHu4evl3hYQepEeBAdhrc79Vy612r2vcYBhFTf4xIYhTH21cJCQmSzXzbr2hbFSF7YpBPl
	iYuO/bu3qtWipE6S+KaJw3UGZZhlL9ChcCBnvT4d+gW0S28=
X-Google-Smtp-Source: AGHT+IHyCAwDYiRcWVzrn7K/Vx60yNjdpFZhmlXwDMeVTAgENeKIRtjDdhXHEsiUOrCJ2abC/Ga6Zw==
X-Received: by 2002:a05:6808:2209:b0:3f3:ba53:1e11 with SMTP id 5614622812f47-3f3ba53229amr2521701b6e.6.1739227084078;
        Mon, 10 Feb 2025 14:38:04 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:38:02 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:37 -0600
Subject: [PATCH v3 11/15] mmc: pwrseq_simple: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-11-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_143805_634956_2E5481F7 
X-CRM114-Status: GOOD (  10.94  )
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

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/mmc/core/pwrseq_simple.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mmc/core/pwrseq_simple.c b/drivers/mmc/core/pwrseq_simple.c
index 37cd858df0f4d7123683e1fe23a4c3fcd7817d13..4b47e6c3b04b99dc328a8b063665a76340a8e0d0 100644
--- a/drivers/mmc/core/pwrseq_simple.c
+++ b/drivers/mmc/core/pwrseq_simple.c
@@ -54,8 +54,7 @@ static void mmc_pwrseq_simple_set_gpios_value(struct mmc_pwrseq_simple *pwrseq,
 		else
 			bitmap_zero(values, nvalues);
 
-		gpiod_set_array_value_cansleep(nvalues, reset_gpios->desc,
-					       reset_gpios->info, values);
+		gpiod_multi_set_value_cansleep(reset_gpios, values);
 
 		bitmap_free(values);
 	}

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
