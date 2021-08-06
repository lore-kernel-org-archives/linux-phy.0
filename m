Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83064C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 10:18:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37A1E6108D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 10:18:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 37A1E6108D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NCAEfMEM02qZOuaI9PC4TgZ6em9YrrNdbKMUl15tjg=; b=bHYJMYeZwQMWOB
	3cNPZ8cell5pkin6Zjm5lcWbSeg8up8hnVQVCcqYh5x6JiB4eblQ+Qx8DP9CzyqfJnJUEDTBnxD4U
	VUAYydfhKEjsGJFDPLB4WSU3hEt0ki497xnTS00KheCfJ/1MR3eIchhlpa95FpuNCjiWPkZN4AXbs
	B9az1YLZIS71U1gEn5pbqvS/1v+ziNsE/ZOxkbXJNyBH/DrDxpd+A8Ny0W8EzpGzkjf1u3ttWuMzk
	w/YWsAs42NEqOYIYUJSSbrA223OuuCqZluz2wwwYOfNZoP8fod1HH4lgKMPa/595Wx3TdjpGuGgTc
	Qw91EiKxkHBvY+R1h+gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBwvr-00C6jd-Im; Fri, 06 Aug 2021 10:18:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBwvo-00C6j6-Ni
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 10:18:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BA5860E97;
 Fri,  6 Aug 2021 10:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628245104;
 bh=Ip01cdoo3exxtjwMtvNqg+Q3tg6d6FumHeook5Pxp7E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sUAtowA2iX/Wyhsl8xAF/CF7753yJkVMiV//WcPD1OvQep1r2M3ecSErhYefHwzzr
 1UUxkD2fF6fcqT62we5T+STQmArhfnTnJpmgQZgUK04Y+tpJUu681YOfdJ8swhMgRG
 vRTXydK92fK4LRx4vAdMVjN/iKD5WrLawTqkRaA70498g0P0DfoCal3AN92NkWR2ql
 TkcD2qFAgYZipdnrnn/jOVTTNfFXD/ReZ/jdevkH2WWgQ8/tmqJCTeizV0ksDI1tWH
 6Hk3oqnZURkTcss15YUQSCj0AJlZEW03FYB+dsAAbK5lKYdNpASFh6luTewv+MJ/4O
 uRVgcJ52a2POg==
Date: Fri, 6 Aug 2021 15:48:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Nikhil Devshatwar <nikhil.nd@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Chen <peter.chen@nxp.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/7] phy: cdns-dphy: Prepare for Rx support
Message-ID: <YQ0MZqI36bz1Jp87@matsya>
References: <20210624184108.21312-1-p.yadav@ti.com>
 <20210624184108.21312-3-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624184108.21312-3-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_031824_847446_920F84E3 
X-CRM114-Status: GOOD (  25.87  )
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

On 25-06-21, 00:11, Pratyush Yadav wrote:
> The Rx programming sequence differs from the Tx programming sequence.
> Currently only Tx mode is supported. Move all the Tx related parts into
> a set of Tx-specific hooks that are then called by the main PHY
> framework hooks. This way when Rx support is added all that is needed to
> be done is to plug in the Rx hooks.
> 
> The clocks "psm" and "pll_ref" are not used by the Rx path so make them
> optional in the probe and then check if they exist in the power_on()
> hook.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
> 
> (no changes since v1)
> 
>  drivers/phy/cadence/cdns-dphy.c | 140 ++++++++++++++++++++++++--------
>  1 file changed, 104 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index ba042e39cfaf..8656f2102a91 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -75,6 +75,11 @@ struct cdns_dphy;
>  struct cdns_dphy_ops {
>  	int (*probe)(struct cdns_dphy *dphy);
>  	void (*remove)(struct cdns_dphy *dphy);
> +	int (*power_on)(struct cdns_dphy *dphy);
> +	int (*power_off)(struct cdns_dphy *dphy);
> +	int (*validate)(struct cdns_dphy *dphy, enum phy_mode mode, int submode,
> +			union phy_configure_opts *opts);
> +	int (*configure)(struct cdns_dphy *dphy, union phy_configure_opts *opts);
>  	void (*set_psm_div)(struct cdns_dphy *dphy, u8 div);
>  	void (*set_clk_lane_cfg)(struct cdns_dphy *dphy,
>  				 enum cdns_dphy_clk_lane_cfg cfg);
> @@ -86,12 +91,18 @@ struct cdns_dphy_ops {
>  struct cdns_dphy {
>  	struct cdns_dphy_cfg cfg;
>  	void __iomem *regs;
> +	struct device *dev;
>  	struct clk *psm_clk;
>  	struct clk *pll_ref_clk;
>  	const struct cdns_dphy_ops *ops;
>  	struct phy *phy;
>  };
>  
> +struct cdns_dphy_driver_data {
> +	const struct cdns_dphy_ops *tx;
> +	const struct cdns_dphy_ops *rx;
> +};
> +
>  static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>  				     struct cdns_dphy_cfg *cfg,
>  				     struct phy_configure_opts_mipi_dphy *opts,
> @@ -199,20 +210,9 @@ static void cdns_dphy_ref_set_psm_div(struct cdns_dphy *dphy, u8 div)
>  	       dphy->regs + DPHY_PSM_CFG);
>  }
>  
> -/*
> - * This is the reference implementation of DPHY hooks. Specific integration of
> - * this IP may have to re-implement some of them depending on how they decided
> - * to wire things in the SoC.
> - */
> -static const struct cdns_dphy_ops ref_dphy_ops = {
> -	.get_wakeup_time_ns = cdns_dphy_ref_get_wakeup_time_ns,
> -	.set_pll_cfg = cdns_dphy_ref_set_pll_cfg,
> -	.set_psm_div = cdns_dphy_ref_set_psm_div,
> -};
> -
> -static int cdns_dphy_config_from_opts(struct phy *phy,
> -				      struct phy_configure_opts_mipi_dphy *opts,
> -				      struct cdns_dphy_cfg *cfg)
> +static int cdns_dphy_tx_config_from_opts(struct phy *phy,
> +					 struct phy_configure_opts_mipi_dphy *opts,
> +					 struct cdns_dphy_cfg *cfg)
>  {
>  	struct cdns_dphy *dphy = phy_get_drvdata(phy);
>  	unsigned int dsi_hfp_ext = 0;
> @@ -232,24 +232,13 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
>  	return 0;
>  }
>  
> -static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
> -			      union phy_configure_opts *opts)
> +static int cdns_dphy_tx_configure(struct cdns_dphy *dphy,
> +				  union phy_configure_opts *opts)
>  {
>  	struct cdns_dphy_cfg cfg = { 0 };
> -
> -	if (mode != PHY_MODE_MIPI_DPHY)
> -		return -EINVAL;
> -
> -	return cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
> -}
> -
> -static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
> -{
> -	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> -	struct cdns_dphy_cfg cfg = { 0 };
>  	int ret;
>  
> -	ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
> +	ret = cdns_dphy_tx_config_from_opts(dphy->phy, &opts->mipi_dphy, &cfg);
>  	if (ret)
>  		return ret;
>  
> @@ -279,9 +268,21 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>  	return 0;
>  }
>  
> -static int cdns_dphy_power_on(struct phy *phy)
> +static int cdns_dphy_tx_validate(struct cdns_dphy *dphy, enum phy_mode mode,
> +				 int submode, union phy_configure_opts *opts)
>  {
> -	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> +	struct cdns_dphy_cfg cfg = { 0 };
> +
> +	if (submode != PHY_MIPI_DPHY_SUBMODE_TX)
> +		return -EINVAL;
> +
> +	return cdns_dphy_tx_config_from_opts(dphy->phy, &opts->mipi_dphy, &cfg);
> +}
> +
> +static int cdns_dphy_tx_power_on(struct cdns_dphy *dphy)
> +{
> +	if (!dphy->psm_clk || !dphy->pll_ref_clk)
> +		return -EINVAL;
>  
>  	clk_prepare_enable(dphy->psm_clk);
>  	clk_prepare_enable(dphy->pll_ref_clk);
> @@ -293,16 +294,77 @@ static int cdns_dphy_power_on(struct phy *phy)
>  	return 0;
>  }
>  
> -static int cdns_dphy_power_off(struct phy *phy)
> +static int cdns_dphy_tx_power_off(struct cdns_dphy *dphy)
>  {
> -	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> -
>  	clk_disable_unprepare(dphy->pll_ref_clk);
>  	clk_disable_unprepare(dphy->psm_clk);
>  
>  	return 0;
>  }
>  
> +static const struct cdns_dphy_ops tx_ref_dphy_ops = {
> +	.power_on = cdns_dphy_tx_power_on,
> +	.power_off = cdns_dphy_tx_power_off,
> +	.validate = cdns_dphy_tx_validate,
> +	.configure = cdns_dphy_tx_configure,
> +	.get_wakeup_time_ns = cdns_dphy_ref_get_wakeup_time_ns,
> +	.set_pll_cfg = cdns_dphy_ref_set_pll_cfg,
> +	.set_psm_div = cdns_dphy_ref_set_psm_div,
> +};
> +
> +/*
> + * This is the reference implementation of DPHY hooks. Specific integration of
> + * this IP may have to re-implement some of them depending on how they decided
> + * to wire things in the SoC.
> + */
> +static const struct cdns_dphy_driver_data ref_dphy_ops = {
> +	.tx = &tx_ref_dphy_ops,
> +};
> +
> +static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
> +			      union phy_configure_opts *opts)
> +{
> +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> +
> +	if (mode != PHY_MODE_MIPI_DPHY)
> +		return -EINVAL;
> +
> +	if (dphy->ops->validate)
> +		return dphy->ops->validate(dphy, mode, submode, opts);
> +
> +	return 0;
> +}
> +
> +static int cdns_dphy_power_on(struct phy *phy)
> +{
> +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> +
> +	if (dphy->ops->power_on)
> +		return dphy->ops->power_on(dphy);
> +
> +	return 0;
> +}
> +
> +static int cdns_dphy_power_off(struct phy *phy)
> +{
> +	struct cdns_dphy *dphy = phy_get_drvdata(phy);
> +
> +	if (dphy->ops->power_off)
> +		return dphy->ops->power_off(dphy);
> +
> +	return 0;
> +}

why do you need a dphy specific power_on/off only to call internal
ops..? If there is no additional logic lets drop this and continue the
phy ops for this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
