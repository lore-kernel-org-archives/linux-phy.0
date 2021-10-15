Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AD93C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 19:04:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC3DE61041
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 19:04:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC3DE61041
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w20NDQmgHXvmYcko4+f1n2GGwFf9xic8dtr7L4QYpD8=; b=sx7a4kJniWxwYB
	JGOQJZzePhaRoa57s31CGU+0cEdPfkRzmyBnBLCxiTYomMM8ft9u8EQpl87wpJWf2pUTKzlA5v2PV
	HZ5wQcELvIZl0HAL16MKZj5vOZnupLyLArZPvFpq6tIg51ia4Hv7VVW8z0WKEIDUCX2tuFfq+GoFM
	IPFGu6t1MVhRl0pBjWihzBOpQN46/tHfKhqF1XseK92PgC//r6650aa0UrUIQGV13+PYskjsIYXKc
	ZLmgaNSQlqC02SwRtix6bUDW/DAFev5HbobOKZFCPJhIfWZiYVc6zQ4OMvMbL/bTTimT6nhJZZkAI
	AaZaQG40wVDNO4uHpmRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbSUx-008YrF-98; Fri, 15 Oct 2021 19:04:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbSUt-008Yoe-VS
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 19:04:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mbSUn-0005uk-1l; Fri, 15 Oct 2021 21:03:57 +0200
Message-ID: <e761c991636d4a9ea7a7362dcba8983ee47e997a.camel@pengutronix.de>
Subject: Re: [PATCH v3 8/9] arm64: dts: imx8mm-evk: add the pcie support on
 imx8mm evk board
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, tharvey@gateworks.com,
 kishon@ti.com,  vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 15 Oct 2021 21:03:55 +0200
In-Reply-To: <1634028078-2387-9-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-9-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_120404_066941_4008A975 
X-CRM114-Status: GOOD (  15.97  )
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

Am Dienstag, dem 12.10.2021 um 16:41 +0800 schrieb Richard Zhu:
> Add the PCIe support on i.MX8MM EVK board.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index 2d0684ac82f6..5ce43daa0c8b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -31,6 +31,23 @@ status {
>  		};
>  	};
>  
> +	pcie0_refclk: pcie0-refclk {
> +		compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <100000000>;
> +	};

This is both the PHY reference and bus clock. I guess you could just
squash Patch 4/9 into this one, as they are both required to get PCIe
on the EVK board.

> +
> +	reg_pcie0_gpio: regulator-pcie-gpio {

Drop the gpio suffix.

> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcie0_reg>;
> +		regulator-name = "MPCIE_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
>  	reg_usdhc2_vmmc: regulator-usdhc2 {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";
> @@ -296,6 +313,22 @@ &pcie_phy {
>  	status = "okay";
>  };
>  
> +&pcie0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	reset-gpio = <&gpio4 21 GPIO_ACTIVE_LOW>;
> +	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_AUX>,
> +		 <&clk IMX8MM_CLK_DUMMY>, <&pcie0_refclk>;

The i.MX8MM PCIe driver should not request the pcie_phy clock. Please
add a change in the driver, so we don't need to hook up a useless dummy
clock to this node.

Regards,
Lucas

> +	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> +	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
> +			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
> +	assigned-clock-rates = <10000000>, <250000000>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
> +				 <&clk IMX8MM_SYS_PLL2_250M>;
> +	vpcie-supply = <&reg_pcie0_gpio>;
> +	status = "okay";
> +};
> +
>  &sai3 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_sai3>;
> @@ -413,6 +446,19 @@ MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
>  		>;
>  	};
>  
> +	pinctrl_pcie0: pcie0grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B    0x61
> +			MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21       0x41
> +		>;
> +	};
> +
> +	pinctrl_pcie0_reg: pcie0reggrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO05_GPIO1_IO5       0x41
> +		>;
> +	};
> +
>  	pinctrl_pmic: pmicirqgrp {
>  		fsl,pins = <
>  			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x141



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
