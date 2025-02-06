Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40733C02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51BiJfVIT3zxjS3+7073ofoWfVTYCxPwRgt9LfpPsak=; b=3JVoxuNNxHpITK
	dNUQkQlVfgQFRQr6SMoIE4tOMJ0CVvwvlNMezhq/ghQds41T9/l8zAV948+YJ6DuVh4HjiKDosRh9
	cKWV3Wtp2UdQ+WPEpBTdUXlBYeKzyXNgG7vO2iijk5HrAzrauvZTRe8Sspxb2k/62DeaiX8Av3Lue
	tQlng6zkjPx/QCUa14YTlXrGcudoFghYWykWGIfqURv51mS0Fk+oYdmvidT4+CaNL4HizAsxdYp1i
	VFUxFHW8XPh0XH5HyNjIzP6LUq0JiMdNKADELq5zJDjtOifGKfmnmJ5GNBUeyq/YunW93+c9nm4or
	mPabtGQU2Gas7U+frNTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfZ-00000007iId-32Rw;
	Thu, 06 Feb 2025 22:48:25 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfX-00000007iI7-0iaR
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:24 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-71fbb0d035dso905091a34.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882102; x=1739486902; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXql2LNKpg2iJS7/BXdVqEWK4gXiK1Iis7jUGxkm/8M=;
        b=pHlMKthHDM1GTTzl2C3uqjIxRvNgT2hxO8yq0iT2LihyUTDI3StKAzjC+blDdNKEfZ
         2Q6C/kjvyMM0arlwllj14s6xpCmT3teLv4EM1/JQRnjylU87o2JhjkCUyDVa0GDsjzak
         GQRgaSkMMLD7qUEKuxcwmp4fuA9/KCZDsIctRnfpsrrh4ew2CRBgEeXSRVfspMogcKAW
         Kd3ps7Ehe/tsNGOGXnajedzh4lE8noXYkNN/yNnA9DM5SCjmRtVipMX1m5SCyTA1saym
         ErbFrzKd3HMGDu4hW8YivS5XKv6Hx8dpOGoRdtXojKtVHgBdOUuvXRC2AwEEJoyW62K2
         pHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882102; x=1739486902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kXql2LNKpg2iJS7/BXdVqEWK4gXiK1Iis7jUGxkm/8M=;
        b=Io2WA3gpEawxe0sI1V+5ktuDDgqP+nOpI6wk3imcu7cb+XYNOnLi0PrdImVoqmTwIK
         NZ8R8srPw+TzUwmVyxTkI9ZBXMG4iBbpOXOqDGO0gBoipZJMzGX/axIeJ+5id6+wGBEm
         43V3uKNDB9Id6/SEbxY1rVnSu8keJH0MUeQjjgZ53N8QkfEGhpA19uZtAPXL1VQMHUsa
         6hwVLXHAW6mX5FsNo30kbnY6bE3yw6hgENZNCfTrlG8wvpTNPcst6dvWTuHpVAYkjKwI
         WJFnJujPa0RqdR74SkYdCoAGBqEP+sW4I0b4SHxHSL5bIKvzcmelHF8oiyQOzAEIbbkp
         w2RQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQ8jrdK2dOX42ZWQa+khXx4EhO9FLPTj92UDzP0899+fqZ4+7SS++Cjzn8Y9pH0mLN3Vd+gsXwgws=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/QZ4KsSe1O2YIJjj+m+h6VI6N7eIwcngczxC0MAFw6nwtjwLM
	yPKXjXYkgoy4P3z6sjQ5PihczvKnC2khxc1lQy2O0R83V3m/aycbqZ5xDFFxtEk=
X-Gm-Gg: ASbGncsFg00ZCp520mj4/gEltGjYkXdvRQ+w/eKsuFiIUztMzP7lIheigBPLEBH5yZU
	WmBDlL4Uo/ugeLmMiJMqJAeelxSoMQvDan3DWBAtu5qqUQzAaJPIpmp4zSSuMN/pT1SACCMFtNO
	d6NpuaVMUd9QpkjTpYwqmdfRtMT+jHeOrGh/Vme/Ve0RJyRhI2Fx+S1SEhSBBJ/OYR0NU3UxnB0
	6uWFRC2WpftxDJoJQ/RfgGg9sErgnUf1s2ycQR/mhMEtf/C7HE4kxQVryPx0C/VUTaDc+8VOGD3
	fTraGRq5ws+mwtm31qHNglS1/1lS3LlGsdWoumMWuCe90+I=
X-Google-Smtp-Source: AGHT+IFiFjinAKAnXyIV7RGC3+Xe5Ny6G8kVNZ77hCnDk++KNDJly3JOvlipHi0kVubWlIsfK4Ezzw==
X-Received: by 2002:a05:6830:6e0b:b0:71e:5a:f4f4 with SMTP id 46e09a7af769-726b88b89cemr713244a34.25.1738882102556;
        Thu, 06 Feb 2025 14:48:22 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:22 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:15 -0600
Subject: [PATCH v2 01/13] gpiolib: add gpiod_multi_set_value_cansleep()
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-1-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144823_214954_AF43E53C 
X-CRM114-Status: GOOD (  11.05  )
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

Add a new gpiod_multi_set_value_cansleep() helper function with fewer
parameters than gpiod_set_array_value_cansleep().

Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
cases, the first arguments all come from the same struct gpio_descs, so
having a separate function where we can just pass that cuts down on the
boilerplate.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 include/linux/gpio/consumer.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index db2dfbae8edbd12059826183b1c0f73c7a58ff40..278a197a9deba11dadbff0b58507df91be658f34 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -655,4 +655,11 @@ static inline void gpiod_unexport(struct gpio_desc *desc)
 
 #endif /* CONFIG_GPIOLIB && CONFIG_GPIO_SYSFS */
 
+static inline int gpiod_multi_set_value_cansleep(struct gpio_descs *descs,
+						 unsigned long *value_bitmap)
+{
+	return gpiod_set_array_value_cansleep(descs->ndescs, descs->desc,
+					      descs->info, value_bitmap);
+}
+
 #endif

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
