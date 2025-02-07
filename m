Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 197A0C02192
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 09:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiWr4if14BteIcmSyF+HFSrtPQZgvDSxk3JTn56Yb5c=; b=Il95Td6MnmifNn
	atJCr3/0vitT5fXMlmX0nsbX2uKegsoasONG+GxJF12EEA6bNoqueaumZAUdsW/eHDKDEtJwGvve5
	YfYbSuU7G7zBNwNKBg7UR3BX0Y1PBNiY/zMZ+TRKlUpF7KBSUshcw7k1HuWji2+ckO/pWwgTRpOiH
	Tn+dPhlHxV+3Z9fUJcJRrWqpvBSOJwrBTCrtd/R3TIzYQSeZGDXa3mwP63dDTqmIgUszyeMzD+C6L
	EPRRXfq6XIcJ0TjKdBAjO97JMkdv6Mj8fj/O2lxx5GEsbb07cpNnBUm+66YkU2slsVn2VWO9TmhpH
	7ZdY8obgFsoztAGogo8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgKTK-00000008ypd-3OcE;
	Fri, 07 Feb 2025 09:16:26 +0000
Received: from mail-vk1-f178.google.com ([209.85.221.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgKNu-00000008xaw-38FQ
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 09:10:51 +0000
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-51eb18130f9so496831e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 01:10:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738919447; x=1739524247;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4kJhOPtCECyINUZkXDqpO81cp9u410vUEkFnMeAGRE=;
        b=MOm2BdmBAmrW/h75VS0ZAicj16uiFCRZ/SlDYnTOYGyVVF0M63Y1TqAntE66ombao2
         rfq9YdFtHQg8Q1CFNoDXedTRXzeD5bJkyYNMx6PmT5Yt1HRFJ+CZit445WaQgpZidAto
         7J6eEWOcKGO+vPpGyj19hmwkNig1tL8lOUrNwkSpvbVr93ivfnSZWfE/Pjtnk/xO2dhU
         nqvsmZ5J6yCfftCpp/BamqMDSr6lvTTLcHOupxxIozShHPrQvbCwalpSkazmuRBoQAde
         qVceVWCqycUwE9Am1trjAk9p13IuY2X5vVO3rAAYs4IEegUDRivcm40qhaFeQmJNT/2r
         eNsg==
X-Forwarded-Encrypted: i=1; AJvYcCVdsp136tL3H47A2eDWih56WP0sc6PUclvNgdZ7Iau560wUkZP/GQ051/H2O9L0Tuur+cpo5AyemFs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYnTcqBIxB9nAZWK2nb3yQb+yQEg7OkYFV1rGfVZKMqsfg4wA8
	bODMnOS8MHCOJO0K4T1q7KQm1UgWfifDDb9YKYGkXPa/0B5AeNd/uun4y6Vl
X-Gm-Gg: ASbGnct4x4S3oMZYIVz2Bnycl9soP/7W9g58bCfMzGJvPX9HVlRMRQp5QxgZqqdCWne
	0u4E+pNbBn1FAF6OQyEB1epCpRMlSMA+MZPIyExDvZDh7ibggBWTzKO+eD2UwsRnjMLZ288zswK
	Jg2cUbKyil+xEhDmjj/Wkl/be0kXbcLlqhYegaiuk7KvaRGR8X95LQz+tRoGrXY6oX3fzIzySTT
	hoEV0tOGWI3LPBjxG5zxvIug5p/xwTtLOpyL6sSqf2S+ZZUe7DbRjxbOq1vUOXrCzvVg7+px28Y
	4yMIdsWlh7aJVDuOk8OEz18q8zb48gar4lp56nIBO/ZDxUm75YNyEw==
X-Google-Smtp-Source: AGHT+IEaUnPAxWCKtVAmhxN2We5DmjHRHeG5U3JBw0kLWwW4Thnm3pwCVt9n97UdM2j0FISCqWiXIQ==
X-Received: by 2002:a05:6122:c99:b0:51c:aa1a:2b5b with SMTP id 71dfb90a1353d-51f2e0da0ecmr1430369e0c.4.1738919446987;
        Fri, 07 Feb 2025 01:10:46 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51f2296a95asm444553e0c.48.2025.02.07.01.10.45
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 01:10:45 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-4ba74d1d4a9so602287137.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 01:10:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXjnzXohO3MEGpvh/N7XDpqBNpFA8+UTS0iTgiioTGdfs515bsAL1OKsaJ/D+byuTmwfgLQUAqlAQw=@lists.infradead.org
X-Received: by 2002:a05:6102:41a0:b0:4b2:5d63:ff72 with SMTP id
 ada2fe7eead31-4ba85e7d7e5mr1354232137.13.1738919445022; Fri, 07 Feb 2025
 01:10:45 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com> <20250206-gpio-set-array-helper-v2-1-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-1-1c5f048f79c3@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Feb 2025 10:10:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU5tt5_t2SfYO3OUsHenu_0PhpKeLHktNdCx-W6zCEymw@mail.gmail.com>
X-Gm-Features: AWEUYZmj9DYQSOmgGzGXyOkOE57CQ_wkxVouudAJc-ubVAUCMSn97Ipr2XIc-m4
Message-ID: <CAMuHMdU5tt5_t2SfYO3OUsHenu_0PhpKeLHktNdCx-W6zCEymw@mail.gmail.com>
Subject: Re: [PATCH v2 01/13] gpiolib: add gpiod_multi_set_value_cansleep()
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
X-CRM114-CacheID: sfid-20250207_011050_790692_BFEAF4E8 
X-CRM114-Status: GOOD (  24.51  )
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

Hi David,

On Thu, 6 Feb 2025 at 23:48, David Lechner <dlechner@baylibre.com> wrote:
> Add a new gpiod_multi_set_value_cansleep() helper function with fewer
> parameters than gpiod_set_array_value_cansleep().
>
> Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
> cases, the first arguments all come from the same struct gpio_descs, so
> having a separate function where we can just pass that cuts down on the
> boilerplate.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Thanks for your patch!

> --- a/include/linux/gpio/consumer.h
> +++ b/include/linux/gpio/consumer.h
> @@ -655,4 +655,11 @@ static inline void gpiod_unexport(struct gpio_desc *desc)
>
>  #endif /* CONFIG_GPIOLIB && CONFIG_GPIO_SYSFS */
>
> +static inline int gpiod_multi_set_value_cansleep(struct gpio_descs *descs,
> +                                                unsigned long *value_bitmap)
> +{
> +       return gpiod_set_array_value_cansleep(descs->ndescs, descs->desc,
> +                                             descs->info, value_bitmap);

I am wondering whether this needs a check for !IS_ERR_OR_NULL(descs),
to handle the !CONFIG_GPIOLIB and gpiod_get_array_optional() cases?

Slightly related: shouldn't gpiod_put_array() (both the implementation
and the !CONFIG_GPIOLIB dummy) allow the caller to pass NULL, to
streamline the gpiod_get_array_optional() case?

> +}
> +
>  #endif

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
