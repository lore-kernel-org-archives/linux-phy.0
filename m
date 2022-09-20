Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17E50C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JSg9wbkdrxWdXKGK1rEVV9Wd+mP0q3JuFu/xkMJ6iE=; b=39+njg3eoWTy46
	ko3n2fod9AUc5QxSAK7FSRBAi/QOP3hhTs7CxvxpLW8b4R8g4oO6clMWF8h1Q/8WsTWGnFly1VjYI
	IdV8aiCRrMWEWBUSGayn6m+0+pXgrEAGGp1dZ/mTMH1r8SeW+Q0yjCSyxTarwCnhibRISg7XuUPmH
	eQ/wtawTaG5tt3BhBjeE5wWE0Dd+2cP4TT/N1e3+vGzy5yAPs6bhu1qeVvvbo0ly/xWrjyTOYggLq
	o84R2J1PyZ8bFGaMXydhg/DDAeyREej4oH6fS14MgFoWcUv1GQejxA013BHZIrQ3N3ciapBZzhA3h
	50iOaZnuji0rgBoeAWhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWU3-000ugl-BP; Tue, 20 Sep 2022 06:11:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWU0-000ufj-4h
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:11:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C42B8B8246D;
	Tue, 20 Sep 2022 06:11:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB181C433C1;
	Tue, 20 Sep 2022 06:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654305;
	bh=NuFw7uED7Nut4KOkUsKsKxYCFbmw1Pj9smtOuX/NV5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sJ/P2SXqcLyeBHY3+xxuhckYc5Q5wc31re0TfJgTYhh/XxK6AYmDtnQmvy8jjgrrq
	 KE2B0Z9zUk1lwISuJnYeVhkhfvShg5Zy+sLLC9/fNmoMG9HuxbkMLGyuM7IL0IJ+vT
	 HqAa4AYUFX/T5UATTw50dGM6Xkkh+3oXIAv38wgCY6c5QPYajL0vl7XgTudNLNUhAF
	 7qrMr2OgZz5EupI66zkwli4u4OarQTHNaz7x5rmJyI/tYjKfzO3RYhvkR70D4BWjbz
	 bwWXRYD9tfYzK7vy/S3E3fKQqPv4qDdXmCai7+e+Xaq55+fN0OLrvKVShXlsi/gNEw
	 Moi5LGimzIuqQ==
Date: Tue, 20 Sep 2022 11:41:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
	bhelgaas@google.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
	kishon@ti.com, mani@kernel.org, Sergey.Semin@baikalelectronics.ru,
	ffclaire1224@gmail.com, linux-pci@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kthota@nvidia.com,
	mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V1 8/9] phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE
 in calibration
Message-ID: <YylZnfan61xlXFWb@matsya>
References: <20220919143627.13803-1-vidyas@nvidia.com>
 <20220919143627.13803-9-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220919143627.13803-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_231148_343554_6C79AA44 
X-CRM114-Status: GOOD (  18.45  )
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

On 19-09-22, 20:06, Vidya Sagar wrote:
> Set ENABLE_L2_EXIT_RATE_CHANGE to request UPHY PLL rate change to Gen1
> during initialization. This helps in the below surprise down cases,
>   - Surprise down happens at Gen3/Gen4 link speed
>   - Surprise down happens and external REFCLK is cut off which causes
> UPHY PLL rate to deviate to an invalid rate
> 
> ENABLE_L2_EXIT_RATE_CHANGE needs to be set to bring the UPHY PLL rate
> back to Gen1 during controller initialization for the link up.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  drivers/phy/tegra/phy-tegra194-p2u.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/phy/tegra/phy-tegra194-p2u.c b/drivers/phy/tegra/phy-tegra194-p2u.c
> index 1415ca71de38..fb710e89acac 100644
> --- a/drivers/phy/tegra/phy-tegra194-p2u.c
> +++ b/drivers/phy/tegra/phy-tegra194-p2u.c
> @@ -15,6 +15,7 @@
>  #include <linux/phy/phy.h>
>  
>  #define P2U_CONTROL_CMN			0x74
> +#define P2U_CONTROL_CMN_ENABLE_L2_EXIT_RATE_CHANGE		BIT(13)
>  #define P2U_CONTROL_CMN_SKP_SIZE_PROTECTION_EN			BIT(20)
>  
>  #define P2U_PERIODIC_EQ_CTRL_GEN3	0xc0
> @@ -85,8 +86,21 @@ static int tegra_p2u_power_on(struct phy *x)
>  	return 0;
>  }
>  
> +int tegra_p2u_calibrate(struct phy *x)

why not static?

> +{
> +	struct tegra_p2u *phy = phy_get_drvdata(x);
> +	u32 val;
> +
> +	val = p2u_readl(phy, P2U_CONTROL_CMN);
> +	val |= P2U_CONTROL_CMN_ENABLE_L2_EXIT_RATE_CHANGE;
> +	p2u_writel(phy, val, P2U_CONTROL_CMN);
> +
> +	return 0;
> +}
> +
>  static const struct phy_ops ops = {
>  	.power_on = tegra_p2u_power_on,
> +	.calibrate = tegra_p2u_calibrate,
>  	.owner = THIS_MODULE,
>  };
>  
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
