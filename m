Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F765C0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEt6O+9h3Pa/CGMKjMV2YbU7Y2Wd6VmxrcLGMxE96/4=; b=VNREik9R1qqgXL
	BazVxdkNxFV0Szk+6PQoohrF12uqAaaF8O+fnto35YWbjf3TkMpKpm5o2Yw6niCCUhBZxharEmLkF
	AzjzAsSwG1gMwfSJTQrxdcHxfy0PBA29ebGUv2c5VZ4t5hW2uB097KiqChlbFJmfFPheIa3/yBfzA
	GkNlAqFHcJeEyvkIhlLbiVztkkaupX0ledBGGJx7ho0VSBMpNk0a7ouHvN+AUZcNWckzmwUSUXNZ+
	yXNGLWrGyBjNSh66JAlTS2dY9zI1r28PWcqhAXym9QPz/DlArk2aAbLVBLK4viezKCiwT0Xi62O3s
	uZaqvS4ER4tSQHIhBrLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZZ-0000000BMrc-1hJv;
	Fri, 31 Jan 2025 20:25:05 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZW-0000000BMpe-0NxI
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:03 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5f4ce54feb8so1270254eaf.3
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355101; x=1738959901; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLsz4+tHpjKqe9Yh2fzFcV0a8GzDcsWx5V/eyXI7CsY=;
        b=zcyMRgeC9XyNXkiLEuCg7daneuRNiYX7/iURcLLVGyJIYzzhBJN+QxHVbFyBo6MN3J
         dF/Vno1/hYLKDdQokgWZuje9gWA48iMm5m2FmXYGVF+6e6N/VHOm/5JNP5P8Xqk6TRGt
         eqdVtUJ2Qf7Lw+FJeJ3IukTPWtFWl+8tsrVVvXQUBv01Efo7SCarz2Uho9TiZe7zjPOH
         2/oCrCQtRi3ibpxYQoH2RafguAHFEBfylxWXTwW+sbl7Xy1ARcr2XctfxaRk3wzxJEcj
         rtGZtq0KB2vpCNk7JIkQJrsR/0h6xT1t6F9rJZkZpHyd+NN4cNid9aPiJEhZDJ8yibl8
         /PNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355101; x=1738959901;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HLsz4+tHpjKqe9Yh2fzFcV0a8GzDcsWx5V/eyXI7CsY=;
        b=po7Q8szhHbXvhbBGb4Ylic+8ODQl3bRCpKxWW9WOnXE46KnMxZxzWb91+kZmlR9OLC
         m7UjRnwTV9EPJGZsCn6DyRcBlQ5IYu/ybWn7l4sIadQwMV7EoSQsXIGBjQ4QpynWPe2J
         CYSOHqB65Z6dffGiqU3VZjtPeN2Yj2RPNHw/dCy9BMRLYPhExz7Pb/orxR7w785nFzV2
         /UbO+hGlcFtbHXgFxX9XqnUeR6Kzz2E+w+q6Ng35VcgJu77LYvLNC5o7lYyHVOq+0gUa
         BXdZisNb845C/PBlF5ptwYHiTwH+PappABoLG/HZ+GrX7gu19DfJMOh9FcNbc1ozqAQ/
         zpkw==
X-Forwarded-Encrypted: i=1; AJvYcCUF4B0EuIFQmibzW6pKteBBY3+pDmoYREB7ptxLqzI1VdzKd84HdzO9dF6LeL4Mbvs7FjzmyJ3zFKs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWLo+iltpxEphmM2pToIHxy0qx+2VIblHx8eSLazxV/5X0rr5a
	h0jyMptlAZmBL/AkxBUfS3rBnhxct8wu99dhVNtMVRECDkhaalfMiPH26LucwHI=
X-Gm-Gg: ASbGnct6ky7+YTzL9NxZsVX6UHEg50/xlRPji9AcCbJ1/E9rk0/4v2KX0f6BtjEFXNT
	6QIEMEpBUwFGvinChF3lPiPsc//6BzzPg0hyd+ICxPiAg4seK5AOICoQHo93CspFmjeSgKBoWJz
	7l0ZHWBQpHjYnrMBaYM/RPnejqFr5zwwVicP3MIZCoMgJTNF1qerg6pepCaRV2lEyrTOE+stMNC
	7nwPV7CrDwXJaUl52QuU7sEI3bd71yzM0g45uK5bImO65krD1e4adgcyItwA3HxwkU10k+EwxUo
	D+KP0VKK7iTRp5qqZtOWxqm5HZTMvZeWAOve58R0n1CC+Nk=
X-Google-Smtp-Source: AGHT+IE0gOiKruiwKZS2fVv0rrPSXfEcYE6NWhi9xtJKoPa0qd12KXWlAvVzsWhUG+e0SGLuDExKGg==
X-Received: by 2002:a05:6870:702a:b0:29e:6096:c25f with SMTP id 586e51a60fabf-2b32f0bbdf3mr8023505fac.23.1738355101014;
        Fri, 31 Jan 2025 12:25:01 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:59 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:46 -0600
Subject: [PATCH 06/13] iio: adc: ad7606: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-6-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122502_147986_C75E96BA 
X-CRM114-Status: GOOD (  13.28  )
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
 drivers/iio/adc/ad7606.c     | 3 +--
 drivers/iio/adc/ad7606_spi.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index d8e3c7a43678c57470a5118715637a68b39125c1..fe2216fd072e375f3dd8096980e53074f8ee3758 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -818,8 +818,7 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
 
 	values[0] = val & GENMASK(2, 0);
 
-	gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
-			      st->gpio_os->info, values);
+	gpiods_set_array_value_cansleep(st->gpio_os, values);
 
 	/* AD7616 requires a reset to update value */
 	if (st->chip_info->os_req_reset)
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index e2c1475257065c98bf8e2512bda921d6d88a3002..d3064e452adfbc40b44f4437e76a73aeeb036ef0 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -297,8 +297,7 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 	 * otherwise, they must be hardwired to VDD
 	 */
 	if (st->gpio_os) {
-		gpiod_set_array_value(st->gpio_os->ndescs,
-				      st->gpio_os->desc, st->gpio_os->info, os);
+		gpiods_set_array_value_cansleep(st->gpio_os, os);
 	}
 	/* OS of 128 and 256 are available only in software mode */
 	st->oversampling_avail = ad7606B_oversampling_avail;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
