Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25800C02193
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Bcvelkj+I1J4grc7run702IUiG2TVqoZPJAoNrqgWI=; b=dplOaaFE9dE6Hu
	k7PgEXSKZS5l/kr8u8t6lpFZOf2k/Ov7UvYoQBwSM/KpETONO0VGftfRZzojsFbU8XLUXKGljeGv+
	wU9lXh9H2Bv/+7aynANai1qR8iIpnC5JYkTJE9116FVLw+xWsdLfxxR8Rf3VMR3BjqDPyaBL+v7eF
	cJO22EPigB0IPapWzE/PQn1iuN04cbFkruPXYgFf8OOebQARz3U5SOOsZyRskskUUotsrweuQjlh/
	wBy34/1H3j82onibgvsBCD/sMGAK/oUlexId4Kpn+46HXqTldA5GexBqfvV4f2Es3DVC0T8MmM7kf
	ylPF7z/povjiWN+lyqnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZT-0000000BMos-3g79;
	Fri, 31 Jan 2025 20:24:59 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZR-0000000BMnP-38ma
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:24:58 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-2b33aabfe46so985964fac.2
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355097; x=1738959897; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9hlyYXLAXkselsSNF7g0Bc64z/LNWZ956QqcL4gqDjo=;
        b=b3GeYaL8DHgesZdm7Mol5ConxyOUy8cMEq9o95CJj1V3i2Mgv+Dg34cnvDOZv/wnE3
         VvyJi5fV/irCmPo28A64ltJs/MWCOkUQHR4P9UB2Xlka2/Sf5YPMp6jgu1LK8sYhEmty
         cqY37lktU285WzJjoAR48B3XtmkArGKD6jCRqvZJZU+qwLTC4hDgJxCJG2sXTJKYXn+A
         O0QaySQ4sLBv7rclWR+jSXy1XAbDOiJnoSWPyMT7omZ3bwI8xTy1HrMFwJSf2DhJvxGk
         H79y4F1Rbo9LKRP+tYl9WcJbMvwcOsC72bAcYzv5xmbChwoLcgi+CBXwoFfmsYHEc4zf
         6dbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355097; x=1738959897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9hlyYXLAXkselsSNF7g0Bc64z/LNWZ956QqcL4gqDjo=;
        b=GYSB1dic5+syPqaF4BhGhn43h0z/6kJjrAN/Bv7nzsbRpw9RCQmXSzXpwnRtS+DxVn
         zCxhLFSwT44/aSoldIzSEt659yOiNUu4iSaHzwqmASguOnBdmIskZYKVYDFbCMuHbdyV
         jM6wptdY4wPne6mU9xn5UYpr2RSxiMR4WpT1JruTUe5bldd5XoBPqiAM61buaBHfexBX
         rpLz96Of9Aly641Dnm7/M/JvXBJanTZeLXKmsLTv/bq8o54s3Au8vdjSKZ4d5tSYtti/
         XRjOIQejLCSvervs1PBzFanOiNaL2FAZZRaZ/xdMskYYosezg36gWIPRj4TEEm6zQZ1i
         fLGg==
X-Forwarded-Encrypted: i=1; AJvYcCVNWyXyLW1C6qJslXxFI8eCan8DNR2K8/WRp4YqQyNQ9fgpbMrYYn89XcLV8bQHZsle+p+NyYX8cM0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEJ/9mCFn+vThf33DjM+MaaKt/kDFhoeLL3GH/m6zknOiCllaX
	RpsGYzUJwsjbKtfqoCTV/XMy5gWbg5Q7GzG0CU9ajR2G4Y57OwzSyM4PIJLaRZA=
X-Gm-Gg: ASbGncvVm0VEoGKbAz+0FilDbCNt8bLBGLI2EXc1KqKM0m4vvnlX+YYF1Cc0K9jgG0i
	NeXf91zCr3IQXEXpLyb03PgzckGwrGm7uPsJaYePocQKCNSnssb0C0Acqv9qoHpLlxvbnf606D3
	vF9G0kJH/4D2ikVPRAyggQjH2Z+jdrz4XjSR+sSpNMWpwREt/7PkuQFpcjeW4zdEXVNL8wVPvSH
	EbvHq3yjRB87X1jOupBMJWzYx5BI5liFi+4d3Y7IbJeIcqLKaxwiupkRVyyUrrKy5xUr7HWMehW
	Fp//fqgxiGnSe69AFYUaLZtodHIkW52pA1gR+R7aCLBecm8=
X-Google-Smtp-Source: AGHT+IG22JJZ1zoEE08gl8CxgOf30mezmJIUs5PEqf+3dMT59zSIuFvgdvLgZxy1Rl/Rs71gFur6Bg==
X-Received: by 2002:a05:6870:2dcb:b0:29e:6647:1080 with SMTP id 586e51a60fabf-2b32f07b26bmr7733897fac.21.1738355096771;
        Fri, 31 Jan 2025 12:24:56 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:55 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:44 -0600
Subject: [PATCH 04/13] bus: ts-nbus: use gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-4-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122457_791303_9FB9C5C4 
X-CRM114-Status: GOOD (  11.13  )
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

ts_nbus->data->ndescs is validated to be 8 during probe, so will have
the same value as the hard-coded 8 that is removed by this change.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/bus/ts-nbus.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ts-nbus.c b/drivers/bus/ts-nbus.c
index d3ee102a13893c83c50e41f7298821f4d7ae3487..31ae9a26257c3e0af2ba99666e0c04e882da935b 100644
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -109,8 +109,7 @@ static void ts_nbus_reset_bus(struct ts_nbus *ts_nbus)
 
 	values[0] = 0;
 
-	gpiod_set_array_value_cansleep(8, ts_nbus->data->desc,
-				       ts_nbus->data->info, values);
+	gpiods_set_array_value_cansleep(ts_nbus->data, values);
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
+	gpiods_set_array_value_cansleep(ts_nbus->data, values);
 }
 
 /*

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
