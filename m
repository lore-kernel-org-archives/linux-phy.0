Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8732C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 16:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foHZqkEu3cEbIJG599CDSCQ4fvt1mQDMZatTOyugsR4=; b=RcyJ1rv62lS7+9
	AP4i2eM+G5rBcv17yc0p+VnxMOcFsrub6c5WnaYJJ3zUut71cogX8sPMVO1mAp9mCAUHhiITa/Bzm
	qRl50oloyNOsfMdgnl7RFLWVvQyQKH+Gi6QBTgI0pLcEEzev1wcx2XQpmeQ+qSLTorhdsIcSbJ8Wr
	BC4qE5rrSBQa6dyW59LiEZup2Gj491ZTOhXdGwDUhKOSjUjmO0SgCYQjh8QFWGu8dAFQ/Fjva/361
	0hiQz/KBnYihEEnIt4hR1kuzWjAwainNNHaF++iQCyinlFTqI108R+91x5YruZMaO6L2Kbrf2p8fn
	GogGY1SSxb3qSxaqWSyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npBNB-00CmAo-21; Thu, 12 May 2022 16:09:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npBN0-00Cm73-0P; Thu, 12 May 2022 16:08:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85395106F;
 Thu, 12 May 2022 09:08:50 -0700 (PDT)
Received: from lpieralisi (unknown [10.57.2.156])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 596513F73D;
 Thu, 12 May 2022 09:08:48 -0700 (PDT)
Date: Thu, 12 May 2022 17:08:45 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: p.zabel@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
 robh@kernel.org, shawnguo@kernel.org, vkoul@kernel.org,
 alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v2 7/7] PCI: imx6: Add the iMX8MP PCIe support
Message-ID: <20220512160845.GB2506@lpieralisi>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <1646644054-24421-8-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1646644054-24421-8-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_090854_168986_8EBAF861 
X-CRM114-Status: GOOD (  20.37  )
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

On Mon, Mar 07, 2022 at 05:07:34PM +0800, Richard Zhu wrote:
> Add the i.MX8MP PCIe support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)

I expect this series will eventually go via the imx6 platform tree.

To avoid you waiting for me when this series is deemed acceptable:

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

I will mark it as "handled elsewhere" in the PCI tree patchwork.

Lorenzo

> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index bb662f90d4f3..4d34f0c88550 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -51,6 +51,7 @@ enum imx6_pcie_variants {
>  	IMX7D,
>  	IMX8MQ,
>  	IMX8MM,
> +	IMX8MP,
>  };
>  
>  #define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
> @@ -379,6 +380,7 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
>  		reset_control_assert(imx6_pcie->pciephy_reset);
>  		fallthrough;
>  	case IMX8MM:
> +	case IMX8MP:
>  		reset_control_assert(imx6_pcie->apps_reset);
>  		break;
>  	case IMX6SX:
> @@ -407,7 +409,8 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
>  static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
>  {
>  	WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ &&
> -		imx6_pcie->drvdata->variant != IMX8MM);
> +		imx6_pcie->drvdata->variant != IMX8MM &&
> +		imx6_pcie->drvdata->variant != IMX8MP);
>  	return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 : IOMUXC_GPR14;
>  }
>  
> @@ -448,6 +451,7 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
>  		break;
>  	case IMX8MM:
>  	case IMX8MQ:
> +	case IMX8MP:
>  		ret = clk_prepare_enable(imx6_pcie->pcie_aux);
>  		if (ret) {
>  			dev_err(dev, "unable to enable pcie_aux clock\n");
> @@ -503,6 +507,7 @@ static int imx6_pcie_clk_enable(struct imx6_pcie *imx6_pcie)
>  
>  	switch (imx6_pcie->drvdata->variant) {
>  	case IMX8MM:
> +	case IMX8MP:
>  		if (phy_power_on(imx6_pcie->phy))
>  			dev_err(dev, "unable to power on PHY\n");
>  		break;
> @@ -603,6 +608,7 @@ static int imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
>  		reset_control_deassert(imx6_pcie->pciephy_reset);
>  		break;
>  	case IMX8MM:
> +	case IMX8MP:
>  		if (phy_init(imx6_pcie->phy))
>  			dev_err(dev, "waiting for phy ready timeout!\n");
>  		break;
> @@ -678,6 +684,7 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
>  {
>  	switch (imx6_pcie->drvdata->variant) {
>  	case IMX8MM:
> +	case IMX8MP:
>  		/*
>  		 * The PHY initialization had been done in the PHY
>  		 * driver, break here directly.
> @@ -823,6 +830,7 @@ static void imx6_pcie_ltssm_enable(struct device *dev)
>  	case IMX7D:
>  	case IMX8MQ:
>  	case IMX8MM:
> +	case IMX8MP:
>  		reset_control_deassert(imx6_pcie->apps_reset);
>  		break;
>  	}
> @@ -938,6 +946,7 @@ static void imx6_pcie_host_exit(struct pcie_port *pp)
>  		imx6_pcie_clk_disable(imx6_pcie);
>  		switch (imx6_pcie->drvdata->variant) {
>  		case IMX8MM:
> +		case IMX8MP:
>  			if (phy_power_off(imx6_pcie->phy))
>  				dev_err(dev, "unable to power off phy\n");
>  			phy_exit(imx6_pcie->phy);
> @@ -972,6 +981,7 @@ static void imx6_pcie_ltssm_disable(struct device *dev)
>  		break;
>  	case IMX7D:
>  	case IMX8MM:
> +	case IMX8MP:
>  		reset_control_assert(imx6_pcie->apps_reset);
>  		break;
>  	default:
> @@ -1028,6 +1038,7 @@ static int imx6_pcie_suspend_noirq(struct device *dev)
>  	imx6_pcie_clk_disable(imx6_pcie);
>  	switch (imx6_pcie->drvdata->variant) {
>  	case IMX8MM:
> +	case IMX8MP:
>  		if (phy_power_off(imx6_pcie->phy))
>  			dev_err(dev, "unable to power off PHY\n");
>  		phy_exit(imx6_pcie->phy);
> @@ -1177,6 +1188,7 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>  		}
>  		break;
>  	case IMX8MM:
> +	case IMX8MP:
>  		imx6_pcie->pcie_aux = devm_clk_get(dev, "pcie_aux");
>  		if (IS_ERR(imx6_pcie->pcie_aux))
>  			return dev_err_probe(dev, PTR_ERR(imx6_pcie->pcie_aux),
> @@ -1327,6 +1339,10 @@ static const struct imx6_pcie_drvdata drvdata[] = {
>  		.variant = IMX8MM,
>  		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
>  	},
> +	[IMX8MP] = {
> +		.variant = IMX8MP,
> +		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> +	},
>  };
>  
>  static const struct of_device_id imx6_pcie_of_match[] = {
> @@ -1336,6 +1352,7 @@ static const struct of_device_id imx6_pcie_of_match[] = {
>  	{ .compatible = "fsl,imx7d-pcie",  .data = &drvdata[IMX7D],  },
>  	{ .compatible = "fsl,imx8mq-pcie", .data = &drvdata[IMX8MQ], },
>  	{ .compatible = "fsl,imx8mm-pcie", .data = &drvdata[IMX8MM], },
> +	{ .compatible = "fsl,imx8mp-pcie", .data = &drvdata[IMX8MP], },
>  	{},
>  };
>  
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
