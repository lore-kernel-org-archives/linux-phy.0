Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F842C021AC
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWBgm6XWELtmmC3GJnBGNBu+cYcbF128atT1HQ/4A3E=; b=YmAw7BkKorxSGP
	ozzzyGqOECQhCzjCITmVj2gXYyrCNYAaeC5sva5mUynPjOb2R7RZ+zOmEotHchbscCpI6CBFz3YWi
	XY2PflmIzgDZNZc6SMOhx7MbLnAirucpjS0ekxx0SYVtYX3ObxGvvZEJd19Tnbj1Vdz9HQlF6aqR8
	qMH0wNnO7zFJgePJBGno86a3sDBK7mkFX/DpgrgO+5KLr/eZxsmWkrGn3/fsVGoSmq6PQtKjmfJ52
	VTzkPm8RgAZOYnYbbFWEZDDbWwmVdU/DccryMX9KrVwJzKzu/0FIfn3we8xNb0QBa1aohEVy6fIoM
	NE+uujBst9w9lYhXyrGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgo-00000001kWX-0d4V;
	Mon, 10 Feb 2025 22:55:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPm-00000001gP2-34Pw
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=7aQTsUJHgsqLkUdzEeUSjaVO0EDwfbxDIRSr93MsbW4=; b=akekMo+rxAWaXDg5XiyLl/53Dv
	XGERwnc5SSy32wp0UM2fclLZW7LssXjNg+z7oRKjSDTCPhqyTAWDVtWps5p0M0C0IxEprTLnTenAB
	Pe7qP756J5c7wyX/tKD9m+FOoOrM3ocLA/LT63SSB3puzTUka/K/70GJPTtDPy7rLBqSHvA7cG65R
	3GNpFOukps7uRSdIQI6TKPOlRDNIHKIPYOCCVpCIC5C6lTnGA6vI9Gvxsa/ErCyEJQu8c8khvyBzB
	9NiY1DDAyCJtD+L9tls7tgrshsQ14nJsBaCj7NdhUJVexLgqc53zW9PDUzZdNF3Cp23fcnbMVoabA
	qhOTdwzw==;
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPj-00000000KSk-3K0J
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:05 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3f3ba3d0433so594290b6e.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227081; x=1739831881; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7aQTsUJHgsqLkUdzEeUSjaVO0EDwfbxDIRSr93MsbW4=;
        b=W01KMqw5+S6CfUwWUYNdl+7GO4CqZEZuNvE6zBg95OIFTdFEdG70G5YWz2cU/qR+0S
         oYvxLWUxZnx3j/S7CGj4LDIqG394fDq2YywF0G1bdBWpLgZqVYAGodbWSI1O+XWtQ/bv
         kB5k3IgI8LJ7uuL91B01lGBepMzEtsJMlx4cz/xZOki1GdLqQP7gRmbORNz8hyfOzL1i
         nnydDqykk/E8vXjxIdEKPDRHnDR/aC8eyttz3MAcco8iaDtl2zdND+BBwJJ3RVN8qlnI
         gLnSaDrboRUHQVllxlFP/65UqU3bLvu6tZU75ot6apKyJwQXbzBJT1JpYZqon8DhvBS6
         ZSGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227081; x=1739831881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7aQTsUJHgsqLkUdzEeUSjaVO0EDwfbxDIRSr93MsbW4=;
        b=Pf3EySmRdId2t/SjvWhZmNY/2QRMp3/ZpmNZJb4TyjJaUnD96CKaqWdY+eMpBNOYLn
         QZnPvw4N1IlEwwo57GTY9Aherun2AkPahCV3uAeocm0TyVpkD9N/6jxJaHzI4c/VXyoH
         /COBbbp16FHn1Tth4UlhCR4BH1h2+8WeuwHpS5m+HekFQydOl/SN7WPB4+Qp2v+w8tsE
         ea7gUrgLop7TYbqFJcZgKQozCp7JMucIB+fCso8Sa2rmq1kjgFZSFjzP6DFZ/tzSoFOX
         9viBJE4NlOWu8U971Hb5+Vwe0NsDo69LNQlSMj5BbnSYFnjXPCOsR4L4Pq7xffzjqtwM
         z4PA==
X-Forwarded-Encrypted: i=1; AJvYcCUEe90gcLiGjtzMT3ERLU0wb73YQJF9h8q4yE4JjMN+9hKQQuLIRokDkgLQI7ezmow+DF9aSb6Ip00=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPtzjRsVRvxgNNK1KrF3NashHYxJgo82V8xHH6yiiECNig4v1t
	H71YZN+U4Kr7rmo2cpj/oCpwN2FkMT6poBgGTrk/g6/7TMhmN4mYPOJ10wbneyY=
X-Gm-Gg: ASbGncsuh4QvNHEj1Jdf338lNbaV3IMbCsxjZp3pM0fHn/CYjgxeqkT3ym4PJKVuZrn
	KOkOP7hdi+Xk9t6psC+v68v5QHYdN9OElEJiJ1vaXzJmnzq4IUeAJ3J2gZOTNDv65ChEOTfesr6
	rvGd24Ko60ZRuH0ZwWkbcb0/LdeUQC2UfRpj/5PEY9WIxzUqtMJ7HyMZvDXTqdkSv5iIf4/GmN2
	E1BTmbU35abnHNDJw04LmbICD5ObVJicruao/jdasRiCPV+iPF+GiJdt5615oLIodc5s8KyC9VC
	JS/+4Gibq7mXVuXB64tl0OlPBUCDGWtvthEYgre6ToJ7pxU=
X-Google-Smtp-Source: AGHT+IGzPPZHWL9nm38yMUud0RRSbV/Ra+QmKEWIgQuJSF5KnPaRf3ayet85Wv9392Tvxy5qCKs2yQ==
X-Received: by 2002:a05:6808:3c8a:b0:3eb:4681:a895 with SMTP id 5614622812f47-3f3921f0b9cmr10552910b6e.7.1739227080875;
        Mon, 10 Feb 2025 14:38:00 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:59 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:36 -0600
Subject: [PATCH v3 10/15] iio: resolver: ad2s1210: use bitmap_write
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-10-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223804_035234_489AFE8B 
X-CRM114-Status: GOOD (  12.02  )
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

Replace bitmap array access with bitmap_write.

Accessing the bitmap array directly is not recommended and now there is
a helper function that can be used.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/resolver/ad2s1210.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
index 7f18df790157f1e411fb70de193a49f0677c999f..04879e6d538bce664469c5f6759d8b1cedea16e9 100644
--- a/drivers/iio/resolver/ad2s1210.c
+++ b/drivers/iio/resolver/ad2s1210.c
@@ -46,6 +46,7 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/bitmap.h>
 #include <linux/bits.h>
 #include <linux/cleanup.h>
 #include <linux/clk.h>
@@ -180,7 +181,7 @@ static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
 	if (!gpios)
 		return mode == st->fixed_mode ? 0 : -EOPNOTSUPP;
 
-	bitmap[0] = mode;
+	bitmap_write(bitmap, mode, 0, 2);
 
 	return gpiod_multi_set_value_cansleep(gpios, bitmap);
 }
@@ -1470,7 +1471,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
 			return dev_err_probe(dev, -EINVAL,
 				      "requires exactly 2 resolution-gpios\n");
 
-		bitmap[0] = st->resolution;
+		bitmap_write(bitmap, st->resolution, 0, 2);
 
 		ret = gpiod_multi_set_value_cansleep(resolution_gpios, bitmap);
 		if (ret < 0)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
