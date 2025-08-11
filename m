Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF743C87FD2
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 13:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dugOiLVDM8laiZHT/pxos7Amws+i5coKNU7R+ctzGrk=; b=tas9U0DkDAVr9U
	enz6G7gF49jqHdIHis26JaRFjEIb2jS1NOg43oA6EecNWVozXUjvHYYDJVtnqn9L+3X5S0tWy1uMC
	Bq31Rufut3yu0IpW/la7/UvcPH9I6guzGRPSY+ZBh8F3mSjsVawWUdgyn/VwA4nbcVvnGJTY+vzkK
	4UNoYHHhloUh2fJFlno3RroZE3iBM2bPI6d3qCrwxivnfr7O3Leqmm2JiaezFnp3s049l1IHd+NDl
	JEtxIs85c1cgZFCWCC52k0QTbwPFDwz0ZByGKYQnikj2H8cCPH5DstU6pdjgbiWwqJZXBfFh67LrL
	/pNVWmyT0Cqw/IKX3aZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSgv-00000007qKl-296u;
	Mon, 11 Aug 2025 13:35:57 +0000
Received: from mail-vs1-f52.google.com ([209.85.217.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSf9-00000007ptS-1gDd
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 13:34:08 +0000
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4fe98e7b241so3132421137.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 06:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754919245; x=1755524045;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RjQkspi4MLubyyjI0/WFDwsqdNcqXCarE9lDU/gnxqA=;
        b=feIX6FC5QETtnOhrefyUAqy105K7wsbPGBemQVK52WFiY9EvfiuSxKmNQUoWp8RTK3
         ur0EKk5yKRF65HN/udV97/8Klffk5erAaq3IbJ4q+R4+cI3BX7pSFvetd8YZbJ+E63oS
         lFcfKhxc85/amKNaOYJEl2LuHM9Ldm0a7BlKN0fdtX5WPICGMPZYHNQLbXKEwO3HXsjG
         s8G+C/IGUaQw65zpmvR6/U36335OCSYmCMZCvDEEFfHOIHGwMthRJJ0iCgtZc3nR66KO
         pKkpBITf0BlewZnis6rwz8cdjjTdnQRd3Mn+jl7c7/eqUF0KeF9pWdIgvs/pdeOR800w
         1xZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUmlZPATYH84yhpnRgoctqEmkgJl2LIl+THjyFJzgIngA/GBn4nLs4zi6zoa4BMj6IYV/OFHgO7Ac=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmKNkOM8aGIYxw27rnVzrHOiRpyOO+UcGrTkSRSba+y8HwTedo
	0LYhHWhmgsnjekbwT0wOmrZmRW64ynpYoODAda2QLGdMBC663XOuGWUtH4ucG0YO
X-Gm-Gg: ASbGnctAYosheLTvuSpAFkZ6k7WYp2vT/+SS6WVAOVlY1pcqWNhxcsHCOSTKTieE1Po
	3P9rW/aE2yPDbFQ50w55kopqkOYd7Zj6eDWL92CPPaNBHGAV8ehHS4lWjWKL9dbfy+2Nbdo3Nid
	iiMpfTPKJYnFwFc3aQNlp7HolSTRsGHuPAHxQGRScaPb8gByZfumbT5pUN+suRmA7FTXMViaEGa
	6k7IoF/fjWBpDjh4zVyJkw9krI7fmL3VtiHsRaz89aKJYhZj6XXVqMeWGUY1NKaZQND8+9DvgPG
	ALuhJKihM6rZWeADY7FaHBG/46J++dho2aCs/BvVnO8qW263QuSk9lEu22s9WGYvDJc9qcfBBmw
	Rb2hYFrkyw+0B9XWDhkYRaxmjFCJmkh6e4/0lwO1ZjLomFZzbgd29K1mPLF9TC0VG7Uh9luo=
X-Google-Smtp-Source: AGHT+IHjNdKlBEViCsW5Q/qHiUnEKLUg8AKnGU/uuYAfklD/4BYrCBSlAntk8PYrseVlyzI7bRJQPA==
X-Received: by 2002:a05:6102:d90:b0:4fb:ebe1:7db1 with SMTP id ada2fe7eead31-5060d6ab629mr4998309137.12.1754919245507;
        Mon, 11 Aug 2025 06:34:05 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-50629bdd28asm1744708137.8.2025.08.11.06.34.04
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 06:34:04 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-4fe98e7b241so3132386137.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 06:34:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCURAL8i5f8M5VRtzTqdV+tFYPJOpV1/HTfsBDBoQkyG9EJk2vpM7R6B4nXRsr/x889w2YQOCR3EUoI=@lists.infradead.org
X-Received: by 2002:a05:6102:5109:b0:4fc:1631:cdd1 with SMTP id
 ada2fe7eead31-5060eed10aamr4511549137.15.1754919243985; Mon, 11 Aug 2025
 06:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20250808215209.3692744-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250808215209.3692744-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 Aug 2025 15:33:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUWo=hYPWPrweoYn5rFC50aV5EV1xqwFHmLp27GRjEADw@mail.gmail.com>
X-Gm-Features: Ac12FXyaruwz2KkVarRF9RjlDkdsU830kR7SxQSLDrclAsRoH40uxlU_2WKaBv8
Message-ID: <CAMuHMdUWo=hYPWPrweoYn5rFC50aV5EV1xqwFHmLp27GRjEADw@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and
 RZ/N2H support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_063407_438886_001D85EF 
X-CRM114-Status: GOOD (  22.60  )
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

Hi Prabhakar,

On Fri, 8 Aug 2025 at 23:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the USB2 PHY controller for the Renesas RZ/T2H (r9a09g077) and
> RZ/N2H (r9a09g087) SoCs. These SoCs share the same PHY block, which is
> similar to the one on RZ/G2L but differs in clocks, resets, and register
> bits. To account for these differences, a new compatible string
> `renesas,usb2-phy-r9a09g077` is introduced.
>
> The RZ/N2H SoC uses the same PHY as RZ/T2H, so it reuses the RZ/T2H
> compatible string as a fallback.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml

> @@ -120,6 +126,17 @@ allOf:
>        required:
>          - resets
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,usb2-phy-r9a09g077
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +        resets: false

By the time this hits upstream, you will probably have reset support
for RZ/T2H and RZ/N2H, so you just add renesas,usb2-phy-r9a09g077
to the conditional section above?

> +
>  additionalProperties: false
>
>  examples:

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
