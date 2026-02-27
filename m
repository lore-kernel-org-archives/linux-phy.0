Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F04E7FEFB4F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 13:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHoWQCHMTQ5hdYO3HtkTroXuZebJdVflSLIgFlYHzCU=; b=un3m/ur5TL78PO
	05Zzt3xhCy8+YR2COPA+T2YBQyGKpeImOht3L9kHFez03Wn2r+HaSwDAZSKISY6ok78CdcKFQpEDI
	j7EV+1Bs62VblSAcxMslgpc+sdDRVlFlb8DhSujMMzzKJSk9fr9eRHXf8Wpl+5EwaQLxcBr8OYrDu
	M0eE0Ehhkwp88tURSjBPaNImiuS3XQDK+vOZnn/aLlOik8xPPTlj2fdquDncigs9kGUQ1EO1QGTXi
	ocmaMzkj3ansOVmoZEocVDsho+FAZyiLxNCbdwROyPUOX2GSI4eAySW0V9TLIFD5KJJo4nw18iHTa
	I2xL1RnVbdfiFZbBqEdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyK1-00000008Pzl-351L;
	Fri, 27 Feb 2026 13:56:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyJz-00000008PzH-2TXe
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 13:56:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4213440257;
	Fri, 27 Feb 2026 13:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A027AC116C6;
	Fri, 27 Feb 2026 13:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772200559;
	bh=Z5NdvmHFpqWASNhjEw3AnhNyfE+IsWtjKqCNA37tD2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=guoTrA3tySUNzy2jisrkqGd2k4FHDS4iIngYwHJYw9pTwrkQ/ryB4iixO2moZuzpX
	 TacRL9UlkHBSre+N18XIpNM6QnlDnKF2lhK50sxk22DUsItoTexaeq4KwJiTd1enNz
	 UK/63+NILl7z3Pk6yiKXypP7Mm6A0Ge5qIuBYB5jMnqeYawdBTypdlxKlRmt10vm1x
	 dmKx4ofeYN446GJt1mkmS8xKuaW540FXZKBffx7CpoqoUEXyHVu41QyJCDKqw5UgGu
	 tRELXuDIvdOcc9zS566aKbuwkOb49Td3MgxD2kPz4FgrmldyNAMQdfMc2AgoVqLY0P
	 yzUjBQzrC2PfA==
Date: Fri, 27 Feb 2026 19:25:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v7 1/2] phy: sort Kconfig and Makefile
Message-ID: <aaGia-MYCsRYCPT6@vaman>
References: <20260225-macb-phy-v7-0-e5211a61db56@bootlin.com>
 <20260225-macb-phy-v7-1-e5211a61db56@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260225-macb-phy-v7-1-e5211a61db56@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_055559_667916_84E6C68A 
X-CRM114-Status: GOOD (  18.22  )
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

On 25-02-26, 17:54, Th=E9o Lebrun wrote:
> Neither Kconfig nor Makefile are sorted; reorder them.
> =

> $ diff -U100 <(grep ^config drivers/phy/Kconfig) \
>              <(grep ^config drivers/phy/Kconfig | sort)
> =

> $ diff -U100 <(grep ^obj-\\$ drivers/phy/Makefile) \
>              <(grep ^obj-\\$ drivers/phy/Makefile | sort)
> =

> PHY_COMMON_PROPS{,_TEST} are kept at the top which does not respect
> sorting order.
> =

> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  drivers/phy/Kconfig  | 86 ++++++++++++++++++++++++++--------------------=
------
>  drivers/phy/Makefile |  8 ++---
>  2 files changed, 47 insertions(+), 47 deletions(-)
> =

> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 02467dfd4fb0..c86e90027443 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -47,6 +47,26 @@ config GENERIC_PHY_MIPI_DPHY
>  	  Provides a number of helpers a core functions for MIPI D-PHY
>  	  drivers to us.
>  =

> +config PHY_AIROHA_PCIE
> +	tristate "Airoha PCIe-PHY Driver"
> +	depends on ARCH_AIROHA || COMPILE_TEST
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Say Y here to add support for Airoha PCIe PHY driver.
> +	  This driver create the basic PHY instance and provides initialize
> +	  callback for PCIe GEN3 port.
> +
> +config PHY_CAN_TRANSCEIVER
> +	tristate "CAN transceiver PHY"
> +	select GENERIC_PHY
> +	select MULTIPLEXER
> +	help
> +	  This option enables support for CAN transceivers as a PHY. This
> +	  driver provides function for putting the transceivers in various
> +	  functional modes using gpios and sets the attribute max link
> +	  rate, for CAN drivers.
> +
>  config PHY_GOOGLE_USB
>  	tristate "Google Tensor SoC USB PHY driver"
>  	select GENERIC_PHY
> @@ -69,6 +89,17 @@ config PHY_LPC18XX_USB_OTG
>  	  This driver is need for USB0 support on LPC18xx/43xx and takes
>  	  care of enabling and clock setup.
>  =

> +config PHY_NXP_PTN3222
> +	tristate "NXP PTN3222 1-port eUSB2 to USB2 redriver"
> +	depends on I2C
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support NXP PTN3222 1-port eUSB2 to USB2 Redriver.
> +	  This redriver performs translation between eUSB2 and USB2 signalling
> +	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
> +	  Speed and High Speed.
> +
>  config PHY_PISTACHIO_USB
>  	tristate "IMG Pistachio USB2.0 PHY driver"
>  	depends on MIPS || COMPILE_TEST
> @@ -84,6 +115,18 @@ config PHY_SNPS_EUSB2
>  	  Enable support for the USB high-speed SNPS eUSB2 phy on select
>  	  SoCs. The PHY is usually paired with a Synopsys DWC3 USB controller.
>  =

> +config PHY_SPACEMIT_K1_PCIE
> +	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
> +	depends on ARCH_SPACEMIT || COMPILE_TEST
> +	depends on COMMON_CLK
> +	depends on HAS_IOMEM
> +	depends on OF
> +	select GENERIC_PHY
> +	default ARCH_SPACEMIT
> +	help
> +	  Enable support for the PCIe and USB 3 combo PHY and two
> +	  PCIe-only PHYs used in the SpacemiT K1 SoC.

I moved this into spacemit directory and while at it notice the file is
not sorted and patched that up.20260223065743.395539-1-vkoul@kernel.org
Sorry I missed this and earlier one

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
