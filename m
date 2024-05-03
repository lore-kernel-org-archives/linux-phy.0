Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F09CC4345F
	for <linux-phy@archiver.kernel.org>; Fri,  3 May 2024 18:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjGHp0/K8X5kCpuVSN5eQnuuFBOtIKwr38YYbuuF4ag=; b=JF7pVsK7L7gFC0
	F4JbtWHLp0HtAHGS8aGu3shLxbXJqc85S2suQQoziOPdvG4HB/AW3UMAKSmrjMbJ3fMSwnSAwcQs7
	EC8RokJLd0iy8MhjIyrbwjbMxJEsHPP0JJSodS47h7fiIaAnXM3Wh0JyhwJ3iN6GddVVKseg2zHRO
	wTKmL+HAGnXcUBnD+ycdSgg2Bz7ozcV9CtXBEBVV9+C47baSLs6RzT5ihrwABRXs4QFX6fLPwGZBC
	fQF9FJR5az4R4VDtHGz1k92HxMqn1MNW4b3aqt0FbbHKmuWRrCz9muajaOEPe97X1hj4JLXm/1Pd3
	qJnh1SB0N/mGsiITB1tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2xfO-0000000HafR-0iH1;
	Fri, 03 May 2024 18:29:54 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2xfK-0000000Haek-0qwU
	for linux-phy@lists.infradead.org;
	Fri, 03 May 2024 18:29:51 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-de610800da0so5048746276.2
        for <linux-phy@lists.infradead.org>; Fri, 03 May 2024 11:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714760986; x=1715365786; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4c0Xkscfsp+v9YiH2gEmKNwfnNo0YPYHltR5P7xeTEo=;
        b=TUmi441JIR2cqPdVIKq55yW/S+spEflvImrJ6tUk1uqHhADWq5bpJOU+elLAiC9oKp
         yOt4yNToePbuv3zEC358o0cbdgVqtGgJuhyWSJUu9JqRUAe5VuPjb/lKkO6YJj1Ivueg
         qCGnFb5AXBfnKpjf0OUTGCtQfecox541D51yDqKcN3602zEpDGy1eVzvfeCXpe9xx7Sg
         riI9+PtqhR8JSbHVWKLqIYLZdSBaJ8mE44NvztzhmXWNGMfylgKhnKoAd8XhhXNqgK8o
         wMfa+/PBickMKNMYLJfGpvrX7c3y+T/C9bmI9A0squg+HbxGUijZonyHb9M0A7TO6FqS
         mXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714760986; x=1715365786;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4c0Xkscfsp+v9YiH2gEmKNwfnNo0YPYHltR5P7xeTEo=;
        b=Dj1a3se/9fNXbnTkcRLoX4XjyvjP1XxnJ3l4WlnmOMkAH2JGOJOLgWa7wyru2jVs3k
         690/dV8jiSp2F06Ujs3Zql5MAx9Gx0TYiJ9VaBfYGdklr/m73W4JXdFJ8ZJH0wdtJApL
         BcH8tbmcu6izBfwvt5p2uy+IKkOpsMqKo37hrvzkPvdlVJR8jim1ORHKQ87gIRC87G4f
         9NZ5sR/ryXW971YJDLxpwXNTjJSbrsRE4iK4ToHkSGBlScNhyuZdoD0IMqnqpHFSq4Gj
         3MQ/ZVSFEU+f0C+sDrwYo04S6A/coBvRcdkTESh2sMAEIbzLTmMm5llYLVHQkAVwvN7k
         yn4A==
X-Forwarded-Encrypted: i=1; AJvYcCW69+v3nN2m+fp8O7wvTT7Sw0Q6MwmFOfOiLY54N/8HenyPyfA5Zb5efiyH0OP4Vqj5Q/Nw4XeC+3PZQNOJxgst/HFqaK5bAeagawfEeA==
X-Gm-Message-State: AOJu0YxREDkOjf2LCE1eyXsIp7dLWiHuzwlCdTEym5TLddI8q7uG+Aha
	Wk8RycegmeLR90D4DxbpaNpnGpWQ/SlDqDW3KKusnTfrV/GQnncmPzBSlIh7iukBSM1lHnlnm2c
	fQAuelrN+R1fHYukxfUhR4fnRRpdkmD7QJQAu2Q==
X-Google-Smtp-Source: AGHT+IF3PxhjibMh+R8Z/4SVCsOdvyiDuKj7cvIrr+QB0fNzYmuVOiKzWOohmwY6T0mpCF9SV6qRMbHlLl6atTzIFtc=
X-Received: by 2002:a25:bf8e:0:b0:de5:f0ef:7898 with SMTP id
 l14-20020a25bf8e000000b00de5f0ef7898mr4101235ybk.20.1714760986103; Fri, 03
 May 2024 11:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
 <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com> <2f3dd278-02b8-4939-8b75-55c342adcddf@quicinc.com>
In-Reply-To: <2f3dd278-02b8-4939-8b75-55c342adcddf@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 3 May 2024 21:29:34 +0300
Message-ID: <CAA8EJprJfddVGH+tSE=n+7MncfGNULerEidbxdSGd7a14fChvQ@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for
 LDO's used
To: Udipto Goswami <quic_ugoswami@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_112950_281891_A915C988 
X-CRM114-Status: GOOD (  45.95  )
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

On Fri, 3 May 2024 at 08:24, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
>
> Hi Dmitry,
>
> On 5/2/2024 6:42 PM, Dmitry Baryshkov wrote:
> > On Thu, 2 May 2024 at 15:33, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
> >>
> >> The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
> >> If one of the regulators is not voted to the required minimum voltage
> >> for phy to operate, then High speed mode of operation will fail.
> >>
> >> On certain targets like (qcm6490_rb3gen2) where the minimum voltage
> >> of the regulator is lower than the operating voltage of the phy.
> >> If not voted properly, the phy supply would be limited to the min value
> >> of the LDO thereby rendering the phy non-operational.
> >>
> >> The current implementation of the regulators in the Femto PHY is not
> >> setting the load and voltage for each LDO. The appropriate voltages and
> >> loads required for the PHY to operate should be set.
> >
> > Please move min/max voltages to the DTS. There is no need to set them
> > from the driver.
> that also can be done.
> >
> > Also, is there any reason why you can't use `regulator-initial-mode =
> > <RPMH_REGULATOR_MODE_HPM>;` like other boards do?
>
>
> but the regulator loads & voltages for the phy doesn't change for every
> platform.
> Phys operational limits will still be the same for all the different
> platforms which exists today and the upcoming ones as well if they use it.
>
> Suppose te LDO's HPM is 2000 but the phy require 6000, its not getting
> enough power, same for reverse say 6000 in LDO's HPM and phy require
> 2000, isn't this power leakage ?
>
> This also seems to be the case with voltages as well, the phy require
> 0.88V for operation but if LDO is lower then that say 0.70, phy won't work.
>
> So instead of doing it seperately doesn't it make sense to do it in driver ?

For RPMh regulators the load isn't propagated to the regulator at all.
Only the mode is being selected based on the load.

For the voltages: no. The DT constraints should provide boundaries for
the regulator to supply all devices. So setting voltages in the driver
is not correct.

Last, but not least. Please take a look around before writing the
patch. It's true that some of the drivers for Qualcomm platforms set
the load. And some of them get this removed in favour of setting the
mode (that depends on the situation).However I think none of the
consumers on Qualcomm platforms set the voltage boundaries.

> >
> >>
> >> Implement a bulk operation api to set load & voltages before doing bulk
> >> enable. This will ensure that the PHY remains operational under all
> >> conditions.
> >>
> >> Signed-off-by: Udipto Goswami <quic_ugoswami@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 121 +++++++++++++++++-
> >>   1 file changed, 114 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> >> index eb0b0f61d98e..cbe9cdaa6849 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> >> @@ -78,11 +78,39 @@
> >>
> >>   #define LS_FS_OUTPUT_IMPEDANCE_MASK            GENMASK(3, 0)
> >>
> >> -static const char * const qcom_snps_hsphy_vreg_names[] = {
> >> -       "vdda-pll", "vdda33", "vdda18",
> >> +
> >> +struct qcom_snps_hsphy_regulator_data {
> >> +       const char *name;
> >> +       unsigned int enable_load;
> >> +       unsigned int min_voltage;
> >> +       unsigned int max_voltage;
> >> +};
> >> +
> >> +static const struct qcom_snps_hsphy_regulator_data hsphy_vreg_l[] = {
> >> +       {
> >> +               .name = "vdda-pll",
> >> +               .enable_load = 30000,
> >> +               .min_voltage = 825000,
> >> +               .max_voltage = 925000,
> >> +       },
> >> +
> >> +       {
> >> +               .name = "vdda18",
> >> +               .enable_load = 19000,
> >> +               .min_voltage = 1704000,
> >> +               .max_voltage = 1800000
> >> +       },
> >> +
> >> +       {
> >> +               .name = "vdda33",
> >> +               .enable_load = 16000,
> >> +               .min_voltage = 3050000,
> >> +               .max_voltage = 3300000
> >> +       },
> >> +
> >>   };
> >>
> >> -#define SNPS_HS_NUM_VREGS              ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
> >> +#define SNPS_HS_NUM_VREGS              ARRAY_SIZE(hsphy_vreg_l)
> >>
> >>   struct override_param {
> >>          s32     value;
> >> @@ -132,12 +160,90 @@ struct qcom_snps_hsphy {
> >>          struct clk_bulk_data *clks;
> >>          struct reset_control *phy_reset;
> >>          struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
> >> +       const struct qcom_snps_hsphy_regulator_data *vreg_list;
> >>
> >>          bool phy_initialized;
> >>          enum phy_mode mode;
> >>          struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
> >>   };
> >>
> >> +static int __vdda_phy_bulk_enable_disable(struct qcom_snps_hsphy *hsphy, bool on)
> >
> > Separate functions, please.
> sure.
> >
> >> +{
> >> +       int ret = 0;
> >> +       int i;
> >> +
> >> +       if (!on)
> >> +               goto disable_vdd;
> >> +
> >> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> >> +
> >> +               ret = regulator_set_load(hsphy->vregs[i].consumer,
> >> +                                        hsphy->vreg_list[i].enable_load);
> >> +
> >> +               if (ret < 0) {
> >> +                       dev_err(hsphy->dev, "unable to set HPM of %s %d\n",
> >> +                                               hsphy->vregs[i].supply, ret);
> >> +                       goto err_vdd;
> >> +               }
> >> +       }
> >> +
> >> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> >> +               ret = regulator_set_voltage(hsphy->vregs[i].consumer,
> >> +                                           hsphy->vreg_list[i].min_voltage,
> >> +                                           hsphy->vreg_list[i].max_voltage);
> >> +               if (ret) {
> >> +                       dev_err(hsphy->dev,
> >> +                               "unable to set voltage of regulator %s %d\n",
> >> +                                               hsphy->vregs[i].supply, ret);
> >> +                       goto put_vdd_lpm;
> >> +               }
> >> +       }
> >> +
> >> +       ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >> +       if (ret)
> >> +               goto unconfig_vdd;
> >> +
> >> +       return ret;
> >> +
> >> +disable_vdd:
> >> +       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >> +
> >> +unconfig_vdd:
> >> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> >> +               ret = regulator_set_voltage(hsphy->vregs[i].consumer, 0,
> >> +                                           hsphy->vreg_list[i].max_voltage);
> >> +               if (ret) {
> >> +                       dev_err(hsphy->dev,
> >> +                       "unable to set voltage of regulator %s %d\n",
> >> +                                       hsphy->vregs[i].supply, ret);
> >> +               }
> >> +       }
> >> +
> >> +put_vdd_lpm:
> >> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> >> +               ret = regulator_set_load(hsphy->vregs[i].consumer, 0);
> >> +
> >> +               if (ret < 0) {
> >> +                       dev_err(hsphy->dev, "unable to set LPM of %s %d\n",
> >> +                                               hsphy->vregs[i].supply, ret);
> >> +               }
> >> +       }
> >> +
> >> +err_vdd:
> >> +       return ret;
> >> +
> >> +}
> >> +
> >> +static int vdda_phy_bulk_enable(struct qcom_snps_hsphy *hsphy)
> >> +{
> >> +       return __vdda_phy_bulk_enable_disable(hsphy, true);
> >> +}
> >> +
> >> +static int vdda_phy_bulk_disable(struct qcom_snps_hsphy *hsphy)
> >> +{
> >> +       return __vdda_phy_bulk_enable_disable(hsphy, false);
> >> +}
> >> +
> >>   static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
> >>   {
> >>          struct device *dev = hsphy->dev;
> >> @@ -390,7 +496,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >>
> >>          dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
> >>
> >> -       ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >> +       ret = vdda_phy_bulk_enable(hsphy);
> >>          if (ret)
> >>                  return ret;
> >>
> >> @@ -471,7 +577,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >>   disable_clks:
> >>          clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
> >>   poweroff_phy:
> >> -       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >> +       ret = vdda_phy_bulk_disable(hsphy);
> >>
> >>          return ret;
> >>   }
> >> @@ -482,7 +588,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
> >>
> >>          reset_control_assert(hsphy->phy_reset);
> >>          clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
> >> -       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >> +       vdda_phy_bulk_disable(hsphy);
> >>          hsphy->phy_initialized = false;
> >>
> >>          return 0;
> >> @@ -592,8 +698,9 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
> >>
> >>          num = ARRAY_SIZE(hsphy->vregs);
> >>          for (i = 0; i < num; i++)
> >> -               hsphy->vregs[i].supply = qcom_snps_hsphy_vreg_names[i];
> >> +               hsphy->vregs[i].supply = hsphy_vreg_l[i].name;
> >>
> >> +       hsphy->vreg_list  = hsphy_vreg_l;
> >>          ret = devm_regulator_bulk_get(dev, num, hsphy->vregs);
> >>          if (ret)
> >>                  return dev_err_probe(dev, ret,
> >> --
> >> 2.17.1
>
> -Udipto



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
