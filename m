Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 969CFC87FD2
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpvO7cY4rYrfKEO8rcdS6CxFBjW0TTHDOnK3Ifd7KlA=; b=B2aXuWMU4VPNs7
	HKWbIw86ipEkCrUUKaRQeYujZijSYMt9fyDSLECvmI9M7RFW4OlLXnO1seGWfLplcW57kYxKylzab
	EGr/jLLJ7zUu7QEIx+DbLlkuzX+wJ/+4SvKdhYCL8+86D+m8pkehfjZrHV2E/YRezw2DmdOFFVpDc
	Nje9QMAOK8vkgdq4IwLi/+se+0kinAUZrl43ge7NA/O37Ju6uLtEGBtdde+7QmmcwxTli6U0RkuX2
	1S2lGKfEl7eVuOibzifQ0zieFiX+6+Jg7h21twhe/UO97lCHcKLaP3xcdGN2QWfTjJnAuXcBlyVJS
	coGDL157i6fPKO8ESdjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukJPe-00000002SGU-118n;
	Fri, 08 Aug 2025 09:29:22 +0000
Received: from mail-vk1-f179.google.com ([209.85.221.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukJPb-00000002SG6-1M7Q
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 09:29:20 +0000
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5393cfc2e77so1249463e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 02:29:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754645358; x=1755250158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ONUQQjbxoiIGrp2xGll/nfaLwIlt2Mqw8O1vqEtflFg=;
        b=GRAYvfxqAXbakWy1gywg3vnkBQkdQKiN1yQ2YvB/0EQ6no1kA9owSz7mvauw3ZvIj4
         S76Bt/vjVdvinSaWtFImh9su7s9nfLgbgCgmycqpWQIqh99CxGzxNUfl9Sb3ZbLbzAy/
         ZMCbqa/1xb3TfLsP9nhFBtP43HpGh/5n7mwGZ/14fAlQf9QvooJO2WUQOGdiGnGVdZAX
         CCeINT9Jyv1qxqJcMmxGSWLtjET+2abKF94tVMwN5ekjT80XenTQGupYcWvKKyyF5a/M
         bgfO3c1KAKR1+jNmmVloSKFq9MCIrlQrSp804G5iU3zrUpzFFbj8QRQkTwTbEQIW8mY4
         xw3g==
X-Forwarded-Encrypted: i=1; AJvYcCUD4HLj5W4g0IucCkpz8+QeOv9SjwSMbOlfHjEYgboV+UWZYyrT5KCPoJfvKSVcpfQ6SzYwW+78+No=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHWO/I+JCv2FSFjnoTTM4ne3qlIhP9/Hmz5hPyPOSDU3qI5mzk
	+BGiN1WVxwjgAINDTvaFJxLDTRn/qXsLq087ZSonTq4R8o1hsNlkANmqD9FzTYHh
X-Gm-Gg: ASbGncvKvQwPMLR2IyGoMgKCJWlT1Lm3ic5Pu1gPgvOdD6k/Ds+y1kybgKHN6EM/RiX
	1WojTXBbgwHe+hT5KQVoajxRFUJ3zQMXdqWrE2h9zpYrZS4JMyucE8tm9i0l0QKhQdhwtfnswke
	d/EbATbvbfhqbv5OIcHuXkwlcvnVxRYSNweLKIGDp9KTthUQilapDTlFc2p1eQIri1MfSIQKvot
	uDchf9MqPEfMyJCoUllIYVbvWeu8hYjzlC7N85ZTRJFkS3UeN0DRDEXfVwsjnCYts8onDT+g/ll
	1laNXUISRsIP4lc1JNfNw9FHPnELkTfrxZVC7bhp+u1RsCVv/i8EGFSjSD85K5WpCtJq5xwyKI3
	VZavkVsiZ+GIZ1rbaQaOl+/CqV0CAuGKA9YpinW45TZU+G4GSF+ugtZbaksr8T/BU
X-Google-Smtp-Source: AGHT+IEK65Z+wZJ/0PI3Kme7kRjnN5jVxnfDhTljMtTJOom41Abr5PkDU8uiVRGjk5Kta+6QeCslcg==
X-Received: by 2002:a05:6122:1804:b0:537:b126:bf07 with SMTP id 71dfb90a1353d-53a52d71f20mr785167e0c.1.1754645357896;
        Fri, 08 Aug 2025 02:29:17 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-539b02a39f5sm955068e0c.27.2025.08.08.02.29.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 02:29:17 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5392ba07940so1335246e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 02:29:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWueeJ6WZ/fzVYBctEVvj4lD20KDBlS0lHxpubq+cy/64aj9xHB7Ghjjc3APly17H0JrUIaV7V3yxs=@lists.infradead.org
X-Received: by 2002:a05:6122:8285:b0:535:e35d:49f4 with SMTP id
 71dfb90a1353d-53a52f1316bmr853973e0c.11.1754645357385; Fri, 08 Aug 2025
 02:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com> <20250808061806.2729274-2-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250808061806.2729274-2-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 Aug 2025 11:29:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUsFFd+orb17oQqoEidzYWMRjPoqMyzpgrdnicc=MRSYQ@mail.gmail.com>
X-Gm-Features: Ac12FXx8i1QT-zXz7J1iKPWv5wh3EdWdZPqRg8Ft3ReMHz9bkxHLJxwo8ny7LqM
Message-ID: <CAMuHMdUsFFd+orb17oQqoEidzYWMRjPoqMyzpgrdnicc=MRSYQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] soc: renesas: rz-sysc: Add syscon/regmap support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	John Madieu <john.madieu.xa@bp.renesas.com>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_022919_360066_0B897E2C 
X-CRM114-Status: GOOD (  29.91  )
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

Hi Claudiu,

On Fri, 8 Aug 2025 at 08:18, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: John Madieu <john.madieu.xa@bp.renesas.com>
>
> The RZ/G3E system controller has various registers that control or report
> some properties specific to individual IPs. The regmap is registered as a
> syscon device to allow these IP drivers to access the registers through the
> regmap API.
>
> As other RZ SoCs might have custom read/write callbacks or max-offsets,
> register a custom regmap configuration.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> [claudiu.beznea:
>  - do not check the match->data validity in rz_sysc_probe() as it is
>    always valid
>  - dinamically allocate regmap_cfg]
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v4:
> - adjusted the patch description by dropping "add" from
>   "add register a custom regmap configuration"
> - updated the list of changes from Claudiu Beznea
> - dynamically allocate the regmap_config as proposed at [2]
> - this patch is needed for proper function of USB (as proposed in this
>   series) that being the reason it is introduced here, as well
>
> [2] https://lore.kernel.org/all/CAMuHMdVyf3Xtpw=LWHrnD2CVQX4xYm=FBHvY_dx9OesHDz5zNg@mail.gmail.com/

Thanks for the update!

> --- a/drivers/soc/renesas/rz-sysc.c
> +++ b/drivers/soc/renesas/rz-sysc.c
=
> @@ -117,7 +125,26 @@ static int rz_sysc_probe(struct platform_device *pdev)
>                 return PTR_ERR(sysc->base);
>
>         sysc->dev = dev;
> -       return rz_sysc_soc_init(sysc, match);
> +       ret = rz_sysc_soc_init(sysc, match);
> +       if (ret)
> +               return ret;
> +
> +       regmap_cfg = devm_kzalloc(dev, sizeof(*regmap_cfg), GFP_KERNEL);
> +       if (!regmap_cfg)
> +               return -ENOMEM;

Is there any specific reason you decided to allocate regmap_cfg
separately, instead of embedding it into struct rz_sysc?

The rest LGTM.

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
