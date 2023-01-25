Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0985BC27C76
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jan 2023 23:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30IRB0V1NU4JR1QDcUne+0mi82+NTKJx9e1wU+JdYzY=; b=ymtP1uJ3CZd8gl
	GnDBeKDj26LoyYnS8HFrR6dYFsnOfoPFtpKPtuLnXAj6/a6MtGjJc/nOE8eI6EQLwjx6uPHHeHD9/
	b9XZdA/uIs/JUA5m4YGmv/NDtEeXojzrIKkhX9Wc5U6vzVTPg5D4GRXBut3czrdujucKKmNZf5SdT
	EB9/FaNKoERISRRbf53TMrOJA1tJVuwxtWBRJE2+ot3cAPHMMeo2iLM+PyVqaCRdxp2/yj/H4ii1h
	AklSiMULGWYc6imUr+6I2ySFXdLr8bfZaUs4tbBWWilXsJr0MuJQ5C7ybqE8BROZZWDGDdqICx2IV
	HZuayeYQd5iZ4cflnipQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKpQw-0094vY-EU; Wed, 25 Jan 2023 23:44:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKpQl-0094u6-QJ; Wed, 25 Jan 2023 23:43:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 73C66B81C57;
	Wed, 25 Jan 2023 23:43:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8C27C433EF;
	Wed, 25 Jan 2023 23:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674690229;
	bh=b2921ajz+XWP6WktKYBRKnR5y14nUKZxmUT6/Xr+08A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hFuvMgcElUctJc/xpKYEY04hCq62CAjTt8VASzn+ZeWm0VSxnyRqK8Nc05EWzbGo3
	 8g33K8AulPNZIJ4MSqMv4tKxL8gomboMtSPT0kEtQtJeLFqFjkr2QgaYcxSmE4jEU0
	 q2BMGeGluN64YY2FAQHf6RrKTRwvJ7rBZlpftC8xW05sQEkzpgVAkZy/3+80DRHLaP
	 PCtLgZCIieFW6PONIEanl1sVee4aad2sy2Pn7ZMggi0Oi89nCSbnsJ91Dj6mZj/h60
	 0q/EhsTQhzPsaDEfdG1icYW4tg6UtTpqT4PUWcGAGVisQBYzUnWjmKBooMsf3EaEBd
	 AbtFjGy9Hv6PA==
Date: Thu, 26 Jan 2023 07:43:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Message-ID: <20230125234335.GC20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221230000139.2846763-8-sean.anderson@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_154352_161388_A62309EE 
X-CRM114-Status: GOOD (  29.66  )
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

On Thu, Dec 29, 2022 at 07:01:36PM -0500, Sean Anderson wrote:
> This adds appropriate bindings for the macs which use the SerDes. The
> 156.25MHz fixed clock is a crystal. The 100MHz clocks (there are
> actually 3) come from a Renesas 6V49205B at address 69 on i2c0. There is
> no driver for this device (and as far as I know all you can do with the
> 100MHz clocks is gate them), so I have chosen to model it as a single
> fixed clock.
> 
> Note: the SerDes1 lane numbering for the LS1046A is *reversed*.
> This means that Lane A (what the driver thinks is lane 0) uses pins
> SD1_TX3_P/N.
> 
> Because this will break ethernet if the serdes is not enabled, enable
> the serdes driver by default on Layerscape.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> This depends on [1].
> 
> [1] https://lore.kernel.org/netdev/20220804194705.459670-4-sean.anderson@seco.com/
> 
> Changes in v9:
> - Fix name of phy mode node
> - phy-type -> fsl,phy
> 
> Changes in v8:
> - Rename serdes phy handles to use _A, _B, etc. instead of _0, _1, etc.
>   This should help remind readers that the numbering corresponds to the
>   physical layout of the registers, and not the lane (pin) number.
> 
> Changes in v6:
> - XGI.9 -> XFI.9
> 
> Changes in v4:
> - Convert to new bindings
> 
>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>  drivers/phy/freescale/Kconfig                 |   1 +

The phy driver Kconfig change shouldn't be part of this patch.

>  2 files changed, 113 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 7025aad8ae89..534f19855b47 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -10,6 +10,8 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/phy/phy.h>
> +
>  #include "fsl-ls1046a.dtsi"
>  
>  / {
> @@ -26,8 +28,110 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	clocks {

Drop this container node.

Shawn

> +		clk_100mhz: clock-100mhz {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <100000000>;
> +		};
> +
> +		clk_156mhz: clock-156mhz {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <156250000>;
> +		};
> +	};
>  };
>  
> +&serdes1 {
> +	clocks = <&clk_100mhz>, <&clk_156mhz>;
> +	clock-names = "ref0", "ref1";
> +	status = "okay";
> +
> +	/*
> +	 * XXX: Lane A uses pins SD1_RX3_P/N! That is, the lane numbers and pin
> +	 * numbers are _reversed_. In addition, the PCCR documentation is
> +	 * _inconsistent_ in its usage of these terms!
> +	 *
> +	 * PCCR "Lane 0" refers to...
> +	 * ==== =====================
> +	 *    0 Lane A
> +	 *    2 Lane A
> +	 *    8 Lane A
> +	 *    9 Lane A
> +	 *    B Lane D!
> +	 */
> +	serdes1_A: phy@0 {
> +		#phy-cells = <0>;
> +		reg = <0>;
> +
> +		/* SGMII.6 */
> +		sgmii-0 {
> +			fsl,pccr = <0x8>;
> +			fsl,index = <0>;
> +			fsl,cfg = <0x1>;
> +			fsl,type = <PHY_TYPE_SGMII>;
> +		};
> +	};
> +
> +	serdes1_B: phy@1 {
> +		#phy-cells = <0>;
> +		reg = <1>;
> +
> +		/* SGMII.5 */
> +		sgmii-1 {
> +			fsl,pccr = <0x8>;
> +			fsl,index = <1>;
> +			fsl,cfg = <0x1>;
> +			fsl,type = <PHY_TYPE_2500BASEX>;
> +		};
> +	};
> +
> +	serdes1_C: phy@2 {
> +		#phy-cells = <0>;
> +		reg = <2>;
> +
> +		/* SGMII.10 */
> +		sgmii-2 {
> +			fsl,pccr = <0x8>;
> +			fsl,index = <2>;
> +			fsl,cfg = <0x1>;
> +			fsl,type = <PHY_TYPE_2500BASEX>;
> +		};
> +
> +		/* XFI.10 */
> +		xfi-0 {
> +			fsl,pccr = <0xb>;
> +			fsl,index = <0>;
> +			fsl,cfg = <0x2>;
> +			fsl,type = <PHY_TYPE_10GBASER>;
> +		};
> +	};
> +
> +	serdes1_D: phy@3 {
> +		#phy-cells = <0>;
> +		reg = <3>;
> +
> +		/* SGMII.9 */
> +		sgmii-3 {
> +			fsl,pccr = <0x8>;
> +			fsl,index = <3>;
> +			fsl,cfg = <0x1>;
> +			fsl,type = <PHY_TYPE_2500BASEX>;
> +		};
> +
> +		/* XFI.9 */
> +		xfi-1 {
> +			fsl,pccr = <0xb>;
> +			fsl,index = <1>;
> +			fsl,cfg = <0x1>;
> +			fsl,type = <PHY_TYPE_10GBASER>;
> +		};
> +	};
> +};
> +
> +
>  &duart0 {
>  	status = "okay";
>  };
> @@ -140,21 +244,29 @@ ethernet@e6000 {
>  	ethernet@e8000 {
>  		phy-handle = <&sgmii_phy1>;
>  		phy-connection-type = "sgmii";
> +		phys = <&serdes1_B>;
> +		phy-names = "serdes";
>  	};
>  
>  	ethernet@ea000 {
>  		phy-handle = <&sgmii_phy2>;
>  		phy-connection-type = "sgmii";
> +		phys = <&serdes1_A>;
> +		phy-names = "serdes";
>  	};
>  
>  	ethernet@f0000 { /* 10GEC1 */
>  		phy-handle = <&aqr106_phy>;
>  		phy-connection-type = "xgmii";
> +		phys = <&serdes1_D>;
> +		phy-names = "serdes";
>  	};
>  
>  	ethernet@f2000 { /* 10GEC2 */
>  		fixed-link = <0 1 1000 0 0>;
>  		phy-connection-type = "xgmii";
> +		phys = <&serdes1_C>;
> +		phy-names = "serdes";
>  	};
>  
>  	mdio@fc000 {
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 6bebe00f5889..b396162dc859 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -54,6 +54,7 @@ config PHY_FSL_LYNX_10G
>  	depends on ARCH_LAYERSCAPE || PPC || COMPILE_TEST
>  	select GENERIC_PHY
>  	select REGMAP_MMIO
> +	default y if ARCH_LAYERSCAPE
>  	help
>  	  This adds support for the Lynx "SerDes" devices found on various QorIQ
>  	  SoCs. There may be up to four SerDes devices on each SoC, and each
> -- 
> 2.35.1.1320.gc452695387.dirty
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
