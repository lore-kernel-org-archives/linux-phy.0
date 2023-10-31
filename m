Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80B84C4167D
	for <linux-phy@archiver.kernel.org>; Tue, 31 Oct 2023 11:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsQQ+X2MKxutzYxI+zRO+dbzSnv8fy0YZOBqJFjrIfE=; b=gWVzQJhTQglbg6
	vB9RomBGhQrzYDJ1ysBbwzJrg/6IIwnPU7D/rfNqfuEYEpP0XCvFvu6DxLguuE7ZelEak0Ub0Hd7i
	vwpcuDHrAx6M7cVwDY8sd/BK3J/AppdtHai6f1Dld8l575AIxPHCLuLOSSVtvLX21Vd/C0MYvYXuz
	T5J0CCTJiDayr8BNWKqFXpB6nWdfIHgOw/do9TfxGx0tyPbmhFo6ixbTWq6I4DprwX0a0qX6Yo3Rl
	2oOVasDfiaEwsng2P9JU4BGpZqCte3yKNDwxw34552bDs6noN9jdo1hNTy/vvtHDaerdbbte49PIC
	Chd8ZfqUwLOwVSqg0KDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxmjG-0059CM-0k;
	Tue, 31 Oct 2023 11:16:14 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxmjC-0059Bs-03
	for linux-phy@lists.infradead.org;
	Tue, 31 Oct 2023 11:16:11 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50931355d48so1006580e87.3
        for <linux-phy@lists.infradead.org>; Tue, 31 Oct 2023 04:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698750965; x=1699355765; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hJu2yLllJ94MBomatNabmyNQ4Uloi0vS+isN5mDPCt0=;
        b=JzZJdw7eqQg8MbsDPpk2IIUX5QLKz3so337upIj3fPcjFpreM6tUkkf9uCcJCCtZu4
         QuSiBXLg1jyDtZi5B7HYpbqiJ7Ok6Y+QwfLYzHhAdqZtpQlVX90w6Rb3gZX75Xj0k+ua
         eQFPpMUBmcq8SG9aWUlghvNVLdUSm0gnoQpLkTU5m9e8Geg15sy4fmDsPeU6KWU+B39j
         vu/5Zrq25LI2vrP6a+YF6HuURaRqbBj8N5VVfIUs3w4OvuDnbunD5JPXPY36XyUPLtq6
         VKdW65LKJXfrMx6vBWoxFOujf6pDLG98Pbsb8VW+IP3FdNTxKXnjFrqu/LGbR+CAfRw9
         LAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698750965; x=1699355765;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hJu2yLllJ94MBomatNabmyNQ4Uloi0vS+isN5mDPCt0=;
        b=rKCKJKpEh/Y2PzPRa2a86YX5Jn0wBOHri0ZkFWb/CuZu6zgWFl2U1RplFJim+DA8Gt
         um2OvrICXALpyWMx2S4QbzgcvuEPciu2pMZSkegEZEAuxfg6O1jcXRB1xHD/gHiAbsQU
         js2WzcwUOre1yGkdpvT3M5g2f0CwkjVHQyJzPcSWMZF4YScO1NQPczeiPZt8+55Cio41
         JQa/ECmPigdHmDXqcKrPWIR1CzTwg1Mt7y3XzKIfogWplolpb1s360Q4j1RQkpvfrAcF
         3IECqknIVT7zvdWXAJ6+AvkNdKcLV4d1ejM/aTa2HOOV/cHUV9kakfz53dUBKx58O0UZ
         tpnw==
X-Gm-Message-State: AOJu0YyCyZt08Yb8umDj/g4zKkdgYto9hL+os38TTlL8ItZ2uKMKzIK8
	Tn3nWDTofwEUSr1BHXRr8TkYEw==
X-Google-Smtp-Source: AGHT+IHxZpOgWXPogwfe9mGa8MdZqaC12TgzQiZMNeuhq/Y1ScximNnSKTqRhS/LRgGekXZxobp+yA==
X-Received: by 2002:a05:6512:370c:b0:503:1c58:8a46 with SMTP id z12-20020a056512370c00b005031c588a46mr8812041lfr.9.1698750965529;
        Tue, 31 Oct 2023 04:16:05 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id g20-20020a056512119400b0050318bdad45sm181224lfr.64.2023.10.31.04.16.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 04:16:05 -0700 (PDT)
Message-ID: <2202b6e6-afe0-4bce-bdb5-43a7c5c4162f@linaro.org>
Date: Tue, 31 Oct 2023 12:16:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/15] phy: qualcomm: add MSM8974 HDMI PHY support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd
 <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-7-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230928111630.1217419-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_041610_082409_D4545AC7 
X-CRM114-Status: GOOD (  15.60  )
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

On 28.09.2023 13:16, Dmitry Baryshkov wrote:
> Add support for HDMI PHY on Qualcomm MSM8974 / APQ8074 platforms.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
I only have a few style comments (and timers-howto.txt fixes)

[...]

> +#define HDMI_8974_VCO_MAX_FREQ 1800000000UL
> +#define HDMI_8974_VCO_MIN_FREQ  600000000UL
> +
> +#define HDMI_8974_COMMON_DIV 5
> +
> +static void qcom_uniphy_setup(void __iomem *base, unsigned int ref_freq,
> +			      bool sdm_mode,
> +			      bool ref_freq_mult_2,
> +			      bool dither,
> +			      unsigned int refclk_div,
> +			      unsigned int vco_freq)
> +{
> +	unsigned int int_ref_freq = ref_freq * (ref_freq_mult_2 ? 2 : 1);
> +	unsigned int div_in_freq = vco_freq / refclk_div;
> +	unsigned int dc_offset = div_in_freq / int_ref_freq - 1;
> +	unsigned int sdm_freq_seed;
> +	unsigned int val;
> +	unsigned int remain = div_in_freq - (dc_offset + 1) * int_ref_freq;
> +	sdm_freq_seed = mult_frac(remain, 0x10000, int_ref_freq);
> +
> +	val = (ref_freq_mult_2 ? BIT(0) : 0) |
> +		((refclk_div - 1) << 2);
> +	writel(val, base + UNIPHY_PLL_REFCLK_CFG);
> +
> +	writel(sdm_mode ? 0 : 0x40 + dc_offset, base + UNIPHY_PLL_SDM_CFG0);
> +
> +	writel(dither ? 0x40 + dc_offset: 0, base + UNIPHY_PLL_SDM_CFG1);
> +
> +	writel(sdm_freq_seed & 0xff, base + UNIPHY_PLL_SDM_CFG2);
The ternary operator doesn't really improve readability here, imo

> +
> +	writel((sdm_freq_seed >> 8) & 0xff, base + UNIPHY_PLL_SDM_CFG3);
> +
> +	writel(sdm_freq_seed >> 16, base + UNIPHY_PLL_SDM_CFG4);
> +
> +	ref_freq = ref_freq * 5 / 1000;
> +	writel(ref_freq & 0xff, base + UNIPHY_PLL_CAL_CFG8);
> +
> +	writel(ref_freq >> 8, base + UNIPHY_PLL_CAL_CFG9);
> +
> +	vco_freq /= 1000;
> +	writel(vco_freq & 0xff, base + UNIPHY_PLL_CAL_CFG10);
> +
> +	writel(vco_freq >> 8, base + UNIPHY_PLL_CAL_CFG11);
> +}
> +
> +static unsigned long qcom_uniphy_recalc(void __iomem *base, unsigned long parent_rate)
> +{
> +	unsigned long rate;
> +	u32 refclk_cfg;
> +	u32 dc_offset;
> +	u64 fraq_n;
> +	u32 val;
> +
> +	refclk_cfg = readl(base + UNIPHY_PLL_REFCLK_CFG);
> +	if (refclk_cfg & BIT(0))
Can we name this bit?

> +		parent_rate *= 2;
> +
> +	val = readl(base + UNIPHY_PLL_SDM_CFG0);
> +	if (val & 0x40) {
BIT(6)? can we name it?

> +		dc_offset = val & 0x3f;
GENMASK?

> +		fraq_n = 0;
> +	} else {
> +		dc_offset = readl(base + UNIPHY_PLL_SDM_CFG1) & 0x3f;
GENMASK?
> +		fraq_n = readl(base + UNIPHY_PLL_SDM_CFG2) |
> +			(readl(base + UNIPHY_PLL_SDM_CFG3) << 8);
FIELD_PREP?

> +	}
> +
> +	rate = (dc_offset + 1) * parent_rate;
> +	rate += mult_frac(fraq_n, parent_rate, 0x10000);
> +
> +	rate *= (refclk_cfg >> 2) * 0x3 + 1;
3 would be more clear than 0x3 imo

[...]
> +	udelay(50);
usleep_range

[...]

> +	udelay(200);
usleep_range

> +
> +	return 0;
> +}
> +
> +static int qcom_hdmi_msm8974_phy_pll_enable(struct qcom_hdmi_preqmp_phy *hdmi_phy)
> +{
> +	int ret;
> +	unsigned long status;
> +
> +	/* Global enable */
> +	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_GLB_CFG, 0x81);
> +
> +	/* Power up power gen */
> +	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_PD_CTRL0, 0x00);
> +	udelay(350);
usleep_range

> +
> +	/* PLL power up */
> +	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x01);
> +	udelay(5);
> +
> +	/* Power up PLL LDO */
> +	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x03);
> +	udelay(350);
usleep_range

> +
> +	/* PLL power up */
> +	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x0f);
> +	udelay(350);
usleep_range

> +
> +	/* Poll for PLL ready status */
> +	ret = readl_poll_timeout(hdmi_phy->pll_reg + UNIPHY_PLL_STATUS,
> +				 status, status & BIT(0),
magic bit name?

> +				 100, 2000);
> +	if (ret) {
> +		dev_warn(hdmi_phy->dev, "HDMI PLL not ready\n");
> +		goto err;
> +	}
> +
> +	udelay(350);
usleep_range

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
