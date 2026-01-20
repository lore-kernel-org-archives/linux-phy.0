Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24C40D2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 09:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIOoywQ+CcFdISf5m99+HuW1gt4IG31lifIOVFa+6J4=; b=huor4CpYi/DLSV
	p/AHFFqikxiTml1c28YsoVGpoMr3YzwKODamjsjv/k5Yezf4EOvcxmZKmgqw4CJJhm76P9HHyY4P1
	oJRqayA7MP1UNc0jG8M+Fuu3L1d2wTlbSgK8xV9zUElKHRdyPKOASDQ5FfWrucpd1ywFvDBKrug6g
	j+nTSmsnxjVBdiYV3iNbZh6sprdY6GU1N7IbBltqACYLWrzF0hK4bTcO8u2pqdBw4ioqGAfYu0AVJ
	zgtg32zYlybldLFOF/Z0J/Ia6pU49v3Qi6QS6jkCIL8yNMWrb4nFXik2bYKuwvPyojaHVYZChKY7v
	RJ+KL/oXjhbgpVXVH0cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8J1-00000003YQ4-2wML;
	Tue, 20 Jan 2026 09:45:47 +0000
Received: from mail-vk1-f178.google.com ([209.85.221.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Iz-00000003YOy-0mw9
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 09:45:46 +0000
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56367b39e3eso4334321e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768902344; x=1769507144;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l18hDtqu7l45yo1vlmek39RB1c0Zv/I56SgfcgBEbBk=;
        b=aYK/q3Lp4u1Ct/knTfXCKN1GKPf0lmLtWYbGOfwfo543npAUeKZoLVu6/8ioYJ54Yb
         Q9G+JHEH3RHiLOlA6Ove9EoY09WmySg0IPzBbxT0RgnChOCYm9v9GxSWeOF/Ef9mfoCE
         PgQFUcdQQG6l6ZAk/auPl6FA5qa+SnMgDt7btNCxkQvTJntBfDDTE75ZAy/DRGe5JZtM
         8h30TgqJEjpO9RuHLZyeyphItVtDx4eWNJxUiCoqKy52nCMeFfQefVoS7hHTrqWbbsiX
         VV7ad9/OBU7yq9S/V5QAzLSlpDgJODz6IwT97QmCg7BpJPbokSIVaRdCEJ9z63ux3CGF
         HY9A==
X-Forwarded-Encrypted: i=1; AJvYcCWTDffRZZVIMt03ap+KqLuAVLPD6gISJT/LRLRr5kWL3j1MS4SpckHTCSKgvBSlw66MdIkKc48bW94=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9u9m6Z7nSFYh/Lmw7FKeepQBHftYjaObFJjFIyeoGb9FzAAv8
	Cqqd1V+/Yvi4zmj3ozeFdGEA0zm34iNI9jqxkmOyMFXBveQoixl+ulwEUHg+8Pr9
X-Gm-Gg: AZuq6aLx6WNdWdgffEcwJTxhITCLQuAWBoMISJb7xmF5p7jUJ3BTLGnMBz3+vbub5kF
	NtQ2XXgmL/fWVZVowS24i7veYdxZEjp+6dFoDS7GAeRAexfizplsIBD8W6/ePccsZh+5pCiVOgA
	mnqOMexUSIM6Ut7rTNF0KvWV8p8rSJEEIjNSvdUZGZ/6+IvOEv5jPBHxvzAeC9KP6aSJctO4FqA
	WLgqrY35OPXlB6/Dl6AaccjSMUx9I+O1mA0w1tcF7HkoQOOJ6mkepZ7T6A6kd61ce2JQUmBlzfV
	s9dX8XGac+X78Bk4PB65WWKIxjcydJADAJgXTTa+xdZayuUiLBPo2ORjOVidvaYgNXaGuPux3Ln
	df1RpreX4uc8DEDUGXf1lKC/FmLT0lOGu1CWpqUx20QprhEw71hHu55uKSpk8uPbOyoNjRr2ykj
	jGiHNN/wIdIMPjdDOCDT99kwPQ1HKR+JJ8HVNnVQPLYYwy4ETe
X-Received: by 2002:a05:6122:2a46:b0:563:77a9:e929 with SMTP id 71dfb90a1353d-563aa9d91c5mr5807621e0c.8.1768902343689;
        Tue, 20 Jan 2026 01:45:43 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b70e6036sm3655496e0c.14.2026.01.20.01.45.42
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:45:43 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5ec838c33e6so2267855137.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:45:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXvfs8szydrPjZZzdkgL+Q+r+3AH0zeRNaG4jStVbjyiyo4OSAgi/in5Y0P0pL30r9BgCy3VCUr+e8=@lists.infradead.org
X-Received: by 2002:a05:6102:cd1:b0:5ef:233e:6b25 with SMTP id
 ada2fe7eead31-5f192508654mr6479996137.13.1768902342092; Tue, 20 Jan 2026
 01:45:42 -0800 (PST)
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:45:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWnpci1v1oQb34_QRtU-P3S8TSormmNudajT0e34EO14w@mail.gmail.com>
X-Gm-Features: AZwV_Qh1sWLkk903wC1dLdg8mLxjiEBVkYZdOb9H2O-Zh60PCWOHx0RPYuQB8LA
Message-ID: <CAMuHMdWnpci1v1oQb34_QRtU-P3S8TSormmNudajT0e34EO14w@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260120_014545_242388_738DBD93 
X-CRM114-Status: GOOD (  36.32  )
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

> @@ -677,7 +707,7 @@ EXPORT_SYMBOL_GPL(devm_mux_control_get);
>   *
>   * Return: A pointer to the mux-state, or an ERR_PTR with a negative errno.
>   */
> -static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
> +static struct mux_state *mux_state_get(struct device *dev, const char *mux_name, bool optional)
>  {
>         struct mux_state *mstate;
>
> @@ -685,12 +715,10 @@ static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
>         if (!mstate)
>                 return ERR_PTR(-ENOMEM);
>
> -       mstate->mux = mux_get(dev, mux_name, &mstate->state);
> -       if (IS_ERR(mstate->mux)) {
> -               int err = PTR_ERR(mstate->mux);
> -
> +       mstate->mux = mux_get(dev, mux_name, &mstate->state, optional);
> +       if (IS_ERR_OR_NULL(mstate->mux)) {
>                 kfree(mstate);

mstate is freed here...

> -               return ERR_PTR(err);
> +               return ERR_CAST(mstate->mux);

... and dereferenced here, leading to a use after free.

>         }
>
>         return mstate;

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
