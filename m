Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9EAC0219B
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UQHgDbTg0jvWSF+xA/KPKp5Ayh6pB2hkDddIHRDNOs=; b=ECfF8+DgehmF7r
	sxBBVfQUfgXrV2iEYOI8330DWzWcQ/1kiRo9t9EBg/K9ikJwwEvNxxq65l+G+AMb5RMdjyMeW7Osm
	vbpAuBNbO8AFlgjvkUQuRCLx/SD8VnODIJ0qJMPG0y7kjFPy85dP+h84naY2QN2V58Rhuwyg0EIVm
	tbAbkNDgfaE6EhNsRqu4p+0y17mOhFFa18mRfdVbggoEL0wiaarSd9WA6/bG5vGqEX4QIa2tCCbhe
	Y2VPJ1qxWa8hZvGiHx7whRRsmExlQpBCmXo6r9bD6nXDM/UlLJGBqIT88k+WrJCjdSEX0OAhn0jED
	HrqXdSXK6frFkHH5nzog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfi-00000007iOL-3Msh;
	Thu, 06 Feb 2025 22:48:34 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfg-00000007iMh-2PUY
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:33 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-724d1724657so1335007a34.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882111; x=1739486911; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+wznyorGz9Vd3pJ7hNo9c2JQSgu4MoX0a4PWBg4SPl0=;
        b=BUV7q/14nfpOYfxcVU7oNSTLdN+az/hayMYWVpiSAZSFHVBRVWHHW2fzpXW+DIhkU2
         vtXRw6vqdDoKEG33IkHo0xSJyjjCKZXeiZ/OMV7KqAp8sU0hmHe968kjdXLizPr4jUy0
         AaBLYxiYXGXCeUWwHoe2TypTkxQa9cbC0V2Mtc43PHHj8aJlGjvVtEHZx0U33C48bUFZ
         rztnnDKfYbRgdRucwLg6FhqbXx0vRrPkSBp3IseolJgGmZ81mRBQkingBMM1mBzL+a32
         UhtSjrYLBSreP4/bm10vRCfnRX9k02HOZXRLOZOeMwbNKkpv4iztkY5YlQh6OxHHVnOr
         z9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882111; x=1739486911;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+wznyorGz9Vd3pJ7hNo9c2JQSgu4MoX0a4PWBg4SPl0=;
        b=aT31gsE2QBmswUQycm9fziRZ3vOe9GwzOz/g7K7JfWZeOzy4bchbbFKjl73uIbxkX8
         rR2Z52kKhNle2tNv7gWU5IhaoD4MX/ojDmwVAwPkhMBHTeVPxznzYkCUrdgaRqO/m4+i
         zSgVj8QxohH5qqFaSoz9NJEZISdb5EJtSRvwYVW8q17LiCMIS/1Ndyl51m8AtLBjWJ6p
         TDq/YEhuupooNHZNnw0m+fyYh8UBWjM4ANsrgSn0bXqzkkUdi0B41XH8EmYFXbkVKLlJ
         MX07RMy4EzxuxkTGnvrjAzWIPxgmiepytVYCdftgZvUv31/paIBlF9fp3GTuCuyHZTl8
         jy2w==
X-Forwarded-Encrypted: i=1; AJvYcCWhAzW28+cLsOJQQcICVp3ZkwPerwZ1pANthiHxZn/1GPx5dKQw9LbLj4QxFFWIQGI+eLJcko3hUM4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEqTb1YeKJqZE6HmkLei5p2eA89JIcin6A3uLe5tQ6o2prHRzO
	LJ91/y0EsK/AdB/9GrEFfGcs9jY4XL4iXZecmgyVrgNmLpCkzM44K15n79eehUY=
X-Gm-Gg: ASbGnct97hjANURnAT/BI8XD6euBlDf6sxiweI16GtsIDmz4cyBdKDnVwKdUF5H8wy0
	jVUhjJFrou8B+nTtGIrlXzaNAQ3DYGxHdR1CqqD26VhkzAtyxL96ghkUGBECEyTaxIzCutKvBC+
	ve3kDM35vUkfwUZRoDlp/Ldpbwwyb+AfYBBLLb6Hn5fP0vtNwET1Z7jxOO30ZBqn9LnVIK11yAs
	ch/KsXx4dwlHngqq0y6BKnWB8e3yoR2JN3MTUcZ7FGlzJQM/SfxKOo6t3DrzLz396ZjijnXXZLV
	t5YIptYPYsKteCgEspPMMnXsLHI31qQ+lfk7hbbgI96dbqw=
X-Google-Smtp-Source: AGHT+IFY5Ed96/KcKz8L7aoyZ9lE6qS5z+d/+9NsZ4rcpOBs9+vdKruwDq8O9FLpVqE3mmL4J2bJeg==
X-Received: by 2002:a05:6830:3981:b0:70f:7375:e2b5 with SMTP id 46e09a7af769-726b8f3ab09mr416508a34.6.1738882111587;
        Thu, 06 Feb 2025 14:48:31 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:31 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:21 -0600
Subject: [PATCH v2 07/13] iio: amplifiers: hmc425a: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-7-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144832_616602_32DD6E31 
X-CRM114-Status: GOOD (  12.83  )
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
