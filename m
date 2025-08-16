Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B93CA0EE4
	for <linux-phy@archiver.kernel.org>; Sat, 16 Aug 2025 14:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/TXT1ZdF81k2Rv+Fl4PxinVG3AcYU5QpHdzzlxL9EE=; b=cqBpj/2qnCTypq
	O6/qmFepHKKV4zte14IYww6FBiZSyATO+s3L0FJhtar08J141oH5BkQomK+kNcsafwDSZYK4yoimR
	7nw7zTRsWXTShx8Q2nFLTG0Eb9Vdu4p3PDprITW0C1uOmQZX1zSAq9WkfQAHxQFhVZvwUyyl8XZw9
	MWH4FD4WCtt3K+fgnqqiL2yZg+asRw/SNrd3ewT7pXaR1/CP0VVEJOeYKBDP6zmkbcCiKTMbt7D+c
	3k2QZ0UpflR8WmJPCulA+gNUmdJ2SJVy2OdybRTQRzcnO2+UwIJGrR8a9631w/4qNja2Z3m668EeA
	4Cz2TsaOX2xV44LFw6ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unHhH-00000004kdP-0zpS;
	Sat, 16 Aug 2025 14:15:51 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unHeg-00000004kTE-496o;
	Sat, 16 Aug 2025 14:13:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C1AA1595;
	Sat, 16 Aug 2025 07:13:02 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA4543F738;
	Sat, 16 Aug 2025 07:13:07 -0700 (PDT)
Date: Sat, 16 Aug 2025 15:10:15 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: iuncuim <iuncuim@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 6/7] arm64: dts: allwinner: a523: add DWC3 USB3.0 node
Message-ID: <20250816151015.621f8da4@minigeek.lan>
In-Reply-To: <20250816084700.569524-7-iuncuim@gmail.com>
References: <20250816084700.569524-1-iuncuim@gmail.com>
	<20250816084700.569524-7-iuncuim@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_071311_067905_C932A693 
X-CRM114-Status: GOOD (  17.81  )
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

On Sat, 16 Aug 2025 16:46:59 +0800
iuncuim <iuncuim@gmail.com> wrote:

Hi,

> From: Mikhail Kalashnikov <iuncuim@gmail.com>
> 
> After adding the phy bindings, we can also add dwc3 node, which uses the
> previously added usbphy2 and part of usb3 from combophy.
> All settings declared in dwc3 node are obtained from the x96qproplus' dtb.
> BSP contains an additional glue driver for dwc3, but it seems that it is
> not needed.
> 
> Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>
> ---
>  .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> index 233365496..ec170888a 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> @@ -606,6 +606,27 @@ mdio0: mdio {
>  			};
>  		};
>  
> +		dwc3: usb@4d00000 {
> +			compatible = "snps,dwc3";

Wouldn't we need an A523 specific compatible string first?

> +			reg = <0x04d00000 0x100000>;
> +			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +			dr_mode = "host";
> +			clocks = <&ccu CLK_MBUS_USB3>, <&ccu CLK_USB3>,
> +				 <&ccu CLK_USB2>, <&ccu CLK_USB3_SUSPEND>;
> +			clock-names = "bus_clk", "ref_clk3", "ref_clk2", "suspend";

How does this work, exactly? I see "bus_clk" (deprecated, should be
"bus_early") and "suspend" in the bindings and the Linux driver, but
where do ref_clk3 and ref_clk2 come from, and more importantly who is
going to use them? IIUC, the binding hints that certain implementations
could need more clocks, but then it's their responsibility to parse and
enable them, in platform specific glue code, I think.



> +			maximum-speed = "super-speed";
> +			phy_type = "utmi";
> +			snps,dis_enblslpm_quirk;
> +			snps,dis-u1-entry-quirk;
> +			snps,dis-u2-entry-quirk;
> +			snps,dis_u3_susphy_quirk;
> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_rxdet_inp3_quirk;
> +			phys = <&usbphy 2>, <&combophy>;

Related to my comment on the other DT patch, this should be
"<&combophy 0>" (with "#phy-cells = <1>;" in the PHY node, to be forward
compatible.

Cheers,
Andre


> +			phy-names = "usb2-phy", "usb3-phy";
> +			status = "disabled";
> +		};
> +
>  		combophy: phy@4f00000 {
>  			compatible = "allwinner,sun55i-a523-usb3-pcie-phy";
>  			reg = <0x04f00000 0x100000>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
