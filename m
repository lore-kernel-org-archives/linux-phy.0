Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A208C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 11:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkrkiKuDO1doPSN07M85Zq9g/7ic7QSZyFflxWEOVTM=; b=oNU6gTz0BLbY4E
	DR78IKZdDayTDFJT3csuDSBdP0NcEQqU32DcANMoLwyC5GZzsbHdScSI46V0YZIvLadEgQSEuNHix
	z6CDzAOoN9PylzkzrR5/xmqGotKmomp23LCt2yil9hr+CykFF2QVblgNU+srR+WkFWsRUShqIQxRR
	eGXQVQ35y0NE6pCHQwjT6NNDlSxu/JI+7eBAgEXdI+LSLpkXNFe+XZtY57Ia5WjqvAaI6StUW5xk/
	Y7daAFUh0QBlf4i6v2zKnDUcFbIqCF5ldnbmRgKCp3JUzIRR7g7Uou0yA+QF8XI0qvTQrpzDWeHzq
	iR1Q3q8JVuqPPy6bT2kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1Fe-0000000BU1u-0twu;
	Thu, 20 Aug 2026 11:48:06 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1Fc-0000000BTzg-0Nlh
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 11:48:05 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c197eaaab00so391253666b.0
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 04:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787226482; cv=none;
        d=google.com; s=arc-20260327;
        b=bP3J+0kglczBwGLiHtrIwQOfsj9WaL2kpCMbcwf2ufOQ1LNYjWYab7fcUJDDxuNfUf
         IiCIkFBO0jGVyJviGF7A89f19lofb53sprjNJSEpo/LKsm2UTbw85mdXA37aQ5cBzdoM
         iF7woJsJkD5Abnes2iOLvTmBP09gUMnqzBHkTqpKjDa65DU2/t+7kx+Q4aYKR3EQqz7n
         oyeGcg26+nf2aHWo5Q4d5RVFmScSZ9zG2v9+pKdzblXrvie01THPQg3zE+KKw4J+AEwT
         LasAdWYbKPsbl8Jeg5kNbOL8iiP5SEvOTjIuGcRdffSj3oX5AfMfaoCsfuUbiDBcUiDe
         7GCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M4ykTKD26brTAJUSy1BqDUBmv6bxfPzSIe8lWvsCYHQ=;
        fh=CNa467GPVk4xLZz3udNZp6O+/tZDjVWyZriEMZyR4L0=;
        b=o9toPZil/Tx4ERPX6ifd+rVX5OJO7BMll3UpOMOXZdYBT86BdDinD/oVaCkh5w1Yu1
         y45bFOhTn/BWnge1nVT8iwQcAWasIGg2E+xm80HiUAe3UdJngn7bgHCsWTLSguOc2cDC
         bwaviXQHLSWWNvbayEKZS339uAksBJtyMFodPuvos014paw8I8HYWZsrDR24efcDS8a8
         gmo3RYk89YVzY8lpPVggMuj0tqRwaknGgrIus1s6rbprKESWidEKeOBglOIGkQ73LwQc
         vphgrENRwJP3qRlnH5UxKDBN9a5oleQiDyqFsbUBaiGYma1Q+xbehBZ0+dTOpPnIAIl6
         5eeg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1787226482; x=1787831282; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M4ykTKD26brTAJUSy1BqDUBmv6bxfPzSIe8lWvsCYHQ=;
        b=HRzKz2ZZ4z+uXn3uV9uy5oTv2Uqu4Qzn4bzGET0s5hYPiRgt75yqC8STws/CoGA+is
         /F3RiLpLF6me/JXUr64MswjEDEBYx4IshyXsehQsdTNzFZjRZWrpp64DtDKdtqOmCths
         AX8lF6b/JnWm63w+CyfRdqrbP6zeG5bycnwFA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787226482; x=1787831282;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=M4ykTKD26brTAJUSy1BqDUBmv6bxfPzSIe8lWvsCYHQ=;
        b=TBVKR6QXh0ZAFl+5dFbzU7AJ0tKalmwo9mJVoswFhAJKx1B039tu+tsuQ6IzwnKUm5
         NUUE9Czpprktxrpr0q06hcOj6Xh107X9OjyIjwviy2GwDBQ8U6Z4wzET4pmexbEZ6YTo
         FT5EweZ7s9tOp/iMd07VYAj4FvOHdV0B5Xdh9rjy2acFgqdB8ASVo0CcUd+qkX89gNMl
         1AHwI5BZqviotTLPzk2jNazOP2FU2hdzM1bBHPSjz5OO9jdh2fZ7iKsPW6wpG6D7EK/B
         TKcavdqcPCzEqWCGu6eQUegT97ufzRgyN9XkGM1nnLuCsg6ukCMR1t+L9osUuJxCpv6Y
         8kow==
X-Forwarded-Encrypted: i=1; AHgh+RqwxPMNIOIioOg8glUtnPIVEOcRpEIqx0v/gt0Pszeeuhr2XU+G/NY8QWo1oy8fWn4swF9/UBkwdsI=@lists.infradead.org
X-Gm-Message-State: AFuF++lTuiDrnjXSgtyAw5GhWHH9p0RRCzXyzgYHEI3bs6YQ+iQZb3pR
	k3cJI13LV7IUhhoxhJFJEQPr80TCSaJat8TmNOMzp03ZQhiFlX6+2AJ7JXf9/BE4oMzf7KfdcNd
	tR7Ad5gMBLC61fKF89Cd15Y1hXcK/fQMP5uWn4mVJ
X-Gm-Gg: AR+sD12NIdvWuaqtsVFIzldYB0PynI8M2UOH1EXmQ+f7ql6W48ZHRehZ7ylsBdSIvMS
	OzzdvJRBa6vY9yFuxbU9ejUaYh2BBQ3Gf1BzbjyCe3Darw8vFOz8ohmjZmdIRltihK7nDiZobgB
	x9Tac9RARvU6r192vsF5QBt3YjXRsX3CygzJNQuhdtvtw6d9l8Ya1YRu7wRh/dflPPXgFTmgGWQ
	gJflwFpQYpjq1ff1JlRJ7ODnDXLaB23qq8nMHbElwkftSU93z0T+MSJNm64RT6uhJJKgnAm3THK
	7NttK3BC33YIEsTcHqmV71Nsr7QzhaiwDtHldfTUP0o=
X-Received: by 2002:a17:907:c08c:b0:c21:96e8:578d with SMTP id
 a640c23a62f3a-c242e22d1e9mr985944566b.15.1787226482262; Thu, 20 Aug 2026
 04:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260810121121.210040-1-vlad@zlab.su>
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 20 Aug 2026 05:47:49 -0600
X-Gm-Features: AcwNN1XeIHyrOI_JtbOBD7QmUWCfs6jOmGCxaoJ2CvViBz-nzt4BaJLUZj-8m5s
Message-ID: <CAFLszTiGPVD1UvGcdE64H1To3OWjOYTd9BNV+jHM0=_dEkMsDQ@mail.gmail.com>
Subject: Re: [PATCH 00/25] ARM: rockchip: Add peripheral support for RV1106
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	Aurelien Jarno <aurelien@aurel32.net>, Brian Masney <bmasney@redhat.com>, 
	Conor Dooley <conor+dt@kernel.org>, Daniel Golle <daniel@makrotopia.org>, 
	"David S. Miller" <davem@davemloft.net>, David Wu <david.wu@rock-chips.com>, 
	Eric Dumazet <edumazet@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heiko Stuebner <heiko@sntech.de>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Olivia Mackall <olivia@selenic.com>, 
	Paolo Abeni <pabeni@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-usb@vger.kernel.org, netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_044804_169645_8ED1A2CC 
X-CRM114-Status: GOOD (  25.24  )
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

Hi Vladislav,

On Mon, 10 Aug 2026 at 06:15, Vladislav Leonov <vlad@zlab.su> wrote:
>
> Basic support for the Rockchip RV1106/RV1103 SoCs currently under review.
> This series builds on top of that and enables the peripherals needed to
> bring up a board beyond a serial console:
>
>  - CRU reset controller support (dt-bindings + clk driver), needed
>    by most of the other peripherals below.
>  - Ethernet (GMAC) via dwmac-rk.
>  - USB2 PHY and USB3-OTG (DWC3).
>  - I2C (rk3x).
>  - DMA (PL330) + support DMA for the UART nodes.
>  - SPI, including a new SCLK_IN_SPI1 clock gate.
>  - RNG.
>  - SDMMC1.
>  - A dts-only quirk (arm,cpu-registers-not-fw-configured) needed on
>    the ARM timer node when booting without a secure firmware that
>    pre-configures the CPU timer registers.
>  - PWM.
>
> Each new dt-binding is added ahead of the driver and dts nodes that
> depend on it, so the series bisects cleanly.
>
> This series depends on:
>  - "Add support for the Rockchip RV1106 and RV1103" (v3)
>    https://lore.kernel.org/all/20260729133609.3465563-1-sjg@chromium.org
>
>  - "pinctrl: Add support for the Rockchip RV1106" (v3)
>    https://lore.kernel.org/all/20260729132736.3807082-1-sjg@chromium.org
>
> Testing: boot-tested on custom RV1106 board, with every peripheral
> touched by this series: reset/CRU, Ethernet, USB2 PHY/USB3 DWC3,
> I2C, DMA+UART, SPI, RNG, SDMMC1 and PWM - exercised and confirmed working.
>
>
> Vladislav Leonov (25):
>   dt-bindings: reset: Add RV1106 CRU reset definitions
>   clk: rockchip: Add reset controller support for RV1106
>   ARM: dts: rockchip: Add reset bindings to RV1106
>   dt-bindings: net: rockchip-dwmac: add RV1106 compatible
>   net: ethernet: stmicro: stmmac: dwmac-rk: Add RV1106 support
>   ARM: dts: rockchip: Add Ethernet GMAC node for RV1106
>   dt-bindings: phy: rockchip,inno-usb2phy: Add RV1106 compatible
>   phy: rockchip: inno-usb2: Add support for RV1106
>   dt-bindings: usb: rockchip,dwc3: add RV1106 SoC support
>   ARM: dts: rockchip: Add USB2 PHY and USB3-OTG (DWC3) nodes for RV1106
>   dt-bindings: i2c: rk3x: Add RV1106 compatible
>   ARM: dts: rockchip: Add I2C nodes for RV1106
>   ARM: dts: rockchip: Add DMAC node for RV1106
>   ARM: dts: rockchip: Add DMA support to UART nodes
>   dt-bindings: clock: rockchip: Add SCLK_IN_SPI1 for RV1106
>   clk: rockchip: Add SCLK_IN_SPI1 gate for RV1106
>   dt-bindings: spi: rockchip: Add RV1106 compatible
>   spi: rockchip: Add support for RV1106
>   ARM: dts: rockchip: Add SPI nodes for RV1106
>   dt-bindings: rng: rockchip: Add RV1106 compatible
>   ARM: dts: rockchip: Add RNG node for RV1106
>   ARM: dts: rockchip: Add SDMMC1 node for RV1106
>   ARM: dts: rockchip: add arm,cpu-registers-not-fw-configured to RV1106
>     timer node
>   dt-bindings: pwm: rockchip: Add RV1106 compatible
>   ARM: dts: rockchip: Add PWM nodes for RV1106
>
>  .../devicetree/bindings/i2c/i2c-rk3x.yaml     |   1 +
>  .../bindings/net/rockchip-dwmac.yaml          |   2 +
>  .../bindings/phy/rockchip,inno-usb2phy.yaml   |   9 +-
>  .../devicetree/bindings/pwm/pwm-rockchip.yaml |   8 +
>  .../bindings/rng/rockchip,rk3588-rng.yaml     |  11 +-
>  .../devicetree/bindings/spi/spi-rockchip.yaml |   5 +
>  .../bindings/usb/rockchip,dwc3.yaml           |  35 +-
>  arch/arm/boot/dts/rockchip/rv1106.dtsi        | 426 ++++++++++++++++++
>  drivers/clk/rockchip/Makefile                 |   2 +-
>  drivers/clk/rockchip/clk-rv1106.c             |   4 +
>  drivers/clk/rockchip/clk.h                    |   1 +
>  drivers/clk/rockchip/rst-rv1106.c             | 340 ++++++++++++++
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    |  55 +++
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c |  76 ++++
>  drivers/spi/spi-rockchip.c                    |   1 +
>  .../dt-bindings/clock/rockchip,rv1106-cru.h   |   2 +
>  .../dt-bindings/reset/rockchip,rv1106-cru.h   | 305 +++++++++++++
>  17 files changed, 1272 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/clk/rockchip/rst-rv1106.c
>  create mode 100644 include/dt-bindings/reset/rockchip,rv1106-cru.h
>
> ---
> base-commit: ac414f5eda0814030636177593400acdacfe5e1e
> branch: rv1106
>
> --
> 2.47.3
>

Just to note that I applied this series and tried it on my Luckfox
Pico Mini B (also RV1103 but more basic) and it boots fine. I enabled
the RNG node and the driver seems to work (i.e. the CRU is good).

For the series:
Tested-by: Simon Glass <sjg@chromium.org>  # Luckfox Pico Mini B (RV1103)

Regards,
Simon

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
