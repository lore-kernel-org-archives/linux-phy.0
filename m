Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B076C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 08:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7j1lM2/6ZwqFm/Q0NZIgeb/USZLV7XR4pPrfoecKi8=; b=YpX/kqDPzPSe2U
	YckKTLYlNhVqW9rnKRLBOdb8GWQj+6cFx0M1b7f/SPKU7If+ZUhAevNydwbsF4N6/qjVFxD1bUXyG
	SOVPEWKJURJeXfV/8zyYonDsxpXaTBH575yx8GuTih+Y0ZjLxCKNuRK255VwHfQucrfuxGj2BqZz5
	G+FHW7kcKbYBy4jrI5taJwr1q2LnBC7BWnP5Nl0YqdaO2Yx2ayfN4DTvkq9CdtWfHKXM5qU9KEppA
	SIQF8+XzpgrqXg/NiLPtOo57qMXSaEx5ZC2as+s9pb63ydzGEancN+usa7HgQ5820TazP4GYRPcMy
	K5E1vexInEvZ8weE+kEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeBOi-0084Aa-LN; Fri, 30 Sep 2022 08:29:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeBOe-00848S-W8
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 08:29:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oeBON-0006P2-Jj; Fri, 30 Sep 2022 10:29:07 +0200
Message-ID: <0017a1b1-f932-7bb3-7d00-a139bd4cc98d@pengutronix.de>
Date: Fri, 30 Sep 2022 09:28:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH v10 3/4] phy: freescale: imx8m-pcie: Refine i.MX8MM PCIe
 PHY driver
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org,
 p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, shawnguo@kernel.org,
 alexander.stein@ew.tq-group.com, marex@denx.de, richard.leitner@linux.dev
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <1664440622-18556-1-git-send-email-hongxing.zhu@nxp.com>
 <1664440622-18556-4-git-send-email-hongxing.zhu@nxp.com>
Content-Language: en-US
In-Reply-To: <1664440622-18556-4-git-send-email-hongxing.zhu@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_012925_066505_50AAC92D 
X-CRM114-Status: GOOD (  23.50  )
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

On 29.09.22 09:37, Richard Zhu wrote:
> To make it more flexible and easy to expand. Refine i.MX8MM PCIe PHY
> driver.
> - Use gpr compatible string to avoid the codes duplications when add
>   another platform PCIe PHY support.
> - Re-orange the codes to let it more flexible and easy to expand.

Re-arrange

> No functions changes basicly.

No functional change.

> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 106 +++++++++++++--------
>  1 file changed, 66 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index 2377ed307b53..59b46a4ae069 100644
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

Better do indentation on the member name.

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

If you say no functional change intended, I'd expect that register
writes happen in the same sequence. It might be ok, that you do
this tuning here, but I think it warrants a mention in the commit
message why it's ok.


Looks good otherwise. With nitpicks addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
