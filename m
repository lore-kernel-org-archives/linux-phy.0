Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D51C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtD+kXekbMNY/WxoeBJrAtLziHiJMGFFBcI5vsv99lU=; b=W6l+udPxo+BId6
	YMwoHnmaJiqLm+Yix/fXTUen3B70PDL5mS+gMhDAlGBGwBVDi0Spd9W7Y6UG5xIT0X/zgbLbV+CAU
	6baSQCYEe1rNQoTRLBKZ/jzSNu/LlYMXbuoe+A2OQs/8GaSp7OzsRP5Vah+YEXnq1YLHdw8Kq4xwe
	Ugu1GhqAs/N9caUguZDUpOW7esL+VSu1J7Iu6SZqFNjCRG4UuXZiH1rvZlPX1203nIwvcUO0IyFbr
	uHR1q8wYYYOeK4gHqxnIOf3H/glux3SV6kDOIb7EKRBTrCbqW1hTtClVAJ2IYmQFS4r4cC/qnI5xi
	PRMaijLrRCKdubpEAXWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teu8n-0000000FAlq-1jcs;
	Mon, 03 Feb 2025 10:57:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tetnP-0000000F8Ni-1sSK
	for linux-phy@bombadil.infradead.org;
	Mon, 03 Feb 2025 10:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ex5bLUHao4DryQAa7tTpAvsACQHE+cn8GK6177LmD9Y=; b=hvv6Wsz+ggZDcn71uAwMGdjBPc
	46HkJXcC+rHvBDPw2hxffty7/IIII1u0iHRKUo/Bj2AO6ITkcHBtsCUDprZM/Y2u/tpJM/lZSJljU
	VGJCuYfdzN+xKiumkwjMM0Q06NL7TgsireHsoVhRhhdgv0941xNa29x8VaMt+nWFn7LF3gJhDgl0Q
	3CTcxqNDIXn5F4dLZRb0W0ZgQn1gsoqh7wDzXDnpQrmclYQtOGGFu77yCxXyJ5ndhoHxUjhIy41Jy
	x2rwIgUqZrcbHwx4d1L6dn99q3HR67lNYh3u0p4wvK+BubMSYpwEI+xQsmr0m5IUQS17YWxl+31ie
	7djVVVVg==;
Received: from mail-vk1-f171.google.com ([209.85.221.171])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tetnM-0000000G426-1ZVr
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 10:35:14 +0000
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5188c6f260cso1328835e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 02:35:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738578908; x=1739183708;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ex5bLUHao4DryQAa7tTpAvsACQHE+cn8GK6177LmD9Y=;
        b=ZrDWBUnb236Pd7Cy6makwHuZIiegQGDjUDljSCCFZ9fd7zwrgwyzcCaCIoU67K7d7B
         NNAG/9UfYen+BkMhJx8QVQxNkl4MOBT23rc2wfV+2ohfrdLXIDPW8zAXkSw98bmlNJvE
         8+GNVYyMD6loMbSouo7HHgM+L5tig6rRQhodqWy8fKJDzTmVGaKkwPsCuFom4dpMyoRm
         mwNWJxY5kfTYWxVOB0nmlZQ6eDc88VZge8ZoDP3OdvP3zJ0RKL5xqR9J5lpsfCJCR2vb
         AIPSswGj8gNaUdvlVFDa/M1oKlT3ZW9x8u6NlYO9yjiX5D1L7cr9+RGpKfnjqv+pxZ3x
         6BRA==
X-Forwarded-Encrypted: i=1; AJvYcCXfXGqTmf1Yegd/UIfYogiR6k+PpHMzMMOY3RI6i1VKFxFjadov3tOnplZ7dbrC1A0YWGOvj84qKSc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2V5Y/9aFh3SJ4JMo+o2Vhk+GyxoG2ctYMivboGjlpCSiufd98
	0CxrE6xOgvmfAr11rGptjQmhJHdWivaVnek9Qb2crDoj3sqV5vvFQP4WIk1b
X-Gm-Gg: ASbGnct5RCsh0pJ9/UPxqJmf6HGn7wTTnrETQrBHKS5mj20986RMaVEg/h4edW0utWz
	5J+fWj3JIAE9I8Emc/oV7tQMcMzLiWd73s03soUOP8cdckp8kQ44KaZ3EXEKVT03zhmssShpWuk
	XuC2jUUwk0rmP9H+c3+QaE95Ig0M+GNtd7S0VPpYtqDwBCLnzg6CMYLpQQJ36eyQATVzKRnKoJg
	SF3qBlDZCQUh1bahc2PorEuPG0leySYpirD3BfL4P04J9cUzTXuBDq7vBx70HFasSNCspKIK55H
	4yDpP54OhM1bQJLHYVby+Eu+qX/zfJytxBCaLFqZSXJI7TWb1mNJzQ==
X-Google-Smtp-Source: AGHT+IEUz+la/wl/Nzfix2XVWi457zSvMU7yqjMamNCn3k5iL1GFR4k32A8kIM7Vo/+4VzecaJq/0A==
X-Received: by 2002:a05:6122:488f:b0:50a:c70b:9453 with SMTP id 71dfb90a1353d-51e9e556b10mr15342923e0c.10.1738578908358;
        Mon, 03 Feb 2025 02:35:08 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51eb1d91b6bsm1270669e0c.45.2025.02.03.02.35.07
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 02:35:07 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4afe70b41a8so1216458137.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 02:35:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW7dgIlnMuF5E1Cm/B/Es8OCtpRJJg88VFeI7Q4pnTHyaZy2ihDT5gSKWcZICWCPMV/kzaIZ5qAms0=@lists.infradead.org
X-Received: by 2002:a05:6102:3f8d:b0:4b2:45a3:59f1 with SMTP id
 ada2fe7eead31-4b9a4f1043bmr8045813137.9.1738578907367; Mon, 03 Feb 2025
 02:35:07 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-2-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-2-991c8ccb4d6e@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 3 Feb 2025 11:34:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVqNiquGdEs16GMTA6DPCko=TX84XWJygAorTnQk=+PUA@mail.gmail.com>
X-Gm-Features: AWEUYZkAG6WZPJcFCeHPNpLZ6MfE7XgXc80j9HTRJ_H6G27t4lJaJg262FoSJlY
Message-ID: <CAMuHMdVqNiquGdEs16GMTA6DPCko=TX84XWJygAorTnQk=+PUA@mail.gmail.com>
Subject: Re: [PATCH 02/13] auxdisplay: seg-led-gpio: use gpiods_set_array_value_cansleep
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
X-CRM114-CacheID: sfid-20250203_103512_562441_135566C7 
X-CRM114-Status: GOOD (  16.40  )
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

Thanks for your patch!

On Fri, 31 Jan 2025 at 21:24, David Lechner <dlechner@baylibre.com> wrote:
> Reduce verbosity by using gpiods_set_array_value_cansleep() instead of
> gpiods_set_array_value_cansleep().
  ^^^^^^
  gpiod

Am I really the first to notice you got this wrong in each and every patch? ;-)

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
