Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB16BCC6B3A
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 15:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neeRbRv6Y5broYAGTqFHe0XEPy1Hfo9eqaok3RQmYoY=; b=ydN4hUVIpVqiyh
	9whob12koxtFq0TF83MznP57Q6aHqjMfDZvOv0lv8y9os4rM4h7dtwL8+cTEZiWnJucgtPnBYYWcf
	eSNkLC9jGQVoBjQ2K5XnT72dsuR7Zef0tFQpwEbNn3zuojRANDMRm83V6WfwfdDWWt2/KXIGSYjTr
	RgzNZqjOk+cpRGY4dpWUe/xyh7ccDgeJFcEgaULzUwRM91/HVSGXysPQti9by6mxYNGH4wv+4rOIl
	lakQbpJU0JQPmhu/Xmwi/dpNgxc8Y3Q1V/LKISXaBVedpvVJHv873Hybm8CBmyq1VsIBg3H0oRyN5
	mdMVMhWMeXeIfaXelELA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNTD-00000000Zpo-1LSV;
	Thu, 15 Oct 2026 15:34:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNTB-00000000ZoW-0zIr;
	Thu, 15 Oct 2026 15:34:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9EE0340293;
	Thu, 15 Oct 2026 15:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D22811F000C5;
	Thu, 15 Oct 2026 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792078452;
	bh=ngGxpYiIc+l9ub+qBBEMWFAzMrMU0ZfsNfzhGcP3fz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EzzwCEOF5UCtQQ5ogYU9OpxdIw6MEJLzEYhp4FMHHDPz9zdqNu9KKf4SwbIsQ1QOc
	 rIkKxwnXrPKoK/60OubAJUm2Sx4lECHu2yzpMb2jck/Ug5dtQRmTsBBFZaj9+3vij9
	 8h3Z9n0xNPRb3N3tfqeURgkdcO7GstooPrriy114xO4M7WWxXmfZffjlIFNbMOziVB
	 iPuMpeRPlU4nItY6z+g7fEL80EWwQfYvd6CaV7cPkQFuqJZcCDqrDZXdAq3mSPwQxZ
	 Z1wcJ3IXnMT4jyvaR7W7XPAJ5/4c8A/jR/opwaKxcS7QyNkwpOG36OqbHSkhn5BY5j
	 ySukmI888URWA==
Date: Thu, 15 Oct 2026 16:34:06 +0100
From: Lee Jones <lee@kernel.org>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Manivannan Sadhasivam <mani@kernel.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	mfd@lists.linux.dev
Subject: Re: [PATCH v13 04/13] mfd: zx297520v3: Add a clock and reset MFD
  driver
Message-ID: <179198492486.839288.18023026004912443161@kernel.org>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-4-70d8f673386c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260927-zx29clk-v13-4-70d8f673386c@gmail.com>
X-AI-Review-Draft: <20260927-zx29clk-v13-4-70d8f673386c@gmail.com>
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

--- checkpatch.pl (3 issues) ---
Line 227: WARNING: DT compatible string "zte,zx297520v3-topcrm" appears un-=
documented -- check ./Documentation/devicetree/bindings/
Line 228: WARNING: DT compatible string "zte,zx297520v3-matrixcrm" appears =
un-documented -- check ./Documentation/devicetree/bindings/
Line 229: WARNING: DT compatible string "zte,zx297520v3-lspcrm" appears un-=
documented -- check ./Documentation/devicetree/bindings/
----------------------------------

Is Checkpatch right?

On Sun, 27 Sep 2026, Stefan D=F6singer wrote:

> This driver registers child devices for the zx297520v3 clock and reset
> controllers. The clk-zx297520v3 and reset-zte-zx297520v3 submitted in
> the next patches will drive the respective functionalities.
>
> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>
>
> ---
>
> v13: Break out the MAINTAINERS change so Lee can selectively apply this
> patch. I made sure it compiles without the DT binding headers.
>
> Lee, if you prefer, I can send this patch with the MAINTAINERS change
> folded in stand-alone (or as a pull request). It'll have to tricke into
> the clk tree before I can PR the bindings and clk driver though.
>
> Changes v12:
> Added comments elaborating on the role of the driver and the hardware.
>
> Regarding the names: zx297520v3 is the SoC's name (chip marking, boot
> messages). TOPCRM, MATRIXCRM, LSPCRM are ZTE's names for the MMIO blocks
> in their downstream sources. Sadly no datasheet is available. "clk",
> "reset" names for the child nodes are mine.
>
> Regarding personal copyright: I am not affiliated with ZTE nor paid by
> them. This is my personal hobby project. I am using knowledge extracted
> from ZTE's kernel dumps, but not code.
>
> Changes v10 (All Lee Jones):
> *) drop "select REGMAP_MMIO"
> *) Drop comment about unimplemented hwlocks
> *) Use MFD_CELL_[NAME|OF]
> *) Renamed the device type enum and its values
> *) Use device_get_match_data instead of the of_ variant
> *) Improved debug messages
>
> Changes v9:
> Deassert the LSP reset and enable the LSP pclk here. In practice the
> boot rom needs to do that because it prints to an LSP-connected UART and
> reads the boot policy from the LSP connected flash chip.
>
> In doing so, I migrated the match data to an enum as mfd.md suggests.
>
> Changes v8:
> *) Remove .of_compatible from PHY mfd child
>
> *) Move to drivers/mfd (Sashiko)
>
> For me either soc/zte or mfd/ is fine. Note though that this MFD parent
> is very specific to the zx297520v3 SoC. I don't expect this to be reused
> anywhere else. There are two more MFD-ish devices in there: soc_sys at
> 0x140000, which I plan to handle in the same driver, and an i2c PMIC,
> which would get its own host driver.
>
> *) Use PLATFORM_DEVID_AUTO (Sashiko). NONE was intentional as I only
> ever expect one instance, but I don't see any harm in doing the standard
> thing and use AUTO
>
> *) On the suggestion not to put the link to mfd_cells[] into match data:
> I see that it is spelled out in Sashiko's mfd.md, written by Lee Jones,
> the MFD maintainer. I would appreciate some education on the rationale
> behind it: Putting a pointer into the void *data is a common pattern in
> the kernel. I don't understand in which situation this can possibly
> break?
>
> Both structs are static const in the same compilation unit. data is a
> const void *, not a uintptr_t or kernel_ulong_t, so it seems passing a
> pointer is the intended use. What am I missing?
>
> Changes v7:
> Add phy MFD child
>
> Changes v6: Make the ZTE SoC driver section depend on HAS_IOMEM
> (Sashiko). The entire MFD section, which contains MFD_CORE, depends on
> HAS_IOMEM even with COMPILE_TEST.
>
> Add a NULL ptr check for of_device_get_match_data (Sashiko). While not
> uniform, rave-sp, rohm-bd9576, atc260x, da9052-i2c protect against
> incorrect manual attachment that way.
>
> Add lspclk here as well in an attempt to satisfy both Conor Dooley, who
> asks for MFD for top and matrix, and Philipp Zabel, who prefers aux but
> at least wants the reset driver limited to one driver type.
>
> Changes v5: Use MFD instead of Aux bus for top and matrix crm because of
> extra functionality: Reboot in top, hwlock in Matrix.
>
> LSP clocks stay with the aux bus and are thus not handled in this
> driver. The clk driver will bind directly to the lspcrm node.
> ---
>  drivers/mfd/Kconfig              |  12 +++++
>  drivers/mfd/Makefile             |   2 +
>  drivers/mfd/zte-zx297520v3-crm.c | 111 +++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 125 insertions(+)
>
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 857ca3bb0d5b..b30600f6ff0c 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -2580,5 +2580,17 @@ config MFD_MAX7360
>  	  additional drivers must be enabled in order to use the functionality
>  	  of the device.
>
> +config MFD_ZTE_ZX297520V3_CRM
> +	tristate "ZTE zx297520v3 Clock and Reset Manager"
> +	depends on ARCH_ZTE || COMPILE_TEST
> +	select MFD_CORE
> +	default SOC_ZX297520V3
> +	help
> +	  Say yes here to enable the driver for the ZTE zx297520v3 clock and
> +	  reset manager MFD driver. This driver provides the host device for
> +	  the clock and reset drivers and is required to boot the SoC. You
> +	  will also need to enable CLK_ZTE_ZX297520V3 and RESET_ZTE_ZX297520V3
> +	  to build the actual clock and reset child drivers.
> +
>  endmenu
>  endif
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 72d3944b0ad8..ab0cba2042a2 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -304,3 +304,5 @@ obj-$(CONFIG_MFD_RSMU_SPI)	+=3D rsmu_spi.o rsmu_core.o
>  obj-$(CONFIG_MFD_UPBOARD_FPGA)	+=3D upboard-fpga.o
>
>  obj-$(CONFIG_MFD_LOONGSON_SE)	+=3D loongson-se.o
> +
> +obj-$(CONFIG_MFD_ZTE_ZX297520V3_CRM)	+=3D zte-zx297520v3-crm.o
> diff --git a/drivers/mfd/zte-zx297520v3-crm.c b/drivers/mfd/zte-zx297520v=
3-crm.c
> new file mode 100644
> index 000000000000..d896261a4d40
> --- /dev/null
> +++ b/drivers/mfd/zte-zx297520v3-crm.c
> @@ -0,0 +1,111 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2026 Stefan D=F6singer
> + *
> + * This driver splits the ZTE zx297520v3 SoC's clock and reset managemen=
t devices into MFD child
> + * nodes that are managed by independent drivers in their respective sub=
systems.
> + *
> + * ZTE's downstream kernel names the mmio regions "topcrm", "matrixcrm" =
and "lspcrm". For an
> + * explanation of how the controllers relate please see the DT binding d=
ocumentation found in
> + * Documentation/devicetree/bindings/clock/zte,zx297520v3-*yaml.
> + *
> + * The controllers are primarily clock controllers, but they all have re=
set controls as well. Top
> + * and Matrix controllers have further auxiliary functions.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/errno.h>
> +#include <linux/mfd/core.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/reset.h>
> +
> +enum zx_device_type {
> +	TYPE_INVALID =3D 0,
> +	TYPE_TOPCRM,
> +	TYPE_MATRIXCRM,
> +	TYPE_LSPCRM,
> +};
> +
> +static const struct mfd_cell zx297520v3_topcrm_cells[] =3D {
> +	MFD_CELL_NAME("zx297520v3-topclk"),
> +	MFD_CELL_NAME("zx297520v3-topreset"),
> +	MFD_CELL_OF("reboot", NULL, NULL, 0, 0, "syscon-reboot"),
> +	MFD_CELL_NAME("zx297520v3-usb-phy"),
> +};
> +
> +static const struct mfd_cell zx297520v3_matrixcrm_cells[] =3D {
> +	MFD_CELL_NAME("zx297520v3-matrixclk"),
> +	MFD_CELL_NAME("zx297520v3-matrixreset"),
> +};
> +
> +static const struct mfd_cell zx297520v3_lspcrm_cells[] =3D {
> +	MFD_CELL_NAME("zx297520v3-lspclk"),
> +	MFD_CELL_NAME("zx297520v3-lspreset"),
> +};
> +
> +static int zx297520v3_crm_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	const struct mfd_cell *cells;
> +	struct reset_control *reset;
> +	enum zx_device_type type;
> +	unsigned int num_cells;
> +	struct clk *pclk;
> +
> +	type =3D (enum zx_device_type)(kernel_ulong_t)device_get_match_data(dev=
);
> +	switch (type) {
> +	case TYPE_TOPCRM:
> +		cells =3D zx297520v3_topcrm_cells;
> +		num_cells =3D ARRAY_SIZE(zx297520v3_topcrm_cells);
> +		break;
> +
> +	case TYPE_MATRIXCRM:
> +		cells =3D zx297520v3_matrixcrm_cells;
> +		num_cells =3D ARRAY_SIZE(zx297520v3_matrixcrm_cells);
> +		break;
> +
> +	case TYPE_LSPCRM:
> +		cells =3D zx297520v3_lspcrm_cells;
> +		num_cells =3D ARRAY_SIZE(zx297520v3_lspcrm_cells);
> +
> +		pclk =3D devm_clk_get_enabled(dev, "pclk");
> +		if (IS_ERR(pclk))
> +			return dev_err_probe(dev, PTR_ERR(pclk), "Could not get 'pclk'\n");
> +
> +		reset =3D devm_reset_control_get_exclusive_deasserted(dev, NULL);
> +		if (IS_ERR(reset))
> +			return dev_err_probe(dev, PTR_ERR(reset),
> +					     "Failed to deassert reset control\n");
> +		break;
> +
> +	default:
> +		return -ENODEV;
> +	}
> +
> +	return devm_mfd_add_devices(dev, PLATFORM_DEVID_AUTO, cells, num_cells,=
 NULL, 0, NULL);
> +}
> +
> +static const struct of_device_id of_match_zx297520v3_crm[] =3D {
> +	{ .compatible =3D "zte,zx297520v3-topcrm", .data =3D (void *)TYPE_TOPCR=
M },
> +	{ .compatible =3D "zte,zx297520v3-matrixcrm", .data =3D (void *)TYPE_MA=
TRIXCRM },
> +	{ .compatible =3D "zte,zx297520v3-lspcrm", .data =3D (void *)TYPE_LSPCR=
M },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, of_match_zx297520v3_crm);
> +
> +static struct platform_driver zx297520v3_crm =3D {
> +	.probe =3D zx297520v3_crm_probe,
> +	.driver =3D {
> +		.name =3D "zx297520v3-crm",
> +		.of_match_table =3D of_match_zx297520v3_crm,
> +	},
> +};
> +module_platform_driver(zx297520v3_crm);
> +
> +MODULE_AUTHOR("Stefan D=F6singer <stefandoesinger@gmail.com>");
> +MODULE_DESCRIPTION("ZTE zx297520v3 CRM driver");
> +MODULE_LICENSE("GPL");
>
> -- =

> 2.55.0
>

-- =

Lee Jones

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
