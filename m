Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AFDC021AF
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tAvXx9N/0PdLKCFUMbf7rVpPTIxlczjmFSu1d/8Oi4=; b=Y/kxhgzU4JkAdc
	/M2BQpXuv8ODfTvBQwef2pmyuW8tSCHwai00SoZSp8U7UD/EVcKzWgaEGPhTTs9cXOkK7TGqK4y1/
	lkuIzICPe9ZejuTyzn0/S/Usoa/H7U1snudw5FIMU6ne8OY3d8655oQTC1mo98FxldGU+7nsNqgCZ
	6pzVF2CzjmTW2dDKT7ZjKaSQj525BCOwGjp2eFsB8nB1VXo3pHmoO/0pA0j5TVLbl5lpwg8pZH0Dc
	MJMN5pat5wQLlWcz0wcWKJJGd4oRKcSVEk/bDqBVLWa+RHoFBql9RhUqNiDJ/zioCn4keN4CATAZ+
	u77FRjUt05gkkqjpUBdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgp-00000001kY0-01eY;
	Mon, 10 Feb 2025 22:55:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPu-00000001gSC-3ZMR
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=wW6RHWEtayZ55WpdhtLO2i1JoETOot8MdB4MGkvPArg=; b=aesMUnoucWiUVaR2AQk2tnzR8p
	Hga7tQrVgQpSQ+sXLXkI+Sxo/ibt9u+U5ZSzHuI7Q1pZ4szhOTaB18fZCW2l0pAiIwHxS2X3KyWOS
	YYwZVV7/xKc0EWy3KZF8KBKPMDSr8qYn9tMjI5wrOAO6AsXVsTS87u419RbUYcopq7ECOiQ897nzB
	a4WH9xyUeRiqJbb9Dtf8cYnRo4Dw0/DLDqtHFp2ChpToWz8KmQ60ndxOGvRw8MGNA5pF/cNJeskol
	SJdUBPzoTT5J1cQmWAwcxfGXK2FVyPz/Kb+zwendm7jr1nOiujhjjItzvL5f7qUuEHS9Jr6CvaaUz
	ImyD7V9w==;
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPr-00000000KTY-3rce
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:13 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3f3b93e4e32so650351b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227090; x=1739831890; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wW6RHWEtayZ55WpdhtLO2i1JoETOot8MdB4MGkvPArg=;
        b=l4XnQ4lnMroQLfe2CWEAA5fSRDmqEXawcdu3hGDP/n2qOEwyTuHw8t97NDKUUUg/hQ
         n37gur9pFbC7qZblepe3vBrITHrvrlGUnrW8HVCeUow/CXK/hAcfPfC46hT162CWTjBf
         eEmFTwHqvJU7dqtdWYkrmHCG8ObOTnqQjUjWCLMUyx6BStKy5Nn++2TvI+tP1SMqR/eV
         MQLRH7gUDie/TpvAcwJ2kdslM50uHrgYkFB5x4EUNraQoE4FkUkqDAxyoriJVrjS6BwF
         KAkMkBLsWzcIdkr4kss4xsIjd6snccTytvR0UP1BCt8wOurNCAV4A11aa1i+0RulKqF4
         6atQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227090; x=1739831890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wW6RHWEtayZ55WpdhtLO2i1JoETOot8MdB4MGkvPArg=;
        b=U36ay3SCu+Mi0+qGHzmEXS3TnWzIgvsx3svENv1FujAIbgDxyjsSWzEvkP4/QKC1e4
         PhVZQx06idiGIoWvgjdhzRl26WC2VDBOXS+gy/06eyKIpsV1mNII/S2nhg591mwraJHd
         2Slj4B434rCQ/ZmN6AsZ0k9e3lmUFhhBEJ9YNzftTV2JQAdMvqvp/4Y5Qpd3fQiIVCEC
         mCnCu+h1n62T6AAea+X1T2HM5w3nrjPVqeLrq4BvkEKW3fpdZbDBzocsVeU0IzgzbUzp
         8wUS8ufXN2z5QlJAM44PvhMNgyNI10uLnLr3fXCLtdqdJWgvBRV5KxXt2UXaf7U58/8h
         /lnA==
X-Forwarded-Encrypted: i=1; AJvYcCWNHd/mnytIhmsX/JCLrHe5qRdyTFgok1S0U1G203kz1LUSpXCo80XYltAi+xkhQlhc0HotdV5Ze7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx94E51hMLdIUd7+6m1oaat8xgLCr4rXMsEU+6prUHfoveyeoAE
	ttlTnibnpZP/ghedC0kIueJxBGk8/oi0OL3oeuxLR7s84pIpp2y/De/V3G96uDc=
X-Gm-Gg: ASbGncs9FuiPHFpS9RKR/UxVTbpbNshI6Jc3wddiXZFe9vl7hOOMdv2mMInP9rKdqB3
	QMNubpiUKkbE/XX5LaO7SksJ8nr1PaT5D4qFo2BCO9YXpKLqLnxNtgXXgjTiOFW9W9IE6GgnNCb
	FZbi1wg1o+0AW8dnMGy+pV8XgwVvN3EQ7gByoHL2ezzboV9EhlDNmIjPUe690Ajz5KepuG9v2zP
	FA26UT2pItN79JneYF3figqVs+QMHOJeqkkbHSTqvCWP05uOVr32GcflJXQw5iWn7utR8p73ijE
	pgLs/oRaTV1Is8Du+A18d+2yoyXmfOw4Yjotkd+LFiAgbZ0=
X-Google-Smtp-Source: AGHT+IExgIdSlhgQSDcOsxwx6WPuocJhwApgTGH7w9m44PNZh2BZdc/bphIdIFYjyr15eu6B7MhSQQ==
X-Received: by 2002:a05:6808:308e:b0:3e6:54c8:fad3 with SMTP id 5614622812f47-3f3c2abf6c3mr690448b6e.19.1739227090579;
        Mon, 10 Feb 2025 14:38:10 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:38:09 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:39 -0600
Subject: [PATCH v3 13/15] net: mdio: mux-gpio: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-13-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223812_134736_6F5C8BB5 
X-CRM114-Status: GOOD (  11.16  )
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

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/net/mdio/mdio-mux-gpio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/mdio/mdio-mux-gpio.c b/drivers/net/mdio/mdio-mux-gpio.c
index ef77bd1abae984e5b1e51315de39cae33e0d063d..fefa40ea5227c5a35d89ec2c6f95c6668a2470f6 100644
--- a/drivers/net/mdio/mdio-mux-gpio.c
+++ b/drivers/net/mdio/mdio-mux-gpio.c
@@ -30,8 +30,7 @@ static int mdio_mux_gpio_switch_fn(int current_child, int desired_child,
 
 	values[0] = desired_child;
 
-	gpiod_set_array_value_cansleep(s->gpios->ndescs, s->gpios->desc,
-				       s->gpios->info, values);
+	gpiod_multi_set_value_cansleep(s->gpios, values);
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
