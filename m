Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 726CBC4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 10:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZXxAvXL61P3sUHP+vm0Pnt0mFZUUWPhhFkP5UJ5vUg=; b=uhapBFwXLA60CB
	Is3/gjD2KGVX4CBiEdMuPsXUG95EqwOwQkNsMYMOKAhKv8z5+myr2+2nCK1Si763bLKIlOSRdR0SX
	hvCxlvKgZUARng2yCNAWH1nrOX7AhZ7pTe3DTHjdYSQBCEzzQU9s0VoGdyvi3IrvUKtQJ5uqEEjQS
	UMVBKq8N2uEwoK2LgYOXkZvETjsiItoneTnra6m5jEYKAebgcSEPpM7bvFNPyBw8cxjinop3Ya8uq
	qWGd9iJ0KTfWqzEkIHDzuSepnfC8wmlz6Jn7ZmcqrBbOWLxtgT4oxLit+r/jwghFIcXvbojNfmlGO
	QDY2Usfo/vrm+Jnt+lKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ5K-0000000FniH-0QoB;
	Thu, 15 Feb 2024 10:35:18 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ5H-0000000Fngp-2nAi
	for linux-phy@lists.infradead.org;
	Thu, 15 Feb 2024 10:35:17 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-563b7b48b9aso370160a12.2
        for <linux-phy@lists.infradead.org>; Thu, 15 Feb 2024 02:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707993314; x=1708598114; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N3bUsJsObnwj4sLkeC1K1b+OO1Xl0R0RIuNuiAAkYYo=;
        b=c6xhSrvhOotu6psuuGBYMMi3EQQPrk5Cd5O8h8E1yNcWY1MXVxNihrjPDACVDXr9gk
         0Y/jXTrAQGfKwuC5vSJ5AVqkcVz/eiyCaTAYJ9dWZIt21N8eEYy3XnvlICt6EZxSc7WA
         Fze2LEG+VSTZY4aAuuHyyvXhnqrG8KdRn+YDJwrE3Qo9Q/k83P8pIgAI3tCZm2vv5NZy
         KwmYnYGRtHBp2kmbD70bBmgXEZcCE0bJQ/FEJz2joHGXct3eHBRwvvtNDyog/uKXqWmH
         B6fInLwBh9phZCJZgp7/TAsmOql9EmrSLxTfPPsZW6eAo7i061IvfaEXrp49Zv5VzqQs
         zp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707993314; x=1708598114;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3bUsJsObnwj4sLkeC1K1b+OO1Xl0R0RIuNuiAAkYYo=;
        b=ZVkJad1ytNodTn7kXWKutAygo/G6+3ENgwZwat33r2Ggt4Tpsc+BnwFHtw1i/M44Et
         /n2J0SV7IzfB7IwEQ4q/2tYPPjkV6YKy+7Qq+5W1ZK+/dVykqW5SEEymnlQF8r9BECcz
         vyI+wnjzoUZaLFaEGcpiXBG3GT0ye+lDEi+a5oa51s4Y3UD6Hc0loJQVXjmeu1tLXpC2
         G71dG+gsR3/ri9FRpMjvxw3TFHRJpNJCa0N3d0ImSqd+M0ms8nljrQHl0KidDv0ZNZzb
         9gKgN41Eubso5Qjto8CMo5LW+LeySqgGKoqSDKe0iWbSvE2xLAxs8sHuKaJ12wqX5opx
         GGUw==
X-Forwarded-Encrypted: i=1; AJvYcCWv6BaQtg8nXwVSSBF6sJBThwrq2FJViNx58m4ggEhwkVeTnzmrrz+bzbSQ9dUSFIRWeXJyI1dSOYWw8kQEiYQoDwbW67YGOkkB2GSBww==
X-Gm-Message-State: AOJu0Yw40qqU+hvOkOZs2y/LZXXOJBgCr01zo/MSdzLZnESHmKRteDEV
	yHi96WrxvDBVNEPUzTEuR9tC8VOy9/oFgthidiQdxBnWVF/Ec2PSTf8F7bhhkX0=
X-Google-Smtp-Source: AGHT+IGCwYqNlRi9x/LRJJGkyV6rYWcvsm3xa8OFszDBDSuIFbli6+SmOqD6iV1/8Ad6vlHO9S76Eg==
X-Received: by 2002:a05:6402:1a44:b0:561:ca60:46b2 with SMTP id bf4-20020a0564021a4400b00561ca6046b2mr947309edb.33.1707993313428;
        Thu, 15 Feb 2024 02:35:13 -0800 (PST)
Received: from linaro.org ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id ek5-20020a056402370500b00560c07f986asm411263edb.58.2024.02.15.02.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 02:35:12 -0800 (PST)
Date: Thu, 15 Feb 2024 12:35:11 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
Message-ID: <Zc3o32p1i0GtmmQj@linaro.org>
References: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
 <20240129-x1e80100-phy-edp-compatible-refactor-v3-2-e71f3359c535@linaro.org>
 <CAA8EJpr5Ci7M92ibsCMec3wcQTVqFkaVgRQUhKUSdhg66YhW1Q@mail.gmail.com>
 <Zbdcao0emQyBodCK@linaro.org>
 <CAA8EJppkEksTL90KLcaw0adg73K=ngoYp8semB_u5YFk6rChhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJppkEksTL90KLcaw0adg73K=ngoYp8semB_u5YFk6rChhA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_023515_743162_E16E030B 
X-CRM114-Status: GOOD (  36.48  )
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

On 24-01-29 11:40:24, Dmitry Baryshkov wrote:
> On Mon, 29 Jan 2024 at 10:06, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > On 24-01-29 06:05:09, Dmitry Baryshkov wrote:
> > > On Mon, 29 Jan 2024 at 02:26, Abel Vesa <abel.vesa@linaro.org> wrote:
> > > >
> > > > Future platforms should not use different compatibles to differentiate
> > > > between eDP and DP mode. Instead, they should use a single compatible as the
> > > > IP block is the same. It will be the job of the controller to set the submode
> > > > of the PHY accordingly.
> > > >
> > > > The existing platforms will remain with separate compatibles for each mode.
> > > >
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
> > > >  1 file changed, 51 insertions(+), 20 deletions(-)
> > > >
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > index 8e5078304646..af941d6c5588 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > @@ -14,6 +14,7 @@
> > > >  #include <linux/module.h>
> > > >  #include <linux/of.h>
> > > >  #include <linux/phy/phy.h>
> > > > +#include <linux/phy/phy-dp.h>
> > > >  #include <linux/platform_device.h>
> > > >  #include <linux/regulator/consumer.h>
> > > >  #include <linux/reset.h>
> > > > @@ -68,19 +69,21 @@
> > > >
> > > >  #define TXn_TRAN_DRVR_EMP_EN                    0x0078
> > > >
> > > > -struct qcom_edp_cfg {
> > > > -       bool is_dp;
> > > > -
> > > > -       /* DP PHY swing and pre_emphasis tables */
> > > > +struct qcom_edp_swing_pre_emph_cfg {
> > > >         const u8 (*swing_hbr_rbr)[4][4];
> > > >         const u8 (*swing_hbr3_hbr2)[4][4];
> > > >         const u8 (*pre_emphasis_hbr_rbr)[4][4];
> > > >         const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
> > > >  };
> > > >
> > > > +struct qcom_edp_phy_cfg {
> > > > +       bool is_edp;
> > > > +       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> > > > +};
> > > > +
> > > >  struct qcom_edp {
> > > >         struct device *dev;
> > > > -       const struct qcom_edp_cfg *cfg;
> > > > +       const struct qcom_edp_phy_cfg *cfg;
> > > >
> > > >         struct phy *phy;
> > > >
> > > > @@ -96,6 +99,8 @@ struct qcom_edp {
> > > >
> > > >         struct clk_bulk_data clks[2];
> > > >         struct regulator_bulk_data supplies[2];
> > > > +
> > > > +       bool is_edp;
> > > >  };
> > > >
> > > >  static const u8 dp_swing_hbr_rbr[4][4] = {
> > > > @@ -126,8 +131,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
> > > >         { 0x04, 0xff, 0xff, 0xff }
> > > >  };
> > > >
> > > > -static const struct qcom_edp_cfg dp_phy_cfg = {
> > > > -       .is_dp = true,
> > > > +static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
> > > >         .swing_hbr_rbr = &dp_swing_hbr_rbr,
> > > >         .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
> > > >         .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
> > > > @@ -162,18 +166,28 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
> > > >         { 0x00, 0xff, 0xff, 0xff }
> > > >  };
> > > >
> > > > -static const struct qcom_edp_cfg edp_phy_cfg = {
> > > > -       .is_dp = false,
> > > > +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
> > > >         .swing_hbr_rbr = &edp_swing_hbr_rbr,
> > > >         .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
> > > >         .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
> > > >         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> > > >  };
> > > >
> > > > +static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> > > > +};
> > > > +
> > > > +static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> > > > +       .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> > > > +};
> > > > +
> > > > +static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
> > > > +       .is_edp = true,
> > > > +       .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> > > > +};
> > > > +
> > > >  static int qcom_edp_phy_init(struct phy *phy)
> > > >  {
> > > >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > >         int ret;
> > > >         u8 cfg8;
> > > >
> > > > @@ -200,7 +214,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> > > >                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> > > >                edp->edp + DP_PHY_PD_CTL);
> > > >
> > > > -       if (cfg && cfg->is_dp)
> > > > +       if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> > >
> > > I think (!edp->is_edp) should be enough here.
> >
> > Actually, in case of DP, the cfg8 needs to be 0xb7 for sc8280xp, while for sc7280 it should be 0x37.
> >
> > So to differentiate between first and second we check if the config
> > provides a swing_pre_emph_cfg
> 
> Using swing_pre_emph_cfg to distinguish between those two cases is a pure hack.
> Is there any sensible meaning behind those bits? If not, just put
> those values into the configuration data.

So the only thing that I was able to find is that this reg has to do
with some TX and RX zero bits preamble. It seems it needs to be
different between DP configurations (with or without swing and pre-emph).

But leaving that aside, unless we add another knob that actually depends
on swing and pre-emph configuration being available, there is no other
way around it, for now, at least.

> 
> >
> > >
> > > >                 cfg8 = 0xb7;
> > > >         else
> > > >                 cfg8 = 0x37;
> > > > @@ -234,7 +248,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> > > >
> > > >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> > > >  {
> > > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > > +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
> > > >         unsigned int v_level = 0;
> > > >         unsigned int p_level = 0;
> > > >         u8 ldo_config;
> > > > @@ -245,6 +259,9 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> > > >         if (!cfg)
> > > >                 return 0;
> > > >
> > > > +       if (edp->is_edp)
> > > > +               cfg = &edp_phy_swing_pre_emph_cfg;
> > > > +
> > > >         for (i = 0; i < dp_opts->lanes; i++) {
> > > >                 v_level = max(v_level, dp_opts->voltage[i]);
> > > >                 p_level = max(p_level, dp_opts->pre[i]);
> > > > @@ -261,7 +278,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> > > >         if (swing == 0xff || emph == 0xff)
> > > >                 return -EINVAL;
> > > >
> > > > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > > > +       ldo_config = edp->is_edp ? 0x0 : 0x1;
> > > >
> > > >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> > > >         writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> > > > @@ -447,10 +464,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
> > > >  static int qcom_edp_phy_power_on(struct phy *phy)
> > > >  {
> > > >         const struct qcom_edp *edp = phy_get_drvdata(phy);
> > > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > >         u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> > > >         unsigned long pixel_freq;
> > > > -       u8 ldo_config;
> > > > +       u8 ldo_config = 0x0;
> > > >         int timeout;
> > > >         int ret;
> > > >         u32 val;
> > > > @@ -468,7 +484,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> > > >                 return timeout;
> > > >
> > > >
> > > > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > > > +       if (edp->cfg->swing_pre_emph_cfg && !edp->cfg->is_edp)
> > >
> > > I'd assume this should be `if (!edp->is_edp)`, see qcom_edp_set_voltages()
> > >
> >
> > Yep. will fix.
> >
> > > > +               ldo_config = 0x1;
> > > >
> > > >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> > > >         writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> > > > @@ -589,6 +606,18 @@ static int qcom_edp_phy_power_off(struct phy *phy)
> > > >         return 0;
> > > >  }
> > > >
> > > > +static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> > > > +{
> > > > +       struct qcom_edp *edp = phy_get_drvdata(phy);
> > > > +
> > > > +       if (mode != PHY_MODE_DP)
> > > > +               return -EINVAL;
> > > > +
> > > > +       edp->is_edp = submode == PHY_SUBMODE_EDP ? true : false;
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +
> > > >  static int qcom_edp_phy_exit(struct phy *phy)
> > > >  {
> > > >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > > > @@ -604,6 +633,7 @@ static const struct phy_ops qcom_edp_ops = {
> > > >         .configure      = qcom_edp_phy_configure,
> > > >         .power_on       = qcom_edp_phy_power_on,
> > > >         .power_off      = qcom_edp_phy_power_off,
> > > > +       .set_mode       = qcom_edp_phy_set_mode,
> > > >         .exit           = qcom_edp_phy_exit,
> > > >         .owner          = THIS_MODULE,
> > > >  };
> > > > @@ -781,6 +811,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > > >
> > > >         edp->dev = dev;
> > > >         edp->cfg = of_device_get_match_data(&pdev->dev);
> > > > +       edp->is_edp = edp->cfg->is_edp;
> > > >
> > > >         edp->edp = devm_platform_ioremap_resource(pdev, 0);
> > > >         if (IS_ERR(edp->edp))
> > > > @@ -839,10 +870,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > > >  }
> > > >
> > > >  static const struct of_device_id qcom_edp_phy_match_table[] = {
> > > > -       { .compatible = "qcom,sc7280-edp-phy" },
> > > > -       { .compatible = "qcom,sc8180x-edp-phy" },
> > > > -       { .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
> > > > -       { .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
> > > > +       { .compatible = "qcom,sc7280-edp-phy" , .data = &sc7280_dp_phy_cfg, },
> > > > +       { .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
> > > > +       { .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
> > > > +       { .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
> > > >         { }
> > > >  };
> > > >  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
> > > >
> > > > --
> > > > 2.34.1
> > > >
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
