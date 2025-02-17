Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16B7C021AB
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 13:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUyo3AsSjQ3KYbTgWAc3PwhVNqIsUevi5n8BruyZSow=; b=COc3vnfaMV58a1
	AYwQbDiWIdFtR3l+e+Je+GHfiB2i1SDh7GjpmKOT9ljgjd+Lqk2Lo0BwUxkE0IAUzel2jTc5aVvUO
	PBviRGccVaVvm04Iv2o7DCwiTFFg4od7v6LOL2FcKTtmkXzKTdsfAfk8HjhopyWsv+uulzm0cQtG0
	I6WCjZ6XEN+WmP1Fxvapu8Eae7WRRurrLkiDht9o05rSrrDH2ac5mwa9mVf3QgM88vLgLbnS9l82m
	2w1LnzZfWDAqmt2WyHL9f2KhHIOkwY8AzSqLlITxJsoBunTuZEZLscBJzSEOn0sOh1yDXO+hEuRPa
	B+1uNEPjbaqLVFkTK64g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk17y-00000004eQk-2JOy;
	Mon, 17 Feb 2025 13:25:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk11a-00000004cs0-2zYm
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 13:19:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8A8535C3D72;
	Mon, 17 Feb 2025 13:18:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9CA1C4CED1;
	Mon, 17 Feb 2025 13:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739798341;
	bh=vDp+ULcTmetlszpVsMoQh+ubngAgcM3/x1bls2GBlOE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YrhKH2/tVMa0FpWO9g0XO8hxtLgH2+w1OP5sZmMti3kJjl78lgCth7DBm7pW2h98z
	 HbWBNm+qq1WpHwTsvUlAr4+bMCqsSLdulE6yiJIrMIWdoZR2SOF+QcrPL18m8WgP0A
	 N4zFFQX+GkCUy+ojnMRGLmyX+nU0vNhPH0ElHrCE8yi44Ad1pTCoNJnwMGhmqYwqLM
	 aVEj4WrgfH5ILXv+2CrMW+rYZFJd83Ii58SIxKT3HSvrSiLRU0BmtkPwgBz7izJfsV
	 6rP/ppMNzEsRhPAXu0wsSntZua6mcERaf44vE2XBTinKcNShc8pyt8/cMPowZfJD2q
	 tYOuPGLYzqABg==
Date: Mon, 17 Feb 2025 13:18:45 +0000
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
 linux-sound@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v3 07/15] iio: adc: ad7606: use
 gpiod_multi_set_value_cansleep
Message-ID: <20250217131845.17af66a4@jic23-huawei>
In-Reply-To: <20250210-gpio-set-array-helper-v3-7-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
	<20250210-gpio-set-array-helper-v3-7-d6a673674da8@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_051902_842702_C45002DF 
X-CRM114-Status: GOOD (  24.56  )
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

On Mon, 10 Feb 2025 16:33:33 -0600
David Lechner <dlechner@baylibre.com> wrote:

> Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
> gpiod_set_array_value().
> 
> These are not called in an atomic context, so changing to the cansleep
> variant is fine.
> 
> Also drop unnecessary braces while we are at it.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
I've applied this to the IIO tree now but won't push out as anything other than
testing until Bartosz has dropped it. (thanks for doing that btw!)

Due to code movement it ends up being all in ad7606.c

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 1e8b03a518b8..87908cc51e48 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -828,8 +828,7 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
 
        values[0] = val & GENMASK(2, 0);
 
-       gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
-                             st->gpio_os->info, values);
+       gpiod_multi_set_value_cansleep(st->gpio_os, values);
 
        /* AD7616 requires a reset to update value */
        if (st->chip_info->os_req_reset)
@@ -1260,10 +1259,9 @@ static int ad7606b_sw_mode_setup(struct iio_dev *indio_dev)
         * in the device tree, then they need to be set to high,
         * otherwise, they must be hardwired to VDD
         */
-       if (st->gpio_os) {
-               gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
-                                     st->gpio_os->info, os);
-       }
+       if (st->gpio_os)
+               gpiod_multi_set_value_cansleep(st->gpio_os, os);
+
        /* OS of 128 and 256 are available only in software mode */
        st->oversampling_avail = ad7606b_oversampling_avail;
        st->num_os_ratios = ARRAY_SIZE(ad7606b_oversampling_avail);


> ---
>  drivers/iio/adc/ad7606.c     | 3 +--
>  drivers/iio/adc/ad7606_spi.c | 7 +++----
>  2 files changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> index d8e3c7a43678c57470a5118715637a68b39125c1..9a124139924e4a4fbbbd234a8514eb77024442b3 100644
> --- a/drivers/iio/adc/ad7606.c
> +++ b/drivers/iio/adc/ad7606.c
> @@ -818,8 +818,7 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
>  
>  	values[0] = val & GENMASK(2, 0);
>  
> -	gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
> -			      st->gpio_os->info, values);
> +	gpiod_multi_set_value_cansleep(st->gpio_os, values);
>  
>  	/* AD7616 requires a reset to update value */
>  	if (st->chip_info->os_req_reset)
> diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
> index e2c1475257065c98bf8e2512bda921d6d88a3002..091f31edb6604da3a8ec4d2d5328ac6550faa22c 100644
> --- a/drivers/iio/adc/ad7606_spi.c
> +++ b/drivers/iio/adc/ad7606_spi.c
> @@ -296,10 +296,9 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
>  	 * in the device tree, then they need to be set to high,
>  	 * otherwise, they must be hardwired to VDD
>  	 */
> -	if (st->gpio_os) {
> -		gpiod_set_array_value(st->gpio_os->ndescs,
> -				      st->gpio_os->desc, st->gpio_os->info, os);
> -	}
> +	if (st->gpio_os)
> +		gpiod_multi_set_value_cansleep(st->gpio_os, os);
> +
>  	/* OS of 128 and 256 are available only in software mode */
>  	st->oversampling_avail = ad7606B_oversampling_avail;
>  	st->num_os_ratios = ARRAY_SIZE(ad7606B_oversampling_avail);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
