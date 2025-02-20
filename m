Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C1B0C021B2
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 20:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnxSmlXwVYvP/AZmgMTrLcUCeVXWdXgj13WUag5rbIc=; b=PcG08lGtdl29Ws
	8hCBQ5NGTaIUL4CeWeV/N7V/T68AmJZaYsbuYzgcrDKE56N7XsRJECtN3R3mj+Z3rgAzQvpkruJ7T
	ui1eSdizI44L9i3lPUGmPK0SdJBQdy/Lgm0XBRzIdOYMYySnKGJ7AcBzrovnUPQ/9O5+6KckjebMs
	6HhEe+EtdX1rwUb/aUBOy55d0gfXN6Uh4oI2wyfKb+YzZSGMRBeXoFzc/ua0OfLEO+Hnh76JgperF
	//jnTcmAaGiSo4khwdw7f5t1qZeqaMlfnfkhxqIcCOa+FkVhH5/+A17FGsSciJIPcWfeFUzLe9KCe
	MnNY1iLEEf5LsQ9z3J5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDZU-00000002rkm-0Uvv;
	Thu, 20 Feb 2025 20:55:00 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDZQ-00000002rjs-2Qtz
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 20:54:58 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7272dae0604so720982a34.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 12:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740084895; x=1740689695; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lmfqNhipvTzpaPHouDLPUPBFfenRqD8FhVYBJFNu3b0=;
        b=sZMDATr6nLNXH7W+5TG/hw8PE0G+MHehXXMA7yidZnBbe65tS1WBlrXs3QxBBep7K6
         aNKcsizsPhICCT5khrG3x2F4lyQVpP1bUBFfCWa0PHTBw3b2VROKYGnmb1VzwAb68yfe
         df1QqzFBVLS2U+NvD93pBJX47rAOGf5m90YZb/0SpRAToXtPZ5mJEj7f4Z5E+VidjzKq
         aUOY3tU0DFpaqjQldSE7MydP+s2CFrmhTKrzPMdFJGCNXcBuZQPGqHv91ivDgNY5vBIb
         UEyqergHFd/c7ka3A89pLIRbLBkNwT27P5PGBPIMV+KJOEESO7TPuwyYjktwv9nxZhJ3
         ZqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740084895; x=1740689695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lmfqNhipvTzpaPHouDLPUPBFfenRqD8FhVYBJFNu3b0=;
        b=TTO9BhhwaiyuScIa4FCk2DyV4hjwhF5Lzwm08aqDZXLk8A9vxeVZ2NJxQtnnjQnSWA
         DFNgd3BMMBfMnEtFogOVuSlZ+B8tbvr0sush6phU++wwLDD7LGILnxo87exJqlyVqj1E
         nJeSJS408IEpiESpBZ+fsCooxfkK13Mg6FGugz7nYeP0wmJjTNhyJX8gR4b5Fco5jrXj
         Cg5Aed9gAPlQ+u16L+6/EDvp1Sf8SRl5om0mcV6gAAZMRN61K8KeWb1mowSwoe5BIyQv
         Hf4eS2hvOdGVY89DjF6ugJ1rSFNZuSgBW/V76bPI6346QdENsFOHR7XRb6ccbIFPyCPU
         FwoA==
X-Forwarded-Encrypted: i=1; AJvYcCWzoupHePWqXwnMQMLPTTkm5CjDs7tPxuDUf0jbI/Vfblh9+JJO7dv4F9lvO0jqoALrfvqJ7Fmc8Mo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCzhdCGKJ1P9FABqp4QoqJU9OzHSaC4SrMuyB0Lez1c7txySU/
	7z89sb95mmUQS85PBJ9uJIsdw+0JfseJmMT1fYj0hRtvKmGH5C2TUkPUoOa+KQ4=
X-Gm-Gg: ASbGnctDuTED5y7F42kKvFdutbhv47HKuViIKBu5Zk7V/sCngWFRJcEZqpzpYr1f0Yr
	/e5o/qH6WYomZiJexufs0R98SDexGtAWuQ0AOEGPs9z+8bXfHWMdl1LFSay7uESK/v5JK4nOpHt
	KPqlyZBCqn0oQrtD2XpOjIoKozI+Gswa2j2P2y7PJ9Ouuf4FCSMsmUE3z24RlfYiwFfi2oJCGsD
	akVZXFpLfwp/hQ45mDfvecIVElBuWiUURIoGsZff1XyZ3j5qj3zDKN92nZe8RkSqXu4sXyGE2Ex
	fEnAryhYAVCy7UiqjWJpzccv8Z9RnONYJaSrOi6N9AODORSDH1fx
X-Google-Smtp-Source: AGHT+IF3mi4w+ioATe/neRX31NhU+G5fVnUO+U3AY+NTTkR/32/joj3J25iUisGaUZnzV5dytcgeCw==
X-Received: by 2002:a05:6830:3817:b0:727:4439:2079 with SMTP id 46e09a7af769-7274c563e6dmr324973a34.17.1740084895336;
        Thu, 20 Feb 2025 12:54:55 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7272a3751e0sm2223640a34.58.2025.02.20.12.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 12:54:54 -0800 (PST)
Message-ID: <4052fd7b-dd8c-4a5a-8f82-dd515de14d20@baylibre.com>
Date: Thu, 20 Feb 2025 14:54:53 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/15] iio: resolver: ad2s1210: use bitmap_write
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-10-d6a673674da8@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250210-gpio-set-array-helper-v3-10-d6a673674da8@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_125456_793135_8E3B4742 
X-CRM114-Status: GOOD (  22.95  )
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

On 2/10/25 4:33 PM, David Lechner wrote:
> Replace bitmap array access with bitmap_write.
> 
> Accessing the bitmap array directly is not recommended and now there is
> a helper function that can be used.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>  drivers/iio/resolver/ad2s1210.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
> index 7f18df790157f1e411fb70de193a49f0677c999f..04879e6d538bce664469c5f6759d8b1cedea16e9 100644
> --- a/drivers/iio/resolver/ad2s1210.c
> +++ b/drivers/iio/resolver/ad2s1210.c
> @@ -46,6 +46,7 @@
>   */
>  
>  #include <linux/bitfield.h>
> +#include <linux/bitmap.h>
>  #include <linux/bits.h>
>  #include <linux/cleanup.h>
>  #include <linux/clk.h>
> @@ -180,7 +181,7 @@ static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
>  	if (!gpios)
>  		return mode == st->fixed_mode ? 0 : -EOPNOTSUPP;
>  
> -	bitmap[0] = mode;
> +	bitmap_write(bitmap, mode, 0, 2);
>  
>  	return gpiod_multi_set_value_cansleep(gpios, bitmap);
>  }
> @@ -1470,7 +1471,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
>  			return dev_err_probe(dev, -EINVAL,
>  				      "requires exactly 2 resolution-gpios\n");
>  
> -		bitmap[0] = st->resolution;
> +		bitmap_write(bitmap, st->resolution, 0, 2);
>  
>  		ret = gpiod_multi_set_value_cansleep(resolution_gpios, bitmap);
>  		if (ret < 0)
> 

There is actually a bug here pointed out in a similar patch. bitmap_write()
only modifies the bitmap, so this introduces an unintialized use bug. [1]
Here, we only use the bits that we set, so runtime behavior would not actually
be buggy but still best to fully initialize the memory.

I'm a bit surprised that my local compiler and iio/testing both didn't catch that
since GCC 14 caught it in the other driver.

[1]: https://lore.kernel.org/linux-gpio/20250217132152.29d86d6c@jic23-huawei/T/#m3163d2c5db5b7376504d8ad6f23716f1119de761

The fix is simple, we can zero-initialize the bitmap.

diff --git a/drivers/iio/resolver/ad2s1210.c b/drivers/iio/resolver/ad2s1210.c
index 04879e6d538b..ab860cedecd1 100644
--- a/drivers/iio/resolver/ad2s1210.c
+++ b/drivers/iio/resolver/ad2s1210.c
@@ -176,7 +176,7 @@ struct ad2s1210_state {
 static int ad2s1210_set_mode(struct ad2s1210_state *st, enum ad2s1210_mode mode)
 {
 	struct gpio_descs *gpios = st->mode_gpios;
-	DECLARE_BITMAP(bitmap, 2);
+	DECLARE_BITMAP(bitmap, 2) = { };
 
 	if (!gpios)
 		return mode == st->fixed_mode ? 0 : -EOPNOTSUPP;
@@ -1427,7 +1427,7 @@ static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
 	struct device *dev = &st->sdev->dev;
 	struct gpio_descs *resolution_gpios;
 	struct gpio_desc *reset_gpio;
-	DECLARE_BITMAP(bitmap, 2);
+	DECLARE_BITMAP(bitmap, 2) = { };
 	int ret;
 
 	/* should not be sampling on startup */


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
