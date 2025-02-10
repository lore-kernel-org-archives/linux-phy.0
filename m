Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0978BC021AE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/k5FPH38Hnp+a2048IsfzuL4hym2p2gsbtH7VmoZ5Tk=; b=EXYo6yZJdd4fFF
	t5gCxUufKvLaspSGgfUklgmrruvSW1Kqk5xUj/TN4K/7rbjuQrAR5ISjvSKFEE6PDJDwhzyTYqgfg
	/QWQEWil1dFVJYOC5KSQ2NmrskqrIpTQq+5ZUdghRZcIqgWny3opZHQmgtIg/LDW+h1Kb2ruhwi2V
	Q5/p3cHugcL70IJC499PEgiUyybQp6o5rjmizqkqXLz6Yx97VXT4m6xNjif1BAzqrvaBj9hhm2rtu
	8x25J9KU+SeyURDrzapvZXc2MJrBRlHQ50kJrO1NNZeSkwG+4FpWpJ1GSq/AoNlm2lk9x2IAPai/p
	5+pIdZKBKa4NAInoJdZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgo-00000001kXZ-38D5;
	Mon, 10 Feb 2025 22:55:42 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPo-00000001gPr-17aG
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:09 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3f3bc69c8c6so548451b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227087; x=1739831887; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/aqCjYxf4gSpR0G6gRQq6zdrmHAVbQWmkyM76ZxN2F8=;
        b=0NCBk+2pbC68rn7irpjlH+wAObOooUpuixwSK0LkMje6pWFrPomc9r0GnD+o4eL4/B
         OHbBP84/LjHmQ8qb93z4RjiCFU+cSJsgmEpjPJPXXNod+w0gO0vOmj0O6HT9YvzC7LPM
         EGhp3M2SM09d079uauN43UKSViAaz4G23SCjhpVkFqhJY6R1Fg38Y8mAcHbxDGtKPV7J
         LhVLN1Ue7qCFL6iar/OeQhOUluB5tdPt3APMGMQrWp+IXTV2uqKmM/E10Scuu2Sjo3QE
         V8rXdHlowKtF3x2HC2c6n6vZyBVjRShm9sTDbF0CQ6clqvSb0QnUrUltkHkm/tNFTRM2
         TgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227087; x=1739831887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aqCjYxf4gSpR0G6gRQq6zdrmHAVbQWmkyM76ZxN2F8=;
        b=ZcrORATw70hT6F+8aOVhhHBK4zrHw9pVE5tmK8fYo2q2kobgIR+FCsgHMcvkh5Ggu9
         RaVfXEB3pOo+48YQJ3Yc6D9J16oHj0qtM3cmYECq8MZFccONA5pD9V5FwGGUM63nkNDc
         WWRpkcO+akVodvxLA/54IvrnPFEf5Y+Rnd3WcDWE0bHrn9LI0q56sf6Ew+fv4zmR3RpD
         NMuAhEBUPJCnOvSHJJ7jN4JEqdDktTfbZE2W0ZPL+NnUASZRzZosZRTPynqeNlr4noD/
         JUiKRn5+pTT7aLWvmekb5VjdvpQNYMwTqsBbSr4jPk/2S0RtEl7tHS/7055P4E5evvPZ
         Q6sw==
X-Forwarded-Encrypted: i=1; AJvYcCV2UiJHMR2WWJMXEq7Et12NgIPl4hKdJGA+4DRJ0n+xjhcUZV6GyW6F4RXJgGnKrmWaavmwZs4tmzk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxU1F3vcIkWUZWX4EdZouBHWYqXQlp0+JAHUro0rJi7O77k+c7
	YviuX5bFGHsHOTnJrTn4DGyhqSlwysP8vy54ISN4udTq27DSObEF8lhMMJj6AHw=
X-Gm-Gg: ASbGncujVvPcZDvaEUcwOLAtC65AuGSH8tinSeD6dJfYGp3y8W5l9jGGvyC6SJZyTwq
	Z6biKgIDcpP2V0uUrh8Z6F0l7cgaerFfWWX1gwneQtRDlad2a0IytRntqWCS4tDnKVaM4w/8jlW
	dO5IgVpBRIYMCT5Sw0/t4Ksbi8KFJfJK5N+nXiofmSN8tFtO0VIUz9ytpAuE7TMoRy8qxN8siLL
	FjMNogcJmVTzzC5rfKNfv6BtHF8zhM/lGS9OZkVP0BzY4kmX3UE3ZszGyXRlmJ07G48YYMlGTO5
	2kO7WA9i74DzafFbhr+fZ2OaJP+HUY+5hSJCQU0V2vlqdYY=
X-Google-Smtp-Source: AGHT+IFodsa1xU/+j9iOyHK4zd5srfGLBws68RU1hOd0Hvn3EqSmNLjWe0xJTDgUwSiCbolk4Lse1g==
X-Received: by 2002:a05:6808:23cb:b0:3eb:5f1a:d083 with SMTP id 5614622812f47-3f3c2633408mr767124b6e.20.1739227087286;
        Mon, 10 Feb 2025 14:38:07 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:38:05 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:38 -0600
Subject: [PATCH v3 12/15] mux: gpio: use gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-12-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_143808_306216_E3D4F3D8 
X-CRM114-Status: GOOD (  10.96  )
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
