Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8508EE6FE20
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 15:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftq+F3P28i45sDL+oFiLA2SivxU2S5PqI6QEZ54mq5g=; b=1fVUcHq90CZwNg
	vQcXxCTDEqGiXdffYGcS2asDJX/N80pFbsXk07QAFERodsawqipNotwqBBtSs/roaSDXKqe74AAf+
	9s1WcDJLla9dWrhZlcPtX/aPpTNKC/xM7EsawiFiFgWKS3xSaOOixADn+NiQBqRepHsfPga6TZRqB
	O36izZtpzBRBw3Hnd1qrQr54qzKbEUXqe6ggYRecSkXs7gSTn8/xe2ec+++uiNPEeevSQzCFmAG4f
	QbaBOkXYW79+rPaGoM2LvEQ/C6R6p37CxZbNephfgz/uE/7lh2sFTUIqDOaj879dgX8VwHJRcW1dx
	+yAfs2nu0O2r8/WOD1RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4i2-0000000Fj4O-07Zq;
	Tue, 23 Dec 2025 15:54:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY4hz-0000000Fj3x-2yYi
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 15:54:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 016EE40A40;
	Tue, 23 Dec 2025 15:53:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2644DC116C6;
	Tue, 23 Dec 2025 15:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766505238;
	bh=CZrJo1LdW7bruNZUu+2L6WzM2CBpusjxOX4oWgrjvAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ML9nBi3A2UxEqoBQvpJw2FYCOwagkl8EmF2lJKZv9Tf3x0t0MNrXw6kXbWS/7OV5C
	 NrWKOpuV6HgLsf3UgsmQxITSXQMBv05/cmh9m5DAMTPnLz1ouHyKDKe2Wrtai7MmrO
	 CCDhEltgaIINL00jfFxonf3Pi9bXQi/qkIX7l1g+gLeI2YXHpMAOG5BiPCmeqm+Qz9
	 GuH3rWjCWp2lhyORyacmg9DJefht43b9N8eqdf/kHAul2ZVdlixE6PWzYfqw9c8zVd
	 NhANqpA1pmGmX4CXVImx74zY/V0hyl5DmFeZPhZ/pSxc0uyQmlxNVhtDvfw4oxYhGQ
	 A37UT8IbO3a1A==
Date: Tue, 23 Dec 2025 21:23:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Gr=E9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v5 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <aUq7E4yh0OgTfdxF@vaman>
References: <20251215-macb-phy-v5-0-a9dfea39da34@bootlin.com>
 <20251215-macb-phy-v5-2-a9dfea39da34@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251215-macb-phy-v5-2-a9dfea39da34@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_075359_795756_F10CA0EC 
X-CRM114-Status: GOOD (  28.49  )
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

On 15-12-25, 17:26, Th=E9o Lebrun wrote:
> EyeQ5 embeds a system-controller called OLB. It features many unrelated
> registers, and some of those are registers used to configure the
> integration of the RGMII/SGMII Cadence PHY used by MACB/GEM instances.
> =

> Wrap in a neat generic PHY provider, exposing two PHYs with standard
> phy_init() / phy_set_mode() / phy_power_on() operations.
> =

> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  MAINTAINERS                 |   1 +
>  drivers/phy/Kconfig         |  13 +++
>  drivers/phy/Makefile        |   1 +
>  drivers/phy/phy-eyeq5-eth.c | 249 ++++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 264 insertions(+)
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5b11839cba9d..2f67ec9fad57 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17605,6 +17605,7 @@ F:	arch/mips/boot/dts/mobileye/
>  F:	arch/mips/configs/eyeq5_defconfig
>  F:	arch/mips/mobileye/board-epm5.its.S
>  F:	drivers/clk/clk-eyeq.c
> +F:	drivers/phy/phy-eyeq5-eth.c
>  F:	drivers/pinctrl/pinctrl-eyeq5.c
>  F:	drivers/reset/reset-eyeq.c
>  F:	include/dt-bindings/clock/mobileye,eyeq5-clk.h
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0a..1aa6eff12dbc 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -101,6 +101,19 @@ config PHY_NXP_PTN3222
>  	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
>  	  Speed and High Speed.
>  =

> +config PHY_EYEQ5_ETH

sorted please

> +	tristate "Ethernet PHY Driver on EyeQ5"
> +	depends on OF
> +	depends on MACH_EYEQ5 || COMPILE_TEST
> +	select AUXILIARY_BUS
> +	select GENERIC_PHY
> +	default MACH_EYEQ5

hmmm why should it be default? Maybe add this is respective defconfig for
platform instead..?

> +	help
> +	  Enable this to support the Ethernet PHY integrated on EyeQ5.
> +	  It supports both RGMII and SGMII. Registers are located in a
> +	  shared register region called OLB. If M is selected, the
> +	  module will be called phy-eyeq5-eth.
> +
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494..8289497ece55 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)		+=3D phy-snps-eusb2.o
>  obj-$(CONFIG_USB_LGM_PHY)		+=3D phy-lgm-usb.o
>  obj-$(CONFIG_PHY_AIROHA_PCIE)		+=3D phy-airoha-pcie.o
>  obj-$(CONFIG_PHY_NXP_PTN3222)		+=3D phy-nxp-ptn3222.o
> +obj-$(CONFIG_PHY_EYEQ5_ETH)		+=3D phy-eyeq5-eth.o

sorted please

>  obj-y					+=3D allwinner/	\
>  					   amlogic/	\
>  					   broadcom/	\
> diff --git a/drivers/phy/phy-eyeq5-eth.c b/drivers/phy/phy-eyeq5-eth.c
> new file mode 100644
> index 000000000000..6e28f7e24835
> --- /dev/null
> +++ b/drivers/phy/phy-eyeq5-eth.c
> @@ -0,0 +1,249 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/auxiliary_bus.h>
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/errno.h>
> +#include <linux/gfp_types.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#define EQ5_PHY_COUNT	2
> +
> +#define EQ5_PHY0_GP	0x128
> +#define EQ5_PHY1_GP	0x12c
> +#define EQ5_PHY0_SGMII	0x134
> +#define EQ5_PHY1_SGMII	0x138
> +
> +#define EQ5_GP_TX_SWRST_DIS	BIT(0)		// Tx SW reset
> +#define EQ5_GP_TX_M_CLKE	BIT(1)		// Tx M clock enable
> +#define EQ5_GP_SYS_SWRST_DIS	BIT(2)		// Sys SW reset
> +#define EQ5_GP_SYS_M_CLKE	BIT(3)		// Sys clock enable
> +#define EQ5_GP_SGMII_MODE	BIT(4)		// SGMII mode
> +#define EQ5_GP_RGMII_DRV	GENMASK(8, 5)	// RGMII drive strength
> +
> +#define EQ5_SGMII_PWR_EN	BIT(0)
> +#define EQ5_SGMII_RST_DIS	BIT(1)
> +#define EQ5_SGMII_PLL_EN	BIT(2)
> +#define EQ5_SGMII_SIG_DET_SW	BIT(3)
> +#define EQ5_SGMII_PWR_STATE	BIT(4)
> +#define EQ5_SGMII_PLL_ACK	BIT(18)
> +#define EQ5_SGMII_PWR_STATE_ACK	GENMASK(24, 20)
> +
> +struct eq5_phy_inst {
> +	struct eq5_phy_private	*priv;
> +	struct phy		*phy;
> +	void __iomem		*gp, *sgmii;
> +	phy_interface_t		phy_interface;
> +};
> +
> +struct eq5_phy_private {
> +	struct device		*dev;
> +	struct eq5_phy_inst	phys[EQ5_PHY_COUNT];
> +};
> +
> +static int eq5_phy_init(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +	u32 reg;
> +
> +	dev_dbg(dev, "phy_init(inst=3D%td)\n", inst - priv->phys);
> +
> +	writel(0, inst->gp);
> +	writel(0, inst->sgmii);
> +
> +	udelay(5);
> +
> +	reg =3D readl(inst->gp) | EQ5_GP_TX_SWRST_DIS | EQ5_GP_TX_M_CLKE |
> +	      EQ5_GP_SYS_SWRST_DIS | EQ5_GP_SYS_M_CLKE |
> +	      FIELD_PREP(EQ5_GP_RGMII_DRV, 0x9);
> +	writel(reg, inst->gp);
> +
> +	return 0;
> +}
> +
> +static int eq5_phy_exit(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +
> +	dev_dbg(dev, "phy_exit(inst=3D%td)\n", inst - priv->phys);
> +
> +	writel(0, inst->gp);
> +	writel(0, inst->sgmii);
> +	udelay(5);

this is same patter in init as well...?

> +
> +	return 0;
> +}
> +
> +static int eq5_phy_set_mode(struct phy *phy, enum phy_mode mode, int sub=
mode)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +
> +	dev_dbg(dev, "phy_set_mode(inst=3D%td, mode=3D%d, submode=3D%d)\n",
> +		inst - priv->phys, mode, submode);

these are good for debug but not for upstream, please drop

> +
> +	if (mode !=3D PHY_MODE_ETHERNET)
> +		return -EOPNOTSUPP;
> +
> +	if (!phy_interface_mode_is_rgmii(submode) &&
> +	    submode !=3D PHY_INTERFACE_MODE_SGMII)
> +		return -EOPNOTSUPP;
> +
> +	inst->phy_interface =3D submode;
> +	return 0;
> +}
> +
> +static int eq5_phy_power_on(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +	u32 reg;
> +
> +	dev_dbg(dev, "phy_power_on(inst=3D%td)\n", inst - priv->phys);
> +
> +	if (inst->phy_interface =3D=3D PHY_INTERFACE_MODE_SGMII) {
> +		writel(readl(inst->gp) | EQ5_GP_SGMII_MODE, inst->gp);
> +
> +		reg =3D EQ5_SGMII_PWR_EN | EQ5_SGMII_RST_DIS | EQ5_SGMII_PLL_EN;
> +		writel(reg, inst->sgmii);
> +
> +		if (readl_poll_timeout(inst->sgmii, reg,
> +				       reg & EQ5_SGMII_PLL_ACK, 1, 100)) {
> +			dev_err(dev, "PLL timeout\n");
> +			return -ETIMEDOUT;
> +		}
> +
> +		reg =3D readl(inst->sgmii);
> +		reg |=3D EQ5_SGMII_PWR_STATE | EQ5_SGMII_SIG_DET_SW;
> +		writel(reg, inst->sgmii);
> +	} else {
> +		writel(readl(inst->gp) & ~EQ5_GP_SGMII_MODE, inst->gp);
> +		writel(0, inst->sgmii);
> +	}
> +
> +	return 0;
> +}
> +
> +static int eq5_phy_power_off(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +
> +	dev_dbg(dev, "phy_power_off(inst=3D%td)\n", inst - priv->phys);
> +
> +	writel(readl(inst->gp) & ~EQ5_GP_SGMII_MODE, inst->gp);
> +	writel(0, inst->sgmii);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops eq5_phy_ops =3D {
> +	.init		=3D eq5_phy_init,
> +	.exit		=3D eq5_phy_exit,
> +	.set_mode	=3D eq5_phy_set_mode,
> +	.power_on	=3D eq5_phy_power_on,
> +	.power_off	=3D eq5_phy_power_off,
> +};
> +
> +static struct phy *eq5_phy_xlate(struct device *dev,
> +				 const struct of_phandle_args *args)
> +{
> +	struct eq5_phy_private *priv =3D dev_get_drvdata(dev);
> +
> +	if (args->args_count !=3D 1 || args->args[0] >=3D EQ5_PHY_COUNT)
> +		return ERR_PTR(-EINVAL);
> +
> +	return priv->phys[args->args[0]].phy;
> +}
> +
> +static int eq5_phy_probe_phy(struct eq5_phy_private *priv, unsigned int =
index,
> +			     void __iomem *base, unsigned int gp,
> +			     unsigned int sgmii)
> +{
> +	struct eq5_phy_inst *inst =3D &priv->phys[index];
> +	struct device *dev =3D priv->dev;
> +	struct phy *phy;
> +
> +	phy =3D devm_phy_create(dev, dev->of_node, &eq5_phy_ops);
> +	if (IS_ERR(phy))
> +		return dev_err_probe(dev, PTR_ERR(phy),
> +				     "failed to create PHY %u\n", index);
> +
> +	inst->priv =3D priv;
> +	inst->phy =3D phy;
> +	inst->gp =3D base + gp;
> +	inst->sgmii =3D base + sgmii;
> +	inst->phy_interface =3D PHY_INTERFACE_MODE_NA;
> +	phy_set_drvdata(phy, inst);
> +
> +	return 0;
> +}
> +
> +static int eq5_phy_probe(struct auxiliary_device *adev,
> +			 const struct auxiliary_device_id *id)
> +{
> +	struct device *dev =3D &adev->dev;
> +	struct phy_provider *provider;
> +	struct eq5_phy_private *priv;
> +	void __iomem *base;
> +	int ret;
> +
> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->dev =3D dev;
> +	dev_set_drvdata(dev, priv);
> +
> +	base =3D (void __iomem *)dev_get_platdata(dev);

no need to cast for void *
-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
