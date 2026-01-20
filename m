Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF73AD2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 09:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToWfJETn2GqLIfRsInF0o16MrX60OuqOw5GwGnBDm7o=; b=jyAEIx8Ucs5fXA
	eMrFZhRGKImDvX9uh3wmY7fHyjygA7lwceVGAn3aQkqtKRxVsp28iOQv0B5P1G9VK9ghsy8qQaDH8
	9lRIa7Zsu4Rgs7gcIc8jEcv3UReAJo2exEio1emVtrrCg1BisvSHW217KXuksFjMClsLPj+vaogJz
	HE8dn6o2/BEwVU7tJoYYmwEI2RvcuGu9UNe9oKoEd96rAXqyWpFVJZcQSrrgvi8aWX/i9jqTWPf+z
	E34WSlv3Ga76X7FSxCe+eYE0pZK0XPfTf+zBII3cBW/80qdBGdPkpDRlJh0OfELqemkajDJoEP4l4
	SSq2GQxvW00MJGsFv9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi88y-00000003XXx-1EzV;
	Tue, 20 Jan 2026 09:35:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi88w-00000003XXg-2FeY
	for linux-phy@bombadil.infradead.org;
	Tue, 20 Jan 2026 09:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=97LNh80TR77S8pwS2e4ZBU/MTmpHjj3Q16znIrdsedk=; b=EKAzBg5iQZiDdL6C/1myzhWfyk
	6TLS+90g/2pe51CkwHdL37XLcZwp5GCwGxqdMgQ+ICbLbfCQ8IDMmr3koSBdsssnC5QY/rQUS686E
	Fez4S1Zyo026VrMQLgTK96PIpltOhiSsVoqUexSwS6H39vtH5C9YaW4Wxb91aWXxRzuAGmlzvk6Rn
	7arEGTRcUYHiU9Lt1JP+msKp/L1veBmABHMN1b+DvI+JFLfROPGV8SqHAo+AUd9rC1VkU/qRxJkxc
	9oDEUcbmKQyxr8w3AJyS7dE9qAyr/bHo9LP0hW0Im3sf8u7A1TxpofLmPRfn7nZcKnD9nRyVkviLN
	pBZSlheg==;
Received: from mail-vk1-f176.google.com ([209.85.221.176])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi88t-0000000DiNm-0yzf
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 09:35:21 +0000
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5636784883bso4227461e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:35:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768901717; x=1769506517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97LNh80TR77S8pwS2e4ZBU/MTmpHjj3Q16znIrdsedk=;
        b=Ham6SPqcXVEEwyxFqm/xXtoBW1y7ifA+gd7Nh/bmd3q4wNhe5cH/AKjjZXurZIEFsc
         LFbFZLK3K+P6ofyV5LeLWdauyBQjufPOFL4Q1P4pe7R6hjjWvLLnJJWS0Yv05myLKVUw
         QhNdSL77XAVAI/lzOQ1YJaKhxPYsbWtt8mOaW4fmgb9MDDH/t0LRDyZKyU4H9AbSG+jB
         AO+eGQNLxGOaHzIVADxLv3Z1TjeCp5uMmtg+RWZ9qGivPvFhtd7m618YYX0k+IycIdQf
         AOBDXEL6hYARiv0ynQ/p4Zc+oiz96zvmDPubMhOoZUhUKgK+QdJFXW2IBfkFIcruQoAw
         1lGA==
X-Forwarded-Encrypted: i=1; AJvYcCWTYSdgkdRbA19q6IScu/ZTG1U8oaJsXrzsWytgSNzR4W5IZf880E+nLRA1Ja6VJ6UethY3Ys1mLfw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYME6v1Np2WEAbl+gwEh76w+9ws8OlM+GyeOtyx+0MTphqfQ9i
	b13fss5q+Jrbk+C9GWuaXhKY+Yv0odUJqf8huTtK4NJdKuUuKCiGfg7rcZIJF1hA
X-Gm-Gg: AZuq6aJCkQuSCR+kkgHDGIOogB0LYTiAmSa2wtAaVvNoM7QGC8/APwD0uyBxonAvWdk
	SNxhuKc4+SOR9Wy9yx17yUbxxRDklLbxBLaK2I2hWUr1FQ81yTuzA5OYqKJN2lM4p9e6xYFMBhS
	D6BM4the6PWbhvuakjXCR+KuV2sPlPG8p044Zr7RieF2HSj1RPklc9zazA+Hmo17OEmKZUViVWM
	AOHAZmPW6I5RUf8Gkfj3LRwBmViKS00OWB3lBMw4TMZdHdSO+fcSnybTHd+pt8BgI5qoB6PBK3d
	FFlKm2s/gIZwYxdQLCiTUAFWj/TmzisoVqBZauKw8JtQCor0rXMV0eGnd43TlGA+A+GQjbo21/d
	ncVp2jb/MWkquHQmdkG20G6Gg6TT2izgrYQLSQ8p6zSHbzVam7SrdQetCyULrq2QUCmQxOSawS2
	1erEtvXfsVWRp6JnXvIBw+Pg2XEgeKkmNk7N7VHC0h+pbMiYLSpqj6WB3woDTzyTE=
X-Received: by 2002:a05:6102:950:b0:5ee:a0e6:a9f4 with SMTP id ada2fe7eead31-5f1a6fce31bmr4574760137.12.1768901716726;
        Tue, 20 Jan 2026 01:35:16 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6d3ca2esm4526696137.10.2026.01.20.01.35.15
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:35:16 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5636784883bso4227445e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:35:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWwlHS1Hi2V370NB5HpLVS+4SqL5hwmg0Xc290MgqVyP6vEiR9MJyOloShMbBbu8mDSjnzpp/Krn58=@lists.infradead.org
X-Received: by 2002:a05:6102:1610:b0:530:f657:c40 with SMTP id
 ada2fe7eead31-5f1a712440dmr4338759137.22.1768901715766; Tue, 20 Jan 2026
 01:35:15 -0800 (PST)
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-1-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-1-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:35:04 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVf7MjEAaTAy3kgaTcfs240UcnL_yFWfYH_eqVfp-6jvA@mail.gmail.com>
X-Gm-Features: AZwV_QifN5dzgWIfmsNWfdw085d37JEd6a5y3M-TObPOlkszfcRmE9SintqdNzo
Message-ID: <CAMuHMdVf7MjEAaTAy3kgaTcfs240UcnL_yFWfYH_eqVfp-6jvA@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
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
X-CRM114-CacheID: sfid-20260120_093519_310493_12F4AC29 
X-CRM114-Status: GOOD (  14.77  )
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

On Sun, 18 Jan 2026 at 11:29, Josua Mayer <josua@solid-run.com> wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
>
> Acked-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on v3 is still valid.

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
