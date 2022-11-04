Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89239C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 14:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vW/NrTvACyHrDj+sL9HGHmsjedQ2gqhH6exj3K4c8K8=; b=x89wA2hH2+Kquh+uaiXWLrs9t+
	eAPd6ncnebZHd8XmHqD1McmyP4RpqT1c3zUnRAjtkgX71DJy3ue7162YTzxlgVttXbG4NHsCem7cC
	d/tqJb7/3lqy9NhfevWSR8xMGh2PDo1lKzaeMecpRBnMyBluuXkk/SDH4IERWof6ZxaAF61jLZURh
	pvba1LEo+cZKuo9kfarsh2JFCVPJNuTFBE1d1lGEwpLhPs8H38dmXFiz/mUkKDAYPnRlI1xtHFEHr
	7+eYi+PS1WHSeqjEWVs4wj2h1jF9lNI9FgTnY8w3GpNBw/48sU0CSII67r9lhAPAtuG3YaYhCpWVD
	pf7P7Giw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxkf-0040Vc-Pj; Fri, 04 Nov 2022 14:32:57 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxjp-003zz1-BE; Fri, 04 Nov 2022 14:32:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1667572309; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yJcwJHHN5pttniHz+NbbkUJe8GLWXEpymY5u4z+2Tls=;
	b=CpbNQdJ/BWVPt6aAZUIABOUDvKsIEPL9U91j803wkEpi9xnD/0w4adiBYeJcN8TJFfSWVl
	x/lvi9fmHRkBC7J3u5FRclEUbJUWbDpV47bpFyqI8WWI72nrAKvHhlIMavR+GX46Lp5ZKT
	4vVIrBF8TIdJDdEsSYvgVdovc3N1IRg=
Date: Fri, 04 Nov 2022 14:31:20 +0000
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v2 56/65] clk: ingenic: cgu: Switch to determine_rate
To: Maxime Ripard <maxime@cerno.tech>
Cc: Stephen Boyd <sboyd@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Chen-Yu Tsai <wens@csie.org>, Daniel Vetter
	<daniel@ffwll.ch>, Nicolas Ferre <nicolas.ferre@microchip.com>,
	Thierry Reding <thierry.reding@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>, Claudiu Beznea
	<claudiu.beznea@microchip.com>, Michael Turquette <mturquette@baylibre.com>,
	Dinh Nguyen <dinguyen@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>, Andreas =?iso-8859-1?q?F=E4rber?=
	<afaerber@suse.de>, Jonathan Hunter <jonathanh@nvidia.com>, Abel Vesa
	<abelvesa@kernel.org>, Charles Keepax <ckeepax@opensource.cirrus.com>,
	Alessandro Zummo <a.zummo@towertech.it>, Peter De Schrijver
	<pdeschrijver@nvidia.com>, Orson Zhai <orsonzhai@gmail.com>, Alexandre Torgue
	<alexandre.torgue@foss.st.com>, Prashant Gaikwad <pgaikwad@nvidia.com>,
	Liam Girdwood <lgirdwood@gmail.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>, Samuel Holland <samuel@sholland.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, Richard Fitzgerald
	<rf@opensource.cirrus.com>, Vinod Koul <vkoul@kernel.org>, NXP Linux Team
	<linux-imx@nxp.com>, Sekhar Nori <nsekhar@ti.com>, Kishon Vijay Abraham I
	<kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Takashi Iwai
	<tiwai@suse.com>, David Airlie <airlied@gmail.com>, Luca Ceresoli
	<luca.ceresoli@bootlin.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>, Baolin Wang
	<baolin.wang@linux.alibaba.com>, David Lechner <david@lechnology.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>,
	Max Filippov <jcmvbkbc@gmail.com>, Geert Uytterhoeven
	<geert+renesas@glider.be>, linux-stm32@st-md-mailman.stormreply.com,
	alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-mips@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-actions@lists.infradead.org,
	linux-clk@vger.kernel.org, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, patches@opensource.cirrus.com,
	linux-tegra@vger.kernel.org, linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Message-Id: <80VTKR.CE8RVN8M3ZYK3@crapouillou.net>
In-Reply-To: <20221018-clk-range-checks-fixes-v2-56-f6736dec138e@cerno.tech>
References: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech>
	<20221018-clk-range-checks-fixes-v2-56-f6736dec138e@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_073205_924886_26C4A47A 
X-CRM114-Status: GOOD (  35.42  )
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Maxime,

Le ven. 4 nov. 2022 =E0 14:18:13 +0100, Maxime Ripard =

<maxime@cerno.tech> a =E9crit :
> The Ingenic CGU clocks implements a mux with a set_parent hook, but
> doesn't provide a determine_rate implementation.
> =

> This is a bit odd, since set_parent() is there to, as its name =

> implies,
> change the parent of a clock. However, the most likely candidate to
> trigger that parent change is a call to clk_set_rate(), with
> determine_rate() figuring out which parent is the best suited for a
> given rate.
> =

> The other trigger would be a call to clk_set_parent(), but it's far =

> less
> used, and it doesn't look like there's any obvious user for that =

> clock.
> =

> So, the set_parent hook is effectively unused, possibly because of an
> oversight. However, it could also be an explicit decision by the
> original author to avoid any reparenting but through an explicit call =

> to
> clk_set_parent().
> =

> The driver does implement round_rate() though, which means that we can
> change the rate of the clock, but we will never get to change the
> parent.
> =

> However, It's hard to tell whether it's been done on purpose or not.
> =

> Since we'll start mandating a determine_rate() implementation, let's
> convert the round_rate() implementation to a determine_rate(), which
> will also make the current behavior explicit. And if it was an
> oversight, the clock behaviour can be adjusted later on.

So it's partly on purpose, partly because I didn't know about =

.determine_rate.

There's nothing odd about having a lonely .set_parent callback; in my =

case the clocks are parented from the device tree.

Having the clocks driver trigger a parent change when requesting a rate =

change sounds very dangerous, IMHO. My MMC controller can be parented =

to the external 48 MHz oscillator, and if the card requests 50 MHz, it =

could switch to one of the PLLs. That works as long as the PLLs don't =

change rate, but if one is configured as driving the CPU clock, it =

becomes messy.
The thing is, the clocks driver has no way to know whether or not it is =

"safe" to use a designated parent.

For that reason, in practice, I never actually want to have a clock =

re-parented - it's almost always a bad idea vs. sticking to the parent =

clock configured in the DTS.


> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/ingenic/cgu.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/clk/ingenic/cgu.c b/drivers/clk/ingenic/cgu.c
> index 1f7ba30f5a1b..0c9c8344ad11 100644
> --- a/drivers/clk/ingenic/cgu.c
> +++ b/drivers/clk/ingenic/cgu.c
> @@ -491,22 +491,23 @@ ingenic_clk_calc_div(struct clk_hw *hw,
>  	return div;
>  }
> =

> -static long
> -ingenic_clk_round_rate(struct clk_hw *hw, unsigned long req_rate,
> -		       unsigned long *parent_rate)
> +static int ingenic_clk_determine_rate(struct clk_hw *hw,
> +				      struct clk_rate_request *req)
>  {
>  	struct ingenic_clk *ingenic_clk =3D to_ingenic_clk(hw);
>  	const struct ingenic_cgu_clk_info *clk_info =3D =

> to_clk_info(ingenic_clk);
>  	unsigned int div =3D 1;
> =

>  	if (clk_info->type & CGU_CLK_DIV)
> -		div =3D ingenic_clk_calc_div(hw, clk_info, *parent_rate, req_rate);
> +		div =3D ingenic_clk_calc_div(hw, clk_info, req->best_parent_rate,
> +					   req->rate);

Sorry but I'm not sure that this works.

You replace the "parent_rate" with the "best_parent_rate", and that =

means you only check the requested rate vs. the parent with the highest =

frequency, and not vs. the actual parent that will be used.

Cheers,
-Paul

>  	else if (clk_info->type & CGU_CLK_FIXDIV)
>  		div =3D clk_info->fixdiv.div;
>  	else if (clk_hw_can_set_rate_parent(hw))
> -		*parent_rate =3D req_rate;
> +		req->best_parent_rate =3D req->rate;
> =

> -	return DIV_ROUND_UP(*parent_rate, div);
> +	req->rate =3D DIV_ROUND_UP(req->best_parent_rate, div);
> +	return 0;
>  }
> =

>  static inline int ingenic_clk_check_stable(struct ingenic_cgu *cgu,
> @@ -626,7 +627,7 @@ static const struct clk_ops ingenic_clk_ops =3D {
>  	.set_parent =3D ingenic_clk_set_parent,
> =

>  	.recalc_rate =3D ingenic_clk_recalc_rate,
> -	.round_rate =3D ingenic_clk_round_rate,
> +	.determine_rate =3D ingenic_clk_determine_rate,
>  	.set_rate =3D ingenic_clk_set_rate,
> =

>  	.enable =3D ingenic_clk_enable,
> =

> --
> b4 0.11.0-dev-99e3a



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
