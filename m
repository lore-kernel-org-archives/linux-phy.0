Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B6B2C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jD+goSYlizOgouzIeYoWFTiCX0M6fZ63okefMjJFQi8=; b=i4wrvNGF6O2iIl
	GOFL08jlcnnm5lSyGJM3ZprWgMh9E/F6ivfvDQZYDgT8wbxfUiBmX7fGWGBfc2xwAEFtHT4W/OQOZ
	25No3LRL+EW+dxCcLupqhIaFcOFjTLM47cHQGRJOh68q1FS28ssRL99tXSzvU0H8X9E592TOMh/TH
	vO6dMvzbayWHGh3+DImftCEvg36PcgdUajNIB0c3CWNDmcNd8gQu5KCTfXgLyD9JDUdDrDwqxLefg
	MxKeCzpB++eFbJP1OLL2cMYla2ASse7ZHBGDuoI51aPacm/lJsE1dCI7n2mMHrzwc6fi/EJusxzqe
	bM7dhStGFMB3KU6H7peQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZdN-000QzQ-Ut; Wed, 13 Apr 2022 09:49:57 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZdK-000QwN-49
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 09:49:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id DE01CCE2202;
 Wed, 13 Apr 2022 09:49:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76BDBC385A3;
 Wed, 13 Apr 2022 09:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649843385;
 bh=1BfLGkK1rv4hX6wZhBXevkYnV1nm2u0TCXElbfP/1G0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZNqtmEn6lMxywD3HCQXh+WhpsohbOEk2sZUBk/xX/j5IKE5NIKUxVA/E7c2sTOfVE
 6TCKyUw1txxZf6wEQ7faLzuR4/esamJhRuouW2a8XPgKm0lJQjsxBd4u0vi0YDw8t1
 9DuMfGJSc6th6xuE0z+982yHDlHje091hyHbdW9bTeUCVkBIYh/UImlsJthe+cMbwU
 LCpDtpnsFFwJlPK5jGQrALxpcxiJ8zhrUfrZv1z+Poo1Q5YuF4Zy00WnAQ/UlMmQgg
 MAHUHYorDewHhLQHa52l6QlQbi9MuDYNWyOaiNGH0AXaczS0Bc8e84DokzJnnlsnxV
 lgC9i8Gkqmlag==
Date: Wed, 13 Apr 2022 15:19:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vincent Shih <vincent.sunplus@gmail.com>
Cc: kishon@ti.com, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org, wells.lu@sunplus.com
Subject: Re: [PATCH v1 1/2] phy: usb: Add USB2.0 phy driver for Sunplus SP7021
Message-ID: <YlactHJyZ6QnNV5j@matsya>
References: <1646393418-26421-1-git-send-email-vincent.sunplus@gmail.com>
 <1646393418-26421-2-git-send-email-vincent.sunplus@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1646393418-26421-2-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_024954_548919_5FB8F549 
X-CRM114-Status: GOOD (  24.54  )
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

On 04-03-22, 19:30, Vincent Shih wrote:
> Add USB2.0 phy driver for Sunplus SP7021
> 
> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
>  MAINTAINERS                            |   8 ++
>  drivers/phy/Kconfig                    |   1 +
>  drivers/phy/Makefile                   |   1 +
>  drivers/phy/sunplus/Kconfig            |  12 ++
>  drivers/phy/sunplus/Makefile           |   2 +
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 248 +++++++++++++++++++++++++++++++++
>  6 files changed, 272 insertions(+)
>  create mode 100644 drivers/phy/sunplus/Kconfig
>  create mode 100644 drivers/phy/sunplus/Makefile
>  create mode 100644 drivers/phy/sunplus/phy-sunplus-usb2.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 80eebc1..a3bb35e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17947,6 +17947,14 @@ L:	netdev@vger.kernel.org
>  S:	Maintained
>  F:	drivers/net/ethernet/dlink/sundance.c
>  
> +SUNPLUS USB2 PHY DRIVER
> +M:	Vincent Shih <vincent.sunplus@gmail.com>
> +L:	linux-usb@vger.kernel.org
> +S:	Maintained
> +F:	drivers/phy/sunplus/Kconfig
> +F:	drivers/phy/sunplus/Makefile
> +F:	drivers/phy/sunplus/phy-sunplus-usb2.c
> +
>  SUPERH
>  M:	Yoshinori Sato <ysato@users.sourceforge.jp>
>  M:	Rich Felker <dalias@libc.org>
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 82b63e6..d97e22e 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -90,6 +90,7 @@ source "drivers/phy/rockchip/Kconfig"
>  source "drivers/phy/samsung/Kconfig"
>  source "drivers/phy/socionext/Kconfig"
>  source "drivers/phy/st/Kconfig"
> +source "drivers/phy/sunplus/Kconfig"
>  source "drivers/phy/tegra/Kconfig"
>  source "drivers/phy/ti/Kconfig"
>  source "drivers/phy/intel/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 01e9eff..ed88b6f 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -31,6 +31,7 @@ obj-y					+= allwinner/	\
>  					   samsung/	\
>  					   socionext/	\
>  					   st/		\
> +					   sunplus/		\
>  					   tegra/	\
>  					   ti/		\
>  					   xilinx/
> diff --git a/drivers/phy/sunplus/Kconfig b/drivers/phy/sunplus/Kconfig
> new file mode 100644
> index 0000000..beb85f4
> --- /dev/null
> +++ b/drivers/phy/sunplus/Kconfig
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config PHY_SUNPLUS_USB
> +	tristate "Sunplus USB2 PHY driver"
> +	depends on OF && (SOC_SP7021 || COMPILE_TEST)
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the USB 2.0 PHY on Sunplus SP7021
> +	  SoC. The USB 2.0 PHY controller supports battery charger
> +	  and synchronous signals, various power down modes including
> +	  operating, partial and suspend modes, and high-speed,
> +	  full-speed and low-speed data transfer.
> diff --git a/drivers/phy/sunplus/Makefile b/drivers/phy/sunplus/Makefile
> new file mode 100644
> index 0000000..71754d5
> --- /dev/null
> +++ b/drivers/phy/sunplus/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_PHY_SUNPLUS_USB)	+= phy-sunplus-usb2.o
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> new file mode 100644
> index 0000000..a2c17ca
> --- /dev/null
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -0,0 +1,248 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/*
> + * Sunplus SP7021 USB 2.0 phy driver
> + *
> + * Copyright (C) 2021 Sunplus Technology Inc., All rights reserved.

2022

> + *
> + * Note 1 : non-posted write command for the registers accesses of
> + * Sunplus SP7021.
> + *
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-consumer.h>
> +#include <linux/of_platform.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +
> +#define RF_MASK_V(_mask, _val)			(((_mask) << 16) | (_val))
> +#define RF_MASK_V_CLR(_mask)			(((_mask) << 16) | 0)

Please use FIELD_PREP and FIELD_GET macros for these

> +
> +#define MASK_BITS				0xffff
> +#define OTP_DISC_LEVEL_DEFAULT			0xd
> +
> +// GROUP UPHY
> +#define CONFIG1					0x4
> +#define J_HS_TX_PWRSAV				BIT(5)
> +#define CONFIG3					0xc

GENAMSK() ?


> +#define J_FORCE_DISC_ON				BIT(5)
> +#define J_DEBUG_CTRL_ADDR_MACRO			BIT(0)
> +#define CONFIG7					0x1c
> +#define J_DISC					0X1f
> +#define CONFIG9					0x24
> +#define J_ECO_PATH				BIT(6)
> +#define CONFIG16				0x40
> +#define J_TBCWAIT_MASK				GENMASK(6, 5)
> +#define J_TBCWAIT_1P1_MS			FIELD_PREP(J_TBCWAIT_MASK, 0)
> +#define J_TVDM_SRC_DIS_MASK			GENMASK(4, 3)
> +#define J_TVDM_SRC_DIS_8P2_MS			FIELD_PREP(J_TVDM_SRC_DIS_MASK, 3)
> +#define J_TVDM_SRC_EN_MASK			GENMASK(2, 1)
> +#define J_TVDM_SRC_EN_1P6_MS			FIELD_PREP(J_TVDM_SRC_EN_MASK, 0)
> +#define J_BC_EN					BIT(0)
> +#define CONFIG17				0x44
> +#define IBG_TRIM0_MASK				GENMASK(7, 5)
> +#define IBG_TRIM0_SSLVHT			FIELD_PREP(IBG_TRIM0_MASK, 4)
> +#define J_VDATREE_TRIM_MASK			GENMASK(4, 1)
> +#define J_VDATREE_TRIM_DEFAULT			FIELD_PREP(J_VDATREE_TRIM_MASK, 9)
> +#define CONFIG23				0x5c
> +#define PROB_MASK				GENMASK(5, 3)
> +#define PROB					FIELD_PREP(PROB_MASK, 7)
> +
> +// GROUP MOON4

wrong comments style

> +static int sp_uphy_init(struct phy *phy)
> +{
> +	struct sp_usbphy *usbphy = phy_get_drvdata(phy);
> +	struct nvmem_cell *cell;
> +	char *disc_name = "disc_vol";
> +	ssize_t otp_l = 0;
> +	char *otp_v;
> +	u32 val, set, pll_pwr_on, pll_pwr_off;
> +
> +	/* Default value modification */
> +	writel(RF_MASK_V(MASK_BITS, 0x4002), usbphy->moon4_regs + UPHY_CONTROL0);
> +	writel(RF_MASK_V(MASK_BITS, 0x8747), usbphy->moon4_regs + UPHY_CONTROL1);
> +
> +	/* PLL power off/on twice */
> +	pll_pwr_off = (readl(usbphy->moon4_regs + UPHY_CONTROL3) & ~MASK_BITS)
> +			| MO1_UPHY_PLL_POWER_OFF_SEL | MO1_UPHY_PLL_POWER_OFF;
> +	pll_pwr_on = (readl(usbphy->moon4_regs + UPHY_CONTROL3) & ~MASK_BITS)
> +			| MO1_UPHY_PLL_POWER_OFF_SEL;
> +
> +	writel(RF_MASK_V(MASK_BITS, pll_pwr_off), usbphy->moon4_regs + UPHY_CONTROL3);
> +	mdelay(1);
> +	writel(RF_MASK_V(MASK_BITS, pll_pwr_on), usbphy->moon4_regs + UPHY_CONTROL3);
> +	mdelay(1);
> +	writel(RF_MASK_V(MASK_BITS, pll_pwr_off), usbphy->moon4_regs + UPHY_CONTROL3);
> +	mdelay(1);
> +	writel(RF_MASK_V(MASK_BITS, pll_pwr_on), usbphy->moon4_regs + UPHY_CONTROL3);
> +	mdelay(1);

why delay on each register write?

> +	writel(RF_MASK_V(MASK_BITS, 0x0), usbphy->moon4_regs + UPHY_CONTROL3);
> +
> +	/* board uphy 0 internal register modification for tid certification */
> +	cell = nvmem_cell_get(usbphy->dev, disc_name);
> +	if (IS_ERR_OR_NULL(cell)) {
> +		if (PTR_ERR(cell) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +	}
> +
> +	otp_v = nvmem_cell_read(cell, &otp_l);
> +	nvmem_cell_put(cell);
> +
> +	if (otp_v) {
> +		set = *(otp_v + 1);
> +		set = (set << (sizeof(char) * 8)) | *otp_v;
> +		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
> +	}
> +
> +	if (!otp_v || set == 0)
> +		set = OTP_DISC_LEVEL_DEFAULT;
> +
> +	val = readl(usbphy->phy_regs + CONFIG7);
> +	val = (val & ~J_DISC) | set;
> +	writel(val, usbphy->phy_regs + CONFIG7);

maybe add a updatel() macro

> +static const struct phy_ops sp_uphy_ops = {
> +	.init		= sp_uphy_init,

no power_on/off/exit routines??

> +static const struct of_device_id sp_uphy_dt_ids[] = {
> +	{.compatible = "sunplus,sp7021-usb2-phy",
> +	 .data = &sp_uphy_ops,},

why should the ops be in driver data?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
