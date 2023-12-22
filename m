Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C167AC41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 19:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWparR1lQMTf+F5fZB4AWwLbekwIqe5KrB8Hs8dpG7E=; b=AWmCKljyLKQ5eo
	vh+dT2DksINg5jqJr/I7nC26EWPw9194bldIgo1NQaaP7ADiihgt0L/RILImsD+wghFALigUW3NmW
	0Y6QIc8YYe1gOjdmrDsaQCFtpUAugqrOzay6uD73K0M0ZgrZFHh0JADXd7TFKtcD/Io3yNws1wqLj
	p+xY373RFgDbLzcr7M3tgRnfvSkZy/f03VHq2/2cmccbzCZxmbzcRKrYZ4BRKyjJdV0YiZJud2o17
	/xH13VWKGazuQEIAENxguL7MOCxcnNy9GMstcUWTpbyzRTbvNj7XkUGZjrnD9vxLLN6Q5feFCXTDx
	D/qRdTAp6omjp4FRsjtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGl7F-006h4K-1V;
	Fri, 22 Dec 2023 19:23:25 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGl7A-006h3G-3D
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 19:23:23 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5e89ba9810aso20021587b3.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 11:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703272998; x=1703877798; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aCc/LLMRxi1q5TvJqmyhp5VDX3W9U3KObkywO/tjcKM=;
        b=aoHZeaYKtC/ShfRP0oULA01QmoRmdX+SsV27JK6ujzMO89VZ87ltOQt3kdbBKILzci
         ehHv7R2dHW1oPfKntHiidHDEHZjYAqJ0Y8eShskaZ9YZIVQ6ix/1U9+TyAzVg2ylD/zV
         V1HPP+OtSxSX1aZpkiB/GnxaynfXrRiIcb8vopU9YMjyThIEUl294pHbMET3EFEFtDJ3
         pMN4CuYp37JJQP/QYwpO/cCYdGWFKe2/+d8A3vB7MFq0bQX2utKlg4ZfhEfqJtwNBWp4
         kd9BXBV+vEGAQVPiKynkTXjXqsPoW+Cup2xuCxrgTz+QBA3TxwQ68bgxAWX0XKePy3yR
         lwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703272998; x=1703877798;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCc/LLMRxi1q5TvJqmyhp5VDX3W9U3KObkywO/tjcKM=;
        b=GgBuAejrSxtesEVbC4kB2mgY7De9eKpglJx4JEV2x5kmmeKIVzOYDvNxp/vw8wvP49
         WZ2LjB6h4eFkaJIlGpv9MCDjXXndOESwrdQijbHkr6rQ5lZWJtGe35qWCFs/Pd7UycQT
         W/2itPxoclw5U5tBHE1wFtWx8xpVEy1TRWr1WP92rKB0CM6Rlinkf25P093Rqm9UW7JZ
         RaZp5vQGYYWtf32zHAQqao2e8ntOZ+6rvRGilSBR2bvO0u1LGN1m6mskW9MzJ6Ob8U2Y
         XxDCfSDA0VUTYZyo9vFEslZBB6DqylARVEcpYsBKJYCLer2N3vypW1f3waBCYmzIcLFe
         3j2Q==
X-Gm-Message-State: AOJu0YzujdAdr40NBQOQuCGNkJHqjrKtzcDDFtBJkCWPy5nJoqgJt0dc
	QSwJcFeqo+OhNQKZi1r4n8PC9ofueOv0ldEtmiDhFNpZTv2J1A==
X-Google-Smtp-Source: AGHT+IEIIIPIGJRkjud1LWC0TZi2Z8QqGT5EruAhlpsUg3za9MlKqgW+6+75k4yvAf1Dv1KG/IENGuWxY8yRzzI1vwc=
X-Received: by 2002:a81:6f04:0:b0:5d7:1940:53d0 with SMTP id
 k4-20020a816f04000000b005d7194053d0mr1607191ywc.72.1703272997970; Fri, 22 Dec
 2023 11:23:17 -0800 (PST)
MIME-Version: 1.0
References: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
 <20231222-x1e80100-phy-edp-compatible-refactor-v2-2-ab5786c2359f@linaro.org>
 <CAA8EJpqPNzvA0yTqqSuXGHKxXoofJUQpAiHazoULru8A85YXHA@mail.gmail.com> <ZYXamK7y2qbM/GaJ@linaro.org>
In-Reply-To: <ZYXamK7y2qbM/GaJ@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Dec 2023 21:23:06 +0200
Message-ID: <CAA8EJprZmhb+1xBcMRoyvEGuT-ys5O1nMiGzTu0qfBLNZVrmTw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_112321_125245_AE4F39D6 
X-CRM114-Status: GOOD (  38.53  )
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

On Fri, 22 Dec 2023 at 20:51, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 23-12-22 16:45:47, Dmitry Baryshkov wrote:
> > On Fri, 22 Dec 2023 at 15:01, Abel Vesa <abel.vesa@linaro.org> wrote:
> > >
> > > Future platforms should not use different compatibles to differentiate
> > > between eDP and DP mode. Instead, they should use a single compatible as the
> > > IP block is the same. It will be the job of the controller to set the submode
> > > of the PHY accordingly. Rework the device match config data so that it only
> > > keeps the different knobs rather than swing and pre-emphasis tables.
> > >
> > > The existing platforms will remain with separate compatibles for each mode.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-edp.c | 90 ++++++++++++++++++++++++++++---------
> > >  1 file changed, 69 insertions(+), 21 deletions(-)
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > index 8e5078304646..efd7015c73ec 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > @@ -14,6 +14,7 @@
> > >  #include <linux/module.h>
> > >  #include <linux/of.h>
> > >  #include <linux/phy/phy.h>
> > > +#include <linux/phy/phy-dp.h>
> > >  #include <linux/platform_device.h>
> > >  #include <linux/regulator/consumer.h>
> > >  #include <linux/reset.h>
> > > @@ -68,19 +69,21 @@
> > >
> > >  #define TXn_TRAN_DRVR_EMP_EN                    0x0078
> > >
> > > -struct qcom_edp_cfg {
> > > -       bool is_dp;
> > > -
> > > -       /* DP PHY swing and pre_emphasis tables */
> > > +struct qcom_edp_swing_pre_emph_cfg {
> > >         const u8 (*swing_hbr_rbr)[4][4];
> > >         const u8 (*swing_hbr3_hbr2)[4][4];
> > >         const u8 (*pre_emphasis_hbr_rbr)[4][4];
> > >         const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
> > >  };
> > >
> > > +struct qcom_edp_phy_cfg {
> > > +       bool is_edp;
> > > +       bool needs_swing_pre_emph_cfg;
> >
> > I think something like needs_voltage_config sounds simpler and prettier.
>
> Sure. Will do that in the next version.
>
> >
> > > +};
> > > +
> > >  struct qcom_edp {
> > >         struct device *dev;
> > > -       const struct qcom_edp_cfg *cfg;
> > > +       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> > >
> > >         struct phy *phy;
> > >
> > > @@ -96,6 +99,8 @@ struct qcom_edp {
> > >
> > >         struct clk_bulk_data clks[2];
> > >         struct regulator_bulk_data supplies[2];
> > > +
> > > +       bool is_edp;
> > >  };
> > >
> > >  static const u8 dp_swing_hbr_rbr[4][4] = {
> > > @@ -126,8 +131,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
> > >         { 0x04, 0xff, 0xff, 0xff }
> > >  };
> > >
> > > -static const struct qcom_edp_cfg dp_phy_cfg = {
> > > -       .is_dp = true,
> > > +static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
> > >         .swing_hbr_rbr = &dp_swing_hbr_rbr,
> > >         .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
> > >         .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
> > > @@ -162,18 +166,29 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
> > >         { 0x00, 0xff, 0xff, 0xff }
> > >  };
> > >
> > > -static const struct qcom_edp_cfg edp_phy_cfg = {
> > > -       .is_dp = false,
> > > +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
> > >         .swing_hbr_rbr = &edp_swing_hbr_rbr,
> > >         .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
> > >         .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
> > >         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> > >  };
> > >
> > > +static struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> > > +};
> > > +
> > > +static struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> > > +       .needs_swing_pre_emph_cfg = true,
> > > +};
> > > +
> > > +static struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
> > > +       .is_edp = true,
> > > +       .needs_swing_pre_emph_cfg = true,
> > > +};
> > > +
> > >  static int qcom_edp_phy_init(struct phy *phy)
> > >  {
> > >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
> > >         int ret;
> > >         u8 cfg8;
> > >
> > > @@ -200,7 +215,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> > >                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> > >                edp->edp + DP_PHY_PD_CTL);
> > >
> > > -       if (cfg && cfg->is_dp)
> > > +       if (cfg && !edp->is_edp)
> > >                 cfg8 = 0xb7;
> > >         else
> > >                 cfg8 = 0x37;
> > > @@ -234,7 +249,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> > >
> > >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> > >  {
> > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
> > >         unsigned int v_level = 0;
> > >         unsigned int p_level = 0;
> > >         u8 ldo_config;
> > > @@ -261,7 +276,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> > >         if (swing == 0xff || emph == 0xff)
> > >                 return -EINVAL;
> > >
> > > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > > +       ldo_config = edp->is_edp ? 0x0 : 0x1;
> > >
> > >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> > >         writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> > > @@ -447,10 +462,10 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
> > >  static int qcom_edp_phy_power_on(struct phy *phy)
> > >  {
> > >         const struct qcom_edp *edp = phy_get_drvdata(phy);
> > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
> > >         u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> > >         unsigned long pixel_freq;
> > > -       u8 ldo_config;
> > > +       u8 ldo_config = 0x0;
> > >         int timeout;
> > >         int ret;
> > >         u32 val;
> > > @@ -468,7 +483,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> > >                 return timeout;
> > >
> > >
> > > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > > +       if (cfg && !edp->is_edp)
> > > +               ldo_config = 0x1;
> > >
> > >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> > >         writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> > > @@ -589,6 +605,31 @@ static int qcom_edp_phy_power_off(struct phy *phy)
> > >         return 0;
> > >  }
> > >
> > > +static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> > > +{
> > > +       struct qcom_edp *edp = phy_get_drvdata(phy);
> > > +
> > > +       if (mode != PHY_MODE_DP)
> > > +               return -EINVAL;
> > > +
> > > +       switch (submode) {
> > > +       case PHY_SUBMODE_DP:
> > > +               edp->swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg;
> > > +               edp->is_edp = false;
> > > +               break;
> > > +
> > > +       case PHY_SUBMODE_EDP:
> > > +               edp->swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg;
> >
> > Won't this override the sc7280 config which doesn't set the
> > .needs_swing_pre_emph_cfg?
> > So even
>
> Yeah, the way I thought about this would be that the controller won't
> call phy_set_mode_ext if the node doesn't have is-edp property.
>
> But I can see now that is sloppy. Will change this so if the legacy
> platforms have the is_edp set in their device match data, it will just
> check that the requested mode matches it.

Let's separate two issues here. One is the is_edp flag. I think it's
fine to set the default based on the compat string, then allow the
controller to override it.

For the swing / pre_emph tables it might be easier to store pointers
to both DP and eDP tables in the config data (based on the match data)
and later select one basing on the is_edp flag.
This way you don't have to override the pre-set tables during
phy_set_mode_ext().

>
> >
> > > +               edp->is_edp = true;
> > > +               break;
> > > +
> > > +       default:
> > > +               return -EINVAL;
> > > +       }
> > > +
> > > +       return 0;
> > > +}
> > > +
> > >  static int qcom_edp_phy_exit(struct phy *phy)
> > >  {
> > >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > > @@ -604,6 +645,7 @@ static const struct phy_ops qcom_edp_ops = {
> > >         .configure      = qcom_edp_phy_configure,
> > >         .power_on       = qcom_edp_phy_power_on,
> > >         .power_off      = qcom_edp_phy_power_off,
> > > +       .set_mode       = qcom_edp_phy_set_mode,
> > >         .exit           = qcom_edp_phy_exit,
> > >         .owner          = THIS_MODULE,
> > >  };
> > > @@ -770,6 +812,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> > >
> > >  static int qcom_edp_phy_probe(struct platform_device *pdev)
> > >  {
> > > +       const struct qcom_edp_phy_cfg *cfg = of_device_get_match_data(&pdev->dev);
> > >         struct phy_provider *phy_provider;
> > >         struct device *dev = &pdev->dev;
> > >         struct qcom_edp *edp;
> > > @@ -780,7 +823,12 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > >                 return -ENOMEM;
> > >
> > >         edp->dev = dev;
> > > -       edp->cfg = of_device_get_match_data(&pdev->dev);
> > > +       edp->is_edp = cfg->is_edp;
> > > +
> > > +       if (cfg->needs_swing_pre_emph_cfg)
> > > +               edp->swing_pre_emph_cfg = edp->is_edp ?
> > > +                                               &edp_phy_swing_pre_emph_cfg :
> > > +                                               &dp_phy_swing_pre_emph_cfg;
> > >
> > >         edp->edp = devm_platform_ioremap_resource(pdev, 0);
> > >         if (IS_ERR(edp->edp))
> > > @@ -839,10 +887,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > >  }
> > >
> > >  static const struct of_device_id qcom_edp_phy_match_table[] = {
> > > -       { .compatible = "qcom,sc7280-edp-phy" },
> > > -       { .compatible = "qcom,sc8180x-edp-phy" },
> > > -       { .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
> > > -       { .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
> > > +       { .compatible = "qcom,sc7280-edp-phy" , .data = &sc7280_dp_phy_cfg, },
> > > +       { .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
> > > +       { .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
> > > +       { .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
> > >         { }
> > >  };
> > >  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
> > >
> > > --
> > > 2.34.1
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
