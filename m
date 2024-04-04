Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17A96CD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 19:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLCw3oQnlWxpu731Zcp4wd9dZWqk2WMgulvODN6fxWk=; b=R6UWImzDAoqsn6
	ppD9UKIUIQcGqCvS7epABH5AKaPsz4kkD0oM2NUdmE361Bs6C68rGP0rIdR6pGztuyKccHsWnVWsk
	R5aVfbqIcVRetAUJeeGu0C4wDsM2QrHas5utcq3nfuKrdIM/yRPKGDIxMAYpF4Ncq3te0ZU1cJC9l
	8iP2lu7B4SqNpT8zi00Fhjc942sYjGu2f9ARgd++WyexNWB+0igJKyFyLVT9c7sY7WsYM2L18obty
	f8FA0HF1nkkqqmanJkRfTzKq34HoU8yiToHTKiysCLqrb1ib8VIwSH17dOv9VO1mxUFsD1GyF0/G3
	PkT1afrzYGc4To2bxmuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSvD-000000044yD-1drQ;
	Thu, 04 Apr 2024 19:38:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSvA-000000044x9-1I5w;
	Thu, 04 Apr 2024 19:38:49 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rsSv3-0005Tv-Jj; Thu, 04 Apr 2024 21:38:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sre@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Michal Tomek <mtdev79b@gmail.com>,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/3] phy: rockchip-snps-pcie3: fix bifurcation on rk3588
Date: Thu, 04 Apr 2024 21:38:40 +0200
Message-ID: <2501840.irdbgypaU6@phil>
In-Reply-To: <20240404-rk3588-pcie-bifurcation-fixes-v1-1-9907136eeafd@kernel.org>
References: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
 <20240404-rk3588-pcie-bifurcation-fixes-v1-1-9907136eeafd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_123848_386083_A0F557ED 
X-CRM114-Status: GOOD (  25.15  )
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

Am Donnerstag, 4. April 2024, 19:11:26 CEST schrieb Sebastian Reichel:
> From: Michal Tomek <mtdev79b@gmail.com>
> 
> So far all RK3588 boards use fully aggregated PCIe. CM3588 is one
> of the few boards using this feature and apparently it is broken.
> 
> The PHY offers the following mapping options:
> 
>   port 0 lane 0 - always mapped to controller 0 (4L)
>   port 0 lane 1 - to controller 0 or 2 (1L0)
>   port 1 lane 0 - to controller 0 or 1 (2L)
>   port 1 lane 1 - to controller 0, 1 or 3 (1L1)
> 
> The data-lanes DT property maps these as follows:
> 
>   0 = no controller (unsupported by the HW)
>   1 = 4L
>   2 = 2L
>   3 = 1L0
>   4 = 1L1
> 
> That allows the following configurations with first column being the
> mainline data-lane mapping, second column being the downstream name,
> third column being PCIE3PHY_GRF_CMN_CON0 and PHP_GRF_PCIESEL register
> values and final column being the user visible lane setup:
> 
>   <1 1 1 1> = AGGREG = [4 0] = x4 (aggregation)
>   <1 1 2 2> = NANBNB = [0 0] = x2 x2 (no bif.)
>   <1 3 2 2> = NANBBI = [1 1] = x2 x1x1 (bif. of port 0)
>   <1 1 2 4> = NABINB = [2 2] = x1x1 x2 (bif. of port 1)
>   <1 3 2 4> = NABIBI = [3 3] = x1x1 x1x1 (bif. of both ports)
> 
> The driver currently does not program PHP_GRF_PCIESEL correctly, which
> is fixed by this patch. As a side-effect the new logic is much simpler
> than the old logic.
> 
> Fixes: 2e9bffc4f713 ("phy: rockchip: Support PCIe v3")
> Signed-off-by: Michal Tomek <mtdev79b@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> index 121e5961ce11..d5bcc9c42b28 100644
> --- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> +++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
> @@ -132,7 +132,7 @@ static const struct rockchip_p3phy_ops rk3568_ops = {
>  static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
>  {
>  	u32 reg = 0;
> -	u8 mode = 0;
> +	u8 mode = RK3588_LANE_AGGREGATION; /* default */
>  	int ret;
>  
>  	/* Deassert PCIe PMA output clamp mode */
> @@ -140,28 +140,20 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
>  
>  	/* Set bifurcation if needed */
>  	for (int i = 0; i < priv->num_lanes; i++) {
> -		if (!priv->lanes[i])
> -			mode |= (BIT(i) << 3);
> -
>  		if (priv->lanes[i] > 1)
> -			mode |= (BIT(i) >> 1);
> -	}
> -
> -	if (!mode)
> -		reg = RK3588_LANE_AGGREGATION;
> -	else {
> -		if (mode & (BIT(0) | BIT(1)))
> -			reg |= RK3588_BIFURCATION_LANE_0_1;
> -
> -		if (mode & (BIT(2) | BIT(3)))
> -			reg |= RK3588_BIFURCATION_LANE_2_3;
> +			mode &= ~RK3588_LANE_AGGREGATION;
> +		if (priv->lanes[i] == 3)
> +			mode |= RK3588_BIFURCATION_LANE_0_1;
> +		if (priv->lanes[i] == 4)
> +			mode |= RK3588_BIFURCATION_LANE_2_3;
>  	}
>  
> +	reg = mode;
>  	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, (0x7<<16) | reg);

nit: instead of doing reg=mode, why not use mode directly?
i.e. (0x7<<16) | mode in the regmap_write call

other than that
Acked-by: Heiko Stuebner <heiko@sntech.de>

>  
>  	/* Set pcie1ln_sel in PHP_GRF_PCIESEL_CON */
>  	if (!IS_ERR(priv->pipe_grf)) {
> -		reg = (mode & (BIT(6) | BIT(7))) >> 6;
> +		reg = mode & 3;
>  		if (reg)
>  			regmap_write(priv->pipe_grf, PHP_GRF_PCIESEL_CON,
>  				     (reg << 16) | reg);
> 
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
