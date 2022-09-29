Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81485C07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 08:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKuLzUY8qotb3f0HH6bcHS4apROM+jbnS938mcGMErk=; b=eeo6VPaJQx5ghN
	n04r4bt3dIxr0NCiv3BzzEbV/mpogr/tO6z+Z5PS0O5MGB7cJeEGLVEJb1aOeGEWVNlPWinZJNd86
	Bzn/skIcP5Bymp6m8LvMqMdEXNVUl58HouRsIQfFG0nYqf+M1NFHnt+EkZWu1VhPQsU43sY9yo1PX
	7+qPqsoRx7HFfumqgdKXuOXTvJlkZv4TMEo8e7WOExKFcoooLYW72E/NoTCtvvnL2ZfQaUb3PkjMw
	7gokq2jYStkZERtCI0tAUw0hmWY/tBckIELpBuRMeL0PSDgBVDH8Xr+1IsS9kKjMPAw7GumyDtVi5
	ugbL6vaYXE0NZebYbyLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odpMU-001wHy-Tc; Thu, 29 Sep 2022 08:57:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odpLx-001w2F-OT; Thu, 29 Sep 2022 08:57:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 16D47B823C1;
	Thu, 29 Sep 2022 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68BC2C433D6;
	Thu, 29 Sep 2022 08:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664441826;
	bh=AB9OBY5Q/XflWMZEjGozmUCmyCSOHdzr9/Xwke2HRv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dffSs2Rj/KWFa80GhJnSSBe+iznLMBr3NPAxLCx0A1gjoxQlImpAsZnx1j5w9b40F
	 Eph18owQWi1Bxcge1T8ZNkpQphOqefizXcurvioFIbQH6Odqc9ggdpRUs57XcdtDb5
	 aM6aNtHoASOVZPgz5/ZmXjtXTlH8VV/oUN+fyjtcNz8yGMfJG2m0lnPRyhzAwvfrd6
	 Ez7/R1bUz+jaTTtueRhwBJRWoCa3MaAfedfpgyPdIEyShPScOTTBk4XPtnp3lUVjET
	 dhgg388O4vhnFwSAIs8BeLkBgeQoMnUj4H0M8BxXkapEeRSEaSVcgGQg8cdIN125wW
	 FL4gowVrJL4PA==
Date: Thu, 29 Sep 2022 10:57:00 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: a.fatoum@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, vkoul@kernel.org,
	marcel.ziswiler@toradex.com, kishon@ti.com,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v3] phy: freescale: imx8m-pcie: Fix the wrong order of
 phy_init() and phy_power_on()
Message-ID: <YzVd3GAtpd0ipMAu@lpieralisi>
References: <1662344583-18874-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662344583-18874-1-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_015710_130280_D8733A39 
X-CRM114-Status: GOOD (  20.57  )
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

On Mon, Sep 05, 2022 at 10:23:03AM +0800, Richard Zhu wrote:
> Refer to phy_core driver, phy_init() must be called before phy_power_on().
> Fix the wrong order of phy_init() and phy_power_on() here.
> 
> Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Acked-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c      | 6 +++---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 8 ++++----
>  2 files changed, 7 insertions(+), 7 deletions(-)

Who is picking this up ? I believe this is supposed to
go via the PHY tree, so:

Acked-by: Lorenzo Pieralisi <lpieralisi@kernel.org>

> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 6e5debdbc55b..b5f0de455a7b 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -935,7 +935,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
>  	}
>  
>  	if (imx6_pcie->phy) {
> -		ret = phy_power_on(imx6_pcie->phy);
> +		ret = phy_init(imx6_pcie->phy);
>  		if (ret) {
>  			dev_err(dev, "pcie PHY power up failed\n");
>  			goto err_clk_disable;
> @@ -949,7 +949,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
>  	}
>  
>  	if (imx6_pcie->phy) {
> -		ret = phy_init(imx6_pcie->phy);
> +		ret = phy_power_on(imx6_pcie->phy);
>  		if (ret) {
>  			dev_err(dev, "waiting for PHY ready timeout!\n");
>  			goto err_phy_off;
> @@ -961,7 +961,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  err_phy_off:
>  	if (imx6_pcie->phy)
> -		phy_power_off(imx6_pcie->phy);
> +		phy_exit(imx6_pcie->phy);
>  err_clk_disable:
>  	imx6_pcie_clk_disable(imx6_pcie);
>  err_reg_disable:
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index ad7d2edfc414..c93286483b42 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -59,7 +59,7 @@ struct imx8_pcie_phy {
>  	bool			clkreq_unused;
>  };
>  
> -static int imx8_pcie_phy_init(struct phy *phy)
> +static int imx8_pcie_phy_power_on(struct phy *phy)
>  {
>  	int ret;
>  	u32 val, pad_mode;
> @@ -137,14 +137,14 @@ static int imx8_pcie_phy_init(struct phy *phy)
>  	return ret;
>  }
>  
> -static int imx8_pcie_phy_power_on(struct phy *phy)
> +static int imx8_pcie_phy_init(struct phy *phy)
>  {
>  	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
>  
>  	return clk_prepare_enable(imx8_phy->clk);
>  }
>  
> -static int imx8_pcie_phy_power_off(struct phy *phy)
> +static int imx8_pcie_phy_exit(struct phy *phy)
>  {
>  	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
>  
> @@ -155,8 +155,8 @@ static int imx8_pcie_phy_power_off(struct phy *phy)
>  
>  static const struct phy_ops imx8_pcie_phy_ops = {
>  	.init		= imx8_pcie_phy_init,
> +	.exit		= imx8_pcie_phy_exit,
>  	.power_on	= imx8_pcie_phy_power_on,
> -	.power_off	= imx8_pcie_phy_power_off,
>  	.owner		= THIS_MODULE,
>  };
>  
> -- 
> 2.25.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
