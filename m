Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D380C02194
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDGSRu9+RarSXbLVuqOmfI3R8pbpfvZ7S0T//JcGGLQ=; b=FCcLnLjdJwHoL0
	X3sEsBLq11jT1JEgKiZW0bI8TwB35Y6V9KWfZcTfplJGUgvIM28DxgHqdnki4T7pAQ8lS2lQOYOtP
	Gd+2nih2xgl7D4I62pUiWawz0vs/2zSGowq8/MVfATYugAVHoPKuD3WpCcGABzaTkDnLduQzFs7+t
	3SVGstlfKdEZCwQjRY8Qd1RME2vwHG4UX3aB2luIw6vzCo/7lK7f83txQJBK3YE7JytsogHeSdyVj
	wyvdB8ezjU5/xdkpwvMhGw3Ku8rpSusdigcLWRaTP8XbdyhstHFpeYmiz2oCvLDYMFBTG5Y3Wi++7
	OomzDN2wh1b5p8qNpUDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZM-0000000BMlh-3eMP;
	Fri, 31 Jan 2025 20:24:52 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZJ-0000000BMki-2Xhr
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:24:50 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-2addd5053c0so1229759fac.1
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355088; x=1738959888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VExoELcV8x0LQmV6C7xp1BlVeCvht+mgfIMccHi3FPY=;
        b=m59P7CGskUwOWcpfrHSTeMSnGSSuiKFnR1vmCw3GjarFD9fOZY707wt+N3p/lYNi+a
         +BN5JE62g0uXR8N+oCmWcbJdR9ERpkExiq2BWV5XLyL0IR3BLuQq9TKWyJwRSY1RWguD
         PNfjjVpDmTCiFpTN+rW39YwPfOrGDuwvPiMAFR34LkgdTxw6SRqdEYeUkp0H2iOmCJWP
         4wnx3o6/RPlq8q3QcAJdFBCYwLjsF54AQlUDwOR+C87wf2ARwlbsvXmNip571jqMlXe2
         29it+KvY8bdpLRF3f3XONXp4/heXbAYG+Y1NdTEJIi++8GN8tOskE8PWFdovnuwoLKKh
         c+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355088; x=1738959888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VExoELcV8x0LQmV6C7xp1BlVeCvht+mgfIMccHi3FPY=;
        b=kB9k7y3WWFVpRJz3+vKa+8WsXCMxaxj0XDvNCUHneab1C153kUaqfWgmLKpf8YASyB
         OVs4DebiMur5GQ+QnvamDwGfMzGAPw3X2P4eMNGeoRWMHKbU/YJy5A3UpYlcr98J2rkU
         GcCXIfRhuXvS2dXz0Gz1P5eq5+wISkrAUp6G2rwm5SX+br13zZjFPM6Dn0UcIZZ0tL25
         9q7m65H+ZfBcbwlnMTzq/luUcGklhQYdAuPHWKxS5jHN8zqJdcwcAukpk0ELUG8UBYJy
         S9P/TgG3jAtUsIZkotB/QFUnAg/hWdj+KKCDmL5FMHTpShNcLqgZnptHfnrky8/weTJU
         9n5w==
X-Forwarded-Encrypted: i=1; AJvYcCUCpWeGFh8FEa+ZMn8Eu3hmXP89kNHDSdvFbKBURwBMb+1P2ImRUKrEaIGDSUUCBsbSbytwSWhwM2M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWJCBw2iaI4TNKefYsIX52PLAPJ5aHkXUxy82YJNMTmoNgXz0x
	mQG0RKwa0NtEmUQthVxM54xGIsFBWT32trt0bjAj+CWN8g1GEaul/AaugNbMTrU=
X-Gm-Gg: ASbGncsXoaW8cDNvybEh1JFYSw0qYFAP9VVGTjF606p1Aa8LBrOLzLrFBu97K2oppQf
	o6XKAqbYs1+GjXtGp6JFvgUvHgxcug/RvCEIqpAHV5AuSS+8dI0O541/Xw6RXLEgsJXE94o+Xs8
	Vyg6MVbnTlmyBXZeyVpKsC7GTEficqfHWS97IlsuxUOlQHNmPtgnWaoCFYGY4kf0yhKnq7F5Raw
	M+2gruUbfNZWDjpH4SjQS6n2ICi+3PTiS1zwAOT1Cwvhoy6Nj1mb3zN6ckbVL5CJJ0pO5t0HzcZ
	T9qm9i61INt1QSRRblHvrOBWnRcYhhkWo1sIGOgUNaJ8qzo=
X-Google-Smtp-Source: AGHT+IG48amD1C5d4QahkI7FJNfsOoMi2CtgfNG8+gnzn0CcyJBNzM/PkTQMiDNqV/T79ZK3cKZLjg==
X-Received: by 2002:a05:6871:a012:b0:29e:5297:a2a7 with SMTP id 586e51a60fabf-2b32f3ca389mr8811438fac.30.1738355088436;
        Fri, 31 Jan 2025 12:24:48 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:47 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:41 -0600
Subject: [PATCH 01/13] gpiolib: add gpiods_set_array_value_cansleep()
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-1-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122449_647050_2EA0A359 
X-CRM114-Status: GOOD (  10.83  )
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

Add a new gpiods_set_array_value_cansleep() helper function with fewer
parameters than gpiod_set_array_value_cansleep().

Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
cases, the first arguments all come from the same struct gpio_descs, so
having a separate function where we can just pass that cuts down on the
boilerplate.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 include/linux/gpio/consumer.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index db2dfbae8edbd12059826183b1c0f73c7a58ff40..1c9bb3cb1ee80fe52aabf5bd24b1d128eff2bc99 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -655,4 +655,11 @@ static inline void gpiod_unexport(struct gpio_desc *desc)
 
 #endif /* CONFIG_GPIOLIB && CONFIG_GPIO_SYSFS */
 
+static inline int gpiods_set_array_value_cansleep(struct gpio_descs *descs,
+						  unsigned long *value_bitmap)
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
