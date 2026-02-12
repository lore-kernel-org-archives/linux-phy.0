Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A014EE3698
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 16:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRsSpLvQZ9x/9nTwcH4nAF7K7n34qMVLpF2FeKcfoTU=; b=ytgCQ3ngBVV4uX
	gsWVVMP2oQWZcteb+TyzuzAiOK3C6aYG/qlw3YTdcjVIuAEtFpbe5TNPR8kj1IHuD828XQ8TrdHH6
	brwzdcI41c6Sv1LCPf0UOOUKplrA14GL+URkXc9zZxZr1KyFdWmqCc65zAUvTHzK79iEndwv4ooGH
	Ky2oJ+Yj0p38Q1OFbWqJKXj47e0E41mvYVrBTMKnPnO1D4eOpd96v3B3BT6WWPA+epPFCni71KQEp
	wEXy3gFlOIdQE1cNHkswiCclVVwerfaRppfAoq5S71jIdv6C6JjremmRy+Fo4ReNwbyKqZTN2GNWt
	BHlxKJzt2TgCq/qAFwWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZwW-00000002P83-35tU;
	Thu, 12 Feb 2026 16:53:28 +0000
Received: from mail-ua1-f43.google.com ([209.85.222.43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZwT-00000002P7a-3wMw
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 16:53:27 +0000
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94ac8cbf3feso34593241.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 08:53:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770915204; x=1771520004;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=om3cuNbQzAgOvOQckRciuNr9O8eg7IAaHrWKXJVxB8U=;
        b=OGKfxrAnCSswbtA0VYCL01/JMy97raThXd4noQ0LvG+6tG9hQemiPzzL0SMIcFyHNQ
         Al/JuZIz76sQ2cOB9yUNVnSorUd0h+oBNw8H0s7F6x3pIHoJi1/MoYpXYvXPKha7K+Nt
         uPUgAXxDabjMpKJ3GPU8gB3glQ7SItbyfuoBfgIMifm6DOCUwPTbseQTdQyBNxh6eiqH
         xWbLSXhdp9N5ZtwV089qEjOjeu2ubrv83fbUIh4I830uRuvOsYWFJ85q8ZVHTob5qCm1
         KgW0iSED23cOjFZUjioK0BrHagM3wo+CjBGUG0obTxXRrXcKhqLGXRqxUiUkHPsxzFUd
         HngA==
X-Forwarded-Encrypted: i=1; AJvYcCUZykqMG4GtjUVXZT0quw7yclT1Gzl7PNrSbVSkRbPDVq2ahgkRwXozjXTI7UqvS1AqF8wQFUD5Du8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7JXMHkdGjawu3icNRjt24hjBm9f7tQmy2BHjRNTOktGxdxOlV
	T1QyczjSQsvpG5ifJU+MubGeOZkSSJ5zSBDGjYzqI+P3uWpYLwwmAW5dmz8QsJF8
X-Gm-Gg: AZuq6aL9KTHKqtyV0l+anGBA7CgC7P9nraG7QoB7JB2Vv35H4yMHJCefWf5p9fBIWlD
	beRklqtsx9XBfyiM985Y9A1v02fnrrlWA2nq8bUAt+9pzsVuMee2ukDy2G0ZtmjGW7JAXg5S5u2
	n5f2qL4xfwWUy4CQxwkSLUG5hqnGxfni3ouYIo6bge1agAmjeOAqqpq7wWWerOX2o9eACMsZ77J
	7Ernlg8GMSgdtiH/CD+X6mRuLFFTMOBwW/a4BIMuneo2bvBzd0h0x27v3UDALME68VmdL/pxb4i
	36ewHLVGTtFDFjr7R9IWNYj+Cu8emBSUq35tMkcqB/RNEszg4QxShScPrQU3xfjgq0R71yMZrRu
	pdDF/4jHtdJ6oiGdBZZsruqPrRqfbIj1ZC7NftxsUd9xB2iVUO8eTjyei+tK8RjcD3exWff7pmi
	DWaNweSjju6hUaDu30FYmTNTJtwLkffeBFX8085pTGl152cM1vef2UopzlSXlJ
X-Received: by 2002:a05:6102:b0f:b0:5fd:e9f8:b8d1 with SMTP id ada2fe7eead31-5fe007da33amr918436137.43.1770915203156;
        Thu, 12 Feb 2026 08:53:23 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5fde8adf700sm2162383137.12.2026.02.12.08.53.19
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 08:53:20 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-94ac8cbf3feso34558241.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 08:53:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUx7WE0Vg+qfOBuf4jHGRDA6+JLle8i55J9I5634BNfip5hX0cRyvrx0Xt5ly5mSj9U92SDQzsvBvk=@lists.infradead.org
X-Received: by 2002:a05:6102:3051:b0:5fd:f8d6:e5d7 with SMTP id
 ada2fe7eead31-5fe003fb1fcmr1021759137.11.1770915199593; Thu, 12 Feb 2026
 08:53:19 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com> <20260212164823.mbeycqwzsy2dfq6e@skbuf>
In-Reply-To: <20260212164823.mbeycqwzsy2dfq6e@skbuf>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Feb 2026 17:53:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
X-Gm-Features: AZwV_Qjd18dp3H6_yOLJUoqzfa3vu8ojTLTUkfH0N1bdOdZMnHdC-jkEvP2Togs
Message-ID: <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_085325_986646_AC8DF495 
X-CRM114-Status: GOOD (  24.97  )
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

Hi Vladimir,

On Thu, 12 Feb 2026 at 17:48, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Sun, Feb 08, 2026 at 05:38:56PM +0200, Josua Mayer wrote:
> > Rename the temporary devm_mux_state_get_optional function to avoid
> > conflict with upcoming implementation in multiplexer subsystem.
> >
> > Acked-by: Vinod Koul <vkoul@kernel.org>
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
>
> In the future, when you have a series with cross-tree dependencies,
> please try to think of it as individual mini-series for each tree's
> 'next' branch, and specify clearly that you need stable tags (to be
> pulled into other trees). Telling maintainers what is your expected
> merge strategy helps avoid making mistakes.
>
> For example, if you did that in this set, you wouldn't have missed the
> fact that in linux-phy/next, phy-can-transceiver is _not_ the only
> occurrence of devm_mux_state_get_optional(). There's another one in
> drivers/phy/renesas/phy-rcar-gen3-usb2.c, and that should be also
> handled in order for trees to not enter inconsistent states.

To his defense, the one in drivers/phy/renesas/phy-rcar-gen3-usb2.c
is a recent addition.

So this is yet another case of "convert all current users" (i.e. those
present in the typical subsystem base, typically *-rc1), with new
users popping up in -next in parallel, which happens all the time...

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
