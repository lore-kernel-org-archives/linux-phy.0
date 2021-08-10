Return-Path: <SRS0=zCth=NB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B38CC4338F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 03:37:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFF2060ED8
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 03:37:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DFF2060ED8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+B3f8ETHV6gtAG6FIt1vgAl6LIEaCqAnai46R93xJtw=; b=D3EuU5cJc/eqQY
	CGoPIyEQ6hvmESzrEscXGhy1PuuRGk5+FjBzHCGVmxJXXiRpbdmvvSP1FVntHh6YyYLd8/yWxqf3E
	3l9gkquDAx1aKqiUhA6A9gNsGC/avo266gsJaW2MrF1zMnjIC65tM0nQFlwhD78TcYnNf56/cVg+d
	YpZEm1nhgZibF/kHsRAewnI52gMEa8zGsWitGVFaQ9K/0P44WDbpznKcBeM1gvJmLZh7YALfoR1+N
	CYTgXIB8EDv8yahxvJX+N++iFmED7qfF7TjtePvXpqmh1gayZ20jCf7+FSNISNTEevyLgFgKBu46A
	3o21xgR8QnemeiPufx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDIZe-002KxP-AE; Tue, 10 Aug 2021 03:37:06 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDIZZ-002Kwb-HG
 for linux-phy@lists.infradead.org; Tue, 10 Aug 2021 03:37:05 +0000
Received: by mail-oi1-x235.google.com with SMTP id u10so26953266oiw.4
 for <linux-phy@lists.infradead.org>; Mon, 09 Aug 2021 20:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eTjxoRBCQf02cbggSfOkoEwcbBOIkEA4E5gk33oPnVc=;
 b=HI+OeeQMtFnPj3845sY6EwA1BoQN7PnMqX4s0kBeaQEy962s9e+m/V8O1/tsu5xs1I
 bddJOLO4l8wk5180sqxqoxp62aRFAM2baGVKrC4P/y3KRBVhjdJRsymDBL+60PrfM4Ja
 mZIbL1Hu1/uDpQ5c/qYcIY5bH3moOyO6Eyg7LR2+0Jzww+2RQTzDxHIXLs0JFhhYGXUo
 FxdLENJvCsVPWKnMc6mS+kE8iycdYnVrPjbprWb54i23OVLalKrDeRipM776pBngwAQI
 5BhyJuiinLxKB70SapQTYKjtAFtKvneJrzJ2kIVAnoqeKEAFIixrGJ8oewiMS+7WHN6f
 DNhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eTjxoRBCQf02cbggSfOkoEwcbBOIkEA4E5gk33oPnVc=;
 b=KEeEBiBcXATGbnJH6yoRqc6VP46AldfmcXz4T+oj/pCwsogeeDJzsfLwGd/Ou1IVyK
 zoQf1ZXVDOBaIhlLWYi+yojNzb1DZPD4Jl/AogIRt4crKE2nW91sb9A0XMcC8eHUrvaf
 oEfoLgb0D/YEPbgwJzA8gHzEHfw8YjKGd7BTb72IdyT/pba1BxpiuBU99PhIcPu6OwMW
 IhsdaJxdWLrWc2AkB32MQZNTmO/sCpKlrK441XnKp6R1vP5hEnuAHis/o/7NFycVo4sz
 o/ibLX38CFsetjNczx/iHNDXotehzy/W2cXZpothlEA8sZjWkf02gJ0z21FSYhkwuuIW
 y7Kw==
X-Gm-Message-State: AOAM532SRVBZwcpq0Z322Zrs5q6uP8781HPlWJhsKrB7RDUHVzlHtmKB
 ret23IyFX4lslZXolOIvjEaN3A==
X-Google-Smtp-Source: ABdhPJwKehZHzcNRMXQY8NdGSws5hczPtVMVLb1J3K4obntfjmhpHUTzFkDBPgDMATv7wErZVOd5Jg==
X-Received: by 2002:a05:6808:4a:: with SMTP id
 v10mr11504245oic.171.1628566618843; 
 Mon, 09 Aug 2021 20:36:58 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id n67sm3466362oib.44.2021.08.09.20.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 20:36:58 -0700 (PDT)
Date: Mon, 9 Aug 2021 22:36:56 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: sbillaka@codeaurora.org
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Rob Clark <robdclark@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kalyan_t@codeaurora.org,
 abhinavk@codeaurora.org
Subject: Re: [PATCH 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YRH0WFvWmemHIHqc@builder.lan>
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
 <20210511041930.592483-2-bjorn.andersson@linaro.org>
 <7708925ad4d973b4e5f291cdcbdbe406@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7708925ad4d973b4e5f291cdcbdbe406@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_203701_747141_BD0D6956 
X-CRM114-Status: GOOD (  26.06  )
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

On Mon 09 Aug 22:15 CDT 2021, sbillaka@codeaurora.org wrote:
> On 2021-05-11 09:49, Bjorn Andersson wrote:
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c
[..]
> > +#define DP_PHY_AUX_CFG0				0x0020
> > +#define DP_PHY_AUX_CFG1				0x0024
> > +#define DP_PHY_AUX_CFG2				0x0028
> > +#define DP_PHY_AUX_CFG3				0x002c
> > +#define DP_PHY_AUX_CFG4				0x0030
> > +#define DP_PHY_AUX_CFG5				0x0034
> > +#define DP_PHY_AUX_CFG6				0x0038
> > +#define DP_PHY_AUX_CFG7				0x003c
> > +#define DP_PHY_AUX_CFG8				0x0040
> > +#define DP_PHY_AUX_CFG9				0x0044
> 
> The DP_PHY_AUX_CFG0 offset for sc8180x eDP phy is 0x0024.
> Some of the eDP PHY offset addresses are shifted by 4 address locations,
> compared to the DP QMP PHY offset addresses for sc8180x.
> The DP_PHY_AUX_CFG* offsets for this eDP phy driver are as below:
> 
> #define DP_PHY_AUX_CFG0                         0x0024
> #define DP_PHY_AUX_CFG1                         0x0028
> #define DP_PHY_AUX_CFG2                         0x002c
> #define DP_PHY_AUX_CFG3                         0x0030
> #define DP_PHY_AUX_CFG4                         0x0034
> #define DP_PHY_AUX_CFG5                         0x0038
> #define DP_PHY_AUX_CFG6                         0x003c
> #define DP_PHY_AUX_CFG7                         0x0040
> #define DP_PHY_AUX_CFG8                         0x0044
> #define DP_PHY_AUX_CFG9                         0x0048
> 

I noticed this as well. During development I just used the numbers
directly in the code and I must have screwed up as I replaced them with
defined - and somehow missed this in the testing before posting.

Sorry about that.

[..]
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
> 
> I think the number of clk and regulator resources can vary based on
> platform.
> 

If that's the case we should replace the ARRAY_SIZE() with an integer.
But I prefer to wait with that until the number actually is variable.

[..]
> > +static int qcom_edp_phy_probe(struct platform_device *pdev)
> > +{
> > +	struct phy_provider *phy_provider;
> > +	struct device *dev = &pdev->dev;
> > +	struct qcom_edp *edp;
> > +	int ret;
> > +
> > +	edp = devm_kzalloc(dev, sizeof(*edp), GFP_KERNEL);
> > +	if (!edp)
> > +		return -ENOMEM;
> > +
> > +	edp->dev = dev;
> > +
> > +	edp->edp = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(edp->edp))
> > +		return PTR_ERR(edp->edp);
> > +
> > +	edp->tx0 = devm_platform_ioremap_resource(pdev, 1);
> > +	if (IS_ERR(edp->tx0))
> > +		return PTR_ERR(edp->tx0);
> > +
> > +	edp->tx1 = devm_platform_ioremap_resource(pdev, 2);
> > +	if (IS_ERR(edp->tx1))
> > +		return PTR_ERR(edp->tx1);
> > +
> > +	edp->pll = devm_platform_ioremap_resource(pdev, 3);
> > +	if (IS_ERR(edp->pll))
> > +		return PTR_ERR(edp->pll);
> > +
> > +	edp->clks[0].id = "aux";
> > +	edp->clks[1].id = "cfg_ahb";
> > +	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	edp->supplies[0].supply = "vdda-phy";
> > +	edp->supplies[1].supply = "vdda-pll";
> > +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(edp->supplies),
> > edp->supplies);
> > +	if (ret)
> > +		return ret;
> 
> I believe, the combination of the number of regulator and clk resources may
> vary based on the platform.
> I think we should not fail probe if all these resources are not present in
> the device tree file.
> I think, these resources can be optional. We can get these resources if they
> are present in the device tree file and enable them as required.
> 

It's quite helpful to the DTS writer to actually encode in the driver
which resources the driver expects and provide useful error messages
when these expectations aren't met - so I think in line with most other
drivers this should be decided based on the compatible.

What clocks and regulators do you have on sc7280?


Thanks for the feedback, I see that I have a few more pieces of feedback
from others that I need to incorporate. I'll make sure to do that and
repost this patch shortly.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
