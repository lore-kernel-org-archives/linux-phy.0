Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A0CECAAD4
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 13:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbuQO12Ryw75TtOydVWknUN8rqIqLR+GimM/j4B3OL0=; b=qlAyJcPrpUgSVA
	5tpKP961kYCUtstPpyFsTFjMyw8SwDZcDuO0o+thdx6fXEa+cqwG0mf2x6zTwKwzXo4j06UmZ50oJ
	wXNL+9AMSipbVXEi3xXRHnGMj7eVth2ftee0RaI5EyMeuS+mpZV37FBNZOthoCayTP5n6tUGA1TOq
	fTrZMsl3IfhwtkE/kgEPTl+wzyjGKjyWtzgjmI7eDoikKLYN9gTg37YGw2w/nHQI9dewPk0zlIhc/
	P7JPqX1fT1vv7nQHPnGDkThAgbnc22O5CjGQTwaCmkESk8jOqL/shS+a0NT0QWWxOzyZPXpUFwO8m
	pUgf27cuvsaKcL85aDCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0xt-00HJjK-VH; Tue, 30 Aug 2022 13:07:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0xm-00HJi5-QA
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 13:07:35 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oT0xX-00081U-Ii; Tue, 30 Aug 2022 15:07:15 +0200
Message-ID: <06d256719a2ac5bf22ce80bb30b8320eec8fc1d9.camel@pengutronix.de>
Subject: Re: [PATCH v5 6/7] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
 support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Tue, 30 Aug 2022 15:07:13 +0200
In-Reply-To: <1661845564-11373-7-git-send-email-hongxing.zhu@nxp.com>
References: <1661845564-11373-1-git-send-email-hongxing.zhu@nxp.com>
	 <1661845564-11373-7-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_060731_044029_949C123F 
X-CRM114-Status: GOOD (  25.61  )
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

Am Dienstag, dem 30.08.2022 um 15:46 +0800 schrieb Richard Zhu:
> Add i.MX8MP PCIe PHY support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 137 +++++++++++++--------
>  1 file changed, 89 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index ad7d2edfc414..c76e3a1a5f51 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -11,6 +11,9 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
>  #include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/of_device.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> @@ -31,12 +34,10 @@
>  #define IMX8MM_PCIE_PHY_CMN_REG065	0x194
>  #define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
>  #define  ANA_AUX_TX_LVL			GENMASK(3, 0)
> -#define IMX8MM_PCIE_PHY_CMN_REG75	0x1D4
> -#define  PCIE_PHY_CMN_REG75_PLL_DONE	0x3
> +#define IMX8MM_PCIE_PHY_CMN_REG075	0x1D4
> +#define  ANA_PLL_DONE			0x3
>  #define PCIE_PHY_TRSV_REG5		0x414
> -#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP	0x2D
>  #define PCIE_PHY_TRSV_REG6		0x418
> -#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP	0xF
>  
>  #define IMX8MM_GPR_PCIE_REF_CLK_SEL	GENMASK(25, 24)
>  #define IMX8MM_GPR_PCIE_REF_CLK_PLL	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
> @@ -47,16 +48,23 @@
>  #define IMX8MM_GPR_PCIE_SSC_EN		BIT(16)
>  #define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE	BIT(9)
>  
> +enum imx8_pcie_phy_type {
> +	IMX8MM,
> +	IMX8MP,
> +};
> +
>  struct imx8_pcie_phy {
>  	void __iomem		*base;
>  	struct clk		*clk;
>  	struct phy		*phy;
>  	struct regmap		*iomuxc_gpr;
>  	struct reset_control	*reset;
> +	struct reset_control	*perst;
>  	u32			refclk_pad_mode;
>  	u32			tx_deemph_gen1;
>  	u32			tx_deemph_gen2;
>  	bool			clkreq_unused;
> +	enum imx8_pcie_phy_type	variant;
>  };
>  
>  static int imx8_pcie_phy_init(struct phy *phy)
> @@ -68,31 +76,20 @@ static int imx8_pcie_phy_init(struct phy *phy)
>  	reset_control_assert(imx8_phy->reset);
>  
>  	pad_mode = imx8_phy->refclk_pad_mode;
> -	/* Set AUX_EN_OVERRIDE 1'b0, when the CLKREQ# isn't hooked */
> -	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> -			   IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
> -			   imx8_phy->clkreq_unused ?
> -			   0 : IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE);
> -	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> -			   IMX8MM_GPR_PCIE_AUX_EN,
> -			   IMX8MM_GPR_PCIE_AUX_EN);
> -	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> -			   IMX8MM_GPR_PCIE_POWER_OFF, 0);
> -	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> -			   IMX8MM_GPR_PCIE_SSC_EN, 0);
> -
> -	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> -			   IMX8MM_GPR_PCIE_REF_CLK_SEL,
> -			   pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ?
> -			   IMX8MM_GPR_PCIE_REF_CLK_EXT :
> -			   IMX8MM_GPR_PCIE_REF_CLK_PLL);
> -	usleep_range(100, 200);
> -
> -	/* Do the PHY common block reset */
> -	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> -			   IMX8MM_GPR_PCIE_CMN_RST,
> -			   IMX8MM_GPR_PCIE_CMN_RST);
> -	usleep_range(200, 500);
> +	switch (imx8_phy->variant) {
> +	case IMX8MM:
> +		/* Tune PHY de-emphasis setting to pass PCIe compliance. */
> +		if (imx8_phy->tx_deemph_gen1)
> +			writel(imx8_phy->tx_deemph_gen1,
> +			       imx8_phy->base + PCIE_PHY_TRSV_REG5);
> +		if (imx8_phy->tx_deemph_gen2)
> +			writel(imx8_phy->tx_deemph_gen2,
> +			       imx8_phy->base + PCIE_PHY_TRSV_REG6);
> +		break;
> +	case IMX8MP:
> +		reset_control_assert(imx8_phy->perst);
> +		break;
> +	}
>  
>  	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ||
>  	    pad_mode == IMX8_PCIE_REFCLK_PAD_UNUSED) {
> @@ -120,20 +117,44 @@ static int imx8_pcie_phy_init(struct phy *phy)
>  		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
>  	}
>  
> -	/* Tune PHY de-emphasis setting to pass PCIe compliance. */
> -	if (imx8_phy->tx_deemph_gen1)
> -		writel(imx8_phy->tx_deemph_gen1,
> -		       imx8_phy->base + PCIE_PHY_TRSV_REG5);
> -	if (imx8_phy->tx_deemph_gen2)
> -		writel(imx8_phy->tx_deemph_gen2,
> -		       imx8_phy->base + PCIE_PHY_TRSV_REG6);
> +	/* Set AUX_EN_OVERRIDE 1'b0, when the CLKREQ# isn't hooked */
> +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +			   IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE,
> +			   imx8_phy->clkreq_unused ?
> +			   0 : IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE);
> +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +			   IMX8MM_GPR_PCIE_AUX_EN,
> +			   IMX8MM_GPR_PCIE_AUX_EN);
> +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +			   IMX8MM_GPR_PCIE_POWER_OFF, 0);
> +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +			   IMX8MM_GPR_PCIE_SSC_EN, 0);
> +
> +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +			   IMX8MM_GPR_PCIE_REF_CLK_SEL,
> +			   pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ?
> +			   IMX8MM_GPR_PCIE_REF_CLK_EXT :
> +			   IMX8MM_GPR_PCIE_REF_CLK_PLL);
> +	usleep_range(100, 200);
> +
> +	/* Do the PHY common block reset */
> +	regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +			   IMX8MM_GPR_PCIE_CMN_RST,
> +			   IMX8MM_GPR_PCIE_CMN_RST);
>  
> -	reset_control_deassert(imx8_phy->reset);
> +	switch (imx8_phy->variant) {
> +	case IMX8MP:
> +		reset_control_deassert(imx8_phy->perst);
> +		fallthrough;
> +	case IMX8MM:
> +		reset_control_deassert(imx8_phy->reset);
> +		usleep_range(200, 500);
> +		break;
> +	}
>  
>  	/* Polling to check the phy is ready or not. */
> -	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
> -				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
> -				 10, 20000);
> +	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG075,
> +				 val, val == ANA_PLL_DONE, 10, 20000);
>  	return ret;
>  }
>  
> @@ -160,6 +181,13 @@ static const struct phy_ops imx8_pcie_phy_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static const struct of_device_id imx8_pcie_phy_of_match[] = {
> +	{.compatible = "fsl,imx8mm-pcie-phy", .data = (void *)IMX8MM},
> +	{.compatible = "fsl,imx8mp-pcie-phy", .data = (void *)IMX8MP},
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> +
>  static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  {
>  	struct phy_provider *phy_provider;
> @@ -172,6 +200,9 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  	if (!imx8_phy)
>  		return -ENOMEM;
>  
> +	imx8_phy->variant =
> +		(enum imx8_pcie_phy_type)of_device_get_match_data(dev);
> +
>  	/* get PHY refclk pad mode */
>  	of_property_read_u32(np, "fsl,refclk-pad-mode",
>  			     &imx8_phy->refclk_pad_mode);
> @@ -196,8 +227,16 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  	}
>  
>  	/* Grab GPR config register range */
> -	imx8_phy->iomuxc_gpr =
> -		 syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> +	switch (imx8_phy->variant) {
> +	case IMX8MM:
> +		imx8_phy->iomuxc_gpr =
> +			 syscon_regmap_lookup_by_compatible("fsl,imx8mm-iomuxc-gpr");
> +		break;
> +	case IMX8MP:
> +		imx8_phy->iomuxc_gpr =
> +			 syscon_regmap_lookup_by_compatible("fsl,imx8mp-iomuxc-gpr");
> +		break;
> +	}

Oh, I had a real phandle in DT in mind for this, but I see how this
would be hard to introduce in a backward compatible manner for the 8MM.
At least this way it is fully contained in the driver and doesn't leak
into DT compatibles.

Maybe we could make this a little nicer by just having an const array
of iomux syscon compatibles indexed by imx8_phy->variant, to avoid the
switch and the resulting code (almost-)duplication.

Regards,
Lucas

>  	if (IS_ERR(imx8_phy->iomuxc_gpr)) {
>  		dev_err(dev, "unable to find iomuxc registers\n");
>  		return PTR_ERR(imx8_phy->iomuxc_gpr);
> @@ -208,6 +247,14 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  		dev_err(dev, "Failed to get PCIEPHY reset control\n");
>  		return PTR_ERR(imx8_phy->reset);
>  	}
> +	if (imx8_phy->variant == IMX8MP) {
> +		imx8_phy->perst =
> +			devm_reset_control_get_exclusive(dev, "perst");
> +		if (IS_ERR(imx8_phy->perst)) {
> +			dev_err(dev, "Failed to get PCIE PHY PERST control\n");
> +			return PTR_ERR(imx8_phy->perst);
> +		}
> +	}
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	imx8_phy->base = devm_ioremap_resource(dev, res);
> @@ -225,12 +272,6 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> -static const struct of_device_id imx8_pcie_phy_of_match[] = {
> -	{.compatible = "fsl,imx8mm-pcie-phy",},
> -	{ },
> -};
> -MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> -
>  static struct platform_driver imx8_pcie_phy_driver = {
>  	.probe	= imx8_pcie_phy_probe,
>  	.driver = {



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
