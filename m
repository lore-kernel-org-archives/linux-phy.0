Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE61EC021AA
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AK1nkh4qo8qTUWK+u8UhSwt4K9BZh2SPbUhsHw9omWo=; b=gKsZQXhGDqnz0D
	9uwN3CsD4l4N2So3TzdDtLvFLp6FII7nblO5n8tXdjVljTLGaBeqLsehjLuGVOqYBZ3NHDUnfqoQ/
	DNINuLZ3bTH3OFkj0P/vv6631c1VFmrrkJCtKnrWeOCg7WKytPUu4A5bKEV1PVsVOjhonm607y0us
	g2AmUOqVL8LWOxHiRjgA1Br8wPk9VzqaWa25PBZZkFoVBAmEYRpkhl2en6gdR0enTvtCyK11CMEfl
	Bv+SpIlSSZTwCLLb9gY3/Z3h4nXmaFMfnpbji2NNKURBQGG6ahFv4Y2gKE/qaPZhcVl67TYzWehtH
	uY8T2XAOwQ4Hz4d7H4lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgn-00000001kVL-2BAY;
	Mon, 10 Feb 2025 22:55:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPe-00000001gNC-37tp
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=GMcrxDurUnSK2SHairVKflMalwdh2XVxdj0wjaWv8sM=; b=qMGSwdwRowxZShuFK8ALW8hiTL
	UHPgAgqetv4SKaeobhYiwM3tgEkVEJcmrL4YRYjRHt0u/X2uwpEmHiUJwYNG5VKuwolJAe//MYGU5
	WN97cu1EANqtOhBpz7LsdrS4PLtX+IRns45EGrjrj/cW6FX6T42S1zabw8O3bYnoBQrLq5X6xovZQ
	H25yyxXOqTiZ4l2To8w13gB3bt/s8N90uRUWm8nDN5z9jUcAQFOwVe8fQyG10NCLSITYSqPkeWSpu
	KjQSXR1MlO/zDDxyy0/6lBkpXcV1uGKvwLz6vFXOakFns3J2KB3JIHHFhnjfx01LGptYwRdYUJ3n2
	rxhNt3xg==;
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPb-00000000KRQ-3aIj
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:57 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3f3ac204922so1247838b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227074; x=1739831874; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GMcrxDurUnSK2SHairVKflMalwdh2XVxdj0wjaWv8sM=;
        b=jyw1sW2OqYciQh5a7Zn6hSgwIpbmmijTbNu+CrBttyhAKRynsbVZUu9jFT4Yw3pRip
         NJ1hB5N/GUVwejkK5l80Gd393ex1o+kvL9gEMJH9PdFNd/jHeSlcwdL+CFS8juRNcrhF
         fMUrZfl4aO48SyQAcX0NCf75osYHNuGD9VyOjON74B8iSWlg6EhRDwBkvHUaTJvlTfDJ
         QlaxU78XsHob5nCOvTnuA+JhI2pVt9IEpFcGbyr1hk27B2uyoP2o52zDNpYpA/UqqL7q
         JLsxFnTOXpiWrtpA6LO4HK/QGShJRv74a6+3FdjPOnIImgrU5ftgEbihLkuO7lnqgCVe
         fxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227074; x=1739831874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GMcrxDurUnSK2SHairVKflMalwdh2XVxdj0wjaWv8sM=;
        b=HhMDNwdUccw9+atZCWNfD3AsvPP9rwOJxyLkXXD4MBt5B1qK5T2cMp1rIGI51Rr4fK
         v4SJV9SvsoLcu2yJt/IH6ybIq5N/qgQWVoTAAhVFGtktuoSYYZPXcAmZ0ltnLSmdzjpW
         y8sPMvIAUQDLmK0eyUF1JY3A1rZjz0BtljwScoJu/FwwCVz6JxtLmf7aDynqRwrspeAx
         9IoEKAOOsbM0amPuBxI7Zm1IswDUOI9OSPfOzE/l7/3+I1kzJujMI0kFLi5kfOR8zrT0
         6VkSRKPo8Hhue+VJbUxoU9aubfLtSCcWTy519jk55zrHvjEDANTzbEzH07NwfNT4mz8g
         BbQg==
X-Forwarded-Encrypted: i=1; AJvYcCXz7EUc5SxFqe7bHNsGgkhme7wynHvqLXF1nrX2pMM13i+wGvEI5NyDA+9R7dZ7M6m8Bb5tG017Ev0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn3x8Y3jBSNhOHtUcc6L1btlmEc7EhqNnCKl+Egn8KLcycQaZ8
	XVT8OPL/Yavna+epWbdBR63xw9PTsFK5v+Y4JZlSKjBSfTjp2HM5mxCdwUvlcqw=
X-Gm-Gg: ASbGncv5PA+4fnMT52sxWBf8+fd4GLbvisjL/Wr5/fv7jb0Vgeb9NtTgR6KWKayqNQo
	IEzCZBM9UC5/aMOpHn56018yDiLeNG21xTJEeH3o7FgszCGB4rRV7XkM7oQyeUF2ZLr7G8q/9W2
	jrGISqET1A7dwCgdZ4wzWnOHcQDQJCVSh2ZQ1AbWmmT+4GmZHxQ1zv3aEbLX/8x5GImybk0KvEu
	S/kdQSSuYC3brR1zupqZAkXSclhXVOWHffh0raz1yNxElh6zmO1OPBXJIB/PHhKGJ3aww+3q0e+
	8Nikr221vM/WKDcppY+I2HLsirGaen9zgQv2bn4b22+f6ds=
X-Google-Smtp-Source: AGHT+IHpQCMO/UtYCFM9csSv77tlAPoKshLmX0/bTL0+YDtp28Q6Z4e9EVZz3B9NbqVlL1P+vOnPrw==
X-Received: by 2002:a05:6808:1a19:b0:3eb:39f5:de8b with SMTP id 5614622812f47-3f392362d24mr10975894b6e.32.1739227074492;
        Mon, 10 Feb 2025 14:37:54 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:53 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:34 -0600
Subject: [PATCH v3 08/15] iio: amplifiers: hmc425a: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-8-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223756_066646_E0793A31 
X-CRM114-Status: GOOD (  13.42  )
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

Passing NULL as the 3rd argument to gpiod_set_array_value_cansleep()
only needs to be done if the array was constructed manually, which is
not the case here. This change effectively replaces that argument with
st->gpios->array_info. The possible side effect of this change is that
it could make setting the GPIOs more efficient.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/amplifiers/hmc425a.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/amplifiers/hmc425a.c b/drivers/iio/amplifiers/hmc425a.c
index 2ee4c0d70281e24c1c818249b86d89ebe06d4876..d9a359e1388a0f3eb5909bf668ff82102286542b 100644
--- a/drivers/iio/amplifiers/hmc425a.c
+++ b/drivers/iio/amplifiers/hmc425a.c
@@ -161,8 +161,7 @@ static int hmc425a_write(struct iio_dev *indio_dev, u32 value)
 
 	values[0] = value;
 
-	gpiod_set_array_value_cansleep(st->gpios->ndescs, st->gpios->desc,
-				       NULL, values);
+	gpiod_multi_set_value_cansleep(st->gpios, values);
 	return 0;
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
