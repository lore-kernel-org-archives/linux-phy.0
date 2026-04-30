Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F774FF8875
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 12:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz3bwpovKlC07DMzZzxRN0GIwmRlMUuShraqrx5+oIc=; b=rUvEaTSZXFXw5/
	X29GG1D3O/DvLCYPzBHzJrgOZke3hwkwMjuqGWQizkiKV84Bhki2ogmGPnuLUCJ6DBDjxiY4pzV0X
	LNzCb0CQvutbUY77FZN78/2Jb1Zag3GXNx0flpmmpzVh9eShHx15YQ7cEeWhGw6Zz4rS95XbOEDQd
	0ctuxOAWcluQrSZG7fugecjbzpO0rAtUPRRDUyIo0LZdb26Ah5X7ds9OJUueCMwDBN/pmiJUBtkWc
	zGFeLiqNVvzgVYJLwH+8XlUDzWAOGZk4z7ha9Cx4bxWPUu1ZFoAkH+M2xoJOqOvf3eEmcTiNcFeZS
	yJ7ZmjaS1IGbJ6mpA0ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQ9L-00000005QVd-3iq0;
	Thu, 30 Apr 2026 12:05:47 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQ9J-00000005QUp-1PnL
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 12:05:47 +0000
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7dcdca9aa0bso1420253a34.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 05:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777550744; x=1778155544;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksIL4rip+tLI1Yx6QhQXSN6krUTnsd9SRkVzjQXrZjA=;
        b=O3bGlDvrzUlx+9XNyanOwrze5vvX13Ft+Ytk8JK9z1oDHLK3ru8GDYs2I7rOXt/Sgo
         njIs0VwHUBEx3CF1epwRTn5Et0m2gn2n5AGVzaweT4Rqy/bitxkOKzPa7eHmNh9+FbcA
         6fqw2+lrhoVnoBpuScu7946XPDQFzv5rXS1hxiWBugyU2YWzHbUWrniZGQSwWMmohVbq
         ZZwHVwEoD0WhDr+0MzqaZCvAMB8Lk+Mb+FW5XJ8ilefMAhV5bMlc0lyKdeSkplp5FHzE
         AQeX2q+JlQxaNjrRlgHcc348iPuG2uzlbTekaEUE7HeUej3v1BF3yXaUptf8MG8EGvhv
         jdIQ==
X-Gm-Message-State: AOJu0YwwT4Ujwy0+ao83nU169fYTY5AbNztvZARw96dqQw1O9dx5Vu5w
	rL0PALZVvW2eHVu3suStyJd9eRH6KJFdTgmaURJfDxqd1HFFi+ZQa3xBaRHcS9woBsM=
X-Gm-Gg: AeBDievrtQoaRLRDO3xKsMKJiqrwDqPvY/O2BLZQdXtutSQMOUgNSHN0V876q9HNy3S
	O2YXsx5ZCjJzILApBHbV4gEwagJryevAXUw9WjyMfHUL4EYo15a6jcotWC1RirTq2x0jwjmyKc5
	KtfCfzn6wE/q5N+C1GG6gvegVF+Ob4rIej5EXX7vONyOrZ5dPEYU9eCtlr8SKC4yYjFG3YGyBDQ
	4bJWV/GCvYE/ZIxcUHa/9N/Rc+7lsBgQntg5G3r1Dq475ts8pxuTuyQ9ZNZ6SQuL7FxtrQUcV6m
	mSrqCP1YhclpJycEFFhdpJ+vT8p1leMwEo7330/yRQRn4m8l0KwG1rT20XVPWc8yezDSyplU1jK
	/CfJsIL/Mto/y3kuCz4TDVN2fNw6/K7h6srU3s9q1H/nJ9WExvhMogyj2wMPuHvingy+fASypbX
	iReX7XpnzZUcFmAy3XNoZ0s6C6JnAUfb6NqpolUAvgCmZ08aNO2R/luSAuMhhjrw/GdippPWw=
X-Received: by 2002:a05:6820:338a:10b0:682:ecb8:c2b with SMTP id 006d021491bc7-6967bce3c34mr527189eaf.6.1777550744230;
        Thu, 30 Apr 2026 05:05:44 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com. [209.85.210.50])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6966bbe3b99sm2918994eaf.6.2026.04.30.05.05.43
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 05:05:43 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7d1872504cbso686674a34.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 05:05:43 -0700 (PDT)
X-Received: by 2002:a67:e708:0:b0:610:347f:9f3b with SMTP id
 ada2fe7eead31-62afc506100mr613209137.3.1777550404889; Thu, 30 Apr 2026
 05:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260430110652.558622-1-vladimir.oltean@nxp.com> <20260430110652.558622-18-vladimir.oltean@nxp.com>
In-Reply-To: <20260430110652.558622-18-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2026 13:59:53 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWbeeRmLf6Ae0Fr0un=-z7z5ONc_hDdjebP=KVkXHPbhw@mail.gmail.com>
X-Gm-Features: AVHnY4K0yYb6vTu9KdtDciwvAziqboYRX_ITZ386sa6ttixZ1EP_Mzy9gi4Pi0E
Message-ID: <CAMuHMdWbeeRmLf6Ae0Fr0un=-z7z5ONc_hDdjebP=KVkXHPbhw@mail.gmail.com>
Subject: Re: [PATCH v7 phy-next 17/27] phy: introduce phy_get_max_link_rate()
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
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org, netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Markus Schneider-Pargmann <msp@baylibre.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andy Yan <andy.yan@rock-chips.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_050545_373236_B63B77A3 
X-CRM114-Status: GOOD (  22.68  )
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

On Thu, 30 Apr 2026 at 13:07, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> Consumer drivers shouldn't dereference struct phy, not even to get to
> its attributes.
>
> We have phy_get_bus_width() as a precedent for getting the bus_width
> attribute, so let's add phy_get_max_link_rate() and use it in DRM and
> CAN drivers.
>
> In CAN drivers, the transceiver is acquired through devm_phy_optional_get()
> and NULL is given by the API as a non-error case, so the PHY API should
> also tolerate NULL coming back to it. This means we can further simplify
> the call sites that test for the NULL quality of the transceiver.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Markus Schneider-Pargmann <msp@baylibre.com> # m_can

Thanks for your patch!

>  drivers/net/can/rcar/rcar_canfd.c                   | 3 +--

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be> # rcar_canfd

> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -57,6 +57,7 @@ int phy_notify_disconnect(struct phy *phy, int port);
>  int phy_notify_state(struct phy *phy, union phy_notify state);
>  int phy_get_bus_width(struct phy *phy);
>  void phy_set_bus_width(struct phy *phy, int bus_width);
> +u32 phy_get_max_link_rate(struct phy *phy);

This (and all the existing getters) should take a "const struct phy *".

>  #else
>  static inline struct phy *phy_get(struct device *dev, const char *string)
>  {

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
