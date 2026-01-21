Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50451C44503
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 11:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgnBf5mjTdfOFET/yU73OQuzQpG0jwvaR9FxwiweFe8=; b=qFAtPnd5aurvfX
	dug3NCRYIZziVrBXSuGF2E/yh3uuEsFsP7h3eo9UJvT7F0PUyC0OxJhZEvVfA/6At2LlBDMgV2icb
	m2qfRc3bSDVxBiZ/+71ryH/SRGm0BJu4T+Pk+t/tWLSTRVxno+ZYfIprcADHiTeB2a57K0F/fY0RD
	joLApIeEwTSO+TO9zrTbMb6gjThLR4CmHHTemjtadWTvD88lCEKaP+Mi7pz9rHeEw708Y0zIE7p65
	OqNOCF32crbHROwhxqXj1aamCIeeNAA+AwrHT5JSb3qWJVFeacYgwJ/pO0OJPvGMjFgXUiutpQZVH
	PEgIc9le/I+IiFNXJgzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVwb-00000005JVI-37kp;
	Wed, 21 Jan 2026 11:00:13 +0000
Received: from mail-vs1-f41.google.com ([209.85.217.41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVwY-00000005JUt-3gwR
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 11:00:12 +0000
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5eb8f9be588so5580894137.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 03:00:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768993209; x=1769598009;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSYJm8i9wWqRvGvRTZz6VIsl7/oMewZT8tw/+hAgWzw=;
        b=e9n33yNCYhdoxtfxFjYs51yNKnViizrThUhVpObVZozRvDxQNC2pvDLS2xaQGcXYXD
         Cbi0Zd7CqkB2JI06P99JxHclxIcxGACyvmwi1pyjRh5wtJ73LtH6wnANKZBT6SPJb2tl
         OffhBk4hmoBPgfPRj1z4gyu8VnviyhyswTshPLmeggQ9+NeMMCGyf2hb//AbZ1Y6A4eR
         wa2hz4uVf06wEqqnRkOqUWhBFUkzitxp1wXTLkrTgRALcyG5bu9hOmU6B6qviGc5y9Bo
         SBApd+EiEX24adpYUGmurU6wlsicUvfwd8ZGuTH8Sg347odF0gWenEJPfPr/e1KcS+uR
         Bb2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVYwTWmtNOUNkZ7zNvZnOIQUlhFv/XmLQEXNBUVe4uON33/JB1vZbfn0MfDPLOXbsshvlix24TUlI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSgs+xxD8pYN7UcNT4iJSBsr1iZTdgFQpEk8K5C+wvOxsAf2J3
	UYqFAVrkBwhDlTDF0wbQvn7Vq5Z1ps1ashj7qUg8soNOBx9aTZbIa8kExvm0wzcI
X-Gm-Gg: AZuq6aK7PNeIzyKyVFfCoeA+DfEijjkVVdeYR0DZl3bTJd/ZxtzT1lKf6IZCq4dpwFt
	IqHjP3HSH2JztIWsJpJpCR73Yp1MPe4iOCw+YMQWMqxQ72va/NUNKvFv0BUyLdh/IzijDtv5Glq
	DEqf7wfk97w8ktzr1Mo7iBs8SEX/vD9oBSCb+leRjl/fKh5ce7ab5+g+12i7YPHPgxsiiERlEL3
	B6H2BlmlWoJsBH7PYNrG1UzQaOEg75pNlLeZAbf+qmkp9Z0mC7e96Zlqn0bF9oqmMHZ4LvM4VL7
	U9es60Ie9zFm7vXiYXJQexcO0cBJwAqdLSrtAvJHDyNXFfQK2jb7wOm2Od7NZtrAByRH/Nog5A9
	F3PU2C0L8nCoidDV2J+z9zgWUNCEMOqOS+9MXVHChMlg8Rn/SZtn2SkMd93nkubGpjr6f348j2i
	hmJD/TFtjdiGQuSxTtx2ffeeKFJVeT0sepP0xt7+fuBbVuj5fE
X-Received: by 2002:a05:6102:6cf:b0:5ec:c528:4df8 with SMTP id ada2fe7eead31-5f1a7129a0bmr6126069137.28.1768993209131;
        Wed, 21 Jan 2026 03:00:09 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a694494asm5031580137.8.2026.01.21.03.00.04
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:00:08 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93f56804894so4079024241.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 03:00:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVGfVvpg3lgbNg79NLUmzdtNbhNQuhsBTbIvP1poKrRQWs+xgItreJz608/nuO/OCfRTereS8PEToM=@lists.infradead.org
X-Received: by 2002:a05:6102:2ad6:b0:5ef:248b:d533 with SMTP id
 ada2fe7eead31-5f1a716fcbcmr6150752137.31.1768993204250; Wed, 21 Jan 2026
 03:00:04 -0800 (PST)
MIME-Version: 1.0
References: <20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com> <20260121-rz-sdio-mux-v6-3-38aa39527928@solid-run.com>
In-Reply-To: <20260121-rz-sdio-mux-v6-3-38aa39527928@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Jan 2026 11:59:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX_rKgfusHP5qVny8OZufU6VAiA6sqg1LP3T2jikSz7yQ@mail.gmail.com>
X-Gm-Features: AZwV_QifTISU05sQ0lYySqx5XyPjAzUqa1H8fmOUOfLhWhGN7rzCzfM2UGq26-s
Message-ID: <CAMuHMdX_rKgfusHP5qVny8OZufU6VAiA6sqg1LP3T2jikSz7yQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/7] mux: add help text for MULTIPLEXER config option
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
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_030010_929979_809E1410 
X-CRM114-Status: GOOD (  21.30  )
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

On Wed, 21 Jan 2026 at 11:02, Josua Mayer <josua@solid-run.com> wrote:
> Add help text for CONFIG_MULTIPLEXER to allow enabling this option
> through the kernel configuration without explicit "select" driver
> dependencies.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -5,6 +5,14 @@
>
>  config MULTIPLEXER
>         tristate
> +       help
> +         Generic Multiplexer Support.
> +
> +         This framework is designed to abstract multiplexer handling for
> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
> +         controller chips.
> +
> +         If unsure, say no.
>
>  menu "Multiplexer drivers"
>         depends on MULTIPLEXER
>

Unfortunately it doesn't work like that. As the tristate has no prompt
specified, the user will never be asked about this.
You should use something like below:

--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -4,10 +4,8 @@
 #

 config MULTIPLEXER
-       tristate
+       tristate "Generic Multiplexer Support" if COMPILE_TEST
        help
-         Generic Multiplexer Support.
-
          This framework is designed to abstract multiplexer handling for
          devices via various GPIO-, MMIO/Regmap or specific multiplexer
          controller chips.

Sorry for not noticing before.

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
