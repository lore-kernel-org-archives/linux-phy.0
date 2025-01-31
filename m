Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E060EC02193
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwKOcFTkMzsYKWQWrVS16pSUskt7OMR+LJmUHJShsOE=; b=oe4xer0YTCJz24
	Wry0GnIr1xHbNfrOsH8sioZp/v9D+xBofaO2wQIjEt/LvH1OGuMYIU/qnw5eYnRNF0SXslm20e5S7
	IiYlgU5SpyXVtvA0go9fWZJzWNS2mgew5m8J/Lmjj3cW0E6bWICbqaruZJSwghGkEJFEa2N0Jamsh
	743m/OtDKN66zJ6/UAuT3sjQB5vBCHBo48I6QEK0fL0TEw5Z7vUAvMlf0+SkO5q785Umliq1NOTJx
	oPxGLxXVCfMYrJl9Wc2mPNN0uo/HY/G8foIZNeirSTWzftfiJyXxODpxKsQo4eT3TpyXtPcOySJax
	M7R6v+/KHtratNf2On3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZj-0000000BMw7-2m1T;
	Fri, 31 Jan 2025 20:25:15 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZh-0000000BMvD-1lHF
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:14 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-71e10e6a1ceso618990a34.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355112; x=1738959912; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8dlq+1FyobpCXd9TkKRwFwRft57r9IiORFW/g/tAaA=;
        b=ekMju6EXyeCvEWCr9HkYYHemTDU6OOJlfbBXtK8qnzFbvsfIOyd0uyMUFLb/v4ceCn
         XHmDS2dScIWnYna+OWKI6ORCXdzK9BxlH4QVCNL9tGnJ1lr0bWz9Spvtb3Mo0lXtJ77m
         RLqwut8lj3C8M3YLLQ6cLg/yqv0xssDRu4gpBEvUl4OSLfCLO0ZXqjNW7IEbox+DhgYt
         kKi84LNv/0IF0HkFlu6KeUBtL+3LIB/gnxszVGAJhG1VgABZoWaQSnO7EPEQpPAFH3WZ
         vQS1ujknV1tH9nA5N3cvM3o2qaOlmoUuzbrAws2X3iIraUhXYgBwM2M2J1awPvKQIT2c
         uInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355112; x=1738959912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8dlq+1FyobpCXd9TkKRwFwRft57r9IiORFW/g/tAaA=;
        b=FlH/Uj0euqvULA5ygJ87bvohgfQltKdrnIMvmMuKjQFZZHDjGmg30nzNz2pudH5QdD
         ANJSW/CzJxDcd5lvRFMM5vF06j7Bnp1KxhrR9QJDYb5f3gFnW5Db12CWqtGG+LwQJjmT
         BzzBhl5a1nXWgwj6j7DWvH/E9Ij1CXO+/13T98RW2sn8cYDokXnmR3md2vFT7s7Vz+t7
         riX6kxMWa7IcHARlULYJOtQaUtEKpLiRXMObwOYeNLn1xnlWNZgCAeNf4f+fY6NNFMK4
         979OgA1XHgb2lRduA6h1UgyB+UUtv3c3/K6VtBZ0L3pcO448xNhfTgee01FJtoW3Tq7Z
         Xk1Q==
X-Forwarded-Encrypted: i=1; AJvYcCW8FwpDIackA4UXNghflE+qWaTqv7zA+cPKnOppJggkh7ao8NdlEM7fOMbWzLvYaf9Nqlhbi0dvvv0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsEsoBQer2/7bZOjEAdS8ZE64yqB9D2lNJWUZoH4WczJcZ+bGO
	jgDEIhiEtXUdabOEreOW+M8WyihF5uwHQ5r0z3FsRfp7GxxtCG1TXMhncKDXjOE=
X-Gm-Gg: ASbGncu6+Ksv5bRjyn9iX4716pvhkhXBaTe016yg++hiJGEFt+a6cs44N+sKU78abvE
	64XjyWNiYZhI2FP6S4wZ79USSdJBXdIqC4rlhxDbrAsLw5jXL6044AMxDN3+rwQ8EPfh0iWOCWz
	EOmPpOscZyU/fJfky1uG/YtUG6kbOR25m1rVBfVmN0GBDcORR9GsJfu2HBUI+iGphqHk48WZG1i
	OfYABN+RYuYnRADMoykvMnivuUYOeImxPKF4U3pVNjoQNrjVXxAqjOxr7iPG/CRoutCNT6zdxEz
	IECino/g4/TcDcr/1Q7JabKbmnC1mqDsIJg/pIJX70ofXaA=
X-Google-Smtp-Source: AGHT+IEOPFpYcNvsoJvtChI72uu39YNNI5XV7tV2UH+PWhk+hEwEt/BHCYYItie+9RSXj9400mKLXw==
X-Received: by 2002:a05:6871:2106:b0:29e:2caf:8cc with SMTP id 586e51a60fabf-2b32f30c9fcmr7202349fac.37.1738355112453;
        Fri, 31 Jan 2025 12:25:12 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:11 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:50 -0600
Subject: [PATCH 10/13] mux: gpio: use gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-10-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122513_461329_5F82C3E9 
X-CRM114-Status: GOOD (  10.17  )
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
 drivers/mux/gpio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index cc5f2c1861d4a22d984bcd37efb98dd3561ee765..fdfb3407543dc3c2563750b013754ceb3390e39a 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -28,9 +28,7 @@ static int mux_gpio_set(struct mux_control *mux, int state)
 
 	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
 
-	gpiod_set_array_value_cansleep(mux_gpio->gpios->ndescs,
-				       mux_gpio->gpios->desc,
-				       mux_gpio->gpios->info, values);
+	gpiods_set_array_value_cansleep(mux_gpio->gpios, values);
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
