Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C711EEF31D
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtTukMNvyb3uO7Yp9vNyNnX0e4I39SRaSrvjU1WKI4k=; b=pjkcIrvpG8OPa0
	SwGBsc0PZ02OUNsq7zrmryJXZOToKCRZ3kSK1dNjJNTPZtXvVfxeCVe2yBOnuhZLvlYAbA0Pm74dk
	xi692P/PMs0eoi2F4NV2O+sWrmTvprMZlWNfioGFkTyaMrkSXjRfmAbDjnvpw/ZRLi25t1IJA9MxN
	KoPhjCjMRmpv17W7nKsh17ehNeqB9oUiq3pkSFFYuQWVs7h2XkKlvh0DgdVV7wZLCncRaLdfijDI3
	tC/5NCNdfTzEZiTCQbgy2gKVX8CoMw+uYbZubDj3eEH9uv/j2xkiE5GRaz9fH2aTZobP0jkGb/bnl
	uSTsqGA6FGwZuv7eW4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4Ct-00000001DKm-3g2G;
	Thu, 05 Mar 2026 08:37:19 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4Cs-00000001DKG-0CD9
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:37:19 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-408778a8ec4so1700010fac.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:37:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699837; x=1773304637;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Ymdw+XC/6Jy9fN+NX35+E/o8bLZmtxZBZ4e3pQeTxE=;
        b=MN+Zsck8+9hbeJvR1zCQYD7KRARg05uFexr8czhRmp3fNGM7E5zNnpuulZjR3A+YWn
         jQqqMTb0MfWb6/kBen6+D0jEi30zbbFaLpU/75pdUf92YkLq6qtAVwp+/KM9OZhY893U
         D+g9D4TZmCL619Tq5k/JQxJefbrb/R6u/ynJHsOZ8fAtUsBl6YrsL9BpVt5dhcrgarqX
         fHjO08YyyJ5cD4UiSbevf97cXOjMX8sPuE8Mc8qIvW+mX9udrIlvVPZcAEHorT/cTmBv
         xsRUSzpPzYhtt4WNkBnQ7kOkf9t/ceXY2Cb1R7Ss+dK4HwkfKeNyP5exnS2t79D3xam8
         rT9g==
X-Gm-Message-State: AOJu0YyiGepWUAVOm/A7QrQeBGV5c4ytyJEDggq82kDF053X0xrpTZiP
	s5Kz1PonQYDxzD7XHLp2lHMaaJIU7HEjgSeow7Utu7tQg4c8t/BTMTfQng9bFZUk
X-Gm-Gg: ATEYQzxDCzjMsfmx6E7c//me33hoIifmTaRg2Zm08pSfFakcvyvxjdDQhDk9/wbChso
	K/ps2PlHmX8504FqpumYLWmDGCPB4tS9udJLNuD2j3zX4xLL1vHSEmmj8GasusJ142QJoeUT2qz
	0xWIVEnvSnBZuehS0JIKKWshwOuLl2tuSFEcgRQZPDCuB0EXZQw80CnZomCMF18nGTGAX9ddQ4A
	Y0vxLVf0nsbivIUv8XNmYOKdQcls48w+2H3s6i/0GmV0FxLpHLrxOHdHzF1D5o7PwL4WdtxUq8R
	aRO/Oolm+fPpB1aRGQfGrpobz2fUOa60b0fvc5PJFONDOUwpTET56a9jl31irJogCxIdbhZsnLq
	DzJ23Sy0UDAZ5M5CV0fky9zzvk0nTae2ynbBqRlrnRxnSzWoJkl6ZGpaRKumuk5I+2/WM365orJ
	tlT11v2V1fSmPCG5yJ1OXA3pXiI5lBzssqRp9eqkiZ8J6+jn7IPAvRqowyMjQjAI8mRVJ8tQc=
X-Received: by 2002:a05:6870:7313:b0:3fa:ef4:3e3f with SMTP id 586e51a60fabf-416aba5cab6mr3375313fac.33.1772699836685;
        Thu, 05 Mar 2026 00:37:16 -0800 (PST)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com. [209.85.210.50])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d20ec7fsm20280114fac.11.2026.03.05.00.37.16
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:37:16 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7d4c1d2123dso9000746a34.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:37:16 -0800 (PST)
X-Received: by 2002:a05:6102:2ac9:b0:5f7:24dc:3ac3 with SMTP id
 ada2fe7eead31-5ffaaa86250mr1899404137.7.1772699399463; Thu, 05 Mar 2026
 00:29:59 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-18-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-18-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 09:29:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXUBhpnFEnnTfyPdECWqNmKLweupX=FY2SedYA3bapG2g@mail.gmail.com>
X-Gm-Features: AaiRm53mHozL13yvxji6rv0MKzaGvWxuhr7SWHD2SjBJ0VWNhqppZZeXezGpDhg
Message-ID: <CAMuHMdXUBhpnFEnnTfyPdECWqNmKLweupX=FY2SedYA3bapG2g@mail.gmail.com>
Subject: Re: [PATCH phy-next 17/22] net: renesas: rswitch: include PHY
 provider header
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Michael Dege <michael.dege@renesas.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_003718_085369_3E6CEF29 
X-CRM114-Status: GOOD (  32.36  )
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

On Wed, 4 Mar 2026 at 19:00, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> As a PHY consumer driver, the Renesas rswitch dereferences internal
> fields of struct phy, something which shouldn't be done, as that is
> going to be made an opaque pointer.
>
> It is quite clearly visible that the driver is tightly coupled with the
> drivers/phy/renesas/r8a779f0-ether-serdes.c, which puts heavy pressure
> on the Generic PHY subsystem.
>
> This was discussed before here:
> https://lore.kernel.org/linux-phy/20260211194541.cdmibrpfn6ej6e74@skbuf/
>
> but to summarize, it is generally expected that when a Generic PHY
> function is called, it takes effect immediately. When this doesn't
> happen, the PHY provider driver must change its implementation rather
> than the consumer be made to work around it. PHY providers which rely on
> a hardcoded call sequence in the consumer are just lazy and wrong.
>
> The most obvious example is commit 5cb630925b49 ("net: renesas: rswitch:
> Add phy_power_{on,off}() calling"). Problem description:
> - Ethernet PHYs may change phydev->interface. When this happens, the
>   SerDes must learn of the new phydev->interface using phy_set_mode_ext().
> - drivers/phy/renesas/r8a779f0-ether-serdes.c implements phy_set_mode_ext(),
>   but this only caches the mode and submode into channel->phy_interface
>   and applies this to hardware during phy_power_on().
>
> The commit author decided to work around this at the consumer site, by
> power cycling the PHY for the configuration to take effect.
>
> This had a worse implication from an API perspective in subsequent
> commit 053f13f67be6 ("rswitch: Fix imbalance phy_power_off() calling").
> It was observed that phy_power_on() and phy_power_off() calls need to be
> balanced, and so, the consumer decided to start looking at the struct
> phy :: power_count (the technical reason why I'm making this change).
>
> This is also wrong from an API perspective because
> - a consumer should only care about its own vote on the PHY power state.
>   If this is a multi-port submode like QSGMII, a single phy_power_off()
>   call will not actually turn the PHY off (nor should it).
> - the power_count is written under the &phy->mutex, but read unlocked
>   here.
>
> The rswitch and r8a779f0-ether-serdes drivers both need to be completely
> rethought in terms of Generic PHY API call sequence. There is no quick
> fix to apply. Just include the PHY provider API along with the consumer
> one, to keep working as before when struct phy will be made an opaque
> pointer to normal PHY consumers. But this is a bad offender (and it's
> not even a provider) so add a FIXME.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

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
