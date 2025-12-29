Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94416D3B7E5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 10:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cDoN1El7Np9B+Jd7UGg5d32InNGCVuAvp19L+B/jDs=; b=3ljWUe2o5spjDW
	jrGLP3SmL5sbRiJn+y//D3yn69401xeA/lW3CtYTaegYinSySsUb5a9tkGWcAoLxc+UoNPAKCqEgX
	lkmq05F9i8Cjp5PVKTvQPsQZZFc29+P8m7pS/YquGpoIo7G36CY99q7u4JwTbh1MVsB0Wcz9XiO53
	3OXls3n6BK1N2EOr8wj3Ow00vz6XOZt0YZVfxFJhO641QsYTlHfofz4qaqLL2ifDByj0f1OvGw+K0
	vIh5nqvUpwitWtwgqGIb+bvyNHmVeJP2bWsFG8pAJdSiUaz+A+qvjhYp6YtRF8xG1ryVv7SSc3V4Q
	Fi8Y2bN4ZCsKw8D0Gllg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAQt-00000003ZM6-3LxS;
	Mon, 29 Dec 2025 10:24:59 +0000
Received: from mail-vk1-f172.google.com ([209.85.221.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAQq-00000003ZLh-3M18
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 10:24:57 +0000
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-55b302b8369so7386903e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 02:24:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003895; x=1767608695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEHua9B0eiJ9krPOOGN9l1YijNcHX4oQExQFKvr6EFA=;
        b=DMlVudLHUBrtxmReBySkL5k+NC3ZkxJseooqbamqAUtIyDBFoqcX8Tu6vBVfOJoJte
         FHInZ4Gx7czqydQQcX5jOOD0AuyC/xqgxymOlLXs1syWKoyx3sHMp2JT+OThPGdVqt5F
         pkjqRn1OncUacnm+G87Q5y2IGWGXfGeFL0gmg/xNyHqYyKzidXI6rLGYxIIW5EdixANu
         5yjAabWrj9hw/M/SPm4yvBJfbSGd0KR/yRKQCmNK7FHeWvjwGktGktiGM0XB6x6elezL
         LOhMyHNNz8wC1U6+WG/yAOrbVUfN08QvVGsRMAS5wwEYQuU5wzuj03puoU9IC7qlddNu
         ngpA==
X-Forwarded-Encrypted: i=1; AJvYcCUnaNOPr7bXpLbeAvXsx9WD0XK/o/Syh7Jz49t0zTV8RkaYUD2xo5jTq888BglXj1/OTnQqivU6mgs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEl41pF6Knzf5L/scM3WWnQ5hxhSwkiYVbj0xM3KwKDbUSbIXQ
	WTzbgzKFAV47Rzp6kYgOyy/UVvtkRjFXArQl2oDSrba3gAphps8H/4V+F5s62Pok
X-Gm-Gg: AY/fxX6bZthyVmAYQ3ZWmGjkQ09Be5Mixwf8lbPuP76RocOuppYFDE3ZzFnsktNlEXJ
	gjyLsz4GaazdRx413OOtCZD/hKAw2CbEOvdIiUJtdtMtyOMuuE0fsfa/r2k8ytKIA1f+eaZCB4K
	7KPlFDnrXb9JH+oyem81sDpay+YpB/m9mlufAMo152spB/Wruz26KRHSe17tq49mWznh+T0TiXB
	NLsSpsdO5Im/qrbEPOEJEDzgixy5bDvfOXXyCjTXrUR49VKhKUsg8xhl40yn7qtsdU2Okf8p/BO
	liD2LT24i/VxORN/6IUrUHyBqRRlFWsXIo6dP/3Y/LVpAiBZze+icXWXC3m9l3lrUWo3+4S2CTn
	y4O/DFuzqLjRELcCNkyDXO/idMbKO+OIUb44P2HRqf3CuI5M0+42XjTRZpEbyvcGgVjg4Mnmhih
	IzVLEr3rNXAFMxrpa9IE6LiTO6+TS8+Lfurz0PJ6ci9O+fCw9+
X-Google-Smtp-Source: AGHT+IGMT5NSXPhQ5pXPVNGEc6IHWcbH2FGKP7aH6A9H4mPl7X6Z0n2DfaOIrIE6GbMTBh6rWnvLPg==
X-Received: by 2002:a05:6102:161e:b0:5db:26e6:68d5 with SMTP id ada2fe7eead31-5eb1a7d5655mr9339419137.27.1767003895181;
        Mon, 29 Dec 2025 02:24:55 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1ac94ed0sm9234926137.14.2025.12.29.02.24.54
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 02:24:54 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5eb3c50c688so4845735137.3
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 02:24:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVbjk/9o867Rg32x6SUIFnTTABf/CK61Z1fguhW2wbOmfQa18xP+Cv36dEh7DlNCFFTE7LdnwFwZFY=@lists.infradead.org
X-Received: by 2002:a05:6122:d85:b0:557:ddc4:dea4 with SMTP id
 71dfb90a1353d-5615bd7150bmr9849393e0c.5.1767003543582; Mon, 29 Dec 2025
 02:19:03 -0800 (PST)
MIME-Version: 1.0
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com> <20251212-phy-clk-round-rate-v3-9-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-9-beae3962f767@redhat.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Dec 2025 11:18:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXudWW3MPKqP0-d+DyMNRF-X62oyHRnj=MM_9MSpJw6sw@mail.gmail.com>
X-Gm-Features: AQt7F2rKWfaXfoMj8qssy3Tj3BKKzf9SWfuNGXkoZ2xYV04eFqP8YoD995Ts3mk
Message-ID: <CAMuHMdXudWW3MPKqP0-d+DyMNRF-X62oyHRnj=MM_9MSpJw6sw@mail.gmail.com>
Subject: Re: [PATCH v3 9/9] phy: ti: phy-j721e-wiz: convert from round_rate()
 to determine_rate()
To: Brian Masney <bmasney@redhat.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-clk@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_022456_847247_641530DB 
X-CRM114-Status: GOOD (  22.76  )
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

Hi Brian,

On Fri, 12 Dec 2025 at 00:21, Brian Masney <bmasney@redhat.com> wrote:
> The round_rate() clk ops is deprecated, so migrate this driver from
> round_rate() to determine_rate() using the Coccinelle semantic patch
> on the cover letter of this series.
>
> Signed-off-by: Brian Masney <bmasney@redhat.com>

Thanks for your patch, which is now commit 27287e3b52b5954b ("phy:
ti: phy-j721e-wiz: convert from round_rate() to determine_rate()")
in phy/next

> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
>         return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
>  }
>
> -static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
> -                                  unsigned long *prate)
> +static int wiz_clk_div_determine_rate(struct clk_hw *hw,
> +                                     struct clk_rate_request *req)
>  {
>         struct wiz_clk_divider *div = to_wiz_clk_div(hw);
>
> -       return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
> +       req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
> +                                      div->table, 2, 0x0);

Is this correct?  divider_round_rate() can return a negative error code
(from divider_ro_determine_rate()), which is not handled here?

Looks like several other users of divider_round_rate() use this
same logic, and thus are affected, too.

> +
> +       return 0;
>  }
>
>  static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,

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
