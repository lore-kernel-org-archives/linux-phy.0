Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03A64C0219E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whM1zW83tud8ZHz6kj9pNGqDs2OexNODRFd7ls1ZBss=; b=PbwDMD9D+I7OCg
	JJuSzLlU32yhMcB/qJ0T3fOQ9y9DyclfFSbfv2FMQ6MCPXO5B0Shv0F2SCUEYdCqN63v3Xsn/q2hl
	mOMGlR3Mfs21N8nfd3PsY3U6CWgliu2oOnakM2pNItEyj9H1VB6HYsbMWpMh9oz5fZ2kblrOKFJkI
	HyPoMqLmkIQuz/hqIB0XsFYVbluSl9HmVBGGko8LpJ5uiotcK1rhT6tAzCqr3T3+9AzAoQII79oc8
	u/C59vNQU0i6ojPLko11TcKau1h7k3Wkhsna5D53woUZJ5LscZqa36UvCMZ2R6a1YKo/1+PaV1BaE
	Ta2wjiLcjM+beSGP6ZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9OP-00000006rcQ-31mo;
	Wed, 12 Feb 2025 09:50:53 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9AR-00000006o2Y-0zvT
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 09:36:28 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso3858255e9.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 01:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739352986; x=1739957786; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SrbuHpRRCn2ojY6FY2MTuNNVYvVFb7ykFJzn4YLtY68=;
        b=E77+zSpawq7biQOtEePbNb4ZiUsJb/XqN3IdRJkplN61BRrLZ296lf5GJko2Dzld+h
         WyZ4uNpRPHE+2d4uDCy/nLaJiH3UjqfMhkCXK+pDwH/pdKX73IXRXExDk/YLy69PbVHC
         8CgrnE8gCAeaSxWcfQbjtGLYMyBlOKeKlbk+qDQDLmVqEpnqX+HUYRMFRbO7ziMar65J
         AMUeG4pDyffanRXcI6QX65tsNRboineYpJ6DfrXjk9aRRe0s4VlW1EVJxWEWLQ+oPUb7
         29Rboh3PAlDcZENMWvkl6Ynj31Aj3Zrh8wzSyQ5PXMGE0wUNyBa5YMip5WiQrEJ00h2o
         7Oxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739352986; x=1739957786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SrbuHpRRCn2ojY6FY2MTuNNVYvVFb7ykFJzn4YLtY68=;
        b=EERVbFED4OT1YQOO9+/hkwa9arZ8dJow0EcaFws066PsFVFUiHsL5nxW5Ug8RNWsKC
         nIq0R91W/4RONEnmK2lbObTwHUSzaEEUG+lQhAmQ+mxnRPIxjyFrBkK3JiCcqHRsyOv2
         MnKleATcuW6o8jmYDnyS4dn5ma3z77APuSy/6e7c5+Xt/V7vNAHVD/uTDrAUomLFYI63
         IM8+c2zR6h4VGuTTftMnI8OoYUQMgsDBVr6kQSnECkezHXyPI1gIOsejJqGUgVkgwE45
         RAwmt8EKdfoKKc32RQ8EAmbDoB7bSXNnH5xHSQ3o+Y0lpvsdY31r/+AkEdG8p5S6ZKCb
         GcoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWKHB3WqexneHWjWVMHo3cZ8Kq7/bsX4unYf83zCww0CFW6KNvouTVU09o/a8Bmd3RUx7WMORoxGE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzfyxe7S7Arv0Sk6LL/EIA+miGNf/ArqhoJbeoEEf8uNV3DE7/u
	cHQsuPGWzc9Fn2o20mmw04/L9KTF5PX6cjLx6VbNJan2XaIYT+OkOMjsvTklTPk=
X-Gm-Gg: ASbGncul9ChOCfnEwnUPJlM+/Jsksb85+N/cHJbJDhr13djX+BZ6bZ1rwD2e+1SrDyH
	YdbaV2+TGDPVbQ6Qs+t70FnngsgQntd22JQece0ulrnppFTlw5TyA25ee/SvCUgMgLbGq+IuMRL
	mP5cCuvYyRkDqmA6eDD8JnBaNmK3mhNkfEmuhU7k5MmLVNxADfGznfxn1Evrj1nxXCvxVvvKprB
	9IzFQxH4Sb7POpp6Fs4l9N8HAW6qDlBWv4vSawYLlhRFOgH/lei56Rm9kiSgSL+UQb6S9qvWWIy
	c9aKkWizLP9lhAw=
X-Google-Smtp-Source: AGHT+IFudfgBGV0+IDygsdoLTA/5igyJSZtMJXjbCQPeBSc7oN4L55kdXKAZLq0JA2599sk+IrdqDA==
X-Received: by 2002:a05:600c:3ac4:b0:434:f9ad:7222 with SMTP id 5b1f17b1804b1-439583b4e03mr18452935e9.7.1739352985575;
        Wed, 12 Feb 2025 01:36:25 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:521c:13af:4882:344c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dd8dee385sm9918965f8f.61.2025.02.12.01.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 01:36:25 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	David Lechner <dlechner@baylibre.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
Date: Wed, 12 Feb 2025 10:36:23 +0100
Message-ID: <173935297467.10817.9536577313319553775.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_013627_299066_803E9F35 
X-CRM114-Status: GOOD (  12.04  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 10 Feb 2025 16:33:26 -0600, David Lechner wrote:
> This series was inspired by some minor annoyance I have experienced a
> few times in recent reviews.
> 
> Calling gpiod_set_array_value_cansleep() can be quite verbose due to
> having so many parameters. In most cases, we already have a struct
> gpio_descs that contains the first 3 parameters so we end up with 3 (or
> often even 6) pointer indirections at each call site. Also, people have
> a tendency to want to hard-code the first argument instead of using
> struct gpio_descs.ndescs, often without checking that ndescs >= the
> hard-coded value.
> 
> [...]

Applied, thanks!

[01/15] gpiolib: add gpiod_multi_set_value_cansleep()
        commit: 91931af18bd22437e08e2471f5484d6fbdd8ab93

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
