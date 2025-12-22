Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92255D711D5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 10:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFsILzoQBcLwjOWOvj63xq4zwb3gdW0XpYPdPuwdUNw=; b=2vQbvtXIBQpXiy
	CtNgoOdbm9RslCVITdOPanyFwWTYVjCeIT25ICqgwA8EUCswIOb9mbdGn5IMG+YFk8arB3IBDEVqf
	igJI6WuPmH8x4wBs2wSMuVqAJsb4ixBOTv9a1Aloziw5vlUZzMv3uy1GaWAwZ3Tlg6lm/A3BwzcaG
	7ZB7aBHSpdheqbAmbVx9irXDoJuRurzmK5plpnXYg3NLwThulE0FtlRJfCOi0Wh1iFpN8W2qHJHJI
	Ui1w00/2LYkjvmnMXOI1PDcmPXluBLcwZ1sMOxtDqiLnlOUvvr4126o4smeSf5EPU0YQ+ssggZq15
	f60Gtq/xhsqPrRbzrO7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcwr-0000000DbaO-1HRU;
	Mon, 22 Dec 2025 10:15:29 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcwo-0000000DbZz-1eAg
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 10:15:28 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c76f65feb5so2772767a34.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 02:15:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398525; x=1767003325;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VEzlntz/A3Digs4sjukIlKb5qv62LH8yawTgFzZ88fo=;
        b=axflIHgmqtzP/gs1Dp0BqJ52D0hBN2LdhCJw9m5nhhRKSUHgRDG6IxmmGcHwflvaG7
         AyglieKt4tZHiIP1hY6ic0LaCzvVugbKoYs/u8UTkOStdYEOn4+7F6ZhDRkicmXnyxRf
         71EofUGeisZrn3Pk2Ib3R5Jx+OuQLUGCVkvaBTfvNF0w/OTIZsYiEmN8Euu3anD8TIld
         yu5KFDRkv/A4OjytR6Ggc5wTV/E8u8InqVUerJPljSnsUux2pW8KdXRdhYpOM6mWzZUr
         OJl3czIFR4MhJ6ka5YaGldQCNetP31n64gcvWVcbqoGEdnX/3Elbh4PYKxnmXAJZrnY3
         HTWA==
X-Forwarded-Encrypted: i=1; AJvYcCV4B/eF6XAWSplirTALKJrAgVSTrLntqRhgfICrFjn8RYanGHi5FHMdizExQbSnAPRyLZLBnw/WSCw=@lists.infradead.org
X-Gm-Message-State: AOJu0YySHPQU7M+08bO/qHnzho3WYqGFdH5DMGh8bIZ7SXcRHBC8I8eR
	CyxCXLvgJxY2eWpFVo6Zt6TbPYA3mSkYhl8Exhj4pNU2zvmm4dyOB6VHfnAhHPIT
X-Gm-Gg: AY/fxX7JKbxkK2gV4hAfFQwii2nGeZgYbARJF/k5itdALLu7utuBh63Zk5ksN3IRqKF
	G8BbZkUfeQE/r4bKczw+O8T79Xf+mqymV+Suqt1iEl/vmGQqaJyMEsGYUwmisvqtKBqxlEr0xs+
	jKCJkhCGCaqaC+uiktfKwtPITj3l+GZG57TF0X4vVWjG0VtFotwaUxPQ9/j8aCTSrXZfI7zxArH
	v09BU5qag1C4eJlq/Aab7j0Onh54urmAHyFewbwx5hTNGCRl3ROiLeCbMAmQ8qoizGw0uUMGiWM
	H7VtmyQCU5CPSwaLMeqxRIFB8C/d4nIw9uEu/zy4KsWiCYpOocWnnVgRquuiSIcZt2x4Bcz4kcV
	pQm+/Odgf1tKAXhP88jShqA/vKUYaHdza7sTLkv0lCCLmcmTFy5C6zch2VQc+2fZApEThg9Oo8w
	4rMuy3/hyiunulGfwzrkMKRrvL8do7F0QT1e7Meo9FBayF49LsV9gT
X-Google-Smtp-Source: AGHT+IGrO+kxYxbwDYc/uL1GBgqYGyPj4okScXa2xuyme4CLxKUUf/0aTIYMs6z1x9jW4SsPArQfNA==
X-Received: by 2002:a05:6830:6c08:b0:7c5:307e:3d8d with SMTP id 46e09a7af769-7cc66a28b87mr5211715a34.30.1766398524648;
        Mon, 22 Dec 2025 02:15:24 -0800 (PST)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com. [209.85.167.174])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667d4f62sm7157558a34.19.2025.12.22.02.15.24
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:15:24 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-455bef556a8so2643344b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 02:15:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX19pDUFUc4q0dU0rFtOVqssrquazOUPHkVxmSgA+HADHchAamraU+n+GedVI/1lD4fuBjyVNkgnAQ=@lists.infradead.org
X-Received: by 2002:a05:6102:3a0e:b0:5d7:de89:8dc6 with SMTP id
 ada2fe7eead31-5eb1a616c74mr2760273137.6.1766398102025; Mon, 22 Dec 2025
 02:08:22 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 11:08:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
X-Gm-Features: AQt7F2qgJlv5WWEn-8R7_EQWn45G6An5kBRt8R2C89e3bKVxcY7XZ_y43fEdjFs
Message-ID: <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
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
X-CRM114-CacheID: sfid-20251222_021526_502558_3546387A 
X-CRM114-Status: GOOD (  32.76  )
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

On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
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

Thanks for your patch!

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

I think the non-optional variant should still print an error message in
case of -ENOENT, else this has to be duplicated in all drivers using it.

This is typically handled by having a non-printing core helper function,
and having printing non-optional, and non-printing/ignoring optional wrappers
around the former.

> +                       dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> +                               np, state ? "state" : "control",
> +                               mux_name ?: "", index);
>                 return ERR_PTR(ret);
>         }
>

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
