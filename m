Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E9AC021B2
	for <linux-phy@archiver.kernel.org>; Sat, 22 Feb 2025 11:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqChNOQSpXmm2KKpFECAXDJDZs0L1fOQm+PYOPP3NN8=; b=oZpyFTrtDJQ8wO
	Xpjl9XswiuIFgZWJWVJdVwv5ewG0oYi/KKf0uJW/Jb9TOwpzh7VIu3gkiR4HZfYZclIZho99AFKHC
	WqF88VS3FIbkGR6jcVjxMKSBRBN3g0VJu91t72rOaNKj5M9mJMJYSAs1N8aImgCoDiUyxQC79VbSS
	h46qcUKmIjlQ1Kv9QDPib6O2JcF04SPHxW16Kbn37Wx+aeoIfA3WaYWxt27J9ePbHGiUohzjN5fQJ
	x2zS18WCTNMLzsIXkzBkAF+fMxTcY0lZtZ4xdDRWkmOeU5XUNy5P91dmdNrp6I8+rQlQEGAFyMGdE
	6qDJapch2ltFu8rfXYzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlnrd-00000007vgE-030K;
	Sat, 22 Feb 2025 11:40:09 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlnqb-00000007vWN-1PCw
	for linux-phy@lists.infradead.org;
	Sat, 22 Feb 2025 11:39:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DDA5C61148;
	Sat, 22 Feb 2025 11:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 747F4C4CEE6;
	Sat, 22 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740224344;
	bh=hGYACRH4NSFXISS0yNXyHQkm5sHgl63iunTToFzBQes=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bV+Inc/jpruzlj+Oqx3JK5QXBD3gH4CK+1Asp1nPagpbRbnTZElz2BbHfuxl9ycsd
	 He2f2g7PIvdpfqtpmUJJQtqTBz2PQHI27JyjPd0dnbxW3wQrnohQnM9/TPInqrk6W8
	 7fIm4yGfNTGn9ACtFweHqgS2qHxrdnX+N7begLyCO0AQc0NpsMEbYSOwtZO+V1E/Pg
	 Vu/Mt7EpH9zVnsLzWAXJ2+4+SCjhpzVbu7bHySbteeA6clGk5Gu8OiwhmvWrEOWX3T
	 N+zW/Gg5DQKxoNhCFgQCKhbW9g7q7o9Qa27BfW7nRZxEuu3xqCH0D7bgq7BvBt+2Os
	 jNEK7FGOhteXg==
Date: Sat, 22 Feb 2025 11:38:48 +0000
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
Subject: Re: [PATCH v3 10/15] iio: resolver: ad2s1210: use bitmap_write
Message-ID: <20250222113848.75baa883@jic23-huawei>
In-Reply-To: <4052fd7b-dd8c-4a5a-8f82-dd515de14d20@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
	<20250210-gpio-set-array-helper-v3-10-d6a673674da8@baylibre.com>
	<4052fd7b-dd8c-4a5a-8f82-dd515de14d20@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Thu, 20 Feb 2025 14:54:53 -0600
David Lechner <dlechner@baylibre.com> wrote:

> On 2/10/25 4:33 PM, David Lechner wrote:
> > Replace bitmap array access with bitmap_write.
> > 
> > Accessing the bitmap array directly is not recommended and now there is
> > a helper function that can be used.
> > 
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > ---
> >  drivers/iio/resolver/ad2s1210.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
> > index 7f18df790157f1e411fb70de193a49f0677c999f..04879e6d538bce664469c5f6759d8b1cedea16e9 100644
> > --- a/drivers/iio/resolver/ad2s1210.c
> > +++ b/drivers/iio/resolver/ad2s1210.c
> > @@ -46,6 +46,7 @@
> >   */
> >  
> >  #include <linux/bitfield.h>
> > +#include <linux/bitmap.h>
> >  #include <linux/bits.h>
> >  #include <linux/cleanup.h>
> >  #include <linux/clk.h>
> > @@ -180,7 +181,7 @@ static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
> >  	if (!gpios)
> >  		return mode == st->fixed_mode ? 0 : -EOPNOTSUPP;
> >  
> > -	bitmap[0] = mode;
> > +	bitmap_write(bitmap, mode, 0, 2);
> >  
> >  	return gpiod_multi_set_value_cansleep(gpios, bitmap);
> >  }
> > @@ -1470,7 +1471,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
> >  			return dev_err_probe(dev, -EINVAL,
> >  				      "requires exactly 2 resolution-gpios\n");
> >  
> > -		bitmap[0] = st->resolution;
> > +		bitmap_write(bitmap, st->resolution, 0, 2);
> >  
> >  		ret = gpiod_multi_set_value_cansleep(resolution_gpios, bitmap);
> >  		if (ret < 0)
> >   
> 
> There is actually a bug here pointed out in a similar patch. bitmap_write()
> only modifies the bitmap, so this introduces an unintialized use bug. [1]
> Here, we only use the bits that we set, so runtime behavior would not actually
> be buggy but still best to fully initialize the memory.
> 
> I'm a bit surprised that my local compiler and iio/testing both didn't catch that
> since GCC 14 caught it in the other driver.
> 
> [1]: https://lore.kernel.org/linux-gpio/20250217132152.29d86d6c@jic23-huawei/T/#m3163d2c5db5b7376504d8ad6f23716f1119de761
> 
> The fix is simple, we can zero-initialize the bitmap.

Please send this as a fix patch on top as I'd rather not unwind my tree
for just this and the patch is already pushed out on what is mostly a non
rebasing branch.

> 
> diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
> index 04879e6d538b..ab860cedecd1 100644
> --- a/drivers/iio/resolver/ad2s1210.c
> +++ b/drivers/iio/resolver/ad2s1210.c
> @@ -176,7 +176,7 @@ struct ad2s1210_state {
>  static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
>  {
>  	struct gpio_descs *gpios = st->mode_gpios;
> -	DECLARE_BITMAP(bitmap, 2);
> +	DECLARE_BITMAP(bitmap, 2) = { };
>  
>  	if (!gpios)
>  		return mode == st->fixed_mode ? 0 : -EOPNOTSUPP;
> @@ -1427,7 +1427,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
>  	struct device *dev = &st->sdev->dev;
>  	struct gpio_descs *resolution_gpios;
>  	struct gpio_desc *reset_gpio;
> -	DECLARE_BITMAP(bitmap, 2);
> +	DECLARE_BITMAP(bitmap, 2) = { };
>  	int ret;
>  
>  	/* should not be sampling on startup */
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
