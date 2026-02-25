Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A30EFD374E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtx45MRovKsOqwQK+zO4BGSOKKxBXCVSDUJgSKYggIo=; b=cdP6non5rsOpZ8
	/9kcUjkozgXCvapM94Ju8pD4Ve0MBhBwyFFXam23tOhG0OF8tKEto2kYxm4syVT+LM73jV1O16z0l
	w/9k++eAqtxLmsmN+I/EYkqRCVnuK3VIaaGIQc5IVvO4uHt32LQCBgZ+gPCtAPY77V844z526G2Bd
	eL2+JcF5ldw7SRYY+FP0HFtpsn4gv/oyCZCSqrOsbHosxEsFp0t80+YOQXWnMcydrJLIoqwN0HemU
	66TnwAxKq/7J7HnooBM7I1HBUaDrSCBgW07RelU0DCntD1e7WcUrEw0+0wWzc9a2IvkKlOy4DPDvV
	Pb3BhWb0ZKl/ltDw59dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDoE-00000003yFU-0YCi;
	Wed, 25 Feb 2026 12:16:06 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDoC-00000003yF2-1stQ
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 12:16:05 +0000
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7d4bc6a8021so5292462a34.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 04:16:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772021762; x=1772626562;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TQ9plTAtoqFGycuAV6Q4VO2kslCQXeQ3NGwgtKeiuo=;
        b=DmTDTXJTdD7pMNA3hB5YKqLVHslh51kkVUDVOE5yXjzFI6K3pQGIOeENO/2NC56eSi
         s+UBxIlf8PhxZ9rNAaoxTMFYHup/Pe+f1PoDbyp64dgzeLwObFIh8h9+uto+GLV4PrYc
         OJikGJoycmZ5FgeVMVUjfKrt6LL828wWsC3WnhsmaxRWyM0K2CVq/AJpIfxkbJHsLFEh
         mBXcvm9S6K3n1hTz3F0eXLN6uat7IQ1zrsiWqm126IBlnYGsQDjIg26fqtaXmqj1aVTp
         d+GMicaa1140qsJNIimcyoUgY4PhqVbdUx0KH2zPRpOawXoyVHsHgjUIZ2DoOa8I/8XJ
         pa3Q==
X-Forwarded-Encrypted: i=1; AJvYcCV5Kn0x0Yy/8tfyPeMzu+xwuV7J/7v/ymBh8k2+gyWMu2BWVaFNQj9D5BrZVWxX58BqWCNqzyDD8Yo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxymEO464r7yTSolxxB0YfV7EaYUeixkbX1jaUGYBF32RaojRON
	9hv3DnxFMOtKC+/Va+qW9igZ19pBV3kjEe29zfQiwQ38NWiC3z5zArB41FJ5gPPW
X-Gm-Gg: ATEYQzxUf56dwd3oir79p4Zam1wrm+8fyDEI2HR+AqHRh4NfxfnhOHFPMiaahr2si0B
	S9UbY7EtE2B77wJAsVDL61AX2WxJKuC8wVCGcuKLDFfStmHRuNdo0m4OMbfJ91TB99fsX5Jq/An
	J80eZGqHG3niNIT0N2mI4PuPc6GS4Y8K9ur/ZoYcjF8q7xLLUO0WBsNUYSTHM/MJeb8Jf4AoMUa
	tYxrtotc2Nxc3JehHvXBpVeBgrLHP9SnvoM5xbhr0j70waGvdBodCzD6Oy3k3S8O7Tj3zX2pKW/
	8OpMAssQ1uyjMci61FxIzp9oVUaXa8+qVwbLIVRtTz8GAQt/J/an1ZL+X5XZe2Sjra/+g+l9/mw
	xxCWtOGZffjU/9m90mATJ1BBDUaCuXuR8WTKHMmsdjSyCrtLHkcJStWFiWSMGxkW0+ZL8+MaPKa
	ee96VXU1QrHh3oC6Ps6y8JWJiCTbeCGdms13tQNlk2cj28osWWYkNDDqgrvgcE
X-Received: by 2002:a05:6820:4b07:b0:662:bfe5:92f1 with SMTP id 006d021491bc7-679ef9a8d8amr121981eaf.65.1772021761888;
        Wed, 25 Feb 2026 04:16:01 -0800 (PST)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com. [209.85.161.43])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-679c564489fsm10772075eaf.4.2026.02.25.04.16.01
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 04:16:01 -0800 (PST)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-673ee2a98b1so4033340eaf.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 04:16:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU3qJgNFlxN4g+vqhT5WiZ4FQeMi0cAi2YhCR5CmuyZzSn4fM9R1X/1Q9ioOCWBpt40+BT/MTa+0cM=@lists.infradead.org
X-Received: by 2002:a05:6122:8c27:b0:563:702b:e2a7 with SMTP id
 71dfb90a1353d-56a8bcb7a04mr108622e0c.19.1772021289726; Wed, 25 Feb 2026
 04:08:09 -0800 (PST)
MIME-Version: 1.0
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com> <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 25 Feb 2026 13:07:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUSU8Y9gj5qJ7qNE1UVhp7=HTjAxEsL6uZXPXFgwTd+7Q@mail.gmail.com>
X-Gm-Features: AaiRm538QW2lNPSmHsPdoAK0GxPwumP2I07aJZ0lsRKIlDak2p-vOeVkZ133ww0
Message-ID: <CAMuHMdUSU8Y9gj5qJ7qNE1UVhp7=HTjAxEsL6uZXPXFgwTd+7Q@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] mux: add prompt and help text to
 CONFIG_MULTIPLEXER making it visible
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_041604_492833_2E01CA50 
X-CRM114-Status: GOOD (  30.97  )
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

Hi Josua,

On Wed, 25 Feb 2026 at 12:35, Josua Mayer <josua@solid-run.com> wrote:
> The multiplexer subsystem was initially designed only for use by drivers
> that require muxes, and did in particular not consider optional muxes or
> to compile as a module.
>
> Over time several drivers have added a "select MULTIPLEXER" dependency,
> some of which require a mux and some consider it optional. v7.0-rc1
> shows 15 such occurrences in Kconfig files, in a variety of subsystems.
>
> Further some drivers such as gpio-mux are useful on their own (e.g.
> through device-tree idle-state property), but can not currently be
> selected through menuconfig unless another driver selecting MULTIPLEXER
> symbol was enabled first.
>
> The natural step forward to allow enabling mux core and drivers would be
> adding prompt and help text to the existing symbol.
>
> This violates the general kbuild advice to avoid selecting visible
> symbols.
>
> Alternatively addition of a wrapper symbol MUX_CORE was considered,
> which in turn would "select MULTIPLEXER". This however creates new
> issues and confusion as MULTIPLEXER and MUX_CORE need to share the same
> state, i.e. MUX_CORE in menuconfig must not be set to m while
> MULTIPLEXER was selected builtin. Further confusion occurs with Kconfig
> "depends on" relationships that could reference either MUX_CORE or
> MULTIPLEXER.
>
> It is common across the tree for subsystem symbols to be both visible
> and selected, e.g. I2C & SPI. In the same spirit multiplexer needs to
> ignore this particular kbuild rule.
>
> Add prompt and help text to the existing MULTIPLEXER symbol, making it
> visible in (menu)config without breaking existing "select MULTIPLEXER"
> occurrences in the tree.
>
> Select it by default when COMPILE_TEST is set for better coverage.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -4,7 +4,14 @@
>  #
>
>  config MULTIPLEXER
> -       tristate
> +       tristate "Generic Multiplexer Support"
> +       default m if COMPILE_TEST

Please drop this line.  Merely enabling COMPILE_TEST should not
enable extra functionality.

> +       help
> +         This framework is designed to abstract multiplexer handling for
> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
> +         controller chips.
> +
> +         If unsure, say no.
>
>  menu "Multiplexer drivers"
>         depends on MULTIPLEXER

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
