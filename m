Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3278D6B086
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfPH4dUOEMgYWzYVohY7wCWWB2bEQLwxewY1tezdoRE=; b=nD55J3+jLHh+16
	FuMM5piqg7p5fcQpoVIJqCB8gpk82MURmbWAJMgxq3X0VPwvb+PDh5yw8NjbXIWicWimF0nRpmr2L
	LnOsCn06uU/WY4hNyppXBtBpNYg+QSv9CpvCJikLuQAKMmugHbFcyCz/qTUvLkq0E8LIeip6QJv3P
	nfbRbsSHfSr+qB2v16/VrgoWWyypMZoyKimwXAXl2LX2onKebKoPdne9tRS7z7Df509GcnybV83iM
	Z5ub2tTse1tzXakgcopVJtJ0KFe5uLIwsSW+0KJiaJJvG93FtT32COgp8pXYCe6hB0yMPup6DaMUV
	8Nk0yJrkUadSXoLwBg8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlUXk-00000000JlP-11S4;
	Thu, 29 Jan 2026 16:06:52 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlUXi-00000000Jl4-13CH
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 16:06:51 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-59de0b7c28aso1280214e87.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 08:06:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769702807; cv=none;
        d=google.com; s=arc-20240605;
        b=k+MusQODLPdlqEqVlMpmpb5TWjJ/T6/viiSicfPZZ/eX+QOZUesrQav8kZN0rsXfL9
         Az6CZyQVWs9tT46opUF6UrAAC7yB2p9PBy6HxnRVlKC9tvNrSUwMHbDH5CTVPL+Qbk4e
         CdiDtRO1G7lhu2jjGPDgan83/EsekRFl7BIUsMlG6o7QHrt1vMZ0ZyuHIA0ZelhzES5o
         IJCDjAiwBOnJJrtYtR6Gg5KhoykCiRRdcBgdGPBdgkb/0IPKCgeOYy7/+nMxZDe2xBQh
         Pyk8qYZcRFYSUDcdGjOKCxLKekIycw1QiOkz0sq9qj0BxiFXnBWyLsn+iUANSWbyKzRi
         qn/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sjBE9CcEx3FGX02UcUqw+G+HOHlTgyZhIWMhdAQnoXg=;
        fh=CHJQHahcRV3toNxglSCZzPe6+BN1Syv9Pvc56R3IzmM=;
        b=fP5mgLZtPEkKcxZ477mWcIqrxuiorCoUN/vsiNFZbEIAe/1bBvT5wHDb4y7GBNcs+E
         VFRnDICANx3JP/ROsXfiS9v5yVrSrcQwX9OMjUYl93fd0qZgRTEVLCOS9Z0hX2wQw8sF
         nMGzqF4pSTzfTwDgcuwF8A2xouY5ytOuA7RGsDwM4TPXLRI2SZbGo7fZ91Nu6yzHVI6A
         emBAN0DtxJTmBG6n4cK2JPjBm6HVvV3jVX0Dr+rrU0s1qvP4zxOZCQEIpu8UQBLddt4R
         fWqUhDVGKTS93TbtB9dDf3tM8Cao4d6iUcQoJO1J48kxRqBhfdlsh9Lha6dHk+R5wJs4
         APeg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769702807; x=1770307607; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sjBE9CcEx3FGX02UcUqw+G+HOHlTgyZhIWMhdAQnoXg=;
        b=U3AHD59omSNPAovkxj77SBFJu0SaensjE9fE83Jm4usAjuzaJzr2fdleIRWUXlgAfU
         ofu/kDIkcN8FyThVNZw+5u3oK2wkdAirl2fbzBMcLtNbtPG+rKJLJ6N3ixk2fM6Q+vZk
         fpUgWEF2jz0gPqKMrRrGiPTR75BelqHZ8ttUrICUXDo1nGqzzSIIiHngrfvAZ3tVK1Av
         dHF67WX6UQVP26vXYgC1EuNsVAKeVagq93gGeCzLLm81XXLcutZO2APRd6ee9Gq8n3Ua
         d16stf5C4FV00WuNR9KK+M/Ef+kHaBE4r6Yaq0M8Lqf140bcwO8n+Vorh/4VtWUdf4Tr
         BzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769702807; x=1770307607;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjBE9CcEx3FGX02UcUqw+G+HOHlTgyZhIWMhdAQnoXg=;
        b=uDgX4KtOnzeHW6AoB8usLYNnL3bM05C2Quv2ouhgD7nrE2ebOhXqY9ly8RrnrtoO5p
         O7527IiUWjok4iPk9i51x1hG2DBcVq6EIDKtWBpW5fYVWvTG9vDA3QKPkxASOSfJoGUL
         Zwqu+qQ1C5bQZh+/TdssL+f6Jq7BkeIjzxZLLEfqVgCoIc+XZQRvvws0VNNsbK9EAMhD
         1K7vdaYiVje8L9XJjxMzcy15moicIoGunkdkEgjBkCebArQSgfkneG//TkZred65c3sy
         XrNRWlAlT6kjcAvQleLV5QczcLZSbwOUcmbeT7xtZbraM55SsnUg3v/facR2Ou3s+nEq
         OzUQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4jvXrLWhR85VoY8z05DW7RHTaYB2h9ODIVL64v/IFmYWHFZ15Lg1S+2ffg1EjCflNaf7Z0c0NHvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmN5aQDkj9KkUsf+fm8ajiLvI9YrwQxqcsc/h6F6ekD5pVv796
	Aqd6qQicaHgNErl214RPX2TmxX65TBS1AoLh+Wmo6P0caCbLnSjnIzRUfjJKBEKp2sBr6x0RCJl
	t+LVlDG45TALRIwcIsHwAs1un+XHFNbrg5K3NRvnVbw==
X-Gm-Gg: AZuq6aKxEb5PnKLvL/eppPcV5sEoOahHF6VbAl6RTYzkBNDsEXwcCufgJU1EGQ/iFCI
	ecosP5eqgJQOYOwfxH9gMpWrXBQTaaKYezTe8XFcTbyzw6iJdOK5qx7XHtcjJTR0/AWLlrgqhcE
	RKNo21fP5GFHse7V0MuyCQmIzi9B9Z5mSDvVCu83ujUapQxQ9ANL2G0XA3/30JhkHE0G4Zwi0XF
	EzpGpb+amYMNW1Abax+6VYjazS609ModlUp+vYBRtBu7pUFv4vJ91afMfw6yIccOkVliEhk
X-Received: by 2002:a05:6512:234e:b0:59d:d799:b7a0 with SMTP id
 2adb3069b0e04-59e040299admr4006653e87.36.1769702806877; Thu, 29 Jan 2026
 08:06:46 -0800 (PST)
MIME-Version: 1.0
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com> <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com>
In-Reply-To: <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 29 Jan 2026 17:06:10 +0100
X-Gm-Features: AZwV_QhXWgEPoSG5cEeDEK7X9sYP3SyTXeMqEgA9rOrQCY9Is43DwQw7rMGTcAc
Message-ID: <CAPDyKFrBuL+747QUJJUejtcvjm0V7Lt=vHwjvcMdCt_h4=sFwg@mail.gmail.com>
Subject: Re: [PATCH v7 2/7] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_080650_345136_E08A1F16 
X-CRM114-Status: GOOD (  33.31  )
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

On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
>
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
> ---
>  drivers/mux/core.c           | 178 ++++++++++++++++++++++++++++++++++++-------
>  include/linux/mux/consumer.h | 108 +++++++++++++++++++++++++-
>  2 files changed, 253 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> index a3840fe0995f..b01ec126caaf 100644
> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c

[...]

>  static void devm_mux_state_release(struct device *dev, void *res)
>  {
> -       struct mux_state *mstate = *(struct mux_state **)res;
> +       struct devm_mux_state_state *devm_state = res;
>
> -       mux_state_put(mstate);
> +       if (devm_state->exit)
> +               devm_state->exit(devm_state->mstate);
> +
> +       mux_state_put(devm_state->mstate);
>  }
>
>  /**
> - * devm_mux_state_get() - Get the mux-state for a device, with resource
> - *                       management.
> - * @dev: The device that needs a mux-control.
> - * @mux_name: The name identifying the mux-control.
> + * __devm_mux_state_get() - Get the optional mux-state for a device,
> + *                         with resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
> + * @init: Optional function pointer for mux-state object initialisation.
> + * @exit: Optional function pointer for mux-state object cleanup on release.
>   *
>   * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
>   */
> -struct mux_state *devm_mux_state_get(struct device *dev,
> -                                    const char *mux_name)
> +static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
> +                                             bool optional,
> +                                             int (*init)(struct mux_state *mstate),
> +                                             int (*exit)(struct mux_state *mstate))
>  {
> -       struct mux_state **ptr, *mstate;
> +       struct devm_mux_state_state *devm_state;
> +       struct mux_state *mstate;
> +       int ret;
>
> -       ptr = devres_alloc(devm_mux_state_release, sizeof(*ptr), GFP_KERNEL);
> -       if (!ptr)
> +       devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
> +       if (!devm_state)
>                 return ERR_PTR(-ENOMEM);
>
> -       mstate = mux_state_get(dev, mux_name);
> -       if (IS_ERR(mstate)) {
> -               devres_free(ptr);
> -               return mstate;
> +       mstate = mux_state_get(dev, mux_name, optional);
> +       if (IS_ERR_OR_NULL(mstate)) {
> +               ret = PTR_ERR(mstate);

Should this be PTR_ERR_OR_ZERO?

> +               goto err_mux_state_get;
>         }
>
> -       *ptr = mstate;
> -       devres_add(dev, ptr);
> +       if (init) {
> +               ret = init(mstate);
> +               if (ret)
> +                       goto err_mux_state_init;
> +       }
> +
> +       devm_state->mstate = mstate;
> +       devm_state->exit = exit;
> +       devres_add(dev, devm_state);
>
>         return mstate;
> +
> +err_mux_state_init:
> +       mux_state_put(mstate);
> +err_mux_state_get:
> +       devres_free(devm_state);
> +       return ERR_PTR(ret);

If PTR_ERR_OR_ZERO is used above as I suggested, ret may be 0 here.

Then it is probably clearer to add a check if (!ret) and return NULL
explicitly for that case, I think.

[...]

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
