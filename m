Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BEDC10DCE
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 15:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPPMfaYhBvXlKIG3C4xcIDyJnB6UPOjLa7U4OHsKFZM=; b=A47UlU9/oYqmGp
	tQGE4Vdsi856xWsMV21IAubOxF3Fa69hJ63iU6F3k6JLSuF3bj+7VB2lrVoL30mWH7SjZ45gLbwxs
	da3AJexfsiMlMeAGKXY+MgYBmazcJvdBcTfKIUpYnoYzf3hQ+9kTlFgnWapoy5nS1ElsOiU3FpvLh
	Lu6k1x2ietg0jddXmata93wOvKS9X7CMMlbv7iV4V7p5rfjkQeYseEu3/L0/NpXFEqhj2ajoeG/HI
	fbHh6SOUUcV916M0wS1JgQ7LbQ2uuJYx/iDuDaRZn+OvJR/Uuzed/nNzI4weQEjGRh08RErUs1dKa
	docP6uB8vSuhEvcAWIJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAsn-004xfa-2w;
	Mon, 04 Dec 2023 15:29:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAsk-004xes-27
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 15:29:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3C6E1B81071;
	Mon,  4 Dec 2023 15:29:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65518C433C9;
	Mon,  4 Dec 2023 15:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701703752;
	bh=sZ8MdlBZTLad6pw+Ks72AVR2ViiyQ2nnjmMSI977zUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ftRxE0nh9TE0pSPkAFobzBYEG4nP5Ik6qoKGAzu9e0I/OEXvx7NheDySUmBiXz/cu
	 3XbtJCirUYHOew+jYP6D1OvqGc81hY6A+tWDSFLcJkR5TdNM2kwIu6mWdBX3AaDaYj
	 UfI4KZWNTXdPQ567GUsMh5vpxA2UbgHyR7CYuGZonQUKoEAxSlId9y1ALNr27FNeSB
	 hRy8tJFRFakAWQnyZ+Xfan4yFCOlvvGGg+Y19SIKEKjPp7+T5Aa5SENH7mORb0tt9I
	 ZPZhg45YSrpKZ/76YhJ68vW4za6J/JH+/pLB+2DN6kMuuGezK7x396eqIgu3TEONXH
	 FdaZvkbnehPCA==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rAAtN-0003yx-1I;
	Mon, 04 Dec 2023 16:29:54 +0100
Date: Mon, 4 Dec 2023 16:29:53 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: edp: Add X1E80100 eDP and DP PHYs
Message-ID: <ZW3wcX2T0pJLoDSt@hovoldconsulting.com>
References: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v2-2-114e789f0195@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v2-2-114e789f0195@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_072914_998289_AC8C6E68 
X-CRM114-Status: GOOD (  22.18  )
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

On Mon, Dec 04, 2023 at 05:01:37PM +0200, Abel Vesa wrote:
> The Qualcomm X1E80100 platform has a number of eDP and DP PHY instances,
> add support for these.
> 
> Co-developed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
  
>  	/* Turn on BIAS current for PHY/PLL */
> -	writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
> +	if (cfg->qserdes_version == QSERDES_V6)
> +		writel(0x1f, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
> +	else
> +		writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);

Sprinkling version conditionals like this throughout the driver look a
bit sloppy and makes the code harder to read (and maintain long term).

Not as easy to clean up when you're using magic numbers instead of
proper value defines, but perhaps you can just fix that up as well as
you should access to the documentation.
  
>  	writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
>  	msleep(20);
> @@ -261,7 +290,10 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
>  	if (swing == 0xff || emph == 0xff)
>  		return -EINVAL;
>  
> -	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +	if (cfg->qserdes_version == QSERDES_V6)
> +		ldo_config = 0x91;
> +	else
> +		ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;

Similar here.

>  	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>  	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> @@ -288,7 +320,7 @@ static int qcom_edp_phy_configure(struct phy *phy, union phy_configure_opts *opt
>  	return ret;
>  }
>  
> -static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
> +static int qcom_edp_configure_ssc_v4(const struct qcom_edp *edp)
>  {
>  	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
>  	u32 step1;

> @@ -349,6 +415,7 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
>  		div_frac_start3_mode0 = 0x07;
>  		lock_cmp1_mode0 = 0x0f;
>  		lock_cmp2_mode0 = 0x0e;
> +
>  		break;
>  
>  	case 5400:
> @@ -358,6 +425,7 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
>  		div_frac_start3_mode0 = 0x0a;
>  		lock_cmp1_mode0 = 0x1f;
>  		lock_cmp2_mode0 = 0x1c;
> +
>  		break;
>  
>  	case 8100:
> @@ -367,6 +435,7 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
>  		div_frac_start3_mode0 = 0x07;
>  		lock_cmp1_mode0 = 0x2f;
>  		lock_cmp2_mode0 = 0x2a;
> +
>  		break;
>  
>  	default:

This looks like unrelated changes that do not belong in this patch.

> @@ -408,6 +477,103 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
>  	return 0;
>  }
>  
> +static int qcom_edp_configure_pll_v6(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +	u32 div_frac_start2_mode0;
> +	u32 div_frac_start3_mode0;
> +	u32 dec_start_mode0;
> +	u32 lock_cmp1_mode0;
> +	u32 lock_cmp2_mode0;
> +	u32 code1_mode0;
> +	u32 code2_mode0;
> +	u32 hsclk_sel;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +		hsclk_sel = 0x5;
> +		dec_start_mode0 = 0x34;
> +		div_frac_start2_mode0 = 0xc0;
> +		div_frac_start3_mode0 = 0x0b;
> +		lock_cmp1_mode0 = 0x37;
> +		lock_cmp2_mode0 = 0x04;
> +		code1_mode0 = 0x71;
> +		code2_mode0 = 0x0C;
> +		break;
> +

Drop newline before case throughout? Doesn't seem to help with
readability. But I see now that some other functions do this already.

> +	case 2700:
> +		hsclk_sel = 0x3;
> +		dec_start_mode0 = 0x34;
> +		div_frac_start2_mode0 = 0xc0;
> +		div_frac_start3_mode0 = 0x0b;
> +		lock_cmp1_mode0 = 0x07;
> +		lock_cmp2_mode0 = 0x07;
> +		code1_mode0 = 0x71;
> +		code2_mode0 = 0x0C;
> +		break;
> +
> +	case 5400:

>  static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel_freq)
>  {
>  	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> @@ -462,13 +628,22 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  	       edp->edp + DP_PHY_PD_CTL);
>  	writel(0xfc, edp->edp + DP_PHY_MODE);
>  
> -	timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
> -				     val, val & BIT(7), 5, 200);
> +	if (cfg->qserdes_version == QSERDES_V6) {
> +		timeout = readl_poll_timeout(edp->pll + QSERDES_V6_COM_CMN_STATUS,
> +					     val, val & BIT(7), 5, 200);
> +	} else {
> +		timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
> +					     val, val & BIT(7), 5, 200);
> +	}

This too looks a bit sloppy. Should you not just abstract the status
register offset?

> +
>  	if (timeout)
>  		return timeout;
>  
>  
> -	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +	if (cfg->qserdes_version == QSERDES_V6)
> +		ldo_config = 0x91;
> +	else
> +		ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;

Same construct and comment as above.

>  
>  	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>  	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
  
> @@ -512,10 +695,18 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>  	writel(0x01, edp->edp + DP_PHY_CFG);
>  	writel(0x09, edp->edp + DP_PHY_CFG);
>  
> -	writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
> +	if (cfg->qserdes_version == QSERDES_V6) {
> +		writel(0x20, edp->pll + QSERDES_V6_COM_RESETSM_CNTRL);
> +
> +		timeout = readl_poll_timeout(edp->pll + QSERDES_V6_COM_C_READY_STATUS,
> +					     val, val & BIT(0), 500, 10000);
> +	} else {
> +		writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
> +
> +		timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
> +					     val, val & BIT(0), 500, 10000);
> +	}

Similar here.
  
> -	timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
> -				     val, val & BIT(0), 500, 10000);
>  	if (timeout)
>  		return timeout;
>  
> @@ -744,7 +935,6 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>  	data = devm_kzalloc(edp->dev, struct_size(data, hws, 2), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
> -	data->num = 2;
>  
>  	snprintf(name, sizeof(name), "%s::link_clk", dev_name(edp->dev));
>  	init.ops = &qcom_edp_dp_link_clk_ops;
> @@ -764,6 +954,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>  
>  	data->hws[0] = &edp->dp_link_hw;
>  	data->hws[1] = &edp->dp_pixel_hw;
> +	data->num = 2;

Another seemingly unrelated change.

>  	return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
>  }
> @@ -806,6 +997,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  
>  	edp->supplies[0].supply = "vdda-phy";
>  	edp->supplies[1].supply = "vdda-pll";
> +	edp->clks[2].id = "tcsr";

The *clocks* will already have been requested above so this is at best a
noop.

>  	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(edp->supplies), edp->supplies);
>  	if (ret)
>  		return ret;

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
