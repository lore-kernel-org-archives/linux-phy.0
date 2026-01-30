Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B77D49C92
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jan 2026 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ho9E65u+LooU1hZ6ucLUZX960Y9O9BwDVSDqoZg7kVY=; b=xSN+++2osfaZl8
	tcz4kU4Rzd1TV2++5CSWXtDB21irjKXGohvG0CA3WwbeBZkvLp1ybafSI9rcr8S8Npz+N4oyOtqTR
	QyGec62yridux47skky0FWFLpT1lKtvpYAliAVH4HHqUqe1u5vrJL3DJjG4Rcxb8m7ujnWaZl4rmu
	8LCfwZc5OZIglO8OALOi1EVq61sHlXp14HBNx4USmZX8sY6nsPZ752vBwyz6/xBg6ZH+fCLod2e3z
	kZtSMaPG0LZsN/sNMCXAITOlPuTFycdbzJjtLuiT7WoDT0MinVeBRBy03CkickyWMxV/diLyeNaNm
	30BBUtBmUWmC3m6H0PPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vllkS-00000001KHI-02kU;
	Fri, 30 Jan 2026 10:29:08 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vllkM-00000001KGw-3p8D
	for linux-phy@lists.infradead.org;
	Fri, 30 Jan 2026 10:29:04 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-59b77f2e43aso3266335e87.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Jan 2026 02:29:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769768940; cv=none;
        d=google.com; s=arc-20240605;
        b=CuyWzc0Ib+jtOTzVZyqG581Ce3bcsKGUlL22bx8djC0y7luvm+XOYtm+UWVR0judYI
         E4yhg7pmhJsFru6D4Wa0RS01l9wiidUXf1KVxvK9p48XR0aQslyquVtU0UF4N124qqah
         HOQs5z+HAU8Xte0Rl1mZrDAO0fOh+ovojoDAofLvuawXQNz2DItl+Rj4UbsobVp+dGi7
         kgKG3ZLFWLaK56d8TSq5u6DxWQcbGvLeSKuOEz6WDD3VWoxro9lNB7qc9+0ZuVIP7cY+
         ci5o9+VWNKV6DtDz075ov+gKsxqdTBHECxSYrodFXHeuEKEGkFAd2kWD6t3GlazurXA1
         ipAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UyyRc5JdnkROBEHu+xYdCyJ2Awi4tcsQvb7pPKheNS8=;
        fh=xGNhPevk9gVBacr9PCAF7wmTWoSwPRz94H6m5wV38GI=;
        b=Pf1hwzSWP3yzKzI8NudvxFyf73OJh44EEanfLKFpNEvTsfdO0s3jv2dwUuzgICAyK4
         +XNqPNkrcLSw4UEkLyMslLIcSEmPqpcfZWgsN1/gHeeUhtC/3nwpTJIwGK+fhuycKuQr
         tOZu782SkW4uJpUG7XSjof8idzq+5RBxxyRx7yIB2iQC/Lm/VRrU/zJbEmQaWupgdyes
         uFxiWHqmYee7RiIHbA3wOStmy+81WIA4VbSbnS4qGR4fM3yqz+KMRSIUnaNCfx6Wu1ol
         SngFNBg3u5YLAn5mHXQ+MCeT5Y5pJb1wJTK8lbliaTfNM2mfrlyDRzbipT+AsyM77zpw
         nuIQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769768940; x=1770373740; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UyyRc5JdnkROBEHu+xYdCyJ2Awi4tcsQvb7pPKheNS8=;
        b=aNDwk+2ybpA8QG3uIZ3PJqmwP4GzOoWNARZZBFg7+8vrJbrsBywN4jaIZx4Ks7pTwc
         VUrUNqiRrF8QTaep9V93ch395CWTxY+sh5f9Rzt695pGS/de2p2G58aT6HJb7rVVIsQX
         noOj6v3TXHJ1GHnrHk0jC9mqZ+48GQdzUtpF+Jb22/3HqB5TCKTAnrUNuu87MxVxTII0
         x8Sxt3frzalyZKSulhZpza52gCq36Tn3YhVvgWjXKXVMjtThEUlGpiTtrksG15ym+NDD
         tvgqxMRQtvya6MnVZyWM43lsnzQpcpJ2FYHPfn2V7AHWUxFyg29iZKdj86y5iv1o1kmR
         391g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769768940; x=1770373740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UyyRc5JdnkROBEHu+xYdCyJ2Awi4tcsQvb7pPKheNS8=;
        b=HjDEMOuHK8heYjACDFOcLULbvCMkRj+zh48o/uoxJaZRXo7uE1iIy7S82dKvrBWjM8
         cgr6+W0uqwM3nOXG+1nw6w2ZcvOLS40cR0FtFsX8zv1QKx/6daKqjaUfiuBtmL7p6sX2
         L7g2cDTqU/saLaZDWK9SbVTkv3EEqs3GcCGsT5kXJLlbNXXxmJHh+PHLQ0NeKC8qW0ly
         2PtnCtyEoZgqw7yoypnZvPWtI16FnUK4pnfqFjqILzkCf3ODhD1gF14/NWRWybLiX5Iz
         5BAo2aIC/gIKjzF4y8kLRlBemLbFUfJGnxwH4QBVqG6A4QAjmPX1w3vNRlDunE/0j+qL
         wSlw==
X-Forwarded-Encrypted: i=1; AJvYcCUgGpRE+hWnLfLxJqWGnOnps59xyJwzfYWmnDlgWisDMtkCgvpBvQW9oLE/VFLQcpPRE/zo/AHwvQY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaR0SXFMkliljtS/0e3R57zIayv9btD5pBCvHN1suPRnutFprM
	yEygoyrOUmAhSDzdOn00KXOxumnDLN/dF95hSSWW68pYaGGgEgKqelTxoVLzEWe+I+o5PhpP6VT
	rN7yzxgAsj88wD1WWWxlmFdXegU6m7u/5sd8urUqdSg==
X-Gm-Gg: AZuq6aKxUkccqyMfm2NM+/Br10Ol6ArSJz1vMTWq8AyWAmwyW1ZWBWxgxgsfWRVZ6+A
	GL5taGGsVEf4S8rClr0eTk3ypS0HwEGSoVgiGJg/A7U2HRkURuiJBbaSDAJPY+/YvZHBZKz2v61
	JN/CMWFArmI3EgjN08ULbCvR+DZkhiPDn7pPZHDOQkTGGCiD+lURDEqfIpnuDfYjlpMp6zKAUvY
	258rZLrf9ub4RMuNRYFC44UN5HzZRUB2wQyCVT4786ugpiWqTysu+FNTENDwGaCM0Z4HUOS
X-Received: by 2002:a05:6512:3090:b0:59e:19f8:e7e5 with SMTP id
 2adb3069b0e04-59e19f8e879mr389940e87.10.1769768940222; Fri, 30 Jan 2026
 02:29:00 -0800 (PST)
MIME-Version: 1.0
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
 <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com> <CAPDyKFrBuL+747QUJJUejtcvjm0V7Lt=vHwjvcMdCt_h4=sFwg@mail.gmail.com>
 <CAMuHMdXgLR9yeLa5JKNdAOtNEirJ8263bmn1zRNAnKnmf8F-Sg@mail.gmail.com>
In-Reply-To: <CAMuHMdXgLR9yeLa5JKNdAOtNEirJ8263bmn1zRNAnKnmf8F-Sg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 30 Jan 2026 11:28:24 +0100
X-Gm-Features: AZwV_QjKt-7WVZ6iCRSlLFm6WIvZGroCu2x79LzMFz95tWuDMfGW172v0QkfhHE
Message-ID: <CAPDyKFrvSp6tmhP=2=9kca1d3+b6MezvxJWwMOW=Gv6D8TKrgA@mail.gmail.com>
Subject: Re: [PATCH v7 2/7] mux: Add helper functions for getting optional and
 selected mux-state
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Dan Carpenter <dan.carpenter@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_022903_012479_03B213F0 
X-CRM114-Status: GOOD (  39.27  )
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

On Thu, 29 Jan 2026 at 18:46, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> On Thu, 29 Jan 2026 at 17:06, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
> > >
> > > In-tree phy-can-transceiver driver has already implemented a local
> > > version of devm_mux_state_get_optional.
> > >
> > > The omap-i2c driver gets and selects an optional mux in its probe
> > > function without using any helper.
> > >
> > > Add new helper functions covering both aforementioned use-cases:
> > >
> > > - mux_control_get_optional:
> > >   Get a mux-control if specified in dt, return NULL otherwise.
> > > - devm_mux_state_get_optional:
> > >   Get a mux-state if specified in dt, return NULL otherwise.
> > > - devm_mux_state_get_selected:
> > >   Get and select a mux-state specified in dt, return error otherwise.
> > > - devm_mux_state_get_optional_selected:
> > >   Get and select a mux-state if specified in dt, return error or NULL.
> > >
> > > Existing mux_get helper function is changed to take an extra argument
> > > indicating whether the mux is optional.
> > > In this case no error is printed, and NULL returned in case of ENOENT.
> > >
> > > Calling code is adapted to handle NULL return case, and to pass optional
> > > argument as required.
> > >
> > > To support automatic deselect for _selected helper, a new structure is
> > > created storing an exit pointer similar to clock core which is called on
> > > release.
> > >
> > > To facilitate code sharing between optional/mandatory/selected helpers,
> > > a new internal helper function is added to handle quiet (optional) and
> > > verbose (mandatory) errors, as well as storing the correct callback for
> > > devm release: __devm_mux_state_get
> > >
> > > Due to this structure devm_mux_state_get_*_selected can no longer print
> > > a useful error message when select fails. Instead callers should print
> > > errors where needed.
> > >
> > > Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> > > property presence check") noted that "mux_get() always prints an error
> > > message in case of an error, including when the property is not present,
> > > confusing the user."
> > >
> > > The first error message covers the case that a mux name is not matched
> > > in dt. The second error message is based on of_parse_phandle_with_args
> > > return value.
> > >
> > > In optional case no error is printed and NULL is returned.
> > > This ensures that the new helper functions will not confuse the user
> > > either.
> > >
> > > With the addition of optional helper functions it became clear that
> > > drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
> > > Add stubs for all symbols exported by mux core.
> > >
> > > Signed-off-by: Josua Mayer <josua@solid-run.com>
> > > ---
> > >  drivers/mux/core.c           | 178 ++++++++++++++++++++++++++++++++++++-------
> > >  include/linux/mux/consumer.h | 108 +++++++++++++++++++++++++-
> > >  2 files changed, 253 insertions(+), 33 deletions(-)
> > >
> > > diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> > > index a3840fe0995f..b01ec126caaf 100644
> > > --- a/drivers/mux/core.c
> > > +++ b/drivers/mux/core.c
> >
> > [...]
> >
> > >  static void devm_mux_state_release(struct device *dev, void *res)
> > >  {
> > > -       struct mux_state *mstate = *(struct mux_state **)res;
> > > +       struct devm_mux_state_state *devm_state = res;
> > >
> > > -       mux_state_put(mstate);
> > > +       if (devm_state->exit)
> > > +               devm_state->exit(devm_state->mstate);
> > > +
> > > +       mux_state_put(devm_state->mstate);
> > >  }
> > >
> > >  /**
> > > - * devm_mux_state_get() - Get the mux-state for a device, with resource
> > > - *                       management.
> > > - * @dev: The device that needs a mux-control.
> > > - * @mux_name: The name identifying the mux-control.
> > > + * __devm_mux_state_get() - Get the optional mux-state for a device,
> > > + *                         with resource management.
> > > + * @dev: The device that needs a mux-state.
> > > + * @mux_name: The name identifying the mux-state.
> > > + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
> > > + * @init: Optional function pointer for mux-state object initialisation.
> > > + * @exit: Optional function pointer for mux-state object cleanup on release.
> > >   *
> > >   * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
> > >   */
> > > -struct mux_state *devm_mux_state_get(struct device *dev,
> > > -                                    const char *mux_name)
> > > +static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
> > > +                                             bool optional,
> > > +                                             int (*init)(struct mux_state *mstate),
> > > +                                             int (*exit)(struct mux_state *mstate))
> > >  {
> > > -       struct mux_state **ptr, *mstate;
> > > +       struct devm_mux_state_state *devm_state;
> > > +       struct mux_state *mstate;
> > > +       int ret;
> > >
> > > -       ptr = devres_alloc(devm_mux_state_release, sizeof(*ptr), GFP_KERNEL);
> > > -       if (!ptr)
> > > +       devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
> > > +       if (!devm_state)
> > >                 return ERR_PTR(-ENOMEM);
> > >
> > > -       mstate = mux_state_get(dev, mux_name);
> > > -       if (IS_ERR(mstate)) {
> > > -               devres_free(ptr);
> > > -               return mstate;
> > > +       mstate = mux_state_get(dev, mux_name, optional);
> > > +       if (IS_ERR_OR_NULL(mstate)) {
> > > +               ret = PTR_ERR(mstate);
> >
> > Should this be PTR_ERR_OR_ZERO?
>
> "mux_state_get() never returns NULL"
> https://lore.kernel.org/202601221036.J0kR78Uw-lkp@intel.com

By looking at the code in mux_state_get() and mux_get() that $subject
patch changes, it intends to add a "bool optional" as in-parameter. If
it's set, it looks like the intent is to allow returning NULL, which
makes sense to me.

Anyway, there seems to be some additional smatch warnings to fix
before this is ready to go.

[...]

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
