Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C677C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:43:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA40F610A2
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:43:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CA40F610A2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KIYGnEou2LwPrqwhIZGY6MycidWByUwymY6K0z1Ce0=; b=3pH0PPpVo8Hv49
	kFTOWoEFBPM1fv5yt7uU4e2oBKGM252gs0Ie2BLmlwRPJvmDaAKkvmOxyuNKsHABoI7ghR/0sTl8n
	/remgqy9/XkY+4m2zvn6znJuCaS2PPyW3fobkptpgnGIyd8MkB5EjaIy261/P/sGtzQ0FVAfCihC8
	r+mPzWoeTB9zGZnB1qBXrhlW5Ogn0RZdEbZ4jyDeyeenWjZGuvWYzR8XvCGqhb9OSunTI9GH9fnqh
	pvEdGfcrYOmoEsaRQ3iln2mGzojnKWP/oawiQ+TqBMqm08LUN3Bw1Tlyg38gfTXO2fcM9ix1giSeF
	TD4waGU1JnpeN5mdBiKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUmEf-0025Zj-C2; Mon, 27 Sep 2021 08:43:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUmEb-0025YP-O3
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 08:43:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mUmEU-0006ND-Lz; Mon, 27 Sep 2021 10:43:30 +0200
Message-ID: <c9d57b1fb86173cc7ccbd391af4b18aaed6cd1ac.camel@pengutronix.de>
Subject: Re: [PATCH v2 4/4] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, kishon@ti.com, vkoul@kernel.org, 
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Mon, 27 Sep 2021 10:43:28 +0200
In-Reply-To: <1632641983-1455-5-git-send-email-hongxing.zhu@nxp.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-5-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_014338_017482_DF221DE2 
X-CRM114-Status: GOOD (  35.70  )
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

Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> Add the standalone i.MX8 PCIe PHY driver.
> Some reset bits should be manipulated between PHY configurations and
> status check(internal PLL is locked or not).
> So, do the PHY configuration in the phy_calibrate().
> And check the PHY is ready or not in the phy_init().

I would really like to see the PCIe controller driver side of this
also, as it's hard to review standalone. For example I'm not sure if
some of those reset bits should also be driven from the PHY driver,
even if they are currently hooked up to the controller driver.

Also I think the IOMUX GPR register handling belongs in the PHY driver,
as it's configuring the reference clock routing.

> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/phy/freescale/Kconfig             |   9 ++
>  drivers/phy/freescale/Makefile            |   1 +
>  drivers/phy/freescale/phy-fsl-imx8-pcie.c | 167 ++++++++++++++++++++++
>  3 files changed, 177 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-imx8-pcie.c

From what I know, there are several quite different PCIe PHYs used in
the different i.MX8 variants. I'm not sure if we want to stuff them all
into one file. I guess we should be more specific here and call this
imx8m-phy, or even imx8mm-phy.

> 
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 320630ffe3cd..da078a676fbc 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
>  	help
>  	  Enable this to add support for the Mixel DSI PHY as found
>  	  on NXP's i.MX8 family of SOCs.
> +
> +config PHY_FSL_IMX8_PCIE
> +	tristate "Freescale i.MX8 PCIE PHY"
> +	depends on OF && HAS_IOMEM
> +	select GENERIC_PHY
> +	default ARCH_MXC
> +	help
> +	  Enable this to add support for the PCIE PHY as found on i.MX8
> +	  family of SOCs.
> diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
> index 1d02e3869b45..9fd467b58621 100644
> --- a/drivers/phy/freescale/Makefile
> +++ b/drivers/phy/freescale/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)	+= phy-fsl-imx8mq-usb.o
>  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
> +obj-$(CONFIG_PHY_FSL_IMX8_PCIE)		+= phy-fsl-imx8-pcie.o
> diff --git a/drivers/phy/freescale/phy-fsl-imx8-pcie.c b/drivers/phy/freescale/phy-fsl-imx8-pcie.c
> new file mode 100644
> index 000000000000..ff47d6b83686
> --- /dev/null
> +++ b/drivers/phy/freescale/phy-fsl-imx8-pcie.c
> @@ -0,0 +1,167 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/delay.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <dt-binding/phy/phy-fsl-imx8-pcie.h>
> +
> +#define IMX8MM_PCIE_PHY_CMN_REG061	0x184
> +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_EN	BIT(0)
> +#define IMX8MM_PCIE_PHY_CMN_REG062	0x188
> +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_SEL	BIT(3)
> +#define IMX8MM_PCIE_PHY_CMN_REG063	0x18C
> +#define  AUX_PLL_REFCLK_SEL_SYS_PLL	GENMASK(7, 6)
> +#define IMX8MM_PCIE_PHY_CMN_REG064	0x190
> +#define  ANA_AUX_RX_TX_SEL_TX		BIT(7)
> +#define  ANA_AUX_RX_TERM_GND_EN		BIT(3)
> +#define  ANA_AUX_TX_TERM		BIT(2)
> +#define IMX8MM_PCIE_PHY_CMN_REG065	0x194
> +#define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
> +#define  ANA_AUX_TX_LVL			GENMASK(3, 0)
> +#define IMX8MM_PCIE_PHY_CMN_REG75	0x1D4
> +#define  PCIE_PHY_CMN_REG75_PLL_DONE	0x3
> +#define PCIE_PHY_TRSV_REG5		0x414
> +#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP	0x2D
> +#define PCIE_PHY_TRSV_REG6		0x418
> +#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP	0xF
> +
> +struct imx8_pcie_phy {
> +	u32		refclk_pad_mode;
> +	void __iomem	*base;
> +	struct clk	*clk;
> +	struct phy	*phy;
> +};
> +
> +static int imx8_pcie_phy_init(struct phy *phy)
> +{
> +	int ret;
> +	u32 val;
> +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
> +				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
> +				 10, 20000);
> +	return ret;
> +}
> +
> +static int imx8_pcie_phy_cal(struct phy *phy)
> +{
> +	u32 value, pad_mode;
> +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +	pad_mode = imx8_phy->refclk_pad_mode;
> +	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
> +		/* Configure the pad as input */
> +		value = readl(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> +		writel(value & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> +	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
> +		/* Configure the PHY to output the refclock via pad */
> +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> +		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
> +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
> +		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
> +		value = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
> +		writel(value | ANA_AUX_RX_TERM_GND_EN,
> +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
> +		writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
> +		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
> +	}
> +
> +	/* Tune PHY de-emphasis setting to pass PCIe compliance. */
> +	writel(PCIE_PHY_TRSV_REG5_GEN1_DEEMP,
> +	       imx8_phy->base + PCIE_PHY_TRSV_REG5);
> +	writel(PCIE_PHY_TRSV_REG6_GEN2_DEEMP,
> +	       imx8_phy->base + PCIE_PHY_TRSV_REG6);
> +
> +	return 0;
> +}
> +
> +static int imx8_pcie_phy_power_on(struct phy *phy)
> +{
> +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +	return clk_prepare_enable(imx8_phy->clk);

Do we need to enable this clock when the refclock is supplied
externally via the pad?

> +}
> +
> +static int imx8_pcie_phy_power_off(struct phy *phy)
> +{
> +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +	clk_disable_unprepare(imx8_phy->clk);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops imx8_pcie_phy_ops = {
> +	.init		= imx8_pcie_phy_init,
> +	.calibrate	= imx8_pcie_phy_cal,
> +	.power_on	= imx8_pcie_phy_power_on,
> +	.power_off	= imx8_pcie_phy_power_off,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int imx8_pcie_phy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct imx8_pcie_phy *imx8_phy;
> +	struct resource *res;
> +
> +	imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
> +	if (!imx8_phy)
> +		return -ENOMEM;
> +
> +	/* get PHY refclk pad mode */
> +	of_property_read_u32(np, "fsl,refclk-pad-mode",
> +			     &imx8_phy->refclk_pad_mode);
> +
> +	imx8_phy->clk = devm_clk_get(dev, "phy");
> +	if (IS_ERR(imx8_phy->clk)) {
> +		dev_err(dev, "failed to get imx pcie phy clock\n");
> +		return PTR_ERR(imx8_phy->clk);
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	imx8_phy->base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(imx8_phy->base))
> +		return PTR_ERR(imx8_phy->base);
> +
> +	imx8_phy->phy = devm_phy_create(dev, NULL, &imx8_pcie_phy_ops);
> +	if (IS_ERR(imx8_phy->phy))
> +		return PTR_ERR(imx8_phy->phy);
> +
> +	phy_set_drvdata(imx8_phy->phy, imx8_phy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +
> +	return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +static const struct of_device_id imx8_pcie_phy_of_match[] = {
> +	{.compatible = "fsl,imx8mm-pcie-phy",},
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> +
> +static struct platform_driver imx8_pcie_phy_driver = {
> +	.probe	= imx8_pcie_phy_probe,
> +	.driver = {
> +		.name	= "imx8-pcie-phy",
> +		.of_match_table	= imx8_pcie_phy_of_match,
> +	}
> +};
> +module_platform_driver(imx8_pcie_phy_driver);
> +
> +MODULE_DESCRIPTION("FSL IMX8 PCIE PHY driver");
> +MODULE_LICENSE("GPL");



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
