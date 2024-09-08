Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC83CD4F4C
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 18:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jZ67ujab2wXKlEM2soG6zjQIOGq/hYxWL4kkRHUkv4=; b=rrlW8KIYZ3+w12
	XLQ3xvYKmPYhGlfYm1MYDbeWoz6Yc2yzWlEAx7Dz2P1DRmcJLIuzrte6lV2RjAPuKa5pQ/HoCuVGC
	v6wahaIR0F8iEdIdwI7MhvOlVh6sCvY7Dmi1ov9lc1p+juF1PKg14qr7NwMWDwGuaZ/iyNiJkb/j5
	n80YRVWL83mwixWEsWMoh5X9KzetuBJfUYqmxLtuSKXAGkUXUDaXBG55uUhrpUAx413EUIBsxLtnz
	iODZsjkT9cdyUxPoytIjc7blkvb9TP11MJyB6uNcBzu0kTNRQ/p5eUng3ND2aj+sGksGui+WZgo4O
	e9lJZTA6vCEMqjOdGGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snMYp-0000000HEf6-3R63;
	Sun, 08 Sep 2024 18:22:55 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snMYl-0000000HEe6-2Se6
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 18:22:53 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a8d29b7edc2so158186166b.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Sep 2024 11:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725819769; x=1726424569; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e2idfAWkFdYYhqtf5N/5jWe/6MHCVAFh03fQfQe/bH4=;
        b=Wm3jeoxSh027wRtVYbxmRG7j0TEQ83XTQk1/Iy+CGBAKn9uwZTcp7i5lpnGaCe/te9
         UnOF2KYQpGt2SX7+ZFkzTDVX6Ydb4X3kjkA/Rw/bnworwsH7NLUCEfnKzAZxkvvc1Z3d
         AGCdzamT1vAAyxdY7hL9IGYPeT0GZ1GJbdBjOJX5OAWlHhXDNEj5o51kPbTwgtm8RIa7
         yip4C0M02RoAWWCeXkBDFeFqn98by9z6v8sveiFelkIjRnEc0RweOOtECLHBNN3sWsSK
         kCplus41yuJMOz2M4ylHg/cSsUwfuI9RD7DaMt8fIH6l7beTBI7tcXSNp4qp5swv1Pju
         fkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725819769; x=1726424569;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2idfAWkFdYYhqtf5N/5jWe/6MHCVAFh03fQfQe/bH4=;
        b=lSGLSzF2uSespsZG9R7vrVU4MoEoFPHToiWVyxBZ0hbEJi+Uef7cs8CfIdNlSETEQV
         ODlXf/Q+M4CbFgK1I4JPTaM7tj6uzDMCKN8OewxzT/1MLSM/hsWo21o5dQqrYz4Rka1q
         5eH2V66lpj+dYuYWU1zoZqOmnMZzOipArnSGAGgR37FtVlG4HbqhipNuQF9k1YTJ/KU7
         Wuz22iPvOOpQCtbT3olB/GOpawX6CHTVUvu2Tt1dZLBiRy5RzAeEnfT0DakBlGp+ckyV
         a7X/UbIwzmbA5ZunS/Qv4ddOlezBECKWhoNk+sujmQjhw+wzK0HRBN5Y5hMaNIrzA3u0
         JK+g==
X-Forwarded-Encrypted: i=1; AJvYcCW3LAKZq98LMNOTsRQC1vbGRx6qSwg8aB3Jrz2u9pA43G/eVwnFg4FeYNukHk6QBFXKe3UbtKUPfHY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrfJihkACqN976I/GSNoeuXZGLvJe8/h+UVhR+LRiel2YqKQ/Y
	P/MFWwDgclN81UsU9tW4BWmt7n1swahvqbRqJrqwIP9Ywy12vhzXRSf1N4L1YFw=
X-Google-Smtp-Source: AGHT+IHSxs4pKNJuIObymEtcBuUC4cen0FYSqMItRehwPjNMnvp9O6H5yttlWIcPql9O05MV6UzF1Q==
X-Received: by 2002:a17:907:72d1:b0:a86:8f66:e5cf with SMTP id a640c23a62f3a-a8a885bfcb7mr1062124766b.2.1725819768569;
        Sun, 08 Sep 2024 11:22:48 -0700 (PDT)
Received: from linaro.org ([84.232.173.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25cf4a1fsm232213366b.181.2024.09.08.11.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 11:22:48 -0700 (PDT)
Date: Sun, 8 Sep 2024 21:22:46 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <Zt3rdqPs4Kpa4O3T@linaro.org>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <v6jzz6q5eutbmdy6vwagdhenjnvxucf3u3nl5qdjte65wlc77e@tzvxcm3xnuht>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <v6jzz6q5eutbmdy6vwagdhenjnvxucf3u3nl5qdjte65wlc77e@tzvxcm3xnuht>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_112251_669164_981248D9 
X-CRM114-Status: GOOD (  33.81  )
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

On 24-09-07 22:19:42, Bjorn Andersson wrote:
> On Sat, Sep 07, 2024 at 06:25:21PM GMT, Abel Vesa wrote:
> > Enable runtime PM support by adding proper ops which will handle the
> > clocks and regulators. These resources will now be handled on power_on and
> > power_off instead of init and exit PHY ops. Also enable these resources on
> > probe in order to balance out the disabling that is happening right after.
> 
> Sounds good, I assume there's a good reason for doing this?

Replied to Dmitry's comment about this already, but will summarize here
as well. Basically, this PHY is usually left enabled as part of display
SS by the bootloader on most of the platforms it is used. My rationale
here was initially that maybe incrementing device's usage counter would
be wrong considering that it is already enabled. But then enabling
clocks and regulators here would move the wrong logic to their generic
framework. This I haven't thought through initially. So I decided to
just drop the votes entirely on probe. The resources will be enabled on
power_on via runtime PM get call.

> 
> Please provide a proper problem description, as defined in:
> https://docs.kernel.org/process/submitting-patches.html#describe-your-changes

Yep, will describe the impact/necessity better in the next version.

> 
> > Prevent runtime PM from being ON by default as well.
> > 
> 
> Why?

Also replied to Dmitry to his similar comment. Long story short, if any
of the platforms that use this PHY have any missing/wrong resources
voted for, it might render display broken on the first runtime suspend,
if runtime PM is allowed by default. Plus, all other Qcom PHY drivers
follow the same logic. Anyway, will drop in the next version.

> 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 105 ++++++++++++++++++++++++++----------
> >  1 file changed, 77 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index da2b32fb5b45..3affeef261bf 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -192,14 +192,6 @@ static int qcom_edp_phy_init(struct phy *phy)
> >  	int ret;
> >  	u8 cfg8;
> >  
> > -	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > -	if (ret)
> > -		return ret;
> > -
> > -	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > -	if (ret)
> > -		goto out_disable_supplies;
> > -
> >  	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> >  	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> >  	       edp->edp + DP_PHY_PD_CTL);
> > @@ -246,11 +238,6 @@ static int qcom_edp_phy_init(struct phy *phy)
> >  	msleep(20);
> >  
> >  	return 0;
> > -
> > -out_disable_supplies:
> > -	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > -
> > -	return ret;
> >  }
> >  
> >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> > @@ -721,6 +708,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> >  	u32 val;
> >  	u8 cfg1;
> >  
> > +	pm_runtime_get_sync(&phy->dev);
> > +
> >  	ret = edp->cfg->ver_ops->com_power_on(edp);
> >  	if (ret)
> >  		return ret;
> > @@ -841,6 +830,8 @@ static int qcom_edp_phy_power_off(struct phy *phy)
> >  
> >  	writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
> >  
> > +	pm_runtime_put(&phy->dev);
> > +
> >  	return 0;
> >  }
> >  
> > @@ -856,23 +847,12 @@ static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submod
> >  	return 0;
> >  }
> >  
> > -static int qcom_edp_phy_exit(struct phy *phy)
> > -{
> > -	struct qcom_edp *edp = phy_get_drvdata(phy);
> > -
> > -	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > -	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > -
> > -	return 0;
> > -}
> > -
> >  static const struct phy_ops qcom_edp_ops = {
> >  	.init		= qcom_edp_phy_init,
> >  	.configure	= qcom_edp_phy_configure,
> >  	.power_on	= qcom_edp_phy_power_on,
> >  	.power_off	= qcom_edp_phy_power_off,
> >  	.set_mode	= qcom_edp_phy_set_mode,
> > -	.exit		= qcom_edp_phy_exit,
> >  	.owner		= THIS_MODULE,
> >  };
> >  
> > @@ -1036,6 +1016,32 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> >  	return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
> >  }
> >  
> > +static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
> > +{
> > +	struct qcom_edp *edp = dev_get_drvdata(dev);
> > +
> > +	dev_err(dev, "Suspending DP phy\n");
> > +
> > +	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > +	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused qcom_edp_runtime_resume(struct device *dev)
> > +{
> > +	struct qcom_edp *edp = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	dev_err(dev, "Resuming DP phy\n");
> > +
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > +}
> > +
> >  static int qcom_edp_phy_probe(struct platform_device *pdev)
> >  {
> >  	struct phy_provider *phy_provider;
> > @@ -1091,20 +1097,57 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> >  		return ret;
> >  	}
> >  
> > -	ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > -	if (ret)
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable regulators, err=%d\n", ret);
> >  		return ret;
> > +	}
> > +
> > +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable clocks, err=%d\n", ret);
> > +		goto err_disable_regulators;
> > +	}
> > +
> > +	ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > +	if (ret) {
> > +		dev_err(dev, "failed to register PHY clocks, err=%d\n", ret);
> > +		goto err_disable_clocks;
> > +	}
> >  
> >  	edp->phy = devm_phy_create(dev, pdev->dev.of_node, &qcom_edp_ops);
> >  	if (IS_ERR(edp->phy)) {
> >  		dev_err(dev, "failed to register phy\n");
> > -		return PTR_ERR(edp->phy);
> > +		ret = PTR_ERR(edp->phy);
> > +		goto err_disable_clocks;
> >  	}
> >  
> > +	pm_runtime_set_active(dev);
> > +	ret = devm_pm_runtime_enable(dev);
> > +	if (ret)
> > +		goto err_disable_clocks;
> > +	/*
> > +	 * Prevent runtime pm from being ON by default. Users can enable
> > +	 * it using power/control in sysfs.
> 
> That is what this call do, please describe why it's done instead.

Will drop, as mentioned above.

> 
> Regards,
> Bjorn
> 
> > +	 */
> > +	pm_runtime_forbid(dev);
> > +
> > +	dev_set_drvdata(dev, edp);
> >  	phy_set_drvdata(edp->phy, edp);
> >  
> >  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> > -	return PTR_ERR_OR_ZERO(phy_provider);
> > +	if (IS_ERR(phy_provider))
> > +		goto err_disable_clocks;
> > +
> > +	return 0;
> > +
> > +err_disable_clocks:
> > +	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > +
> > +err_disable_regulators:
> > +	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +
> > +	return ret;
> >  }
> >  
> >  static const struct of_device_id qcom_edp_phy_match_table[] = {
> > @@ -1117,10 +1160,16 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
> >  };
> >  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
> >  
> > +static const struct dev_pm_ops qcom_edp_pm_ops = {
> > +	SET_RUNTIME_PM_OPS(qcom_edp_runtime_suspend,
> > +			   qcom_edp_runtime_resume, NULL)
> > +};
> > +
> >  static struct platform_driver qcom_edp_phy_driver = {
> >  	.probe		= qcom_edp_phy_probe,
> >  	.driver = {
> >  		.name	= "qcom-edp-phy",
> > +		.pm	= &qcom_edp_pm_ops,
> >  		.of_match_table = qcom_edp_phy_match_table,
> >  	},
> >  };
> > 
> > ---
> > base-commit: 9aaeb87ce1e966169a57f53a02ba05b30880ffb8
> > change-id: 20240907-phy-qcom-edp-enable-runtime-pm-6fad07af8947
> > 
> > Best regards,
> > -- 
> > Abel Vesa <abel.vesa@linaro.org>
> > 
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
