Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF58FA3740
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTSzevnjhD8NRxtdSs6AY2XhWr8k3B0pmrt0l1P2RI4=; b=AMHjPhxfs+4v5x
	IwlmJ86gG2pBcQ8bcMT21t9mPyhr+0Y7c6lunK+NdpMuevJ7SjjRvA61dYlLv1OzwbdoNufAO2qVA
	/+z2SLzR2/3NcZNlqMn9rFNtgjTx7CEKNRvSbKmu/z2QqKR7uKDCOaUGDIq6jhVLEfQvOyb+EbAgi
	syIFTAnIhemyJBur9M4J9IV8+emud2wwnRulmudAB195ihkb3zaWWgMAe/E6Lp25VB9RCN4Ll2rYI
	OqDtxdyOHW+SOofJVCxWaYZ+b3FK38DXtI8O1WSQnk63cySyGfMxA8tYNb+wF+SJ2l3plges/ucp7
	4d8BApD9VbCl1xg1QweQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyGE-001sQJ-RG; Mon, 24 Oct 2022 14:17:02 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyG3-001sNG-Fn; Mon, 24 Oct 2022 14:16:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81C431474;
	Mon, 24 Oct 2022 07:16:54 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91F0C3F792;
	Mon, 24 Oct 2022 07:16:46 -0700 (PDT)
Date: Mon, 24 Oct 2022 15:16:43 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, soc@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 06/10] ARM: suniv: add USB-related device nodes
Message-ID: <20221024151643.23217a25@donnerap.cambridge.arm.com>
In-Reply-To: <20221012055602.1544944-7-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	<20221012055602.1544944-7-uwu@icenowy.me>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_071651_623023_FBC1A5FF 
X-CRM114-Status: GOOD (  16.14  )
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

On Wed, 12 Oct 2022 13:55:58 +0800
Icenowy Zheng <uwu@icenowy.me> wrote:

Hi,

> The suniv SoC has a USB OTG controller and a USB PHY like other
> Allwinner SoCs.
> 
> Add their device tree node.

Looks alright to me, checked against the manual, also compared against
some other Allwinner USB DT nodes. Also passes the binding and DTB checks.

Just one small question below, but nevertheless:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> No changes since v1.
> 
>  arch/arm/boot/dts/suniv-f1c100s.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> index 0edc1724407b..a01541ba42c5 100644
> --- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
> +++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> @@ -133,6 +133,32 @@ mmc1: mmc@1c10000 {
>  			#size-cells = <0>;
>  		};
>  
> +		usb_otg: usb@1c13000 {
> +			compatible = "allwinner,suniv-f1c100s-musb";
> +			reg = <0x01c13000 0x0400>;
> +			clocks = <&ccu CLK_BUS_OTG>;
> +			resets = <&ccu RST_BUS_OTG>;
> +			interrupts = <26>;
> +			interrupt-names = "mc";
> +			phys = <&usbphy 0>;
> +			phy-names = "usb";
> +			extcon = <&usbphy 0>;
> +			allwinner,sram = <&otg_sram 1>;

What is this "1" for? I see it all over the other Allwinner SRAM
properties, but can't find any documentation about that number, nor can I
see that it would be used in the code.

Does anyone know?

Cheers,
Andre

> +			status = "disabled";
> +		};
> +
> +		usbphy: phy@1c13400 {
> +			compatible = "allwinner,suniv-f1c100s-usb-phy";
> +			reg = <0x01c13400 0x10>;
> +			reg-names = "phy_ctrl";
> +			clocks = <&ccu CLK_USB_PHY0>;
> +			clock-names = "usb0_phy";
> +			resets = <&ccu RST_USB_PHY0>;
> +			reset-names = "usb0_reset";
> +			#phy-cells = <1>;
> +			status = "disabled";
> +		};
> +
>  		ccu: clock@1c20000 {
>  			compatible = "allwinner,suniv-f1c100s-ccu";
>  			reg = <0x01c20000 0x400>;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
