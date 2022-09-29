Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 956C2C04A95
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Of+lo9pzEzH6QTBtslMp1u7uJ0fF5SaG5VxGFHPIBbY=; b=clrqiyfC2Id1ow
	OFW2z9UFZHx4N6Pd7PezCpho7E/QuzOTiH2266wlD7t1y5vpULOkWGij1vh7HljiFoqw3HN4qdUjD
	DoFw6bEEpSIY/UOkrwNDRtkBdipqjUeXzCWP8g7ZRSevvR2tnpvkX2FIFdkHVAVT+eyIruSpS3YsL
	EFZHwHJ9ldbAnjgKMGWIXu9xPPl71rYMauQLLkXcKKHseugYrr6NewcTRgvVcsDuDZ857LPiZgD1H
	EEm2Ta678bBljQbrIdGx4Uw9A20NSHvbBIl7kHTKxYoq1KSNQn0E6lR3veVvoeCoiU7aFTLRRot8r
	IiVa3hSIcoK86YpGRjBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odn5q-001Poj-1T; Thu, 29 Sep 2022 06:32:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odn5f-001Pla-0X; Thu, 29 Sep 2022 06:32:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2BABE62040;
	Thu, 29 Sep 2022 06:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1C28C433C1;
	Thu, 29 Sep 2022 06:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664433129;
	bh=lk/VaHPokpmBPqjQo9BUUd1mCJo94gTtsAkFfra/dt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uwaelYiY1VxWiDtBcSOidUbr+fJAOiiJ3LkOM5MFLiBe4eKqV59dOvcZ/+byoP2OO
	 TghnO33WxYfehKa9zSGeHY6wGzWXxsbnuj3FYFdkNqbCs8HkTSlGmnq3Faxm2nLcbO
	 Fi+S5+cjsrEhJmPa5V+WRKw6d4P9XJE4a50RwRu7Ee1bNk/nq9y3gAOwShmz3GF8gG
	 Hxvq1+PedDdmd4rfCQXuanR6RoUGaAAUtbnoJiD0SWmnSo9MbYvTLbRUh6hz5WrHWp
	 UVlDy6vn5uZmLJ35oijHp2OiFZ/0kYwO1GUA3B2NioJEhx2uXxo03oyWADZNfQODmn
	 1YabrMQvJatuQ==
Date: Thu, 29 Sep 2022 12:02:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, robh@kernel.org, shawnguo@kernel.org,
	alexander.stein@ew.tq-group.com, marex@denx.de,
	richard.leitner@linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v9 3/4] phy: freescale: imx8m-pcie: Refine i.MX8MM PCIe
 PHY driver
Message-ID: <YzU747XfZ049pMx0@matsya>
References: <1664174463-13721-1-git-send-email-hongxing.zhu@nxp.com>
 <1664174463-13721-4-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1664174463-13721-4-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_233211_158521_9D737D12 
X-CRM114-Status: GOOD (  27.16  )
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

On 26-09-22, 14:41, Richard Zhu wrote:
> To make it more flexible and easy to expand. Refine i.MX8MM PCIe PHY
> driver.
> - Use gpr compatible string to avoid the codes duplications when add
>   another platform PCIe PHY support.
> - Re-orange the codes to let it more flexible and easy to expand.
> No functions changes basicly.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 108 +++++++++++++--------
>  1 file changed, 68 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index 2377ed307b53..9752818fe990 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -11,6 +11,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
>  #include <linux/module.h>
> +#include <linux/of_device.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> @@ -45,6 +46,15 @@
>  #define IMX8MM_GPR_PCIE_SSC_EN		BIT(16)
>  #define IMX8MM_GPR_PCIE_AUX_EN_OVERRIDE	BIT(9)
>  
> +enum imx8_pcie_phy_type {
> +	IMX8MM,
> +};
> +
> +struct imx8_pcie_phy_drvdata {
> +	enum		imx8_pcie_phy_type variant;
> +	const char	*gpr;
> +};
> +
>  struct imx8_pcie_phy {
>  	void __iomem		*base;
>  	struct clk		*clk;
> @@ -55,6 +65,7 @@ struct imx8_pcie_phy {
>  	u32			tx_deemph_gen1;
>  	u32			tx_deemph_gen2;
>  	bool			clkreq_unused;
> +	const struct imx8_pcie_phy_drvdata	*drvdata;
>  };
>  
>  static int imx8_pcie_phy_init(struct phy *phy)
> @@ -66,31 +77,17 @@ static int imx8_pcie_phy_init(struct phy *phy)
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
> +	switch (imx8_phy->drvdata->variant) {
> +	case IMX8MM:
> +		/* Tune PHY de-emphasis setting to pass PCIe compliance. */
> +		if (imx8_phy->tx_deemph_gen1)
> +			writel(imx8_phy->tx_deemph_gen1,
> +			       imx8_phy->base + PCIE_PHY_TRSV_REG5);
> +		if (imx8_phy->tx_deemph_gen2)
> +			writel(imx8_phy->tx_deemph_gen2,
> +			       imx8_phy->base + PCIE_PHY_TRSV_REG6);
> +		break;
> +	}
>  
>  	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ||
>  	    pad_mode == IMX8_PCIE_REFCLK_PAD_UNUSED) {
> @@ -118,15 +115,37 @@ static int imx8_pcie_phy_init(struct phy *phy)
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
>  
> -	reset_control_deassert(imx8_phy->reset);
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
> +
> +	switch (imx8_phy->drvdata->variant) {
> +	case IMX8MM:
> +		reset_control_deassert(imx8_phy->reset);
> +		usleep_range(200, 500);
> +		break;
> +	}
>  
>  	/* Polling to check the phy is ready or not. */
>  	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG075,
> @@ -157,6 +176,19 @@ static const struct phy_ops imx8_pcie_phy_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static const struct imx8_pcie_phy_drvdata drvdata[] = {
> +	[IMX8MM] = {
> +		.variant = IMX8MM,
> +		.gpr = "fsl,imx8mm-iomuxc-gpr",
> +	},
> +};

Pls drop the array...

static const struct imx8_pcie_phy_drvdata imx8mm_drvdata = {
        .variant = IMX8MM,
        .gpr = "fsl,imx8mm-iomuxc-gpr",
};



> +
> +static const struct of_device_id imx8_pcie_phy_of_match[] = {
> +	{.compatible = "fsl,imx8mm-pcie-phy", .data = &drvdata[IMX8MM], },

So this becomes:

        {.compatible = "fsl,imx8mm-pcie-phy", .data = &imx8mm_drvdata },

you can define new structs for newer SoCs

> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> +
>  static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  {
>  	struct phy_provider *phy_provider;
> @@ -169,6 +201,8 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  	if (!imx8_phy)
>  		return -ENOMEM;
>  
> +	imx8_phy->drvdata = of_device_get_match_data(dev);
> +
>  	/* get PHY refclk pad mode */
>  	of_property_read_u32(np, "fsl,refclk-pad-mode",
>  			     &imx8_phy->refclk_pad_mode);
> @@ -194,7 +228,7 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  
>  	/* Grab GPR config register range */
>  	imx8_phy->iomuxc_gpr =
> -		 syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> +		 syscon_regmap_lookup_by_compatible(imx8_phy->drvdata->gpr);
>  	if (IS_ERR(imx8_phy->iomuxc_gpr)) {
>  		dev_err(dev, "unable to find iomuxc registers\n");
>  		return PTR_ERR(imx8_phy->iomuxc_gpr);
> @@ -222,12 +256,6 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
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
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
