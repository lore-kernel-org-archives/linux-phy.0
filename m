Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10461C47422
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 09:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YD6wuLa/dRxFsPg61Ub6Uz4PdJM6UYKv0jMc3M1h9s4=; b=OGYlayNJZxE4yn
	H+m+dt+MkAtkGjkYlc5Pjq8rwAWEXZEJ7g1qQ+7ggeg9D9DIMjH5YVLLrZLebykkKfueUgTDvHZf4
	6/lg/NOhWdMTo654gB6beQIXbYZb5iKmvhYWICmu6EyoKYTuUcB/jZZR21ulV28JKcg9clMF4mONm
	HXmeSbmu2Kec+fratnD1qghfRMu/z1Z1xsxNHGLzIHQOx0tysecXG/UAVhYK30FNOhxc6/S0EmA7w
	xM6dt2gCBnXX9C0zOWHPvrRZAHEP+NEov9jRN9pvOxGdYfXpSinEE4eyDuFgWqpGZstf3FJMNOaAf
	I4nFBoRhPhcdWhSRrxCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUO89-0000000C5Nc-31RF;
	Mon, 29 Jan 2024 09:40:41 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUO87-0000000C5Mq-0oOa
	for linux-phy@lists.infradead.org;
	Mon, 29 Jan 2024 09:40:40 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dc6424880e4so1814246276.1
        for <linux-phy@lists.infradead.org>; Mon, 29 Jan 2024 01:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706521235; x=1707126035; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2JY6ToXPjNwXhuXrTT6QOjgiDmdF+CeM/r9NF1DgPmk=;
        b=ORdo23sSWOrhfd7+sXK0QGoskqQOzhpJx+J2xMZDynxXJ99IEFWGNWZGCzWTWY1Vlq
         /t+Qi5wYqXV04HR2Re8ZgD3Ent77MDah4OPzNCAMlY+ChIpsYycTLXpxOXtBHwIx403k
         T/JEwKqKuFvaFiEWnQOcHDt48Y0bJTS53GmUQJOu7uDfrS8ogW/4G6IyfwLr0D2QDBKn
         NaTvuYdDEWTaxKWqjBBz+MzPwwyyMcVl3HK4aCN6xhYTj2Vmw2LLVtyA2U/wLGPS1Dd/
         prJ0CI+lO+gsrX0Vy8YdRsQXrsSNun4s3A7o2aKGOmBbKHiC80VIh6CWDsKlHA0eeF8S
         9MNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706521235; x=1707126035;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2JY6ToXPjNwXhuXrTT6QOjgiDmdF+CeM/r9NF1DgPmk=;
        b=AGk8SiudqzVbpO2CZFWxIJVWS8AaZH2QmY6yWRp+dQ0KMKoUNnwUg0MxBtM0pTiREp
         pN0abiuFYL3q/KXGUv38Pj2z5saF26w3Dkqpkuuy0Tx0L8qfoaaNtma1BjN+BqmPCL9B
         AHh3TZsBzrq0cF+eUeS71uhPo5yJxQOdae7UI2F4qo43Kc9IVQtfOYNyclS+Tqut9tX/
         lNDyE4/3/uORAQgSADmGXtRlKx4OOMDdv0p5BeQQ29dmWtdrtshJC8KWktf82b33G76q
         SmOM/w4G1yEdNVqSWEam3rbdRwsSZQzo6vGTWMiaBVg/kTqKHJa6NBpO3YBezdydvMj+
         8/3Q==
X-Gm-Message-State: AOJu0Yx7heRQ5/K0WNO1OptgNLyh4BdN89rEU0Fp8yel1WVUwJU0rGye
	vxiOSxJEfsbcXknMPXQ9OHiy5z7ac3ZVcxPvr/VaLvk0qEoqvCxvvm+rUJ54Q99d63VC8sn5mb2
	DT9Nt2nRvt3iDlW+QhtrGXMO5Am2ghb+ws7y6hQ==
X-Google-Smtp-Source: AGHT+IH4lWSb6WG9jfOKtjqmDCo4I5nviQ3kAEzfInwhv5cfQoct03pp8KFNFA8IYJr4yCU2gWeZ0ebx2mBpRYiPCJA=
X-Received: by 2002:a0d:d415:0:b0:5ef:78ad:b0b6 with SMTP id
 w21-20020a0dd415000000b005ef78adb0b6mr3331146ywd.69.1706521235443; Mon, 29
 Jan 2024 01:40:35 -0800 (PST)
MIME-Version: 1.0
References: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
 <20240129-x1e80100-phy-edp-compatible-refactor-v3-2-e71f3359c535@linaro.org>
 <CAA8EJpr5Ci7M92ibsCMec3wcQTVqFkaVgRQUhKUSdhg66YhW1Q@mail.gmail.com> <Zbdcao0emQyBodCK@linaro.org>
In-Reply-To: <Zbdcao0emQyBodCK@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jan 2024 11:40:24 +0200
Message-ID: <CAA8EJppkEksTL90KLcaw0adg73K=ngoYp8semB_u5YFk6rChhA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] phy: qcom: edp: Add set_mode op for configuring
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
X-CRM114-CacheID: sfid-20240129_014039_291616_6B1AD4D8 
X-CRM114-Status: GOOD (  33.14  )
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

On Mon, 29 Jan 2024 at 10:06, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 24-01-29 06:05:09, Dmitry Baryshkov wrote:
> > On Mon, 29 Jan 2024 at 02:26, Abel Vesa <abel.vesa@linaro.org> wrote:
> > >
> > > Future platforms should not use different compatibles to differentiate
> > > between eDP and DP mode. Instead, they should use a single compatible as the
> > > IP block is the same. It will be the job of the controller to set the submode
> > > of the PHY accordingly.
> > >
> > > The existing platforms will remain with separate compatibles for each mode.
> > >
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
> > >  1 file changed, 51 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > index 8e5078304646..af941d6c5588 100644
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
> > > +       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> > > +};
> > > +
> > >  struct qcom_edp {
> > >         struct device *dev;
> > > -       const struct qcom_edp_cfg *cfg;
> > > +       const struct qcom_edp_phy_cfg *cfg;
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
> > > @@ -162,18 +166,28 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
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
> > > +static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> > > +};
> > > +
> > > +static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> > > +       .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> > > +};
> > > +
> > > +static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
> > > +       .is_edp = true,
> > > +       .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> > > +};
> > > +
> > >  static int qcom_edp_phy_init(struct phy *phy)
> > >  {
> > >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > >         int ret;
> > >         u8 cfg8;
> > >
> > > @@ -200,7 +214,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> > >                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> > >                edp->edp + DP_PHY_PD_CTL);
> > >
> > > -       if (cfg && cfg->is_dp)
> > > +       if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> >
> > I think (!edp->is_edp) should be enough here.
>
> Actually, in case of DP, the cfg8 needs to be 0xb7 for sc8280xp, while for sc7280 it should be 0x37.
>
> So to differentiate between first and second we check if the config
> provides a swing_pre_emph_cfg

Using swing_pre_emph_cfg to distinguish between those two cases is a pure hack.
Is there any sensible meaning behind those bits? If not, just put
those values into the configuration data.

>
> >
> > >                 cfg8 = 0xb7;
> > >         else
> > >                 cfg8 = 0x37;
> > > @@ -234,7 +248,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> > >
> > >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> > >  {
> > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > > +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
> > >         unsigned int v_level = 0;
> > >         unsigned int p_level = 0;
> > >         u8 ldo_config;
> > > @@ -245,6 +259,9 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> > >         if (!cfg)
> > >                 return 0;
> > >
> > > +       if (edp->is_edp)
> > > +               cfg = &edp_phy_swing_pre_emph_cfg;
> > > +
> > >         for (i = 0; i < dp_opts->lanes; i++) {
> > >                 v_level = max(v_level, dp_opts->voltage[i]);
> > >                 p_level = max(p_level, dp_opts->pre[i]);
> > > @@ -261,7 +278,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> > >         if (swing == 0xff || emph == 0xff)
> > >                 return -EINVAL;
> > >
> > > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > > +       ldo_config = edp->is_edp ? 0x0 : 0x1;
> > >
> > >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> > >         writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> > > @@ -447,10 +464,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
> > >  static int qcom_edp_phy_power_on(struct phy *phy)
> > >  {
> > >         const struct qcom_edp *edp = phy_get_drvdata(phy);
> > > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > >         u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> > >         unsigned long pixel_freq;
> > > -       u8 ldo_config;
> > > +       u8 ldo_config = 0x0;
> > >         int timeout;
> > >         int ret;
> > >         u32 val;
> > > @@ -468,7 +484,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> > >                 return timeout;
> > >
> > >
> > > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > > +       if (edp->cfg->swing_pre_emph_cfg && !edp->cfg->is_edp)
> >
> > I'd assume this should be `if (!edp->is_edp)`, see qcom_edp_set_voltages()
> >
>
> Yep. will fix.
>
> > > +               ldo_config = 0x1;
> > >
> > >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> > >         writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> > > @@ -589,6 +606,18 @@ static int qcom_edp_phy_power_off(struct phy *phy)
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
> > > +       edp->is_edp = submode == PHY_SUBMODE_EDP ? true : false;
> > > +
> > > +       return 0;
> > > +}
> > > +
> > >  static int qcom_edp_phy_exit(struct phy *phy)
> > >  {
> > >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > > @@ -604,6 +633,7 @@ static const struct phy_ops qcom_edp_ops = {
> > >         .configure      = qcom_edp_phy_configure,
> > >         .power_on       = qcom_edp_phy_power_on,
> > >         .power_off      = qcom_edp_phy_power_off,
> > > +       .set_mode       = qcom_edp_phy_set_mode,
> > >         .exit           = qcom_edp_phy_exit,
> > >         .owner          = THIS_MODULE,
> > >  };
> > > @@ -781,6 +811,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> > >
> > >         edp->dev = dev;
> > >         edp->cfg = of_device_get_match_data(&pdev->dev);
> > > +       edp->is_edp = edp->cfg->is_edp;
> > >
> > >         edp->edp = devm_platform_ioremap_resource(pdev, 0);
> > >         if (IS_ERR(edp->edp))
> > > @@ -839,10 +870,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
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
