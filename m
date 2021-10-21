Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28B56C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 18:45:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD8B961284
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 18:45:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DD8B961284
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pFmR3CEraWDr4cZuIZ8+rrWVB26VU0eVeg5H8QEqIQ=; b=Yy2EU6iTV3lZIW
	J8DsO0Oa51F6aXrBxP4Pp72JGInMoXIrC5rjN1O5a+Jkt+KThdJPF3wbKd7fOzJHqNtxP7IniylrF
	acWX+T829wWCAl1We+kndUNVNdfmCsU6PHIyO45zkn5gvFm8esoq5VcOLpSnZSMtQBJOh516MH1LG
	MT/P5/yXaJ3+MONJ2FiukpO6G52HNDqZAJXOY8TNFD4YbXOv5pBIxwoVBSM21FSZcQ6cbSWeX6m39
	8zJLAnS0pKjsselRZhPg9ET2a+vrudT9RjcowVt/F0VabawYv0vc3wJfxeB1ei94cHwsrYg/pkkhn
	Bry9G0/77Rmk99ezkrog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdd45-008s1a-4A; Thu, 21 Oct 2021 18:45:21 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdcdX-008gPU-A7
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 18:17:57 +0000
Received: by mail-oi1-x22d.google.com with SMTP id u69so1947345oie.3
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 11:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dyDQvwiVA5uaX7MMXKKGB+jsmS8ysdA8hQ3oTROU0PA=;
 b=xqMBb4Mg7rhe3hs1yp2lCqQoYq+sODxgUsFipEEKPNBaftWS96rrSrjJ3tk00TSc3X
 ohUwXuaxeFbNZNFZm0HRxortIcfMAvLHD+PMDpAQ3uU5wss6YkiXxPvuZ1S23tppBng6
 rYoBhszDPXeon1KSenKlvwZFptq0EfGgRVSpfMCBcRpD9WwE1IM4ErwtZKpoPD9z/jfL
 enNiB/9JDk5+1bXoFdiVHAF/ZcjQaBxkSdb02NHvFIJbryTsddRMQYhpmv9KNYvt4IS3
 MgqqUEUchxRyGfrWHdtksRaaDOXLfK6PfQAIjfpcOUf3DQnzO2nNif2Cet44haRnZuxq
 O7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dyDQvwiVA5uaX7MMXKKGB+jsmS8ysdA8hQ3oTROU0PA=;
 b=h6EbCqgJiaOcNePw1/BrJ5qDgg4Q5TCAbu/n3ksEcDDiOuTsMpNSVXohdQ97bONqEI
 Rv1AzFHiYUxdy40i65Vk5BbhZiWS/9hp57mfrTFc0+PcAdmqCeaqDDfQBE5UCA4wryHQ
 xuFH0IcAXh1LfEYBIviYoga+0MnnRa2y+vieLlVoPqHzlxSeDbEvMO9SzJbpRTarloqb
 TTohpzKMRg9i3DZzC/Ttu9FPKw0E5IU8aNWJQaHsWVRbeqOV7Vmv6LtD8tPASnRP68gj
 2YgtV9Et40QDtEvGpJ0WMWDPfVlfFWWreydsG0hUlBuy6nRltQgiJlQbQqZEJJL6Yrgr
 pGtg==
X-Gm-Message-State: AOAM531ToG4t0fk6sicea/NkVhiHXyp9eYfa4UKBepu6O/SlsBcbJNxM
 jGJivox7eB2nQzb8vbnD+wHacg==
X-Google-Smtp-Source: ABdhPJzSR7bPaw1/nPDTLxIFj5WgpsFFmx7nsu7GHncKEcCmp+vuuz536UBYQgUb4izBnIcSdcwqtw==
X-Received: by 2002:aca:bc55:: with SMTP id m82mr6000777oif.75.1634840273265; 
 Thu, 21 Oct 2021 11:17:53 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id q39sm1283962oiw.47.2021.10.21.11.17.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 11:17:52 -0700 (PDT)
Date: Thu, 21 Oct 2021 11:19:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 abhinavk@codeaurora.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YXGvOHsJ33kJVvMk@ripper>
References: <20211016232128.2341395-1-bjorn.andersson@linaro.org>
 <20211016232128.2341395-2-bjorn.andersson@linaro.org>
 <YXGmJFoeXwtTvl7p@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXGmJFoeXwtTvl7p@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_111755_444400_500BF675 
X-CRM114-Status: GOOD (  27.73  )
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

On Thu 21 Oct 10:40 PDT 2021, Vinod Koul wrote:

> On 16-10-21, 16:21, Bjorn Andersson wrote:
> > Many recent Qualcomm platforms comes with native DP and eDP support.
> > This consists of a controller in the MDSS and a QMP-like PHY.
> > 
> > While similar to the well known QMP block, the eDP PHY only has TX lanes
> > and the programming sequences are slightly different. Rather than
> > continuing the trend of parameterize the QMP driver to pieces, this
> > introduces the support as a new driver.
> > 
> > The registration of link and pixel clocks are borrowed from the QMP
> > driver. The non-DP link frequencies are omitted for now.
> > 
> > The eDP PHY is very similar to the dedicated (non-USB) DP PHY, but only
> > the prior is supported for now.
> 
> since this is QMP phy, pls add an explanation why common QMP driver
> is not used here?
> 

Will do.

> > +static int qcom_edp_phy_init(struct phy *phy)
> > +{
> > +	struct qcom_edp *edp = phy_get_drvdata(phy);
> > +	int ret;
> > +
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > +	if (ret)
> > +		goto out_disable_supplies;
> > +
> > +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> > +	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> > +	       edp->edp + DP_PHY_PD_CTL);
> > +
> > +	writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
> 
> magic?
> 

I'll see if I can figure out what this magic number represents.

> > +
> > +	writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
> > +	msleep(20);
> > +
> > +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> > +	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> > +	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> > +	       edp->edp + DP_PHY_PD_CTL);
> > +
> > +	writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> > +	writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
> > +	writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
> > +	writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
> > +	writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
> > +	writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
> > +	writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
> > +	writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
> > +	writel(0x37, edp->edp + DP_PHY_AUX_CFG8);
> > +	writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
> 
> In qmp phy we use a table for this, that looks very elegant and I am
> sure next rev will have different magic numbers, so should we go the
> table approach here on as well..?
> 

Yes, these numbers are different for DP, so that makes sense.

> > +
> > +	writel(0x1f, edp->edp + 0x58);
> 
> the register offset should be defined
> 

Yes.

> > +
> > +	msleep(20);
> > +
> > +	return 0;
> > +
[..]
> > +static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
> > +{
> > +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> > +	u32 step1;
> > +	u32 step2;
> > +
> > +	switch (dp_opts->link_rate) {
> > +	case 1620:
> > +	case 2700:
> > +	case 8100:
> > +		step1 = 0x45;
> > +		step2 = 0x06;
> > +		break;
> 
> line after each break please (here & few other places)
> 

You mean an empty line between the break and the next case? That doesn't
seem standard?

> > +	case 5400:
> > +		step1 = 0x5c;
> > +		step2 = 0x08;
> > +		break;
> > +	default:
> > +		/* Other link rates aren't supported */
> > +		return -EINVAL;
[..]
> > +static int qcom_edp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
> > +						struct clk_rate_request *req)
> > +{
> > +	switch (req->rate) {
> > +	case 1620000000UL / 2:
> > +	case 2700000000UL / 2:
> > +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
> 
> above rates are 1.62 and 2.7, where is 5.4 and 8.1... what am i missing?
> 

As the comments says 2.7, 5.4 and 8.1 all has req->rate of 1350000000,
with different dividers. But we're not allowed to "document" that by
listing 2.7/2, 5.4/4 and 8.1/6 in the switch statement.

> > +		return 0;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +}
[..]
> > +static const struct clk_ops qcom_edp_dp_pixel_clk_ops = {
> > +	.determine_rate = qcom_edp_dp_pixel_clk_determine_rate,
> > +	.recalc_rate = qcom_edp_dp_pixel_clk_recalc_rate,
> > +};
> > +
> > +static int qcom_edp_dp_link_clk_determine_rate(struct clk_hw *hw,
> > +					       struct clk_rate_request *req)
> 
> maybe is rate_valid/supported be better name for this?
> 

It's named per the clk_ops.

[..]
> > +static const struct clk_ops qcom_edp_dp_link_clk_ops = {
> > +	.determine_rate = qcom_edp_dp_link_clk_determine_rate,
> > +	.recalc_rate = qcom_edp_dp_link_clk_recalc_rate,
> > +};
[..]

Thanks,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
