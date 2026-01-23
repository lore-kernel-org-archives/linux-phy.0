Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23766D74ED3
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnSoyTpVONwDzP152HvThUk7ZQ/lXyZjQQofj8MaYm0=; b=I2X9R1VbEif95s
	7vrgOVZc3Xyz6t5VULLiLBbtI7hw9fyL3axpF/TsNaxs/tape7Fd4/hupBP7zVP8RrKIx/1c8js5f
	gUTreUlKcw5SMsHfCySliZSpz1we9t4g2LnvHqU9SBGfdsDu+T/BIV48+I5UPfgjIPFBgJZb4zs3Q
	vrwAdcy7aHzy0Nfog0XHKWUVfk/JrPnMCtTGUSL6POp41/f8Nm6MXnicecOtabPeuj4rDODhjBZbl
	rWBFx7XMlmZKv7tNuE5WpNAcUjslFHqUwwpmHUDc4VBwTzcmF0AR+C6iHZD8uaVyCQEsd1NNcuMOk
	w2K7LdPP0X4WQiMnbgTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHM3-00000008yl0-2zkd;
	Fri, 23 Jan 2026 13:37:39 +0000
Received: from mail-ua1-f44.google.com ([209.85.222.44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHM0-00000008yk7-29Pg
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:37:37 +0000
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93f5774571eso552510241.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:37:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175455; x=1769780255;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Na04EJHnGuwBWJSiBwz4H9SjxnMaXn6qdMG7GO1T4ho=;
        b=WHX+5JaMtCIp7w1gfTqKFgMhIgPYcZyoXbYmV+C79QtAwQN30a0IcHJWz2qdBWH7bm
         uhvMAdt5NrCmJq8r5NDCpe+ZyzIcCTIv05QK0C09WlegIy5q1NByaXZ4KC1/pbRH8UNK
         /MxctojFa/lbsMmp9xZEkoxStIVOJPlOJ6V3lDEk7qd+QYfBWQa1mQHl8BD+/qBom7Vj
         3BMUPiaIQmWBRboVlIRn16/Bj4nPZixiUgPleOAJWt/B4WnqC92I5hVOeCicOrzUxDlE
         oq476aQZBaBDO+3Rv6Du4JQXhFbT7VYLRGGgw/GNqXI5yh8sjW0LxIv4lxEcdf0lNkKu
         nxFw==
X-Forwarded-Encrypted: i=1; AJvYcCUAX3Lx5woxwBBiMA24Zudv5a6jvK2n3Z92cV7vP/SnJFgT3k8jHT69v/VANo9lp3erAZG0Ie/uRxE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwO9W/Ps34sYklyYRmdHRf7hwJVdCSQDviVBRR/sHgj4yH/I9NB
	8XpclRF5iKv1CCX7NQRih+mMrHBRAQ68l5KOr4Vk+dGRd+hGKCj1AL3H+OB6RD6m
X-Gm-Gg: AZuq6aKSvlZHkiAgUJna3FbAuxXTqcFXZcyrTbm/Z/TQq+e1TvbBNI/n/XE/LwbBRiK
	ntM8pzr9Dw3k5mMhebodsU+N703o2Ad1vFpNtr2jjT8LVQKcl0NuSHSEEOA4IjttrrmzKxFZwxA
	Ax6WTCiT7isu4PsmMf5ACNcSSq4WizmacL85Ls6pai1Aiiviyf/VLC3bn0TIoCgLTQ4dnxA3dOY
	1OHMJNZki88n3wTF0Nr3VBPiRWLFAEjETiWsIU7slp31QbNzu8S9Vz/RajpU6DnKCCkQSMy0IEa
	FYbdbhsufLJV9wNFg59H6C+uWwwVMAAFx4u/su7x5PYabnjsf0u/VAHL6PdFNGoVQx5amneZJ8k
	VWMhpqrwRDTAsnBd42uSW+KOHEVJgb7p3FB1CmuW7Q/47sIGbeC+a8pM6OjFH2FwqnAqe72En7w
	/JUfxSL/7XiaZSEm7ITBIcMKtuKWc7/X0tlff4n0R7t7+NFert
X-Received: by 2002:a05:6102:290a:b0:5df:c069:be95 with SMTP id ada2fe7eead31-5f54baf2c21mr949237137.11.1769175454851;
        Fri, 23 Jan 2026 05:37:34 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-948369daf5esm160515241.14.2026.01.23.05.37.32
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:37:32 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-94801cf4bb8so639450241.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:37:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUWJTTuIf2OzBMVkcDqacsaGe28FYuP37G+X52mzISWpcaX82Ph+sgmhHXRKq/cXdSDqNhr0u6qhSo=@lists.infradead.org
X-Received: by 2002:a05:6102:3753:b0:5ee:a6f8:f94a with SMTP id
 ada2fe7eead31-5f54b9a5530mr796917137.9.1769175452517; Fri, 23 Jan 2026
 05:37:32 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-9-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-9-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:37:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV7UPWCqj4A6097KKT+Es2Zz_mPeJoyJd5qDMudrNx_5A@mail.gmail.com>
X-Gm-Features: AZwV_Qg4phN--rvftcV-K3FmN-Id0724_eD0xvFoKX3QxXmm0sEuNGOexfRaO-I
Message-ID: <CAMuHMdV7UPWCqj4A6097KKT+Es2Zz_mPeJoyJd5qDMudrNx_5A@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] arm64: dts: renesas: ulcb: ulcb-kf: Describe
 PCIe/USB3.0 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053736_579220_6275AB85 
X-CRM114-Status: GOOD (  21.77  )
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

Hi Marek,

Thanks for your patch!

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on ULCB
> board. The clock generator supplies 100 MHz differential clock for both
> PCIe ports, the USB 3.0 PHY and SATA.
>
> SATA is not yet described in the ULCB DT, therefore the connection to
> this clock generator is not described here either.
>
> The H3 ULCB schematic does describe connection from output DIF7 to
> USB3S1_CLK_*, but these signals do not exist on the SoC, therefore
> this connection is also not described.

That is the case because the first ULCB came with R-Car H3 ES1.0,
which did have two USB3 channels. R-Car H3 ES2.0, M3-W, M3-W+,
and M3-N have only a single USB3 channel.

> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

> --- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
> @@ -352,19 +352,30 @@ &ohci0 {
>
>  &pcie_bus_clk {
>         clock-frequency = <100000000>;

I will drop the clock-frequency while applying, as there is no point
in changing it in a disabled node.

> +       status = "disabled";
>  };
>

> @@ -475,6 +486,16 @@ &usb2_phy0 {
>         status = "okay";
>  };
>
> +&usb3_phy0 {
> +       clocks = <&cpg CPG_MOD 328>, <&pcie_usb_clk 6>, <&usb_extal_clk>;
> +       status = "okay";
> +};
> +
> +&usb3s0_clk {
> +       clock-frequency = <100000000>;

Likewise.

> +       status = "disabled";
> +};
> +
>  &xhci0 {
>         status = "okay";
>  };

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
