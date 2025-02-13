Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C212C021A0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 18:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbcT4nCTn3+c7YraQC84r079h2EkFrSO7E8HBvlpMlU=; b=K/zf17bnSnBEop
	gIxou4BP3RXqsgalKKPDhD0FCUpRW9QDqKxwFQ/2vbvrGjFtOulPrK2xNJ2jnMRvs8ud07c419Xru
	Kmr4+tyGTO330oIDZy7Pj7Iz97wMZ5CYEerFkExjegm4nMaWjptNHhPwCdJrZYml6WiRxj5z6umGJ
	3XP+MIAK6MS99I0EaO0GHyLPCkMdcL0bjlZHd8D/ylwklo2FiMm24iQ2nt4pKqgAD4sM+wllnAVbx
	qD/KX87pu5ssY4FbrSY8pkOQKveHW0zbIi0lmS/+zOgOlcOT8wUQ2ZZvtFfBdKdRZ6BVulpc80DQv
	iH3K6bd1fPW0A1GzBeQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tidoz-0000000CCcO-191N;
	Thu, 13 Feb 2025 18:20:21 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ticxp-0000000C0HM-2rvW
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 17:25:27 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-72703b0fe2fso374187a34.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Feb 2025 09:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739467524; x=1740072324; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mp8WnurnIDwQ4N7+32kRAbs4w5dFYFrQQIq32Y3ZWhU=;
        b=jcbkCM1Pqm8XHYx9Nm9lvzGnDoROdhup3YY8QCwvjfeDCjzsqC84BJfRTIXeWd9O1Z
         lYki98U7rqbzPLJ/lwzjwg4nbGMQil1uBXqHRwu+ZpaHXM0hosmgLscldl0AwbiaxpHP
         jyvvb0V8ekGSujpt+o3YL0mUw/sLv5ncTHEoxiF/BeIXFCRPIlAy5MOIRr8SbGWA85LY
         0z7V2blOrNQUoiGsufWKVs+tYUPJwVlqik3CpRTF+48FUeJQP6Yjkuy55GCEqjQAxhPM
         XRW2pCD3WDcrB1D+lVtYWPYuQPB0+vRd01TzVmXG0zFONA6E5RqdO0TAB/XEZBeSrXnV
         ggow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739467524; x=1740072324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mp8WnurnIDwQ4N7+32kRAbs4w5dFYFrQQIq32Y3ZWhU=;
        b=OUdDuBshFtC1+645OkT8DSCyzm+xk8xPuiMBd/+Wy1HHoU7G9B4wG+nOc5udfoA589
         /aoGNnvIbMHHW8Cb9QnrkXwYVGgsEAjJbS/TeJhu+YfGgPZSSg5F9Yl8peqKI8mud3kO
         5yw5naTa2gT0qLe96f8z5ssRMIcZ3eX1LQywbMGW1UXnSWaNFXPVQ43/Mb2lEo8p/FNK
         VshLGRgBhcp8oth2ZZcItoDjAJVz42R0zggszB9Nk0ecVWBrM+Rlp0HC19dBEXnguw3C
         ashmjWZDfT8pE5Ihwu1R9KJ9fc1nQw8cnxJZRE22ot8lOW6rLaqiDe9tXZbn4J6HmuRO
         Cgrw==
X-Forwarded-Encrypted: i=1; AJvYcCV0SGaWSVXExADD4e6+2L4Rh6TWyLffZ3w3w11VFewpYW8HPnpQq/cT0LIdyv4BG7tej/SBJ6wL6bE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxEyNZ5Nu22CmFvaNRtaYbHd3s7uLklF4QXYXU8WBi6vfcFAK5
	kKj3Nlfnt5dyfcQDmV2uiczISyT3Gx6Tt2d5jEpzh/fYLmOrO8NL/nVPmSvdsfE=
X-Gm-Gg: ASbGncsRMZQo9KfcYaPeQqwMyoSwxdBBNuRACs2IrY6s3cZI57VPFYpkgb45D/kgPkf
	2AqmKmHepyWrYGcZuhLR9WYxz2QQ+O9HETx8nxeuan6cBvRnKey/zbzb17zIg7qgMVAGVWcOv6L
	+kEMluJmj5/ngpTMo2c/bG4Bf+WOSkHbpzD6DKfL03dXIwalsubBvIOblLesyIRalpsb+h0xcjg
	RPGMR6pQeDhvrNNcan4I8n3lV0AJe0I90Tjst10Imdj9YQJbj/VaVdIuubhNcMZxK3Tg9370NRC
	WPGf2ycDbbUWhBh179SI5lVbJxrWaqYcQe2LL8mYamT82crW7OZc
X-Google-Smtp-Source: AGHT+IFRLkc52JKi83ncUWwAgxo2TvaFCE/dbkTZNE6D15ISJ0Y8Jn4hp2Y0d5PwcxAk7Qj4zAr0dQ==
X-Received: by 2002:a05:6830:6b03:b0:718:41b8:5d6d with SMTP id 46e09a7af769-726f1d8aaa8mr6076689a34.24.1739467523802;
        Thu, 13 Feb 2025 09:25:23 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7270025806bsm743771a34.53.2025.02.13.09.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 09:25:22 -0800 (PST)
Message-ID: <801b5364-129f-42e9-bf9a-a90d9eeb4629@baylibre.com>
Date: Thu, 13 Feb 2025 11:25:21 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add
 gpiod_multi_set_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>,
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
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173935301204.11039.10193374588878813157.b4-ty@linaro.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <173935301204.11039.10193374588878813157.b4-ty@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_092525_726990_2699A254 
X-CRM114-Status: GOOD (  13.19  )
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

On 2/12/25 3:36 AM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> 
> On Mon, 10 Feb 2025 16:33:26 -0600, David Lechner wrote:
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
>> [...]
> 
> Applied, thanks!
> 
> [06/15] gpio: max3191x: use gpiod_multi_set_value_cansleep
>         commit: eb2e9c308d2882d9d364af048eb3d8336d41c4bb
> 
> Best regards,

Hi Bartosz,

Do you plan to pick up the other patches that have been acked
as well? It seems like most folks were OK with everything going
though the gpio tree since the changes are small.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
