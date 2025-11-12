Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 473B9CD3421
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DPU6VQfwXR115UgJn3utJfpL7xBOGLpoxzSIUbW0tw=; b=LomQRuB46Ky5Q3
	JoxZUVsh4tMq4geuxYKCax96XcenGFc47MOhvEG4bldodk1gHLOwuLP+Vtn5mKx/TR+b5SAhOrsJw
	ddmsPbs26mtSZNOlNsMWZ7jm2yW0G+yNykA+vNYusfcjT1x5ArRsRdKS/YWL5IuP3LS9DuQ31MbCM
	OPg/Bfn+VDYAKs1/g0g9bQlcPKKWQ04T7KAMCHk1csAC9SW+L0rQ+GS+9S1eAxFU0sRdPAEVzjwa9
	gutMh1EkHY7zqjHZGLT70JnSlGr90MVKJAZzAXNSzs7kSS086pjfULXzg6xdfBPWiQvqmmZq/PBN8
	MdiPLHKSb8cWkODCjBSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDj5-00000009BSI-3igJ;
	Wed, 12 Nov 2025 16:29:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDj5-00000009BSB-00MW
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:29:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 16E2C601A5;
	Wed, 12 Nov 2025 16:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39F77C4CEF1;
	Wed, 12 Nov 2025 16:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762964981;
	bh=DP5D2zjQPq84AdGMdpDugauF+Uw5VjnEZ/jSz0bVjQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Umd7piN3+04i8gvUPVvGaPzCgGl9OYviITEvXRjtjkY1zWB08XfPwM596K5Xx+yTT
	 6jlBuI7jmtuhSTV7HXyJghjYGq5GvSUuhsHoVQf8x7f6Efsa18iC+7AbtoXVU0DQ6u
	 7BUti4EwiDji9mD8ATudxo8+lYjVmK1qJZxU6Ok6WQAjwL78NTMNsJg58rwKM9fp0X
	 2n1VDrUQ4c6yPc2d25GV8oAYeb+103t3lBtA8GMELK9WhJ+C8+NnE2+2IHyfEW8YMy
	 3I20JVe9pmiZnDbpF0qEFXF0ZvGvKvTeFJmY/VBdros8N5KrXxzSxt0pI09T3CsiQG
	 aywUJlcTIjY8A==
Date: Wed, 12 Nov 2025 10:33:58 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
Message-ID: <6iuuosajwue35goout6ohpdbmdoahc6f3gxicliiin6wq3ggjh@m7nkqnsxq63h>
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
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

On Wed, Nov 12, 2025 at 05:03:16PM +0800, Ziyue Zhang wrote:
> HAMAO IoT EVK uses PCIe5 to connect an SDX65 module for WWAN functionality
> and PCIe3 to connect a SATA controller. These interfaces require multiple
> voltage rails: PCIe5 needs 3.3V supplied by vreg_wwan, while PCIe3 requires
> 12V, 3.3V, and 3.3V AUX rails, controlled via PMIC GPIOs.
> 

I love it! Thank you for the clear description.

Regards,
Bjorn

> Add the required fixed regulators with related pin configuration, and
> connect them to the PCIe3 and PCIe5 ports to ensure proper power for the
> SDX65 module and SATA controller.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 83 ++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 36dd6599402b..ac17f7cb8b3d 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -199,6 +199,48 @@ vreg_nvme: regulator-nvme {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_pcie_12v: regulator-pcie-12v {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_12V";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +
> +		gpio = <&pm8550ve_8_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&pcie_x8_12v>;
> +		pinctrl-names = "default";
> +	};
> +
> +	vreg_pcie_3v3: regulator-pcie-3v3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8380_3_gpios 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&pm_sde7_main_3p3_en>;
> +		pinctrl-names = "default";
> +	};
> +
> +	vreg_pcie_3v3_aux: regulator-pcie-3v3-aux {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_PCIE_3P3_AUX";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8380_3_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&pm_sde7_aux_3p3_en>;
> +		pinctrl-names = "default";
> +	};
> +
>  	/* Left unused as the retimer is not used on this board. */
>  	vreg_rtmr0_1p15: regulator-rtmr0-1p15 {
>  		compatible = "regulator-fixed";
> @@ -844,6 +886,16 @@ &mdss_dp3_phy {
>  	status = "okay";
>  };
>  
> +&pcie3_port {
> +	vpcie12v-supply = <&vreg_pcie_12v>;
> +	vpcie3v3-supply = <&vreg_pcie_3v3>;
> +	vpcie3v3aux-supply = <&vreg_pcie_3v3_aux>;
> +};
> +
> +&pcie5 {
> +	vddpe-3v3-supply = <&vreg_wwan>;
> +};
> +
>  &pcie6a {
>  	vddpe-3v3-supply = <&vreg_nvme>;
>  };
> @@ -868,6 +920,17 @@ usb0_3p3_reg_en: usb0-3p3-reg-en-state {
>  	};
>  };
>  
> +&pm8550ve_8_gpios {
> +	pcie_x8_12v: pcie-12v-default-state {
> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
> +
>  &pm8550ve_9_gpios {
>  	usb0_1p8_reg_en: usb0-1p8-reg-en-state {
>  		pins = "gpio8";
> @@ -879,6 +942,26 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
>  	};
>  };
>  
> +&pmc8380_3_gpios {
> +	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
> +		pins = "gpio8";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +
> +	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		output-enable;
> +		output-high;
> +		bias-pull-down;
> +		power-source = <0>;
> +	};
> +};
> +
>  &pmc8380_5_gpios {
>  	usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
>  		pins = "gpio8";
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
