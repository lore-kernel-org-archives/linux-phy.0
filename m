Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB4BCA5FBB
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 17:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuYD8+KehGHTuCyTg2/73d4poKU9nNImHfYr1M//ovw=; b=nzsSGxnaTSj7Dt
	1PkFFh/yc9DKetzU9kbjmh5/VTKltjfQRNoCiBn/tFXsw1VLXy60SP+RauuIpe/xELVm4hZogC2XP
	pj7UgjXygXTCtZjThc+ZMnlnwadptcBpVh2P14RN7BuhuYUQcT8MXbfGihM8YM3gyDhf01VX3zz0Y
	CbdBNR/Mmzr/Mq3LsZ6BuhEsMFmaXu939bJblheS88IU07TFw3BJCqN+dr+LLdVb4bGDUhkbLaQZd
	tzwby1iMSmy06PlGJt5iqt8O3IbV4D9LZH970oWdSJThqSSVhv398Gu5k0QdwnvRuw2TwojsDf1io
	rdNUGTDeU85E5ztK2R/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viFt6-00000004GOa-1NMh;
	Tue, 20 Jan 2026 17:51:32 +0000
Received: from mail-dy1-f181.google.com ([74.125.82.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viFt0-00000004GNo-3kgH
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 17:51:31 +0000
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2ad70765db9so6381718eec.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 09:51:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768931485; x=1769536285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dcPNSr1vco6+E9e0XJi5xyBPxmbRiBl/7/yDisLqrnI=;
        b=gtMBIn9oH9ZC2w93L73HKYuG2oPrybk0GgkbUk0dF15Eu3k03yFU70oZHHHbuLIbU5
         RWWXU5TDcS/Mv2/y2f0Y+KYJELwu6hwaSPdyD9tqr+ycc59mnbvQvnEPxZ8qYln8nj0l
         jllVjeTopsiJKengh2Cwow9FEWCKBMmLpO+0Ks9X5T9SGtKV8IxdmODjUWXlp1OoibLU
         9/UKMEFfej1LSEaOXooYAeuoGuk8NYo42rMRz27h+eKMSa2JuZGQuLL01ODs6yPvM5XZ
         Mx6E1xZQ5KZ/uAAhh1jPUgk8tsKh+jwtZYjxabQdCXi8cOxXits35rn4u//ySkQfequz
         8lZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD5bZ4bYWiAW5L0ZmFGtkmRdKF3g5zn25lHEgF0SNfCshm0agFvFOmKmPX+2ZOZq6fJn8y/fTYt/E=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZSqNttouujcl7dy10OUqezPG+DFdxdeQYxEkw+N5+NDbdUbzb
	HYemR2zAl6IQEUtloSF62jd9szozgv49Q5y3KbK4qW+aMeR1FFvkIeSLKGIaYguY
X-Gm-Gg: AZuq6aIguKIcmeJ0fdx5ZjUUDt6jNAjE43yL70kz7ncTKcN7sNIiJcqEKVcEcuA7gjk
	g7m5xei/70eHq+ra9DVdo2foohAiYFvT0DD1hCpuIu3oFy0AdTTzjuIVHTiRxa+NOjrPbl1u8BM
	E8nlqUWl+Sd93kSNeVlR7kJXl3G6M9NUBDh+k/bNIMhXGwVCHQ1qi8T1Cp/yUZetDXPqlqPOyec
	rMQOJV0goGOoUCYlPQAwLT0FreOomM6/PKmDlrjB5/JCNm7vA+FaypaH61X2V5O1DmCK3ZVw/HZ
	/57jZQJTs0Hv4SVm1oS4QYs/mX/bcn3alUhrrASX4TZfV7X9K3xO8zdGCFAqNSkfOXFCUOHeHn0
	tknoKvdWXNkkraqv6nXGY4Gl7WE/B3zWLepTVCR5oseIb+xoLNY/hp6Jvr6sh/Rg+UdYANi1IuN
	6X/HsyavmAycLzqckLAxosFxMF2HHKj0Zou7uH1nkSQfan0zSBXWs=
X-Received: by 2002:a17:90b:2e0b:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-3527313bf04mr11928843a91.6.1768925132557;
        Tue, 20 Jan 2026 08:05:32 -0800 (PST)
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com. [74.125.82.173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352677c90easm14968600a91.4.2026.01.20.08.05.32
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 08:05:32 -0800 (PST)
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b0ea1edf11so10219416eec.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 08:05:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVHNwmJW2lqTtycpKw8hoZePP7OzLAk4BFmPbAS/eEZm7q1mtimRJOmzOCq/9EvRfL1m3ZnLpMhIZU=@lists.infradead.org
X-Received: by 2002:a05:6102:b15:b0:5df:c094:628d with SMTP id
 ada2fe7eead31-5f1a6fa3ca2mr4116825137.3.1768924652088; Tue, 20 Jan 2026
 07:57:32 -0800 (PST)
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 16:57:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU=wDmDJFYvtzxptAkkOQ8r7sPGUxp9u71e64ikY85+Zw@mail.gmail.com>
X-Gm-Features: AZwV_QgiDRrYV1BByFjO2lg9vbxQpf_lMefb8OE6E5E-nZ3iF4svsU32o-Zkiz4
Message-ID: <CAMuHMdU=wDmDJFYvtzxptAkkOQ8r7sPGUxp9u71e64ikY85+Zw@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] mux: Add helper functions for getting optional and
 selected mux-state
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
X-CRM114-CacheID: sfid-20260120_095126_936294_A726216F 
X-CRM114-Status: GOOD (  36.52  )
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
> In-tree phy-can-transceiver driver has already implemented a local
> version of devm_mux_state_get_optional.
>
> The omap-i2c driver gets and selects an optional mux in its probe
> function without using any helper.
>
> Add new helper functions covering both aforementioned use-cases:
>
> - mux_control_get_optional:
>   Get a mux-control if specified in dt, return NULL otherwise.
> - devm_mux_state_get_optional:
>   Get a mux-state if specified in dt, return NULL otherwise.
> - devm_mux_state_get_selected:
>   Get and select a mux-state specified in dt, return error otherwise.
> - devm_mux_state_get_optional_selected:
>   Get and select a mux-state if specified in dt, return error or NULL.
>
> Existing mux_get helper function is changed to take an extra argument
> indicating whether the mux is optional.
> In this case no error is printed, and NULL returned in case of ENOENT.
>
> Calling code is adapted to handle NULL return case, and to pass optional
> argument as required.
>
> To support automatic deselect for _selected helper, a new structure is
> created storing an exit pointer similar to clock core which is called on
> release.
>
> To facilitate code sharing between optional/mandatory/selected helpers,
> a new internal helper function is added to handle quiet (optional) and
> verbose (mandatory) errors, as well as storing the correct callback for
> devm release: __devm_mux_state_get
>
> Due to this structure devm_mux_state_get_*_selected can no longer print
> a useful error message when select fails. Instead callers should print
> errors where needed.
>
> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> property presence check") noted that "mux_get() always prints an error
> message in case of an error, including when the property is not present,
> confusing the user."
>
> The first error message covers the case that a mux name is not matched
> in dt. The second error message is based on of_parse_phandle_with_args
> return value.
>
> In optional case no error is printed and NULL is returned.
> This ensures that the new helper functions will not confuse the user
> either.
>
> With the addition of optional helper functions it became clear that
> drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
> Add stubs for all symbols exported by mux core.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c
> @@ -46,6 +46,16 @@ static const struct class mux_class = {
>         .name = "mux",
>  };
>
> +/*
> + * struct devm_mux_state_state -       Tracks managed resources for mux-state objects.

Please run scripts/checkpatch.pl:

    WARNING: please, no space before tabs
    #80: FILE: drivers/mux/core.c:50:
    + * struct devm_mux_state_state - ^ITracks managed resources for
mux-state objects.$

> + * @mux:                               Pointer to a mux state.
> + * @exit:                              An optional callback to execte before free.
> + */
> +struct devm_mux_state_state {
> +       struct mux_state *mstate;
> +       int (*exit)(struct mux_state *mstate);
> +};
> +
>  static DEFINE_IDA(mux_ida);
>
>  static int __init mux_init(void)

> --- a/include/linux/mux/consumer.h
> +++ b/include/linux/mux/consumer.h

> +static inline void mux_control_put(struct mux_control *mux)
> +{
> +       return;
> +}

    WARNING: void function return statements are not generally useful
    #441: FILE: include/linux/mux/consumer.h:139:
    + return;

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
