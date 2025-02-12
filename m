Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774FCC02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 09:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN2qJ+v3CDWkVPW4YSb5aAS4WsE0sEh8jzFqIPp+8BM=; b=lMYDBNtpLuAdvQ
	19AYjizr3dsFNg13A4au2/61Q4wpnbKUqjtikHTG4pk/nfn96AowRwU/w5rSRObIUZOA94wlAYlfA
	zQvrJ7N8s0ue3kQeGOsP3dScTtx727fY2NUDGtkr90joEJcCcGkzr3jg4gs+ORm+rIGrqbkbhTHiY
	Zcbf0zGKgUiHIfQJisRxt0Rd6OFK+UNOCd+81olRXjgQriz4QbzbMSGCyPph+kolb/1N7pA1juf3H
	tZvhd1Ry7REI/qEriM3Mv5Kof9VelV4F9RiDGtTIkQhk1fBX1qqBiKDjKF+6fTttGLKSc+FY+Obrm
	Bc592zIbLbhML/rxUMfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9VL-00000006tIJ-0m9n;
	Wed, 12 Feb 2025 09:58:03 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9Aw-00000006oGr-0HnS
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 09:36:59 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-38dcb33cba1so2648919f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 01:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739353016; x=1739957816; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRhZaB3W6faFlCbku+LscU579s6QSzZfyLaHX9G8q1c=;
        b=PVISe8dA968Tzc8ejZOoBGrGO/kv/nf7kPTo/RWi9s4OBvKO55/P/+fUScSOuQTVxC
         OPrzltDhOtyZ0Ygc5J/jjjhOD1EyFwWWXUTSA43QTKktTqmk9Tm6QeEPcg38CztK45VX
         FJDAh4iLGAKEXr2g+jLEv33h+xbOp2d0tKByAAEBmk3dwOrW8wcxDwIKP6hxlRfFU9Xb
         XayQbkcAlyU2MPpSKlSmCOmIA0wzdEq8Iwm+IIvKvxtfWOcMtJrKO0ucLpgmusnEic9Z
         8AEUufhXNwVY5R5e5T7gzUv0O10lfI7c6BY0bY8DZhjxCZyDuE3oHYo9Z2bgHq5OZgZo
         6DQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739353016; x=1739957816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NRhZaB3W6faFlCbku+LscU579s6QSzZfyLaHX9G8q1c=;
        b=fuAv9h6zqQ+/bjGa2PSb3rHZZqrJ5o5tX39TgYFKxRk8Wes9X2igyqWQILDYAhyxlX
         j7soCUSj07a+0XecAfL35Xc/iqO3tsejGItiXIffLFfQzo4iy9bOoYwixSCXHA+V8RWp
         jJM0MSG0xdos/4wiQBBHsIhsmoUpxSFfyi157NDR0gCS1npI1Y9WiRBALo9jp6akl9v9
         qLiHFLJc/PHmBkKQLxLs5DtqUZgNbg5v3tV24mVHk2XUj7vdmiwjJt9oWYEboOo36uuA
         gLGxDmIDZNFgnBr1aut2QKLr2mSgfqana6bYtrcrSKrhrKv/Mg6OtZHgv/WR5FUZWu93
         ox4g==
X-Forwarded-Encrypted: i=1; AJvYcCXHiIVhfjNCQL6WewsguaUOELHnF86z0DbJr2v2aJVlBGFVfU4drwZv2BzRi83cOp3dALvoWOTy378=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxBB5QQkr6Oq6ds8G7EZdicJ8nwR4QKgjQe0necc8gFD0MvZUG
	vlhrMdDLuKqsfUmY+rPgv9bcvWIQMG4mIObrxub56/Z9bJ+NEAbOzp8rUA9j4yI=
X-Gm-Gg: ASbGnctOGs+XrrGxohueStBxlZdeyvhjr96eQ8KwIQKNt1LHb5AAs8VyFFIy+7U3Loh
	BYUG/e601KxfqH6tE8DeBwue+d+sJ1f5GC3oM1KTjGYF0N/JyVd/2Mq69y7ST3C6BIv8pf5bwDk
	88QkKDJLdz7ZcrShyf9HNDqcF+lgXeVrqOK6d0mvL0pJ94LWTiHVCuLOzdiWOteiStxc7xzl1R4
	Xf86ODT5fHb2iDrOD675B5GuQhNN80sb2CmEzzrICi66F5iE/h2inUt9x3mUcm/maYMwQHyLxGc
	/lStK4yFgBO0INE=
X-Google-Smtp-Source: AGHT+IFQnul0kNzls6ThIvi1z7bQ429pLFDaGlT/FcOXJm3pTEnq6re0+Qc4O8V8syw5sWV5sK78UQ==
X-Received: by 2002:a05:6000:188b:b0:38d:b34a:679 with SMTP id ffacd0b85a97d-38dea2cefc8mr1824460f8f.37.1739353016217;
        Wed, 12 Feb 2025 01:36:56 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:521c:13af:4882:344c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a078448sm14132935e9.34.2025.02.12.01.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 01:36:55 -0800 (PST)
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
Date: Wed, 12 Feb 2025 10:36:53 +0100
Message-ID: <173935301204.11039.10193374588878813157.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_013658_110818_D14E8BB6 
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

[06/15] gpio: max3191x: use gpiod_multi_set_value_cansleep
        commit: eb2e9c308d2882d9d364af048eb3d8336d41c4bb

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
