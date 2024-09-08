Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C4BE6FE49
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 18:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A+y6Nyk3fWr3vCUJ3U48Q11TImo+EEOPa28YEI6QR8=; b=5EhPYPyLsaMUNb
	bUcaEIF1DfJrkA4phUHxy8JabeLXYdz6teqpS/i6c/vwaMr2ctPUEDDdFd2uhFrakznMRppx6Xqys
	/rs19o4oc6QBCTtVMPHN+WlQKHk0cOVZ9FZDNNLFMqJkxMZKk8B12/8DxFTZallCY6peYzutmLkrx
	pEC/rGLJF7ubFBNk1EoR7BwWzv2H6j848NvIWFUAA5yGaH104TU6fUYv3oyHAR6yMZwTMhtHnQiPS
	66hHBX31As+QPK4xHCfVb3dDemtlW97rS936IN+HB/SEtvkgssOO1G+Dto2Ci+LVpsFnHbZS5c6k3
	bs89ZZbHZrJK0wUpSlOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snMP0-0000000HE7S-02oP;
	Sun, 08 Sep 2024 18:12:46 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snMOw-0000000HE71-0kHf
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 18:12:44 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5c26852af8fso4481526a12.2
        for <linux-phy@lists.infradead.org>; Sun, 08 Sep 2024 11:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725819160; x=1726423960; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yLpbA80LmxTHG9gW0hEcEP8bDOpNZeMU9QCy58Ejxfk=;
        b=zKnuSMQhz16YQmkd44O2F8sGElte1mwH8PAXxixOyFG/pczN3AnGVR7IipM6yeYUwe
         Am7WPKD/C5QePW69a2bkTefgl8Qswg9ZU7gzvIbdov9rZSh1GaaDe/NbOJvhMysOOqYw
         LnmqVjkMNi9dqD57nTZ0vHAfK7YgIbgXZHuxKJz9eBsxMzXknK4DODqto3wj4yos0HRa
         Nn7GLmZKLuKPW63hykkVmcG/fz5eEJocxNLyBje3D6ngugl5DE8TSrvAjfCOgD5G5aBn
         uw5z53sGrSFspJIAR1FNeJezlACbbEYxQPrA+5THYMEwutc3bXlrPfTAwbZxAijXjj0V
         s0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725819160; x=1726423960;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLpbA80LmxTHG9gW0hEcEP8bDOpNZeMU9QCy58Ejxfk=;
        b=OTJLv2a5iq/kfmzArnlsoRzxFHxu+qZVYQwxPLqE2+CL705LGxtmIPvW4gr3O/10CN
         RPZF8zWY5VW5MHr4zWu+Ng5Stgd7hsbq/wXOxsqTdO3OFhQEkMI3CC1UoeCWB4vTbmks
         /sXy0G/y8EzZ28qG6bM1UjZWk9pIWmJdkRUUy2NOBDbYtb+xbHKNA0BI9lOlqPLYHm/Q
         1Fjj82hEbKZyJq0MV6hVYQi5tP0eQqKrPQB4OF8KvKxHAVqWyEb4HamEAFm20gUwT4OO
         iuMUUH67D5oLP/V6GGLb8vGOYFgJ22RKNZtQou7DodDH6VWZwiHhdZCfuLNs9tv15o43
         63SA==
X-Forwarded-Encrypted: i=1; AJvYcCVEl0NBjZ8foSfe/RVYYZDMl1LsGbQjSmUpmu17iWzGw/zOvgVHz97EmNP50ONCx6u0N7KpanZDUPg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzej8yBLDsZU1jSrAQ0L8P9+GZqOrlmPLTnvm3eWYYmGo3MfwGu
	nD4yqlRIqCYgALJxuE3GGdPTUneFTicB7WfLwOppvNGX+6DNK88jumHSQcP5Ee4=
X-Google-Smtp-Source: AGHT+IGZmYxgGiI70T7NWs+HoEGWThK7q03OcDCcCbtJuh4T+au00Xa5qZUqzPdTJml0KnkDuhKByQ==
X-Received: by 2002:a05:6402:4020:b0:5c3:c548:bb25 with SMTP id 4fb4d7f45d1cf-5c3e964ccc4mr4692004a12.23.1725819158955;
        Sun, 08 Sep 2024 11:12:38 -0700 (PDT)
Received: from linaro.org ([84.232.173.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c3ebd8cc28sm2094903a12.83.2024.09.08.11.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 11:12:38 -0700 (PDT)
Date: Sun, 8 Sep 2024 21:12:37 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <Zt3pFdndtTw/nbgs@linaro.org>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <CAA8EJpqw6pB4d_zQyYdhq9_prLnh+mLMdRSzJ+5EvAjT9wi86A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqw6pB4d_zQyYdhq9_prLnh+mLMdRSzJ+5EvAjT9wi86A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_111242_272091_B56CD815 
X-CRM114-Status: GOOD (  41.73  )
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

On 24-09-07 20:52:14, Dmitry Baryshkov wrote:
> On Sat, 7 Sept 2024 at 18:25, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > Enable runtime PM support by adding proper ops which will handle the
> > clocks and regulators. These resources will now be handled on power_on and
> > power_off instead of init and exit PHY ops. Also enable these resources on
> > probe in order to balance out the disabling that is happening right after.
> > Prevent runtime PM from being ON by default as well.
> >
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
> >         int ret;
> >         u8 cfg8;
> >
> > -       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > -       if (ret)
> > -               return ret;
> > -
> > -       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > -       if (ret)
> > -               goto out_disable_supplies;
> > -
> >         writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> >                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> >                edp->edp + DP_PHY_PD_CTL);
> > @@ -246,11 +238,6 @@ static int qcom_edp_phy_init(struct phy *phy)
> >         msleep(20);
> >
> >         return 0;
> > -
> > -out_disable_supplies:
> > -       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > -
> > -       return ret;
> >  }
> >
> >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> > @@ -721,6 +708,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> >         u32 val;
> >         u8 cfg1;
> >
> > +       pm_runtime_get_sync(&phy->dev);
> > +
> >         ret = edp->cfg->ver_ops->com_power_on(edp);
> >         if (ret)
> >                 return ret;
> > @@ -841,6 +830,8 @@ static int qcom_edp_phy_power_off(struct phy *phy)
> >
> >         writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
> >
> > +       pm_runtime_put(&phy->dev);
> > +
> >         return 0;
> >  }
> >
> > @@ -856,23 +847,12 @@ static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submod
> >         return 0;
> >  }
> >
> > -static int qcom_edp_phy_exit(struct phy *phy)
> > -{
> > -       struct qcom_edp *edp = phy_get_drvdata(phy);
> > -
> > -       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > -       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > -
> > -       return 0;
> > -}
> > -
> >  static const struct phy_ops qcom_edp_ops = {
> >         .init           = qcom_edp_phy_init,
> >         .configure      = qcom_edp_phy_configure,
> >         .power_on       = qcom_edp_phy_power_on,
> >         .power_off      = qcom_edp_phy_power_off,
> >         .set_mode       = qcom_edp_phy_set_mode,
> > -       .exit           = qcom_edp_phy_exit,
> >         .owner          = THIS_MODULE,
> >  };
> >
> > @@ -1036,6 +1016,32 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> >         return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
> >  }
> >
> > +static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
> > +{
> > +       struct qcom_edp *edp = dev_get_drvdata(dev);
> > +
> > +       dev_err(dev, "Suspending DP phy\n");
> 
> Debug leftovers?

Well, I should've made those dev_vdbg instead. 

> 
> > +
> > +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +
> > +       return 0;
> > +}
> > +
> > +static int __maybe_unused qcom_edp_runtime_resume(struct device *dev)
> > +{
> > +       struct qcom_edp *edp = dev_get_drvdata(dev);
> > +       int ret;
> > +
> > +       dev_err(dev, "Resuming DP phy\n");
> 
> Debug leftovers?
> 

See above.

> > +
> > +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +       if (ret)
> > +               return ret;
> > +
> > +       return clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> 
> Missing error handling
> 

Yep, will fix.

> > +}
> > +
> >  static int qcom_edp_phy_probe(struct platform_device *pdev)
> >  {
> >         struct phy_provider *phy_provider;
> > @@ -1091,20 +1097,57 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> >                 return ret;
> >         }
> >
> > -       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > -       if (ret)
> > +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > +       if (ret) {
> > +               dev_err(dev, "failed to enable regulators, err=%d\n", ret);
> >                 return ret;
> > +       }
> > +
> > +       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > +       if (ret) {
> > +               dev_err(dev, "failed to enable clocks, err=%d\n", ret);
> > +               goto err_disable_regulators;
> > +       }
> 
> Please use pm_runtime_get_sync() instead().
> 

So let me explain how I thought this through first. This DP PHY is
usually used on platforms where display is left enabled by the
bootloader. So doing pm_runtime_get_sync would mean we increment the
device's usage counter while it is known to be already enabled, even if
genpd doesn't consider it so. So doing set_active instead would be more
accurate. Now, for the regulator and clock generic frameworks, that
seemed OK to do at the time. Now I can see that the same argument can be
made for those as well. So I'm thinking maybe I just drop the enable
here and don't do _get_sync, but rather rely on the resume being done
on power on instead. 

> > +
> > +       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > +       if (ret) {
> > +               dev_err(dev, "failed to register PHY clocks, err=%d\n", ret);
> > +               goto err_disable_clocks;
> > +       }
> >
> >         edp->phy = devm_phy_create(dev, pdev->dev.of_node, &qcom_edp_ops);
> >         if (IS_ERR(edp->phy)) {
> >                 dev_err(dev, "failed to register phy\n");
> > -               return PTR_ERR(edp->phy);
> > +               ret = PTR_ERR(edp->phy);
> > +               goto err_disable_clocks;
> >         }
> >
> > +       pm_runtime_set_active(dev);
> > +       ret = devm_pm_runtime_enable(dev);
> 
> If this handles earlier, you don't need to call pm_runtime_set_active() manually
> 

Enable and set_active are two separate things. Maybe I'm
misunderstanding your comment.

> > +       if (ret)
> > +               goto err_disable_clocks;
> > +       /*
> > +        * Prevent runtime pm from being ON by default. Users can enable
> > +        * it using power/control in sysfs.
> 
> why?
> 

OK, so this is a tricky one. If there is any platform out there that
makes use of this PHY but the resources are not properly described, we
might get in trouble. So I was thinking that maybe we don't risk that
but let the user enable it via sysfs. That way, this patch will not
break by default such platforms.

Also, this would be in line with the rest of the other Qcom PHYs.

> > +        */
> > +       pm_runtime_forbid(dev);
> > +
> > +       dev_set_drvdata(dev, edp);
> >         phy_set_drvdata(edp->phy, edp);
> >
> >         phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> > -       return PTR_ERR_OR_ZERO(phy_provider);
> > +       if (IS_ERR(phy_provider))
> > +               goto err_disable_clocks;
> > +
> > +       return 0;
> > +
> > +err_disable_clocks:
> > +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > +
> > +err_disable_regulators:
> > +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> 
> Ideally this should be handled by pm_runtime. Or at least by pm_runtime_put().

Will drop entirely. Again, lets not enable anything on probe for now.

> 
> > +
> > +       return ret;
> >  }
> >
> >  static const struct of_device_id qcom_edp_phy_match_table[] = {
> > @@ -1117,10 +1160,16 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
> >  };
> >  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
> >
> > +static const struct dev_pm_ops qcom_edp_pm_ops = {
> > +       SET_RUNTIME_PM_OPS(qcom_edp_runtime_suspend,
> > +                          qcom_edp_runtime_resume, NULL)
> > +};
> > +
> >  static struct platform_driver qcom_edp_phy_driver = {
> >         .probe          = qcom_edp_phy_probe,
> >         .driver = {
> >                 .name   = "qcom-edp-phy",
> > +               .pm     = &qcom_edp_pm_ops,
> >                 .of_match_table = qcom_edp_phy_match_table,
> >         },
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
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
