Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D69B9CCA473
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 19:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXOr1LJz1GIi2zu1diJpAHaAGvupUCVX1KGkplOBHPI=; b=oPoWEShqkAsZuT
	XxdfWF4G+RhWnBY9UFP1bGvoauNWo6V3J3MIR5dA0HODe21BQtBavY7H5adzlQnzcPs+nFXxrhc2p
	ewN7yZKwRcGTNkDinzV6Zu7mvSIADQmQgAqbJSHOorpMeU/6hCISAupDt7vudRpTUG5XTHdhegAED
	IvrokKw4NnlkJ3dT80NBduoMlCJcKzdxgtHzc6hDWmGyQTNAbuO0q1my1c24BBPqJA3euYnhaVRat
	DJWM62QN4Tv2yin4BeT+zlgWdN1qSkQbcwWbqH2H6fAWYCcQFiA98wveWwfFD+d8fv3EKDHZAqi11
	x7gv0ZCeb3bPe12OXtoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jfj-006wIJ-Sc; Tue, 21 Jun 2022 19:36:23 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jbq-006uCk-O3
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 19:32:24 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id cu16so21327487qvb.7
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 12:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3srfLFxYG7qfDVEhrAKtCq0hN10jlAvu2WRTV989x8g=;
        b=GHkVMrebgfvnerev2S8Dko8BoUQ/WAd1+7MHrFaKplmZGhnuEc5eijtoVZJhD/KLrL
         QI2WHO1jHuheIxGip/PQ2YvjcuEVsEB2T4qid1z3y4WekPUlqYjFTpoAqLM1ek4jtLCT
         NkFLiQLJVqDrggRJ2v6CUa0DUUS6Kww4TjX4Y/8/hnLSAjg8gLVqit/86dG6hxQAS8Cx
         9H3IQaVcGdIZ5z7UKKY7iFjfkGORF9swcrMoTQwttfLYjLsACFkE0j57KSPJVIxLCxRA
         HqpoRy/t/HsTRSVXC834JSQbiMb50dm4A/8TNFZq8KVWzf/r499HlxHyYmTcW7I7jL0+
         cSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3srfLFxYG7qfDVEhrAKtCq0hN10jlAvu2WRTV989x8g=;
        b=r355Xvgb6clKugANEVgEeqVAnFGFJ6bzuOttJPe7ItO1fhJtVIcj3wIsr5Oc+ivQqi
         UhWq8MBxtqMMmPGxXCiSBIcqvnE+XSCIddY5SxDbB0Dp8CYRJH79MYYL/UC+phhdCR1G
         S8Yq97bWrPG6/KhOED7e0s+BeD2tSSjnGr4fatO5U+z0y6SyPrZ7Ew9y1zrxCXmQv3yW
         48alwWc+8UQICarZSnfdJ06EYGdMLuDNqZeF3iQydDlJmXfDDK8x4c8pl7gCmCpy6ADf
         X611Yx1PPmSIWjIl3XH3FS8Os7bOEg5YiRcJhBF+lx744nlqfylGRKALaDWwEuWskPQQ
         kVxA==
X-Gm-Message-State: AJIora9ayYgaFXliIEkw71JyQIrJG9CqlM8D/eVrT4lQ6hSe9yeZz0JJ
	gZyo6/4J0OaWoMrmqQ9YitQY6CzebyFHwu+zkE0tSA==
X-Google-Smtp-Source: AGRyM1t4IEveB4UfUxLGaX48vbbsWsqCyvXeGQnnC+lvMBQdKywxsl7HLiRfW0mEXQDTfkTUEY6XBxnMbsN2tWpF6r0=
X-Received: by 2002:a05:622a:1351:b0:305:2e58:939 with SMTP id
 w17-20020a05622a135100b003052e580939mr25141476qtk.295.1655839941451; Tue, 21
 Jun 2022 12:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220621193020.1630180-1-robimarko@gmail.com>
In-Reply-To: <20220621193020.1630180-1-robimarko@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jun 2022 22:32:10 +0300
Message-ID: <CAA8EJppTRitQujoXEXkS0t9p7RF3dOOi9KzaA+or53xQbNWEBw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] phy: qcom-qmp-pcie: make pipe clock rate configurable
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com, 
	vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_123222_852966_6B14FE22 
X-CRM114-Status: GOOD (  19.01  )
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

On Tue, 21 Jun 2022 at 22:30, Robert Marko <robimarko@gmail.com> wrote:
>
> IPQ8074 Gen3 PCIe PHY uses 250MHz as the pipe clock rate instead of 125MHz
> like every other PCIe QMP PHY does, so make it configurable as part of the
> qmp_phy_cfg.
>
> Set all of the current configs to use 125MHz as currently done.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index b2cd0cf965d8..4dc4d4f8547e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1284,6 +1284,9 @@ struct qmp_phy_cfg {
>
>         /* true, if PHY has secondary tx/rx lanes to be configured */
>         bool is_dual_lane_phy;
> +
> +       /* QMP PHY pipe clock interface rate */
> +       unsigned long pipe_clock_rate;
>  };
>
>  /**
> @@ -1419,6 +1422,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,

Ugh. I'd say, let's make this a default.

>  };
>
>  static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
> @@ -1447,6 +1452,8 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
> @@ -1478,6 +1485,8 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
> @@ -1507,6 +1516,8 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
> @@ -1546,6 +1557,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
> @@ -1586,6 +1599,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
> @@ -1611,6 +1626,8 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
>         .start_ctrl             = SERDES_START | PCS_START,
>         .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
>         .phy_status             = PHYSTATUS,
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
> @@ -1641,6 +1658,8 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
> @@ -1673,6 +1692,8 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
> @@ -1704,6 +1725,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
> @@ -1736,6 +1759,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
>         .has_pwrdn_delay        = true,
>         .pwrdn_delay_min        = 995,          /* us */
>         .pwrdn_delay_max        = 1005,         /* us */
> +
> +       .pipe_clock_rate        = 125000000,
>  };
>
>  static void qcom_qmp_phy_pcie_configure_lane(void __iomem *base,
> @@ -2121,8 +2146,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
>
>         init.ops = &clk_fixed_rate_ops;
>
> -       /* controllers using QMP phys use 125MHz pipe clock interface */
> -       fixed->fixed_rate = 125000000;
> +       fixed->fixed_rate = qmp->phys[0]->cfg->pipe_clock_rate;
>         fixed->hw.init = &init;
>
>         ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> --
> 2.36.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
