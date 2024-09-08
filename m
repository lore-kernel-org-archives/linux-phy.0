Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99498E6FE49
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 18:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+L7qEKNe3zFIkQ+e90TZjVmSLb7FeUbbK3ggR+qyPfk=; b=vB3L0yVDv11sUI
	eWxPIJALB292b0sAmIQFHGKqPW32BXZEV1rucLwobpp3197o/O66DOdhpLlr1FD5grNYBKLoiKOPO
	BukuR1pOzdkRTOSZscuKdgll6ozkRE73XzegGHZeZBa+PiOuFr4ncdTeJf+mLo8OYFZhxXhWtvMzh
	CJZB20w7ZUwEPL2VjPF0M4nnZS0+UmqJAJ3EIco+rO9lo3GBrq4yQreNSf4jlsdclwm0WuBoVWaQq
	r2fxM66bqbw7w3JsS6I50uIITpMVrPNUWbPQoXAvEpBnPT5yln/+XgRwXw6i1C+XpAzttTa1grg3n
	e4FNOiz7/ly/JzlkVadw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snN4M-0000000HHBG-16eJ;
	Sun, 08 Sep 2024 18:55:30 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snN4J-0000000HHAZ-0udZ
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 18:55:29 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a8a7596b7dfso590708666b.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Sep 2024 11:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725821725; x=1726426525; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TZqIGddUBas03ff3I6BsSNqLWw68X6NTJ5NUnBgSAJs=;
        b=F0RQvP5Wq1sl/tnt5RrNmgK+sKExtWBLHitgixTHiNBb4HAwGIXV9ZdZP8IqzG+X6m
         GomxpWA50kuaen0OcfIebsqEZn/gUIcRAT2tkonLh3g1udNwwbpRYv8uxy6gQQK55fp2
         80hqtTH0out+hVulpfXCXWwEHGiFIEgkJRmYqLDT2WFYoDoYfJjD8iI3XZn9emUOuBnh
         KJDtdbFqjlH1hahCj29AgxxGpYmD2Ra82WUqI8CMQbYNKDTynqhITnQc6hzMmwsFznuC
         ss/baOSWeaom4L+U/elBSCepoI08bAvIbZG96T22A9nZsaJdmyk1Dkon27P2i98epbrP
         mOow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725821725; x=1726426525;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZqIGddUBas03ff3I6BsSNqLWw68X6NTJ5NUnBgSAJs=;
        b=ZrqXPPV6sjmppveHDDaewW4ic3QnjEzemskitMlP1ULryQv3JfnA3AHZ3BL3m6Krk9
         EUtUtvdjNBMBRd5ZB/zTF9VpIVfRiMyKCojY3W3qrbpwdPDT7H19bwOy8HacAcaFKWZm
         0VVXNMDeJFg+OzYdFZohnJw9Tks5sy6FgJt1S0pBACakskg3+jiYcQgH/ByAie/Vpg5i
         zCP+IP4I6iNCgcN6RhULjByYMQIbrNrirVNQvSyNlo9PBsFX8wiuvkoBVpzE3fct81jb
         ecABYh4u9Oix5gX59GtbhS/ReM9qTCZ9qAcRouDfQJKv42mqV6qjvVt9rP2vLUGNahSw
         gMrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhLHGgaUhLJBlthy/d3G0c3T+TGZIoirUE0EcDBc/OhOJga4eJa3JaExk6MP4RTAZH4++UWpoHUdg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoNcb5r4Q0eO1ld0bwZ5iGwGh2d6lLbghCUfhD7dHrrl4Vy9Lv
	mfhlovij2sJM3ayP5Vg1SdloB1HdwHf+U4Uu8dxXPl1/9bFQlHTRAtWfKrnmV/M=
X-Google-Smtp-Source: AGHT+IETZqM2pc1rLuzoyDSyX/OFqGWUSsTan/jxSxZruPDYvwhZl5X8EVMtgIHXYzE+I2N7GQc1qw==
X-Received: by 2002:a17:907:3da4:b0:a80:c0ed:2145 with SMTP id a640c23a62f3a-a8a85f2ee3dmr874155266b.2.1725821724657;
        Sun, 08 Sep 2024 11:55:24 -0700 (PDT)
Received: from linaro.org ([84.232.173.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25c73c00sm236188466b.101.2024.09.08.11.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 11:55:24 -0700 (PDT)
Date: Sun, 8 Sep 2024 21:55:22 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <Zt3zGg6VhZJ7qdgz@linaro.org>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <CAA8EJpqw6pB4d_zQyYdhq9_prLnh+mLMdRSzJ+5EvAjT9wi86A@mail.gmail.com>
 <Zt3pFdndtTw/nbgs@linaro.org>
 <CAA8EJppTp5S1L-rHKDW58uXQO08p6o=aNbE3kA9UjVKZsyJ-Jw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJppTp5S1L-rHKDW58uXQO08p6o=aNbE3kA9UjVKZsyJ-Jw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_115527_292634_4CD81442 
X-CRM114-Status: GOOD (  50.32  )
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

On 24-09-08 21:43:01, Dmitry Baryshkov wrote:
> On Sun, 8 Sept 2024 at 21:12, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > On 24-09-07 20:52:14, Dmitry Baryshkov wrote:
> > > On Sat, 7 Sept 2024 at 18:25, Abel Vesa <abel.vesa@linaro.org> wrote:
> > > >
> > > > Enable runtime PM support by adding proper ops which will handle the
> > > > clocks and regulators. These resources will now be handled on power_on and
> > > > power_off instead of init and exit PHY ops. Also enable these resources on
> > > > probe in order to balance out the disabling that is happening right after.
> > > > Prevent runtime PM from being ON by default as well.
> > > >
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-edp.c | 105 ++++++++++++++++++++++++++----------
> > > >  1 file changed, 77 insertions(+), 28 deletions(-)
> > > >
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > index da2b32fb5b45..3affeef261bf 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c

[...]

> > > > +}
> > > > +
> > > >  static int qcom_edp_phy_probe(struct platform_device *pdev)
> > > >  {
> > > >         struct phy_provider *phy_provider;
> > > > @@ -1091,20 +1097,57 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > > >                 return ret;
> > > >         }
> > > >
> > > > -       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > > > -       if (ret)
> > > > +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > > > +       if (ret) {
> > > > +               dev_err(dev, "failed to enable regulators, err=%d\n", ret);
> > > >                 return ret;
> > > > +       }
> > > > +
> > > > +       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > > > +       if (ret) {
> > > > +               dev_err(dev, "failed to enable clocks, err=%d\n", ret);
> > > > +               goto err_disable_regulators;
> > > > +       }
> > >
> > > Please use pm_runtime_get_sync() instead().
> > >
> >
> > So let me explain how I thought this through first. This DP PHY is
> > usually used on platforms where display is left enabled by the
> > bootloader. So doing pm_runtime_get_sync would mean we increment the
> > device's usage counter while it is known to be already enabled, even if
> > genpd doesn't consider it so. So doing set_active instead would be more
> > accurate. Now, for the regulator and clock generic frameworks, that
> > seemed OK to do at the time. Now I can see that the same argument can be
> > made for those as well. So I'm thinking maybe I just drop the enable
> > here and don't do _get_sync, but rather rely on the resume being done
> > on power on instead.
> 
> Please don't rely on the bootloader. The device should be in the
> resumed state when registering clocks. Also devm_pm_runtime_enable()
> should also be called before, so that the CCF makes note of PM being
> enabled.

Fair enough. Will do that.

> 
> >
> > > > +
> > > > +       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> > > > +       if (ret) {
> > > > +               dev_err(dev, "failed to register PHY clocks, err=%d\n", ret);
> > > > +               goto err_disable_clocks;
> > > > +       }
> > > >
> > > >         edp->phy = devm_phy_create(dev, pdev->dev.of_node, &qcom_edp_ops);
> > > >         if (IS_ERR(edp->phy)) {
> > > >                 dev_err(dev, "failed to register phy\n");
> > > > -               return PTR_ERR(edp->phy);
> > > > +               ret = PTR_ERR(edp->phy);
> > > > +               goto err_disable_clocks;
> > > >         }
> > > >
> > > > +       pm_runtime_set_active(dev);
> > > > +       ret = devm_pm_runtime_enable(dev);
> > >
> > > If this handles earlier, you don't need to call pm_runtime_set_active() manually
> > >
> >
> > Enable and set_active are two separate things. Maybe I'm
> > misunderstanding your comment.
> 
> Yeah, I wrote something strange here. I meant that if enable is called
> earlier and then if the device is resumed, there is no need to call
> set_active.

I guess you meant "that if _get_sync is called earlier and then ...", right?
Enable won't resume it.

> 
> >
> > > > +       if (ret)
> > > > +               goto err_disable_clocks;
> > > > +       /*
> > > > +        * Prevent runtime pm from being ON by default. Users can enable
> > > > +        * it using power/control in sysfs.
> > >
> > > why?
> > >
> >
> > OK, so this is a tricky one. If there is any platform out there that
> > makes use of this PHY but the resources are not properly described, we
> > might get in trouble. So I was thinking that maybe we don't risk that
> > but let the user enable it via sysfs. That way, this patch will not
> > break by default such platforms.
> 
> If the platform doesn't describe resources, it is broken, there is no
> need to support it.
> >
> > Also, this would be in line with the rest of the other Qcom PHYs.
> 
> I think it's a bit of a cargo cult. Such code was added in 2018 and
> then it was c&p'ed since that time.

OK, will drop it.

> 
> >
> > > > +        */
> > > > +       pm_runtime_forbid(dev);
> > > > +
> > > > +       dev_set_drvdata(dev, edp);
> > > >         phy_set_drvdata(edp->phy, edp);
> > > >
> > > >         phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> > > > -       return PTR_ERR_OR_ZERO(phy_provider);
> > > > +       if (IS_ERR(phy_provider))
> > > > +               goto err_disable_clocks;
> > > > +
> > > > +       return 0;
> > > > +
> > > > +err_disable_clocks:
> > > > +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > > > +
> > > > +err_disable_regulators:
> > > > +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> > >
> > > Ideally this should be handled by pm_runtime. Or at least by pm_runtime_put().
> >
> > Will drop entirely. Again, lets not enable anything on probe for now.
> 
> NAK.

OK, your argument above about the registering of clocks needing the
PHY resumed makes sense. Will do _get_sync on probe.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
