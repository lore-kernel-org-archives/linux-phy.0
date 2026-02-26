Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C671FD8FC3
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 15:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZxg9yKFHILPSWIxJaImMsrMmB0Ck01sX2Nes8mPAwE=; b=H32bO7beFyxE6x
	f3bGVfd27yuRuy3mbLPDHxbGLjECPzmuBFa4uxLrjZIo0+ZQ7TAsTdzj8/B48aRSV6O24C3PrLZOj
	+piKt13I58hgGTj5YGYsfvtddQf9ipM+IlyMzyy4hROhufVXX12BMsiFcN3pqtC8D65xBRK5m1Hbc
	fvCQkWXxSywJWWuBrXXupE8SbHvKeQScnQn9fGHY8aUDUQBkoBI50dzH3uuDsq8SNQ5D1NmTJ7tO3
	Bl11qRzC0z3YQsiXbjPX1oiC4FKk9cBaMGy53RmbL3hch5TvRI/Iqn0gAQ68YRIQW78ycolhT2GKQ
	tdvmH9vhAiLwBUcC4DNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvd4E-00000006TE6-129V;
	Thu, 26 Feb 2026 15:14:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvd4D-00000006TDI-0rq4
	for linux-phy@bombadil.infradead.org;
	Thu, 26 Feb 2026 15:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=O0ezGVOcarv9ScNAFNBu6P5NdLNkz1RoEz4XxD5dNpA=; b=PZp7/Y/MYJA+4/IlvcYz1Qdbma
	SlL+4bqYTbJd4cv82R7nF0iFFFkqoO2Ji937yEaQWGZchb2PiRr0j8LUseisr/RfD5haCJbiJnNmt
	jVU6DxnOHkbUKc3vsK0ZBrYoxB8oEkr/VZWSgR+UFipCK+MrGII/3VUlKTiThhpafaFvNMYF1bxSd
	KglSs4jyT703wfyL2Yg5YB5VKqICgNghfm3g1lO3vTZOdphkXvKZDJvChH0zAR6I2IdsUSM3HQ8CV
	yac/LOX5BXgIe4L7LHXK4THT2XktPc6CCGgxvEyjh1rcsSa/aJ1IeC3abnfKMtdbuSYOQoayZDsZH
	mOJg6zjw==;
Received: from mail-ua1-f41.google.com ([209.85.222.41])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvd4A-0000000BHxK-1jsG
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 15:14:16 +0000
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-94d5f90c8b6so649712241.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 07:14:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772118852; x=1772723652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O0ezGVOcarv9ScNAFNBu6P5NdLNkz1RoEz4XxD5dNpA=;
        b=mME15eAxvinJ6yPz6nmrLpWvbsbHHSy59Uc7D3vVrMRNk+E/ODUI6sp0C5kaKOATEt
         MVBGD+nQ/WqwyKjNeq0hUkyDSF/x24foGtb4iBmHXaL4ZghB7BZB8UYYbKOGYpMgFOo7
         vZ5vDSKJT1ii7FU0BtdRps/pb9J2gh5pg+AfjJwpAdPHN4BFRZLgPFyW8pKavmwO9ALI
         dZAMV/zW9DMJVAvhqkjD9Q8UjzYCflqSRXHc19eWkOOr2MJWeg9KOoE86kmXYLDeKmsq
         pKwm7hMNN2wDJD8BoZrGffsfNjj1jLmTGAPszpx28gsZn6CfHcpbJva9/tvDNGEKU7XL
         KvhA==
X-Forwarded-Encrypted: i=1; AJvYcCUxALeuQzQACcay1DcAmBuOsJOneUQZ8LeSgfiqpLxTKFOZlAYdXerz1S5wpseYi8j7KiREMWpSzdk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEsIxTwb1uuhym4iPdJeLOeptaSjGHieeSt92LXJY6ET50+gqO
	/IwyBm10C43zbTu5cEFCVf6dVYwGRsOlCv06cIYsEPJ1wl6unXJICoN7kj0XF2as
X-Gm-Gg: ATEYQzzNuRNSTK4hQB/QU0a7FEwKMLJ2+67wlXkTaC8sadrEJ0/CKJiM/NLhbb0QcYf
	Web2SolgcJvkAfyr6D1PRc+45asTnOzGN74Wo6pbN3ogjfrIFOoe02M0gc7dh1Dnn6itlX4coX2
	g9wB7h5+lSSenLuNsi4j2kVs2FRvE0ccdf+SqQtPasTFm0KRWHAFVBExq/xfB+n3JRt6uDUp14g
	Dtym+IXihpEPS/3DO/6j69U5MU950i7fZi7b5ETpIuQxhhz5AqCP+C00aw+atqpCPxtNgWLVM2S
	E+Iqeteko//nrz7nh9z0gJ3cLbGHPSweeeP/4iN3lPXqNlQyyOoGJK08WeNFt9o1i3cpqPERcNX
	9UuPuCaTnOqL6bitRoZiU6kWs0aBFPluMCXIkq1702DFokijaOeFVHLHx7V9qUpPqprXy9Iaggh
	jRra0vYXhSOdcAIsKA0PIpb1ceq38qEWMg550yHsaj5hrS6/7veLjDuHd56T9RqdyG
X-Received: by 2002:a05:6102:4429:b0:5f7:24e9:ece2 with SMTP id ada2fe7eead31-5ff20c2db45mr1390346137.28.1772118852459;
        Thu, 26 Feb 2026 07:14:12 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df65782f4sm1847670241.11.2026.02.26.07.14.10
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 07:14:11 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56a9a7e762bso461090e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 07:14:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKI4wwLRmTZKO9+C9FzNP7c+VPCSQFPq4+bR1KDrEyKMIYqhccFHJdBO9zjRa1PRbQOORCA2/+QII=@lists.infradead.org
X-Received: by 2002:a05:6102:3a09:b0:5ef:6550:e9f0 with SMTP id
 ada2fe7eead31-5ff20c71950mr1513822137.36.1772118850413; Thu, 26 Feb 2026
 07:14:10 -0800 (PST)
MIME-Version: 1.0
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
 <20260111093940.975359-6-vladimir.oltean@nxp.com> <CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com>
 <20260226151036.x4z4bdlxwgsqlkhs@skbuf>
In-Reply-To: <20260226151036.x4z4bdlxwgsqlkhs@skbuf>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Feb 2026 16:13:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXKbiKUkP=+FDA_-Kd_qx1X6vzSuyPU+Tdd9MgR=Q5WMw@mail.gmail.com>
X-Gm-Features: AaiRm50hl5iFqVfPGnJ3OyUGaG2ytMnVkvc4q6N2_1XHwxz7HIPlFh5Oi8AcHkM
Message-ID: <CAMuHMdXKbiKUkP=+FDA_-Kd_qx1X6vzSuyPU+Tdd9MgR=Q5WMw@mail.gmail.com>
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and phy_get_tx_polarity()
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Daniel Golle <daniel@makrotopia.org>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	=?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Eric Woudstra <ericwouds@gmail.com>, =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Lee Jones <lee@kernel.org>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	KUnit Development <kunit-dev@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_151414_500506_C45622BC 
X-CRM114-Status: GOOD (  30.59  )
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

On Thu, 26 Feb 2026 at 16:10, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> On Thu, Feb 26, 2026 at 02:22:29PM +0100, Geert Uytterhoeven wrote:
> > > +config PHY_COMMON_PROPS
> > > +       bool
> > > +       help
> > > +         This parses properties common between generic PHYs and Ethernet PHYs.
> > > +
> > > +         Select this from consumer drivers to gain access to helpers for
> > > +         parsing properties from the
> > > +         Documentation/devicetree/bindings/phy/phy-common-props.yaml schema.
> > > +
> > > +config PHY_COMMON_PROPS_TEST
> > > +       tristate "KUnit tests for PHY common props" if !KUNIT_ALL_TESTS
> > > +       select PHY_COMMON_PROPS
> >
> > This select means that enabling KUNIT_ALL_TESTS also enables extra
> > functionality, which may not be desirable in a production system.
> > As PHY_COMMON_PROPS is bool, this extra functionality is even part of
> > the base kernel if KUNIT_ALL_TESTS=m.  Unfortunately PHY_COMMON_PROPS is
> > invisible, so this cannot just be changed from "select" to "depends on".
> > But perhaps PHY_COMMON_PROPS can be made visible if KUNIT_ALL_TESTS,
> > so the select can be turned into a dependency?
>
> Is this what you're asking for?
>
> -- >8 --
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 02467dfd4fb0..1875d5b784f6 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -6,7 +6,7 @@
>  menu "PHY Subsystem"
>
>  config PHY_COMMON_PROPS
> -       bool
> +       bool "PHY common properties" if KUNIT_ALL_TESTS
>         help
>           This parses properties common between generic PHYs and Ethernet PHYs.
>
> @@ -16,8 +16,7 @@ config PHY_COMMON_PROPS
>
>  config PHY_COMMON_PROPS_TEST
>         tristate "KUnit tests for PHY common props" if !KUNIT_ALL_TESTS
> -       select PHY_COMMON_PROPS
> -       depends on KUNIT
> +       depends on KUNIT && PHY_COMMON_PROPS
>         default KUNIT_ALL_TESTS
>         help
>           This builds KUnit tests for the PHY common property API.
> -- >8 --

Yes, that would work.  Do you think it is acceptable?
Thanks!

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
