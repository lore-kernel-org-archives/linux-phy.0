Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 906E7C02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 17:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDxNO1Ee97u9xmWnJ8wJP+GMZHASvcDfzRi8IZ7nwHM=; b=k4A3XvdjqC02Ad
	uo375YtJjVBNtmDJSYo422vTimtfyZL1pLIC/tsYPOcIq4lX0tSzODHkkx2VSMQIz9eZcetErT2N+
	lEmbaLilNrClCewu1WW0ntsWCJaL0vqoDQ/ZS3QUxNjKSjZQOJZBBePpm5ULHngSmXS4IDuXdcJGw
	Q1VjN727I1dAlQ7+wXBkzPPtsV4OLMzl18YSid3Qqkin5wOf9Ff0bTLMxHY1iK2kyHnS3iHSodbB9
	N093mgr/hYJx/TdX6JaES/r9x7a3g5BkHMULV70prWsm+Wy9szdm6GBUB7IfI+LMz2pPJH+EUx5Dm
	QC2OCiQqrfCulKAUusjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgRpg-0000000AQYq-1LsQ;
	Fri, 07 Feb 2025 17:08:00 +0000
Received: from mail-vk1-f177.google.com ([209.85.221.177])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgRTO-0000000ALGG-1Nzy
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 16:44:59 +0000
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-51eb1823a8eso556656e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 08:44:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738946695; x=1739551495;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yCWtJ2W7sBii9exDfBQy+ICa40xLBzxTz8+SCx213a0=;
        b=NQGhyeYOgjJtFz/IkGsJmjKlxXA2SLJ+v3FojDnLa5Vqc95eOgYNw0gJNPuSGjbV4P
         +b6i1f9QZSRXlSjhWYtJ/IFFocQldFb1mdVBAJ/3QpTly+sh62f66a8ui7CY8zjnBQyo
         jf0Mds7VHX7Gg7TkpAX5hfbgu/5vZXZES47uijllWRiDQ7FOnsFtJnXIclG8PUYz+Y24
         1WIS/QECXFTVP5RHomU4kT/GDQtNh9vaGZsqKCjuEsSgd+1rGqadxGAq8ml6hm17hSnW
         5jNmczS5Aem4rAaciJNIHZ9nJSbd/SUR6T/mFNEFha3HuKiveuzUGi9OiqSqrHIKnacm
         Y+OA==
X-Forwarded-Encrypted: i=1; AJvYcCWPdXlmk7kPaleUzRG2dBCzdaE4V1VviLeP0DbmHx+pyrKOx43fdnQih3YPBz4XrJpXZC3vrwJtej4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHuXx8eQsknLqAbS1cRwMNhMrozgjK3zxeFCTFIDtFgDrvWu9i
	8s0bZp5ZbKJZ7y/SziqYhzlyAZ/3tbaAX8lF8qMh3pGJJ+SYkkVbbnfdS9RR
X-Gm-Gg: ASbGncsyoLlLlB0GuuFsmyDmL1PiXYKCROgriwhvbFnyC4mno53pyRgRpMzPHc3CB6g
	ajteiHbLv6KwLH+R8LkPmIei4TZ1CwVd3MqYi4Rb2K4NmZBNYht7dv0Da08XKe335+j0pwyTWU/
	kmj6WdNv/EFCJrdnCmcccveXHISuZqmZyUmj0g0BPuLMUKHp1LgFP4BMrme5e/H9tFGRZ5NQCTt
	0qnOQrBWKklIF0tjsHlbdIpuNNooMI2Sifh/4GE1l9OsOX+iPvjyqI1Yy6chLrmJle0LoZljx9r
	DMKoOm63BT0xG9WkA4GuVGPZwmWfld5lyoOCE5taahgN2v0hqvLiJg==
X-Google-Smtp-Source: AGHT+IGaeOB9r+nV910S7QE6neJO9BA+a9mZ//39UavZM8AWStVwKvGfNYFeaGoNRh1AqoUVOB9sBw==
X-Received: by 2002:a05:6122:3c85:b0:518:7777:a61e with SMTP id 71dfb90a1353d-51f2e1279f2mr3716458e0c.5.1738946695408;
        Fri, 07 Feb 2025 08:44:55 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51f22796c51sm556698e0c.22.2025.02.07.08.44.54
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 08:44:54 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-8641c7574a5so593905241.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 08:44:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX48cTNWN6d2k79B+Hv+02JXnOdE9PiGG5Si3b6hL5Ar6YNm50OT6P5vi+vO5b+tiGQkjxo+sagxwU=@lists.infradead.org
X-Received: by 2002:a05:6122:794:b0:518:859e:87ae with SMTP id
 71dfb90a1353d-51f2e1ed315mr3362597e0c.7.1738946694014; Fri, 07 Feb 2025
 08:44:54 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <20250206-gpio-set-array-helper-v2-1-1c5f048f79c3@baylibre.com>
 <CAMuHMdU5tt5_t2SfYO3OUsHenu_0PhpKeLHktNdCx-W6zCEymw@mail.gmail.com> <74ec33db-6721-4b86-86a6-e18b0a01fc47@baylibre.com>
In-Reply-To: <74ec33db-6721-4b86-86a6-e18b0a01fc47@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Feb 2025 17:44:41 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX0Kp_Rj5iQODW3omEYimE+taf+cgbEiHqWo3=fG3Am0Q@mail.gmail.com>
X-Gm-Features: AWEUYZn5qJOQHPLw2LRF15YUSzvjDVeuWxyBTUf7OD7UgB93Hq8YufkWPyHtZXA
Message-ID: <CAMuHMdX0Kp_Rj5iQODW3omEYimE+taf+cgbEiHqWo3=fG3Am0Q@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250207_084458_368614_276EABC2 
X-CRM114-Status: GOOD (  32.73  )
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

On Fri, 7 Feb 2025 at 17:29, David Lechner <dlechner@baylibre.com> wrote:
> On 2/7/25 3:10 AM, Geert Uytterhoeven wrote:
> > On Thu, 6 Feb 2025 at 23:48, David Lechner <dlechner@baylibre.com> wrote:
> >> Add a new gpiod_multi_set_value_cansleep() helper function with fewer
> >> parameters than gpiod_set_array_value_cansleep().
> >>
> >> Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
> >> cases, the first arguments all come from the same struct gpio_descs, so
> >> having a separate function where we can just pass that cuts down on the
> >> boilerplate.
> >>
> >> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >> Signed-off-by: David Lechner <dlechner@baylibre.com>
> >
> > Thanks for your patch!
> >
> >> --- a/include/linux/gpio/consumer.h
> >> +++ b/include/linux/gpio/consumer.h
> >> @@ -655,4 +655,11 @@ static inline void gpiod_unexport(struct gpio_desc *desc)
> >>
> >>  #endif /* CONFIG_GPIOLIB && CONFIG_GPIO_SYSFS */
> >>
> >> +static inline int gpiod_multi_set_value_cansleep(struct gpio_descs *descs,
> >> +                                                unsigned long *value_bitmap)
> >> +{
> >> +       return gpiod_set_array_value_cansleep(descs->ndescs, descs->desc,
> >> +                                             descs->info, value_bitmap);
> >
> > I am wondering whether this needs a check for !IS_ERR_OR_NULL(descs),
> > to handle the !CONFIG_GPIOLIB and gpiod_get_array_optional() cases?
>
> I don't think it is strictly needed, but could be convenient for future use
> cases. If we add it, should it be:
>
>         if (IS_ERR_OR_NULL(descs))
>                 return PTR_ERR(descs);

return PTR_ERR_OR_ZERO(descs);

(the compiler should optimize away checks common to IS_ERR_OR_NULL()
 and PTR_ERR_OR_ZERO()).

> or:
>
>         if (!descs)
>                 return -EINVAL;
>
>         if (IS_ERR(descs))
>                 return PTR_ERR(descs);
>
> ?

The former.

> For comparison, gpiod_set_array_value_cansleep() will return -EINVAL if the
> first argument is NULL.

That function cannot take an argument returned by a *_optional() call,
if I'm not mistaken.

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
