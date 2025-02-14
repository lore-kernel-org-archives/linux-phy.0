Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6225BC021A4
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 10:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKJEPywEg1LGn1XE8Kqx61N/TiHXtiBCRtT0oVmI09I=; b=jUYdHeBNT1vRrp
	EO02zHuZXnzAhsQ+Pfm9qNph+6i+AF7oS9zkLwP479bpbm8YMDcgyu8GphJFCy9Wzq1Z3Dvbg8h5+
	16XyqF0AiLJkU2mMjcqGQ4larlqF0BG0H2UEl+2Y/IXC1Wy2ehL2fH29g+SOYQs7fzmhHbTs2oKSI
	7Z++OABEZP/hT2fROqqAyHdPCcVonZxH7x3GMHc5I2/foGL0yNSOyDLNLrghUqHTPCx/oPKoc2j5f
	PHiif5HyWgHxNPRJlCPQviSgdFzNyYopV/z8aT21g3TCi9mZoJN2l7z6ZdirwccOov2NYw3BFWWRC
	JsLNBYz5X5NswqeoDQEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tisok-0000000EU60-0eV0;
	Fri, 14 Feb 2025 10:21:06 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisoh-0000000EU59-2QhY
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 10:21:04 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-438a39e659cso13303535e9.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Feb 2025 02:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739528462; x=1740133262; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLnRVw8CXaL8aivm+oTTQCZPxIVCt8DWL00ds7O1e6U=;
        b=02TrD17JQ/TUvj94W2vhkPaC+rRq7oLSF7EAyi0a15fyg2Am39Wo7L4XG4DFQgeM55
         NJZTcBAdi9by49yOu9OdybG13iDq3gbDzhrv7zMiVcp40dPhH2gqsQ3Ig5Dn7e1KIElI
         f1POgbgdtJDCwsMKAUxgIhtyRNtxuUGmAi0hGwFY8Y9tSLXBItqunSYYubGg5QrbyfQd
         zKLcz0qGSuNnS4ebHtKOWHQrpsxo9uEF1kjSYhTJq3U2kSBjs9Cf2Mv66jjziJ5LmlcI
         VzNfZA5WvclrCqZTsaV+u0/4freLH66famSblSkD+XN1VV1JUSjoIVNrf+O+tnl+D6Uh
         uRtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739528462; x=1740133262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NLnRVw8CXaL8aivm+oTTQCZPxIVCt8DWL00ds7O1e6U=;
        b=MtjH7DwrfnFgmvFZSkoifjWuMPu1DzzjBklRqUOStYyq7YGe91mnU3YPHuvleGIITo
         IGiBvLLVZ4D08PiRj830yPZ9Mo4Dde0tb32Q81sD6hJSkrxKhGPLmsZu8ZYvEsnqhoe0
         1I2IQvLHeutHB86Uea32YajFxUqO7javQAA/HHPpucoXWoAneXlAU8mn7RVI/hE+1LKj
         0gvBgfLTi6Nyc3Ry3UKqjm+IoVh3STLpjWuaVULamv58AXWwlXa6l8ZSZM3WYAbbOFzq
         XA+QlvZE3bHOV22zjarTUXWcR3oXy2mMfNfXITUnnZEXdA1Gp5WomdeuG9PMjFGNCGsv
         q7Ow==
X-Forwarded-Encrypted: i=1; AJvYcCUx2i7CLC+4JLGNXkzNwfQqjlaEl46A9gxkRz/k4bBkRmidche8GU5TXyhj7XIqBwCSLnnjEwd0bS8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6ZzNnyE/nNSvhPSwpRIlR/aSKDhSxtppPgQjcAz7qySygO08y
	ZVQ/k3MkCGF0rl8i0xXoEWEDeFDuc8M4IVnyxhM5t25mHBiUt7CFylQfKX7Cdb8=
X-Gm-Gg: ASbGnctbGwuFt0WArv/84qklJ7IVKAgngd8hS7bTU8YzQEJdfYIsJBosD7ItYCvYeji
	XinBVF4kKuKd/JwtnJyrpdshAS/vzr0moS3svhilTcfqT0e1I2MZpkVVUIjLN7RQXHVt7BgooTX
	oSMCN46tltcgHVWcUwqvFMJ+hf0/VsutpzVIa+r/dsw98nqm+arZB2z0d6d+9DRVc/kOireGYgn
	jkDE3cwjGxSWi16o2Rw5PwJYWNAsxG1mswzasV1mXMD2t6f4JXotUxeCzgGQNCRuWUaXM1gOsVv
	xdu7wlvvgMOu+Q==
X-Google-Smtp-Source: AGHT+IH0JLaEmWyKXH91k0R2F707+ITR4fD263SwynHCn2SZFyP0K4/kI1oydg9oxe4La6Y3ETiVQQ==
X-Received: by 2002:a05:600c:35c1:b0:439:69fd:34b7 with SMTP id 5b1f17b1804b1-43969fd35f7mr14374675e9.3.1739528461685;
        Fri, 14 Feb 2025 02:21:01 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:62cc:da7:7c42:97ac])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a06d237sm71463255e9.21.2025.02.14.02.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 02:21:00 -0800 (PST)
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
Date: Fri, 14 Feb 2025 11:20:58 +0100
Message-ID: <173952845012.57797.11986673064009251713.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_022103_618485_3EDDA347 
X-CRM114-Status: GOOD (  11.93  )
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

[07/15] iio: adc: ad7606: use gpiod_multi_set_value_cansleep
        commit: 8203bc81f025a3fb084357a3d8a6eb3053bc613a
[08/15] iio: amplifiers: hmc425a: use gpiod_multi_set_value_cansleep
        commit: e18d359b0a132eb6619836d1bf701f5b3b53299b
[09/15] iio: resolver: ad2s1210: use gpiod_multi_set_value_cansleep
        commit: 7920df29f0dd3aae3acd8a7115d5a25414eed68f
[10/15] iio: resolver: ad2s1210: use bitmap_write
        commit: a67e45055ea90048372066811da7c7fe2d91f9aa
[11/15] mmc: pwrseq_simple: use gpiod_multi_set_value_cansleep
        commit: 2a5920429897201f75ba026c8aa3488c792b3bd7
[12/15] mux: gpio: use gpiod_multi_set_value_cansleep
        commit: 47a7c4f58e1f9967eb0ea6c1cb2c29e0ad2edb1a
[14/15] phy: mapphone-mdm6600: use gpiod_multi_set_value_cansleep
        commit: c88aa68297390695b16fd9b7a33612257d8ef548

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
