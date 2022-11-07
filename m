Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E90AAC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 17:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMJ+wnRqSBiRAlIgVOVjjb9GkU3hGZFQaYBQptAxbGg=; b=WoyrAr3iWSxEha
	jAyzfLVeK0AYAUxTaZAjILpQtZRAlWe2+JWeBJwciqNBAoNusig/9QESUYk5jKRgUazeK2x/WHLrO
	Dw5adlc67t+MpqWydS3065q9e2A4+ns0NJA1+YAz1CmCWpHc2qbjM7nb/Vwsi+MbmrEpJNJaVy+Ip
	DG/0qkZckI4nD086hWmUvl6+lKa+w0Uc87XTjsWqVKht9iiOJC6FSoj2u7vM0aVKFikoKZuE8qoyt
	WBCKbEwDrG3YKqcu/kxIPJrcNGyhTf2lSc4TgFmbowX9WCXFpxzfRjsiZPDO92u1jR6eFj8V2edBO
	X2rRt/pjy0sp+0Y6NutQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os623-00GjCT-DX; Mon, 07 Nov 2022 17:35:35 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os61k-00Gj3f-5l; Mon, 07 Nov 2022 17:35:17 +0000
Received: by mail-ej1-x630.google.com with SMTP id f5so32134012ejc.5;
        Mon, 07 Nov 2022 09:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPY+3cT3MZaKayKCb1FnP/BDZRsXWWCrLi1A/PBZkJc=;
        b=gmp7n4AoRy3cYZT6zYqguGPSEXf54UDIRxDVrk7KacRAVpQSciWv4vX2n16NHeW7fI
         /yh/Pu9AsUzVJ1930MI+8BANU34wRvoDVqT1MxDZFmisrLQdD2MxF+lrD/yBlamxXFig
         oh/q7iDj6CtmQzCUcz6ny14uhAI3rmqZ890aZwTJRA2yiQUowjN3Ow4KU76KAWgUg6C8
         mbOVLEosM2L5vu1pPIiXh1UKI94tXTHkKpPFOkemG9to2J4dNcmcFMjEyqKukzJAcA9I
         /64MkRbRXn+yMTwwP/vLPR9sPAv/OFgkDeSjGK0pNra4g5NxCHiue/AXqT1QXyI7Pr0y
         4ywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPY+3cT3MZaKayKCb1FnP/BDZRsXWWCrLi1A/PBZkJc=;
        b=f/a0162iYSH+g7OBYegYuLrNO9LkKTqGPoGvtDWdRb2vSdQNnV2d0DnevWrIwDnAjE
         lXse3nl8PtDkPagPeKRvRgv+5WJQZJevT4ie1xrpeDMdOyjoJS8fC+myn2wyeCN/9GwH
         2zgObQbUi5SKUoKJT7Bog3GF/SzQy0dpgBvMNn8Tf+5cA+nb52TPAJhOtOKyWcsrEVmK
         lItRy5pYsjF4izUmYmxKp2oME2Up5EFtySKRqQx2gXch0E1NZHOlW7O+mQ9vSjgl8WGq
         IHC/8znU1GjAhLnxCU22MD6rdInw3SlfPBhqHnp/9bhS50Va2cG1TCgR3WJi03n6z5oj
         h4kA==
X-Gm-Message-State: ACrzQf09jbsoqFizdtFbYKhJVf9kRwiVL9/TwxIOcKwBrfjRyI7J4g5r
	mGmH15r37ll1f0/+tNA3mjY=
X-Google-Smtp-Source: AMsMyM4GcHsnTIH5YBhdUytB+oAMNR2U/e2ewjfJB+qlvXYSUfhl7+StHVKEuK/0Cqj/qga6kaXANA==
X-Received: by 2002:a17:907:f9c:b0:7ae:1990:5487 with SMTP id kb28-20020a1709070f9c00b007ae19905487mr22513790ejc.293.1667842511319;
        Mon, 07 Nov 2022 09:35:11 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id es11-20020a056402380b00b0045bd257b307sm4463039edb.22.2022.11.07.09.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 09:35:10 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 09/11] ARM: dts: suniv: add device tree for PopStick v1.1
Date: Mon, 07 Nov 2022 18:35:09 +0100
Message-ID: <4752971.GXAFRqVoOG@kista>
In-Reply-To: <20221106154826.6687-10-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-10-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_093516_290877_F92F7E76 
X-CRM114-Status: GOOD (  22.32  )
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

Dne nedelja, 06. november 2022 ob 16:48:24 CET je Andre Przywara napisal(a):
> From: Icenowy Zheng <uwu@icenowy.me>
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
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/Makefile                    |  3 +-
>  .../boot/dts/suniv-f1c200s-popstick-v1.1.dts  | 99 +++++++++++++++++++
>  2 files changed, 101 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 6aa7dc4db2fc..0249c07bd8a6 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1391,7 +1391,8 @@ dtb-$(CONFIG_MACH_SUN9I) += \
>  	sun9i-a80-optimus.dtb \
>  	sun9i-a80-cubieboard4.dtb
>  dtb-$(CONFIG_MACH_SUNIV) += \
> -	suniv-f1c100s-licheepi-nano.dtb
> +	suniv-f1c100s-licheepi-nano.dtb \
> +	suniv-f1c200s-popstick-v1.1.dtb
>  dtb-$(CONFIG_ARCH_TEGRA_2x_SOC) += \
>  	tegra20-acer-a500-picasso.dtb \
>  	tegra20-asus-tf101.dtb \
> diff --git a/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts new file mode 100644
> index 000000000000..7d69b5fcb905
> --- /dev/null
> +++ b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> @@ -0,0 +1,99 @@
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
> +	model = "Popcorn Computer PopStick v1.1";
> +	compatible = "sourceparts,popstick-v1.1", "sourceparts,popstick",
> +		     "allwinner,suniv-f1c200s", "allwinner,suniv-
f1c100s";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led {
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 4 6 GPIO_ACTIVE_HIGH>; /* PE6 
*/
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	reg_vcc3v3: regulator-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +};
> +
> +&mmc0 {
> +	cd-gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
> +	bus-width = <4>;
> +	disable-wp;
> +	vmmc-supply = <&reg_vcc3v3>;
> +	status = "okay";
> +};
> +
> +&otg_sram {
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi0_pc_pins>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "spi-nand";
> +		reg = <0>;
> +		spi-max-frequency = <40000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partitions {

"make dtbs_check" is not happy with cells and partitions. Do we really need 
them? If yes, then binding needs to be updated beforehand.

Best regards,
Jernej

> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "u-boot-with-spl";
> +				reg = <0x0 0x100000>;
> +			};
> +
> +			ubi@100000 {
> +				label = "ubi";
> +				reg = <0x100000 0x7f00000>;
> +			};
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pe_pins>;
> +	status = "okay";
> +};
> +
> +&usb_otg {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};
> --
> 2.35.5



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
