Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464E7D65C47
	for <linux-phy@archiver.kernel.org>; Wed, 17 Dec 2025 13:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mA8LVXp3KtwLEW+OhuEPx+GH9cw6nUVC4hylIm8jRDo=; b=BmFU7wTuAXXpPk
	YzxNdrslvV8CVQmkn96z+d1gunl188YzKNQdJtpdt/A29BFHVo/J+H0+0nS6JxwAx5DSCtVpniAFd
	ismQ7MTZK+96zDY6GpUMkiNYph0SxSuM/BLjrbgPXXfEvDSFBwOmlMx0yj89TjzllpHY22SXMyA3T
	WuOn0L1RBsCvIgk2dmNXzr8688yIXQLhSm3OU2R3CG4gg6/thPjg/wU1lPV1/t3acek0dU/J+qv9P
	79dLyPiH4NS2MG0x/eGRJ6Ty7iiO5ejxLrbveF9kqriDCKIasX306PkndhtvhTja/YGwuZ8DPyZeT
	Q4LD45uCgy5x55ryCbsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVrkV-00000006s7V-431d;
	Wed, 17 Dec 2025 13:39:27 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVrkS-00000006s76-2xrE
	for linux-phy@lists.infradead.org;
	Wed, 17 Dec 2025 13:39:27 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-37b9728a353so58226321fa.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 05:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765978761; x=1766583561; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bnJOOseUNu5bo56mXUg+bkHSCvAL77RptqMYnGxiRP8=;
        b=A/oQ2P5RjbNj+wzIFGvXykjs0gnfz7yrsRW+bfRvbRaSJXZOcvoVmfQHfqrZnfTO03
         QqU3Z27JfkKpiNrGY5T7HW9qjTO/n50HcEeo0VLitE1ySx3+gRYCeFU2PLRrOnxVSNXK
         RE3+8vJzYDbJFC3t152H8BmS/+8cyS/bFQf+4ia0KP7zGRfgtcPNqXALqDFhyEcrc5nN
         ORofo+V5oOKkGgm4uPercFUoo3r7Xh6UspV2HGvfpiWI2d3mlj5I9fM8CHGZmmU3MT9v
         r9MglBO86AcxeGSeYLSoA6eeqQCU/nPvChmR+feQsTI82z59lyOtipubhnfKT7RP6lL4
         u1jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765978761; x=1766583561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bnJOOseUNu5bo56mXUg+bkHSCvAL77RptqMYnGxiRP8=;
        b=T9Nu6R+KjX/9x63pRKykuVzU91n9YIO2QBBzR8vBzIQZIooBcX3lY/dpKA6xjD1J8D
         IHknX6QfjvLTJFDDlhUF9J1lviCRMOLl/qE7g/9W9edT/2Bq1X6KaQYgnxosDMHlMjae
         ydjo8D7BMdmVWPX2tvpnY9YhfdoGFrRpSajmTFRhNLVOOfhVXSpOvwkcr1mZAlnl7I8h
         yr14pEbCVl2NVLtIcWNDnFwZuK5aUl1J1Xg46e0BAtqpKdIeGmGOEaE/u5CrcFjQHG2O
         JY2hBo8M5wtx1xiusKpg2Ks/OQLK0DrIxaJBqNV0b7e3zeGP8ZB/CfHPzoFzXxmh+bFf
         a/5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTSwvEfz1AD88aazij088wAeOD//N4XFaBVXKUULY+uHB1dh8f2NxAdjpP7MyoFmEIjjHr7xr0Oww=@lists.infradead.org
X-Gm-Message-State: AOJu0YznHfe6VEp7DgRm8bGMoS70mXUDQaeCjdOBpLxJjA3IOaRZB7UX
	Jyc2qyWVsq746pjDebya1Ma8h3B6sDXWUX47vMA5aSdJPR1Dh6BtvpM1NydNhHZZvCIBdJRvnHt
	xBgM8fVjK4zcUWS/MFJk1LVwwv7tccHaB7jlYaConlA==
X-Gm-Gg: AY/fxX5HLw6YGey913TeOHPyOwCpRoLBJ8r0/IMTSXqrrx2uO0KhTzOzmYxtY/D0AUP
	EmG1utwrFjmDJbkSUBcPYgBAKAinwpgSpruh5VRJUw7tbYiLHhVNG9R0raU6K+r0ectYlpk7KTX
	CI/fQ2EpkAIxTR9c3iExNsUHKmAJqYPdNf4wZjw5gvUqi3OdtUhwv5qjU9pWrzrqF6EwzVnO5B9
	Iv5YK+ASzzaz0WIbOPCTLZmQR2tyczraHHyChGhT43wrOh2Yu1sAJLgA9GTg23Bh/qPSQg=
X-Google-Smtp-Source: AGHT+IE2DrQoKBO7Um5lmI2G8HeKrmSb1aJ3PKObeClJFdA7DTUpv5Z7rJEzp4iMrT0Jn0x5gpN5DVmp8SJGVUL+/c0=
X-Received: by 2002:a2e:8f88:0:b0:37a:5990:2ba8 with SMTP id
 38308e7fff4ca-37fd0877fc9mr48143241fa.23.1765978760510; Wed, 17 Dec 2025
 05:39:20 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Dec 2025 14:38:43 +0100
X-Gm-Features: AQt7F2ritzE1FtCn3rFBAb957an6eyRlRiUWdpCCK7X4DKkbiNs7zTdDOI9qhxU
Message-ID: <CAPDyKFoYd3WKGrjD3DEzZH8EfgZPmRkrqL=rdoKNuAADrvz3Eg@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_053924_925660_0A483D46 
X-CRM114-Status: GOOD (  32.38  )
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

On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
>
> In-tree phy-can-transceiver driver has already implemented a local
> version of devm_mux_state_get_optional.
>
> The omap-i2c driver gets and selects an optional mux in its probe
> function without using any helper.
>
> Add new helper functions covering both aforementioned use-cases:
>
> - devm_mux_state_get_optional:
>   Get a mux-state if specified in dt, return NULL otherwise.
> - devm_mux_state_get_optional_selected:
>   Get and select a mux-state if specified in dt, return error or NULL.
>
> Existing mux_get helper function is changed to return -ENOENT in case dt
> did not specify a mux-state or -control matching given name (if valid).
> This matches of_parse_phandle_with_args semantics which also returns
> -ENOENT if the property does nto exists, or its value is zero.
>
> The new helper functions check for ENOENT to return NULL for optional
> muxes.
>
> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> property presence check") noted that "mux_get() always prints an error
> message in case of an error, including when the property is not present,
> confusing the user."
>
> The first error message covers the case that a mux name is not matched
> in dt. This is removed as the returned error code (-ENOENT) is clear.
>
> The second error message is based on of_parse_phandle_with_args return
> value. In case mux description is missing from DT, it returns -ENOENT.
> Print error message only for other error codes.
>
> This ensures that the new helper functions will not confuse the user
> either.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  drivers/mux/core.c           | 67 +++++++++++++++++++++++++++++++++++++++-----
>  include/linux/mux/consumer.h |  4 +++
>  2 files changed, 64 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> index a3840fe0995fe..130ca47a8be37 100644
> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c
> @@ -542,11 +542,8 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>                 else
>                         index = of_property_match_string(np, "mux-control-names",
>                                                          mux_name);
> -               if (index < 0) {
> -                       dev_err(dev, "mux controller '%s' not found\n",
> -                               mux_name);
> -                       return ERR_PTR(index);
> -               }
> +               if (index < 0)
> +                       return ERR_PTR(-ENOENT);
>         }
>
>         if (state)
> @@ -558,8 +555,10 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>                                                  "mux-controls", "#mux-control-cells",
>                                                  index, &args);
>         if (ret) {
> -               dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> -                       np, state ? "state" : "control", mux_name ?: "", index);
> +               if (ret != -ENOENT)
> +                       dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> +                               np, state ? "state" : "control",
> +                               mux_name ?: "", index);
>                 return ERR_PTR(ret);
>         }
>
> @@ -745,6 +744,60 @@ struct mux_state *devm_mux_state_get(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_mux_state_get);
>
> +/**
> + * devm_mux_state_get_optional() - Get the optional mux-state for a device,
> + *                                with resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + *
> + * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
> + */
> +struct mux_state *devm_mux_state_get_optional(struct device *dev,
> +                                             const char *mux_name)
> +{
> +       struct mux_state *mux_state = devm_mux_state_get(dev, mux_name);
> +
> +       if (IS_ERR(mux_state) && PTR_ERR(mux_state) == -ENOENT)
> +               return NULL;
> +
> +       return mux_state;
> +}
> +EXPORT_SYMBOL_GPL(devm_mux_state_get_optional);
> +
> +/**
> + * devm_mux_state_get_optional_selected() - Get the optional mux-state for
> + *                                         a device, with resource management.
> + * @dev: The device that needs a mux-state.
> + * @mux_name: The name identifying the mux-state.
> + *
> + * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
> + *
> + * The returned mux-state (if valid) is already selected.
> + */
> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> +                                                      const char *mux_name)
> +{
> +       struct mux_state *mux_state;
> +       int ret;
> +
> +       mux_state = devm_mux_state_get_optional(dev, mux_name);
> +       if (IS_ERR_OR_NULL(mux_state))
> +               return mux_state;
> +
> +       ret = mux_state_select(mux_state);
> +       if (ret) {
> +               if (ret != -EPROBE_DEFER)
> +                       dev_err(dev, "failed to select mux-state %s: %d\n",
> +                               mux_name ?: "", ret);
> +
> +               mux_state_put(mux_state);
> +               return ERR_PTR(ret);
> +       }
> +
> +       return mux_state;
> +}
> +EXPORT_SYMBOL_GPL(devm_mux_state_get_optional_selected);
> +
>  /*
>   * Using subsys_initcall instead of module_init here to try to ensure - for
>   * the non-modular case - that the subsystem is initialized when mux consumers
> diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
> index 2e25c838f8312..a5da2e33a45c0 100644
> --- a/include/linux/mux/consumer.h
> +++ b/include/linux/mux/consumer.h
> @@ -60,5 +60,9 @@ struct mux_control *devm_mux_control_get(struct device *dev,
>                                          const char *mux_name);
>  struct mux_state *devm_mux_state_get(struct device *dev,
>                                      const char *mux_name);
> +struct mux_state *devm_mux_state_get_optional(struct device *dev,
> +                                             const char *mux_name);
> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> +                                                      const char *mux_name);

Seems like we need stub-functions of these too. Otherwise
subsystems/drivers need to have a "depends on MULTIPLEXER" in their
Kconfigs.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
