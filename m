Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC5EC02193
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/HbdRs+AwrPDhVP9zkZBPWa4bF0E8L18G8FzdJWahg=; b=a2NacS9WYlq5or
	+KSixyhonCt3hThBPl7I6r//tjpkP2xNfynjm6c81TNvikB2L9Yn9pYTwKXdQarNn9mVsRHwI5+Wr
	+FHJwfRu5EAxCxI/dMud32vM6UbsxU6+7XnpdkIJjSsYo4lMO6ozsusOHMkJp8hesD+4bl7eGI6Qo
	r10CFYuJLfvLuy/aVRjFohE8DQCZ3MQ4YLomJmVa/S6oSul0UsZtL+b4m1Fqoc6WzqszbBIHQI6K2
	+nI4glC8zEKMwiNuvwpXDnfXKXwgD86f2aJNQYjM09mluEUeJPnglcEYwVwnPjCGjNv1pzQ7pdCqs
	Swiyzw56F5daUOZe7nwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZe-0000000BMtX-0aCx;
	Fri, 31 Jan 2025 20:25:10 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZb-0000000BMsG-1rms
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:08 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-2a3bf796cccso1125465fac.1
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355106; x=1738959906; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DXSo9qIqFw2jH0TFUFiXNHDreUcSE5l/XqXZpt46Vu0=;
        b=Y12Pm5FOEMYwti8ilq7nKfhzzaSRB7KcgIdmEeLzjlIF4NqMrgl+vGt7b366xcvSWL
         caqkv318Cf1Jk2zT8jM9/EZ1xLgw9eKnc4p844lXQk513AiA+Aeqalng59WAN5hxfg5V
         or/KRKw4HGjpPLIc9grmCW/GdYzdfdRLm8XmIYUPmD/LGvku52pqixGDqTfQGIBTKOqX
         f0ATe2gvmJ6KmFsh5WS3r5YuZUqJ1jGmL574O9z16Oz5+0iFNI7pJdiGA5BZJPrO9pDq
         mf/RKhKr6z5LN25epXLXu67DGh8lapB7lfVcKE9BlqdjwCG/TtvNfm9qXS6Q508FUQFI
         nvMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355106; x=1738959906;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXSo9qIqFw2jH0TFUFiXNHDreUcSE5l/XqXZpt46Vu0=;
        b=RjV2dwaZP/M3hx0QFi3p34KNKZiFaWD0iYkAperW/c/CRQ3yzRlJqhDGL5ZTKwHg4d
         BB/s/W/n0TLaUlo8qhs9gRh3YzK8LIeqV0NkFgwsZD65aPJLMToQb9W0vOLMzbvtcsNX
         7EkGl6CnQYTxPfxBGJ4LRbMXzLkz+fPtZempjaPSExcsyLMadY9cY1sNoDpYrnowK868
         yQhRm1G0C7u9+0QVv2WwGfYYfXcv6N/8x/ghWSzcNuKugq+yVXYZ0Z93wu426y0ehyCx
         1bwGbfjlXp/3pJdfo1xuFdhkxsDbKzFeKaKKje5Hf5Ry5wyeYEHfJy9oKfpAeUxz4XIs
         DIbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSd4ySRZ2vktV7IxogTwOCpzy7TI7omYuhPx8h0OEFOLXYY5s4HV4n+zwIiL4/rgsjXjdjT5DB4Ak=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRRvAkIEku7b/2vsXgdfUPSccqyKi18lnUMaIDLDKob7shg1br
	6fwSIJmZ1ss1N7um7Dz0VtnV0Ay/d49+A8aDdHtNGIiy46s1VOmV+CqLdJyeokg=
X-Gm-Gg: ASbGnctl7zhnX+HxNxMX6G7He3XXZh0N3hBUtiCWVf3y9DMIKTKIaRhuRaR+KOgmxQq
	oAxDL2g/Of0DybW76SyiV4JWf//P1LI/JKISrn3sgfpNBrMxn4nftlKmfI8PRa9jea6jgSzHiQT
	oWdPXp/tRzxYVEuy2wKi9aQPkloyK7IGdLy/DawsydvF7rMLJqNLjRe/NgoOJtu1fLFOnMBrpWH
	2ogJYbFnHBUqAr7sS9p2yYicRqSQb2pGgvzD81iCh9KzmBqOi2r5FtWZ8u3oqDogL4cDvHJO0XU
	1s44+o94XgLANs7Fj2f+hbWwZEgstLjfljw42muOUfyyzNM=
X-Google-Smtp-Source: AGHT+IEk+EYILkaYfRPwnEDbJBIEBFXhatYC+4TE05088ijfOkCj1XESP7wyxn6VQQJyYksFnt4aeg==
X-Received: by 2002:a05:6871:a9cc:b0:29e:2d18:2718 with SMTP id 586e51a60fabf-2b32f26194dmr7999805fac.28.1738355106264;
        Fri, 31 Jan 2025 12:25:06 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:04 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:48 -0600
Subject: [PATCH 08/13] iio: resolver: ad2s1210: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-8-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122507_486571_F979DB83 
X-CRM114-Status: GOOD (  11.34  )
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
gpiods_set_array_value().

These are not called in an atomic context, so changing to the cansleep
variant is fine.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/resolver/ad2s1210.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
index b681129a99b6cf399668bf01a1f5a15fbc4f95b8..938176ac7209a92180fe8d55191d4abce026afdd 100644
--- a/drivers/iio/resolver/ad2s1210.c
+++ b/drivers/iio/resolver/ad2s1210.c
@@ -182,8 +182,7 @@ static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
 
 	bitmap[0] = mode;
 
-	return gpiod_set_array_value(gpios->ndescs, gpios->desc, gpios->info,
-				     bitmap);
+	return gpiods_set_array_value_cansleep(gpios, bitmap);
 }
 
 /*
@@ -1473,10 +1472,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
 
 		bitmap[0] = st->resolution;
 
-		ret = gpiod_set_array_value(resolution_gpios->ndescs,
-					    resolution_gpios->desc,
-					    resolution_gpios->info,
-					    bitmap);
+		ret = gpiods_set_array_value_cansleep(resolution_gpios, bitmap);
 		if (ret < 0)
 			return dev_err_probe(dev, ret,
 					     "failed to set resolution gpios\n");

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
