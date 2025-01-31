Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECB5C02193
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Bsbg5/qtVEfKOgo9hLA6yLsLgaJk/fmz5jWveRf48Y=; b=W3QhL+ygMXbFxk
	tmaSv3r+LZnKYiq5suqJvxkqE8AlDVaQMd71rT65m+yLSmKNCKACDA9RGxeJOo81NA0TANMXFh2rN
	70WKBvbo1ouB/mEC6G/NGELH798k43EvoqdVkhCVgi68Sk+B4wW2oYFBVYZyULQI8xCN7ic4Jzig1
	wsww7f26penI+WobGShBjyxb46UP6s2lJjuRrMR9g/+vW1O6V+cqQ8kpVFlASz4QaoLpcXGiKxg7c
	KBdalCOD/lU44JWzHhYQiPV5vZO6pd+jDfF/yJCGSqcRxDxJ0/gg4N1IcbrBQAi5AyWv1WFGdJbUy
	FlGOxCRvsSAhFEtjAMoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZg-0000000BMut-1fjb;
	Fri, 31 Jan 2025 20:25:12 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZe-0000000BMtU-18bD
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:11 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7231e2ac9e4so637189a34.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355109; x=1738959909; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lwWNVnhNlJbHZ/NQhMSjzQrpqbMeo/6h41DdX1Qvb2w=;
        b=uc3lTs+eetLggqXjgztk6ymzJYdeIASEcDLOcM4KlcNxEwV1DCD5mxgdQXkp2mcGnB
         TASXEFwsJiuXwUF+cPovkc5WJbEFs+/e5FIiQrptmIyTNLrP8SGwfB7zXVWe1j8791oq
         ZIFK1pMQLbY9x+UGNSfNrxfsvk7u4M63hF9Tf9N4+QZtDx5t3AVh2xiTwWY5o3/k26Yw
         /tHHI/vMAs1Oa/rOQ0QblpOBkLnirMBUzPRbkfJj13/nV/ijhr6FV0k37MvskcDc7Pu7
         03nFmsPdhgl+LA2IDwfHAwKbpggD5D/gGJ5dcwvpPfRn7HnrtZT62LvBcmWhsbqnxFr5
         Darg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355109; x=1738959909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwWNVnhNlJbHZ/NQhMSjzQrpqbMeo/6h41DdX1Qvb2w=;
        b=XLMfx8HvRFkiwFFzYFt583nkmY9xs2XNDuGwvSbnhg0TiOiVxbaVyJnjY1TFHZEkIQ
         j1ySbqbumOAsooqhFkP2M/WWpWY1H4cfcmmHPaj8QzCZLeumMDtHlSPVuXOjYZBJEvqX
         ba7ogReOwtHdjN+cpixMzKh4wiJwVy9FAeXRStHpYa+XBcsmzBhFAoACurAfsuzArLQp
         zl4K6jcfbGBbhOHS/GoV83kQponEAHmX7PKZFT/qSfLvLRJiaPTQRvB2AxO6cERjg9hF
         DFBIfY76l/EiSlNlLWXJioyyxcKtq8Mj9cTHZVRljRUIJ0+ysBb83SK8CpV1Z/rtRbZW
         v3+w==
X-Forwarded-Encrypted: i=1; AJvYcCWOYE8ecrPE6JjoVTvc3YeHkdvlWbotbxTLCxLFJ8dxRWj4YaUfVtIsieHl8LjF0YQGot8pCLEvMyM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9uaOqeE1lCdBMWHUy0dXqrWNYWaBu8JHMpSVOzDLn6eO3oLih
	ro8aF4TpecFN8qKpZ3w/I4ryFT0YkzZRA+E9TbAVmC0sdFzFAvAleKhygw2RVrQ=
X-Gm-Gg: ASbGncsrHPN5+QmW5f+urPWuC9ldPpQlb0HjiBNNg3lnbilAYHBGL8y8ZSfACnjiONA
	wCrrmbg4BBxCQX05PyEU3LSJNHyX09u6eqsU4LOMl/03f5qOD1trax37WAviAZTFUpBRxx0eNH0
	U+pT9jLIi23L4T/LSFArxKBQIe1PZu/95QEayfOlGQAqdb7jnD0ggl+xj8qUDqLT8IIoE9fwIrF
	MLMCDMZpSgLrUSS2uUT1ankszzu2I1SIRrgqN7zKr0pwJNRg01/VsP2Ajvjbf2B9QPur2IEDQ8K
	AjExrkptyg4/GgBeSxETMTYcx4yoFDB2nX4fFTFSgW4+Mdg=
X-Google-Smtp-Source: AGHT+IHQyjQ8y3Rtu7NlfkeMw/zOxhLdOk/J2rb/TrRaSbO1InYUF9KwbynHBq+Y9XgpJsj8OqBDUw==
X-Received: by 2002:a05:6870:7186:b0:296:aef8:fe9a with SMTP id 586e51a60fabf-2b32efdc7b9mr8033858fac.7.1738355109312;
        Fri, 31 Jan 2025 12:25:09 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:08 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:49 -0600
Subject: [PATCH 09/13] mmc: pwrseq_simple: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-9-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122510_315591_E5B6EE7B 
X-CRM114-Status: GOOD (  10.25  )
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
 drivers/mmc/core/pwrseq_simple.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mmc/core/pwrseq_simple.c b/drivers/mmc/core/pwrseq_simple.c
index 37cd858df0f4d7123683e1fe23a4c3fcd7817d13..b3a6d053c826741005f1484ad81df30b6bf75bbc 100644
--- a/drivers/mmc/core/pwrseq_simple.c
+++ b/drivers/mmc/core/pwrseq_simple.c
@@ -54,8 +54,7 @@ static void mmc_pwrseq_simple_set_gpios_value(struct mmc_pwrseq_simple *pwrseq,
 		else
 			bitmap_zero(values, nvalues);
 
-		gpiod_set_array_value_cansleep(nvalues, reset_gpios->desc,
-					       reset_gpios->info, values);
+		gpiods_set_array_value_cansleep(reset_gpios, values);
 
 		bitmap_free(values);
 	}

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
