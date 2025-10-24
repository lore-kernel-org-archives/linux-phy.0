Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8331DCCD1AB
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 09:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMwm2fqwfUg9AUjFV9ca4nnEzd6voyzSyRrk6BjBQPE=; b=JUT28dyN0d7c0/
	gNdP9/nw/Y+JxgaZYWCp6pv0PIalH2Nn+mz+N5GHDP5f6/GpQ0xLW+LsTbnRKE3Ds57iZF2eni3Ov
	zSslTZgDudhHVn3kCxxsjTHzmvDriqrnPksb3bw5KEythy1yK3NwDXSTI++D19vc+cj2RDwgE1/Le
	1I7bQWEv73zqHLtsRWn4kt32ZVtA32laVTENxw1P3jNsTMNsvJApT1ABgk5Dh/uEVomUvvZWGbqho
	lTjCnIRxdde+3VldYQ4SunRO+6NRkVZv87nqTHpDi6VjaJGKkrmmylp3rlx3+u75tMVDvV/U1T80D
	n19B5JPPfwY4paXwX1HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDtY-00000008qzL-2Y5w;
	Fri, 24 Oct 2025 09:15:37 +0000
Received: from mail-ua1-f47.google.com ([209.85.222.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDtV-00000008qyq-0p0R
	for linux-phy@lists.infradead.org;
	Fri, 24 Oct 2025 09:15:34 +0000
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-932f654eaaeso1294361241.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 02:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761297332; x=1761902132;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BrBpEYe9bLey+4S4JjtKCcOIac4hS6dnR1uT91EPVAM=;
        b=fzuA4FrJXILVHU5x0qNBpTKw3+cCgRUaN8VWenmMUoNIoSElfiFAt8Nj+qLq0bS+UV
         /+lPBX3mazefyS1LElVTfLFdC9I5UzlQ8elUSIsBnHc3fmVnhBPJXDQ+w52JBvvmkOeE
         pEGs5QZyLX+l/NUB4+Fq0V+7qTFRPNNT83kPlSBRyMU7oT+1xMy5fNfu2/k+13Nvutok
         tDbBgJurKGrcCSb7bH00H+djovplmsBX8wTXa0/G1wedNHm1YoNBoHeqy8WcSJXFN745
         4ehwL+VuGmlp12d2KxHuj/HMt/nOu8MyCtTyC+ecbD32uV+I0MYhBZKXoUVPnDbpWEAd
         iUAg==
X-Forwarded-Encrypted: i=1; AJvYcCXvgxobfnMlyjNxJ8KRSJxwsVTs5pGMBQfXrWJ5rGx0QPYjVZCTP2iv0VZiw/EvRBxuKvOvD1BzQL8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywr8uQx+xGIrKx7UunwLsJwxHX0rNEXvNGVDBKJvzu+GE8b4FKd
	LhyfoLLJOLVqv0Qrp5yYBcPvJRifKaWEpNCw6J8hm8bwlkG/HwDiodp/Z7q/lx4L
X-Gm-Gg: ASbGncvcmp1Ni8BNMF5tvuRBrDIs0QpUm76wVDZ81nVPYVckcF8at/hS3Mlk6hlQDPO
	PQHCUeFLPzMRsCKmHOc7mmOfEmlJnVckqawSdWSoWSaQo+uyUprgdNzNDPnhq2rRD/OgAbw+Rm9
	xMN+Vdyoz9BK1DfJAE7sog0LxTuL+H9OA02rhb3/V+lpy3Rl/sOLiUNvLfZmSPGI1oQuva/Y6tJ
	UcThNtN2xzBfXkvjo5vN0a/JpdhUQJbt+GpOE6mBWGakA76Gn5pvVimXZa+dSuChjppGRvkNSvw
	m07s4jSFKit8AejXIANutjNcrlXEPxzK3HZTsJ/j3ihzcpGCuXNzd+nTYJ90okMGVKCXgjCWCcw
	bo3DnIwgErpicoYTI5Ib688Y+nlRYPxsb0qbrYkBVLYnlDkrGjSTzrV/eAHOTD+eUZdNNJS4sAp
	/r9eOwCUAqEVOBVobS4drLQ06Aq+KRzlXGz5bvCQ==
X-Google-Smtp-Source: AGHT+IHh+RqzT19bMroJ5X6RBa5/uJFp6bp/+XAZ4Z9YtbECbLxKKgi6IWMUKh2c8Qtlkh00RejvkQ==
X-Received: by 2002:a05:6102:304d:b0:5d6:3554:2dbb with SMTP id ada2fe7eead31-5db3f8c42e8mr438724137.16.1761297331676;
        Fri, 24 Oct 2025 02:15:31 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934abaae96asm1838049241.8.2025.10.24.02.15.31
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 02:15:31 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5aa6b7c085aso2364867137.2
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 02:15:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXwIAIUd2GtwjdnhLx7Uz3cnJVJuwmiB1w4pcWLu+L0LbtyHqsZXVPmxEaBWq2xY7ou8GEyy8UTj3A=@lists.infradead.org
X-Received: by 2002:a05:6102:12d4:b0:59e:a2d5:2945 with SMTP id
 ada2fe7eead31-5db3f88a5f3mr252149137.8.1761297331043; Fri, 24 Oct 2025
 02:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com> <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 11:15:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
X-Gm-Features: AS18NWAoeA07bJLB0nX88rm2l0IWTdjwxg2U5L-RZOoaf-8oTt8PVHt9R1PDCKg
Message-ID: <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
Subject: Re: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_021533_258658_5C2044F3 
X-CRM114-Status: GOOD (  19.04  )
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

On Thu, 23 Oct 2025 at 20:41, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable USB support (host, device, USB PHYs).
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi

>  &pinctrl {
>         audio_clock_pins: audio-clock {
>                 pins = "AUDIO_CLK1", "AUDIO_CLK2";
> @@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
>                          <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
>                          <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
>         };
> +
> +       usb0_pins: usb0 {
> +               peri {
> +                       pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
> +                                <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
> +               };
> +
> +               otg {
> +                       pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
> +                       bias-pull-up;
> +               };
> +       };
> +
> +       usb1_pins: usb1 {
> +               pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
> +                        <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
> +       };
> +};
> +
> +&phyrst {
> +       status = "okay";
>  };

This node should be located before pinctrl.
No need to resend just for this.

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
