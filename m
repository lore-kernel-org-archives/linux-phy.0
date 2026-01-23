Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A0C1D74ED4
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Va9JKsKozAEQQiL1bnHoWhTVs2O0L8V6odyjOi8fga8=; b=RI94s20PWV4KMI
	f61KHqQnoI9KqFBCQyNpPgokzIebOeSb1FWkaX4+5WW2X0JyCb/FvMWnZt7N48VPKR1gkkRx8j2Ui
	4kaJrkycSGavQgdob+BlJBZCWo/2qiea8RDXrJVwPLjgZbEiE4mYkOPItQyA48mjMYoKVGNt3BT9z
	rfHQ/cuRmuLtprCBAlS6L5Sgile0ZGLNyhijtCCcT1K/3Li+nBe/ullRv+UP1ED/B8WlNl2LQ/PAz
	K4Y0D+nP5hTyzMKF2Rg8W3FkfwTAWIcGK++wqOU5CX9QN803qY7TY2qqxsYSG/AdAzYUUwzk8EEx/
	0JH9out0c6CRSA0Fr7gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHOD-00000008yvl-3HLX;
	Fri, 23 Jan 2026 13:39:53 +0000
Received: from mail-vk1-f169.google.com ([209.85.221.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHOB-00000008yv5-1n5S
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:39:52 +0000
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5663601fe8bso1744262e0c.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:39:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175590; x=1769780390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8T4Q453c5FamHIEguPjFSHxEM5Rnl+xXzrGuGiGD+qg=;
        b=Q6DtguLqkRFpXOMOtunaJSYjH0cpaGI00PBBP/iTIXrk9PWkauWwZE6jiDLWhU8U+I
         7Ttcca1wXxvyUrnmofmmpNDjH6gSqQ7xmmZUAaiArI51xEL3C1aoUyEdtpz2NVAI60rb
         C5iwymhKqTY7piiDRJiz3nOPqKWbypY2QIRea/V8sq9bdC9dP7PGQkCkQTKlCVxkKypi
         moFhv2ojLY2r8rBNlfH/grf1jnRK6ueKN6vNcsyrVVfshRFT7uLeSe02x6K4XIYToB5k
         xEhg+ML86SDG6U+U9P0g4WQsa2WWOUMQMeYySSvJeM7hTJZIpxzbBtQhiC2h4tRz5YZH
         EJPA==
X-Forwarded-Encrypted: i=1; AJvYcCVPOQ33IRxrY9i0YWUuOoLv86NOf5RIQ5staLeRqhh1LcjZTmQl8yCVx6C1ZYCNqi6oULPanIXumeI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMVXUsks29uuhgr/OxT+WWPkVnJs5R82Ui61V/v7NlDk3vl3Yr
	8K4zUrQug8/8f6NaIsY7QgCFgdVO7ICOTsRIwBHj8s8MUSl6gR78fkqMtEG9ql5v
X-Gm-Gg: AZuq6aJwXiABicxkW4/dzjZPfHIfteUkf553GBl8WdXMwU+F00HNtw6fQALHMbvmGBj
	tvjhjKqEIqHLDCxQZ7knIUed4PVcdc5SImKFlj1bwmosF1LanNk1Vu8AFZywTRJ/sAhH0A6YCYG
	ZdBejLZ+gEzpYFmrTdT8amtziYx+dSJsYgnPmlu2khvAYwdymDaK7/DJh2wwiTLz0R6dLlVtIxT
	uYNgczGVJWzRG1frNfCVBPn1GnhOWZbUtP9mH9xwkMCJWIXimFYlNadqqvndEF2rRnt7PMJeLd7
	DV1tDXIE1UFMavGxpVLffQIzNZwKBGeWKGNjQRoLsKPzS4G0h7WsDi/wnU1xwAnvrZCvoctMXb7
	DvbLp+eugmCgWKwLIsVgjxXyF2eUgbiz+Es4xnmNZ+YtmKXPZfrsB7lXrXonIAjw72qS4kJdZYY
	agZAujYDm9ZrYrpWqwQmTtCaGxVERYQPkTkXJsJ57sNBTGklqB
X-Received: by 2002:a05:6122:1799:b0:54a:992c:815e with SMTP id 71dfb90a1353d-5663eaa47acmr791680e0c.8.1769175590088;
        Fri, 23 Jan 2026 05:39:50 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fa82a3dsm485291e0c.8.2026.01.23.05.39.49
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:39:49 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5f535ff78abso1964000137.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:39:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU8cxjy4PF6MwRCOYsdU7jIrmWH9cs5msv3UPk9UDAoEqsked5116kMNNSzKHhib+6xd/8M33iIvE8=@lists.infradead.org
X-Received: by 2002:a05:6102:4405:b0:5f5:41a4:f166 with SMTP id
 ada2fe7eead31-5f54b9db4d9mr883093137.9.1769175589225; Fri, 23 Jan 2026
 05:39:49 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:39:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUERxbGJN7muntQyyYZL6uy4eh5bJUmMPBmppA8y803DQ@mail.gmail.com>
X-Gm-Features: AZwV_Qj1omzI-6qmH4tEn10AVrvuRYh99XIsZ2j_jsDkAgxLig7Gm4WvDQM34Zk
Message-ID: <CAMuHMdUERxbGJN7muntQyyYZL6uy4eh5bJUmMPBmppA8y803DQ@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053951_476429_553F48CE 
X-CRM114-Status: GOOD (  22.12  )
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

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

> --- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
> @@ -578,12 +591,30 @@ &ohci0 {
>
>  &pcie_bus_clk {
>         clock-frequency = <100000000>;

I will drop the clock-frequency while applying, as there is no point
in changing it in a disabled node.

> +       status = "disabled";
>  };

> @@ -871,7 +902,19 @@ &usb2_phy0 {
>         status = "okay";
>  };
>
> +&usb3_phy0 {
> +       clocks = <&pcie_usb_clk 6>;
> +       status = "okay";
> +};
> +
> +&usb3s0_clk {
> +       clock-frequency = <100000000>;

Likewise.

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
