Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 351DECCA482
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 03:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qgU0EGT3lfSOULeiWiu1P2mLOilKM/TCvoFfeRFokY=; b=E1fQjLwZ1i6uTK
	zcl05sx1YrrpNY2qAz8u7UljXP5nFWu6dIhB9uxmYcLYvI8Gb3DC0pA7Tq5OEPrqnaTOmTzUyG6yC
	FkBhOSvM8wQGJW57hPpxZ5TEx6a8LRXrJNCSm4gdoyI10fQF5emmbnryFsTkiRkAR1TgCfuyMs9OB
	QaqOKmqZo7OhVm6UfPYRTZrqYrnCdzKCZdA284pqpbQuflNf0VrSoRSnHyH0ro0utCzsnEbwY1Qey
	TCsiYNh4OHHq89+avZocubdnF0BtKhJIhZltDqYS5JCGKWG1sn3svzhJR4eOpE/GQAMEklqiF4Rki
	kV/E+fRmJs/Sk7Q2AvBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8vyg-005Z3m-Gi; Wed, 06 Jul 2022 03:45:26 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8vyd-005Z1D-GO
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 03:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1657079123; x=1688615123;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ge/ABfXnrM5/z7n6G4b0DuoSM+BhI8eaEOtVOhmsYv4=;
  b=n3QjbMFIoYnCElNGueAy5ou/Pd/8zTKvPoLly45Z1OXWDoxVxcmnHVNA
   xfTXXJ4dOaCRPvz5LKMZzWkri+qkr/eZwoF4p85WN3Cd/45LUnmpNVRhr
   ytFtIOArJgMqPvLQEktUvBffA9a2tvsbjvAKYEaMZowohex9yn5eihlfx
   mjN7vKH35uAEiAVCgbBiVFgMaRD5QEA26FNOtd6GxLBCNKM5r1PUhVGq5
   pxx7S7eApSzoVZEMO9CwgKwSmFNYS10v9LBzWc+M7O/EI51EQgT3RD9m1
   rolrzfAq1WMcpIzuuwMEotwoLbdlVGQOoavw2lrUe/SZ+TFKert0jr3zi
   A==;
X-IronPort-AV: E=Sophos;i="5.92,248,1650902400"; 
   d="scan'208";a="309267829"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 06 Jul 2022 11:45:17 +0800
IronPort-SDR: THPb9Xlv1RJE8zFcphSPz8bQ9dYXYMpdskGuNnRty2qRhHpuc1KaScFtYPNZGWrCLlvD93C99v
 yzCsm0Oyo4m1ittbOB1sfdrkOEA05aLp+Z5VS9SbjYliXMKAarCGYjT+zQrR32ZmhErJCkljxQ
 K1/XT8c0OFG6d4LcY2CymR2OwkyK64kN994Bfct654VLdQ+cFKN9+ZcTDtWXa3KeAEH8LscUGa
 jMWjzXz76Rw60lZ7TzOhkbIPyX4MMnEXO/Sm/xCcK2ZB6X0eP+CXcXuCkHCUUsQiz6A01ZPWj4
 hHgk6FeO/TR8E7wt6A+8TzTb
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Jul 2022 20:02:36 -0700
IronPort-SDR: /HwzrACE7vd0xdeN7hR4aRTeiL1SqseS87kcqkBIKzAICh9kb4s3WQaBYB3A7u2ukH+qPpJ1nI
 UJVoqgnHbQ6eKty/ra5d0sHDikHcYE0/IWmNaD+F9vbBkhDjznTGb0OKRsIj4h1oJls3AhbI2A
 r2lLxmm8QNAnz+H19LKXodBEkVuzt5Gna3y+blqzT5+9MGNqvlo3y0AbTjPeMPGtNbqo6rMxdv
 P7nMUE7FaFcwUQdog9M5KXLy2R+sBhEvjqTvYdiglkNsuYYhCNitYYWa5MrCNV7MxlsO8xOu/9
 bIk=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Jul 2022 20:45:18 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Ld5652jFCz1Rwnl
	for <linux-phy@lists.infradead.org>; Tue,  5 Jul 2022 20:45:17 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1657079116; x=1659671117; bh=ge/ABfXnrM5/z7n6G4b0DuoSM+BhI8eaEOt
	VOhmsYv4=; b=WB3cjMwZsUuggq2VYtBWujX/fQJNZdojEJCcfq0XptimZZkxpq3
	tRok4ex2PrIlFXn0xGP+9IALyTaNOsU5S5ydhHQbnHBViWX1BK6jJUOXe+cQcjUS
	OH008kUbbhMRUl2BWy09jcE4Y6OPkXhfcaEvZ1HasNQG6cx7tjHYea80POfbYPQt
	8qC3l9ncwG7wUbwb8yPihZGe1Yw6FBe7ntxEQ/7L6U2NDT2ogl+ug7DSdfckO+RW
	m1LyNt4ecGAOh32P0rOqeQpKibogozgm+iENNShvTMWfo9UTqvtlTv8dbVEiq/7o
	ULf7TJY7YwuLurg3JatsC2Yc+8bB7HJGaRw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id MFSkcjKkp5Dy for <linux-phy@lists.infradead.org>;
	Tue,  5 Jul 2022 20:45:16 -0700 (PDT)
Received: from [10.225.163.110] (unknown [10.225.163.110])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Ld55s01rTz1RtVk;
	Tue,  5 Jul 2022 20:45:04 -0700 (PDT)
Message-ID: <50b65a2b-49fb-41d9-d68c-af1d908ba5db@opensource.wdc.com>
Date: Wed, 6 Jul 2022 12:45:03 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 5/9] arm: bcmbca: Replace ARCH_BCM_63XX with ARCH_BCMBCA
Content-Language: en-US
To: William Zhang <william.zhang@broadcom.com>,
 Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc: joel.peshkin@broadcom.com, kursad.oney@broadcom.com,
 f.fainelli@gmail.com, anand.gore@broadcom.com,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 philippe.reynes@softathome.com, dan.beygelman@broadcom.com,
 Al Cooper <alcooperx@gmail.com>, Andre Przywara <andre.przywara@arm.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Cai Huoqing <cai.huoqing@linux.dev>,
 Conor Dooley <conor.dooley@microchip.com>,
 Eugen Hristev <eugen.hristev@microchip.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jan Dabros <jsd@semihalf.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, Jie Deng
 <jie.deng@intel.com>, Jiri Slaby <jirislaby@kernel.org>,
 Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Mark Brown <broonie@kernel.org>, Matt Mackall <mpm@selenic.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Rob Herring <robh@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Sam Protsenko <semen.protsenko@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, Sven Peter <sven@svenpeter.dev>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Tyrone Ting <kfting@nuvoton.com>, Vinod Koul <vkoul@kernel.org>,
 Wolfram Sang <wsa@kernel.org>, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org
References: <20220705172613.21152-1-william.zhang@broadcom.com>
 <20220705172613.21152-6-william.zhang@broadcom.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220705172613.21152-6-william.zhang@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_204523_625008_206CE10D 
X-CRM114-Status: GOOD (  21.11  )
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

On 7/6/22 02:26, William Zhang wrote:
> Update ARCH_BCM_63XX in all sources to use ARCHB_BCMBCA instead.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>

For the ata Kconfig change:

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>


> ---
> 
>  arch/arm/Kconfig.debug         | 2 +-
>  drivers/ata/Kconfig            | 2 +-
>  drivers/char/hw_random/Kconfig | 2 +-
>  drivers/clk/bcm/Kconfig        | 4 ++--
>  drivers/i2c/busses/Kconfig     | 2 +-
>  drivers/phy/broadcom/Kconfig   | 2 +-
>  drivers/spi/Kconfig            | 2 +-
>  drivers/tty/serial/Kconfig     | 4 ++--
>  8 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 9b0aa4822d69..792796a348c3 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -271,7 +271,7 @@ choice
>  
>  	config DEBUG_BCM63XX_UART
>  		bool "Kernel low-level debugging on BCM63XX UART"
> -		depends on ARCH_BCM_63XX
> +		depends on ARCH_BCMBCA
>  
>  	config DEBUG_BERLIN_UART
>  		bool "Marvell Berlin SoC Debug UART"
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index bb45a9c00514..1c9f4fb2595d 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -148,7 +148,7 @@ config SATA_AHCI_PLATFORM
>  config AHCI_BRCM
>  	tristate "Broadcom AHCI SATA support"
>  	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_NSP || \
> -		   ARCH_BCM_63XX || COMPILE_TEST
> +		   ARCH_BCMBCA || COMPILE_TEST
>  	select SATA_HOST
>  	help
>  	  This option enables support for the AHCI SATA3 controller found on
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index b3f2d55dc551..3da8e85f8aae 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -87,7 +87,7 @@ config HW_RANDOM_BA431
>  config HW_RANDOM_BCM2835
>  	tristate "Broadcom BCM2835/BCM63xx Random Number Generator support"
>  	depends on ARCH_BCM2835 || ARCH_BCM_NSP || ARCH_BCM_5301X || \
> -		   ARCH_BCM_63XX || BCM63XX || BMIPS_GENERIC || COMPILE_TEST
> +		   ARCH_BCMBCA || BCM63XX || BMIPS_GENERIC || COMPILE_TEST
>  	default HW_RANDOM
>  	help
>  	  This driver provides kernel-side support for the Random Number
> diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
> index ec738f74a026..77266afb1c79 100644
> --- a/drivers/clk/bcm/Kconfig
> +++ b/drivers/clk/bcm/Kconfig
> @@ -22,9 +22,9 @@ config CLK_BCM2835
>  
>  config CLK_BCM_63XX
>  	bool "Broadcom BCM63xx clock support"
> -	depends on ARCH_BCM_63XX || COMPILE_TEST
> +	depends on ARCH_BCMBCA || COMPILE_TEST
>  	select COMMON_CLK_IPROC
> -	default ARCH_BCM_63XX
> +	default ARCH_BCMBCA
>  	help
>  	  Enable common clock framework support for Broadcom BCM63xx DSL SoCs
>  	  based on the ARM architecture
> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index b1d7069dd377..acf2a393bd56 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -486,7 +486,7 @@ config I2C_BCM_KONA
>  
>  config I2C_BRCMSTB
>  	tristate "BRCM Settop/DSL I2C controller"
> -	depends on ARCH_BCM2835 || ARCH_BCM4908 || ARCH_BCM_63XX || \
> +	depends on ARCH_BCM2835 || ARCH_BCM4908 || ARCH_BCMBCA || \
>  		   ARCH_BRCMSTB || BMIPS_GENERIC || COMPILE_TEST
>  	default y
>  	help
> diff --git a/drivers/phy/broadcom/Kconfig b/drivers/phy/broadcom/Kconfig
> index 849c4204f550..93a6a8ee4716 100644
> --- a/drivers/phy/broadcom/Kconfig
> +++ b/drivers/phy/broadcom/Kconfig
> @@ -83,7 +83,7 @@ config PHY_NS2_USB_DRD
>  config PHY_BRCM_SATA
>  	tristate "Broadcom SATA PHY driver"
>  	depends on ARCH_BRCMSTB || ARCH_BCM_IPROC || BMIPS_GENERIC || \
> -		   ARCH_BCM_63XX || COMPILE_TEST
> +		   ARCH_BCMBCA || COMPILE_TEST
>  	depends on OF
>  	select GENERIC_PHY
>  	default ARCH_BCM_IPROC
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 2d034459e79f..8e550269d488 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -183,7 +183,7 @@ config SPI_BCM63XX
>  
>  config SPI_BCM63XX_HSSPI
>  	tristate "Broadcom BCM63XX HS SPI controller driver"
> -	depends on BCM63XX || BMIPS_GENERIC || ARCH_BCM_63XX || COMPILE_TEST
> +	depends on BCM63XX || BMIPS_GENERIC || ARCH_BCMBCA || COMPILE_TEST
>  	help
>  	  This enables support for the High Speed SPI controller present on
>  	  newer Broadcom BCM63XX SoCs.
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 8a3ee1525d80..e3279544b03c 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -1100,8 +1100,8 @@ config SERIAL_TIMBERDALE
>  config SERIAL_BCM63XX
>  	tristate "Broadcom BCM63xx/BCM33xx UART support"
>  	select SERIAL_CORE
> -	depends on ARCH_BCM4908 || ARCH_BCM_63XX || BCM63XX || BMIPS_GENERIC || COMPILE_TEST
> -	default ARCH_BCM4908 || ARCH_BCM_63XX || BCM63XX || BMIPS_GENERIC
> +	depends on ARCH_BCM4908 || ARCH_BCMBCA || BCM63XX || BMIPS_GENERIC || COMPILE_TEST
> +	default ARCH_BCM4908 || ARCH_BCMBCA || BCM63XX || BMIPS_GENERIC
>  	help
>  	  This enables the driver for the onchip UART core found on
>  	  the following chipsets:


-- 
Damien Le Moal
Western Digital Research

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
