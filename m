Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47346C54EE9
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 08:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OB0CCt58/m6FCL03isdAXvnT263XHOJXaMurQwN5L24=; b=X/pvvMzMkZAwMW
	xF+vncK6VZVJ5mzsmqw6NarVGEv/0zq8v7uSCZawZLGis6YJKHrPw34fEOlj55pMG64OE9xom0wTX
	PVqS3rNxxoDh5rNTktMJ8UtFayMlwiS36wboflm0fy8AKdiWzIPL9zdkspykJwF0FwWtoE3xmg+dm
	oEZAy1uT6hCnB9ytOVJ5IZliNn922p3fzV/zlkxykfIMKlbiFpqRmrfu+u1SF0Q7IqalNZ78AAak8
	TwdrhtEwfhyoHIDwQkwXobTivyhdCMNz4hHiwDgOFxyKG30BVuLbQp9DZd2TN5eQ2dxqz1mzzzk9u
	6XO+eY4X9yXFC4Jjs5/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2N8-0027Mt-FU; Fri, 02 Sep 2022 08:49:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2LD-0025BO-Rr
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 08:47:57 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oU2L4-0004Hg-KQ; Fri, 02 Sep 2022 10:47:46 +0200
Message-ID: <807ee579d5567d09deeaa9cc994cf10fda08a49a.camel@pengutronix.de>
Subject: Re: [PATCH v6 3/7] arm64: dts: imx8mp-evk: Add PCIe support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 02 Sep 2022 10:47:45 +0200
In-Reply-To: <1662004960-14071-4-git-send-email-hongxing.zhu@nxp.com>
References: <1662004960-14071-1-git-send-email-hongxing.zhu@nxp.com>
	 <1662004960-14071-4-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_014755_969182_D835964B 
X-CRM114-Status: GOOD (  13.83  )
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

Am Donnerstag, dem 01.09.2022 um 12:02 +0800 schrieb Richard Zhu:
> Add PCIe support on i.MX8MP EVK board.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 53 ++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> index f6b017ab5f53..9f1469db554d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
>  #include "imx8mp.dtsi"
>  
>  / {
> @@ -33,6 +34,12 @@ memory@40000000 {
>  		      <0x1 0x00000000 0 0xc0000000>;
>  	};
>  
> +	pcie0_refclk: pcie0-refclk {
> +		compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <100000000>;
> +	};
> +
>  	reg_can1_stby: regulator-can1-stby {
>  		compatible = "regulator-fixed";
>  		regulator-name = "can1-stby";
> @@ -55,6 +62,17 @@ reg_can2_stby: regulator-can2-stby {
>  		enable-active-high;
>  	};
>  
> +	reg_pcie0: regulator-pcie {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcie0_reg>;
> +		regulator-name = "MPCIE_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
>  	reg_usdhc2_vmmc: regulator-usdhc2 {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";
> @@ -350,6 +368,28 @@ &i2c5 {
>  	 */
>  };
>  
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	clocks = <&pcie0_refclk>;
> +	clock-names = "ref";
> +	status = "okay";
> +};
> +
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	reset-gpio = <&gpio2 7 GPIO_ACTIVE_LOW>;
> +	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> +		 <&clk IMX8MP_CLK_PCIE_ROOT>,
> +		 <&clk IMX8MP_CLK_HSIO_AXI>;
> +	clock-names = "pcie", "pcie_aux", "pcie_bus";
> +	assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
> +	assigned-clock-rates = <10000000>;
> +	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
> +	vpcie-supply = <&reg_pcie0>;
> +	status = "okay";
> +};
> +
>  &snvs_pwrkey {
>  	status = "okay";
>  };
> @@ -502,6 +542,19 @@ MX8MP_IOMUXC_SPDIF_TX__I2C5_SCL         0x400001c2
>  		>;
>  	};
>  
> +	pinctrl_pcie0: pcie0grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C4_SCL__PCIE_CLKREQ_B	0x61 /* open drain, pull up */
> +			MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07	0x41
> +		>;
> +	};
> +
> +	pinctrl_pcie0_reg: pcie0reggrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06	0x41
> +		>;
> +	};
> +
>  	pinctrl_pmic: pmicgrp {
>  		fsl,pins = <
>  			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03	0x000001c0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
