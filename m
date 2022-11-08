Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBFCDC4167B
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 13:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7EDZUOMFDb/A9SdRKmWQMx99cU2YoEW2ZhHWvh+v7g=; b=4mfArEK8Muayew
	q+0ioHcyFnT14dislXK//1iQ0kSYaEx3D1JmfCqEAD/AEq9bp4GxXAuI/36YbyxGwdDjaQGiGw9Ll
	vekx9tecHEu93UovStNuQ9/aFYapBbXG8B4nXloN/LNA8lroxANnadOz3TiIgM2q3JDSUrfN29gcY
	yve0DAu32oTtl8zBE4yMWQGid8D6WuzwlfBQ7KCF3Qdwd1bKsJzjGizO7NMACSPfIYGFI+3D8lOAr
	EZ8Q07WXPuKH9+r8U+JKEOI2XxAa44qxxJxz6l0FUaYO5t51avj7jZ1uDLvkDKti5e9Jnh5IDqgG7
	f6KR6DoA2aGvSf6jrzEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osObU-005bPx-5b; Tue, 08 Nov 2022 13:25:24 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osObP-005bMz-Cm
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 13:25:22 +0000
Received: by mail-ej1-x62c.google.com with SMTP id b2so38563695eja.6
        for <linux-phy@lists.infradead.org>; Tue, 08 Nov 2022 05:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xIunjndO5rqOpIPjGIQJB4TuLtmFYebQ0fOsvPNeO54=;
        b=dY2KECnuVH7NYv0yOK7RrL62QdqUlhl2JmgS7xh7Aop7k+RcPrpLQgabXuGbHHpGQR
         eHydRYWR08BPIi0DGkFfFL5aziMJHQLfVfnBD+eU2h7KlhHzcO6P+1GLNOD4+iPtpIq9
         f+xJ7woffKNTUf34ylHgwFwugM0mjDy+MNR+/tosLv90DX21VaSDgG9tpTl2KCuCdJUO
         uOa6Dv9G/jILV/FYPlkjsMzVEJLK96Ug7G7tfkWymeifahO0bdSmcFGNxzhRtu8RVMPO
         uhbfFCJ4Ya/DrkwEqdNt0sBFZZ7Pau3qynHAmgL94y0H0QvBHa6kKlb7zVfFQiDHP0ks
         6ZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xIunjndO5rqOpIPjGIQJB4TuLtmFYebQ0fOsvPNeO54=;
        b=aUznzD+mS+64K7bTWRkM3YpNJm5m5TlfFJaY2vWxwpOjmvpF659istZGs1JWijXoKL
         jEiopsf/8awahUaU/iZG4PH5vLX01pDoBfRhG9lehw8fqdv2/e0IoCbq1iKyRfM5WgUi
         oF6dBilfcTPjKJQoiCqVVLR7XTDMTWCLaDoBjF3eB0WIfbLu27URmSDpw0qcPlYUXUTv
         yQyi5W43YyfAiUXkY5XJcJRaW+e+IxLhAOwdcUCzkORb1F//g3K3qW4flr341GQ47shh
         6JC3zAQ0suWL9JbyWOj3+KzzAvRmVnPSchevwf+5e+qxPB9eRV4fA4Wq1zLGYtn1cvXT
         xb8w==
X-Gm-Message-State: ANoB5pkgmtVxLVCGsF6erpdAPhzQ96CLNWh3i8fR/udCWAFUyGzfX8u+
	Qvhx5q2GGsS5iKxHkSdx7DSRwjS5/l+RlCs2Z0vfNw==
X-Google-Smtp-Source: AA0mqf68wWCeuB7GkTzw5Vcyy6luDq6tRlJuZOq+6MaYhZcTvhkBj9mitsGYltXA5OQs4b2+osg1ro8i402jh/hf0IY=
X-Received: by 2002:a17:906:6acc:b0:7ae:658c:ee45 with SMTP id
 q12-20020a1709066acc00b007ae658cee45mr11184945ejs.190.1667913915716; Tue, 08
 Nov 2022 05:25:15 -0800 (PST)
MIME-Version: 1.0
References: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech> <20221018-clk-range-checks-fixes-v2-34-f6736dec138e@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v2-34-f6736dec138e@cerno.tech>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 8 Nov 2022 14:25:04 +0100
Message-ID: <CACRpkdYwM6X8bBABCisUGX=P4F=hcFb7QLT3Cu7XUWUvV4TE1Q@mail.gmail.com>
Subject: Re: [PATCH v2 34/65] clk: ux500: prcmu: Add a determine_rate hook
To: Maxime Ripard <maxime@cerno.tech>
Cc: Stephen Boyd <sboyd@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Claudiu Beznea <claudiu.beznea@microchip.com>, 
	Michael Turquette <mturquette@baylibre.com>, Dinh Nguyen <dinguyen@kernel.org>, 
	Paul Cercueil <paul@crapouillou.net>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Abel Vesa <abelvesa@kernel.org>, 
	Charles Keepax <ckeepax@opensource.cirrus.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	Peter De Schrijver <pdeschrijver@nvidia.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Samuel Holland <samuel@sholland.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Vinod Koul <vkoul@kernel.org>, 
	NXP Linux Team <linux-imx@nxp.com>, Sekhar Nori <nsekhar@ti.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Takashi Iwai <tiwai@suse.com>, David Airlie <airlied@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	David Lechner <david@lechnology.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Mark Brown <broonie@kernel.org>, Max Filippov <jcmvbkbc@gmail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-stm32@st-md-mailman.stormreply.com, 
	alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-clk@vger.kernel.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, patches@opensource.cirrus.com, 
	linux-tegra@vger.kernel.org, linux-rtc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_052519_471044_25CFF629 
X-CRM114-Status: GOOD (  20.38  )
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

On Fri, Nov 4, 2022 at 2:32 PM Maxime Ripard <maxime@cerno.tech> wrote:

> The UX500 PRCMU "clkout" clock implements a mux with a set_parent hook,
> but doesn't provide a determine_rate implementation.
>
> This is a bit odd, since set_parent() is there to, as its name implies,
> change the parent of a clock. However, the most likely candidate to
> trigger that parent change is a call to clk_set_rate(), with
> determine_rate() figuring out which parent is the best suited for a
> given rate.
>
> The other trigger would be a call to clk_set_parent(), but it's far less
> used, and it doesn't look like there's any obvious user for that clock.
>
> So, the set_parent hook is effectively unused, possibly because of an
> oversight. However, it could also be an explicit decision by the
> original author to avoid any reparenting but through an explicit call to
> clk_set_parent().

It is actually set up from the device tree, typically like this:

/* clkout1 from ACLK divided by 8 */
clocks = <&clkout_clk DB8500_CLKOUT_1 DB8500_CLKOUT_SRC_ACLK 8>;

So the parent (source) and divisor comes in there.

clk->source and clk->divider is already set up when clk_hw_register() is
called.

So set/get_parent() is never used on clkout.

I think I just added the callbacks for completeness, should we delete them
altogether? The patch is probably fine as-is as well so
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
