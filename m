Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FF95C46467
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 11:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01WZFIOOG2FFPJUXi4Z9lHECtLjhTjKde/MZglhNW8E=; b=LVj3V+5mRpAESI
	rTgD9wMLYmUz01AKJP1/C0UHEEGveJJyksd9DOqowh9Nrk9TgNAWMWrSsnijRltm72iN1NwqT0fgx
	vFHBBqOMN+FNJDjddcfzG0PgBm5GY3/D43cLVhFAox/bZVTwMr5f/S0Uio1FP6bcOE1hPBQVCjxcT
	2mTEKNPXnnACkuUTQIdJKyc2o8mA9pxpQvd8wR1Y/nFoICvlpzMTSvNP6xbWX3Crwe2RdJN6MRrmv
	lzVOtYrqDLYNC2H9fXc8dRzt7yDOAIiOkDSs0BhGfsR+8SP3VfVEcCYaPERK/9Jttnk/4ezl5+A5B
	5v7Ed6zkjm41qVpD+PNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFDFm-006jGC-ML; Tue, 10 Jan 2023 11:57:18 +0000
Received: from relay08.th.seeweb.it ([5.144.164.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFDFh-006jBa-35
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 11:57:16 +0000
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 26E573F2E2;
	Tue, 10 Jan 2023 12:56:59 +0100 (CET)
Date: Tue, 10 Jan 2023 12:56:57 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Lux Aliaga <they@mint.lgbt>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
	avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
	tony.luck@intel.com, gpiccoli@igalia.com,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: sm6125: Initial support for
 xiaomi-laurel-sprout
Message-ID: <20230110115657.zkm6yomut6tevqrz@SoMainline.org>
Mail-Followup-To: Marijn Suijten <marijn.suijten@somainline.org>,
	Lux Aliaga <they@mint.lgbt>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
	gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-7-they@mint.lgbt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108195336.388349-7-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_035713_492381_55A32AC5 
X-CRM114-Status: GOOD (  18.82  )
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

On 2023-01-08 16:53:36, Lux Aliaga wrote:
> Add support for the Xiaomi Mi A3 (xiaomi-laurel-sprout). Here's a
> summary on what's defined.
> 
> - dmesg output to bootloader preconfigured display
> - USB
> - UFS
> - SD card
> - SMD RPM regulators
> - Volume Up, Down and Power buttons
> - Thermistors
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 424 ++++++++++++++++++
>  2 files changed, 425 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 3e79496292e7..2b2a0170db14 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -157,6 +157,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-samsung-w737.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm4250-oneplus-billie2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-sony-xperia-seine-pdx201.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm6125-xiaomi-laurel-sprout.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm6350-sony-xperia-lena-pdx213.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm6375-sony-xperia-murray-pdx225.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm7225-fairphone-fp4.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> new file mode 100644
> index 000000000000..7ff18f481060
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> @@ -0,0 +1,424 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2022, Lux Aliaga <they@mint.lgbt>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +#include "sm6125.dtsi"
> +#include "pm6125.dtsi"
> +
> +/ {
> +	model = "Xiaomi Mi A3";
> +	compatible = "xiaomi,laurel-sprout", "qcom,sm6125";
> +	chassis-type = "handset";
> +
> +	/* required for bootloader to select correct board */
> +	qcom,msm-id = <394 0>; /* sm6125 v1 */
> +	qcom,board-id = <11 0>;
> +
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		framebuffer0: framebuffer@5c000000 {
> +			compatible = "simple-framebuffer";
> +			reg = <0 0x5c000000 0 (1560 * 720 * 4)>;
> +			width = <720>;
> +			height = <1560>;
> +			stride = <(720 * 4)>;
> +			format = "a8r8g8b8";
> +		};
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		debug_mem: debug@ffb00000 {
> +			reg = <0x0 0xffb00000 0x0 0xc0000>;
> +			no-map;
> +		};
> +
> +		last_log_mem: lastlog@ffbc0000 {
> +			reg = <0x0 0xffbc0000 0x0 0x80000>;
> +			no-map;
> +		};
> +
> +		pstore_mem: ramoops@ffc00000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0xffc40000 0x0 0xc0000>;
> +			record-size = <0x1000>;
> +			console-size = <0x40000>;
> +			msg-size = <0x20000 0x20000>;
> +		};
> +
> +		cmdline_mem: memory@ffd00000 {
> +			reg = <0x0 0xffd40000 0x0 0x1000>;
> +			no-map;
> +		};
> +	};
> +
> +	extcon_usb: usb-id {
> +		compatible = "linux,extcon-usb-gpio";
> +		id-gpio = <&tlmm 102 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-0 = <&vol_up_n>;
> +		pinctrl-names = "default";
> +
> +		key-volume-up {
> +			label = "Volume Up";
> +			gpios = <&pm6125_gpio 5 GPIO_ACTIVE_LOW>;

Note that this changed to plural pm6125_gpioS in -next:
https://lore.kernel.org/all/20221209220450.1793421-1-marijn.suijten@somainline.org/

You'll have to fix that up before this patch can be applied to Bjorn's
QCOM DTS tree.

> +			linux,code = <KEY_VOLUMEUP>;
> +			debounce-interval = <15>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +	};
> +
> +	thermal-zones {
> +		rf-pa0-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&pm6125_adc_tm 0>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		quiet-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <5000>;
> +			thermal-sensors = <&pm6125_adc_tm 1>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		xo-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&pm6125_adc_tm 2>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&hsusb_phy1 {
> +	vdd-supply = <&vreg_l7a>;
> +	vdda-pll-supply = <&vreg_l10a>;
> +	vdda-phy-dpdm-supply = <&vreg_l15a>;
> +	status = "okay";
> +};
> +
> +&pm6125_adc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&camera_flash_therm &emmc_ufs_therm>;
> +
> +	adc-chan@4d {
> +		reg = <ADC5_AMUX_THM1_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time = <200>;
> +		qcom,pre-scaling = <1 1>;
> +		label = "rf_pa0_therm";
> +	};
> +
> +	adc-chan@4e {
> +		reg = <ADC5_AMUX_THM2_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time = <200>;
> +		qcom,pre-scaling = <1 1>;
> +		label = "quiet_therm";
> +	};
> +
> +	adc-chan@52 {
> +		reg = <ADC5_GPIO1_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time = <200>;
> +		qcom,pre-scaling = <1 1>;
> +		label = "camera_flash_therm";
> +	};
> +
> +	adc-chan@54 {
> +		reg = <ADC5_GPIO3_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time = <200>;
> +		qcom,pre-scaling = <1 1>;
> +		label = "emmc_ufs_therm";
> +	};
> +};
> +
> +&pm6125_adc_tm {
> +	status = "okay";
> +
> +	rf-pa0-therm@0 {
> +		reg = <0>;
> +		io-channels = <&pm6125_adc ADC5_AMUX_THM1_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time-us = <200>;
> +	};
> +
> +	quiet-therm@1 {
> +		reg = <1>;
> +		io-channels = <&pm6125_adc ADC5_AMUX_THM2_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time-us = <200>;
> +	};
> +
> +	xo-therm@2 {
> +		reg = <2>;
> +		io-channels = <&pm6125_adc ADC5_XO_THERM_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time-us = <200>;
> +	};
> +};
> +
> +&pm6125_gpio {

Plural here too.

With that (and Konrad's comment) fixed:

Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

- Marijn

> +	camera_flash_therm: camera-flash-therm-state {
> +		pins = "gpio3";
> +		function = PMIC_GPIO_FUNC_NORMAL;
> +		bias-high-impedance;
> +	};
> +
> +	emmc_ufs_therm: emmc-ufs-therm-state {
> +		pins = "gpio6";
> +		function = PMIC_GPIO_FUNC_NORMAL;
> +		bias-high-impedance;
> +	};
> +
> +	vol_up_n: vol-up-n-state {
> +		pins = "gpio5";
> +		function = PMIC_GPIO_FUNC_NORMAL;
> +		input-enable;
> +		bias-pull-up;
> +	};
> +};
> +
> +&pon_pwrkey {
> +	status = "okay";
> +};
> +
> +&pon_resin {
> +	status = "okay";
> +	linux,code = <KEY_VOLUMEDOWN>;
> +};
> +
> +&rpm_requests {
> +	regulators-0 {
> +		compatible = "qcom,rpm-pm6125-regulators";
> +
> +		vreg_s6a: s6 {
> +			regulator-min-microvolt = <936000>;
> +			regulator-max-microvolt = <1422000>;
> +		};
> +
> +		vreg_l1a: l1 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1256000>;
> +		};
> +
> +		vreg_l2a: l2 {
> +			regulator-min-microvolt = <1000000>;
> +			regulator-max-microvolt = <1056000>;
> +		};
> +
> +		vreg_l3a: l3 {
> +			regulator-min-microvolt = <1000000>;
> +			regulator-max-microvolt = <1064000>;
> +		};
> +
> +		vreg_l4a: l4 {
> +			regulator-min-microvolt = <872000>;
> +			regulator-max-microvolt = <976000>;
> +			regulator-allow-set-load;
> +		};
> +
> +		vreg_l5a: l5 {
> +			regulator-min-microvolt = <1648000>;
> +			regulator-max-microvolt = <2950000>;
> +			regulator-allow-set-load;
> +		};
> +
> +		vreg_l6a: l6 {
> +			regulator-min-microvolt = <576000>;
> +			regulator-max-microvolt = <656000>;
> +		};
> +
> +		vreg_l7a: l7 {
> +			regulator-min-microvolt = <872000>;
> +			regulator-max-microvolt = <976000>;
> +		};
> +
> +		vreg_l8a: l8 {
> +			regulator-min-microvolt = <400000>;
> +			regulator-max-microvolt = <728000>;
> +		};
> +
> +		vreg_l9a: l9 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1896000>;
> +		};
> +
> +		vreg_l10a: l10 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1896000>;
> +			regulator-allow-set-load;
> +		};
> +
> +		vreg_l11a: l11 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1952000>;
> +			regulator-allow-set-load;
> +		};
> +
> +		vreg_l12a: l12 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1996000>;
> +		};
> +
> +		vreg_l13a: l13 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1832000>;
> +		};
> +
> +		vreg_l14a: l14 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1904000>;
> +		};
> +
> +		vreg_l15a: l15 {
> +			regulator-min-microvolt = <3104000>;
> +			regulator-max-microvolt = <3232000>;
> +		};
> +
> +		vreg_l16a: l16 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1904000>;
> +		};
> +
> +		vreg_l17a: l17 {
> +			regulator-min-microvolt = <1248000>;
> +			regulator-max-microvolt = <1304000>;
> +		};
> +
> +		vreg_l18a: l18 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1264000>;
> +			regulator-allow-set-load;
> +		};
> +
> +		vreg_l19a: l19 {
> +			regulator-min-microvolt = <1648000>;
> +			regulator-max-microvolt = <2952000>;
> +		};
> +
> +		vreg_l20a: l20 {
> +			regulator-min-microvolt = <1648000>;
> +			regulator-max-microvolt = <2952000>;
> +		};
> +
> +		vreg_l21a: l21 {
> +			regulator-min-microvolt = <2600000>;
> +			regulator-max-microvolt = <2856000>;
> +		};
> +
> +		vreg_l22a: l22 {
> +			regulator-min-microvolt = <2944000>;
> +			regulator-max-microvolt = <2950000>;
> +			regulator-allow-set-load;
> +		};
> +
> +		vreg_l23a: l23 {
> +			regulator-min-microvolt = <3000000>;
> +			regulator-max-microvolt = <3400000>;
> +		};
> +
> +		vreg_l24a: l24 {
> +			regulator-min-microvolt = <2944000>;
> +			regulator-max-microvolt = <2950000>;
> +			regulator-allow-set-load;
> +		};
> +	};
> +};
> +
> +&sdc2_off_state {
> +	sd-cd-pins {
> +		pins = "gpio98";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +};
> +
> +&sdc2_on_state {
> +	sd-cd-pins {
> +		pins = "gpio98";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +};
> +
> +&sdhc_2 {
> +	cd-gpios = <&tlmm 98 GPIO_ACTIVE_HIGH>;
> +	vmmc-supply = <&vreg_l22a>;
> +	vqmmc-supply = <&vreg_l5a>;
> +	no-sdio;
> +	no-mmc;
> +	status = "okay";
> +};
> +
> +&tlmm {
> +	gpio-reserved-ranges = <22 2>, <28 6>;
> +};
> +
> +&ufs_mem_hc {
> +	vcc-supply = <&vreg_l24a>;
> +	vccq2-supply = <&vreg_l11a>;
> +	vcc-max-microamp = <600000>;
> +	vccq2-max-microamp = <600000>;
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l4a>;
> +	vdda-pll-supply = <&vreg_l10a>;
> +	vdda-phy-max-microamp = <51400>;
> +	vdda-pll-max-microamp = <14200>;
> +	vddp-ref-clk-supply = <&vreg_l18a>;
> +	status = "okay";
> +};
> +
> +&usb3 {
> +	status = "okay";
> +};
> +
> +&usb3_dwc3 {
> +	extcon = <&extcon_usb>;
> +};
> -- 
> 2.39.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
