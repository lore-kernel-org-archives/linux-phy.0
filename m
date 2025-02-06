Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FDA3C0219B
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pYHTh0GgHhmzhCgd6Ki2KjaS7jWnCpqpAbL/+di8zI=; b=4yIlk3BIHPOf6g
	/Pwgg3sgp0WJMEoUS9au2q+4VeaSJFwEeYmoUBPLE0AJ9zujzmK1ZjOciOrLnN9i2W9Wa7FWz11xl
	9i2e7beBY1UhuAdKSTmDbsKAdHNQy04ov2Qek7RAUwyShLqsOb1xTpmPOhdhs9rP3SXARfGEpaPtf
	l60466gz6sWU0Ksky00e4PK9HbQVeu5YOzem7J9+RzAmCCWSoWcd6+caOg6OqxmxYinLqwjvBIqZo
	8FtSRyMAJYG/rLVWYP8q8q5Q/vn18ziJi1hjt2P6dF8YtTtdVvaTQuDlK0GWryTUDZy/G3ia423bL
	aJm5FpkPAA1sb1qsfxFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfq-00000007iTJ-3Rok;
	Thu, 06 Feb 2025 22:48:42 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfo-00000007iRy-2Ydz
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:41 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-71e3eb8d224so492432a34.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882119; x=1739486919; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zrl0lG0s99SDBuGZ/+AcMLJIAJmPLy1NCd/dBoX8jU8=;
        b=bHIAdv1JPZ4ujx6JVQgUqeCp3MJlPKejIKv1qszS5noT6iZupMheZYH2ynnDV9d+PP
         x0+WlgHEXlNixKX99IWzYBYso8Ol6FphkDpPmiyqLGwLlknJbxz83QMzNysIYNqrP8wR
         VCVLJDz0nXo72m/v9KDr5zXHIj+7qiCOiVKTjkqTZj6XVTEP3RowtNNWzFuNUs3BSu7U
         3vImNZ4aMQUGQPjY06SeQFMegtvwx+CIVvth8Bhnn16iIHF9cOVpS0ReB6hZko3MfX49
         37yAPFMCNHFenYy7PZdjA3ue4yEX/V/55WW92haXxQbjQg6pllK6mhqPBVQ9PEk3bt1X
         VRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882119; x=1739486919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zrl0lG0s99SDBuGZ/+AcMLJIAJmPLy1NCd/dBoX8jU8=;
        b=pHHegC3Cjm82RRLznb3r6zB8I4GGlxZ0OutaaNLHixP7Qd/ccdzIM0ElC0TBTUGbth
         hPpVnVQSOqTLlZWtO4NgwahvF6r4XlK9i5PC/+23Msh8KX2vwaCQPfPme1ttwiCotJuB
         MCwed/CITAYZFV2sDxAiMZo5l0r6QnmBbZRV/1kqif6mjsn6tRxoATzUJ6zymb1I/jEF
         qUSuQaJISFtBfmsnJRmt6b/hHZM7u4kdqoUGsaGi5z447VJTSj2vgqyQhP/epA2reeiB
         6fDgAVJzn03YMH/2k0Oe+iMnoVo5zdh5CIyv3RrhY60/giJlvu3SFtNB9U5oQYULhsjH
         /oTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvkCkZ/TR+jRHoYxIYFMlEbyizmYo9qIAuw8wU/R4SKoxs4LxPdlYhCK9KtaTtVd6gulpHR+u3nzs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwG8HjVDiTMX5iWKO1mRicfBZHVaorITOTNRHD5paFUJ37hfN0N
	+Yn8HOHFej4Epbb2jAmRh2IadISy2Ks9IXC5i6v4MAJwh9sYKuewMbAglnVtlYE=
X-Gm-Gg: ASbGncv5YOSqu52l107RGPD3w1gA2XiqJT0sorY4yc21xpd4/NOjqIf/Kb0rGK2foll
	DNCCkrODLHFUR5dAXWFsQ/9tACIvcPLfM7Cx7i+QNc3RzhUWerr8C6hCCMJsI3gyOAe86tzXz75
	YhOqjy5QNuKoIobn0hMAMow1QZX3hHeCzk5GJGpxHrXFH2XLiQOMMUs/Avad8IDV8OCKHZrX8Ve
	eStJNjaRtf5iGSlOWqm+mBTVIVYmItes1EO2j4z17Nxyo3Ptecvlj5j7YyN5TqJ1cd2evNpFzGZ
	nc3CdGJEIboeHvecqqanEoL8PC1S+MMM71XzVJ02qF3avL0=
X-Google-Smtp-Source: AGHT+IF6EkhBBGtZyNdnec2UQucqxt5fakVdlz2IO8AnBCKVXc9lOTpKIIPxZD3f0MWNAAb4im2E5A==
X-Received: by 2002:a05:6830:6819:b0:710:f38a:191c with SMTP id 46e09a7af769-726b87c732bmr566366a34.11.1738882119510;
        Thu, 06 Feb 2025 14:48:39 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:39 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:27 -0600
Subject: [PATCH v2 13/13] ASoC: adau1701: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-13-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144840_651150_7D295DEA 
X-CRM114-Status: GOOD (  10.60  )
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

Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 sound/soc/codecs/adau1701.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/adau1701.c b/sound/soc/codecs/adau1701.c
index 291249e0a2a32df7dde81904dce2f6be143fc2d7..6876462d8bdbb41d551f776c2d7fe6ed46115fa1 100644
--- a/sound/soc/codecs/adau1701.c
+++ b/sound/soc/codecs/adau1701.c
@@ -325,9 +325,7 @@ static int adau1701_reset(struct snd_soc_component *component, unsigned int clkd
 			__assign_bit(1, values, 1);
 			break;
 		}
-		gpiod_set_array_value_cansleep(adau1701->gpio_pll_mode->ndescs,
-				adau1701->gpio_pll_mode->desc, adau1701->gpio_pll_mode->info,
-				values);
+		gpiod_multi_set_value_cansleep(adau1701->gpio_pll_mode, values);
 	}
 
 	adau1701->pll_clkdiv = clkdiv;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
