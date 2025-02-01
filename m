Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0179CC0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 16:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvaR4907WEmioxJv23XTW5ZHPb7N8eXWPEKz1ir6e1o=; b=stmxmo15C2nfS5
	+wSU9NKn9/pxSFTMgMXsQP3Ldwm2LbLstZpLtMPoGW0iah0tW0IBBWb3qd8lmLMeb5oACexYtm2X0
	ykq5qqdIRuFy/e0zZaaKbOD75d8la2D+Zk3bmYVwUwqqtPCBtNbMWHPzY5Vpah+mnCcU6/fx3647G
	O6zGxPIBq8dIM3O1EYadQi/zyfEtgK7JrhSjBRgC9xBFGHgudzPekh82KQK3gcEztExn9BnGDiueJ
	kl3USQV7OMO8V9RUzQa3ca/sFAxMDWylLQ1M0Ee80QmGWUXeSt8bs6HqdXOGKtS0QNCTF4OPPaEoy
	VUdPl9M7h3Lf3H/XlgTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teG3d-0000000CqDo-2HLk;
	Sat, 01 Feb 2025 16:09:21 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teG3Z-0000000CqDR-2Odh
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 16:09:19 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3eb8accbde3so2164814b6e.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 08:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738426156; x=1739030956; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6/HWj5hSehOUGeRp7am4uO7k2toUSpAz0X3lYENSi1c=;
        b=aTjBZanCRYw71vo/FN8vnp/Ec1b7c/eNaCZf9F+Vn/H4j4V227Nh3Do5EulT6BcY8F
         YaFKZ8pAsMnNjBQQIWHnhZuqvoR7MzNN03gB9xtGTN/nall8fI0BOaD6TXPwvPA7ZfUE
         cCJr4tK7xPgP7kZ7tie6bOiGxZ+m83dJS54gNe8affqZ2R/9T8CWtpi/LSWIHqm2jTlS
         DE2B1UyU7S8u9r2Jgd0awscW61gnVsnk+UNH20yCnx+r/761glKXDF3qzfBrmyfuhPcz
         tyLGCzdHsQ1Jw1aH87E5UEim79rsg7klLHRVzoxvzz3E2d8/eyLbs2xN0Lo7NFXRJtb/
         NeVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738426156; x=1739030956;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6/HWj5hSehOUGeRp7am4uO7k2toUSpAz0X3lYENSi1c=;
        b=SLphdzFB8zTsPecHwHjnyJInIpa6RH8migqnSMvvCFD2cGoTG/ahSlIZt4fXztV+Oc
         HLk8BQR8AFdAgwC8/zoKllgP2fegQdVwW1cBUC/E/IoDm1NcsQ89z3z7hp9yCdvplVaH
         va8fD0VyOua9cobO1LUVkH3kUbtiM1jbc2/IWqbJ+3t6BT4m3MqMTQHYUYeg2ncNYwPi
         a7/DXsZ+hdKPbmEpZ2eNXNFZA2b8ARs3MljVAXbQFClMrr6Dx/YdIcPFqAT79RxVu4EO
         U6852lmjJ5ts1R0S5x4syT0k4kp3lT8Vy324eZGL0Ochh06JOYZo0FJEao6IeA7O+ZRK
         /Zvg==
X-Forwarded-Encrypted: i=1; AJvYcCW5UTPurF+vWoKj9fEHijgyuMk31gAIMKUOe6uU7GMxW/3+q3frbbRkXew+0UXYjdveoiFNF/jwzPY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxijBdSdIF+KKP5pKRnBIO5Q/L8ILfu+9KqOmyDI7MOa5ONle6L
	MS1Y3ZksGBL9PaPmLpCHMxqqf8IvbotmpM/K22YzTb+uSuA1ZK5I4TvIXhC76xk=
X-Gm-Gg: ASbGnctPxddFMAnn/o5rFyAjswfa2MZGCBojeAB5gJjxSTnLpDgsDihmo9iozdZ/Kbt
	u0Xjsv99UyTQO/+4K4mqCBN3UE4/FXoQqSsHSFx9BIFX5SxDfVfGCpGGG215EXl599rtY2nvEIe
	jdZJkWWnfFy8p7Ae7XQcbWIT3hB0gGUfFj0qLr7pD6NltUI6JgwfGnDMM497v53EgDNb70iZL1D
	0k9JkpGhitYW/1NqCo6MT8f/5046OZfOI+dv1reXpstuGRpXskucduYYFulNP/0ogfPNqjK2oPO
	7bNzwoUtfXPkWi4tBDQLoNXNFR1TSRy4ru6iO4Bi8W7pwOAGBA0d
X-Google-Smtp-Source: AGHT+IHlRVUNM84414C8bMX22/8bNBRk4Wz6BZnDGgM7+x56FCD0VuxaQe5kTozn9TxT7X99cEoMmA==
X-Received: by 2002:a05:6808:3c85:b0:3f1:b124:59ae with SMTP id 5614622812f47-3f33c41c93bmr5106514b6e.13.1738426156387;
        Sat, 01 Feb 2025 08:09:16 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f333523fd6sm1405864b6e.3.2025.02.01.08.09.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 08:09:15 -0800 (PST)
Message-ID: <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com>
Date: Sat, 1 Feb 2025 10:09:12 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_080917_886052_4142438F 
X-CRM114-Status: GOOD (  20.77  )
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

On 2/1/25 4:36 AM, Bartosz Golaszewski wrote:
> On Fri, 31 Jan 2025 21:24:40 +0100, David Lechner <dlechner@baylibre.com> said:
>> This series was inspired by some minor annoyance I have experienced a
>> few times in recent reviews.
>>
>> Calling gpiod_set_array_value_cansleep() can be quite verbose due to
>> having so many parameters. In most cases, we already have a struct
>> gpio_descs that contains the first 3 parameters so we end up with 3 (or
>> often even 6) pointer indirections at each call site. Also, people have
>> a tendency to want to hard-code the first argument instead of using
>> struct gpio_descs.ndescs, often without checking that ndescs >= the
>> hard-coded value.
>>
>> So I'm proposing that we add a gpiods_set_array_value_cansleep()
>> function that is a wrapper around gpiod_set_array_value_cansleep()
>> that has struct gpio_descs as the first parameter to make it a bit
>> easier to read the code and avoid the hard-coding temptation.
>>
>> I've just done gpiods_set_array_value_cansleep() for now since there
>> were over 10 callers of this one. There aren't as many callers of
>> the get and atomic variants, but we can add those too if this seems
>> like a useful thing to do.
>>
>> ---
>> David Lechner (13):
>>       gpiolib: add gpiods_set_array_value_cansleep()
>>       auxdisplay: seg-led-gpio: use gpiods_set_array_value_cansleep
>>       bus: ts-nbus: validate ts,data-gpios array size
>>       bus: ts-nbus: use gpiods_set_array_value_cansleep
>>       gpio: max3191x: use gpiods_set_array_value_cansleep
>>       iio: adc: ad7606: use gpiods_set_array_value_cansleep
>>       iio: amplifiers: hmc425a: use gpiods_set_array_value_cansleep
>>       iio: resolver: ad2s1210: use gpiods_set_array_value_cansleep
>>       mmc: pwrseq_simple: use gpiods_set_array_value_cansleep
>>       mux: gpio: use gpiods_set_array_value_cansleep
>>       net: mdio: mux-gpio: use gpiods_set_array_value_cansleep
>>       phy: mapphone-mdm6600: use gpiods_set_array_value_cansleep
>>       ASoC: adau1701: use gpiods_set_array_value_cansleep
>>
>>  drivers/auxdisplay/seg-led-gpio.c           |  3 +--
>>  drivers/bus/ts-nbus.c                       | 10 ++++++----
>>  drivers/gpio/gpio-max3191x.c                | 18 +++++++-----------
>>  drivers/iio/adc/ad7606.c                    |  3 +--
>>  drivers/iio/adc/ad7606_spi.c                |  3 +--
>>  drivers/iio/amplifiers/hmc425a.c            |  3 +--
>>  drivers/iio/resolver/ad2s1210.c             |  8 ++------
>>  drivers/mmc/core/pwrseq_simple.c            |  3 +--
>>  drivers/mux/gpio.c                          |  4 +---
>>  drivers/net/mdio/mdio-mux-gpio.c            |  3 +--
>>  drivers/phy/motorola/phy-mapphone-mdm6600.c |  4 +---
>>  include/linux/gpio/consumer.h               |  7 +++++++
>>  sound/soc/codecs/adau1701.c                 |  4 +---
>>  13 files changed, 31 insertions(+), 42 deletions(-)
>> ---
>> base-commit: df4b2bbff898227db0c14264ac7edd634e79f755
>> change-id: 20250131-gpio-set-array-helper-bd4a328370d3
>>
>> Best regards,
>> --
>> David Lechner <dlechner@baylibre.com>
>>
>>
> 
> This looks good to me except for one thing: the function prefix. I would
> really appreciate it if we could stay within the existing gpiod_ namespace and
> not add a new one in the form of gpiods_.
> 
> Maybe: gpiod_multiple_set_ or gpiod_collected_set...?
> 
> Bartosz

I was waiting for someone to complain about the naming. ;-)

I was going for as short as possible, but OK, the most obvious prefix to me
would be `gpio_descs_...` (to match the first parameter). Any objections to
that?


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
