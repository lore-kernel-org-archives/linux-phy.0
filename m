Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D84AFA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 11:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joKwwPDEsJZLi0aDl0hnn3K+6oYmpOOIV4UwQtoOYk4=; b=tAjjJG+3XEf+IG
	UANC5Df6ooU0vhOANT+Op4X6u59gjfg0sjgGrId24284ZKAmqy8iiu0DlSDkyxDipl5ol99tC5Rc6
	JCNZfP1wW4l5Im/urhFVON/UHDuTtbLwUIVicReITjfYnCD81ONr9GQFNOY5oGcha7QCRY73HsTY8
	LKvYGjgd5IutT3pvnAE1WYk+yC89SlBi48rJKveSfjmBg3/tK7vrnWSD9r5q1bGLNgL5+d/DWy/5Y
	4DjOL3Ke2Zltx13nS9UVHxzWB8ar83yrCqzy23AyLQcItJ28v1ay0a5LtA3I0LMP7INw6rQocV9A+
	fF9WJc7BeUt7g93uATdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooNkj-00H03g-1x; Fri, 28 Oct 2022 11:42:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooNkg-00H01r-6N
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 11:42:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E1127B829B5;
	Fri, 28 Oct 2022 11:42:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF58DC433C1;
	Fri, 28 Oct 2022 11:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666957334;
	bh=j5oyUBGYEDvyaMjSOM8jXa9mUm9PaDf/2SpF9C28fug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TTE5UUdfIiUDky5NmRxijg+BuPNiIOp9asdTm3Rz6Mup/Loeeliyw4zUzXSH0/ZOb
	 z2JjC28Z5aBJtgkofForKoMLzv8H0lAz+q0+DvUiL9OKt/8kzImY6jMFs+FI1S7uZS
	 mGjMANlZ8Eak2MePpmqKLpKfcpVtvbjPcXmKnI45sVl4QmFpVsBnM0O7+92OFToqWb
	 xhfpvi5j+px/xS/WdWu2DHEPWlwVbJa3llaxgsQgVawHLGGwUI9ebLvsTmkoqMkAH5
	 jNidf/+7fR33jdoaAGygyTBgG6HxWeghuyFsQH2no8IhpKvJcOneG1bNPuKbZCd5FN
	 x4vti3KeUkwQg==
Date: Fri, 28 Oct 2022 17:12:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
	bhelgaas@google.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
	kishon@ti.com, mani@kernel.org, Sergey.Semin@baikalelectronics.ru,
	ffclaire1224@gmail.com, linux-pci@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kthota@nvidia.com,
	mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 08/21] phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE
 in calibration
Message-ID: <Y1vAEh3NRiB5mrM7@matsya>
References: <20221013183854.21087-1-vidyas@nvidia.com>
 <20221013183854.21087-9-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221013183854.21087-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_044218_405560_973869FC 
X-CRM114-Status: GOOD (  18.54  )
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

On 14-10-22, 00:08, Vidya Sagar wrote:
> Set ENABLE_L2_EXIT_RATE_CHANGE register bit to request UPHY PLL rate change
> to Gen1 during initialization. This helps in the below surprise link down
> cases,
>   - Surprise link down happens at Gen3/Gen4 link speed.
>   - Surprise link down happens and external REFCLK is cut off, which causes
> UPHY PLL rate to deviate to an invalid rate.

This looks okay to me and I can go ahead and apply, PCI patches can come
thru PCI tree and whenever ready use .calibrate() ?

> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * Removed "Reported-by: kernel test robot <lkp@intel.com>" based on Bjorn's review comment
> * Reworded the commit message
> 
> V2:
> * Addressed review comment from test bot and Vinod
> 
>  drivers/phy/tegra/phy-tegra194-p2u.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/phy/tegra/phy-tegra194-p2u.c b/drivers/phy/tegra/phy-tegra194-p2u.c
> index 1415ca71de38..633e6b747275 100644
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
> +static int tegra_p2u_calibrate(struct phy *x)
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
