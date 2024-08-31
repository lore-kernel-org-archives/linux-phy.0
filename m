Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7ACFCA1018
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 10:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gklLo/RSJ+YnB9sSWXkrRYK5kYvCF3u/RJ2Oa9hz/xk=; b=RY9Htrtmh4G4l9
	Vbq5nXGgFPr15DWcjkS9zYAn8AyNdmE3ortkQpwUvr6etkhi+ojMxuCmihX0OXOyL9csrFCd5GtRa
	eRwIUN5czKP2P8TxtyzdP7lQ/aSbZpv4n8bS2tysUCtVG5PsdAAZozVLbM+7IMu7DcKe/PsIG0/C6
	E9K1f+GpzFw0tL4TLYLNKi5RQSm7x9AkhLCTMEsZPdrOYXR2jNlFM0BQnPfO1iRrsGYZmkxID3+8s
	6JPUlSR8+vEAv1CBe1tJCdciFyyUshZf8iwoRzxmka0u0dRcCuMHZ4M1REcxqHcvkk9C3D/XIvZ4i
	F4PFEhBjqr3JtwEs3Ybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skLJq-000000097He-1Y9Q;
	Sat, 31 Aug 2024 10:26:58 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skLJn-000000097GZ-0H0C
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 10:26:57 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2f5064816edso28997421fa.3
        for <linux-phy@lists.infradead.org>; Sat, 31 Aug 2024 03:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725100012; x=1725704812; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t7IgB1agJBW5RBkqLzlSX6ufghWuw8mW4AOdleN6NVM=;
        b=cjOcuKYIV+lNgtVH4XS7qROnF4ryvqCEkYk8ceym8iGEzrgp45sZCPPoOCnUaLdDZw
         vzpTSUpKdq1ojVLbNa8RjyLB3z6OIr0evGis9mOrz9FnTS4QlN/Oa2xA/4b2TBftdpDf
         TzVdXhBUogB2CB0zsTr5aLtPt9htLHB204MQ5B3HkSD0DbtYdnIMvnwu+wQ3ZedDfjkr
         h2BqAZszndVd+0v0ac8hVLh1y261HguWRNoVB1PQGLRNSvpWFAcfSGl5nT4/HgyEiFEI
         3zuzrh3JHdJFWMFYKRsdv1BERlzXH5oBKwoeb131GlKZPOHGMjwRoWr5BRCty5zd0HM+
         l2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725100012; x=1725704812;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7IgB1agJBW5RBkqLzlSX6ufghWuw8mW4AOdleN6NVM=;
        b=Z23TdYJRU5S6R78zb1DFLzeVNubKkTtj00iQpRl9UiYFL8/rHZGLMFIKkkomJe2Ruo
         xrA6NZ2kK4tzr7zu5NWgH94Dnh5OjpgXqNsU2ZiI+8FbPDvlZVrW2SFjBmTC5S8Oz7yB
         0KKWS1h9B/Bbgp+/zqLmetTMwTlX1qe9V1tqMaFBgwT7RAfjonmrQOJkwhyIVWkSzGXy
         H2JSoEOxKyPzEz8VOIcFgwZQ+ER4KyR4o8Bvsb4JjssV9EzmUO/pCHAMRTba8AQkd4KG
         chHgIsptPKeNZm4QLe6qRPp/FKT2yaLwMWNz1frJ8E0Ryl2RHZ/46YJ5dNq7A3YqsBJ3
         xw1w==
X-Forwarded-Encrypted: i=1; AJvYcCVGZjGCZFZ3/kIu3wKYZOwvS48NBsdtJenXpY6yzZGBnHeA3sfZBCv9ZBl6xMLk5dQA2Sw9H0vVwPY=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywd1d3L9LwiJ9mG/zgCYFZSZ+jtCbGRbhlVIVe+O2ZQn2MalwuT
	nNTuWvEqpdQJDt2ciP/7iwXtjNnY5BCi84vlz/kLU+N4kc/MYXpwF5pNwMVQS3A=
X-Google-Smtp-Source: AGHT+IHTXl7fs6MOyZbzgPXqP04Jf+Owl6eDwnf2NZWtSnIIVFM8b2dwxzRBRRwgDmGHzyhMft09UA==
X-Received: by 2002:a05:651c:b26:b0:2ef:1d8d:21fd with SMTP id 38308e7fff4ca-2f610390981mr70278371fa.2.1725100011804;
        Sat, 31 Aug 2024 03:26:51 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::7a1? (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614efec43sm10060541fa.29.2024.08.31.03.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 03:26:51 -0700 (PDT)
Message-ID: <2009ea50-c82e-45ee-afd2-b6f5e0435dba@linaro.org>
Date: Sat, 31 Aug 2024 13:26:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] drm/msm: add msm8998 hdmi phy/pll support
To: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
 <20240724-hdmi-tx-v7-4-e44a20553464@freebox.fr>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240724-hdmi-tx-v7-4-e44a20553464@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_032655_321785_E5CEFD3F 
X-CRM114-Status: GOOD (  30.21  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/07/2024 18:01, Marc Gonzalez wrote:
> From: Arnaud Vrac <avrac@freebox.fr>
> 
> Add support for the HDMI PHY as present on the Qualcomm MSM8998 SoC.
> This code is mostly copy & paste of the vendor code from msm-4.4
> kernel.lnx.4.4.r38-rel.
> 
> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>   drivers/gpu/drm/msm/Makefile                   |   1 +
>   drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
>   drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
>   drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 779 +++++++++++++++++++++++++
>   drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
>   5 files changed, 882 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/Makefile b/drivers/gpu/drm/msm/Makefile
> index eb788921ff4fe..b9a5dc8c33ede 100644
> --- a/drivers/gpu/drm/msm/Makefile
> +++ b/drivers/gpu/drm/msm/Makefile
> @@ -32,6 +32,7 @@ msm-display-$(CONFIG_DRM_MSM_HDMI) += \
>   	hdmi/hdmi_phy.o \
>   	hdmi/hdmi_phy_8960.o \
>   	hdmi/hdmi_phy_8996.o \
> +	hdmi/hdmi_phy_8998.o \
>   	hdmi/hdmi_phy_8x60.o \
>   	hdmi/hdmi_phy_8x74.o \
>   	hdmi/hdmi_pll_8960.o \
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
> index 4586baf364151..a62d2aedfbb72 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi.h
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
> @@ -137,6 +137,7 @@ enum hdmi_phy_type {
>   	MSM_HDMI_PHY_8960,
>   	MSM_HDMI_PHY_8x74,
>   	MSM_HDMI_PHY_8996,
> +	MSM_HDMI_PHY_8998,
>   	MSM_HDMI_PHY_MAX,
>   };
>   
> @@ -154,6 +155,7 @@ extern const struct hdmi_phy_cfg msm_hdmi_phy_8x60_cfg;
>   extern const struct hdmi_phy_cfg msm_hdmi_phy_8960_cfg;
>   extern const struct hdmi_phy_cfg msm_hdmi_phy_8x74_cfg;
>   extern const struct hdmi_phy_cfg msm_hdmi_phy_8996_cfg;
> +extern const struct hdmi_phy_cfg msm_hdmi_phy_8998_cfg;
>   
>   struct hdmi_phy {
>   	struct platform_device *pdev;
> @@ -184,6 +186,7 @@ void __exit msm_hdmi_phy_driver_unregister(void);
>   #ifdef CONFIG_COMMON_CLK
>   int msm_hdmi_pll_8960_init(struct platform_device *pdev);
>   int msm_hdmi_pll_8996_init(struct platform_device *pdev);
> +int msm_hdmi_pll_8998_init(struct platform_device *pdev);
>   #else
>   static inline int msm_hdmi_pll_8960_init(struct platform_device *pdev)
>   {
> @@ -194,6 +197,11 @@ static inline int msm_hdmi_pll_8996_init(struct platform_device *pdev)
>   {
>   	return -ENODEV;
>   }
> +
> +static inline int msm_hdmi_pll_8998_init(struct platform_device *pdev)
> +{
> +	return -ENODEV;
> +}
>   #endif
>   
>   /*
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
> index 88a3423b7f24d..95b3f7535d840 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
> @@ -118,6 +118,9 @@ static int msm_hdmi_phy_pll_init(struct platform_device *pdev,
>   	case MSM_HDMI_PHY_8996:
>   		ret = msm_hdmi_pll_8996_init(pdev);
>   		break;
> +	case MSM_HDMI_PHY_8998:
> +		ret = msm_hdmi_pll_8998_init(pdev);
> +		break;
>   	/*
>   	 * we don't have PLL support for these, don't report an error for now
>   	 */
> @@ -193,6 +196,8 @@ static const struct of_device_id msm_hdmi_phy_dt_match[] = {
>   	  .data = &msm_hdmi_phy_8x74_cfg },
>   	{ .compatible = "qcom,hdmi-phy-8996",
>   	  .data = &msm_hdmi_phy_8996_cfg },
> +	{ .compatible = "qcom,hdmi-phy-8998",
> +	  .data = &msm_hdmi_phy_8998_cfg },
>   	{}
>   };
>   
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> new file mode 100644
> index 0000000000000..9a3b005fa391a
> --- /dev/null
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c
> @@ -0,0 +1,779 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2016, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024 Freebox SAS
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/delay.h>
> +
> +#include "hdmi.h"
> +
> +#define HDMI_VCO_MAX_FREQ			12000000000UL
> +#define HDMI_VCO_MIN_FREQ			8000000000UL
> +
> +#define HDMI_PCLK_MAX_FREQ			600000000
> +#define HDMI_PCLK_MIN_FREQ			25000000
> +
> +#define HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD	3400000000UL
> +#define HDMI_DIG_FREQ_BIT_CLK_THRESHOLD		1500000000UL
> +#define HDMI_MID_FREQ_BIT_CLK_THRESHOLD		750000000UL
> +#define HDMI_CORECLK_DIV			5
> +#define HDMI_DEFAULT_REF_CLOCK			19200000
> +#define HDMI_PLL_CMP_CNT			1024
> +
> +#define HDMI_PLL_POLL_MAX_READS			100
> +#define HDMI_PLL_POLL_TIMEOUT_US		150
> +
> +#define HDMI_NUM_TX_CHANNEL			4
> +
> +struct hdmi_pll_8998 {
> +	struct platform_device *pdev;
> +	struct clk_hw clk_hw;
> +	unsigned long rate;
> +
> +	/* pll mmio base */
> +	void __iomem *mmio_qserdes_com;
> +	/* tx channel base */
> +	void __iomem *mmio_qserdes_tx[HDMI_NUM_TX_CHANNEL];
> +};
> +
> +#define hw_clk_to_pll(x) container_of(x, struct hdmi_pll_8998, clk_hw)
> +
> +struct hdmi_8998_phy_pll_reg_cfg {
> +	u32 com_svs_mode_clk_sel;
> +	u32 com_hsclk_sel;
> +	u32 com_pll_cctrl_mode0;
> +	u32 com_pll_rctrl_mode0;
> +	u32 com_cp_ctrl_mode0;
> +	u32 com_dec_start_mode0;
> +	u32 com_div_frac_start1_mode0;
> +	u32 com_div_frac_start2_mode0;
> +	u32 com_div_frac_start3_mode0;
> +	u32 com_integloop_gain0_mode0;
> +	u32 com_integloop_gain1_mode0;
> +	u32 com_lock_cmp_en;
> +	u32 com_lock_cmp1_mode0;
> +	u32 com_lock_cmp2_mode0;
> +	u32 com_lock_cmp3_mode0;
> +	u32 com_core_clk_en;
> +	u32 com_coreclk_div_mode0;
> +
> +	u32 tx_lx_tx_band[HDMI_NUM_TX_CHANNEL];
> +	u32 tx_lx_tx_drv_lvl[HDMI_NUM_TX_CHANNEL];
> +	u32 tx_lx_tx_emp_post1_lvl[HDMI_NUM_TX_CHANNEL];
> +	u32 tx_lx_pre_driver_1[HDMI_NUM_TX_CHANNEL];
> +	u32 tx_lx_pre_driver_2[HDMI_NUM_TX_CHANNEL];
> +	u32 tx_lx_res_code_offset[HDMI_NUM_TX_CHANNEL];
> +
> +	u32 phy_mode;
> +};
> +
> +struct hdmi_8998_post_divider {
> +	u64 vco_freq;
> +	int hsclk_divsel;
> +	int vco_ratio;
> +	int tx_band_sel;
> +	int half_rate_mode;
> +};
> +
> +static inline struct hdmi_phy *pll_get_phy(struct hdmi_pll_8998 *pll)
> +{
> +	return platform_get_drvdata(pll->pdev);
> +}
> +
> +static inline void hdmi_pll_write(struct hdmi_pll_8998 *pll, int offset,
> +				  u32 data)
> +{
> +	writel(data, pll->mmio_qserdes_com + offset);
> +}
> +
> +static inline u32 hdmi_pll_read(struct hdmi_pll_8998 *pll, int offset)
> +{
> +	return readl(pll->mmio_qserdes_com + offset);
> +}
> +
> +static inline void hdmi_tx_chan_write(struct hdmi_pll_8998 *pll, int channel,
> +				      int offset, int data)
> +{
> +	 writel(data, pll->mmio_qserdes_tx[channel] + offset);
> +}
> +
> +static inline u32 pll_get_cpctrl(u64 frac_start, unsigned long ref_clk,
> +				 bool gen_ssc)
> +{
> +	if ((frac_start != 0) || gen_ssc)
> +		return 0x8;
> +
> +	return 0x30;
> +}
> +
> +static inline u32 pll_get_rctrl(u64 frac_start, bool gen_ssc)
> +{
> +	if ((frac_start != 0) || gen_ssc)
> +		return 0x16;
> +
> +	return 0x18;
> +}
> +
> +static inline u32 pll_get_cctrl(u64 frac_start, bool gen_ssc)
> +{
> +	if ((frac_start != 0) || gen_ssc)
> +		return 0x34;
> +
> +	return 0x2;
> +}
> +
> +static inline u32 pll_get_integloop_gain(u64 frac_start, u64 bclk, u32 ref_clk,
> +					 bool gen_ssc)
> +{
> +	int digclk_divsel = bclk > HDMI_DIG_FREQ_BIT_CLK_THRESHOLD ? 1 : 2;
> +	u64 base;
> +
> +	if ((frac_start != 0) || gen_ssc)
> +		base = 0x3F;
> +	else
> +		base = 0xC4;
> +
> +	base <<= (digclk_divsel == 2 ? 1 : 0);
> +
> +	return (base <= 2046 ? base : 2046);
> +}
> +
> +static inline u32 pll_get_pll_cmp(u64 fdata, unsigned long ref_clk)
> +{
> +	u64 dividend = HDMI_PLL_CMP_CNT * fdata;
> +	u32 divisor = ref_clk * 10;
> +	u32 rem;
> +
> +	rem = do_div(dividend, divisor);
> +	if (rem > (divisor >> 1))
> +		dividend++;
> +
> +	return dividend - 1;
> +}
> +
> +static inline u64 pll_cmp_to_fdata(u32 pll_cmp, unsigned long ref_clk)
> +{
> +	u64 fdata = ((u64)pll_cmp) * ref_clk * 10;
> +
> +	do_div(fdata, HDMI_PLL_CMP_CNT);
> +
> +	return fdata;
> +}
> +
> +#define HDMI_REF_CLOCK_HZ ((u64)19200000)
> +#define HDMI_MHZ_TO_HZ ((u64)1000000)
> +static int pll_get_post_div(struct hdmi_8998_post_divider *pd, u64 bclk)
> +{
> +	u32 const ratio_list[] = {1, 2, 3, 4, 5, 6,
> +				     9, 10, 12, 15, 25};
> +	u32 const band_list[] = {0, 1, 2, 3};
> +	u32 const sz_ratio = ARRAY_SIZE(ratio_list);
> +	u32 const sz_band = ARRAY_SIZE(band_list);
> +	u32 const cmp_cnt = 1024;
> +	u32 const th_min = 500, th_max = 1000;
> +	u32 half_rate_mode = 0;
> +	u32 list_elements;
> +	int optimal_index;
> +	u32 i, j, k;
> +	u32 found_hsclk_divsel = 0, found_vco_ratio;
> +	u32 found_tx_band_sel;
> +	u64 const min_freq = HDMI_VCO_MIN_FREQ, max_freq = HDMI_VCO_MAX_FREQ;
> +	u64 freq_list[ARRAY_SIZE(ratio_list) * ARRAY_SIZE(band_list)];
> +	u64 found_vco_freq;
> +	u64 freq_optimal;
> +
> +find_optimal_index:
> +	freq_optimal = max_freq;
> +	optimal_index = -1;
> +	list_elements = 0;
> +
> +	for (i = 0; i < sz_ratio; i++) {
> +		for (j = 0; j < sz_band; j++) {
> +			u64 freq = div_u64(bclk, (1 << half_rate_mode));
> +
> +			freq *= (ratio_list[i] * (1 << band_list[j]));
> +			freq_list[list_elements++] = freq;
> +		}
> +	}
> +
> +	for (k = 0; k < ARRAY_SIZE(freq_list); k++) {
> +		u32 const clks_pll_div = 2, core_clk_div = 5;
> +		u32 const rng1 = 16, rng2 = 8;
> +		u32 th1, th2;
> +		u64 core_clk, rvar1, rem;
> +
> +		core_clk = (((freq_list[k] /
> +			      ratio_list[k / sz_band]) /
> +			      clks_pll_div) / core_clk_div);

This causes linking errors on arm32:

/usr/bin/arm-linux-gnueabi-ld: drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.o: 
in function `pll_get_post_div':
drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c:207: undefined reference to 
`__aeabi_uldivmod'

I'll replace this with div_u64. If it results in wrong frequencies being 
selected, please post a separate fix for 6.12-rc

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
