Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B559C021B2
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 23:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyFigK3oRUSJVVpmzkrsT+e9hnEf9QkTr01yLaZKgxQ=; b=LZgxns6kdTxY8n
	jS4goynHAo6SUt1MJ/jqJIG/RCvoL149wQJxroLJ/KLTY0Tii4zBCFvhrplzLeiaMBpxbqbbc9hhM
	V95iWuvS/ntq+jJvUntMYMxST+fKPxSLDgX03mtZML0r1M29XeT06D5tJVBpBdm4NhHFITwHE6kKw
	WmXxF4OKfoI0BjFiQG7tOHXWBg83N/1jwaYka8qf6HTCqFNM2aoptLhtoVplE++md0XAaCXba+eUD
	1xkHmMW34Ig/KoSJqSysBiD9UCspZs7Qp8E/FDk7UKlQtYYl7z8Jf4OR12nxEPNUlWGsPh+2RZh46
	y5Jj94fzu54GYcBkvFxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLa4-0000000BylT-1ElB;
	Sun, 23 Feb 2025 23:40:16 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLYa-0000000Byd5-12O8
	for linux-phy@lists.infradead.org;
	Sun, 23 Feb 2025 23:38:46 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-6f4434b5305so30962307b3.3
        for <linux-phy@lists.infradead.org>; Sun, 23 Feb 2025 15:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740353922; x=1740958722; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NorJPaAWMRgfUr5xe1GpsIw0IDjSs1x/V3X7c0koEtI=;
        b=dEkvN+WicwY3b6HZjnSy6qbsX22AMgYRrpZE5Si5OVHz6a7ZY1JagpQT139Cqlfi6g
         mz1FUjdqd7xHwkCJccVCAa7vgzv8Jh8JNW5DF6bGAatvYR0OmUO3ZqeoGDbPWq/8LAf+
         SURNvaGWSl4DzKed4k/APHf8ya+yKMwqHnPkLd9U+IUgNHOD6671xaEwznhY8do0VDqy
         Rtu2lJjMaouDi1Rk8KTkHlnjMlGo3D/l4HHxUs1/fii1I3qU4OtQTVWZqgvx0ia0HQPQ
         Hj1GOMA+72z9n9ppsvE9FOU1t21FpZNOs91RD3/a93Yw8Ym5h4FdZ6sGz3Fi4MBSLdVm
         t1aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740353922; x=1740958722;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NorJPaAWMRgfUr5xe1GpsIw0IDjSs1x/V3X7c0koEtI=;
        b=gas5Ukr8endm7smlUp9+G8LdOeBnMflBGtqTJefNp1rZJV0GceGsuBBEMEXvOkwl4Z
         f+zc1XuyRoDhRiWx1RuW1lwoSQ9oNNYO7wkyWKH+Gv8PhNGDKKRzFvNECCQ+nfEMEeZO
         qQmLcOT3+48NzeODV1geKMHGAhVK2gHUxgC6DO2q164UvignhkhH1jynx6siU8zNq6QQ
         8/f2TwPEgmL24CVcHq49LLei2GXryvvlux//J1fBMjcZPH3+SR7p+/XlaTav1ATMdGH5
         iXKh6gbL6D4gWKKy5xiePf7kBa1R+jKumkb84mb4dW1orfU+tV8qNfVYWXileikGgisW
         NUFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsMYzPwlvL/59pltVLk1yvpBTQf/Lh6CNL1iFUQNpsCSA44JbfxqHUlXphV/UUPk72FWBGs7J2fuY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL5wPyFYdiPdw6Efy0r0eVm4ApqDGuhVdsqy8S9OrltteXjieb
	zLOd5jyLwaD8Qjwg0pbMQZEsA3bVlKjpY3R5qRD6sBEoPJ7g0eOWSu/5poV23H8+eusm/I9BubB
	wYHdR55FnqVPUyWth4OPBSp+DTg6T0QAEoDuY2w==
X-Gm-Gg: ASbGncs7q1zB2wRkyZ5m5ylOHKHJvG7cMvsamNykDerA5JKm6sj7lEsBFLqDW3dihJI
	0FOMbJUq1dXJNYbqkssHVpyueVWTtu+3JAabr7DVem0sY9CAaOA6gWLjN+Z/HG+qOGV8IiYIhZ7
	Q0m3jQGDfQkRm5vvUfnZaqYIAvZBt10Rm/u/YZhXw=
X-Google-Smtp-Source: AGHT+IGFegxU0/BAO58BmfLqgVu14539PaOFZp3Jh6MOJGQnzwNm3VyUN+k9CDauRsvVnXt6ZCaaCQFePUkkFp0b59E=
X-Received: by 2002:a05:690c:25c5:b0:6f9:7d7d:a725 with SMTP id
 00721157ae682-6fbcc3ad1abmr98769257b3.33.1740353920862; Sun, 23 Feb 2025
 15:38:40 -0800 (PST)
MIME-Version: 1.0
References: <20250223-phy-sam-hdptx-bpc-v3-0-66a5c8e68327@collabora.com> <20250223-phy-sam-hdptx-bpc-v3-5-66a5c8e68327@collabora.com>
In-Reply-To: <20250223-phy-sam-hdptx-bpc-v3-5-66a5c8e68327@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 24 Feb 2025 01:38:30 +0200
X-Gm-Features: AWEUYZmTHJ2dAKAOg_4O6EdrI6McHGH1cJfHE45231CZ1NkDjfb9qIrmX-8DI0c
Message-ID: <CAA8EJppjRFWXXYSp=SKPKBV-ceO7gu3n37k-5eUeYG_x6rOmsg@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] phy: rockchip: samsung-hdptx: Setup TMDS char rate
 via phy_configure_opts_hdmi
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_153844_298726_CEED9160 
X-CRM114-Status: GOOD (  25.33  )
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

On Sun, 23 Feb 2025 at 13:02, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> The current workaround to setup the TMDS character rate relies on the
> unconventional usage of phy_set_bus_width().
>
> Make use of the recently introduced HDMI PHY configuration API for this
> purpose.  The workaround will be dropped as soon as the switch has been
> completed on both ends.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 37 +++++++++++++++++------
>  1 file changed, 27 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index f9b5c96d6c789e435657e224032d35b5a6950945..dd91a7272e246b2133112effdb080a847fd15abe 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -402,6 +402,9 @@ struct rk_hdptx_phy {
>         int nr_clks;
>         struct reset_control_bulk_data rsts[RST_MAX];
>
> +       /* PHY config opts */
> +       unsigned long tmds_char_rate;

It's easier to embed struct phy_configure_opts_hdmi here, in the end
you  add bpc here in one of the next patches.

> +
>         /* clk provider */
>         struct clk_hw hw;
>         unsigned long rate;
> @@ -1413,19 +1416,21 @@ static int rk_hdptx_dp_aux_init(struct rk_hdptx_phy *hdptx)
>  static int rk_hdptx_phy_power_on(struct phy *phy)
>  {
>         struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
> -       int bus_width = phy_get_bus_width(hdptx->phy);
> +       unsigned int rate = hdptx->tmds_char_rate / 100;
>         enum phy_mode mode = phy_get_mode(phy);
>         int ret, lane;
>
> -       /*
> -        * FIXME: Temporary workaround to pass pixel_clk_rate
> -        * from the HDMI bridge driver until phy_configure_opts_hdmi
> -        * becomes available in the PHY API.
> -        */
> -       unsigned int rate = bus_width & 0xfffffff;
> +       if (rate == 0) {
> +               /*
> +                * FIXME: Temporary workaround to setup TMDS char rate
> +                * from the RK HDMI bridge driver.
> +                * Will be removed as soon the switch to the HDMI PHY
> +                * configuration API has been completed on both ends.
> +                */
> +               rate = phy_get_bus_width(hdptx->phy) & 0xfffffff;
> +       }
>
> -       dev_dbg(hdptx->dev, "%s bus_width=%x rate=%u\n",
> -               __func__, bus_width, rate);
> +       dev_dbg(hdptx->dev, "%s rate=%u\n", __func__, rate);
>
>         ret = rk_hdptx_phy_consumer_get(hdptx, rate);
>         if (ret)
> @@ -1734,8 +1739,10 @@ static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opt
>         enum phy_mode mode = phy_get_mode(phy);
>         int ret;
>
> -       if (mode != PHY_MODE_DP)
> +       if (mode != PHY_MODE_DP) {
> +               hdptx->tmds_char_rate = opts->hdmi.tmds_char_rate;
>                 return 0;
> +       }
>
>         ret = rk_hdptx_phy_verify_config(hdptx, &opts->dp);
>         if (ret) {
> @@ -1830,6 +1837,16 @@ static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
>  {
>         struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
>
> +       /*
> +        * The TMDS char rate set via phy_configure(), if any, has
> +        * precedence over the rate provided via clk_set_rate().

I think this is not so nice. It makes CCF desync from the actual rate
programmed into the hardware. Maybe you can make the clock r/o?

> +        */
> +       if (hdptx->tmds_char_rate && hdptx->tmds_char_rate != rate) {
> +               dev_dbg(hdptx->dev, "Replaced clk_set_rate=%lu with tmds_char_rate=%lu\n",
> +                       rate, hdptx->tmds_char_rate);
> +               rate = hdptx->tmds_char_rate;
> +       }
> +
>         return rk_hdptx_ropll_tmds_cmn_config(hdptx, rate / 100);
>  }
>
>
> --
> 2.48.1
>


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
