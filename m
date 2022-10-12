Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94CD4C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 09:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqO2VypPdZE9AaWTKlojnrxf6byV0KQhuxshyWYyKxw=; b=0GlGRijg1ugG/f
	Khq/f/uNmmlG94H3Ypp8HAPz9RTdV5071zXNH+vFFFRfIJe8wUznKtaw7oZiq4sm7o31IBLkDJCp5
	dy2BXwq5+3KZ4PxglPu0rq4VkoDeKfgqxIB8mXjddQfA70Ty1516h0zs21U/CGV4VY+uHqzavpf1R
	91m1GxsHAb5PhsBUz7ik4JAvgDzKnxr+jcBc1LqviM6Icl/2VZPpfXR37sf6JyHEYCYtFc1VW4ZEe
	jPwuSzsmdG2Xj6Rj09kyaz8ldseCpAD6Fc/T6a9Ds+S1ZJZZMPl2UE8HwDEePx/YOIFWZS/5YtJHx
	+6Of0H1JoT9yB9yeu7pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiY8H-007W4I-RB; Wed, 12 Oct 2022 09:34:33 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiY84-007W2y-GB; Wed, 12 Oct 2022 09:34:22 +0000
Received: by mail-ed1-x532.google.com with SMTP id b12so1553870edd.6;
        Wed, 12 Oct 2022 02:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5hwOC37cPRVT+Lgt6Q6oTRESj5g4dMDJkms4UxcNz6o=;
        b=gOWYd7cgiPSqMjcd2my2MAjZEF7vcSQs4HKRsvLSimpo/ry33sb15M2wKdnw5mprZf
         wyCAKHyDGHBg6aRI0Z4ASWUB2qKF+CVeEAGnKxQZ/EPSwgQgDcVhXZ6ufR/DSMalG3h/
         zdC5ggB3s9GDURjFRSohw+//Bys+Chny2WD0uRMCLATGn49f8YSkd/yNgOswbV8DH2lv
         fXwOHd4Fw8Kim8LQyRAaXNuLHyNurQ+ysnFyK9xGWAosMx/iU5oGMCu6wkgzexqr1I+p
         4iNVSgeThfrUSL55uW885yBO9c6DC2BpDHdYIPW6NDd1t+3/hebys9Eif5WNCEVuyXaG
         leOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5hwOC37cPRVT+Lgt6Q6oTRESj5g4dMDJkms4UxcNz6o=;
        b=y/KEWd6VauWqJaC89lTHoIiv1m5NQ/hiT7TKNmV4cyJSv+u9e98rG9pKK7or4kHLB4
         GPdcz7qMKMr+N4IJpL5ZDdMbEp4+Lq3KIZlLMYMB723P50huuOBK6W8Mkw4fSX+JlnlH
         dmJQqQB83bsEk0j8ug1iTdqJ9C2248RSl7ZYijSW0x6VNaT0h3Mc2G3eQBpaf/MZeo4P
         kkyDOX6N8isI1tuiAlLiRVzRxml1xW+slfVa1F3Jl8YCjRASuAf/RuQZcUYRISDVkehE
         eNYQronz1t0PrRIFJAQD3C11BCFKtttHlycrkUa2NdcA9mwMh+6e4hoQGUrtk2bZTtpO
         QfGg==
X-Gm-Message-State: ACrzQf3ysao29SwtU3si4gakaTbfzaEn5kLwM22UubZkrtkfr5PBO/Gq
	ZogyMoDxffQcUOA8StnNIxZPIRTPxiKCIaG37x8=
X-Google-Smtp-Source: AMsMyM7np7gDeepsDAM0PBQ0jBNtCsz3pC/4X0bx7r4wpvQb4BioUS97iasxlET2qoc9ejtvGFICpqJzcRu6OHtLSE0=
X-Received: by 2002:a05:6402:46:b0:45c:bd68:6ab0 with SMTP id
 f6-20020a056402004600b0045cbd686ab0mr924498edu.16.1665567255027; Wed, 12 Oct
 2022 02:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <20221012055602.1544944-1-uwu@icenowy.me> <20221012055602.1544944-11-uwu@icenowy.me>
In-Reply-To: <20221012055602.1544944-11-uwu@icenowy.me>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 12 Oct 2022 11:34:03 +0200
Message-ID: <CAJiuCcfSPaX_boxUjLUVdUKf7eENbOjX96aw=fTOUPEe=4cSwg@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] ARM: dts: suniv: add device tree for PopStick v1.1
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andre Przywara <andre.przywara@arm.com>, soc@kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_023420_640516_9115010E 
X-CRM114-Status: GOOD (  22.50  )
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

Hi Icenowy,

On Wed, 12 Oct 2022 at 07:57, Icenowy Zheng <uwu@icenowy.me> wrote:
>
> PopStick is a minimal Allwinner F1C200s dongle, with its USB controller
> wired to a USB Type-A port, a SD slot and a SPI NAND flash on board, and
> an on-board CH340 USB-UART converted connected to F1C200s's UART0.
>
> Add a device tree for it. As F1C200s is just F1C100s with a different
> DRAM chip co-packaged, directly use F1C100s DTSI here.
>
> This commit covers the v1.1 version of this board, which is now shipped.
> v1.0 is some internal sample that have not been shipped at all.
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> New patch introduced in v2.
>
>  arch/arm/boot/dts/Makefile                    |   3 +-
>  .../boot/dts/suniv-f1c200s-popstick-v1.1.dts  | 101 ++++++++++++++++++
>  2 files changed, 103 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 6aa7dc4db2fc..0249c07bd8a6 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1391,7 +1391,8 @@ dtb-$(CONFIG_MACH_SUN9I) += \
>         sun9i-a80-optimus.dtb \
>         sun9i-a80-cubieboard4.dtb
>  dtb-$(CONFIG_MACH_SUNIV) += \
> -       suniv-f1c100s-licheepi-nano.dtb
> +       suniv-f1c100s-licheepi-nano.dtb \
> +       suniv-f1c200s-popstick-v1.1.dtb
>  dtb-$(CONFIG_ARCH_TEGRA_2x_SOC) += \
>         tegra20-acer-a500-picasso.dtb \
>         tegra20-asus-tf101.dtb \
> diff --git a/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> new file mode 100644
> index 000000000000..121dfc6f609d
> --- /dev/null
> +++ b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> @@ -0,0 +1,101 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2022 Icenowy Zheng <uwu@icenowy.me>
> + */
> +
> +/dts-v1/;
> +#include "suniv-f1c100s.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +       model = "Popcorn Computer PopStick v1.1";
> +       compatible = "sourceparts,popstick-v1.1", "sourceparts,popstick",
> +                    "allwinner,suniv-f1c200s", "allwinner,suniv-f1c100s";
> +
> +       aliases {
> +               mmc0 = &mmc0;
> +               serial0 = &uart0;
> +               spi0 = &spi0;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               led {
> +                       function = LED_FUNCTION_STATUS;
> +                       color = <LED_COLOR_ID_GREEN>;
> +                       gpios = <&pio 4 6 GPIO_ACTIVE_HIGH>; /* PE6 */
> +                       linux,default-trigger = "heartbeat";
> +               };
> +       };
> +
> +       reg_vcc3v3: vcc3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc3v3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +       };
> +};
> +
> +&mmc0 {
> +       cd-gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
> +       bus-width = <4>;
> +       disable-wp;
> +       status = "okay";
> +       vmmc-supply = <&reg_vcc3v3>;
> +};
> +
> +&spi0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&spi0_pc_pins>;
> +       status = "okay";
> +
> +       flash@0 {
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               compatible = "spi-nand";
> +               reg = <0>;
> +               spi-max-frequency = <40000000>;
> +
> +               partitions {
> +                       compatible = "fixed-partitions";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       partition@0 {
> +                               label = "u-boot-with-spl";
> +                               reg = <0x0 0x100000>;
> +                       };
> +
> +                       ubi@100000 {
> +                               label = "ubi";
> +                               reg = <0x100000 0x7f00000>;
> +                       };
> +               };
> +       };
> +};
> +
> +&otg_sram {

Nitpick, but this should be alphabetically ordered no?

> +       status = "okay";
> +};
> +
> +&uart0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&uart0_pe_pins>;
> +       status = "okay";
> +};
> +
> +&usb_otg {
> +       dr_mode = "peripheral";
> +       status = "okay";
> +};
> +
> +&usbphy {
> +       status = "okay";
> +};
> --
> 2.37.1
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
