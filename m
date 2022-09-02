Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B21DBECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=oxG/0pEmosrv1F76iYZqh+SyuO86TsKVgfSAGPqIsJg=; b=ljZJQMTGOLDDb6
	J4+aQVdV4uyMsDaBXmjTsl6lKWKvt7i1LNoZ//0ZYXnNP5VY346fJ/4W7Byy+nhvKNfDSezhK690d
	WNyGU+gD6s1Lc5MvsU3RqttQDdchTq7/v5Ec4g6MQ4sNmvn1sT6WyJHqZ47HTAayz2kgKHSkdba2K
	J/npm0mwdmETcicBGsDivSg1XVyq2zCjTXYO8VXbmp7dWGR8mElHx3qkuLj5/EaO2SCjlSWV8p8K4
	TZsZnoZdOhxn/iAcRglZLlAsxla2fJvC7meUheO2iyTQOIpIJjTSrH0DDXeNR5Zkt1On6YsI4jy/g
	Usn2xHvSSVYSSObhDNzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUA6R-007ebu-V9; Fri, 02 Sep 2022 17:05:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUA6B-007eIo-6y; Fri, 02 Sep 2022 17:04:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4B9A1621AA;
	Fri,  2 Sep 2022 17:04:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE77C433C1;
	Fri,  2 Sep 2022 17:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662138291;
	bh=lAxIv2QfUf2l3nKsqdu22JAcrnIgJ48N3jh5vnIFQzc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=PRpPlEAS+vV10WkjFd2TH3iPGH/W+xDWHqXVC9AXUx6z6Y1sDQ3leqzZAC3t60T7l
	 uqeZ/8qorvgJhSS1r8iQqv1WAersSU+3+BYJLz3uP0Ni+YHlTM6qI3dcoxiZLbIOSM
	 iftOWO8qkp2Sg2Hrs6v3wS6MqdwqRlEJAUQ/NBQZQsXGIAKEstjDuhOAvM+PJjQuB+
	 9cL8+MU9v8qi1FSVt3biWE7zzO2Yxv+qLsBb85UAD9wFcAvzvAn92+Fxjs44/unia9
	 L1yjEHFmn1+j/5k6ovZp0Wd2hjaV+FowWP154owJUEYyK6M6Yj3T/G3MoVIH/CmW+l
	 Y9MvqPRcxOZ7A==
Date: Fri, 2 Sep 2022 12:04:49 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: a.fatoum@pengutronix.de, l.stach@pengutronix.de, bhelgaas@google.com,
	lorenzo.pieralisi@arm.com, vkoul@kernel.org,
	marcel.ziswiler@toradex.com, kishon@ti.com,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v2] phy: freescale: imx8m-pcie: Fix the wrong order of
 phy_init() and phy_power_on()
Message-ID: <20220902170449.GA354728@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1661928956-12727-1-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_100455_360289_D376A16F 
X-CRM114-Status: GOOD (  22.74  )
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

On Wed, Aug 31, 2022 at 02:55:56PM +0800, Richard Zhu wrote:
> Refer to phy_core driver, phy_init() must be called before phy_power_on().
> Fix the wrong order of phy_init() and phy_power_on() here.

> Squash the changes into one patch to avoid the possible bi-section hole.

Avoiding bisection holes goes without saying, so I don't think we need
to even mention it ;)

> Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

I propose merging this via PCI, since I suspect pci-imx6.c is more
active than phy-fsl-imx8m-pcie.c.

Vinod, if you agree, I'm sure Lorenzo will look for your ack.

> ---
>  drivers/pci/controller/dwc/pci-imx6.c      | 6 +++---
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 8 ++++----
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
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
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
