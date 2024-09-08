Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6426CCD4F4C
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 18:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/BoL8gGGnO3/QRLflcZ6bnw/lQRHYk/CaKQT8wYrLY=; b=nr3PjremIr+LVk
	Evo/OfB7rVCIqgTIZfeym5v+8lQDzKxOHpJc8y1ka/7ZNXwoaG7Ro3yRXSg/1bKMpsDvE30cChu1i
	O/bb3YcWGCgsMyMjlUmV6hwwuZZ6mgZjIEcW++zjcaK+4tanTE6GFTnlvZE7pry9/3mIKEUy4KYYb
	/Zfmq+aKXKXXaa1nfDE6VgfkAOAOgVPK2liMubI/0GhgpvIvWUYeyaRzaqf+xEpPq4whpSNrRfPfw
	yM4QPTIhYtdQ80OD0L0bOhfHv5tzZ7V1abWrjWCQBJN7Er2yNdDYd5sLcN7HfBA8mvFnIPAS5R26H
	pUHnbQNRocw+gYRwKJEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snMsY-0000000HFze-3siJ;
	Sun, 08 Sep 2024 18:43:18 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snMsV-0000000HFyx-2wbE
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 18:43:17 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-6d5893cd721so31803367b3.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Sep 2024 11:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725820993; x=1726425793; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HouJKlzQGlxBZrF/HSs6BlgvBUa0seOB33UUxhYXADs=;
        b=sIq6foBkH7i6WaqEVJw1FwY4Jrm76BdjYfer+1hqSO/In+AzxClvsMjfJbYwgHzjoQ
         POtM9QI7q6J1hfvEhnn8CHXSHYIaSEibQnn3l6IYwb8HQBJ8N2Qy42SVPeSHtLlW6aUU
         bWho/Qosk/WDN6Uqzz0WsNRDdQOY0XhOtI35op1pP9RoRGWUkg72OkG278RBYlzvTP0T
         Kc1ZAzMBjWUIKm9lA8Qp/PAkv1Xf1+GX2hbBjwnnehsuy82bfVPeyOpDBxGWj86ucGBC
         b5Vlg43NgnzqQaqCoYRvqbFWxVSzaZ/NruA2qfaMG/lZFX4UQ+mZKeLTcZzmkq3GKnfP
         s3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725820993; x=1726425793;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HouJKlzQGlxBZrF/HSs6BlgvBUa0seOB33UUxhYXADs=;
        b=WwbUOeZT1P26YMqDwv2AHREIkS7WgDYynk5+/zJGuHlsMEAG3Wq4dz3t9tvHK10pJ4
         1J1wqc1K+k/n1XqD3zMtVoqg5jp+TQaAo5NImguBFRNgGTCQ54APO4SW1pjd0ZC6ann/
         /mKLXgrStrb1AO3JO3gE5kAfa/sOR5MyWUs7bvhpueobN221V9KE/pARRkBk7MdphhBT
         4LZl4gADlp9GAJr1V5ZkryJxxHdY+i8KhBLObDO8xjn3ZqDUn4jD6SfjyYOulPQkgq4g
         kMPzqUKqzs0cI4+gj19CEodMBy2iE0H6vU90jRoz1AUpblaVph5AJMlqGzOeo/s9t3A/
         NftQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrKorl2AyXDM3oVcNevc4Yi4z+sLQvLf5yNNJ/Oi4Z8SR7ji+Qw6Ols8q43pi+Bkg8KpqyClkFg3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxyqS/7J7Yr6yQ13Y/G1G/ZSfNgsQXbydKyQ6WYiyVHQpD7coy
	zlUV/c73D+wQKAxvEa1bdQQOlM0+ateo7j6cjwNhYuB4VVjuhh0NF/gIF6nuum5dLo0y5jmbJBv
	JEg8L7PBuzlu3U4o7m5ScMWzSMZ/XuczqbjAefMiYWlOf7DND
X-Google-Smtp-Source: AGHT+IG1W6C+fuQKfz3zWC6rxecJuU+VR4edb25dZ29Dnw/MjzoK8yMILcI2oxLWfU4UdpTarTU47yOV20v7nDQhmEg=
X-Received: by 2002:a05:690c:b:b0:64a:e7ec:f3d with SMTP id
 00721157ae682-6db44f2c6b1mr121092047b3.18.1725820993008; Sun, 08 Sep 2024
 11:43:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <CAA8EJpqw6pB4d_zQyYdhq9_prLnh+mLMdRSzJ+5EvAjT9wi86A@mail.gmail.com> <Zt3pFdndtTw/nbgs@linaro.org>
In-Reply-To: <Zt3pFdndtTw/nbgs@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 8 Sep 2024 21:43:01 +0300
Message-ID: <CAA8EJppTp5S1L-rHKDW58uXQO08p6o=aNbE3kA9UjVKZsyJ-Jw@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_114315_793267_BEC89332 
X-CRM114-Status: GOOD (  51.84  )
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

On Sun, 8 Sept 2024 at 21:12, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 24-09-07 20:52:14, Dmitry Baryshkov wrote:
> > On Sat, 7 Sept 2024 at 18:25, Abel Vesa <abel.vesa@linaro.org> wrote:
> > >
> > > Enable runtime PM support by adding proper ops which will handle the
> > > clocks and regulators. These resources will now be handled on power_on and
> > > power_off instead of init and exit PHY ops. Also enable these resources on
> > > probe in order to balance out the disabling that is happening right after.
> > > Prevent runtime PM from being ON by default as well.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-edp.c | 105 ++++++++++++++++++++++++++----------
> > >  1 file changed, 77 insertions(+), 28 deletions(-)
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > index da2b32fb5b45..3affeef261bf 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > @@ -192,14 +192,6 @@ static int qcom_edp_phy_init(struct phy *phy)
> > >         int ret;
> > >         u8 cfg8;
> > >
> > > -       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > -       if (ret)
> > > -               return ret;
> > > -
> > > -       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > > -       if (ret)
> > > -               goto out_disable_supplies;
> > > -
> > >         writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> > >                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> > >                edp->edp + DP_PHY_PD_CTL);
> > > @@ -246,11 +238,6 @@ static int qcom_edp_phy_init(struct phy *phy)
> > >         msleep(20);
> > >
> > >         return 0;
> > > -
> > > -out_disable_supplies:
> > > -       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > -
> > > -       return ret;
> > >  }
> > >
> > >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> > > @@ -721,6 +708,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> > >         u32 val;
> > >         u8 cfg1;
> > >
> > > +       pm_runtime_get_sync(&phy->dev);
> > > +
> > >         ret = edp->cfg->ver_ops->com_power_on(edp);
> > >         if (ret)
> > >                 return ret;
> > > @@ -841,6 +830,8 @@ static int qcom_edp_phy_power_off(struct phy *phy)
> > >
> > >         writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
> > >
> > > +       pm_runtime_put(&phy->dev);
> > > +
> > >         return 0;
> > >  }
> > >
> > > @@ -856,23 +847,12 @@ static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submod
> > >         return 0;
> > >  }
> > >
> > > -static int qcom_edp_phy_exit(struct phy *phy)
> > > -{
> > > -       struct qcom_edp *edp = phy_get_drvdata(phy);
> > > -
> > > -       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > > -       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > -
> > > -       return 0;
> > > -}
> > > -
> > >  static const struct phy_ops qcom_edp_ops = {
> > >         .init           = qcom_edp_phy_init,
> > >         .configure      = qcom_edp_phy_configure,
> > >         .power_on       = qcom_edp_phy_power_on,
> > >         .power_off      = qcom_edp_phy_power_off,
> > >         .set_mode       = qcom_edp_phy_set_mode,
> > > -       .exit           = qcom_edp_phy_exit,
> > >         .owner          = THIS_MODULE,
> > >  };
> > >
> > > @@ -1036,6 +1016,32 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> > >         return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
> > >  }
> > >
> > > +static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
> > > +{
> > > +       struct qcom_edp *edp = dev_get_drvdata(dev);
> > > +
> > > +       dev_err(dev, "Suspending DP phy\n");
> >
> > Debug leftovers?
>
> Well, I should've made those dev_vdbg instead.
>
> >
> > > +
> > > +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > > +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static int __maybe_unused qcom_edp_runtime_resume(struct device *dev)
> > > +{
> > > +       struct qcom_edp *edp = dev_get_drvdata(dev);
> > > +       int ret;
> > > +
> > > +       dev_err(dev, "Resuming DP phy\n");
> >
> > Debug leftovers?
> >
>
> See above.
>
> > > +
> > > +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > +       if (ret)
> > > +               return ret;
> > > +
> > > +       return clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> >
> > Missing error handling
> >
>
> Yep, will fix.
>
> > > +}
> > > +
> > >  static int qcom_edp_phy_probe(struct platform_device *pdev)
> > >  {
> > >         struct phy_provider *phy_provider;
> > > @@ -1091,20 +1097,57 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > >                 return ret;
> > >         }
> > >
> > > -       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > > -       if (ret)
> > > +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > +       if (ret) {
> > > +               dev_err(dev, "failed to enable regulators, err=%d\n", ret);
> > >                 return ret;
> > > +       }
> > > +
> > > +       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > > +       if (ret) {
> > > +               dev_err(dev, "failed to enable clocks, err=%d\n", ret);
> > > +               goto err_disable_regulators;
> > > +       }
> >
> > Please use pm_runtime_get_sync() instead().
> >
>
> So let me explain how I thought this through first. This DP PHY is
> usually used on platforms where display is left enabled by the
> bootloader. So doing pm_runtime_get_sync would mean we increment the
> device's usage counter while it is known to be already enabled, even if
> genpd doesn't consider it so. So doing set_active instead would be more
> accurate. Now, for the regulator and clock generic frameworks, that
> seemed OK to do at the time. Now I can see that the same argument can be
> made for those as well. So I'm thinking maybe I just drop the enable
> here and don't do _get_sync, but rather rely on the resume being done
> on power on instead.

Please don't rely on the bootloader. The device should be in the
resumed state when registering clocks. Also devm_pm_runtime_enable()
should also be called before, so that the CCF makes note of PM being
enabled.

>
> > > +
> > > +       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > > +       if (ret) {
> > > +               dev_err(dev, "failed to register PHY clocks, err=%d\n", ret);
> > > +               goto err_disable_clocks;
> > > +       }
> > >
> > >         edp->phy = devm_phy_create(dev, pdev->dev.of_node, &qcom_edp_ops);
> > >         if (IS_ERR(edp->phy)) {
> > >                 dev_err(dev, "failed to register phy\n");
> > > -               return PTR_ERR(edp->phy);
> > > +               ret = PTR_ERR(edp->phy);
> > > +               goto err_disable_clocks;
> > >         }
> > >
> > > +       pm_runtime_set_active(dev);
> > > +       ret = devm_pm_runtime_enable(dev);
> >
> > If this handles earlier, you don't need to call pm_runtime_set_active() manually
> >
>
> Enable and set_active are two separate things. Maybe I'm
> misunderstanding your comment.

Yeah, I wrote something strange here. I meant that if enable is called
earlier and then if the device is resumed, there is no need to call
set_active.

>
> > > +       if (ret)
> > > +               goto err_disable_clocks;
> > > +       /*
> > > +        * Prevent runtime pm from being ON by default. Users can enable
> > > +        * it using power/control in sysfs.
> >
> > why?
> >
>
> OK, so this is a tricky one. If there is any platform out there that
> makes use of this PHY but the resources are not properly described, we
> might get in trouble. So I was thinking that maybe we don't risk that
> but let the user enable it via sysfs. That way, this patch will not
> break by default such platforms.

If the platform doesn't describe resources, it is broken, there is no
need to support it.
>
> Also, this would be in line with the rest of the other Qcom PHYs.

I think it's a bit of a cargo cult. Such code was added in 2018 and
then it was c&p'ed since that time.

>
> > > +        */
> > > +       pm_runtime_forbid(dev);
> > > +
> > > +       dev_set_drvdata(dev, edp);
> > >         phy_set_drvdata(edp->phy, edp);
> > >
> > >         phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> > > -       return PTR_ERR_OR_ZERO(phy_provider);
> > > +       if (IS_ERR(phy_provider))
> > > +               goto err_disable_clocks;
> > > +
> > > +       return 0;
> > > +
> > > +err_disable_clocks:
> > > +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > > +
> > > +err_disable_regulators:
> > > +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> >
> > Ideally this should be handled by pm_runtime. Or at least by pm_runtime_put().
>
> Will drop entirely. Again, lets not enable anything on probe for now.

NAK.

>
> >
> > > +
> > > +       return ret;
> > >  }
> > >
> > >  static const struct of_device_id qcom_edp_phy_match_table[] = {
> > > @@ -1117,10 +1160,16 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
> > >  };
> > >  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
> > >
> > > +static const struct dev_pm_ops qcom_edp_pm_ops = {
> > > +       SET_RUNTIME_PM_OPS(qcom_edp_runtime_suspend,
> > > +                          qcom_edp_runtime_resume, NULL)
> > > +};
> > > +
> > >  static struct platform_driver qcom_edp_phy_driver = {
> > >         .probe          = qcom_edp_phy_probe,
> > >         .driver = {
> > >                 .name   = "qcom-edp-phy",
> > > +               .pm     = &qcom_edp_pm_ops,
> > >                 .of_match_table = qcom_edp_phy_match_table,
> > >         },
> > >  };
> > >
> > > ---
> > > base-commit: 9aaeb87ce1e966169a57f53a02ba05b30880ffb8
> > > change-id: 20240907-phy-qcom-edp-enable-runtime-pm-6fad07af8947
> > >
> > > Best regards,
> > > --
> > > Abel Vesa <abel.vesa@linaro.org>
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
