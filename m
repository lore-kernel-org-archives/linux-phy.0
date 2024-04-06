Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E58DCD128A
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 06:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2rsD22gwCzDx2yNIDkzFPDbabRPtTiYTjJ3zCjS6bo=; b=PBJ3X3T9LrcA1v
	Cgf6WKo2N5oDuNwQHn8gvNisTa76eNx+0p5plxDJBKWqhYC/HJP5PVeyytUPE91S/5sgZKx8T/GHx
	ex2djwKDnuIbX5PfdIvIbY9hAK2quQMsRIp9jnS7ZVjWoMR+YRr7dRRAGOUvu2Euj1VHk9nnUSj1h
	I897gHt64T7z15i0KdfcG1rDLDD6e5trOBgTrhl8ov2OHwq7x6YDqyAhCxFNC1UvDqcHh6/Rv1USe
	Yhr4e4BrDW0lD5ImSYMLQ1FNELCkBC7AkS1LudYbJjRKYp1FbDrm/c/hU49CYYX0wAz/XvYl+gOur
	/87EYPEa418vjarfrHTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszXh-00000009nef-2nvB;
	Sat, 06 Apr 2024 06:28:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszXd-00000009nd0-3Xrr;
	Sat, 06 Apr 2024 06:28:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 84D7FCE1378;
	Sat,  6 Apr 2024 06:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B22BC433C7;
	Sat,  6 Apr 2024 06:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712384915;
	bh=7/bYiwPy5DVoN65zNqAT7YHPjjFt5UCoXl4SUW2wvaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BLOSuIiosYM2nz9esvvTihiOhjk7oOlq2vR96fPttQj3cdcavXpNGAA4omLq//N1L
	 gNAziXwSF/do3XOsi7gWj0+XY6894daboMcv+5HiBDR7S/ZqNcFxbh05M/n+4I6yHe
	 0t2GI+yOrw1Uc8VBrR7JoCYgEqK4pFUhQsfdSw71rqaVCpk7nAjDlc7mOthe2cvhh2
	 Dnb47WUTjX2ECTj/DdmQ639d7csySmHHWTOLcIuYauwThtLNhvDlK4bQhYf/4GQ+Kh
	 JIry2zTzR+voLYowydTe9cwdaWbzSetLaGaU/Lbp7Yqf6JOjIe3ik3QThE6KU/lm6V
	 o5CxOvGDyHBhg==
Date: Sat, 6 Apr 2024 11:58:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>, linux-kernel@vger.kernel.org,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
	Yang Li <yang.lee@linux.alibaba.com>, imx@lists.linux.dev
Subject: Re: [PATCH v1 1/1] phy: freescale: imx8m-pcie: fix pcie link-up
 instability
Message-ID: <ZhDrjzNn5qxzXHiD@matsya>
References: <20240322130646.1016630-1-marcel@ziswiler.com>
 <20240322130646.1016630-2-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240322130646.1016630-2-marcel@ziswiler.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_232842_081820_2467B41C 
X-CRM114-Status: GOOD (  14.83  )
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

On 22-03-24, 14:06, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Leaving AUX_PLL_REFCLK_SEL at its reset default of AUX_IN (PLL clock)
> proves to be more stable on the i.MX 8M Mini.
> 
> Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
> 

Please dont keep an empty line b/w Fixes and s-o-b line...

> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> ---
> 
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index b700f52b7b67..11fcb1867118 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -110,8 +110,10 @@ static int imx8_pcie_phy_power_on(struct phy *phy)
>  		/* Source clock from SoC internal PLL */
>  		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
>  		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
> -		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> -		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
> +		if (imx8_phy->drvdata->variant != IMX8MM) {
> +			writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> +			       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
> +		}
>  		val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
>  		writel(val | ANA_AUX_RX_TERM_GND_EN,
>  		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
> --
> 2.44.0
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
