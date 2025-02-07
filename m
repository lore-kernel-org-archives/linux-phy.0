Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF9CC02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 16:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWN72EFFjPrmACZqspIuSkXxneWmoLGf4gAQBq55rPs=; b=BmKjayg0DIEKTO
	5Uwyaa8yv6WIgYasGxgqFAY+v/FtBUT8lETMy80tc2WdoECKF64qrPCQj4ysuB9zUIUTaaC7HoCo6
	B6bjEzxFaMZEyRFqwlgeZ9zqy6V7X4Llcvoj75X54xyUyVVScEScBQm9vQy+poNeBgGoER8fXU7ry
	UVlUxBuM9Qq2tQloQ80Wf0+0Vd8k6TSV5ItjZ4+LmvMDUbuHogjdC+/dRYQ70D3RRFppyomgP9N9x
	Njw7WUh/i0uJvf/kcIUFDZgPqwyTE2W9j8G79Yq0jWnYncvoP2gTBBBCoGQT3SSC/QlRfmZ1ZMc9/
	Rg9cA5lKSUvWhP/NRksA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgRak-0000000AMhV-2yl7;
	Fri, 07 Feb 2025 16:52:34 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgREC-0000000AIF6-1DMS
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 16:29:19 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3eb87127854so583337b6e.2
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 08:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738945755; x=1739550555; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k5z98lSfe6WwRG+wC0Tg6PRqMgic/o2qF3h3J+ulLEk=;
        b=si9VCsAMzqmYUnp2XqZkvQ9tVnI4/+pP4ai7mkWMb19NdvjItNzV4SskhrpbqLFiHy
         R0SwBQ2npbx5NyvS5QF8dZ7woUcndYelrBDd6lSMxijXFLgPeyk0XIyi9za73cPtOC1e
         PqYlNQTKrU28+WoTO/drh9PWj1ko73aQl6Ms1sl6mHDidaAcM4E/IAbV/E9H34dyIhMC
         GA6XmoK3JUYesdct2QVysmhC0J2nCv6OZG0vQxw5GQE+tu0tr5vuvOES9EXoOBLo3Ta/
         ZPLVAxmU8nvDluchyvUAAXDUeXDXbVCC6E2tUpxzD4uZNdjeQb889QU2VyYfsNpzwPfL
         YdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738945755; x=1739550555;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k5z98lSfe6WwRG+wC0Tg6PRqMgic/o2qF3h3J+ulLEk=;
        b=Yn9ksTA+hEXckp7IYyiLDrsjuZwXPgSz4/EDft2Qmqm+C0PR4Qei3dxrpuoyP/Njhh
         nSp3IE6qxY+/uk9S8UINNEUiMVUlR6MwvqAoTLa4wVboOippwjw4bgc2kmcFNfP5i2i/
         Uz+J03eBBFsEzhZluMEJAJhOTn5hC6qidGHZMm/aqSpLwc/GtHEJxLl8BkyQao71VCyb
         Nv5rl8W1LSoJQ9RMnSC8QZwi1ljhvPsdIwKRLtcIwER6dpS9it8xGuBtFI9zfvz8czIz
         DzHiUImgVG3ixjuTX4nTp5+OjjeTKf2+GUBZcLfpmfpGn4t5lLLzJCCH1zJnyacz3exh
         We3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWc9VvJrhafvqYWnxES94TFSXyB9ZWrbI4ZchAfdeNBOy0aiB32kN62Xevea67x9EeSz5rKpEe2GVs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6Ak+kxM3w/vXxaHSd649/5sHPXgzwxMYJo2Rc9NhWtPb2wx2w
	M/O8VhgaM848ho0U5I7aDmencKUsHaYJzj7aXMRJaOZbHa1J3vOtqf1Nzcvi1A8=
X-Gm-Gg: ASbGnct21fJbCM5a7UyDpjXUvxRvzzvBM0PrhyoBLApI3dP8mgEh/cUFQ+kxvA52ekE
	QV1mDSyjNdLvfOscKdVamSwTZrdWkHEo2yz7YOAQCMjxfm7hOpeuZB2rRC4d9+A2PsiJ8EQXD+Q
	fb7ThZDDsygz6Li231QmAG5YFAkoGaqwWpMpbJz0yxODeF0xbUnnTQUSwxkKLOMehURgi7ORhmY
	Hd03jBH2otcXM4i2gG8ItPWMj11sJFtXIiWXZVpcdFKfNdZzZksBG3L0c0qUT9WKX2Tah+DDIJD
	LHwOz6/8KZSqq6i3hSDLKyWUxTTyidArSkAro1NMXZztHkASXCxm
X-Google-Smtp-Source: AGHT+IG7StedQ5Vnf2T8W9EtvcPrRVDItpyl7T3DBHEMIV0RzDgNrv3XTiomaadolzmBwJACvP6VXg==
X-Received: by 2002:a05:6808:30a3:b0:3e3:bd1c:d584 with SMTP id 5614622812f47-3f3922d9a38mr2709674b6e.9.1738945755147;
        Fri, 07 Feb 2025 08:29:15 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed6220sm756084b6e.15.2025.02.07.08.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 08:29:13 -0800 (PST)
Message-ID: <74ec33db-6721-4b86-86a6-e18b0a01fc47@baylibre.com>
Date: Fri, 7 Feb 2025 10:29:11 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] gpiolib: add gpiod_multi_set_value_cansleep()
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
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
 Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
 <20250206-gpio-set-array-helper-v2-1-1c5f048f79c3@baylibre.com>
 <CAMuHMdU5tt5_t2SfYO3OUsHenu_0PhpKeLHktNdCx-W6zCEymw@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CAMuHMdU5tt5_t2SfYO3OUsHenu_0PhpKeLHktNdCx-W6zCEymw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_082916_627701_849DFBEE 
X-CRM114-Status: GOOD (  19.60  )
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

On 2/7/25 3:10 AM, Geert Uytterhoeven wrote:
> Hi David,
> 
> On Thu, 6 Feb 2025 at 23:48, David Lechner <dlechner@baylibre.com> wrote:
>> Add a new gpiod_multi_set_value_cansleep() helper function with fewer
>> parameters than gpiod_set_array_value_cansleep().
>>
>> Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
>> cases, the first arguments all come from the same struct gpio_descs, so
>> having a separate function where we can just pass that cuts down on the
>> boilerplate.
>>
>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
> 
> Thanks for your patch!
> 
>> --- a/include/linux/gpio/consumer.h
>> +++ b/include/linux/gpio/consumer.h
>> @@ -655,4 +655,11 @@ static inline void gpiod_unexport(struct gpio_desc *desc)
>>
>>  #endif /* CONFIG_GPIOLIB && CONFIG_GPIO_SYSFS */
>>
>> +static inline int gpiod_multi_set_value_cansleep(struct gpio_descs *descs,
>> +                                                unsigned long *value_bitmap)
>> +{
>> +       return gpiod_set_array_value_cansleep(descs->ndescs, descs->desc,
>> +                                             descs->info, value_bitmap);
> 
> I am wondering whether this needs a check for !IS_ERR_OR_NULL(descs),
> to handle the !CONFIG_GPIOLIB and gpiod_get_array_optional() cases?

I don't think it is strictly needed, but could be convenient for future use
cases. If we add it, should it be:

	if (IS_ERR_OR_NULL(descs))
		return PTR_ERR(descs);

or:

	if (!descs)
		return -EINVAL;

	if (IS_ERR(descs))
		return PTR_ERR(descs);

?

For comparison, gpiod_set_array_value_cansleep() will return -EINVAL if the
first argument is NULL.

> 
> Slightly related: shouldn't gpiod_put_array() (both the implementation
> and the !CONFIG_GPIOLIB dummy) allow the caller to pass NULL, to
> streamline the gpiod_get_array_optional() case?
> 
>> +}
>> +
>>  #endif
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
