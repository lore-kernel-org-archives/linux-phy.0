Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46AF4D19503
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 17:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcnAJSqm987T1DPXs2R7N7gD8bwwGamBY+JoylzXeK4=; b=ELgTLDgFbKaiZh
	43sgs+CNkkmn9kRYF6MvEM+ZPcxkKOzY/jzU+6LSPFf9FPOMsI7Q+CKHL2Puslh80E+gPdMeVcUbO
	ScgkH5JXCNd9F+k6MgML+7v1U6IWmgSfAtl5lFk+PrGbxZf+0UbUtV4nyyt5DXQ7rv9JkXUacsW7k
	Denfr0RXlO8HUJo6abz/EX3BxSa4jELzfUI/pC+/A/X9xE8nuR2x/Ow430ga/emL7Ex7ldHHkh8wn
	np2ScH51fgAAPbWEa0XCgJfmJ3FLxNA0SbsqVDfHo7pVQXNCaIP77mxey/2NPYmkZ8I+qmkVwzn28
	9/H3gLsq19ilfomXBGvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkQ32-0000000CvA1-2r6D;
	Mon, 26 Jan 2026 17:06:44 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkQ2x-0000000Cv9A-0cXA
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 17:06:40 +0000
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-50150bc7731so75238011cf.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 09:06:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769447197; x=1770051997;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DX+hzkzvZlTATTRkV+7hBeNOQ+pb6333spkvwFjnnA4=;
        b=dW7CqcCwQv1HLvlG4WEVwspQCVydMr4WEoICVkuqx33g2bdil7FXTe/u9WrFCw/rSZ
         wPS4HpPhTa6hiYQWdH81mg1Zfnpkm3nB/cx/T7eGffgjm78IEEtK6uJWlk/DmCWxWYQR
         dgnVCrYo4aF2V9hHFjusn+M3fMAZjDeFNxo/t+d1Gu3PY3PfOKriwzd7IH4VjgfRqiEI
         GLan0Y78Kg7KyYEn9oN5PSfvhewU9X6f2Ss51emGeP4qd9NJgvbeOsPvtIl07hdiMzoJ
         eHgC/Vz8p3FKw+m3kAN/PBlIfMZZLmEgj8rhSF/pHXo+yay/OhkApZO7ZvBQ748ngHvx
         JnXg==
X-Forwarded-Encrypted: i=1; AJvYcCV6Qm1MSeUPO+QRhUaXZREZktBL4oAvH7AEg7KjGso5zZtSevZI+ywj89FSeddjEp9Sj/pJQ59O/Vc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy65rpIbIXHjvGRLSwdXn5MU51rIsyGgiysxEXqDfjdCqTlDsmA
	syLHKL3POKMLVX80z+7NeC1wU0I0NKiH73HPObZLvBHtfFQT/GwS/JOHDrrXMu5c
X-Gm-Gg: AZuq6aKSN95JtBtcRSOp/N9veU9KW/ysjeWrj+aZmW8K3UCAvaalk3VHEfpyyLh47RY
	Tj8WRrMlKHN1PAEi7gCReYVf9CgM1HmWPc6laB9nlA0cdp4FmkWgrHucXFa9wbmQWbMto7jRta4
	ucqjCQbRYil0EaVWccrjGA+xjAEk7P34rBvwksd/0NCZzm3zH+gBJWppZ3RGDkhW7GpulPGtulj
	wO+E5U5mSwcW28vFMnXzzbl6duUYtF9tAKtpYctKhBSUJyL0f3/VBERo4R6qT6SYzi7H0d8A2sm
	qvdXWYo1cSD75kgZTRDAV2JQLUuzdIJiZVb0QhjSj82o6y57tpBbzrKh1q+oh+M1rdPK4iD2NR4
	/w4cnbbRlbxKnphV8NgpSHqP+nld9thKe/W2qr+/T1BRRM76/DxG06V0HQDjbgKRQwejxhsox7i
	F6rGgJhuv27CfPyGslX5AWo1GY4xoAY+POqO4tP6msAR11zX2gj9R9
X-Received: by 2002:a05:622a:1454:b0:501:3c88:131 with SMTP id d75a77b69052e-50314bbfa55mr64827651cf.22.1769447197159;
        Mon, 26 Jan 2026 09:06:37 -0800 (PST)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com. [209.85.222.179])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89491850435sm100829306d6.24.2026.01.26.09.06.36
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 09:06:36 -0800 (PST)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c531473fdcso643432785a.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 09:06:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXZjyVh3FJ+RmLoP4zy2e7GsSsjDL46PzgJy9VSK0doihAvrJ2GLR7E6hO2wacwPIawBmwZ5y6GRIQ=@lists.infradead.org
X-Received: by 2002:a67:c48a:0:b0:5f1:9641:4f2a with SMTP id
 ada2fe7eead31-5f57638a4edmr1135520137.18.1769446754221; Mon, 26 Jan 2026
 08:59:14 -0800 (PST)
MIME-Version: 1.0
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com> <63e8022438eb0d485505c262cac383d76c804403.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <63e8022438eb0d485505c262cac383d76c804403.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 17:59:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVfsO1NVv6+N37C8ss3thKz+sANCtO00PRhgnD5M1cs0Q@mail.gmail.com>
X-Gm-Features: AZwV_QjJzffyx5kQPgMaSLBq9RR4EDkJTeL5IelsyAZXDhJ2Ar_AWtIKRIoFYWc
Message-ID: <CAMuHMdVfsO1NVv6+N37C8ss3thKz+sANCtO00PRhgnD5M1cs0Q@mail.gmail.com>
Subject: Re: [PATCH v5 15/22] arm64: dts: renesas: r9a09g057: Add USB2.0
 VBUS_SEL mux-controller support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, Georgi Djakov <djakov@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_090639_195820_31CB9BE2 
X-CRM114-Status: GOOD (  22.33  )
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

Hi Tommaso,

On Thu, 27 Nov 2025 at 12:51, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Enable control of USB2.0 VBUSEN via the VBUS_SEL bit in the VBENCTL
> register. According to the RZ/V2H(P) SoC hardware manual, OTG channels
> require VBUS_SEL set, while HOST-only channels require it cleared.
>
> Add `#mux-state-cell` to the usb20phyrst and usb21phyrst reset
> nodes to expose them as mux controllers.
>
> Set the required mux-states in usb2_phy0 (OTG: state 1) and usb2_phy1
> (HOST: state 0) nodes.
>
> This enables proper VBUSEN management for OTG and HOST-only USB2.0
> channels.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> @@ -1034,6 +1034,7 @@ usb2_phy0: usb-phy@15800200 {
>                         resets = <&usb20phyrst>;
>                         #phy-cells = <1>;
>                         power-domains = <&cpg>;
> +                       mux-states = <&usb20phyrst 1>;

I am no USB expert, and didn't really follow the USB specifics of
this series, but isn't the selection of host (VBUSEN = 1) or function
(VBUSEN = 0) mode decided at runtime?

>                         status = "disabled";
>                 };
>
> @@ -1047,6 +1048,7 @@ usb2_phy1: usb-phy@15810200 {
>                         resets = <&usb21phyrst>;
>                         #phy-cells = <1>;
>                         power-domains = <&cpg>;
> +                       mux-states = <&usb21phyrst 0>;

The second controller is always used in host mode, so 0 is correct.

>                         status = "disabled";
>                 };
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
