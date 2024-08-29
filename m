Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A731C8303E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 17:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqjoWeVKUfouGIsUNmgHnCdZsjn3NppzmCa9QKR1lcY=; b=ze3i/p5kb5Idxt
	oZsKb0HjBeQeWyLogjRtejdF6Pyu2Uzy3kQrXNTtztdfUQm1e00um3jZt8tTxi0R8yCbuXuC7T8ry
	BVTFXGy41y5XsAJY0RqDRd/oEI2qd0kjkSrZ+wLLqRIQBcJDWM7PesKT71LN9FxiLXUR/P8ACKaVS
	0eexq6ghqr5J+Qc/Z1LFWbTzl+QLdErgjd/t+EZFOTS+aR2i+lGVuOm2I+Hh/WYedW62cTAptIvco
	JSEISY3XJ5okokasK7E6R2BEJlXlIjif6Lwl24buJxssNGVVrXDPdujKiWghxywH0RNdJdiM4c8DQ
	2opYuyn7f5Rgy8jABwgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjjNT-000000036AJ-3ch2;
	Thu, 29 Aug 2024 17:56:11 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjjNM-0000000368j-22dQ
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 17:56:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 527A5AE0877;
	Thu, 29 Aug 2024 17:55:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C607AC4CEC1;
	Thu, 29 Aug 2024 17:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724954162;
	bh=AdzfqrDZaOuc1QbK407DlhXv2urEHeKQSLxkuHSAl+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XIqUHkZJPj1xXtu1VYJSvObjGnXZK1Diff7LMNqLJRkuL5Pu/JQUPXqeCN9w0li2O
	 krKyBzgqr4stFskXudyP1W+HzV8oSuPM7xrKjapqoIy/kl/xas1VcBRb4y0RoUoSLR
	 wj9b/F6QmTrqUB+HWj3jztGjchvQTip6FQzz3VLUOjxNdHtwIOGSmMNQgy63oisbZq
	 B0bn1vsEw0WXb0yONzBpk4rr5Tajn4oMivKWECfS37TLf8HDacGYSZJTP60ZxuwFcv
	 qrxrwI0d8YJtb9eOQz4aLrFwrO4Uw9FTrur43SQRH41i/5krPX6mLzjHMxwOsHcQzi
	 +EiLem7J77wQg==
Date: Thu, 29 Aug 2024 23:25:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com, festevam@gmail.com, frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC V2 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer divider
Message-ID: <ZtC2LhYAAdPdSRpz@vaman>
References: <20240829021256.787615-1-aford173@gmail.com>
 <20240829021256.787615-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240829021256.787615-2-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_105604_827697_4573E644 
X-CRM114-Status: GOOD (  34.91  )
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

On 28-08-24, 21:12, Adam Ford wrote:
> There is currently a look-up table for a variety of resolutions.
> Since the phy has the ability to dynamically calculate the values
> necessary to use the intger divider which should allow more
> resolutions without having to update the look-up-table.  If the
> integer calculator cannot get an exact frequency, it falls back
> to the look-up-table.  Because the LUT algorithm does some
> rounding, I did not remove integer entries from the LUT.

Any reason why this is RFC?

> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index bc5d3625ece6..76e0899c6006 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -16,6 +16,8 @@
>  
>  #define PHY_REG(reg)		(reg * 4)
>  
> +#define REG01_PMS_P_MASK	GENMASK(3, 0)
> +#define REG03_PMS_S_MASK	GENMASK(7, 4)
>  #define REG12_CK_DIV_MASK	GENMASK(5, 4)
>  #define REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
>  #define REG14_TOL_MASK		GENMASK(7, 4)
> @@ -31,11 +33,17 @@
>  
>  #define PHY_PLL_DIV_REGS_NUM 6
>  
> +#ifndef MHZ
> +#define MHZ	(1000UL * 1000UL)
> +#endif
> +
>  struct phy_config {
>  	u32	pixclk;
>  	u8	pll_div_regs[PHY_PLL_DIV_REGS_NUM];
>  };
>  
> +static struct phy_config custom_phy_pll_cfg;
> +
>  static const struct phy_config phy_pll_cfg[] = {
>  	{
>  		.pixclk = 22250000,
> @@ -440,10 +448,83 @@ fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  	       phy->regs + PHY_REG(14));
>  }
>  
> +static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u16 *m, u8 *s)
> +{
> +	unsigned long best_freq = 0;
> +	u32 min_delta = 0xffffffff;

> +	u8 _p, best_p;
> +	u16 _m, best_m;
> +	u8 _s, best_s;
> +
> +	for (_p = 1; _p <= 11; ++_p) {

starts with 1 to 11.. why?

> +		for (_s = 1; _s <= 16; ++_s) {
> +			u64 tmp;
> +			u32 delta;
> +
> +			/* s must be even */
> +			if (_s > 1 && (_s & 0x01) == 1)
> +				_s++;
> +
> +			/* _s cannot be 14 per the TRM */
> +			if (_s == 14)
> +				continue;
> +
> +			/*
> +			 * TODO: Ref Manual doesn't state the range of _m
> +			 * so this should be further refined if possible.
> +			 * This range was set based on the original values
> +			 * in the look-up table
> +			 */
> +			tmp = (u64)fout * (_p * _s);
> +			do_div(tmp, 24 * MHZ);
> +			_m = tmp;
> +			if (_m < 0x30 || _m > 0x7b)
> +				continue;
> +
> +			/*
> +			 * Rev 2 of the Ref Manual states the
> +			 * VCO can range between 750MHz and
> +			 * 3GHz.  The VCO is assumed to be _m x
> +			 * the reference frequency of 24MHz divided
> +			 * by the prescaler, _p
> +			 */
> +			tmp = (u64)_m * 24 * MHZ;
> +			do_div(tmp, _p);
> +			if (tmp < 750 * MHZ ||
> +			    tmp > 3000 * MHZ)
> +				continue;
> +
> +			tmp = (u64)_m * 24 * MHZ;
> +			do_div(tmp, _p * _s);
> +
> +			delta = abs(fout - tmp);
> +			if (delta < min_delta) {
> +				best_p = _p;
> +				best_s = _s;
> +				best_m = _m;
> +				min_delta = delta;
> +				best_freq = tmp;
> +			}
> +		}
> +	}
> +
> +	if (best_freq) {
> +		*p = best_p;
> +		*m = best_m;
> +		*s = best_s;
> +	}
> +
> +	return best_freq;
> +}
> +
>  static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  					  const struct phy_config *cfg)
>  {
> +	u32 desired_clock = cfg->pixclk * 5;
> +	u32 close_freq;
>  	int i, ret;
> +	u16 m;
> +	u8 p, s;
>  	u8 val;
>  
>  	/* HDMI PHY init */
> @@ -453,11 +534,38 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  	for (i = 0; i < ARRAY_SIZE(common_phy_cfg); i++)
>  		writeb(common_phy_cfg[i].val, phy->regs + common_phy_cfg[i].reg);
>  
> -	/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
> -	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
> -		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
> +	/* Using the PMS calculator alone, determine if can use integer divider */
> +	close_freq = fsl_samsung_hdmi_phy_find_pms(desired_clock, &p, &m, &s);
> +
> +	/* If the clock cannot be configured with integer divder, use the fractional divider */
> +	if (close_freq != desired_clock) {
> +		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: use fractional divider\n");
> +		/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
> +		for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
> +			writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
> +		fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
> +	} else {
> +		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: use integer divider\n");
> +		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: P = %d\n", p);
> +		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: M = %d\n", m);
> +		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: S = %d\n", s);
> +		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: frequency = %u\n", close_freq);
> +
> +		/* Write integer divder values for PMS */
> +		writeb(FIELD_PREP(REG01_PMS_P_MASK, p), phy->regs + PHY_REG(1));
> +		writeb(m, phy->regs + PHY_REG(2));
> +		writeb(FIELD_PREP(REG03_PMS_S_MASK, s-1), phy->regs + PHY_REG(3));
> +
> +		/* Configure PHY to disable fractional divider */
> +		writeb(0x00, phy->regs + PHY_REG(4));
> +		writeb(0x00, phy->regs + PHY_REG(5));
> +		writeb(0x80, phy->regs + PHY_REG(6));
> +		writeb(0x00, phy->regs + PHY_REG(7));
> +
> +		writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, s-1),
> +		       phy->regs + PHY_REG(21));
> +	}
>  
> -	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
>  	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
>  
>  	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));
> @@ -484,8 +592,17 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
>  static long phy_clk_round_rate(struct clk_hw *hw,
>  			       unsigned long rate, unsigned long *parent_rate)
>  {
> +	u32 int_div_clk;
>  	int i;
> +	u16 m;
> +	u8 p, s;
> +
> +	/* If the integer divider works, just use it */
> +	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;
> +	if (int_div_clk == rate)
> +		return int_div_clk;
>  
> +	/* Otherwise, fall back to the LUT */
>  	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
>  		if (phy_pll_cfg[i].pixclk <= rate)
>  			return phy_pll_cfg[i].pixclk;
> @@ -497,16 +614,28 @@ static int phy_clk_set_rate(struct clk_hw *hw,
>  			    unsigned long rate, unsigned long parent_rate)
>  {
>  	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> +	u32 int_div_clk;
>  	int i;
> -
> -	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
> -		if (phy_pll_cfg[i].pixclk <= rate)
> -			break;
> -
> -	if (i < 0)
> -		return -EINVAL;
> -
> -	phy->cur_cfg = &phy_pll_cfg[i];
> +	u16 m;
> +	u8 p, s;
> +
> +	/* If the integer divider works, just use it */
> +	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;
> +	if (int_div_clk == rate) {
> +		/* Just set the pixclk rate, the rest will be calculated */
> +		custom_phy_pll_cfg.pixclk = int_div_clk;
> +		phy->cur_cfg  = &custom_phy_pll_cfg;
> +	} else {
> +		/* Otherwise, search the LUT */
> +		for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
> +			if (phy_pll_cfg[i].pixclk <= rate)
> +				break;
> +
> +		if (i < 0)
> +			return -EINVAL;
> +
> +		phy->cur_cfg = &phy_pll_cfg[i];
> +	}
>  
>  	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
>  }
> -- 
> 2.43.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
