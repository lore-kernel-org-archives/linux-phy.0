Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E685C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 00:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJSToa5dEqf5eRBGOqvSu9HgsI0e17ceDURyBJHmnEI=; b=ioHN7MujC6ZJOC
	gAxZ8Hw1Ptw3qdamgBMES9/Uq4yCLq7ZuMbBB4HKjr5epaSdCTGY4AQi+WPwQRs+89WFq46V5AC6t
	f8Def4F6XS8qOvY/yO5v90iwEdVmopX8LPS6NYc7w80UauuSvy60YgLUa9hsvZdEdOr+te/lP9cGA
	1xSTwZd8lObVdc/VrEHVxE0ldkJCcHV8NEV7PkBQhEKQCmu62yb0GY6YtBuup/mu8zqaaGr/wgkP6
	67WGQoqVdkZbAbFYs4xpXu6lwQq+kIhwY9aPSLFECLt5hMvL2+GyLerWcaOUe5IOV55nOdvlli2bF
	3mX3w2UG2XUzibnUuGFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouNC5-00EzUe-PV; Mon, 14 Nov 2022 00:19:21 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouNBu-00EzTY-Ti; Mon, 14 Nov 2022 00:19:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 08DE523A;
	Sun, 13 Nov 2022 16:19:10 -0800 (PST)
Received: from slackpad.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1A423F73B;
	Sun, 13 Nov 2022 16:19:01 -0800 (PST)
Date: Mon, 14 Nov 2022 00:17:33 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>,
 soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 09/11] ARM: dts: suniv: add device tree for PopStick
 v1.1
Message-ID: <20221114001733.02c94151@slackpad.lan>
In-Reply-To: <7d7a84bd-78e2-868b-6659-9dcc596c718c@sholland.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
	<20221106154826.6687-10-andre.przywara@arm.com>
	<7d7a84bd-78e2-868b-6659-9dcc596c718c@sholland.org>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_161911_103027_DE78FE88 
X-CRM114-Status: GOOD (  24.89  )
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

On Sun, 13 Nov 2022 16:41:04 -0600
Samuel Holland <samuel@sholland.org> wrote:

> On 11/6/22 09:48, Andre Przywara wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> > 
> > PopStick is a minimal Allwinner F1C200s dongle, with its USB controller
> > wired to a USB Type-A port, a SD slot and a SPI NAND flash on board, and
> > an on-board CH340 USB-UART converted connected to F1C200s's UART0.
> > 
> > Add a device tree for it. As F1C200s is just F1C100s with a different
> > DRAM chip co-packaged, directly use F1C100s DTSI here.
> > 
> > This commit covers the v1.1 version of this board, which is now shipped.
> > v1.0 is some internal sample that have not been shipped at all.
> > 
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm/boot/dts/Makefile                    |  3 +-
> >  .../boot/dts/suniv-f1c200s-popstick-v1.1.dts  | 99 +++++++++++++++++++
> >  2 files changed, 101 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 6aa7dc4db2fc..0249c07bd8a6 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -1391,7 +1391,8 @@ dtb-$(CONFIG_MACH_SUN9I) += \
> >  	sun9i-a80-optimus.dtb \
> >  	sun9i-a80-cubieboard4.dtb
> >  dtb-$(CONFIG_MACH_SUNIV) += \
> > -	suniv-f1c100s-licheepi-nano.dtb
> > +	suniv-f1c100s-licheepi-nano.dtb \
> > +	suniv-f1c200s-popstick-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_TEGRA_2x_SOC) += \
> >  	tegra20-acer-a500-picasso.dtb \
> >  	tegra20-asus-tf101.dtb \
> > diff --git a/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> > new file mode 100644
> > index 000000000000..7d69b5fcb905
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> > @@ -0,0 +1,99 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2022 Icenowy Zheng <uwu@icenowy.me>
> > + */
> > +
> > +/dts-v1/;
> > +#include "suniv-f1c100s.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +
> > +/ {
> > +	model = "Popcorn Computer PopStick v1.1";
> > +	compatible = "sourceparts,popstick-v1.1", "sourceparts,popstick",
> > +		     "allwinner,suniv-f1c200s", "allwinner,suniv-f1c100s";
> > +
> > +	aliases {
> > +		serial0 = &uart0;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path = "serial0:115200n8";
> > +	};
> > +
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		led {
> > +			function = LED_FUNCTION_STATUS;
> > +			color = <LED_COLOR_ID_GREEN>;
> > +			gpios = <&pio 4 6 GPIO_ACTIVE_HIGH>; /* PE6 */
> > +			linux,default-trigger = "heartbeat";
> > +		};
> > +	};
> > +
> > +	reg_vcc3v3: regulator-3v3 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc3v3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +	};
> > +};
> > +
> > +&mmc0 {
> > +	cd-gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
> > +	bus-width = <4>;
> > +	disable-wp;
> > +	vmmc-supply = <&reg_vcc3v3>;
> > +	status = "okay";
> > +};
> > +
> > +&otg_sram {
> > +	status = "okay";
> > +};
> > +
> > +&spi0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&spi0_pc_pins>;
> > +	status = "okay";
> > +
> > +	flash@0 {
> > +		compatible = "spi-nand";
> > +		reg = <0>;
> > +		spi-max-frequency = <40000000>;
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +
> > +		partitions {
> > +			compatible = "fixed-partitions";
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +
> > +			partition@0 {
> > +				label = "u-boot-with-spl";
> > +				reg = <0x0 0x100000>;
> > +			};
> > +
> > +			ubi@100000 {
> > +				label = "ubi";
> > +				reg = <0x100000 0x7f00000>;
> > +			};
> > +		};
> > +	};
> > +};
> > +
> > +&uart0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&uart0_pe_pins>;
> > +	status = "okay";
> > +};
> > +
> > +&usb_otg {
> > +	dr_mode = "peripheral";  
> 
> The patch description says the board has a USB Type-A port. Why is the
> USB controller set to peripheral mode?

It's a USB type-A *plug*, not a socket, because it's some TV stick
style of device, just with a USB instead of an HDMI plug.

Cheers,
Andre

> 
> > +	status = "okay";
> > +};
> > +
> > +&usbphy {
> > +	status = "okay";
> > +};  
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
