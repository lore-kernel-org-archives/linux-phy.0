Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B985C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 13 Nov 2022 22:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCjGl62vmAlk1l6rcXaObIjrE8TJmo2S6BlHjyi2V2I=; b=XMCkJsy2prwmUi
	zWI1AjXnlQfpQuEd84cvSac6/64667EKBTgU6D4/Ld6+4aXwbcpqtmQYdpiyd9JVnOo2us2aX4Y8K
	Vm8QIS+P95hmmG2c0cZ88qW7i1FjRsrg7afNz5CkiSbvKBjPxU1GyvUplZamgeOpuCev0exZnMzpC
	dhn0YCW5IGrMfx52t20/KX0AyFGz79TdR0oRGDY1pQAdKA8/EkRqnTDPTy798JI+6HjX+WEoDNE/F
	QJA92o4WEBCWM02p85pwJZ/D87+yPvsUP5yFt76ph1Qp7Ohad9Q/w+godJjCFvdNQtoTPSx5t+1By
	61UQgA/amgKgDu1C1xrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouLfC-00EiTA-EK; Sun, 13 Nov 2022 22:41:18 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouLf0-00EiMw-RZ; Sun, 13 Nov 2022 22:41:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 094EE5C009F;
	Sun, 13 Nov 2022 17:41:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 13 Nov 2022 17:41:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1668379266; x=
	1668465666; bh=Zro3JnOVSvXjXtDx/e2Z/r/RhYG0V57L3bmv0eP/xkM=; b=K
	Pkzc21ryJ8mWRn0lw4mxKhqwB+WqcPVNLVHOa/+Kv7SR4Uo6/CI5JG4HY/E2NHHo
	5R5ou5lPsmhi9pw82wsXyDnXfFv6JU7OOdLVV0p1NuB62cNf1OGjyhJJEuoQYzBn
	P0mITeWfQPmnseBuG0pi4B7ALfEYfi1kd8J8SFu1AsTg39Rey1FZgSGnHXh0Lo2z
	VxbIEcQ8zMsv7j6eMsud+6dsvtVrZ7udtnt6z/DsmusQGuWn9/TQglFCNeSvNoB4
	SV2MhCdvABXq1+E9ywbxswzJ6n71bW8VeQgr9yd3B3113EhGn9qTc1p6+S4EfigW
	1jD3o7QR3LeZswQbXtv9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1668379266; x=
	1668465666; bh=Zro3JnOVSvXjXtDx/e2Z/r/RhYG0V57L3bmv0eP/xkM=; b=a
	0NV50iwtoTUMewCHG3SmmrxeIISEhg8qxXVbLcBc3AqOatzcJhwsdA46iM9TOf9p
	4k9rWMfuDTCYobU64tlmMjnrBMC1ONGVpPHMqK9B4816k8eZwvSc0lJji0XlDG0y
	HkbFPENjpt/zGLW57WKhaLjbAFhFp1ui5Zzd5dpUqOhbflrYL+bXGe/UZYAtY+YP
	TWUqjXr0f6jWodg54SRAWK3W5QJ65M6SJIN4Oo5RGfqqW+pdVrqr0XDrFlynjAyM
	MPbqKWBJ0kTcj4URkaN15xIOhRRHP8XP9ayiGSHhlTWrxFPDenhSrIavYx3PE62o
	Ine2RVe1mY5zzuXZ71T4A==
X-ME-Sender: <xms:gXJxY77Emsp6b2AffTwsN3UOEV4ELDYrt2AoYrpWun4ks-SjczZURg>
    <xme:gXJxYw6VxrvS7Tq1_yBimqCxXnyardEgMPk1UGHL8ybfFk1Q03SiVB4z7bbGDc8My
    uYNL0u8yWEYwXiw6A>
X-ME-Received: <xmr:gXJxYydjwOFth0JF1j8OQII2cMpURMoOLaMvdCrX3dz8ho5_8jempdDYGZDj2laGGzVWIrA63ErtCNmlRG62c9uZbb9ldFxaKK0cK2dOcyPi-YOQ4kxJlQ1aWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugddtudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepkeejleelfeeitdfhtdfgkeeghedufeduueegffdvhfdukeelleef
    tdetjeehuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:gXJxY8Kt1navcaV5rqsZgXUV_vx_WPjU5jOeIHPpujigSENaZiY0LA>
    <xmx:gXJxY_ILoCDvim-xQyGWtLT6kkWCApVI7KJupA8VWtLEuIykLIe2AQ>
    <xmx:gXJxY1we3w4pjwtxnKYolnDQIT0T8q-nWxfSjQe5eeV0NgVzX0C3dw>
    <xmx:gnJxYxyAKQWDHmzV8vDEW6wm1BQCGdR75h8nnn4opfFXpSti8Kon2w>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 17:41:05 -0500 (EST)
Message-ID: <7d7a84bd-78e2-868b-6659-9dcc596c718c@sholland.org>
Date: Sun, 13 Nov 2022 16:41:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 09/11] ARM: dts: suniv: add device tree for PopStick
 v1.1
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-10-andre.przywara@arm.com>
From: Samuel Holland <samuel@sholland.org>
In-Reply-To: <20221106154826.6687-10-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_144106_996844_FE940CC3 
X-CRM114-Status: GOOD (  20.60  )
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

On 11/6/22 09:48, Andre Przywara wrote:
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
> diff --git a/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts b/arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts
> new file mode 100644
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
> +		     "allwinner,suniv-f1c200s", "allwinner,suniv-f1c100s";
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
> +			gpios = <&pio 4 6 GPIO_ACTIVE_HIGH>; /* PE6 */
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

The patch description says the board has a USB Type-A port. Why is the
USB controller set to peripheral mode?

Regards,
Samuel

> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
