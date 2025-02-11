Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01B2C021A0
	for <linux-phy@archiver.kernel.org>; Tue, 11 Feb 2025 07:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//euEz+AcPvfyfSKLQUTLPA5ROokEdDw/xcblLfmhes=; b=0zAtT8DymkGUyr
	kTXGnXG/hxcrfRT5+wRxwP+rlSpBXzT6cwjzpiCnPoZZzik1VztSUafUpksPbXPcZDEp+9F/JWuru
	ctKjRP/kGWtBAhFXrP56vDiI/n5nK6t9xQyxQXLp0XW0Fz/gQ9H2F93qtBFVxJJtxQmczMlb4YRoK
	0Wof0es4a+LBnjXkp/2UyG1WG1lEApqa8tcSa64XKgP89vTNxvSxyOakjAnMlQ+i27EIEVGjOQJ0W
	vaRvCo3ERQQ0ZmBNxGNsy5YDkAfhW/g0EEsqzQf1g/lppwaIsGiEOlvrCxEiAMlOnx0LbRqH3PjWT
	za5h+vD+dNe2D0dP/Zzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thkoW-00000002qhJ-1Euj;
	Tue, 11 Feb 2025 07:36:12 +0000
Received: from mail-vk1-f175.google.com ([209.85.221.175])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thkoT-00000002qfO-0qDb
	for linux-phy@lists.infradead.org;
	Tue, 11 Feb 2025 07:36:11 +0000
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5204d7b80ccso820453e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 23:36:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739259364; x=1739864164;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v4rL6fRpPDW3WWAnvPDGJsUVffkkAT6CPBcGQAburtc=;
        b=daTgoKeTfsMU89ibB7M0pVyexzpMhi64/qOjq4Kli4TFtjj+xB9AMAhXBVj3+3slCm
         hn9takZ6/p4hkjCQoXSaCN8KmilFCVPEU28fmBkvRUQInoDScxcXkgV9cx8JaYHY4UpA
         hNXLz6qYx3N0OK+ukfm2/J3zGCrd7LgtCT77z/yXTgwTQjTAkJEf/GYc5t6HdOqDvlXq
         HYv6nSDDM63nfEd7xWoIETMBZtipeZJ++DklWgRrSPyiEiy2YnC7qR7qgJnPS1eoWQWH
         IScVUa+3Jb9lHbJxoKnztueHRczareTSaAifNxecFkXrmTfGQZoW32SOFiSKc5YUVaxH
         7JJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEc6A1WOGwKhXZ822Tn+fvpAXpvP0ShyZm8iRQVjk+rvNfO+wcgxbQiOjor+cnrTEe0tjgE459of4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUx5mYzrrbEsA4qk5V8UteAzI1l75HaoPda2xNsCruaXKV6nnY
	fmb2ISwyfWqyGp95+FvjYImKRY6nzbvdfidRBDnTfiFyGRgh8OxklQfLPCUs
X-Gm-Gg: ASbGncvfVQCiLDtnoG+ZFlCFciutVmaKTEpWFC9oYxvFmFRzoXsE/u+l5NykQSUxaw8
	ZuzdWyInINBnZGPwUZukOLI6epTvtro+iXQj7ZkdU5Z2DkZqXXus6aBcnKvRD8X2WVaNTP9EgjT
	RjSUlTDVemeY82GEUQ9Rv3sd+8Pvcd8XCeOR+ofnSclZf4tQPGuDt/ZbrgXgb5r9gJCj5Cx7Pbx
	9GyT/fTHtYi0JuHbdFE4HOZuoigxo2tI1UoeOrsYP1Hcx1AGPANfm26zpSodT3md/5RMT7naRDE
	EDj3vM0JcFqdm40hcrbQgaf7p8T8o5yjKtGWeA6qqdcvJ/yWuAU9WFysBA==
X-Google-Smtp-Source: AGHT+IGZqGiYvVDCh52bbEI6BzUYOPD7wmyOZHP8zfGfCZFQ7Y7HQAxl+wZiyzPiPHohgig+z7Jc/Q==
X-Received: by 2002:a05:6122:a14:b0:520:42d3:91c4 with SMTP id 71dfb90a1353d-52042d395e9mr4411064e0c.2.1739259364230;
        Mon, 10 Feb 2025 23:36:04 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-52050a2c061sm289511e0c.32.2025.02.10.23.36.02
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 23:36:03 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-51eb1a714bfso3254136e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 23:36:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXCr4dBdzKGr7Dw+JcFbmoyV70SRCjO4JDs2KVKcAwVfCxbVvpjdytFL8PjmfqSwyw48xFTL3HgqG4=@lists.infradead.org
X-Received: by 2002:a05:6122:1d44:b0:520:61ee:c7f9 with SMTP id
 71dfb90a1353d-52061eecb62mr56803e0c.7.1739259362582; Mon, 10 Feb 2025
 23:36:02 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com> <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
In-Reply-To: <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Feb 2025 08:35:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXFXbzeus6yzeBsjOvTsD+AOLKjyRySCYo4YkjSZByZAQ@mail.gmail.com>
X-Gm-Features: AWEUYZkcG2r9GXDExtVTd3MXygmVQFQr3aQqn2D5K57fCGs7Av6ow06VQ5r6ees
Message-ID: <CAMuHMdXFXbzeus6yzeBsjOvTsD+AOLKjyRySCYo4YkjSZByZAQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/15] gpiolib: add gpiod_multi_set_value_cansleep()
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_233609_244110_63885FF9 
X-CRM114-Status: GOOD (  19.12  )
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

On Mon, 10 Feb 2025 at 23:37, David Lechner <dlechner@baylibre.com> wrote:
> Add a new gpiod_multi_set_value_cansleep() helper function with fewer
> parameters than gpiod_set_array_value_cansleep().
>
> Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
> cases, the first arguments all come from the same struct gpio_descs, so
> having a separate function where we can just pass that cuts down on the
> boilerplate.
>
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
