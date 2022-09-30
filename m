Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78BCC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 08:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yBqqtzax97lCl59fi1KGqk9FJc5gKnE6qrZcYJpWGM=; b=rWCDO9GqZlcjyl
	7jSpZopJ2+59Z9pY7w0Qd/+26dCfg6xrqf46SO9WCNVrO6PHEP5sPOzZnuytFC3fc8gV2YAbvB1JP
	UFFxyvyeTzCq4bMS1EKRz6U6gZP8RGi1p/4zjGZTp+jrCPsCFeuqsXwZUv10+GI/h47mtbSPTFVuE
	4zyamUGAPrZEA4ndQjnl+krpWGkF1a3/nAuq9pnGPJqegAjMfCiIwAS5WlFsDCbZR0wTgI7vM1cA5
	QxWynUZeGnIiIgZfOEi1Qys5wx5Y8TWxVu3jOPZLIFlY/ee1KPkGbgCUdXmuSyfdkviJqc2uv+ahd
	05qOTRXyVh8l1i5NIhVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeBfM-0089iH-8R; Fri, 30 Sep 2022 08:46:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeBfJ-0089gW-Sm
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 08:46:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oeBf5-0000eu-W7; Fri, 30 Sep 2022 10:46:24 +0200
Message-ID: <070a4442-6fd0-c63c-65d9-caca18eea20a@pengutronix.de>
Date: Fri, 30 Sep 2022 09:46:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v10 4/4] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY
 support
Content-Language: en-US
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org,
 p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, shawnguo@kernel.org,
 alexander.stein@ew.tq-group.com, marex@denx.de, richard.leitner@linux.dev
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <1664440622-18556-1-git-send-email-hongxing.zhu@nxp.com>
 <1664440622-18556-5-git-send-email-hongxing.zhu@nxp.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <1664440622-18556-5-git-send-email-hongxing.zhu@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_014637_956610_4739048F 
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

Hi,

On 29.09.22 09:37, Richard Zhu wrote:
> Add i.MX8MP PCIe PHY support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index 59b46a4ae069..be5e48864c5a 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -48,6 +48,7 @@
>  
>  enum imx8_pcie_phy_type {
>  	IMX8MM,
> +	IMX8MP,
>  };
>  
>  struct imx8_pcie_phy_drvdata {
> @@ -60,6 +61,7 @@ struct imx8_pcie_phy {
>  	struct clk		*clk;
>  	struct phy		*phy;
>  	struct regmap		*iomuxc_gpr;
> +	struct reset_control	*perst;
>  	struct reset_control	*reset;
>  	u32			refclk_pad_mode;
>  	u32			tx_deemph_gen1;
> @@ -87,6 +89,9 @@ static int imx8_pcie_phy_init(struct phy *phy)
>  			writel(imx8_phy->tx_deemph_gen2,
>  			       imx8_phy->base + PCIE_PHY_TRSV_REG6);
>  		break;
> +	case IMX8MP:
> +		reset_control_assert(imx8_phy->perst);
> +		break;
>  	}
>  
>  	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ||
> @@ -141,6 +146,9 @@ static int imx8_pcie_phy_init(struct phy *phy)
>  			   IMX8MM_GPR_PCIE_CMN_RST);
>  
>  	switch (imx8_phy->drvdata->variant) {
> +	case IMX8MP:
> +		reset_control_deassert(imx8_phy->perst);
> +		fallthrough;
>  	case IMX8MM:
>  		reset_control_deassert(imx8_phy->reset);
>  		usleep_range(200, 500);
> @@ -181,8 +189,14 @@ static const struct imx8_pcie_phy_drvdata imx8mm_drvdata = {
>  	.gpr = "fsl,imx8mm-iomuxc-gpr",
>  };
>  
> +static const struct imx8_pcie_phy_drvdata imx8mp_drvdata = {
> +	.variant = IMX8MP,
> +	.gpr = "fsl,imx8mp-iomuxc-gpr",
> +};
> +
>  static const struct of_device_id imx8_pcie_phy_of_match[] = {
>  	{.compatible = "fsl,imx8mm-pcie-phy", .data = &imx8mm_drvdata, },
> +	{.compatible = "fsl,imx8mp-pcie-phy", .data = &imx8mp_drvdata, },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> @@ -238,6 +252,15 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
>  		return PTR_ERR(imx8_phy->reset);
>  	}
>  
> +	if (imx8_phy->drvdata->variant == IMX8MP) {
> +		imx8_phy->perst =
> +			devm_reset_control_get_exclusive(dev, "perst");
> +		if (IS_ERR(imx8_phy->perst)) {
> +			dev_err(dev, "Failed to get PCIE PHY PERST control\n");
> +			return PTR_ERR(imx8_phy->perst);

Nitpick: dev_err_probe here would be useful if user forgets to
enable PHY driver. Anyways:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> +		}
> +	}
> +
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	imx8_phy->base = devm_ioremap_resource(dev, res);
>  	if (IS_ERR(imx8_phy->base))


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
