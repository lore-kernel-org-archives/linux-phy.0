Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1956BCD98D0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 19:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+q6HYrO1xapJ+Qm30xBXfFCVhs8Q+4xMlinNn7SroQ=; b=OngpMrNqKfvUXa
	A1O14XJVIn1lZTzWIGDyqSjxLImiKbQtjPrn2yZ7JOiR4Y9BJaq/6j9L2NMWIqPOTPfhOkWIN0H1B
	182AB442RInjaSbMjCUgxr9PPGX8fv5/Vg0nQHmrICMeitVGu0BR/KGX8c4GnpK+bNiMjipkSo/oG
	uI1sVFF8h9PemE1/jXjT9RNXZZ89PPjUYFnjoVKKiqbr+TGI1TE5CtFUaB4vfDc4uGu6t/C8HZHg9
	bN9IQu0kgt9J9A8MENjBgebvOn6X3fTBOpxvOBjaYYI9sUp8AeVtZDOwjoyr8bLqHEQ7aNNDtj8Sg
	T8ExpK3ZiHDLZ+DDXyaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJcz9-0000000B05s-2ubn;
	Thu, 13 Nov 2025 19:27:59 +0000
Received: from mail-vs1-f44.google.com ([209.85.217.44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJcz7-0000000B05U-0tWL
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 19:27:58 +0000
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5dbddd71c46so461551137.2
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 11:27:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062075; x=1763666875;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMdRBCiOsnpuNgCxcScvg7uDy+Va+eLC4BNnAa1aJwg=;
        b=vY25kk51Hf7PpImbKxQpNXQ7gsI6ugLwmK/BlQYXO/iPsPwaJHjt7d1MhV1UHnYodM
         wTonfsBX/kQrxGYmCVG/5umv5eoo0ORBsPwPXjGGL9kuL8uaCvtidU36aB+wpPrfCQEz
         0EyJKus+OIOlI08qqW93Ot3fiBJBsWZNa+SCwtubrLDlD5bUuP88NhAK1MAIMVxiwJzJ
         1M829WhoBNTP/Zi7mOPKGfiwzMdAmzx5hsJRoapt1kto/EBftYuX7D03yC/D08z6j0jv
         2gPM3KvEJyBpN7WpLW9TuEIDtHIRIigsNN2JMkkhx7Vi3sOFSMjvFdx0sC823p8q4AXd
         6M4g==
X-Forwarded-Encrypted: i=1; AJvYcCXem4IDnBRATqaydcAvIIsREZdzNfjU0H6KBya7bJWlbZf9F9KaVtm0ABMdMzCzpMi3ACglK1iLmNA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy48mfwo62MiiNgK6A8mXdx+z8nM7v7Cxh8LepN9OKkmwkYYs9A
	ECtzuJSVu7XjPmsFK9iY2tb7Dnm31YNp8c5BRWWavnYmOtaStdMvhgqhiLyUHBh3tIo=
X-Gm-Gg: ASbGnctLIh4ZW6JvaTHxQuFjkSCtVVm3uNGNHAGEOSBsQdIUrEqoMqEcQREgJDpyvRn
	bcU5yN08d6is0wEEn1TPiMMEI5xCcVDWhd7nsvTDrqIyLkD/Yh0qRxWBaMjvFzecAiYrKtzcXSm
	3WZdtOKFuwy13uVatwmfdux6ys7vgGxPMig5ZbPxHdcA2yBv0VY2HjDFHljhRSnImVWuHvs9YbP
	L/fgvkJUTTLrLJDPaT1fM97hVZYxFEeANT2/ZT8GQAlFEf4FrqegeYx2brYv0dLoFA1oFQiAshY
	cce7SHyAL1rgc2sO1cKl7d8V+CZwZNOpqiCyGr/n9GVnGCt6m5yjjqV1C43o8MipZ6iRxwxjC0V
	OxZQwnPdq8shBk53C1Zp0iNfGNeyR1QQRdCK2zROB2w3xrA8T+zb+jjO5k3neTRNnKvpkrKo+nD
	rzf+oI2JyoV5u3HQXelVckGRJ6arHKjxpy4PSt2Q==
X-Google-Smtp-Source: AGHT+IEr5N/Q7qo4+gpw9dCfxjMh0fTMaB/pGzZi4y7w/nuxLS5+Ek+a8ruT1h6ZZDPq2z8Df34rmQ==
X-Received: by 2002:a05:6102:370b:b0:5db:f031:84d6 with SMTP id ada2fe7eead31-5dfc56701cbmr488506137.28.1763062075151;
        Thu, 13 Nov 2025 11:27:55 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f4986fdsm959425e0c.21.2025.11.13.11.27.54
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 11:27:54 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dfc2a9b79fso201159137.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 11:27:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW0HMY7AwyFaJykxI9bdo8dJ9MgJdUJWCLYaW7BwTlizg7nrZEmKRKl+2jJtxD9CDrtyHZwKz7Khe8=@lists.infradead.org
X-Received: by 2002:a05:6102:4420:b0:5d5:f6ae:74b3 with SMTP id
 ada2fe7eead31-5dfc5b976c3mr493792137.39.1763062074252; Thu, 13 Nov 2025
 11:27:54 -0800 (PST)
MIME-Version: 1.0
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com> <160371c0c5edae1fd3d66355f0b0afdb34de9387.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <160371c0c5edae1fd3d66355f0b0afdb34de9387.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 20:27:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW3+78AL5F09PU-cENJAqma=QCTmRCSe0KzANK08QJRmA@mail.gmail.com>
X-Gm-Features: AWmQ_bkZqJFa3uvpGVKoyugpRyy1_JKWhk6NdNKCvuhef6cwYY_WpHE4vNiMjpE
Message-ID: <CAMuHMdW3+78AL5F09PU-cENJAqma=QCTmRCSe0KzANK08QJRmA@mail.gmail.com>
Subject: Re: [PATCH v3 10/21] phy: renesas: rcar-gen3-usb2: Use mux-state for
 phyrst management
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Rosin <peda@axentia.se>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_112757_285723_2AB23017 
X-CRM114-Status: GOOD (  24.15  )
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

Hi Tommaso,

On Mon, 10 Nov 2025 at 13:10, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add support for selecting the phyrst mux-state using the Linux mux
> subsystem in the R-Car Gen3 USB2 PHY driver. This ensures correct hardware
> initialization and integration with systems utilizing the mux-state device
> tree property.
>
> A temporary wrapper for optional muxes is introduced until native support
> is available in the multiplexer subsystem.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c

> @@ -948,11 +949,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
>         return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
>  }
>
> +/* Temporary wrapper until the multiplexer subsystem supports optional muxes */
> +static inline struct mux_state *
> +devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> +{
> +       if (!of_property_present(dev->of_node, "mux-states"))
> +               return NULL;
> +
> +       return devm_mux_state_get(dev, mux_name);
> +}
> +
> +static void rcar_gen3_phy_mux_state_deselect(void *data)
> +{
> +       mux_state_deselect(data);
> +}

If CONFIG_MULTIPLEXER is not set (e.g. shmobile_defconfig):

arm-linux-gnueabihf-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in
function `rcar_gen3_phy_mux_state_deselect':
phy-rcar-gen3-usb2.c:(.text+0x37c): undefined reference to `mux_state_deselect'
arm-linux-gnueabihf-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in
function `rcar_gen3_phy_usb2_probe':
phy-rcar-gen3-usb2.c:(.text+0x7d0): undefined reference to `devm_mux_state_get'
arm-linux-gnueabihf-ld: phy-rcar-gen3-usb2.c:(.text+0x7fc): undefined
reference to `mux_state_select_delay'

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
