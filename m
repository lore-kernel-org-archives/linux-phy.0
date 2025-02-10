Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77630C021A8
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOL0d1teaJ9V2Z4nFrmfO4cYI6/Dl51lQDfYBZF08Eg=; b=ctbFtD6a/gG+wc
	RCWyyjI0YN/pSBENHH8cSWvyZkWMjcc/bCkN3antoh2eYf3SxhFp5VJiDU8vLOWZsXujsTecGYOxZ
	1xufGP3m+Ox9azMgfKOOJ7pPyNAWGVA/MObli9ciBkXk68EgM4Ws0FszATONB3wBjm60aSIiT4R+/
	163oNqzQbPGb7riyPrH6IKFRfMKBpaUhZ9oUQZG2UDWs3kjfPXPm54Cs0WurPVRryKrOgP2zg4DZX
	vXgYNdJBf0Vfqn5ea78Ti1zn8hjJo4so014p/jCy+UaMSjTs/VbGvUcM0Y+ItSgS0jewNqm3wSGJr
	N4I703WTD/Z+Qmy0dsCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgn-00000001kUo-0kk1;
	Mon, 10 Feb 2025 22:55:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPb-00000001gMS-1nRy
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=9KFibiHSceSI9J0YTbtHgVyCC6KTbDSSVoM74byAuKE=; b=E8M7k6A0n2rYBcWFSkOWzHeIQm
	AehN+F5rRh/WRmXTUj4bk1vbPHNBOVJ2MHlvA2BWz56zTfuysv5M7M3MkH1Xz8odyZaoKP+SIEa8b
	3I7uhpvkEM3ZBahB9PxWvmMW6L6Dvc+q3MliDw5tn4qyJFAvEtUva5Cza7E6aFtdcSLgfij4Vh/C/
	1Yj1QEc5SsEn+c4dmTSvYu11GcDmcBJiRGmeJLrfDdb0Mr3+EeoTMUQQfYURh/eV7OjWg2sLcDrYQ
	/7jYjceAW/qyK23t9sf3tYZ8T69beDHD6Yz+UgJZnTwwDB2iIY/TL0hguTdOMboAz4dRgQqJeTg15
	ebxvhSHA==;
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPY-00000000KQ1-2Rzj
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:54 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3f3bc69c8c6so548312b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227071; x=1739831871; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9KFibiHSceSI9J0YTbtHgVyCC6KTbDSSVoM74byAuKE=;
        b=QsSeuO2P9kScXI6IQqONW/1zdIFhTtmt5jtIVAbJYomvzZWfhr6Bq0PRhk/VeGqaNz
         mxUfgmovyr2yVNr5vocUO+ZXXqBis0DS3zI5BaWNd64xI75DfT5pcyW487TC3PYN1Mxa
         CXIJKZM//Pf5C/i9VAIPa4a6lbJpWGMP7YBfYRB6yfW1UcFmd7zFjIOdLm2RA1Y4WZPR
         CDhJI882lRxcs3Loq2Q6ZJDbqc/bu4NLbvfFJF6Jf4tsPnqEkZlDuT2IQakmmvgYTija
         BasJltxjtwKczDRCMJOowiHWuQUBess91RitwTow+wfkZVCr2LjBDXHyLHwjUuXLgR40
         +mYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227071; x=1739831871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9KFibiHSceSI9J0YTbtHgVyCC6KTbDSSVoM74byAuKE=;
        b=QAOlY6xEuoeRgiBSDxUNoWQZ1sHK3POJJoU695ZHCuYW9AdW5i0h++S1ciSGSjqHQb
         cR5viVMfJsj86KkvVxt9X6AT45o4O0g8Clv2IftqOTlifbguXzjr2kuuI6qfC37mTP3b
         J4+rmF9Mws2sSOY5YSOxVTQdc22I4bgbM44T2Ny22PNowOqQMSwsHiMUSMjS/cA5iSSd
         bARiHCJlyaN+gCjdwKYEZPIbyR1ULc3GeStIdFaxjOcSd6EIzzKF8eqZ5BA3RDbqgZeG
         jDvQ5X+9p3D52EChkIbaKPCQoYpi8xGiW5VxCx2KQa+xQQKjETsr7U5jUEFtMjL7DDkr
         W5jw==
X-Forwarded-Encrypted: i=1; AJvYcCVQtLr8XIPDdCZsAqZfxGdv4PXVJCIFnPcirPza4jrGQstgW04uTOXXyd/hBti6zDpCNTLwl/Lv7D0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1KXU1k9Z9eOwZ7gPaKjkntpXDOLZXrLY1ztegrNA7re1FPmUB
	acwbl2cNNL4R6yuOtcZ1xPvqegH7VcfLqVJJVrZ5rXypNRloIV5aSJWuw7toaVBpHbJGuQyAjOr
	F
X-Gm-Gg: ASbGncsNR58Dab6dO9HMK45OZfaCKqY30lxFoTr1SXRWL+RTl1PTJQ1180h62QoxsFt
	KeOv51tHLY1z5ShMKxvSGmNcfivL65Rb+au4LVeyWIvS9iI53OEkV/ZaiFNgq8ocB3+gnGTu260
	5Qhh3IFkqQECt9P2BexJdMkKhAsDQ7JNpMggYg4qo33xgnJDZpNltlO3rCDi3RqecWuwlcpSz4i
	EUlY9KrbyuxM1U98fE1tsDWOGspW8FfgrncFWeO4cioouNF5w3DnVSwlQhHGcMADdnaz4ETsEjk
	jyq/5aB1xCeTD7eK1PS2gZLZCncPB3PjLZRCjbvr6LyMUcU=
X-Google-Smtp-Source: AGHT+IEqlKxdcHtWmpci4BLtxbDP+p3ZildeCHTAvguDG8QvB4Ez48M4koY5bUOldTogYj+eiwGfHw==
X-Received: by 2002:a05:6808:250a:b0:3f3:ba60:f889 with SMTP id 5614622812f47-3f3c2696ddbmr691568b6e.28.1739227071302;
        Mon, 10 Feb 2025 14:37:51 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:49 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:33 -0600
Subject: [PATCH v3 07/15] iio: adc: ad7606: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-7-d6a673674da8@baylibre.com>
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
 linux-sound@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_223752_712671_9EA0315F 
X-CRM114-Status: GOOD (  14.43  )
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
gpiod_set_array_value().

These are not called in an atomic context, so changing to the cansleep
variant is fine.

Also drop unnecessary braces while we are at it.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ad7606.c     | 3 +--
 drivers/iio/adc/ad7606_spi.c | 7 +++----
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index d8e3c7a43678c57470a5118715637a68b39125c1..9a124139924e4a4fbbbd234a8514eb77024442b3 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -818,8 +818,7 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
 
 	values[0] = val & GENMASK(2, 0);
 
-	gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
-			      st->gpio_os->info, values);
+	gpiod_multi_set_value_cansleep(st->gpio_os, values);
 
 	/* AD7616 requires a reset to update value */
 	if (st->chip_info->os_req_reset)
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index e2c1475257065c98bf8e2512bda921d6d88a3002..091f31edb6604da3a8ec4d2d5328ac6550faa22c 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -296,10 +296,9 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 	 * in the device tree, then they need to be set to high,
 	 * otherwise, they must be hardwired to VDD
 	 */
-	if (st->gpio_os) {
-		gpiod_set_array_value(st->gpio_os->ndescs,
-				      st->gpio_os->desc, st->gpio_os->info, os);
-	}
+	if (st->gpio_os)
+		gpiod_multi_set_value_cansleep(st->gpio_os, os);
+
 	/* OS of 128 and 256 are available only in software mode */
 	st->oversampling_avail = ad7606B_oversampling_avail;
 	st->num_os_ratios = ARRAY_SIZE(ad7606B_oversampling_avail);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
