Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AC98C0219D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkMa7JhGWHPwakvgRFAtnnbbmqbf9yGcCHBduJ4EjNk=; b=rBDpdhXV89j46+
	wjRoavB5MWXJV+IIU4KJBu+lVSNO14ieD6jo6N4O9STb9G8q8iubM2t9qWa6UVJMWQ4nMj3Ik4mH8
	SbxBxftHzT7gq3d5UOqhEfewklesyAjo6dFRtWnX5VJrZfccFFweTxPP6rKPebFJwK+nlIMpEv/eQ
	UZfWZwWD4ZxhSO6CC2WU4q6uzx4h6T2O+zB+Ggs7k7fSGYeXMkDS8HYqIZuc1K/1zrtIIPnVllD4O
	ncWTYWEzVp7ybgOb0mCh/fsJyj77W2aZNLkvLs8rAt/ir+WNy13ddvFavIcUJ9rBPST3N+nIoYgqL
	0wwHlgq4h0az7wqeFOfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgl-00000001kRc-1G7m;
	Mon, 10 Feb 2025 22:55:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPL-00000001gJ4-0FLU
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+BdRdts91zZ1lBz7cZl7Oig3MKNc6jPxib3EI6sYvCw=; b=pYkqXDmBjhBzEtIKSbulfbTimn
	CGDjssY9lHkBYuhiOjRoJ1FditakDKMdoalmgqKyG5xbRsI674sFd2leuXWV+PvujOfRGfS1YugiD
	4Iv8e0aGfB/LbcuyI+SetUnofW91gc6tolfA5xWPSEtX5CWONbeHcTrUx0HqNhy5utV3GYak1Jemh
	kA7owFWEuyFYtrWlitdOmdI535K3zWLn/HTl7cgRvOnhDSCCK2X8La7VyFhm1mo4ObfS0ZBA5Rg8z
	OwmXvZ4uFfcWgwVmeQeB3gHcS4PZbgkouxnDGuryhKeef51m+DOxoyJUXRlDc+cYuTjiATK0sfLVt
	ioU9ZkHA==;
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPH-00000000KMk-3zQL
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:37 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3f3ac0c8053so877238b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227053; x=1739831853; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+BdRdts91zZ1lBz7cZl7Oig3MKNc6jPxib3EI6sYvCw=;
        b=SyoV48dWK4TCcWjW1GQyz9ve9Qa/GSTQhmY9A3LnoNFn2pfUHWbjGTqTcJHcyWsPh/
         1BGlPrSMyePrWojeiG9Zh+MwpneEv5ITWoOxXz9VzbODdDRfGiHDrbMOSCc68ovLPsQr
         Ug7MBpFHCG/IivtsbGcoCHtAgFlgb35Hm+k+BKCX8jpZhfJHy4W9AuoxW0HvYKOg2k88
         iVogHS5yASlSgRCYevCM7K+ztRQev47axsi8ym/CEDfNlC04nPf5tMNVzZ17Y7v1WCRx
         Mh5SCQVu5yZQ/cmAjJpWl5gOYDXMEbQnemXoAwNJzcmC2cRRWvQAOKjMxxE3JBC39I8j
         nWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227053; x=1739831853;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+BdRdts91zZ1lBz7cZl7Oig3MKNc6jPxib3EI6sYvCw=;
        b=XXnURrlAEvkajbCOlS4i2IG3Gtk2C/RV/7uJ7jMNueyqoMKC7wM7M+/yrjh1nkh14P
         ENriIFGXqWFhWKt4Y7J/UMa3GTWeG5JCpRXxBz135b6mM5IChHrwoS37TbT84Sbhm5ap
         4PR/BocTvMyKo+XG1PzB1DQ08ogbiow2no1Wga7CLBdnM09pkyyWb4xt+Md5eC99n8L1
         a9UA+mUaS5cT/mfSxUu9YwtMcPWf15KpHj10itirHOy41sTP7iZL3xJTWcs5g5QphE+x
         bJinKCldiAM4Rd7/Iv+O4hy/96ItuRol+JFEiqxl5Zwvem0jQ7dQ+fn1ut693OxMaGz9
         kBTQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3t2xnp1Af2x0r0Fyq944Etu/Pt96j+WZhTyI5x5qbQ/KoJb6iac/uAEMgEfs4Nwj1ZFWe116Z9hw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSvMAmv+i0SwoVpjm8cKN/hGC3Xk5na8N0tXGa1Rrup/+GSWb7
	PbGEJD9C02vQidoZgki0P/VUDzRVAS+MlazsIOpH3tldFKVuuXYfb4bAcfBFcbE=
X-Gm-Gg: ASbGncvvHkhxzxGr9T6ZQ1Tz4JeUktmGHBGMxNf0BhnkbsqYWIAtLFgNAdSdDmFQnxz
	myapMdrIouzi5NGTkCyE+K/ULuuAKR6ZWhSk5SQ0qHtNgOoOCcn8jaV4DAgbv4TCfocA7gxiUY4
	i7yLsmDt5NTmMwR/LpGu+gKbmMG4sAadgfmccQGnvNuqLSeqiOaymutoGvbu5VioBdmzW0kKiWz
	Un21fTEjixtaQEhs6GwUHveYrCGpbfZia4qrWXVSRGGyPErLxhoz7LLVOATlBjxoCtDPOsf+pUs
	QruwIx/jkuXQqRrNbxDE3UqvC2rCnpM9dg+LaGx8qI6vFAU=
X-Google-Smtp-Source: AGHT+IHsM3QlE/6UGVvIOu1IlhPnETs+gBtT/fIeOJD2BqtDOh052hlxzN8ugWj1HusAxyIKgoI2uA==
X-Received: by 2002:a05:6808:1590:b0:3f3:b8c5:4ff9 with SMTP id 5614622812f47-3f3b8c55799mr3309849b6e.28.1739227052973;
        Mon, 10 Feb 2025 14:37:32 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:31 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:27 -0600
Subject: [PATCH v3 01/15] gpiolib: add gpiod_multi_set_value_cansleep()
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223736_218627_5F17B2A4 
X-CRM114-Status: GOOD (  12.67  )
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

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

FYI, I dropped Linus' Reviewed-by: tag since adding the IS_ERR_OR_NULL()
check isn't exactly trivial.
---
 include/linux/gpio/consumer.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index db2dfbae8edbd12059826183b1c0f73c7a58ff40..5cbd4afd78625367a761e224acc3f7336d310dd0 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -3,6 +3,7 @@
 #define __LINUX_GPIO_CONSUMER_H
 
 #include <linux/bits.h>
+#include <linux/err.h>
 #include <linux/types.h>
 
 struct acpi_device;
@@ -655,4 +656,14 @@ static inline void gpiod_unexport(struct gpio_desc *desc)
 
 #endif /* CONFIG_GPIOLIB && CONFIG_GPIO_SYSFS */
 
+static inline int gpiod_multi_set_value_cansleep(struct gpio_descs *descs,
+						 unsigned long *value_bitmap)
+{
+	if (IS_ERR_OR_NULL(descs))
+		return PTR_ERR_OR_ZERO(descs);
+
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
