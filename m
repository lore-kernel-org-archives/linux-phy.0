Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7596DC0219B
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QH4x+K5Tw92siKG8R/o7ltC5kAN+Yd004yho3m7a9c=; b=MFVO6ghuWvPuM5
	SF7oT4trIhZWKVIh4MY+UOlVC/ehUFT8G2xUrsiPOkJife49uc1mFsrzNgoXGaA3MPnSvNOAAwcTM
	Jibx97rzl2wQrAl5rMt7/B80cuiSeorJTj7o+52ajwp4m2qV5lgB3uf71fjIBuVvjoxqVDB5/tG7h
	BuH7p14LPD4F5VFGG3TLmphJAMw9Gf7kRMXgX2rGX0zWwTLQlcy9nQob0yhZeaMPdBCCOlMRG05AY
	FLdWs2fXkzDUA1Amxlt73CpkWSmxhCPNprQ7jguCRESHJA2hDBN7GBJSpdJAXkzPbNXlOekylRpPc
	BaS0W2wHh3Uj0xc878Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfb-00000007iJn-1028;
	Thu, 06 Feb 2025 22:48:27 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfZ-00000007iIc-2dfA
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:26 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-71e287897ceso1142106a34.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882104; x=1739486904; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GH3NKtPpRHESHp33nulC7OX1rB6L2Ayb/Aiy8rtkYPA=;
        b=tBsmj6+2+D1ykcLTZ8C9PDNK3YK8EWI5k3CqNqk1d5wsFniTgkfUxu1teE7JaEVgSq
         9QeXjxpLRxsHgQ0n7tKSPE9CoSWHPzVnnD2QA8qkGO3zbHVqa6vdfzlEGL0t6qFsB3LT
         0TDCGl5MXwy6pdD/8Xy1laplDwMDY+oW4Y7Np3nQm0QhizDfBioSEh/k2MchiDO7xvjN
         fwB7myHX8FXj/0PCT61nzw+RdSbqh7Q1zPX7qEmfIrHIuMPcl2p7WICKbuphj2IcuM6d
         kDcGsH82kQM13gzN9HCZCbM3OBGGZbgdRVgF8r8bcS/z/nwBubHcdD/TQ+t8lxISf0Og
         NPiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882104; x=1739486904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GH3NKtPpRHESHp33nulC7OX1rB6L2Ayb/Aiy8rtkYPA=;
        b=EGBZOExaDWOwV6gXuY99uGcsIZ0CDpM61kzwEOhH4f0t1LXMr9t/u5I2+F6cD5xJOF
         K2ku0k6nKgv64Pra+/UemRdVwjJVAsFdlfG2VWLuAX0+gJ0jWh9GKfZkYqvDUiY/2eLr
         5VwWkwmwEMNcnLq8gtHJgD0IcGEjobah/57GaCrrr12GbiKPLXPH1LgMPbhu2Si+OCLG
         4l7K4QbhSNA9XiLYBDB9UV+LmwxxlIr1L7D7glnY7X184U5NLrinxqGyOslil/fopDHo
         qHEaMAiwStpls4rq9nzaLBPyGUQNuw+CYAG4HzBsHrtOteDLsqdyM4TbThlKVMiXTgd8
         pDGA==
X-Forwarded-Encrypted: i=1; AJvYcCX3eRZd4S4O+QL9vD+u/sqcNiSynyY1DxT/cDjqZxq3UGoaIm7WRk5NkEpGAREqZHu6nJw6cvJP7rs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzaAX1V/C5sveb46T9SBAnB+71ydyA+omyNhmVk37QV/6jxUZtx
	vbuKtEdUzXoz7EdNhhVif7Z/tcQ4dUDvE1sTLAjN9/z2Bfuat+cIsGsx457akPI=
X-Gm-Gg: ASbGncukUu3anBBw0xDfEUL5YBPdHnwAmmeSiHSKPPRpDAoQoQz51rT1RUO+gC4CJtG
	Rfsl4Fgr7HJ9HSBjicQx2rdigbsZNj9n2w6/Wfu2h0WMSgqfmJIJczbHQHThA4bDK2l49A3/VwR
	qxpI3Q9ebXs/Rtil3oV/y+NNvc9rd++AA5JU7kufzIQrQ6W9ZnOfvFXwjQbt0J98SYabiNx+Mff
	uYM7FeaXrR1wHlItcO+L7+Ud2ayjjROYwsFjuMcFXjxY3pFVcbf0PMkP47Fk6oli2Ubw1JIcatz
	Kl9zrSywo0yw3LAauCcRmw/0FUk434QtbK43n30ZPdIOtXE=
X-Google-Smtp-Source: AGHT+IHCjAZ/4mXxk1VXEbjQMmNTdXsRhhKdUtPACGbfwSRhNyt4nhKE9d5n5z8psMK5DgXY9qctNA==
X-Received: by 2002:a05:6830:6c18:b0:71d:fb64:b601 with SMTP id 46e09a7af769-726b88c7282mr749926a34.27.1738882104636;
        Thu, 06 Feb 2025 14:48:24 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:24 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:16 -0600
Subject: [PATCH v2 02/13] auxdisplay: seg-led-gpio: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-2-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144825_672033_208AFC03 
X-CRM114-Status: GOOD (  10.75  )
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

Acked-by: Andy Shevchenko <andy@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/auxdisplay/seg-led-gpio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/auxdisplay/seg-led-gpio.c b/drivers/auxdisplay/seg-led-gpio.c
index f10c25e6bf126cfaac3e4c353f8bfc6639d94a60..dfb62e9ce9b407fe356c3a7d2d25319b91a11a75 100644
--- a/drivers/auxdisplay/seg-led-gpio.c
+++ b/drivers/auxdisplay/seg-led-gpio.c
@@ -36,8 +36,7 @@ static void seg_led_update(struct work_struct *work)
 
 	bitmap_set_value8(values, map_to_seg7(&map->map.seg7, linedisp->buf[0]), 0);
 
-	gpiod_set_array_value_cansleep(priv->segment_gpios->ndescs, priv->segment_gpios->desc,
-				       priv->segment_gpios->info, values);
+	gpiod_multi_set_value_cansleep(priv->segment_gpios, values);
 }
 
 static int seg_led_linedisp_get_map_type(struct linedisp *linedisp)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
