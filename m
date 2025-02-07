Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFD0C02192
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 09:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEnYOmfHTYKJqY9mL3TJP7rVUfLmck4z0A7zCYVy8b0=; b=W0pivoEkJ/9+MH
	GLbYYsSCUtMvl6LEtSC7JkPb+YBROSj1qA7uqc0EjEQsAXfOHUAC2gljhItYHazBbDCjh2r6Y9Xnt
	y5wFhaIV59EVN0HZA4Bkh3z4kvaNr7saCB9dfqi+dc8MgayaZWsCUXskbtMxeuHEGWPn/S9N2lU/q
	hRwWCOlg7xi+pGF87K+bf/zXvQBYSd49e4BjMtHGBGbwvDoegoQQ00OCkU9RmcEj0rv+gI2uona/I
	f9+XkBJdfV0CATwl/VhGgd3kvhpzAuIX477yat31S8hEc2IlNb4hCGACY7ekcysJg+dcSXLUp1sIN
	4goot+nN5/CGT5Ybxrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgKP6-00000008xuF-1fXK;
	Fri, 07 Feb 2025 09:12:04 +0000
Received: from mail-vs1-f44.google.com ([209.85.217.44])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgKI5-00000008w5j-3lFX
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 09:04:50 +0000
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-4ba77618c9aso444470137.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 01:04:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738919087; x=1739523887;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXaXKdHLoKk2Bg/TFRHcL35cN8BOIB//KM9g1NizCeg=;
        b=Tbwnhq2K3CEYVjChVtDrCANwqk/nCjIkFMd2B8EdoUCNfSHmQ583M2Om788QMrP+yq
         Qz7wAujzQVtxVtkLUy2cUGdaSAgttaoeksdkIoYesYc0Hrm+NqfU7DXRQBsnrrg2w+4l
         ADndDJ3k8lLowjcx2pmTCruQtBLWSbkbl+eYxakWKYySa/wcFhD3iAn2aiZSQVwH4WvZ
         Qg1xUeD3A8kgGKpu3Zo9Khq7SReOYimAUytS70LdmPTV8UfPATwvFua38Qdbk6+I+WzW
         cs3+MAP3eH9La6VcFnNN5jlLgJjCbAheJT+7yxXhfP8qqeeJqc/wHIue/1As/ZwS1pWH
         OH4A==
X-Forwarded-Encrypted: i=1; AJvYcCXjsBy6m+cSoc56vyn1A3r0puo27TkPnfa1dt6cICP0c+qAvb0DNpqakc48ZYu0ZiEr8gj/xi4zTXg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1jnTWYWJkKYr0aSlM2Jkh8e73fOa4pTfYXdwmPwllFqVcO5Gj
	YW+w+RD4BIcW+ggyUxM1UhWn2928yvob8sx4wPoTvFFzuNc9WjqUt4pHoC26
X-Gm-Gg: ASbGncsQUrnQS3PSRuafkbdAI/ZM/2GcLHzkkh4YpnEBt0THfhVtHVV9XB643+EUULq
	fDSzClSd/N4F/P+KOOY1uagRQqJPMIXjLqX+jEfwNiIzH1+jWPX9CH4+CSznUgzdg7CoOe8Q1sB
	2dNAVG4PguN0UcAwndEwMgvVTINYLgd+0AkEkp7E/hGRX5zdE+AHV/vWqWNJw1Sie/x6FKoP2X+
	cONWY39f/WcKm+OCCwXAwXFWDyBjqDGXTYYz4gSD9aeC36hQfddA18OTy/M6T28smESPm0CQQ4w
	Okc1x8UCQtX44M7YEXiL0x9YMop6aDz3wZ6haDxvIp1S2yIPdU/82w==
X-Google-Smtp-Source: AGHT+IH3g3x0gGGWjWb/YHgz3MQt+ODSe8SjF2X5NVQQYhvqUhC1IVT/cno/zolWIkcZkWfOJfnh5g==
X-Received: by 2002:a05:6102:dce:b0:4b6:5440:6cbb with SMTP id ada2fe7eead31-4ba85f1da1fmr972776137.20.1738919087262;
        Fri, 07 Feb 2025 01:04:47 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-866f96809besm488039241.13.2025.02.07.01.04.46
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 01:04:46 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-866e49506a5so518117241.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 01:04:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUeHpQFqNYJYnfmU43fep1U8DYbkVZvtL6fmGI49BF6bsgwWPYQWIlq0tvnrQAt05Gczk1hjmqc6dM=@lists.infradead.org
X-Received: by 2002:a05:6102:5088:b0:4b2:4877:30bd with SMTP id
 ada2fe7eead31-4ba85e54e05mr1293360137.12.1738919086507; Fri, 07 Feb 2025
 01:04:46 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com> <20250206-gpio-set-array-helper-v2-2-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-2-1c5f048f79c3@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Feb 2025 10:04:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU-aUcBJgPoJRGqzBY-Bz2m4vqcbNdNtKJNVO7-uoYjLw@mail.gmail.com>
X-Gm-Features: AWEUYZm7zUNXfbynKkUkF501_SJvA4QZJWomDWGGkRSnLChv7AsYMrm87FyiXfA
Message-ID: <CAMuHMdU-aUcBJgPoJRGqzBY-Bz2m4vqcbNdNtKJNVO7-uoYjLw@mail.gmail.com>
Subject: Re: [PATCH v2 02/13] auxdisplay: seg-led-gpio: use gpiod_multi_set_value_cansleep
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
X-CRM114-CacheID: sfid-20250207_010449_933269_9453C427 
X-CRM114-Status: GOOD (  16.89  )
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

On Thu, 6 Feb 2025 at 23:48, David Lechner <dlechner@baylibre.com> wrote:
> Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
> gpiod_set_array_value_cansleep().
>
> Acked-by: Andy Shevchenko <andy@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>

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
