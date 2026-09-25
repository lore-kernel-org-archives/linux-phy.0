Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497B2C98321
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 12:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wBrC2NL4BA5d+5Vl3BcJcrvk6bT/Qy1AIZAW+9f91s=; b=2v0hhDKYrp1WGi
	l8xWsB8TG0TeSafBbBgtVNVjDWBUfyreVW4JvldGeCCJRu2IeBGya9RBbsXuwT893uIstNbyhrJiD
	A7iitOeWwApD2VgUcr5uvuc79YkmuN/FUjmf0n3aon7jg2CHwtKhQmAzMBQfwPZv0bm2Y+30LrW5P
	cfEw0fw4I8PAPjMkNJQ6IP+0JHporlgUWjZbXwVRuwv34FwVI52FcOclzqtXJjSeZPGH2t5qSs13e
	+VBBCAAFV9M0yKALnlVCzr1WQEwBIdscglimVdCiJ33G8Z2nnhClzLCDNZeM3xFFqbL3ToK9ICzGM
	iHKdJyJZoG/t62tOuPYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5L7-0000000DM5o-3uMT;
	Fri, 25 Sep 2026 12:47:45 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5Kz-0000000DM0R-25wn
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 12:47:42 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49b912d3931so7127475e9.3
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1790340455; x=1790945255; darn=lists.infradead.org;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hVgejJErSi/df8/6avC+kCC2kZbgZL+1y5/eEh1fX5I=;
        b=RY4+Pxn59wsor4m5G30G6lelwdvxY+SP9I7gE8ydAQxEI2sEUaQ87OwtQ7JPO3tebe
         MspalvXufDkG4dOKTnOxuCNmmKk+9wZeF0iT2yoYnc3ZtrDCvVsg5EYjJonFZMMOtQIa
         tvtcCa93KrGyGiNWoO4zui1b/ORfnUUBgMhPbyxYtUZSYstz9Lsuzm55dJsPbkh04CbQ
         4JkvT0FSFx1CAmNOyuA5ouMro9kDZkGx3GMort77K0BeaUaS5btmizNUyjz/udDbYmEi
         sPTggDNj1to0FDFvJ92WeaYWI3pFz4lNz9QNcy60+YVB8SFYNaOWfu7CRkxOnhLzJT2j
         GGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790340455; x=1790945255;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hVgejJErSi/df8/6avC+kCC2kZbgZL+1y5/eEh1fX5I=;
        b=iQzxDW4TfSWA9otzvN4ZQPiI+YKD6OxtR1fN8KrgX7t/3T0gnWRozuhfjNs6Oo2nOX
         qeuG/vZ5HdPUQEaZgUDfjqvDM/J4PZMCgs4qKw5gJUBpYG5Fl1NxRiLq0dBzetIy5wp4
         8GyGgpbsXTlf3Vcih1nxb0sXRj2zxuUqhJW8PeHBLMknoFJFkosiW1R9rA3w4qlihXu8
         8/DMQNCxKQNpgqNQQFVuLNlti5xyjKdbRK75smj1G6Ya4Xs0yplI9WoJ30bf+h/GOF07
         2Euo98TYW5eRr8yM1fkHjatWFYj2xK7qlXTr6oEN2AajvyiBVgN5mweYAVuLWf6f85id
         NHDg==
X-Gm-Message-State: AFuF++luFSrm4W7PddnkGaG1rmOXYgHgKr3+hGfB4xz3EFB1rKs3Fv2b
	yzWfXMLRhds+6jYztK4lYxtgMEbQArQW4LQdwtkyj4D2xGk2gVv0oQBUb1t3qwqEZkI=
X-Gm-Gg: AYBFou0c+rUvMIEWXEVcjtsy2KjhudgBwGKCOrTNqExkRLu58ZOxFjx8UygKcL1UpoV
	Kp9JSE2GCYDqhpHBCmUP0jjX0zba4zylqxh8HyrWD8EEBl9nqe2rd+bPwXqLQVB7Hsv5Dp9lT14
	1e8d4Ys6d49hRBNtB0Rl0elINUHwOFv93KugPfpkPp0/9jnYDDQkXxTcRq9VYf4cs9wTtUWYPsw
	pGQLzKWDdsiCrQirg+vdCMKCubRkDLO5m4K2QzNie0eGCd+DSZmjOfHPKMNhjhHQpDc9qkB4+Pl
	CwimZgCuGfCDB9zfrLj8XM8OrliM0YV4qqurZMWPFYYoNSbDifGFKCCK1ZRgPGMP8K4kf8fvCai
	1ulIRUlu4SfMWkvaAWWTGJQr7NsenE5pH7cTN1kAPH3HtnGay5WdFK1V4lUi4Cr/kZCvpnGyOhi
	l14PIlxmbqU8XbCMVgGpx+iQH5tP+DNfAjMlv4VL+p9fJhLah5YfRKn2yzCR21Yq/+FhcaE3uLz
	2upKkn07/7A8ZYrqg==
X-Received: by 2002:a05:600c:6090:b0:49e:6e94:7cae with SMTP id 5b1f17b1804b1-49fe670424cmr91000685e9.28.1790340455565;
        Fri, 25 Sep 2026 05:47:35 -0700 (PDT)
Received: from localhost (82-67-6-57.subs.proxad.net. [82.67.6.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ff27eabc1sm58460335e9.15.2026.09.25.05.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 05:47:32 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>, Vinod Koul
 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof
	Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrzej
	Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, Laurent
	Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, David Airlie <airlied@gmail.com>,
 Simona
	Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Lee Jones <lee@kernel.org>, Andy
	Yan <andy.yan@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, Emil
 Renner Berthing <kernel@esmil.dk>, Hal Feng <hal.feng@starfivetech.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Heiko
	Stuebner <heiko@sntech.de>, Conor Dooley <conor@kernel.org>, Paul Walmsley
 <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Dominique
	Belhachemi <db@domibel.de>, Brian Masney <bmasney+clk@redhat.com>, Jerome
	Brunet <jbrunet+clk@baylibre.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 mfd@lists.linux.dev, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, Andy Yan <andyshrk@163.com>, Marek
	Szyprowski <m.szyprowski@samsung.com>, Maud Spierings
 <maud_spierings@murena.io>, Graham Markall <hello@big-grey.co.uk>, Icenowy
	Zheng <zhengxingda@iscas.ac.cn>, Michal Wilczynski
 <m.wilczynski@samsung.com>
Subject: Re: [PATCH v3 13/19] clk: starfive: jh7110-vout: Allow pixel clock
 rate propagation
In-Reply-To: <20260904-jh7110-clean-send-v3-13-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132733eucas1p1a6529cb2ea97bc75c9cd190d1ba901c0@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-13-484f9ae72715@samsung.com>
Date: Fri, 25 Sep 2026 14:47:30 +0200
Message-ID: <1j5wzt8plp.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_054737_660009_4E39DC2F 
X-CRM114-Status: GOOD (  15.65  )
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

On ven. 04 sept. 2026 at 15:27, Michal Wilczynski <m.wilczynski@samsung.com> wrote:

> The dc8200_pix0 and dc8200_pix1 MUXes feed the display controller, and
> the rate they carry is ultimately produced by the HDMI PHY, which
> registers hdmitx0_pixelclk as a clock provider.
>
> Add CLK_SET_RATE_PARENT to both MUXes so a rate requested on them
> reaches that parent, instead of being clamped to whatever rate the
> parent already happens to run at.
>
> Co-developed-by: Dominique Belhachemi <db@domibel.de>
> Signed-off-by: Dominique Belhachemi <db@domibel.de>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  drivers/clk/starfive/clk-starfive-jh7110-vout.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/starfive/clk-starfive-jh7110-vout.c b/drivers/clk/starfive/clk-starfive-jh7110-vout.c
> index bad20d5d794a72f071b4d547b7304786a8ba9afa..aeba42cd3c44ba205ced52b1826d2d2de82ad78f 100644
> --- a/drivers/clk/starfive/clk-starfive-jh7110-vout.c
> +++ b/drivers/clk/starfive/clk-starfive-jh7110-vout.c
> @@ -40,10 +40,12 @@ static const struct jh71x0_clk_data jh7110_voutclk_data[] = {
>  	JH71X0_GATE(JH7110_VOUTCLK_DC8200_AXI, "dc8200_axi", 0, JH7110_VOUTCLK_VOUT_TOP_AXI),
>  	JH71X0_GATE(JH7110_VOUTCLK_DC8200_CORE, "dc8200_core", 0, JH7110_VOUTCLK_VOUT_TOP_AXI),
>  	JH71X0_GATE(JH7110_VOUTCLK_DC8200_AHB, "dc8200_ahb", 0, JH7110_VOUTCLK_VOUT_TOP_AHB),
> -	JH71X0_GMUX(JH7110_VOUTCLK_DC8200_PIX0, "dc8200_pix0", 0, 2,
> +	JH71X0_GMUX(JH7110_VOUTCLK_DC8200_PIX0, "dc8200_pix0",
> +		    CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT, 2,

I see that you've added CLK_SET_RATE_NO_REPARENT following a previous
sashiko advice.

Note that saying it will 'hijack' the parent without it is kind of
strong. It is fine to let a mux reparent while setting a rate, as long
as you understand the possible consequences for the rest of the tree.

Regardless

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

>  		    JH7110_VOUTCLK_DC8200_PIX,
>  		    JH7110_VOUTCLK_HDMITX0_PIXELCLK),
> -	JH71X0_GMUX(JH7110_VOUTCLK_DC8200_PIX1, "dc8200_pix1", 0, 2,
> +	JH71X0_GMUX(JH7110_VOUTCLK_DC8200_PIX1, "dc8200_pix1",
> +		    CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT, 2,
>  		    JH7110_VOUTCLK_DC8200_PIX,
>  		    JH7110_VOUTCLK_HDMITX0_PIXELCLK),
>  	/* LCD */
>
> -- 
> 2.34.1
>

-- 
Jerome

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
