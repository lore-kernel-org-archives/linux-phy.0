Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6101FEB64CD
	for <linux-phy@archiver.kernel.org>; Sat,  7 Sep 2024 17:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oj1IfDS9Dvx4JCW8xvMDJQPM7yQPR3s3C3hRcxqAuo=; b=Ts20wqAB60XZZ/
	ypVS1ygTHiILdlhTmsFxxDxlAwUSxA9wHNpyLOtVqL3BvEfKRNQFPgT5H2zUhLLrH+8HORnJCPEsK
	Rs83VhkL3S8jDLminLAuv/TNLa8rLXPxjcjcwvjpmTonZmRAv2NwsquTIY3b7JJUb6dbaXtGpu7Gu
	6ENvwEKecO6+/XOArkuRSFu+gVqyDKTRv3Cl9Bh87Gl6X1uzBs7wT2F1Dgtj9dhCPuBWxh2g2xRbb
	BgJ8diRpQhogt6e5HUUYObYxa5Tx/5bcQTFdirWtjWNU05xKaP13jtvRUAQFv8sMYx+aFmssA6RQN
	zFCbxb45t1L/Gk73ggLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smzbo-0000000FOhc-45ER;
	Sat, 07 Sep 2024 17:52:28 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smzbm-0000000FOhB-2QgB
	for linux-phy@lists.infradead.org;
	Sat, 07 Sep 2024 17:52:27 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6d6a3ab427aso24195847b3.2
        for <linux-phy@lists.infradead.org>; Sat, 07 Sep 2024 10:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725731545; x=1726336345; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pmfUXum+hMGBOXSX617klpzb0zjjyzayHt/KE016mEU=;
        b=F5xTlhKprSI0eeyGb3qAc0fgHMqOF1MX7VI8wl1LxN5cqFrxaYKLtZGKn3sbEMUPkc
         gEchMEKilBn40OYkpr6JxdYgM+NGMTC57hdEbGxFGLmOdNonNYuNO41Nmu9jcJLc51VH
         HZmJHFkfOMta0j4TgNFBjnpoMz/LyG7agxGC3/nXfsnOyimmgdnkgSkfwA5o6BN4KaBa
         L+XqoYDVZX7d1J0qibo5i6FSMNkeSfUuTTadrReNQXtcndlFI0Ms3jC++KYa2XG3UVuU
         RkP/RGH0uYGq4SJlQB4BAOFjAV6qbJTEv77I7dMbo4N7dctbRcBVg1L+ydhFTyZvFD9A
         EPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725731545; x=1726336345;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pmfUXum+hMGBOXSX617klpzb0zjjyzayHt/KE016mEU=;
        b=fpHF8Rfkv3f4/6bSCJwFdRwV4balJNZstfBn7U9pi+EeMl5LjjqwcdFpTcQVccP4Yv
         WT2fwNci6V+shNMGGBL7tpkZVps9aOWc3a8Csyj/Phm4/y4RyhQthwgusqJNIZalrQrK
         a35hpq9e4bLHgiIkRiWUUKZB8LEJY+Me4UaYd5F7DvDRGAl6smNcjqymxQ3+xz+uUYCq
         eMOa8/qQ3MnqPuWQWjhZ+FwEaYfRfJEPzgx8MKw7AbkOdnNN7w/d+yjRKCeaogRVphQ4
         xgEj01St/K/RJd+R+vb9bAJUp7L8El8VsvOBlhn6emIwYBzC4h4YEf1fZLbFTA04Ce4c
         hiXw==
X-Forwarded-Encrypted: i=1; AJvYcCXdwGZbrDCh68KrLXKFUPTBgT7zjpNDWOngqC+YFeS2OrpW1RhnQrmJk3ny2okfbpI/T0G3d7zRkoY=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz0kqN8MQDHJ23oEOykwqzRmxBGczGNzZWgas5PvWEJkt9V/kG
	Qd0XN2xtXcCswP9BxvB70PDJurD1e5rf+gCqVgB1dHibTMHW5kJGQO3r2W4ZGXEvM4q8o17eaa+
	khR8ukI0WoJNeLAMB8YIkUKcMaMw8cTR1V4FZkg==
X-Google-Smtp-Source: AGHT+IESE/nI8Bxzeh7UNT9DbmSMYE6dgAE/AysGBHexnA1PwCtiJcPuwdEeKbrhyv24ijKDBUrx3TYJPr8W6PNDuVw=
X-Received: by 2002:a05:690c:f:b0:64a:90fe:911e with SMTP id
 00721157ae682-6db45154290mr63873167b3.31.1725731544986; Sat, 07 Sep 2024
 10:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
In-Reply-To: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 7 Sep 2024 20:52:14 +0300
Message-ID: <CAA8EJpqw6pB4d_zQyYdhq9_prLnh+mLMdRSzJ+5EvAjT9wi86A@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_105226_669989_4456D1B5 
X-CRM114-Status: GOOD (  27.88  )
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

On Sat, 7 Sept 2024 at 18:25, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Enable runtime PM support by adding proper ops which will handle the
> clocks and regulators. These resources will now be handled on power_on and
> power_off instead of init and exit PHY ops. Also enable these resources on
> probe in order to balance out the disabling that is happening right after.
> Prevent runtime PM from being ON by default as well.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 105 ++++++++++++++++++++++++++----------
>  1 file changed, 77 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index da2b32fb5b45..3affeef261bf 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -192,14 +192,6 @@ static int qcom_edp_phy_init(struct phy *phy)
>         int ret;
>         u8 cfg8;
>
> -       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> -       if (ret)
> -               return ret;
> -
> -       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> -       if (ret)
> -               goto out_disable_supplies;
> -
>         writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
>                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
>                edp->edp + DP_PHY_PD_CTL);
> @@ -246,11 +238,6 @@ static int qcom_edp_phy_init(struct phy *phy)
>         msleep(20);
>
>         return 0;
> -
> -out_disable_supplies:
> -       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> -
> -       return ret;
>  }
>
>  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> @@ -721,6 +708,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>         u32 val;
>         u8 cfg1;
>
> +       pm_runtime_get_sync(&phy->dev);
> +
>         ret = edp->cfg->ver_ops->com_power_on(edp);
>         if (ret)
>                 return ret;
> @@ -841,6 +830,8 @@ static int qcom_edp_phy_power_off(struct phy *phy)
>
>         writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
>
> +       pm_runtime_put(&phy->dev);
> +
>         return 0;
>  }
>
> @@ -856,23 +847,12 @@ static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submod
>         return 0;
>  }
>
> -static int qcom_edp_phy_exit(struct phy *phy)
> -{
> -       struct qcom_edp *edp = phy_get_drvdata(phy);
> -
> -       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> -       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> -
> -       return 0;
> -}
> -
>  static const struct phy_ops qcom_edp_ops = {
>         .init           = qcom_edp_phy_init,
>         .configure      = qcom_edp_phy_configure,
>         .power_on       = qcom_edp_phy_power_on,
>         .power_off      = qcom_edp_phy_power_off,
>         .set_mode       = qcom_edp_phy_set_mode,
> -       .exit           = qcom_edp_phy_exit,
>         .owner          = THIS_MODULE,
>  };
>
> @@ -1036,6 +1016,32 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>         return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
>  }
>
> +static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
> +{
> +       struct qcom_edp *edp = dev_get_drvdata(dev);
> +
> +       dev_err(dev, "Suspending DP phy\n");

Debug leftovers?

> +
> +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> +
> +       return 0;
> +}
> +
> +static int __maybe_unused qcom_edp_runtime_resume(struct device *dev)
> +{
> +       struct qcom_edp *edp = dev_get_drvdata(dev);
> +       int ret;
> +
> +       dev_err(dev, "Resuming DP phy\n");

Debug leftovers?

> +
> +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> +       if (ret)
> +               return ret;
> +
> +       return clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);

Missing error handling

> +}
> +
>  static int qcom_edp_phy_probe(struct platform_device *pdev)
>  {
>         struct phy_provider *phy_provider;
> @@ -1091,20 +1097,57 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>                 return ret;
>         }
>
> -       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> -       if (ret)
> +       ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
> +       if (ret) {
> +               dev_err(dev, "failed to enable regulators, err=%d\n", ret);
>                 return ret;
> +       }
> +
> +       ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> +       if (ret) {
> +               dev_err(dev, "failed to enable clocks, err=%d\n", ret);
> +               goto err_disable_regulators;
> +       }

Please use pm_runtime_get_sync() instead().

> +
> +       ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
> +       if (ret) {
> +               dev_err(dev, "failed to register PHY clocks, err=%d\n", ret);
> +               goto err_disable_clocks;
> +       }
>
>         edp->phy = devm_phy_create(dev, pdev->dev.of_node, &qcom_edp_ops);
>         if (IS_ERR(edp->phy)) {
>                 dev_err(dev, "failed to register phy\n");
> -               return PTR_ERR(edp->phy);
> +               ret = PTR_ERR(edp->phy);
> +               goto err_disable_clocks;
>         }
>
> +       pm_runtime_set_active(dev);
> +       ret = devm_pm_runtime_enable(dev);

If this handles earlier, you don't need to call pm_runtime_set_active() manually

> +       if (ret)
> +               goto err_disable_clocks;
> +       /*
> +        * Prevent runtime pm from being ON by default. Users can enable
> +        * it using power/control in sysfs.

why?

> +        */
> +       pm_runtime_forbid(dev);
> +
> +       dev_set_drvdata(dev, edp);
>         phy_set_drvdata(edp->phy, edp);
>
>         phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> -       return PTR_ERR_OR_ZERO(phy_provider);
> +       if (IS_ERR(phy_provider))
> +               goto err_disable_clocks;
> +
> +       return 0;
> +
> +err_disable_clocks:
> +       clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> +
> +err_disable_regulators:
> +       regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);

Ideally this should be handled by pm_runtime. Or at least by pm_runtime_put().

> +
> +       return ret;
>  }
>
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
> @@ -1117,10 +1160,16 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
>  };
>  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
>
> +static const struct dev_pm_ops qcom_edp_pm_ops = {
> +       SET_RUNTIME_PM_OPS(qcom_edp_runtime_suspend,
> +                          qcom_edp_runtime_resume, NULL)
> +};
> +
>  static struct platform_driver qcom_edp_phy_driver = {
>         .probe          = qcom_edp_phy_probe,
>         .driver = {
>                 .name   = "qcom-edp-phy",
> +               .pm     = &qcom_edp_pm_ops,
>                 .of_match_table = qcom_edp_phy_match_table,
>         },
>  };
>
> ---
> base-commit: 9aaeb87ce1e966169a57f53a02ba05b30880ffb8
> change-id: 20240907-phy-qcom-edp-enable-runtime-pm-6fad07af8947
>
> Best regards,
> --
> Abel Vesa <abel.vesa@linaro.org>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
