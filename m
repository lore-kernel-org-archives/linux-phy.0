Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D893C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Mar 2022 10:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oqXYz4LVgIWKZlTA220CuPcC02NwNvKaSRMdc1Kd1E=; b=vzxAO8FlPtio6z
	4AulQqBdmgFmYqyTvTtRcpsDCcYmQxnOH7iwZ1k5pMmgWR1GtiIt5Th+whECRg62mxY+ilrvjA21V
	24xP7/c8SW8HE+VB5Z6GsGaTduXhM2/lpbt9Q5vBviFX8++AYS+O3zNuChxcZO3bxFWcUMWk57rUA
	GlhP9QS10FuuH7O7py0IiHIR1aTxlc5wVsBNu8d0LhOuqHMDPBFp/InvrDM6yKDNSiV4d59GxHEPl
	KkCpn8qy87+VAN5SjLtQVRl7qxN9pEmXp5yc+KxDQfczUYRFjW1tczvbHdAtSewRkBIT5rNU34fQx
	btH4I1mPpHZ0W9JWExrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXKKv-00GBpu-19; Thu, 24 Mar 2022 10:04:57 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXKKh-00GBmA-GK; Thu, 24 Mar 2022 10:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1648116283; x=1679652283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R5km6m5qxMi3kYpL1LtzFCVr9pY6aeOZnR3nPxQD+cg=;
 b=YgF0ktpQVu8pZKPXLT8YptDebwPOOOlVwMM/G2C35xGj33ig4rb9HCjg
 W3/6LXZBFdvtDu13f6hqr9BCJ9MBiN9JGpkhLRFRCP0C8JjodMvBa7C6Y
 F+Sxiyjlhqg3NUp9Bfkvamquo7zN3XQIbG2XzEagQBEndJUaPqTDqBTam
 16cx6KsUQnoza6kams4PUF5ZxjKuNn6Kq796O1HewZz8jakeB8kOqJrMJ
 2eLI9l1rlzu8cHB7iU4bHCZyrSpUMiT1jRTOhPSC/ytHXBCS/ftqO8bHf
 ofrW68naSR5rhawX3vUHUy/BNVHKXpyeW5603Gs+RroPOYT6deVy85sD0 g==;
X-IronPort-AV: E=Sophos;i="5.90,207,1643670000"; d="scan'208";a="22868150"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 24 Mar 2022 11:04:38 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 24 Mar 2022 11:04:38 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 24 Mar 2022 11:04:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1648116278; x=1679652278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R5km6m5qxMi3kYpL1LtzFCVr9pY6aeOZnR3nPxQD+cg=;
 b=W7dPd/dlg79l/gk40VZZGpnKiAL7mp7PguVh6vZf+490e6CNhZV1iltX
 0Ko9TsPQeBJvPvJ4oUk0kDr48IXEEOFRFSx0hGiAvtvJl95lGRaDSwLyC
 r2JOv2CT70/qFC8s6hMLbc+H7ybu6hZJqBFcPQ0Zhuqb2h9ZCBmd+UYrc
 5iuISbm9q4qZa6fc69PsgY4gtdyeaXfQOZlZd2ZGDKMa2Gc/Nml2+fo9p
 GpQ6jE0e57+0dIwjfxvp1/OHseVPzCDMOOa6Q094sFMX2QI2tdN/YXdTG
 AT0oB5wfkHGwK/+8wM/RGo0spi6TpnY2Ha3rEJRQodIwn4Y1dsfdLdUSK g==;
X-IronPort-AV: E=Sophos;i="5.90,207,1643670000"; d="scan'208";a="22868149"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 24 Mar 2022 11:04:38 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0242D280065;
 Thu, 24 Mar 2022 11:04:37 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, shawnguo@kernel.org,
 vkoul@kernel.org, Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: Re: (EXT) [PATCH v2 6/7] arm64: dts: imx8mp-evk: Add PCIe support
Date: Thu, 24 Mar 2022 11:04:35 +0100
Message-ID: <2236205.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <1646644054-24421-7-git-send-email-hongxing.zhu@nxp.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <1646644054-24421-7-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_030443_975799_C3E8F965 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hello Richard,

thanks for providing PCIe support for iMX8MP.

Am Montag, 7. M=E4rz 2022, 10:07:33 CET schrieb Richard Zhu:
> Add PCIe support on i.MX8MP EVK board.
> =

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 55 ++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts index
> 2eb943210678..ed77455a3f73 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> @@ -5,6 +5,7 @@
> =

>  /dts-v1/;
> =

> +#include <dt-bindings/phy/phy-imx8-pcie.h>
>  #include "imx8mp.dtsi"
> =

>  / {
> @@ -33,6 +34,12 @@ memory@40000000 {
>  		      <0x1 0x00000000 0 0xc0000000>;
>  	};
> =

> +	pcie0_refclk: pcie0-refclk {
> +		compatible =3D "fixed-clock";
> +			#clock-cells =3D <0>;
> +			clock-frequency =3D <100000000>;
> +	};
> +
>  	reg_can1_stby: regulator-can1-stby {
>  		compatible =3D "regulator-fixed";
>  		regulator-name =3D "can1-stby";
> @@ -55,6 +62,17 @@ reg_can2_stby: regulator-can2-stby {
>  		enable-active-high;
>  	};
> =

> +	reg_pcie0: regulator-pcie {
> +		compatible =3D "regulator-fixed";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_pcie0_reg>;
> +		regulator-name =3D "MPCIE_3V3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&gpio2 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
>  	reg_usdhc2_vmmc: regulator-usdhc2 {
>  		compatible =3D "regulator-fixed";
>  		pinctrl-names =3D "default";
> @@ -297,6 +315,30 @@ pca6416: gpio@20 {
>  	};
>  };
> =

> +&pcie_phy {
> +	fsl,refclk-pad-mode =3D <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	clocks =3D <&pcie0_refclk>;
> +	clock-names =3D "ref";
> +	status =3D "okay";
> +};
> +
> +&pcie{
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_pcie0>;
> +	reset-gpio =3D <&gpio2 7 GPIO_ACTIVE_LOW>;
> +	clocks =3D <&clk IMX8MP_CLK_HSIO_ROOT>,
> +		 <&clk IMX8MP_CLK_PCIE_ROOT>,
> +		 <&clk IMX8MP_CLK_HSIO_AXI>;
> +	clock-names =3D "pcie", "pcie_aux", "pcie_bus";

This causes the following warnings in dtbs_check (paths stripped):
imx8mp-evk.dtb: pcie@33800000: clock-names:1: 'pcie_bus' was expected
        From schema: Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.y=
aml
imx8mp-evk.dtb: pcie@33800000: clock-names:2: 'pcie_phy' was expected
        From schema: Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.y=
aml

The bindings want 4 clocks for imx8mq (and imx8mp which seems similar):
* pcie
* pcie_bus
* pcie_phy
* pcie_aux

Ignoring the order there is no pcie_phy clock anymore, it was removed in =

commit 1840518ae7de ("clk: imx8mp: Remove the none exist pcie clocks"). I w=
as =

wondering why, because the PCIE_PHY_CLK_ROOT at register 0xa380 inside CCM =
is =

listed in RM.
So there is a clock missing for 'pcie_phy' or the binding needs some update =

for imx8mp, no?

Regards,
Alexander

> +	assigned-clocks =3D <&clk IMX8MP_CLK_HSIO_AXI>,
> +			  <&clk IMX8MP_CLK_PCIE_AUX>;
> +	assigned-clock-rates =3D <500000000>, <10000000>;
> +	assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL2_500M>,
> +				 <&clk IMX8MP_SYS_PLL2_50M>;
> +	vpcie-supply =3D <&reg_pcie0>;
> +	status =3D "okay";
> +};
> +
>  &snvs_pwrkey {
>  	status =3D "okay";
>  };
> @@ -442,6 +484,19 @@ MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA		0x400001c3
> =

>  		>;
> =

>  	};
> =

> +	pinctrl_pcie0: pcie0grp {
> +		fsl,pins =3D <
> +			MX8MP_IOMUXC_I2C4_SCL__PCIE_CLKREQ_B	=

0x61 /* open drain, pull up */
> +			MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07	=

0x41
> +		>;
> +	};
> +
> +	pinctrl_pcie0_reg: pcie0reggrp {
> +		fsl,pins =3D <
> +			MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06	=

0x41
> +		>;
> +	};
> +
>  	pinctrl_pmic: pmicgrp {
>  		fsl,pins =3D <
>  			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03	=

0x000001c0





-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
