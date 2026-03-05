Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E8CEEF314
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 07:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xW8lb/ODJBmJn3W7UyyjJVLCGNLKElBsM/f3igl8hr8=; b=WZl/jbqS3lIWg9
	8kx0CPYpEPRNcX0pIVd7OBQwNXHQAQZ/B+Osl5cPu+WnDveiDZWujZudkKXRQTUIU6GXv/cuJSymk
	uEZHkqCGXySO2K4SYMRvzXED1R6QtG5FOv53TRw9a6CrCKkUcL14/VacihwGwUuzeUcK4g0pfVAI+
	FJLFJzxLMD/C08WdZBxa367ir8W6wmMu7T9yQ4Nto1BrbNIjXr1o7UB2AEWr7Y5WyKW3sN7pnO+AL
	5r5g7IaqWcBS4fFZXM3OS7NFPxXp/3WXJNjoKEhWbI7ZPT6XyFMmr/2khI7BteJQGaQTcjU/H2a4B
	fkeCXi5uXtIKbWqajMOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3RC-0000000176l-441J;
	Thu, 05 Mar 2026 07:48:02 +0000
Received: from mail-vs1-f51.google.com ([209.85.217.51])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3RA-0000000175o-1LW0
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 07:48:01 +0000
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5ff1703cb9eso2132721137.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:47:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772696879; x=1773301679;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xyHjzGnphi32H4Bte19x6wQV76UaiJqzbc3zMkJKs8=;
        b=dEa+JsxO9XS/SVuyMf0xNWTC7r6cqIk4TqQUoJCy+e8t+fcsUlmizSzhymcNTEBNoD
         o+0m/GNe0y/oSDIGLy524R+AH3Ecr1kaj7OI7d0Us7JFGMKeUOzloOAptRc7r37VMEw6
         ChkfRsSQFHYBZYiOH0yTzCOq+ebRqqwfPMZK2yztvLSPo6c0fzhHckiwlrHRhG/x27lv
         //goC1GFHVLzQaNFxHKPXhrEl/HljFOI9LTg84HgjBr9qTpKoosNL3QB+xTa7sjagU5q
         WPaJnjxwSC7Ilw1YP+9mBbdNedXCB+CdCD1yTD4V1F2XpgGRoMoJmTtb17ZKI+WEFnp3
         VONQ==
X-Gm-Message-State: AOJu0Yx0U3fcO4Pkkc5iYocSzZr1yyw/IBHemylIBULgXmJswWGc6z0c
	MNo2ZGE6dj5/TBxUJLXu3UAQosRdCwDA1N69aGPsEoSA2Xf5agqm5rjNxUUkumIS
X-Gm-Gg: ATEYQzz0bCD6esJthJSyX4DeIa20usDEuE0xSTaylCqKXk7Wjt3yfMYoBzScaIsWWYJ
	u9QCMTTeA4ptR5UX9Kihh7T9IkVJ9UfDlYXjPwwDDF0nL6N/tBrqaUI+BfTynpaeI6iOpPKk6po
	3Kh6D0aDMSsVBsoOyeMwMj15WM0oUt13E3jqTdr8MY2WbhNjmBH95MgSCHuU9xjj/LMNLsizeLd
	lBlGvHSU7FuxgZd55b5bChzFL1I308jjge2yPdukTYGSVglAITLYRm/Krr6rwEXIg6enMR9zqkD
	jMuLEERCXiIIUC0XA+lNeXusflfqSkMs2XGw4QWqt7eYCv25mhwtwMb09K2r3l3AtkkbHNDtR6K
	YHuKrPALBHQYkY6NF4BDmM1VUP2CO8O31feZhMSSsqlDPwuCcYP0sB/7Fs7RRgBZAT82DUlt3kk
	ONxftDetmloODHpMaY7RQ4hefznnkDD0fXkLTT1nXk+HKxeNH/1MTxYdFZTh26
X-Received: by 2002:a05:6102:c8d:b0:5ff:9e4f:6946 with SMTP id ada2fe7eead31-5ffaa6c35f4mr2058165137.0.1772696878818;
        Wed, 04 Mar 2026 23:47:58 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffbf2b3b0csm2906057137.2.2026.03.04.23.47.58
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 23:47:58 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5ff1703cb9eso2132709137.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:47:58 -0800 (PST)
X-Received: by 2002:a05:6102:32c1:b0:5ff:a16b:93f9 with SMTP id
 ada2fe7eead31-5ffaae2d5b0mr1883200137.21.1772696877960; Wed, 04 Mar 2026
 23:47:57 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-14-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-14-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 08:47:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUNtqsui3ek1RYCTyiuDLRajpSBMnrdzED6wu6i7-QcuA@mail.gmail.com>
X-Gm-Features: AaiRm514iMGAdfTBAVsgfVfK-GGHy9jHY4ezK-Lp3w09-JWpnENLQ0I4lkIFgvE
Message-ID: <CAMuHMdUNtqsui3ek1RYCTyiuDLRajpSBMnrdzED6wu6i7-QcuA@mail.gmail.com>
Subject: Re: [PATCH phy-next 13/22] phy: introduce phy_get_max_link_rate()
 helper for consumers
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andy Yan <andy.yan@rock-chips.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Markus Schneider-Pargmann <msp@baylibre.com>, Magnus Damm <magnus.damm@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_234800_366026_AAFB8936 
X-CRM114-Status: GOOD (  21.74  )
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

On Wed, 4 Mar 2026 at 19:00, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> Consumer drivers shouldn't dereference struct phy, not even to get to
> its attributes.
>
> We have phy_get_bus_width() as a precedent for getting the bus_width
> attribute, so let's add phy_get_max_link_rate() and use it in DRM and
> CAN drivers.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Thanks for your patch!

>  drivers/net/can/rcar/rcar_canfd.c                   | 2 +-

For the Renesas part:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -640,6 +640,12 @@ void phy_set_bus_width(struct phy *phy, int bus_width)
>  }
>  EXPORT_SYMBOL_GPL(phy_set_bus_width);
>
> +u32 phy_get_max_link_rate(struct phy *phy)
> +{
> +       return phy->attrs.max_link_rate;
> +}
> +EXPORT_SYMBOL_GPL(phy_get_max_link_rate);

Any specific reason you are not making this a simple static inline
function, like phy_get_bus_width()?

> +
>  /**
>   * _of_phy_get() - lookup and obtain a reference to a phy by phandle
>   * @np: device_node for which to get the phy

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
