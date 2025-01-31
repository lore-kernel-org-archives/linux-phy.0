Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60173C0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwkilRbVevIlUbaRORBwC03/GUh10dSJZqfM7wmjLuI=; b=cw0UWDlTZz7FZz
	6m7/shSuiP8u3pRYleWmUKE4xpnfAwpoEylR6VL5opQ9kSiQ2EbqiMEfe7mNy2lM15xF2uy8TL5ca
	ijDd71jGDKYG6J2jhtJU79MLjZQWglid5S2jb+yccNTSwVpN8PdZ1uX6NPU+NwG7ykEMEib7vbX+6
	xxbVhWiBwyQLyV0NWOAMhbqHSwvocGXT8EVZYE2DitgzyKGcTIvhfjGfiM0z9zRZ3SRn1d//V4/wj
	IMY2R5As0N8P90TRz6NnIP7xMS3XuUT1jHVDi6pX+MPTpXp933RJ/6xPfjTDsCL134TvEhGBvTqBy
	tEh47bgafxyyq2F2r8ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZW-0000000BMpn-0bJX;
	Fri, 31 Jan 2025 20:25:02 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZT-0000000BMoU-2sav
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:00 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7231e2ac9e4so637129a34.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355099; x=1738959899; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0JxocTLtlGRqW6c379kuZnM3hX6Je635Dhf0CbFSJY=;
        b=nwJGS1TbDUc04Tw5kpTNhNWGuVbCFYrCFfi0JrcUr6zgOcS4LPu3Gty96ekl1bv3BP
         LnSKv7zqCVEyHaidXWyn81ZMJyCmuVPCHDZgAKr1ffachZqoyN/zj2Z8QU4EJ4NR/i5J
         WR+Hflxf08R29n9CIGYcy4ayPIugWooD3mcxUXN/Lhylzwg0Po3YEmC9vdpbdgQ+XlEo
         Vs/NIlkkRh7SZzanoxRJafEBWrgqVSB8DqIt5Fro7fp0/+mvJ+ZnUHmHjke8JCe0V5VN
         4rxc0Sb3c1Hd/N7eBlDaoUzZJf703GRUTiSlx0wjUDYd0lPIjWsLwFcjprZ+2ChXOzAW
         WKTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355099; x=1738959899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o0JxocTLtlGRqW6c379kuZnM3hX6Je635Dhf0CbFSJY=;
        b=HdUGbeuRGkbNc2ek4LTmA5RO/GgPisANZeXdhRCBsjMz97ikXGa+OXsUCyTMYpD0K8
         SdbdtJJryvwZbopi0TzsmlHvEIt8ni5Y0tApwf4Y5WGc4umPUMdX8t+qqG7jNLkj88CD
         3bfN4pLC3GcalsMKGxk7CFiS4I9d6B3mCc1wDQ5IMPHa2ofaTgB9XjZWKGgBQ6PrydTr
         gU9X9N3+yqjX3hH9Zc/FD3c2DXa4jRMn5MUiSUw45lgbem1+w5kiAbiv8koZJ5vuLEr7
         huwa0fhsVPpv1bPs7ymV2Xd0mRgubeQghoLHIpluTTf/EmefI7WhMuhLvh0G/j/hTcMW
         mO1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJ1TM4PwgKv4Lom8d+cv29cenQ/WXRUGG6EuIFdSsCYRDLfgYRtOma0Ad5pjHZwEgIlSaHZquTFLs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1GjZPm568WxFC5J0CEKrvJYcd/NARAc+LB/NSjyFH5CnMVXsT
	6468OPb9cx/9xEibUAqZm5cfSngJHQrggmW/DCJf54VLW95V1suSZW9LxoCd2i8=
X-Gm-Gg: ASbGnctqDxERgJMu5nCjtUjbWA6bovlsRIlgpYhVq10uTRxWJ2iOFYuUut3q6Wblnqc
	93VdSlzdlV5LaHTpLOhhLgjjPMUajbOgiDfu9hjBPLjyoa+Pby1k3UyBT0iXv0t3UJD6W6nmjlu
	14xgJmOUvcYAM4qllysb8wr3EoNJ0De5QGKCuTgPwztbNFo/vhampT/jXni/xyTO1hOEseNLbov
	sDBu+o4Nl2OR3ESYHM9F9ldwcB/Sz9Ndn4ZVXfwasp5YBODIaEjo9hUMJ4Zd9UULCHkH7Zscnq3
	3NXW+VmsNqc5kKRS+JfMUstekXK2j9C72VpOk4m2cjbBBEQ=
X-Google-Smtp-Source: AGHT+IHLLvw8v92D1IAdlvToO2DW44SjM8+FGXyX2n6gPI7BbY77buvq2CWQaGC5P0PVhdqadGjO1Q==
X-Received: by 2002:a05:6870:948e:b0:296:beb3:aa40 with SMTP id 586e51a60fabf-2b32f350834mr9144614fac.36.1738355098867;
        Fri, 31 Jan 2025 12:24:58 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:57 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:45 -0600
Subject: [PATCH 05/13] gpio: max3191x: use gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-5-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122459_740149_DF768B2D 
X-CRM114-Status: GOOD (  11.20  )
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
 drivers/gpio/gpio-max3191x.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpio/gpio-max3191x.c b/drivers/gpio/gpio-max3191x.c
index bbacc714632b70e672a3d8494636fbc40dfea8ec..fee8dd2bd3c9eb7c06817430634eaf905cc9cbd8 100644
--- a/drivers/gpio/gpio-max3191x.c
+++ b/drivers/gpio/gpio-max3191x.c
@@ -309,23 +309,21 @@ static int max3191x_set_config(struct gpio_chip *gpio, unsigned int offset,
 	return 0;
 }
 
-static void gpiod_set_array_single_value_cansleep(unsigned int ndescs,
-						  struct gpio_desc **desc,
-						  struct gpio_array *info,
+static void gpiod_set_array_single_value_cansleep(struct gpio_descs *descs,
 						  int value)
 {
 	unsigned long *values;
 
-	values = bitmap_alloc(ndescs, GFP_KERNEL);
+	values = bitmap_alloc(descs->ndescs, GFP_KERNEL);
 	if (!values)
 		return;
 
 	if (value)
-		bitmap_fill(values, ndescs);
+		bitmap_fill(values, descs->ndescs);
 	else
-		bitmap_zero(values, ndescs);
+		bitmap_zero(values, descs->ndescs);
 
-	gpiod_set_array_value_cansleep(ndescs, desc, info, values);
+	gpiods_set_array_value_cansleep(descs, values);
 	bitmap_free(values);
 }
 
@@ -396,10 +394,8 @@ static int max3191x_probe(struct spi_device *spi)
 	max3191x->mode = device_property_read_bool(dev, "maxim,modesel-8bit")
 				 ? STATUS_BYTE_DISABLED : STATUS_BYTE_ENABLED;
 	if (max3191x->modesel_pins)
-		gpiod_set_array_single_value_cansleep(
-				 max3191x->modesel_pins->ndescs,
-				 max3191x->modesel_pins->desc,
-				 max3191x->modesel_pins->info, max3191x->mode);
+		gpiod_set_array_single_value_cansleep(max3191x->modesel_pins,
+						      max3191x->mode);
 
 	max3191x->ignore_uv = device_property_read_bool(dev,
 						  "maxim,ignore-undervoltage");

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
