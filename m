Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9006CCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 07:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IdnwwSfjF0inVJW4tt68iUpeqHy3jOoxgCXZaqVP/c=; b=mQ8MaElOJl0Zic
	p1QLIKFBLJo1qXKKXQf6jFOcNRgb4IhxpOgrO+Cxb+PfXTp6DXgo29lEUSOT9Rc+43r0xOU6nXTVe
	CldN4iIjmQ5wvuYpze8oNcGcr1H7gYvAIenmVY25ID+cmXBKhkENJMedY2dY4GWq22uPiB4eeqP1P
	opgqUbyxRgoWe/r6iCcFtC//OkAakAbmzzVJ8J8vIuUGxInJ41y3SJ/AUSYwnx1Y8KLH9N17pOmGp
	CbGC062h+PG29vWNV+9XflmkDVFqv7KqKSGWPqcMGQitBFEVEvv2OZoCaCE2T6fVNJww9a2gcDw47
	9aG33u+W+63PSj7v7tXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9IrL-00000003pME-0lC2;
	Thu, 16 Oct 2025 07:57:15 +0000
Received: from mail-ua1-f46.google.com ([209.85.222.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9IrJ-00000003pLg-3ERz
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 07:57:14 +0000
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8e261568020so154583241.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 00:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760601432; x=1761206232;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kd9DhXGFTz7VluvF3CXaOYryMfT47ujx56ubcyYXsIw=;
        b=a12+/1nXIkmpJmRbk7tL8eVRn9w9b/DINNpTfSAH+5yEmOwS+p/m/EuGzRdwqF7N2/
         tS3h3FZfxSIE7jYrlfaRvdumkZeA65Bfu+KFGXuWhjdWA3RghZvUq5vglCxR1+rDvwGK
         ZVvnjBv3m93jt7OrI1EZfoaI5aCgomuld9QXRfrVbgkqdQZnmambV2dEKtLleeedazZY
         Zr44WTw2AASpgR1zWRpRhih7YjQrUY6PZMJsh5HLwaAFTFmvlUTHCCkUkElBLrdD7Ujp
         G11GHFyA/djDqYDv7fSFrRJfzEPw/EPpF8rs+dNVAu5wskaub28fAcMl8DZJmEQ9RiOX
         5Fbw==
X-Forwarded-Encrypted: i=1; AJvYcCWE9AtJ8WnRcCyoJJdKCQ9M1L09uR4zvc48eLYOWPlQUY5KHYvlsMqSwLF0gjmJFCLMgKZdqkL74Rk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYZngTAjo+Z1plIH7evUY0gHymtiltNqFRTwpO2mpX4V60c2mI
	s8bQ7I/4S80EnqGdQKbLmBM71SUGp7wENRvN1Mt5/01ORpQElsYdgKvMni50iQgr
X-Gm-Gg: ASbGncut7VdbGKKRyhmKMo5/QX8VGtCtODK/gnGOtNA0d+MkUtVOModr0AClYeUptv/
	on/ch4KYgADMjSEneSS917ETkReYlEMRTbbc043KQx/bqPlK2Eki/KFTqCjlZ5ZRYnDJRyl2RT3
	mSb3sCYY0NoWjFoFRDI/+sCYvp0h+P9dUYDMoICodJaikgVV6uAsog7Yduh2WmJOU/0607Ad8qs
	9+5vghMXf/ZXdcNlGbANhNd1oXkLHRzxmfJftc4jgpuD6PBkR/eyvAVq8a3wKTTqXorpm9oAeya
	PN8KAx0EltRgMJG5EsQYSMVhOM1jLENE6pe2TiS8Jh47cx+++7dSRR2KDaeyMPOg9WIeJqyhimz
	CQ/xu+Pq6AiA7bX5eljL4ezq1KtIFkU2c79b6/1gvIEigUfvwCNY4RYq82mCQlNHdeeD1waz0ks
	OU+d4mKgAceQhtQa3kwmzNgZV5UXKtlsPjkJaqUKfUPs/UhyApojX3i41FQSw=
X-Google-Smtp-Source: AGHT+IEn1swwQnOdVFf769tAUFlBWl1JNk8s61+/wn45UonqFMdqx8GSAAmmS/ExIeyghnHnpZIK7g==
X-Received: by 2002:a05:6102:c92:b0:5d6:a83:a990 with SMTP id ada2fe7eead31-5d60a83ad14mr6225319137.37.1760601432054;
        Thu, 16 Oct 2025 00:57:12 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d80fdbd5sm5795703e0c.22.2025.10.16.00.57.11
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 00:57:11 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5ccccc1f7caso204336137.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 00:57:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVGOqbc6Q/bG5pbh/NEOXllKOdVPh0vv1FOkAhpC3cppHe7W8z1JAEh6xwqAS8XmTMjnFT0k9ca8Mw=@lists.infradead.org
X-Received: by 2002:a05:6102:512a:b0:519:534a:6c20 with SMTP id
 ada2fe7eead31-5d5e23afcd1mr10705349137.30.1760601430958; Thu, 16 Oct 2025
 00:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org>
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 09:56:59 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
X-Gm-Features: AS18NWDjBoTWi0arzS-uHQaIyzTZ8PYUb4ECqZaEUF0sSO-4JEe-m7M7qjhxsvY
Message-ID: <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_005713_813742_55332E73 
X-CRM114-Status: GOOD (  22.24  )
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

Hi Rob,

On Thu, 16 Oct 2025 at 01:20, Rob Herring (Arm) <robh@kernel.org> wrote:
> yamllint has gained a new check which checks for inconsistent quoting
> (mixed " and ' quotes within a file). Fix all the cases yamllint found
> so we can enable the check (once the check is in a release). Use
> whichever quoting is dominate in the file.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Thanks for your patch!

Since you are mentioning mixed quotes, is one or the other preferred?
Shouldn't we try to be consistent across all files?

> --- a/Documentation/devicetree/bindings/pinctrl/renesas,pfc.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/renesas,pfc.yaml
> @@ -129,7 +129,7 @@ additionalProperties:
>
>      - type: object
>        additionalProperties:
> -        $ref: "#/additionalProperties/anyOf/0"
> +        $ref: '#/additionalProperties/anyOf/0'
>
>  examples:
>    - |
> @@ -190,7 +190,7 @@ examples:
>
>              sdhi0_pins: sd0 {
>                      groups = "sdhi0_data4", "sdhi0_ctrl";
> -                    function = "sdhi0";
> +                    function = "sdhi0';

Huh?

>                      power-source = <3300>;
>              };
>      };

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
