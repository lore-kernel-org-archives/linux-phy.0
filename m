Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2423BC4453B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 13:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8V/R66875UIAEoiB3b8fipe2QVqXOX95qES5AzU44w=; b=V4n50Q5j2O1+c7
	NUXb/lHHvuyvCnhKmUnO47w5jqJ15MRCez7eTQ0pcWsKZRj0SXI0CdRKtXWKES6fjBc3hCwJZZloj
	PbcHpbid9snOssviidH4vfjTWxlbvEEro6aicf+vHOvPeZ5yscmRq9IV/71nsMwHHBB/EGKhS+y0I
	kS7k8yVzxABaJfJOaZm6I6h/eWvujy+px0ghfpPzR4MT8glLREA5K6sn4+CToC6JGNl5M9pBlpuwc
	l7oYci8U15IS1slHw98br/g8cumuedifFhHrTReqGQoTsC0UjwfSs935X3I7l4O5QqNB8xxAd+wQQ
	igmYy+KLdJuPptAyH1eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYZL-00000005Wfb-0Aof;
	Wed, 21 Jan 2026 13:48:23 +0000
Received: from mail-ua1-f52.google.com ([209.85.222.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYZF-00000005WYx-1pw6
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 13:48:19 +0000
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-9480078b2fbso583402241.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 05:48:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769003295; x=1769608095;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FDhI8tIlTzFkDL9hKs3tIMe24M9SzYYyQ7hRvEJ46wo=;
        b=mNxNO9SaLdjWh9GHE/P8prDPBBUZ05ROVRo8gh0IM10AeT4JyLvswpvqizTYYqiwfg
         0UhMRjSVbrQTKBJe9JJdXOQgwugUoHdkdsSfdOFelDiV8nBWRlnz3LyiJCHz62edIY+0
         Sm3qEEbw7NCjXFovWUauwkwdWX/+kNoFnKuaXe0bRYtEEe9P7EVKPuqIcxAkSHGpe3L9
         A3p4KTwa3hHmJEaKI6aO5mG80uerAaNBzaPek6IXVVyXcwYQwOqNWjcpnlIqG4GLVX1K
         9WwQFi/xdi5eYZAkhiTA8HZlS1ttIzsSYc67cYCeKcgjNXbMJOGg+c16VekcscTTjopD
         R7+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmHnxNZff3ikxecWVmTF00piYTwyncXPZKRBNxj9jfPrqGksIL2kCUEuZUrtb3WG9kxujVNMAuj9c=@lists.infradead.org
X-Gm-Message-State: AOJu0YweBpiCJlMmQMfrT1gH6Z1n17voVHYZJAicyO+H0VDzMu8LXI81
	kOhfSpGd29H45S4xCj7xHxjgfxmnkHJMaZRAbfeHEKX/e70KzQvtycYIaYNwZS7z
X-Gm-Gg: AZuq6aK3pDCD2yljhpFGTbBDe95Z+gAjxP3Ri3KgbIAcfb8ZTtpl+47hUv1FYD1K6e4
	dAcdRicaBOXz4wFpdWtF1u/rp7Ze+m++WXjJNvIHpVkTwYT0T6mrWCSl9qjjONLCkyA4X8ejVYh
	ao3EquO8AolDdRqXaLxmzbXaIOJ3AYcTXE+6xqYRS4110TmaNjH8XpR6qtmNRUtSXOPiVjeuSTp
	9L5HonzCe+bDtF6/rVIPYdQY0udPKJbNF8aWhw+zDNVE/4WOdhEVbA7Yw2tLO6QnafWr6LLdtpb
	AAa+pNEMj3y3/7ChskiEfAPz1iMUyzPrkyUDFfhY3wNqydMlzuENNDYWGv/NXqaB+caCwtLG7Vp
	LegqA0SfBv/l/UyXWOXGMnvGtR/4W8RLeGSpsB53HFJSKPXauEsNPFG/RS6SbEflD8sIwAMVWWK
	fYwTqn+ZiYdH4GsMjrh5HFSquPlpEeANzSs7MExBirOPxJKdJ1
X-Received: by 2002:a67:ff16:0:b0:5f5:259b:66e1 with SMTP id ada2fe7eead31-5f5259b6a52mr336717137.3.1769003294951;
        Wed, 21 Jan 2026 05:48:14 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-947d03c29d7sm4937816241.2.2026.01.21.05.48.13
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 05:48:13 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93f523bba52so534675241.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 05:48:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWiT4SDKCAdOS4THMyN34KnkMCawxgvALUd7MK/KeO5tyOWznwOwfXAeUYcV7ULnIMru4ibmV0hsiM=@lists.infradead.org
X-Received: by 2002:a05:6102:d92:b0:5ed:ab0:e5d1 with SMTP id
 ada2fe7eead31-5f192539f6amr7680722137.15.1769003293334; Wed, 21 Jan 2026
 05:48:13 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Jan 2026 14:48:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
X-Gm-Features: AZwV_Qi-WLBK0O_q5kA0yh25XZR3hcQUNirELFZFoxr2VQqkUKi0-PPk2Bs3v1s
Message-ID: <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_054817_511152_174874B2 
X-CRM114-Status: GOOD (  24.48  )
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

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on Ebisu
> board. The clock generator supplies 100 MHz differential clock for both
> PCIe slot and BT/WLAN expansion port, as well as for the USB 3.0 PHY.
>
> This configuration is valid for SW49 in OFF position, which means the
> PCIe signals are routed to the PCIe slot and U11 9FGV0841 PCIe clock
> generator output 3 supplies clock to the PCIe slot.
>
> In case the SW49 is set to ON position, which means the PCIe signals
> are routed to the EX BT/WLAN expansion port, and U11 9FGV0841 PCIe
> clock generator output 4 supplies clock to the port and &pciec0_rp
> clocks should be changed to "clocks = <&pcie_usb_clk 4>;". Once the
> BT/WLAN port is tested, this can be implemented using a DTO. Until
> then, assume SW49 is set to OFF position.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
> @@ -53,6 +53,12 @@ backlight: backlight {
>                 power-supply = <&reg_12p0v>;
>         };
>
> +       pcie_usb_refclk: clk-x7 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <25000000>;
> +       };
> +
>         cvbs-in {
>                 compatible = "composite-video-connector";
>                 label = "CVBS IN";
> @@ -439,6 +445,13 @@ adv7511_out: endpoint {
>                 };
>         };
>
> +       pcie_usb_clk: clk@68 {
> +               compatible = "renesas,9fgv0841";
> +               reg = <0x68>;
> +               clocks = <&pcie_usb_refclk>;
> +               #clock-cells = <1>;
> +       };

During boot, the rs9 prints a warning:

    clk-renesas-pcie-9series 0-0068: No cache defaults, reading back from HW

which probably shouldn't be printed at the warning level?

> +
>         video-receiver@70 {
>                 compatible = "adi,adv7482";
>                 reg = <0x70>;

> @@ -871,7 +902,19 @@ &usb2_phy0 {
>         status = "okay";
>  };
>
> +&usb3_phy0 {
> +       clocks = <&pcie_usb_clk 6>;
> +       status = "okay";
> +};

This does not work, probing fails with:

    usb_phy_generic usb-phy: dummy supplies not allowed for exclusive
requests (id=vbus)

Adding a fixed regulator that serves as vbus-supply like in commit
fec2d8fcdedaeeb0 ("arm64: dts: freescale: imx93-phyboard-nash: Add USB
vbus regulators") fixes that issue (and my USB3.0 FLASH driver is
detected, yeah!), but a more accurate description would be better.

> +
> +&usb3s0_clk {
> +       clock-frequency = <100000000>;
> +       status = "disabled";
> +};
> +
>  &usb3_peri0 {
> +       phys = <&usb3_phy0>;
> +       phy-names = "usb";
>         companion = <&xhci0>;
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
