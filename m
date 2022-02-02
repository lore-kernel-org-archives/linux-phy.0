Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C27ECC433FE
	for <linux-phy@archiver.kernel.org>; Wed,  2 Feb 2022 14:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ixpulJSNHFOyb1oBdn/peupXW/b7mjeU23UbcypR1E=; b=LdK7WGr7h6QAon
	NJoWStRp7AA6f/26YMiaaIMljHTDXbjHHkl5UoswIPCFPTAmJBUmsnAQUhKjD8qB0v0i85Zsn6WKW
	PqRZv4ou9lKfpYa/dcdTmze9LzLuNiLu/s+hE5s3W3pgw1QHXnXlCf+2VrHd67DOLCci0+itLdlEX
	TiACqYVXt5Q5MQsx47yfFza/UvX0yQi+uSKfnk5UsBOQu0Pmv2pZgDThTAQAc9W0Y1Zlc6NZQtknC
	2guamsu9jQAvv/QBP/NIDaxUCDWZ47BGd8kIY+rs2rO41YS3HgXVx4XhQk9WdbWpjVn5ett95aqw4
	Zyz4Q7x+pZL/+Prl2uTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFGYd-00FfAY-1G; Wed, 02 Feb 2022 14:24:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFGXp-00Fent-Ls
 for linux-phy@lists.infradead.org; Wed, 02 Feb 2022 14:23:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CC2B46188F;
 Wed,  2 Feb 2022 14:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7D83C340F1;
 Wed,  2 Feb 2022 14:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643811816;
 bh=yRW7aX34kBy09ULJ1/57Oop+qYUD05uihoxV2PwjzCk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nJ/wiMlq782maSD9+LqnMN/rpqkmPd0iECS++9E1GVo/w6cswSDacj9WjYmdJoj9f
 naI5Q2e0GvQCODbf4m+Yf1f1nspMYX5MXt660E0uV8ZlWPEMrRV/hqTatCIn7eJs5Y
 P3MvZN/7HIiU+arYvoC6p0G2jGxOkOzWBVXIgclIy0jCfCb9gi2+lqUXEdfbnroKAW
 MfqQCpxl8VJntCR4M5jlUyjkJweyiBS7ifw4mHvaA/U7wC5gjxFUFtpZShImrdWxy/
 gEcWa8qvsKE10HLFEPXFWjY/A/P4aQDgXlBEfHCx/7CwcMuxFLSMf5wRX5+QOUCxTg
 JXkjce8FG0zFA==
Date: Wed, 2 Feb 2022 19:53:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add support for skipping
 configuration
Message-ID: <YfqT444YoGBIturt@matsya>
References: <20220128072642.29188-1-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128072642.29188-1-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_062337_869547_3E18054B 
X-CRM114-Status: GOOD (  28.95  )
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

On 28-01-22, 12:56, Aswath Govindraju wrote:
> In some cases, a single SerDes instance can be shared between two different
> processors, each using a separate link. In these cases, the SerDes
> configuration is done in an earlier boot stage. Therefore, add support to
> skip reconfiguring, if it is was already configured beforehand.

This fails to apply, pls rebase and resend

> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
> 
> Changes since v1:
> - Removed redundant braces
> - Corrected the logic for skipping multilink configuration
> - Corrected the order in failure path
> 
>  drivers/phy/cadence/phy-cadence-sierra.c | 82 ++++++++++++++++--------
>  1 file changed, 57 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
> index e265647e29a2..6b917f7bddbe 100644
> --- a/drivers/phy/cadence/phy-cadence-sierra.c
> +++ b/drivers/phy/cadence/phy-cadence-sierra.c
> @@ -370,6 +370,7 @@ struct cdns_sierra_phy {
>  	int nsubnodes;
>  	u32 num_lanes;
>  	bool autoconf;
> +	int already_configured;
>  	struct clk_onecell_data clk_data;
>  	struct clk *output_clks[CDNS_SIERRA_OUTPUT_CLOCKS];
>  };
> @@ -517,7 +518,7 @@ static int cdns_sierra_phy_init(struct phy *gphy)
>  	int i, j;
>  
>  	/* Initialise the PHY registers, unless auto configured */
> -	if (phy->autoconf || phy->nsubnodes > 1)
> +	if (phy->autoconf || phy->already_configured || phy->nsubnodes > 1)
>  		return 0;
>  
>  	clk_set_rate(phy->input_clks[CMN_REFCLK_DIG_DIV], 25000000);
> @@ -646,6 +647,18 @@ static const struct phy_ops ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static int cdns_sierra_noop_phy_on(struct phy *gphy)
> +{
> +	usleep_range(5000, 10000);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops noop_ops = {
> +	.power_on	= cdns_sierra_noop_phy_on,
> +	.owner		= THIS_MODULE,
> +};
> +
>  static u8 cdns_sierra_pll_mux_get_parent(struct clk_hw *hw)
>  {
>  	struct cdns_sierra_pll_mux *mux = to_cdns_sierra_pll_mux(hw);
> @@ -1118,13 +1131,6 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
>  	struct clk *clk;
>  	int ret;
>  
> -	clk = devm_clk_get_optional(dev, "phy_clk");
> -	if (IS_ERR(clk)) {
> -		dev_err(dev, "failed to get clock phy_clk\n");
> -		return PTR_ERR(clk);
> -	}
> -	sp->input_clks[PHY_CLK] = clk;
> -
>  	clk = devm_clk_get_optional(dev, "cmn_refclk_dig_div");
>  	if (IS_ERR(clk)) {
>  		dev_err(dev, "cmn_refclk_dig_div clock not found\n");
> @@ -1160,17 +1166,33 @@ static int cdns_sierra_phy_get_clocks(struct cdns_sierra_phy *sp,
>  	return 0;
>  }
>  
> -static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
> +static int cdns_sierra_phy_clk(struct cdns_sierra_phy *sp)
>  {
> +	struct device *dev = sp->dev;
> +	struct clk *clk;
>  	int ret;
>  
> +	clk = devm_clk_get_optional(dev, "phy_clk");
> +	if (IS_ERR(clk)) {
> +		dev_err(dev, "failed to get clock phy_clk\n");
> +		return PTR_ERR(clk);
> +	}
> +	sp->input_clks[PHY_CLK] = clk;
> +
>  	ret = clk_prepare_enable(sp->input_clks[PHY_CLK]);
>  	if (ret)
>  		return ret;
>  
> +	return 0;
> +}
> +
> +static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
> +{
> +	int ret;
> +
>  	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
>  	if (ret)
> -		goto err_pll_cmnlc;
> +		return ret;
>  
>  	ret = clk_prepare_enable(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
>  	if (ret)
> @@ -1181,9 +1203,6 @@ static int cdns_sierra_phy_enable_clocks(struct cdns_sierra_phy *sp)
>  err_pll_cmnlc1:
>  	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
>  
> -err_pll_cmnlc:
> -	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
> -
>  	return ret;
>  }
>  
> @@ -1191,7 +1210,8 @@ static void cdns_sierra_phy_disable_clocks(struct cdns_sierra_phy *sp)
>  {
>  	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC1]);
>  	clk_disable_unprepare(sp->output_clks[CDNS_SIERRA_PLL_CMNLC]);
> -	clk_disable_unprepare(sp->input_clks[PHY_CLK]);
> +	if (!sp->already_configured)
> +		clk_disable_unprepare(sp->input_clks[PHY_CLK]);
>  }
>  
>  static int cdns_sierra_phy_get_resets(struct cdns_sierra_phy *sp,
> @@ -1382,22 +1402,30 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	ret = cdns_sierra_phy_get_resets(sp, dev);
> -	if (ret)
> -		goto unregister_clk;
> -
>  	ret = cdns_sierra_phy_enable_clocks(sp);
>  	if (ret)
>  		goto unregister_clk;
>  
> -	/* Enable APB */
> -	reset_control_deassert(sp->apb_rst);
> +	regmap_field_read(sp->pma_cmn_ready, &sp->already_configured);
> +
> +	if (!sp->already_configured) {
> +		ret = cdns_sierra_phy_clk(sp);
> +		if (ret)
> +			goto clk_disable;
> +
> +		ret = cdns_sierra_phy_get_resets(sp, dev);
> +		if (ret)
> +			goto clk_disable;
> +
> +		/* Enable APB */
> +		reset_control_deassert(sp->apb_rst);
> +	}
>  
>  	/* Check that PHY is present */
>  	regmap_field_read(sp->macro_id_type, &id_value);
>  	if  (sp->init_data->id_value != id_value) {
>  		ret = -EINVAL;
> -		goto clk_disable;
> +		goto ctrl_assert;
>  	}
>  
>  	sp->autoconf = of_property_read_bool(dn, "cdns,autoconf");
> @@ -1433,8 +1461,10 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>  
>  		sp->num_lanes += sp->phys[node].num_lanes;
>  
> -		gphy = devm_phy_create(dev, child, &ops);
> -
> +		if (!sp->already_configured)
> +			gphy = devm_phy_create(dev, child, &ops);
> +		else
> +			gphy = devm_phy_create(dev, child, &noop_ops);
>  		if (IS_ERR(gphy)) {
>  			ret = PTR_ERR(gphy);
>  			of_node_put(child);
> @@ -1455,7 +1485,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>  	}
>  
>  	/* If more than one subnode, configure the PHY as multilink */
> -	if (!sp->autoconf && sp->nsubnodes > 1) {
> +	if (!sp->already_configured && !sp->autoconf && sp->nsubnodes > 1) {
>  		ret = cdns_sierra_phy_configure_multilink(sp);
>  		if (ret)
>  			goto put_control;
> @@ -1473,9 +1503,11 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>  put_control:
>  	while (--node >= 0)
>  		reset_control_put(sp->phys[node].lnk_rst);
> +ctrl_assert:
> +	if (!sp->already_configured)
> +		reset_control_assert(sp->apb_rst);
>  clk_disable:
>  	cdns_sierra_phy_disable_clocks(sp);
> -	reset_control_assert(sp->apb_rst);
>  unregister_clk:
>  	cdns_sierra_clk_unregister(sp);
>  	return ret;
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
