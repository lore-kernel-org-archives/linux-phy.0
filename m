Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93A58EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 21:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG1nxlkcBpLjJ1QZi+xZetXaOgEOIs128WjhaTAvs2Q=; b=qX4QpdTXAT9bvD
	MxNWshq2HfCNY8bxGSDc8wvGVCmoBslHDFU2e9Fx09FgunKGRIBy6tC14V5JtuVqTa2Ps3jMNO7Sz
	3EUa8mS8nyVmfbViGVHSJsfrbC7YA0mJBO02MH/IQ1uqS/+6XrNvaqUil5MHp2g8m2+QZ9SKfVC1q
	/9f2/YRWEGFqNdArP0RffZiCv9EstFNlNVyKvgTooBm0bMhoZ1wgQ5Oif/8VVdYriZdRJB7/OfIa6
	XFh/ULQSbj9B8c9rh2fbVpYp3vRJAdI5HN48BLfZQR6YtZZZ0HabdlMj1mrppxMl3GU3J0FEfMUDU
	hBg9Tc3iWwPGVcH5aSqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCRsw-001roA-0d;
	Thu, 22 Jun 2023 21:30:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCRss-001rnU-0h
	for linux-phy@lists.infradead.org;
	Thu, 22 Jun 2023 21:30:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 48CA861900;
	Thu, 22 Jun 2023 21:30:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF084C433C0;
	Thu, 22 Jun 2023 21:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687469428;
	bh=4t/MTO/RD0W846UB78hLKN8LmcmZ/63Qt8/oJNZSl0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ma2HcjnVujHB4c5yu6w2MVCE7PQm18jJ41JpnH8MFKIxWzU7dHebh1fYTPlfxZnu3
	 ik93goHjYcjoBnnT1NM5RE3u40rA2x32zfw9lCREnxiI71XvBariZIZ0EC06P2raIy
	 ICje7Ysa6hSYcNCC3yxtzvs6CuCjCxY9hA3nGEUBk4quGhUXvCTlnxMIIsSemCuCUk
	 /0NFDjQ+YBRr2KqDB6szaA75q6RjiFoMNGWm4DRNMP3AgBNFMsc0ij+f80fNddUxBn
	 wwdVxke01B/MOTf8NELkGGXhcefXPByQpzOTL6pkmPD1zXqsnuf3GTb0fuO4r0j7ki
	 hxNwLJTKMEVOw==
Date: Thu, 22 Jun 2023 14:34:28 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>, 
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <pza@pengutronix.de>, 
	Manu Gautam <mgautam@codeaurora.org>, Andrew Halaney <ahalaney@redhat.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/3] phy: qcom-snps-femto-v2: properly enable ref clock
Message-ID: <t4bs4il6gtuuxhmoyjqoaippgveaiaefi7mhjkj5vy3wcqt6qp@xbsrugm75zpw>
References: <20230622194021.80892-1-athierry@redhat.com>
 <20230622194021.80892-2-athierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622194021.80892-2-athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_143030_363162_2E43C767 
X-CRM114-Status: GOOD (  36.39  )
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

On Thu, Jun 22, 2023 at 03:40:18PM -0400, Adrien Thierry wrote:
> The driver is not enabling the ref clock, which thus gets disabled by
> the clk_disable_unused initcall. This leads to the dwc3 controller
> failing to initialize if probed after clk_disable_unused is called, for
> instance when the driver is built as a module.
> 
> To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
> clocks at the proper places.
> 
> Note that the cfg_ahb clock is currently not used by any device tree
> instantiation of the PHY. Work needs to be done separately to fix this.
> 
> Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
> Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 67 ++++++++++++++-----
>  1 file changed, 49 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index 6c237f3cc66d..ce1d2f8b568a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -110,11 +110,13 @@ struct phy_override_seq {
>  /**
>   * struct qcom_snps_hsphy - snps hs phy attributes
>   *
> + * @dev: device structure
> + *
>   * @phy: generic phy
>   * @base: iomapped memory space for snps hs phy
>   *
> - * @cfg_ahb_clk: AHB2PHY interface clock
> - * @ref_clk: phy reference clock
> + * @num_clks: number of clocks
> + * @clks: array of clocks
>   * @phy_reset: phy reset control
>   * @vregs: regulator supplies bulk data
>   * @phy_initialized: if PHY has been initialized correctly
> @@ -122,11 +124,13 @@ struct phy_override_seq {
>   * @update_seq_cfg: tuning parameters for phy init
>   */
>  struct qcom_snps_hsphy {
> +	struct device *dev;
> +
>  	struct phy *phy;
>  	void __iomem *base;
>  
> -	struct clk *cfg_ahb_clk;
> -	struct clk *ref_clk;
> +	int num_clks;
> +	struct clk_bulk_data *clks;
>  	struct reset_control *phy_reset;
>  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
>  
> @@ -135,6 +139,32 @@ struct qcom_snps_hsphy {
>  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>  };
>  
> +static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
> +{
> +	struct device *dev = hsphy->dev;
> +
> +	hsphy->num_clks = 2;
> +	hsphy->clks = devm_kcalloc(dev, hsphy->num_clks, sizeof(*hsphy->clks), GFP_KERNEL);

This is ok, but it it wouldn't be wrong to just make clks[2] in the
context struct...

> +	if (!hsphy->clks)
> +		return -ENOMEM;
> +
> +	/*
> +	 * HACK: For cfg_ahb clock, use devm_clk_get_optional() because currently no device

Doesn't look to hacky to me, this is how you use the API if you need to
do what you propose. So I would suggest dropping "HACK: For cfg_ahb
clock, ". The remainder of the comment is good to keep (if anything it's
a TODO, to drop this sometime in the future).

> +	 * tree instantiation of the PHY is using the clock. This needs to be fixed in order
> +	 * for this code to be able to use devm_clk_bulk_get().
> +	 */
> +	hsphy->clks[0].id = "cfg_ahb";
> +	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");

The clock is optional, but you still need to check for IS_ERR() in case
it's specified and there's an issue acquiring it.

> +
> +	hsphy->clks[1].id = "ref";
> +	hsphy->clks[1].clk = devm_clk_get(dev, "ref");
> +	if (IS_ERR(hsphy->clks[1].clk))
> +		return dev_err_probe(dev, PTR_ERR(hsphy->clks[1].clk),
> +				     "failed to get ref clk\n");
> +
> +	return 0;
> +}
> +
>  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
>  						u32 mask, u32 val)
>  {
> @@ -165,7 +195,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>  					   0, USB2_AUTO_RESUME);
>  	}
>  
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  	return 0;
>  }
>  
> @@ -175,9 +205,9 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>  
>  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
>  
> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
>  	if (ret) {
> -		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
> +		dev_err(&hsphy->phy->dev, "failed to enable clocks\n");

You can omit this print completely, because clk_bulk_prepare() and
friends will log an error line telling you which clock failed to prepare
already.

>  		return ret;
>  	}
>  
> @@ -374,16 +404,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
>  	if (ret) {
> -		dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);
> +		dev_err(&phy->dev, "failed to enable clocks, %d\n", ret);

Here as well.

Regards,
Bjorn

>  		goto poweroff_phy;
>  	}
>  
>  	ret = reset_control_assert(hsphy->phy_reset);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto disable_clks;
>  	}
>  
>  	usleep_range(100, 150);
> @@ -391,7 +421,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  	ret = reset_control_deassert(hsphy->phy_reset);
>  	if (ret) {
>  		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
> -		goto disable_ahb_clk;
> +		goto disable_clks;
>  	}
>  
>  	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
> @@ -448,8 +478,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  
>  	return 0;
>  
> -disable_ahb_clk:
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +disable_clks:
> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  poweroff_phy:
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  
> @@ -461,7 +491,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>  	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
>  
>  	reset_control_assert(hsphy->phy_reset);
> -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>  	hsphy->phy_initialized = false;
>  
> @@ -554,14 +584,15 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>  	if (!hsphy)
>  		return -ENOMEM;
>  
> +	hsphy->dev = dev;
> +
>  	hsphy->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(hsphy->base))
>  		return PTR_ERR(hsphy->base);
>  
> -	hsphy->ref_clk = devm_clk_get(dev, "ref");
> -	if (IS_ERR(hsphy->ref_clk))
> -		return dev_err_probe(dev, PTR_ERR(hsphy->ref_clk),
> -				     "failed to get ref clk\n");
> +	ret = qcom_snps_hsphy_clk_init(hsphy);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to initialize clocks\n");
>  
>  	hsphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
>  	if (IS_ERR(hsphy->phy_reset)) {
> -- 
> 2.40.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
