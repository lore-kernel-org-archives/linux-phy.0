Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A0ACC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YU4PIeHYb7ApNyYiwXJd2GFtOwENdO5kKgN6Jd0xw6U=; b=CABItKZbeA/51V
	CLMJXWak8HPAP3B/4xj254cZX8PZvtp49FAhmDUv+KQe7vnVVzx07AifOqmx4MdCYpmjXG7c/GyrT
	8S/KDfjp5TPxI9lb/aNwLeD3GSMVXDlOCp8W5Qe3sQwLigIIgeNxxQ9a4lDuWUIXVxz90aVlm7n92
	apSrdFM9GSFdnbCFqAr56jFc6qrCZiZR4t0+dC0UVYDph3oDxBwlThJPFBvCOj7BDAvmCtVSHPyj/
	nUpt1p9HJAnkfT7Dtg4oV9CgVcxFhzbF2DEwj1+/zyEsxKxjC0U86MOhN02sK567sCTWgOsgAI+m5
	cjrtMnIMiovSL6Zzpdzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdjs-00AuAs-VX; Thu, 02 Dec 2021 04:30:32 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdjg-00Au9C-3n; Thu, 02 Dec 2021 04:30:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C2F65B8221F;
 Thu,  2 Dec 2021 04:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EFB4C53FCC;
 Thu,  2 Dec 2021 04:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638419417;
 bh=xOtsh6uB0JwyVP3cPswcBfduh5x3rcKpeZ3dUk4ARhw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TTjkRP+XzHN6asg+o1L5lUZNHiqz2zriD1fGUvY2Uk+HB0I5toXBuzyIWJNPCDR1W
 xTs+fYr8lQMfWz5ra1ZHqcvt8YEhr/7Re0Rwz5Vr8jNTs4zSKoWh/cojqfxUSLOKKk
 buTrtxijEZlyZKaki2UgM/Sgl9hfL10MWtMT6PQWWe/XH1dSpV7Rnt7Ivx2+vyRNjx
 TsMh56AAmelDz4Cia+OjadKa3EqelggrB9LHDdNbYkc/kZLBVpywRXioi/4Dkm7X3E
 NupVyBlAHRPAk3+OZgpKYehnjxuqJI+XfoMw4FJ8pc8vNyt77J8+8//u3JXtE3G97M
 GhyA8iFtBsM+Q==
Date: Thu, 2 Dec 2021 10:00:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v6 5/8] phy: freescale: pcie: Initialize the imx8 pcie
 standalone phy driver
Message-ID: <YahL1TMkt8S0RNX5@matsya>
References: <1637200489-11855-1-git-send-email-hongxing.zhu@nxp.com>
 <1637200489-11855-6-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1637200489-11855-6-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_203020_482058_A88B6A17 
X-CRM114-Status: GOOD (  20.39  )
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

On 18-11-21, 09:54, Richard Zhu wrote:
> Add the standalone i.MX8 PCIe PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> Tested-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  drivers/phy/freescale/Kconfig              |   9 +
>  drivers/phy/freescale/Makefile             |   1 +
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 237 +++++++++++++++++++++
>  3 files changed, 247 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> 
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 320630ffe3cd..e821498b1f7f 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
>  	help
>  	  Enable this to add support for the Mixel DSI PHY as found
>  	  on NXP's i.MX8 family of SOCs.
> +
> +config PHY_FSL_IMX8M_PCIE
> +	tristate "Freescale i.MX8M PCIE PHY"
> +	depends on OF && HAS_IOMEM
> +	select GENERIC_PHY
> +	default ARCH_MXC && ARM64

Why should this be default ? We dont do that for new drivers.. You may
add this to respective config file though...

> +static int imx8_pcie_phy_init(struct phy *phy)
> +{
> +	int ret;
> +	u32 val, pad_mode;
> +	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +	reset_control_assert(imx8_phy->reset);
> +
> +	pad_mode = imx8_phy->refclk_pad_mode;
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
> +	usleep_range(200, 500);
> +
> +

No multi blank line please

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

This does not match the SPDX tag you have given

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
