Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70250C38A2B
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 13:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNDY7FqCP3ko8Yf4wVxYvQjubmkK3TM8ZgGippnngCs=; b=XXKXk+z6nwRz/5
	u+5gdv/AwBIxX7v9AIqf0tvq/7gMTQDkmhPG/h/4jMVQougZFgrfq/E7GXka4TSH3o4qSrYZutzkE
	IHcoWvqLcUkyGF2WhXJeovvEYYPpSZL9nHeviG+cNkz4NA1hiwHXiiBjSh3xL3CkpxQZO4O1tqFGg
	j1vAvXOUq6sbr8NzRi30FhutOiKAzXLZG00RIRmQqS6Bp06H2p/B/olBbT8DIGqJlwK0N8o2tJEtL
	2ydrLlZv1itiusF/Xa4H0QtHVUd454R44ls3rhTDoTGRmQHrH+an95fByaqNkww4z5HHYTTh1XuwO
	AMyzeLRMX4iDGXF/9kWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osOdQ-005cEf-Lv; Tue, 08 Nov 2022 13:27:24 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osOdM-005cBI-Cz
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 13:27:22 +0000
Received: by mail-ej1-x630.google.com with SMTP id b2so38578400eja.6
        for <linux-phy@lists.infradead.org>; Tue, 08 Nov 2022 05:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N/2yj1vtV3WtEYwU3cNvgg/PVgtVCmwn3eJn8jo49wk=;
        b=VMnat+U1KSonabFKRPuR13L5JqFFcM/AvvqPUwa+9VtqcDpyz6Op4uI9k8fhWWUfgj
         OQMGyd7nBSVagfiyDveayuziCLNEcnxn2ErDoMUoLlpt3yo8/JHVhiTmfW1xUoXEQ8ch
         5jJZRKNOXfrIQxouT0FZtywu8oBKzwLv6/7PIprEyWb5tHAmIqyiFvsPphy4dzO+D1O/
         ByJEsT3p8EBbAPP+gKvFSCFRhufjqGSeVaHTdjl/xTUCo6crbpyBuirSVOUQflk15qBf
         1q39gU7+oVdTRiJwpV9lCujVgxFVrOBGfRo6fbxcreewXR1hDWvKWjF1rSAwPNJVX2jh
         IlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N/2yj1vtV3WtEYwU3cNvgg/PVgtVCmwn3eJn8jo49wk=;
        b=fskrC0MGcpOWfE8Pz5MCw5L257CXo8dI1UjwiVZ2g9Kzj/sEBQ3zwVlfkDmdwcyf2c
         twNLm2X9PGYc+rF8JpQ0WjiUwTA3CYubk1XNCB+Ux9RvGaZzodRElreh/LPPOWORRa5N
         fZA9Fb2sCF86UazLk0g+B40E7xTdjVeX4U7ArmAoKNDLorguiBOPWlSc2q091ZQZxEP3
         3NOfKWa/EJ9AIcnSwIwxj+xUVIEtcw6scb1yT/LjD6HnGG1CQOoizvr/ibmVhp5rLP27
         UGpacMUcvGxq8n3AgARQhWKNOYbGRQ25x5U/92VQ60Oalc2K/TYeZoT4VCHKb/OSy+BV
         1sRw==
X-Gm-Message-State: ACrzQf3GDIPwWNfDGKzuWTdExTzWKbIRLtTxIY39XgJHVcQZoau7B8L0
	dYB0B6PFlwPG3GYe22ivKmNlLKARTqnuPwHMzJ4llQ==
X-Google-Smtp-Source: AMsMyM4SQlliAGfUpQoe5HVHzBogl+LIrkzKv8wyDOakcTA7xnKfY84HO6wUWBApVXLz+WmeEpt0AVEmstNop5fvJLQ=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr54058070ejw.203.1667914037645; Tue, 08
 Nov 2022 05:27:17 -0800 (PST)
MIME-Version: 1.0
References: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech> <20221018-clk-range-checks-fixes-v2-35-f6736dec138e@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v2-35-f6736dec138e@cerno.tech>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 8 Nov 2022 14:27:06 +0100
Message-ID: <CACRpkdaOM=T1pRJNK6hdc76m5tQfrjvF9nVBp7ZDf3wOMNSwyg@mail.gmail.com>
Subject: Re: [PATCH v2 35/65] clk: ux500: sysctrl: Add a determine_rate hook
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
X-CRM114-CacheID: sfid-20221108_052720_462506_700CD9D1 
X-CRM114-Status: GOOD (  21.92  )
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

> The UX500 sysctrl "set_parent" clocks implement a mux with a set_parent
> hook, but doesn't provide a determine_rate implementation.
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
>
> The latter case would be equivalent to setting the flag
> CLK_SET_RATE_NO_REPARENT, together with setting our determine_rate hook
> to __clk_mux_determine_rate(). Indeed, if no determine_rate
> implementation is provided, clk_round_rate() (through
> clk_core_round_rate_nolock()) will call itself on the parent if
> CLK_SET_RATE_PARENT is set, and will not change the clock rate
> otherwise. __clk_mux_determine_rate() has the exact same behavior when
> CLK_SET_RATE_NO_REPARENT is set.
>
> And if it was an oversight, then we are at least explicit about our
> behavior now and it can be further refined down the line.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
