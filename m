Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B86C02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhGyYlyJFHPBMAtEONy4IAmtd0xYnk+nRHIVISMuykM=; b=1DEObVW8idNS+7
	mTy++ZM8idzdIVcFzZt6c9bNHG8U3pYIIa/dBBMDU/7hU5HGBfm5FX08HlTqAqv9TYiG43SAGv5J6
	WvkzG2SDjx+ubLtY/OVO0emhL0XQfpU+H7ioUsM1IR8zzhTxG55bmxkemeWoEZuT+anH6k2Rl8K98
	n1LFcVj3nYFK565LWuNm/SIXcLJTGSM0ufHfT9+RvCeGU4QkxSlUyxq0dkEWFK7vmM5l5v0xAgm+B
	+s31ZZc2/73wPXwqDiPM6+E92yUx9wUgiv1HTFkFkEvROC5WKOH0DtKhrjjLG+UsXV6cYircFOi7+
	YBVNAlcLqtKygLy0alvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAff-00000007iLw-15bd;
	Thu, 06 Feb 2025 22:48:31 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfd-00000007iKY-26GM
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:30 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3eba559611aso410797b6e.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882108; x=1739486908; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAgdP5/7nbSCpei3bdgHz+Kvp3J/VbeQ+Dc9cWuRxQY=;
        b=olrhiM5161LOAGksl4BmxYN2ugONukcu2wUkZ6REzWfjTeUNif6wpaSmDY/TWV8xFP
         xFHTBor/IazHxzWGK1v58Cd3TN/RhL7hG809nSM0mXtjujgChKoK/QDk0ahgBpxFUNkZ
         UcLHrySU8C3g6ugGE7a61QLS8QLoMMlQNi4o8lWMeGkuhTqS2lj37gkAqip5l47+qcqJ
         yhXZ8DBVrYORmD5VU6ILbJ6omXHvt0eSmkq5EsXDthhgP+I7lw0NzqT+7Jou5y6llDtz
         /gbbUG4D4NzN0XIEZk59HYTmmVWpmMzg36ZIVeQVQPBvDLWnZ80i3w8HrBuFCv6u/2ut
         UvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882108; x=1739486908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oAgdP5/7nbSCpei3bdgHz+Kvp3J/VbeQ+Dc9cWuRxQY=;
        b=tYweGswURHHbBu44+SXDHeX3+wb0lvOKPekmL5zqk8FKHoOeY2d3k9LOHZQp+qyZpx
         VxzFYx/pezqN2Sy6fyB2WUU/reia6ZlV08DmS2uZ4fgF/SpKUPfn+d3za+Rxv/SiKjO9
         ewrUXOj0u1SldQSiVADQeUkUFDcjtlTnjoFj2ydbYK94onrB0INDXYUi/ULdeMXW7XlU
         uk1WMqCdtPTzobJ7hFnHM1j/zjwieko1m4Q3Er6ucRtv2Q/4Pz3lvTcL5wfs7lvK/Wvk
         ZVYUaFeIFwI7RO/9CJSiWgc7XSecrOtHp80OaPC9tJBZFUJyylHl1kgpQrFArs1Dj0x8
         RL7w==
X-Forwarded-Encrypted: i=1; AJvYcCVGgJ7mThapAZW3DzQwB5u8KQeVe2brCC4K4zyAArUnndVJkVkrsFO9fbqLoOctSnCa6BE5bn2Pjt8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKVk+QrcI3KBagC+ERw/7VG2X6kQf7H5ws2yrVpJQ+Y8p/GW4V
	LPE4aMysPLx+FKMoMvPPltsMH7nt7Eh7RDFGmT2aKMq42YDKeYAb10wz3SPXN6Q=
X-Gm-Gg: ASbGncsa4vEZnrVVmidfXWwoq1wEJHFys5iyRa6wH1N9POD1Yog5WR2guf0cbWe8kOg
	opQL/swVakXBac6UcbhwPTgOGGMNxJkKFzOoQv8CSXH9pkGYOqDLFYsQf4/VGD/9kf8I5nvRd7s
	FcuGv3BlTOELD5Cfos//DzVn8SSHO9pUPhCX0eaUaNN7iaLpJAuoI/CVsQanJ2E3tnWUFApdDYG
	yE40DGDkgTOorVeokwJNAUEziDyPcpGdsWYX+g24DosSW6P9X12DJulsaNARE4Ztf7M8vAIxkhO
	NAvz0dEuq2h2eJd2UJwuS5bW2awRzfTJSwm8CY3R1VDyd60=
X-Google-Smtp-Source: AGHT+IHR3rdzOh31Bx2HFTQsJV0ppIelp4NfQddbrynjHIrf2JbNfAwcWx67zk6KGYi6B0FrKmfqwA==
X-Received: by 2002:a05:6808:189d:b0:3e6:3a82:f790 with SMTP id 5614622812f47-3f3922a086amr707666b6e.6.1738882106950;
        Thu, 06 Feb 2025 14:48:26 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:26 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:18 -0600
Subject: [PATCH v2 04/13] bus: ts-nbus: use gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-4-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144829_564725_32A17723 
X-CRM114-Status: GOOD (  11.67  )
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

ts_nbus->data->ndescs is validated to be 8 during probe, so will have
the same value as the hard-coded 8 that is removed by this change.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/bus/ts-nbus.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ts-nbus.c b/drivers/bus/ts-nbus.c
index d3ee102a13893c83c50e41f7298821f4d7ae3487..b4c9308caf0647a3261071d9527fffce77784af2 100644
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -109,8 +109,7 @@ static void ts_nbus_reset_bus(struct ts_nbus *ts_nbus)
 
 	values[0] = 0;
 
-	gpiod_set_array_value_cansleep(8, ts_nbus->data->desc,
-				       ts_nbus->data->info, values);
+	gpiod_multi_set_value_cansleep(ts_nbus->data, values);
 	gpiod_set_value_cansleep(ts_nbus->csn, 0);
 	gpiod_set_value_cansleep(ts_nbus->strobe, 0);
 	gpiod_set_value_cansleep(ts_nbus->ale, 0);
@@ -150,12 +149,11 @@ static int ts_nbus_read_byte(struct ts_nbus *ts_nbus, u8 *val)
  */
 static void ts_nbus_write_byte(struct ts_nbus *ts_nbus, u8 byte)
 {
-	struct gpio_descs *gpios = ts_nbus->data;
 	DECLARE_BITMAP(values, 8);
 
 	values[0] = byte;
 
-	gpiod_set_array_value_cansleep(8, gpios->desc, gpios->info, values);
+	gpiod_multi_set_value_cansleep(ts_nbus->data, values);
 }
 
 /*

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
