Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE83C021A0
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 13:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOBOXUkppy3hThnVDY6p9j/lEtmtXA5puJHimZtYhJI=; b=S0+wXfLA3yOKBa
	Ehf1PmMM/oliZHklts1MZ7wsgvLOwRYp67kfMKkTf3E+X578pWQvkzhObQgOK3FBs5Wir3Y6uh6xA
	ZPOaNpAejuFL6uCpFh4ZOygqzM9pzJVVSJVVBXzC3NJ1Myw0xmiKBZF3HWxBldMExBFV6PbFmRctF
	ieNIOsjrGzN/UPr66jj8P/qWpruL6TgXWFAj3BYO0P3d/AZgub9v/hw+yEv0lVh1SeeKvOB2cMINQ
	qeOtCe9m5ZOJb4zA0gf5gzxmggZ/hxBxg9TS6IyGNLKZy7kOazk7U2q4d5O7hwgMHEEBL1Gj+trjy
	I/fuV0o2bkPp0/7O+EXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgkoI-0000000CzVm-3Xpx;
	Sat, 08 Feb 2025 13:23:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgknN-0000000CzKs-1irl
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 13:22:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 306B85C10F3;
	Sat,  8 Feb 2025 13:22:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6D02C4CED6;
	Sat,  8 Feb 2025 13:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739020972;
	bh=ojenjl2TOOXMH1n1g02fuLQBKwZVi3ZrnouzCMKji6k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YooG0lsDGwowoGFiTayI1bEM7oj2dmbC7j957GRinvghGX+R2Wwb6D5opUyRhER7f
	 Sp1TVi2PgmEA6n7eU8CEhSY+DW9Q7a3HdWvIFU81wto1N0YXKmTgV7Z4uYVXFfbTYK
	 7lC70ybLWbHTSVy/joIdF9yDccHtjG19z5Qzg3vJUJVeexBppd6F3FXtdl2WqGhXcU
	 5WIcdPrrGSgzWZ8C5WUYl5/fp34wmWW1WWePhPpHRo+3YbHI7Jvr9V8t7FCwQ1rwH0
	 yO0EPPME5K6MST3m3/3Bz4SRiVutNdeFZr/iv67e2R+fbzkGsevTSGtykYR96a/s37
	 GrN4Dz90GtdRg==
Date: Sat, 8 Feb 2025 13:22:32 +0000
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
Subject: Re: [PATCH v2 08/13] iio: resolver: ad2s1210: use
 gpiod_multi_set_value_cansleep
Message-ID: <20250208132232.47b848e9@jic23-huawei>
In-Reply-To: <20250206-gpio-set-array-helper-v2-8-1c5f048f79c3@baylibre.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
	<20250206-gpio-set-array-helper-v2-8-1c5f048f79c3@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_052253_537914_B5D860AE 
X-CRM114-Status: GOOD (  17.74  )
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

On Thu, 06 Feb 2025 16:48:22 -0600
David Lechner <dlechner@baylibre.com> wrote:

> Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
> gpiod_set_array_value().
> 
> These are not called in an atomic context, so changing to the cansleep
> variant is fine.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
If this goes through GPIO
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/iio/resolver/ad2s1210.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
> index b681129a99b6cf399668bf01a1f5a15fbc4f95b8..7f18df790157f1e411fb70de193a49f0677c999f 100644
> --- a/drivers/iio/resolver/ad2s1210.c
> +++ b/drivers/iio/resolver/ad2s1210.c
> @@ -182,8 +182,7 @@ static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
>  
>  	bitmap[0] = mode;
>  
> -	return gpiod_set_array_value(gpios->ndescs, gpios->desc, gpios->info,
> -				     bitmap);
> +	return gpiod_multi_set_value_cansleep(gpios, bitmap);
>  }
>  
>  /*
> @@ -1473,10 +1472,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
>  
>  		bitmap[0] = st->resolution;
>  
> -		ret = gpiod_set_array_value(resolution_gpios->ndescs,
> -					    resolution_gpios->desc,
> -					    resolution_gpios->info,
> -					    bitmap);
> +		ret = gpiod_multi_set_value_cansleep(resolution_gpios, bitmap);
>  		if (ret < 0)
>  			return dev_err_probe(dev, ret,
>  					     "failed to set resolution gpios\n");
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
