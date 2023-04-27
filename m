Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 062FDC77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 13:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ZVG0fNRDRQTWLPGAINjvehiyHw7M3+LuNRXhIPeRFk=; b=vibXtPNy3DLe5q
	jdxPPdQMlcFTKOlRUyn6vVc0yxUB1BmbLC49d47uZoK/5rltOvLWpMpMnZDzpo1DysxENAZMWVCgz
	aSskg2DA6BnDOt0XvS2+bRhA7HfjDWoOV/SZfH5tg6qtUeq/PS5WHC/y8C8KBhfAozoQGbvYXSV+P
	zn1HYmFHYGa+iBHUkN/inrImWdGxJGWMgAMnGxF6SG8igl+8ttiYj6frvC0QMw0tbcN+JqOoj9gf3
	SdGF74FBSUSuOQcwdZch8lRe2okuTRzkPrM5bOonTsqFETzFUI0sCFVFKANYtdIoZpspXont+S23V
	l0bNPbbRNKB/URhzniRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1RP-006c9e-1y;
	Thu, 27 Apr 2023 13:13:43 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1RM-006c8q-0h
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 13:13:42 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94f7a7a3351so1617976866b.2
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 06:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682601217; x=1685193217;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vscKZXOMHGCxmqepktG+YSo5xCnMNlJ/MCwp2Reoljw=;
        b=XPcOuYGP2galzs2LI1gymjd3fb6dsr6uuwFm0V8eKICAYQ2jllVMmRvlIa8RyNLyTF
         sTB0UsnPJAJRPWYV1nBoTfA3zUCKieRDgjbz+qFi77YJ/LM5aRvraPKcS5cYkYeod1xO
         ik9LHKFOafUuJoDbMvnebgnXDW38rQmuLO1QXao3tpnhQOlMsTIoQZleKEqV+DFdW7u/
         lRWobLoVmRvTwOw7c9BhjtmRpDKew+9pvMaSCkJ1rsN/z4+gtouN9e4l9bSvuk0vzRnY
         JtZvp6qgbF7Q93w/OTqxs2tFMqEprfSeLxOYBE7lH0i0VDBiLpT26m68lzAi9UynsR6b
         wEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682601217; x=1685193217;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vscKZXOMHGCxmqepktG+YSo5xCnMNlJ/MCwp2Reoljw=;
        b=lunGHdFRZc5FMmA/WyKXKggBaoShS99ARRO9ICpu+yGPnmNZFeSWWqkvLdp5Fi9FJ1
         wboJKqlkR3+LbnxdFadMe/ixUdZlyN+hWHIiFVXs7kHLMe1/D+kdcGvERu4U0luftstc
         YE8X2MuXUudxP3Pe3kpB+T4EkJNJOAbJpzL/4Mw31DB1TsNr+7JAGVNm8HdV+wST4Cv4
         ULngCVfeRHUGvxTEl3+cIfS1/vR2IyZOqpl4idcDmmjwj2BzzXH2N+QtBgAPedMflduo
         fs198fEcxZQDG9yjqrVjdsUh8CcJ+hsnAT8sXd6/PSQDYbtkQHWSXAs7RO+liMLkFvox
         WFSw==
X-Gm-Message-State: AC+VfDyTN3O27X4zNX8Y9oV1V8qMU5o/kRUYL9Vj4wg3gOZ99olJ6O9e
	SYMFq7V0/UXmAkYyTQaDxQPFGQ==
X-Google-Smtp-Source: ACHHUZ4JnlMrgC0TMoqqsfF7YY2UG87RI1R6YRDLKvL4ElcA3jeeoPy9T2TGzODxurp48b8hVADTew==
X-Received: by 2002:a17:907:7ea2:b0:94e:547b:6301 with SMTP id qb34-20020a1709077ea200b0094e547b6301mr1446698ejc.8.1682601217684;
        Thu, 27 Apr 2023 06:13:37 -0700 (PDT)
Received: from [172.23.2.82] ([31.221.30.162])
        by smtp.gmail.com with ESMTPSA id s17-20020a170906285100b0094e597f0e4dsm9541668ejc.121.2023.04.27.06.13.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 06:13:37 -0700 (PDT)
Message-ID: <e6703585-660b-d0a2-7804-6c2724b2c095@linaro.org>
Date: Thu, 27 Apr 2023 15:13:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 3/7] phy: qcom-qmp-combo: Introduce orientation variable
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-4-quic_bjorande@quicinc.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230425034010.3789376-4-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_061340_262067_8A61EEAC 
X-CRM114-Status: GOOD (  23.40  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 25/04/2023 05:40, Bjorn Andersson wrote:
> In multiple places throughout the driver code has been written in
> prepration for handling of orientation switching.
> 
> Introduce a typec_orientation in qmp_combo and fill out the various
> "placeholders" with the associated logic. By initializing the
> orientation to "normal" this change has no functional impact, but
> reduces the size of the upcoming introduction of dynamic orientation
> switching.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 +++++++++++++----------
>   1 file changed, 30 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7280f7141961..6748f31da7a3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -19,6 +19,7 @@
>   #include <linux/regulator/consumer.h>
>   #include <linux/reset.h>
>   #include <linux/slab.h>
> +#include <linux/usb/typec.h>
>   
>   #include <dt-bindings/phy/phy-qcom-qmp.h>
>   
> @@ -63,6 +64,10 @@
>   /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
>   #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
>   
> +/* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
> +#define SW_PORTSELECT_VAL			BIT(0)
> +#define SW_PORTSELECT_MUX			BIT(1)
> +
>   #define PHY_INIT_COMPLETE_TIMEOUT		10000
>   
>   struct qmp_phy_init_tbl {
> @@ -1323,6 +1328,8 @@ struct qmp_combo {
>   	struct clk_fixed_rate pipe_clk_fixed;
>   	struct clk_hw dp_link_hw;
>   	struct clk_hw dp_pixel_hw;
> +
> +	enum typec_orientation orientation;
>   };
>   
>   static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> @@ -1955,29 +1962,23 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
>   static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
>   {
>   	u32 val;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
> +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>   
>   	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
>   	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;
>   
> -	/*
> -	 * TODO: Assume orientation is CC1 for now and two lanes, need to
> -	 * use type-c connector to understand orientation and lanes.
> -	 *
> -	 * Otherwise val changes to be like below if this code understood
> -	 * the orientation of the type-c cable.
> -	 *
> -	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC2)
> -	 *	val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
> -	 * if (lane_cnt == 4 || orientation == ORIENTATION_CC1)
> -	 *	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> -	 * if (orientation == ORIENTATION_CC2)
> -	 *	writel(0x4c, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_MODE);
> -	 */
> -	val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> +	if (dp_opts->lanes == 4 || reverse)
> +		val |= DP_PHY_PD_CTL_LANE_0_1_PWRDN;
> +	if (dp_opts->lanes == 4 || !reverse)
> +		val |= DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> +
>   	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>   
> -	writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
> +	if (reverse)
> +		writel(0x4c, qmp->pcs + QSERDES_DP_PHY_MODE);
> +	else
> +		writel(0x5c, qmp->pcs + QSERDES_DP_PHY_MODE);
>   
>   	return reverse;
>   }
> @@ -2235,7 +2236,7 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
>   {
>   	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>   	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
>   	u32 status;
>   	int ret;
>   
> @@ -2299,7 +2300,7 @@ static int qmp_v5_configure_dp_phy(struct qmp_combo *qmp)
>   {
>   	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>   	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
>   	u32 status;
>   	int ret;
>   
> @@ -2358,7 +2359,7 @@ static int qmp_v6_configure_dp_phy(struct qmp_combo *qmp)
>   {
>   	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
>   	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
>   	u32 status;
>   	int ret;
>   
> @@ -2462,6 +2463,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   	void __iomem *com = qmp->com;
>   	int ret;
> +	u32 val;
>   
>   	if (qmp->init_count++)
>   		return 0;
> @@ -2495,10 +2497,12 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
>   			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>   			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>   
> -	/* Default type-c orientation, i.e CC1 */
> -	qphy_setbits(com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
> -
> -	qphy_setbits(com, QPHY_V3_DP_COM_PHY_MODE_CTRL, USB3_MODE | DP_MODE);
> +	/* Use software based port select and switch on typec orientation */
> +	val = SW_PORTSELECT_MUX;
> +	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> +		val |= SW_PORTSELECT_VAL;
> +	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
> +	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>   
>   	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>   	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> @@ -3361,6 +3365,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   
>   	qmp->dev = dev;
>   
> +	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
> +
>   	qmp->cfg = of_device_get_match_data(dev);
>   	if (!qmp->cfg)
>   		return -EINVAL;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
