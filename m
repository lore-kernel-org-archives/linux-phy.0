Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5566BCD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 11:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74Du2vGLq3NxV5Gtf0H+6lRNyi6Vlky2/kKwfOi8I+Y=; b=fF4g2oY/QplP0M
	CyFiY6QEepHZxMmGsbFWYsntU+31ZUuAlw79FzcMdKghSb/Xb2gMHIwEKlPV55AJcYupbc43LkZP5
	yMFJYRZMndDTuhkLPW19DFPadUhyCvBcSx/c3VRmwMgzH64tfro0JH9DUZPLl1zRoGPYAJgGYs7F6
	XAIVpi3TwkJqVoqLOOStiWelhEyxnJ/XFvI/9Zjqemd9TY1gWthCrUqdTiiYFzUgvgR25HJ//ySxo
	j2BzHFR0AAcGTi+hDWEpcOKYkRNhHCOHlPkP324U6OYRGGcGkQ1aXBIW6BPm2aPOtRnvXVbF9+0lY
	k0eAQnFqinFqcOlUrMGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM299-0000000Acw1-3nk8;
	Sun, 10 May 2026 11:16:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM298-0000000Acvt-2Hfr
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 11:16:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 36CC66001A;
	Sun, 10 May 2026 11:16:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18A35C2BCB8;
	Sun, 10 May 2026 11:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778411787;
	bh=9vz4zc7pY6UY1MsTOwhSxueX2US2lDqZldy5EGxrbH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VDoZE4DiD44EAw/ihWix6qu3McB0RO9xjzXUaWBgaWDKqKtVBTE/N5hCkBuDlaxkr
	 aU+rlHznWcjdIcRG1C+9ekFLUq1pa+Ld2kyA2KqGh3h4pjHdFnscqrZm6cN7W7AM4q
	 NTbJ0hZoGdAOsUzcGQjOMoKSGuPUDdSgjinPEiymKQKCsOyUlL41plDVjIh9O8bUzu
	 bpYrftwkoHldL/48K3p/2ZfG4cSncgf1lnKK6S2HilUBBwTgkubzvGiE1WTpuVM3aZ
	 7lyh0MTCYB+uETvO7XKkm6WZVlz4k7oZZOi/UbGxt9Vsw2g4hWOROu7AxuMXeA7CD5
	 tjgyyHzu3LFDA==
Date: Sun, 10 May 2026 16:46:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-phy@lists.infradead.org, naseefkm@gmail.com,
	neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: econet: Add PCIe PHY driver for EcoNet
 EN751221 and EN7528 SoCs.
Message-ID: <agBpBxofP00bAt7V@vaman>
References: <20260404184918.2184070-1-cjd@cjdns.fr>
 <20260404184918.2184070-3-cjd@cjdns.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260404184918.2184070-3-cjd@cjdns.fr>
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

On 04-04-26, 18:49, Caleb James DeLisle wrote:
> Introduce support for EcoNet PCIe PHY controllers found in EN751221
> and EN7528 SoCs, these SoCs are not identical but are similar, each
> having one Gen1 port, and one Gen1/Gen2 port.
> 
> Co-developed-by: Ahmed Naseef <naseefkm@gmail.com>
> Signed-off-by: Ahmed Naseef <naseefkm@gmail.com>
> [cjd@cjdns.fr: add EN751221 support and refactor for clarity]
> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> ---
>  MAINTAINERS                   |   1 +
>  drivers/phy/Kconfig           |  12 +++
>  drivers/phy/Makefile          |   1 +
>  drivers/phy/phy-econet-pcie.c | 180 ++++++++++++++++++++++++++++++++++
>  4 files changed, 194 insertions(+)
>  create mode 100644 drivers/phy/phy-econet-pcie.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1b016212e4cb..b2d37c7c80af 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9177,6 +9177,7 @@ M:	Caleb James DeLisle <cjd@cjdns.fr>
>  L:	linux-mips@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
> +F:	drivers/phy/phy-econet-pcie.c
>  
>  ECRYPT FILE SYSTEM
>  M:	Tyler Hicks <code@tyhicks.com>
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 227b9a4c612e..9aad68829d72 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -66,6 +66,18 @@ config PHY_CAN_TRANSCEIVER
>  	  functional modes using gpios and sets the attribute max link
>  	  rate, for CAN drivers.
>  
> +config PHY_ECONET_PCIE
> +	tristate "EcoNet PCIe-PHY Driver"
> +	depends on ECONET || COMPILE_TEST
> +	depends on OF
> +	select GENERIC_PHY
> +	select REGMAP_MMIO
> +	help
> +	  Say Y here to add support for EcoNet PCIe PHY driver.
> +	  This driver create the basic PHY instance and provides initialize
> +	  callback for PCIe GEN1 and GEN2 ports. This PHY is found on
> +	  EcoNet SoCs including EN751221 and EN7528.
> +
>  config PHY_GOOGLE_USB
>  	tristate "Google Tensor SoC USB PHY driver"
>  	select GENERIC_PHY
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index f49d83f00a3d..42959ed383fd 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
>  obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
>  obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
>  obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
> +obj-$(CONFIG_PHY_ECONET_PCIE)		+= phy-econet-pcie.o
>  obj-$(CONFIG_PHY_GOOGLE_USB)		+= phy-google-usb.o
>  obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
>  obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
> diff --git a/drivers/phy/phy-econet-pcie.c b/drivers/phy/phy-econet-pcie.c
> new file mode 100644
> index 000000000000..d2c6e0c1f331
> --- /dev/null
> +++ b/drivers/phy/phy-econet-pcie.c
> @@ -0,0 +1,180 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Author: Caleb James DeLisle <cjd@cjdns.fr>
> + *	   Ahmed Naseef <naseefkm@gmail.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +/* Rx detection timing for EN751221: 16*8 clock cycles  */
> +#define EN751221_RXDET_VAL		16
> +
> +/* Rx detection timing when in power mode 3 */
> +#define EN75_RXDET_P3_REG		0xa28
> +#define EN75_RXDET_P3_MASK		GENMASK(17, 9)
> +
> +/* Rx detection timing when in power mode 2 */
> +#define EN75_RXDET_P2_REG		0xa2c
> +#define EN75_RXDET_P2_MASK		GENMASK(8, 0)
> +
> +/* Rx impedance */
> +#define EN75_RX_IMPEDANCE_REG		0xb2c
> +#define EN75_RX_IMPEDANCE_MASK		GENMASK(13, 12)
> +enum en75_rx_impedance {
> +	EN75_RX_IMPEDANCE_100_OHM	= 0,
> +	EN75_RX_IMPEDANCE_95_OHM	= 1,
> +	EN75_RX_IMPEDANCE_90_OHM	= 2,
> +};
> +
> +/* PLL Invert clock */
> +#define EN75_PLL_PH_INV_REG		0x4a0
> +#define EN75_PLL_PH_INV_MASK		BIT(5)
> +
> +struct en75_phy_op {
> +	u32 reg;
> +	u32 mask;
> +	u32 val;
> +};
> +
> +struct en7528_pcie_phy {
> +	struct regmap *regmap;
> +	const struct en75_phy_op *data;
> +};
> +
> +/* Port 0 PHY: set LCDDS_CLK_PH_INV for PLL operation */
> +static const struct en75_phy_op en7528_phy_gen1[] = {
> +	{
> +		.reg = EN75_PLL_PH_INV_REG,
> +		.mask = EN75_PLL_PH_INV_MASK,
> +		.val = 1,
> +	},
> +	{ /* sentinel */ }
> +};
> +
> +/* EN7528 Port 1 PHY: Rx impedance tuning, target R -5 Ohm */
> +static const struct en75_phy_op en7528_phy_gen2[] = {
> +	{
> +		.reg = EN75_RX_IMPEDANCE_REG,
> +		.mask = EN75_RX_IMPEDANCE_MASK,
> +		.val = EN75_RX_IMPEDANCE_95_OHM,
> +	},
> +	{ /* sentinel */ }
> +};
> +
> +/* EN751221 Port 1 PHY, set RX detect to 16*8 clock cycles */
> +static const struct en75_phy_op en751221_phy_gen2[] = {
> +	{
> +		.reg = EN75_RXDET_P3_REG,
> +		.mask = EN75_RXDET_P3_MASK,
> +		.val = EN751221_RXDET_VAL,
> +	},
> +	{
> +		.reg = EN75_RXDET_P2_REG,
> +		.mask = EN75_RXDET_P2_MASK,
> +		.val = EN751221_RXDET_VAL,
> +	},
> +	{ /* sentinel */ }
> +};
> +
> +static int en75_pcie_phy_init(struct phy *phy)
> +{
> +	struct en7528_pcie_phy *ephy = phy_get_drvdata(phy);
> +	const struct en75_phy_op *data = ephy->data;
> +	int i, ret;
> +	u32 val;
> +
> +	for (i = 0; data[i].mask || data[i].val; i++) {
> +		if (i)
> +			usleep_range(1000, 2000);
> +
> +		val = field_prep(data[i].mask, data[i].val);

Please see:

https://sashiko.dev/#/patchset/20260425173642.406089-1-cjd%40cjdns.fr

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
