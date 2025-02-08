Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EACF1C02198
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 13:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTD6Gw8AovXLfMPdquWzICd7mEA56p1I7437Ew4BbfQ=; b=gcpsl/aOA7YQ9h
	0rWgYVbm3SHZ6tDH0f0lY1ItapkUDPU6lzT16CfhqJvuXxugzDOx3aj1Mqor53lo8GSRqVA1xO9M9
	kyKq0mT7To4OZPDUY6tOeQIwW1VLGtPLNx8Q35c+x31qcrs8iZI+HidKbf43JnPXwLq6wAcvLPxHu
	H7sE0hSYFjwQKMkilQM2fKDngzeB1XGIuD7psx6vBc/57d7jLpsxdtXqEDgQMAnRqeYo3WrMd+jsX
	AKVl1DAEhnUOO1XlmzDXsiMgeY9e7Pn6EzM8EhimJ8HtjL+0Wplfg4gQ6H7rO/zfcQLZuFBJ6YQDR
	xbh580vXOVcSpSLe65iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgkoI-0000000CzVe-2S0p;
	Sat, 08 Feb 2025 13:23:50 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgkmz-0000000CzGJ-1fuy
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 13:22:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 71EEAA41BE0;
	Sat,  8 Feb 2025 13:20:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1978FC4CED6;
	Sat,  8 Feb 2025 13:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739020947;
	bh=1cUfUnnzPkSdrT1BvYm7O95VixubILLavQwSf9m20To=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=QdRDYhwwbY9vABNWN9TC+jkJ1dj+PKkgmoeyjRzSGaTaO4ypPrIP6ADmDo05RMi3j
	 hKejsHUowRJ78SXsYHrAHMXltXUHm0LHZuHOz7gpB5X/DIO0n3gE4KnO/EZhnNl7NL
	 wQ4ojKCuj3Cmq42okjlKXbq4LRTxAIZvXZA+/SyBbZzGPmL26MIEzH8H8UBBrb6yo9
	 b9E/rldcVCBOtIQma+UIw1J+Vihnd29SwWeVS6rMBwWzRru+jsI9igvo85jt1kA4uu
	 bgCenS7ZlUwUEH7j5PGmcZNQ/SY/WuWQpx92ddbvuqljUu41lZbZfl1ZgWgv03TWSR
	 o0BL4CO6gxUCQ==
Date: Sat, 8 Feb 2025 13:22:11 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn
 <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 07/13] iio: amplifiers: hmc425a: use
 gpiod_multi_set_value_cansleep
Message-ID: <20250208132211.794c6f87@jic23-huawei>
In-Reply-To: <20250206-gpio-set-array-helper-v2-7-1c5f048f79c3@baylibre.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
	<20250206-gpio-set-array-helper-v2-7-1c5f048f79c3@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_052229_528100_F81FA430 
X-CRM114-Status: GOOD (  18.77  )
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

On Thu, 06 Feb 2025 16:48:21 -0600
David Lechner <dlechner@baylibre.com> wrote:

> Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
> gpiod_set_array_value_cansleep().
> 
> Passing NULL as the 3rd argument to gpiod_set_array_value_cansleep()
> only needs to be done if the array was constructed manually, which is
> not the case here. This change effectively replaces that argument with
> st->gpios->array_info. The possible side effect of this change is that
> it could make setting the GPIOs more efficient.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
If it goes through the gpio tree
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/iio/amplifiers/hmc425a.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/amplifiers/hmc425a.c b/drivers/iio/amplifiers/hmc425a.c
> index 2ee4c0d70281e24c1c818249b86d89ebe06d4876..d9a359e1388a0f3eb5909bf668ff82102286542b 100644
> --- a/drivers/iio/amplifiers/hmc425a.c
> +++ b/drivers/iio/amplifiers/hmc425a.c
> @@ -161,8 +161,7 @@ static int hmc425a_write(struct iio_dev *indio_dev, u32 value)
>  
>  	values[0] = value;
>  
> -	gpiod_set_array_value_cansleep(st->gpios->ndescs, st->gpios->desc,
> -				       NULL, values);
> +	gpiod_multi_set_value_cansleep(st->gpios, values);
>  	return 0;
>  }
>  
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
