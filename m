Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4564C36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vc5MID7Vi6sKIxtjgMUqc27PQ3ySGWuxmRxMmvez3ow=; b=KvvKaVjKvoXCtV
	ISfYBi+T9XR2HL0otOlcr/cA1Fw1blTCobNeJR++0K473YkBpRoRKgyiT9bZn2IBSjoz2A8fQ4HZF
	BkuK6majrs4Ejemc9fUz/he6rIUT5MaMi0SmFgAFkZGJcqGejg2ERYsuiwT+SxidWgqdLaVvEPpl5
	xnHisvT1ZRSdVzk+PtK0BjhniavwMGTL4m2DoCf/0Beb3SEvJJqzSgoQChhHKkWz+DI5WwgAOouwV
	/8ft0s0bKRvqz5QiQ6ucezngldGXC05shEbfvad6PmE6ChJ8Ef3JiF404j/pMtAP7ML/3wB4r8jZ8
	Qc3pFG2n8+5W0oGwmyhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CYE-0000000DYhp-2L58;
	Fri, 11 Apr 2025 11:28:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CRO-0000000DX4s-2ioH
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 11:20:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E372E5C6889;
	Fri, 11 Apr 2025 11:18:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02767C4CEE2;
	Fri, 11 Apr 2025 11:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744370457;
	bh=EcYG/g8DZi4Q6gr2HP2qs4xQZ+9z5aVwORnINoywG58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SMWg3Bl0WAbkrm9olDCQ76zjOG/UbZQ8tQw4h7dTIFJzz9w7M04BLeKjNWyH2mFBa
	 GmHSog+f6PkiOWjnq9SjJP4jBiiMBHnbNhk0z8n3c8B+fJng+vpyPMCv2R0nqXk40h
	 ldIyU20oTl9kreSWjwd3T12IluKzS9e9tK9I2wr259PSgGj13Zmsc9sVrIus/xTDtl
	 al3296xXsbd9XJzMUGibEjxwBooTtB5VYMnnUC2xmmU2E1exd6gf0saMtPbOgzDN2h
	 aMr6tj9eDKjuKAHItPI7GHHFafvER6DdOV9sQ7Nj3izWvUfmVueeSkNNok1/lmLfvX
	 0nmn/kCgPRZqA==
Date: Fri, 11 Apr 2025 16:50:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: shao.mingyin@zte.com.cn
Cc: miquel.raynal@bootlin.com, jckuo@nvidia.com, kishon@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	linux-tegra@vger.kernel.org, yang.yang29@zte.com.cn,
	xu.xin16@zte.com.cn, ye.xingchen@zte.com.cn, xie.ludan@zte.com.cn
Subject: Re: [PATCH 1/2] phy: =?iso-8859-1?Q?marvel?=
 =?iso-8859-1?Q?l=3A_a3700-comphy=3A_Use=A0devm=5Fplatform=5Fioremap=5Fres?=
 =?iso-8859-1?Q?ource=5Fbyname?=
Message-ID: <Z/j7FWmvhS83FnrA@vaman>
References: <20250401193134281Nbc40spYmxjVmftwF0KTZ@zte.com.cn>
 <20250401193836885cYSO33OlICvYYYmEMlB5J@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250401193836885cYSO33OlICvYYYmEMlB5J@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_042058_776552_F7A9AC53 
X-CRM114-Status: GOOD (  13.74  )
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

On 01-04-25, 19:38, shao.mingyin@zte.com.cn wrote:
> From: Xie Ludan <xie.ludan@zte.com.cn>
> 
> Introduce devm_platform_ioremap_resource_byname() to simplify resource
> retrieval and mapping.This new function consolidates
> platform_get_resource_byname() and devm_ioremap_resource() into
> a single call, improving code readability and reducing API call overhead.
> 
> Signed-off-by: Xie Ludan <xie.ludan@zte.com.cn>
> Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
> ---
>  drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
> index 1d1db1737422..e629a1a73214 100644
> --- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
> +++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
> @@ -1253,26 +1253,20 @@ static int mvebu_a3700_comphy_probe(struct platform_device *pdev)
> 
>  	spin_lock_init(&priv->lock);
> 
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "comphy");

res is unused so this should lead to warnings by this patch, did you at
least compile test it?

> -	priv->comphy_regs = devm_ioremap_resource(&pdev->dev, res);
> +	priv->comphy_regs = devm_platform_ioremap_resource_byname(pdev, "comphy");
>  	if (IS_ERR(priv->comphy_regs))
>  		return PTR_ERR(priv->comphy_regs);
> 
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> -					   "lane1_pcie_gbe");
> -	priv->lane1_phy_regs = devm_ioremap_resource(&pdev->dev, res);
> +	priv->lane1_phy_regs = devm_platform_ioremap_resource_byname(pdev, "lane1_pcie_gbe");
>  	if (IS_ERR(priv->lane1_phy_regs))
>  		return PTR_ERR(priv->lane1_phy_regs);
> 
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> -					   "lane0_usb3_gbe");
> -	priv->lane0_phy_regs = devm_ioremap_resource(&pdev->dev, res);
> +	priv->lane0_phy_regs = devm_platform_ioremap_resource_byname(pdev, "lane0_usb3_gbe");
>  	if (IS_ERR(priv->lane0_phy_regs))
>  		return PTR_ERR(priv->lane0_phy_regs);
> 
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> -					   "lane2_sata_usb3");
> -	priv->lane2_phy_indirect = devm_ioremap_resource(&pdev->dev, res);
> +	priv->lane2_phy_indirect = devm_platform_ioremap_resource_byname(pdev,
> +									 "lane2_sata_usb3");
>  	if (IS_ERR(priv->lane2_phy_indirect))
>  		return PTR_ERR(priv->lane2_phy_indirect);
> 
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
