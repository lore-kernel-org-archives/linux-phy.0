Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E849C4345F
	for <linux-phy@archiver.kernel.org>; Thu,  2 May 2024 13:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4agJorjXM/v0/938ej/XNvq6DGz6xo0SenTaUHfM2I=; b=K7b31jJgAmI7Cq
	tmXyd+/QluGypie16SwC2wm/5uuZWTYIFQzE/BS3cC4W48KVcZHYnBk65TgvMN6P5rFDoPd/PKM/8
	czC8r1IKLJz4cspRnC7jOdtqSuXItX7+22IGwsLMqugfhfa/GBnOnbLGc/aFKPhL1TgXI1xKJ7ugK
	+rbG95diYmAv1ucnDi/YTdsHapg8NnNNOXPK0L6XvKJ+yq0S1VTQWXS7TDZVOnKlIsRbECBMT9pKU
	5kuqKnzwnEa6iq4j66OpF2BZ+6ZpeHdIRH6U4E2DANsJlFCbO7S1nCSV5TbhfvYbxdZqZZyO2U8wh
	UgSllyH21nT28TQIskDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2WF0-0000000Ckyo-0ttn;
	Thu, 02 May 2024 13:12:50 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2WEx-0000000CkwG-0BsB
	for linux-phy@lists.infradead.org;
	Thu, 02 May 2024 13:12:48 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-61ab6faf179so77756887b3.1
        for <linux-phy@lists.infradead.org>; Thu, 02 May 2024 06:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714655551; x=1715260351; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e9IfF2XRrC1/or05aEZt3Pgg1CS/l8eHWqh1tFVKZN4=;
        b=mvemClC4frC1R3eHRjPmWnnVDpL9EAsFz7Lihc5jYFMWvGdvqqNPn0Yx0YZPwbXxQv
         cTX7vEp/BRlg0Bn3IVqwS+8NBajDsX0lzoF0GBEL7u4pfH9WNY4rpT+Tfl83E+TVlvuq
         oGpdfnC/BiBPIidSx/4+BfDnjiaeP8c/iO3J5WKK+fqC4ED3Q/ZmsrmRuLIqE2suWFfH
         f8qHjBEmh7cRphRk1yPY6XpeFeeeQto1V6L04/6B07YkWJPcKSwjXep/BrDVX4w+oNwE
         M05tqej9ZpW9SaRD1hMlF5FrQHs7TC2V37Ta4XycME1TCo25MTbREJKwlcT+zeSmpw4F
         IKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714655551; x=1715260351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e9IfF2XRrC1/or05aEZt3Pgg1CS/l8eHWqh1tFVKZN4=;
        b=HV+50Pljr2Qsa8UFsu0Q6cl+T7Irw1bvbkhu1I+bue984/BLEZSm0rDfAdIZ2aAH44
         XcS5TgUW2WTAYX122SkCJ3k1UtUKmvfLTpsfsfcWaHlFt5gGw24PjFZWIYDILTebyL6j
         hFAtKyxpQrmzQamoc+tSQ68N0HugnFJ5pglfvHku/+n2qi2SLMg70+oaUdPDKTQ6AzFf
         0CDE8cgZ8P3y9CJZiBB/GLQCeMzFtO9VO8hSI2fI140Fq42HS22xS63i4S7aB6RxtpUp
         RgHSfJRwr+HNJwL0SF+ladOeb1eJ31QboJGWMADeDrS/RsOyns6Sm9sKNfXlxXXUVeKR
         GJnA==
X-Forwarded-Encrypted: i=1; AJvYcCUEkUFJdDCDAjTki4zcCNcq1gB9EYDT0zeunLRKM5wy+p8KYpzciEgfLNLug/K4xNtG/TtSlZCrW+MPRQ400dl3wYl5e1dkH6x6BcCsDw==
X-Gm-Message-State: AOJu0YyHBU28hCXABD+B4EpXU0j98SnyMzdYz63rgO6jyEryzilxI507
	epTZHOTykTcUnh7/oEb6b2lCB/Ur6w4CeFUzPTXW0BEdbg+St+I0ZtKbunVDwPp0FTL/hT2vnE3
	Vi8h9loTNtmOakrWOngXMwjQWe7lEC0d9uFwo1w==
X-Google-Smtp-Source: AGHT+IEmkdUGj5jxW8y/dVl1d+EP/OPmo0I1J+BrgLeQOzwiCRVJgZVKxM+VVh8ViBEG0rKvwXQFvcvTYJR/P/usunM=
X-Received: by 2002:a25:db8e:0:b0:dca:a3e8:a25a with SMTP id
 g136-20020a25db8e000000b00dcaa3e8a25amr2216795ybf.62.1714655551232; Thu, 02
 May 2024 06:12:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
In-Reply-To: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 2 May 2024 16:12:20 +0300
Message-ID: <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for
 LDO's used
To: Udipto Goswami <quic_ugoswami@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_061247_123669_45AD5064 
X-CRM114-Status: GOOD (  31.54  )
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

On Thu, 2 May 2024 at 15:33, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
>
> The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
> If one of the regulators is not voted to the required minimum voltage
> for phy to operate, then High speed mode of operation will fail.
>
> On certain targets like (qcm6490_rb3gen2) where the minimum voltage
> of the regulator is lower than the operating voltage of the phy.
> If not voted properly, the phy supply would be limited to the min value
> of the LDO thereby rendering the phy non-operational.
>
> The current implementation of the regulators in the Femto PHY is not
> setting the load and voltage for each LDO. The appropriate voltages and
> loads required for the PHY to operate should be set.

Please move min/max voltages to the DTS. There is no need to set them
from the driver.

Also, is there any reason why you can't use `regulator-initial-mode =
<RPMH_REGULATOR_MODE_HPM>;` like other boards do?

>
> Implement a bulk operation api to set load & voltages before doing bulk
> enable. This will ensure that the PHY remains operational under all
> conditions.
>
> Signed-off-by: Udipto Goswami <quic_ugoswami@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 121 +++++++++++++++++-
>  1 file changed, 114 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index eb0b0f61d98e..cbe9cdaa6849 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -78,11 +78,39 @@
>
>  #define LS_FS_OUTPUT_IMPEDANCE_MASK            GENMASK(3, 0)
>
> -static const char * const qcom_snps_hsphy_vreg_names[] = {
> -       "vdda-pll", "vdda33", "vdda18",
> +
> +struct qcom_snps_hsphy_regulator_data {
> +       const char *name;
> +       unsigned int enable_load;
> +       unsigned int min_voltage;
> +       unsigned int max_voltage;
> +};
> +
> +static const struct qcom_snps_hsphy_regulator_data hsphy_vreg_l[] = {
> +       {
> +               .name = "vdda-pll",
> +               .enable_load = 30000,
> +               .min_voltage = 825000,
> +               .max_voltage = 925000,
> +       },
> +
> +       {
> +               .name = "vdda18",
> +               .enable_load = 19000,
> +               .min_voltage = 1704000,
> +               .max_voltage = 1800000
> +       },
> +
> +       {
> +               .name = "vdda33",
> +               .enable_load = 16000,
> +               .min_voltage = 3050000,
> +               .max_voltage = 3300000
> +       },
> +
>  };
>
> -#define SNPS_HS_NUM_VREGS              ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
> +#define SNPS_HS_NUM_VREGS              ARRAY_SIZE(hsphy_vreg_l)
>
>  struct override_param {
>         s32     value;
> @@ -132,12 +160,90 @@ struct qcom_snps_hsphy {
>         struct clk_bulk_data *clks;
>         struct reset_control *phy_reset;
>         struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
> +       const struct qcom_snps_hsphy_regulator_data *vreg_list;
>
>         bool phy_initialized;
>         enum phy_mode mode;
>         struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>  };
>
> +static int __vdda_phy_bulk_enable_disable(struct qcom_snps_hsphy *hsphy, bool on)

Separate functions, please.

> +{
> +       int ret = 0;
> +       int i;
> +
> +       if (!on)
> +               goto disable_vdd;
> +
> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> +
> +               ret = regulator_set_load(hsphy->vregs[i].consumer,
> +                                        hsphy->vreg_list[i].enable_load);
> +
> +               if (ret < 0) {
> +                       dev_err(hsphy->dev, "unable to set HPM of %s %d\n",
> +                                               hsphy->vregs[i].supply, ret);
> +                       goto err_vdd;
> +               }
> +       }
> +
> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> +               ret = regulator_set_voltage(hsphy->vregs[i].consumer,
> +                                           hsphy->vreg_list[i].min_voltage,
> +                                           hsphy->vreg_list[i].max_voltage);
> +               if (ret) {
> +                       dev_err(hsphy->dev,
> +                               "unable to set voltage of regulator %s %d\n",
> +                                               hsphy->vregs[i].supply, ret);
> +                       goto put_vdd_lpm;
> +               }
> +       }
> +
> +       ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> +       if (ret)
> +               goto unconfig_vdd;
> +
> +       return ret;
> +
> +disable_vdd:
> +       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> +
> +unconfig_vdd:
> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> +               ret = regulator_set_voltage(hsphy->vregs[i].consumer, 0,
> +                                           hsphy->vreg_list[i].max_voltage);
> +               if (ret) {
> +                       dev_err(hsphy->dev,
> +                       "unable to set voltage of regulator %s %d\n",
> +                                       hsphy->vregs[i].supply, ret);
> +               }
> +       }
> +
> +put_vdd_lpm:
> +       for (i = 0; i < SNPS_HS_NUM_VREGS; i++) {
> +               ret = regulator_set_load(hsphy->vregs[i].consumer, 0);
> +
> +               if (ret < 0) {
> +                       dev_err(hsphy->dev, "unable to set LPM of %s %d\n",
> +                                               hsphy->vregs[i].supply, ret);
> +               }
> +       }
> +
> +err_vdd:
> +       return ret;
> +
> +}
> +
> +static int vdda_phy_bulk_enable(struct qcom_snps_hsphy *hsphy)
> +{
> +       return __vdda_phy_bulk_enable_disable(hsphy, true);
> +}
> +
> +static int vdda_phy_bulk_disable(struct qcom_snps_hsphy *hsphy)
> +{
> +       return __vdda_phy_bulk_enable_disable(hsphy, false);
> +}
> +
>  static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
>  {
>         struct device *dev = hsphy->dev;
> @@ -390,7 +496,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>
>         dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
>
> -       ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> +       ret = vdda_phy_bulk_enable(hsphy);
>         if (ret)
>                 return ret;
>
> @@ -471,7 +577,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>  disable_clks:
>         clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
>  poweroff_phy:
> -       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> +       ret = vdda_phy_bulk_disable(hsphy);
>
>         return ret;
>  }
> @@ -482,7 +588,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
>
>         reset_control_assert(hsphy->phy_reset);
>         clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
> -       regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> +       vdda_phy_bulk_disable(hsphy);
>         hsphy->phy_initialized = false;
>
>         return 0;
> @@ -592,8 +698,9 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
>
>         num = ARRAY_SIZE(hsphy->vregs);
>         for (i = 0; i < num; i++)
> -               hsphy->vregs[i].supply = qcom_snps_hsphy_vreg_names[i];
> +               hsphy->vregs[i].supply = hsphy_vreg_l[i].name;
>
> +       hsphy->vreg_list  = hsphy_vreg_l;
>         ret = devm_regulator_bulk_get(dev, num, hsphy->vregs);
>         if (ret)
>                 return dev_err_probe(dev, ret,
> --
> 2.17.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
