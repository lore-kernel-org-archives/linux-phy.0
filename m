Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8969C021A4
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApVu+RwpLFG6ftf6bDWwHHlAFrRtvuLIr9bJqJ9k7H4=; b=PKixu6SrPwbWXh
	sk+A0atUl7560vnlvPPaWngKYV3Zi9yViNhbAHkSNhho8eRh9gFKe1iqMcv2x4qeH0cuZWLSHQWH0
	pHXpgdx8v4kqbGR6XrU9Ei/jR3U/1YVzeC6IQZggmczgTxKkAbndgFrPAA8tsXMbVlSE9aiDiu8wV
	1WyvRWsYqDZY/dhTM2Zgcg5qWYGusi2OiRLxh/MauQ6+vRTXLQx77MTvY23y9oXeLrS5VhOAGCcPe
	MTSzOZEl+aHttR6bcvuma3Tm8HsRwfiaw0MvGjKMdPh8KlyGQmmnH3+65Hz6XoJA0mPAfHdDnJdRs
	Kc6pBkbPT0XQT1xthDWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgm-00000001kU6-2IZS;
	Mon, 10 Feb 2025 22:55:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPW-00000001gLP-3QNi
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=aXB+byZeKAp4YicbFdNdAOrg4x68Xt2NQ79nnhRrJVU=; b=lQsaI1EqyVAzWxeQH283/GxsQm
	mZbQxJtCAyw2aVUqOeR7LtXGvpdsk04U/Y1ujIMLvm6TBOV8pJLQR4PjcN881HmTlrwLyp8/apSmo
	xGKuZNm+m79j6IIHs42Nb1bjuuiYLuFF1jQTWfxCGRZv7zCdjRCqCSplTIty3UhDBgqNyAtQtJ4yr
	SYDFyIiZJ+J9rHy3aJRL+T8216B6HC6++YQ7ze23rc53UYItbM1cvHrn0bK0wgH2tltMvnwiAAfbl
	xuGgRxYIgx0tp3AdU+sQAYVxNYkJwTPDmHjFMj7jN43ubb7kvZNa1WgPBqKBXpukFXBhwp8asnzgU
	xuqAvAqg==;
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPT-00000000KOU-3I8m
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:49 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3f3b93f4845so720536b6e.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227065; x=1739831865; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aXB+byZeKAp4YicbFdNdAOrg4x68Xt2NQ79nnhRrJVU=;
        b=Ah8MiWhNmEXh7iV1CkTeLs2cHcN36yS92gXo19Ij1t636b/OXW+klGqVNvLQKO2jSz
         eGNhr2gaqnrua2mnRQwLRuhx9KCTQP2QM0f0qq97xMGJBBYOcSPmD0kGm2i+rMNQKLwr
         MGLUJbODzhKJcEQFTMHs+p+4gqSK/XIWOtAsSIH+HC/sP9QvweWPeV/3vJSwuAIx4eTL
         vGqXGSiV7gFt3PHVN7gbXiajC+0bxWUN/+CKTz8WlBDRMBcydGlxUfLQE0zmHEuZv93E
         CLAGcjeAKWzE3Lt93oNUk9hmuD6/1jvbzaT7F0Y9PYMGNihlKeRMnT6Bfuar7qabxIwt
         5KBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227065; x=1739831865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aXB+byZeKAp4YicbFdNdAOrg4x68Xt2NQ79nnhRrJVU=;
        b=dn14C3ex0sVIMbWla469ODGxJCakwMTiBbkRcIFzw4gs5Xz6yB6DpUWhloqZPNxAC/
         U/QSA3CNGhm6yhZ0H0ecBtGtvLGT+WfNqmWA/fbiHQZI6nVN52LfkKZnf0aiojf7ycr6
         FxW+9Kw2+z5wN1jUcnewHZM/BZuK40112xtxvoPKoa2xBKVcPhgJO9lDuLUO4GBJfK9q
         3atvg/BzTbMi3+pacmaYAfbn92LVrym04Dah/NkubeUz64QR/9Q9wT8UV8YcQPhcxpEb
         aOXhOTtmkjwnMnYYL56rzroiGzeqfj7Yf/FP1ZerA05A6P3zOPIGcsdgA9YWXRTUWv51
         /GMg==
X-Forwarded-Encrypted: i=1; AJvYcCXq1JR/RuuzSpn8DrIAXSeVyb0h4FFrSDeA35bMhHoW1+eaPicGHLyS4w+sFj0Yqogg2+bn+sJFwE8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHKtsIKWst/j1p9PdI8L9tgtIVd2xFig3meEZoXYIAJAr2c6Fz
	vOyKI+GnSgUDlpuWbfwdXDzr2cdP7Mi0qNp2+hjYCGl40pu2GQ/nXY91WtE4Yeg=
X-Gm-Gg: ASbGncuhABBECRxSVrCwCgJU6cIF7srZJXgB2OAzOgGKirBTO9FaS+vMDEZUZAEVQc1
	67P9JhA0nMJZGh3cqHjyDXkQUpMhEoTaeGr7JVH1OJYv6ndih0nuqMOX1iaHfJmXw0msyZEXIGM
	u1UC+wk5fGGO3ew0UNQcLUBaJlv0BPMgJZ8vcZvdxsnR8kGGdWbpcYf6qZQ0C0dt+MPm/Rl+Vbi
	I5EkeYj0ZqMGFB8Ot9tvzDBFGY4oG/Y60ixiok/ty+BCyA7rjo3tWp/4ZEKs48UfEDpn95zSBnH
	PvUrV8uYKof4O2gH729+7WcCUT3aDdD0UiSxb0BhshZ3Lg4=
X-Google-Smtp-Source: AGHT+IHioMIxu9VGnzXizdV46F3qMiFjs48WUo2oHZz5JGkXBH5C7gXq210bMR9McIstDGpa5KGthg==
X-Received: by 2002:a05:6808:319a:b0:3f3:c1e0:c466 with SMTP id 5614622812f47-3f3c1e0c4edmr1094523b6e.5.1739227064928;
        Mon, 10 Feb 2025 14:37:44 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:43 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:31 -0600
Subject: [PATCH v3 05/15] bus: ts-nbus: use bitmap_get_value8()
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com>
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
 linux-sound@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_223747_975922_B1CB1C94 
X-CRM114-Status: GOOD (  13.20  )
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

Use bitmap_get_value8() instead of accessing the bitmap directly.

Accessing the bitmap directly is not considered good practice. We now
have a helper function that can be used instead, so let's use it.

Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/bus/ts-nbus.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/ts-nbus.c b/drivers/bus/ts-nbus.c
index b4c9308caf0647a3261071d9527fffce77784af2..beac67f3b820377f8bb1fc4f4ee77e15ee240834 100644
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -10,6 +10,7 @@
  * TS-4600 SoM.
  */
 
+#include <linux/bitmap.h>
 #include <linux/bitops.h>
 #include <linux/gpio/consumer.h>
 #include <linux/kernel.h>
@@ -107,7 +108,7 @@ static void ts_nbus_reset_bus(struct ts_nbus *ts_nbus)
 {
 	DECLARE_BITMAP(values, 8);
 
-	values[0] = 0;
+	bitmap_set_value8(values, byte, 0);
 
 	gpiod_multi_set_value_cansleep(ts_nbus->data, values);
 	gpiod_set_value_cansleep(ts_nbus->csn, 0);
@@ -151,7 +152,7 @@ static void ts_nbus_write_byte(struct ts_nbus *ts_nbus, u8 byte)
 {
 	DECLARE_BITMAP(values, 8);
 
-	values[0] = byte;
+	bitmap_set_value8(values, byte, 8);
 
 	gpiod_multi_set_value_cansleep(ts_nbus->data, values);
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
