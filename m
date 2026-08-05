Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFDBBC55822
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 09:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+QFLADbaA9zvpd+6wKHWGYIEdl/pfIdzGphKxqh1IU=; b=DPi0NyzhIuvpo8hQT2qzTXD0vv
	pt94rcib6mmeZyF23KhqDQKyAXALK1BrpoWGWDIionhOmJSms3sviPMxs4A0zN6gvOOdBaqILaEv5
	A0KuT9bwaMQ3XLfRt0q0PD6V+lv/ZvIqhIdQP9p8lsxSenFRN3PgX+MUW5cRyA3FNfeWjp4u2Z9Hn
	f8GuMn6AXaOb0/b1di4MU1H3QLnbT8HC6IFRMTuKwLfYdK20X+z3GhByMnN3rD+lexNmsCLPj4Z4h
	3LcsAAOtdIbl/ncf4wE937FLPExoggbvaj7Jiy2/1inhAz2qaNKCGbNgGVbGdc9gpUuRNYkzi+bxK
	w+qNPWtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrXst-00000003cEY-1drJ;
	Wed, 05 Aug 2026 09:25:59 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrXsq-00000003cDt-1bJC
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 09:25:57 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-495590dde14so7676905e9.0
        for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 02:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785921954; x=1786526754; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8k2s2VnaAHk68oU/LZH7jtw6dj5ASex+T2rhuCCV/P4=;
        b=sH2YW4MrqBZXcurmTucbZIS/5N2XV0UuENpKIObCBH/6xHDTIBBaLbIFfwDdd7/gn4
         nzosFCn684sMro3cj11FkLy0y5k/WB7q6NWeTD/Yx/eQS8x402hPAsJKKReAA0jle53n
         HMXplKQm5RS0BxD7zp7iK1FfESaE48A90BlN9J2n/CBj/ZcqdabyEbVwrHw3w9AsklMY
         ZhYV/jLuomtiZJB6lzkMKMUpp0HZeGoNmJtcWFqiSfXiO9NlWwYEPYTR5OO93k0GyvYR
         VO+penQbEXh1Y1/wiYcytkgLWkPthTyT7aIx+1uA6qAwq+mF2ghyqaPJeT01B4Nzueex
         X9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785921954; x=1786526754;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8k2s2VnaAHk68oU/LZH7jtw6dj5ASex+T2rhuCCV/P4=;
        b=H79Jfux/hYHx1JNo9a5NmhszRlecmjEdod3uUDOIA3C6906sQZJnBlY1iO42smZnvR
         aF1Vgqun+mrOfeH4EIJGLdT/dMpsbZMyOAau6AEm2LLPe4sZSomEiC/dqggEhF+nShoY
         hGwlXvfcy9WmQw8qBJu7WvQ7jqh6Hjp7OYqqlp0OAUJPh8Gycs5+OokEnJPpevxNB7W/
         ap41emwUIiHJ9TP2Qy6Xx1E7c8ig21b7VrRqS6Dv5toHzOH5wJ3J7Q7ZYcVhGEv862He
         0x8PwW1YGdTE+Z2cCz7brOPiW2YgTi9B3ndzp72KxjsDIlal+ozBtVU4txdKDBlokJjl
         LOTg==
X-Forwarded-Encrypted: i=1; AHgh+Ro6pA2byd0n5T+kZYwoiGFUowIDIxaUx5n3Vp8+W38IpqXWHiDT2xqv0LgwB2+5M+J4l2L9wnz2p38=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTVeSMH3V4mijMpsIu6mkBjSNgOgf1lZw7Tdd+3qakyOwU0eRA
	l/ly/eikxHUazW+nBQet0O1yXoNdt1iIcsyUrJtp08Kz9COvgV1CGvqGfiK2MWiNbog=
X-Gm-Gg: AR+sD10uzgym95GAqxIdJRF+LqKs7K94g93SFtJXpDlWyUbvI0CJ2GcFQVnFyTZ/mJE
	9TaWcffeTt8CesSLtFKBWZw+M8llc829YfbrULowiG552NGexRm6D+H2pBDkK/T5Xqb7423XUVa
	0cx+Z3JoqSf01u2WcTJZ144IUo4j/8gmnPMAZQkwJTCofl7sg4f1x3kJy/l6MDPUep4avAq/WmR
	V6WU3msjqtkv28g/wyRbr2XryYxupeHrWhIwMbKHnVZ1CTTrKGcKrX9Hxwzod5NPMVvl7bEjxJY
	oZpYhIrgpkof89Pkg6IwPie2KaHxWmHawWA8rTsqdFxMcDwM1DUBU9VgTvoe6W8V0Mi3Gq/6Vi7
	fQ3lWcgM5UXjAfPP4TJgczPTmGSnAbeXJ1BuUchTF3dmgvZjExeP3Q+5VCyI7+8XQDvt9lA0LfX
	fWwhQ2gHJqfnIZkZwX80X4FhJGB4KtgwzUzhXRB541vrwTB0nEEHrZ60A5Gu42bPHZufDy0sxTL
	nKvWjYua7kmuB/TQXRefMun+GyOEC1HGpRXyIy0r7tHn7EW/HvYljA=
X-Received: by 2002:a05:600c:8b35:b0:499:4d4b:be2b with SMTP id 5b1f17b1804b1-4994e7d2bb5mr52122365e9.16.1785921953693;
        Wed, 05 Aug 2026 02:25:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:b524:aa27:5120:b778? ([2a01:e0a:106d:1080:b524:aa27:5120:b778])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4994dfcc6acsm68421745e9.3.2026.08.05.02.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2026 02:25:53 -0700 (PDT)
Message-ID: <5231dd3d-18f4-461c-985d-64a7720d62c9@linaro.org>
Date: Wed, 5 Aug 2026 11:25:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v15 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260730-x1e-csi2-phy-v15-0-f284131de1fa@linaro.org>
 <20260730-x1e-csi2-phy-v15-2-f284131de1fa@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260730-x1e-csi2-phy-v15-2-f284131de1fa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_022556_494541_38AE2180 
X-CRM114-Status: GOOD (  32.60  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/30/26 14:02, Bryan O'Donoghue wrote:
> Add a new MIPI CSI2 driver in DPHY mode initially. The entire set of
> existing CAMSS CSI PHY init sequences are imported in order to save time
> and effort in later patches.
> 
> The following devices are supported in this drop:
> "qcom,x1e80100-csi2-phy"
> 
> In-line with other PHY drivers the process node is included in the name.
> Data-lane and clock lane positioning and polarity selection via newly
> amended struct phy_configure_opts_mipi_dphy{} is supported.
> 
> The Qualcomm 3PH class of PHYs can do both DPHY and CPHY mode. For now only
> DPHY is supported.
> 
> In porting some of the logic over from camss-csiphy*.c to here its also
> possible to rationalise some of the code.
> 
> In particular use of regulator_bulk and clk_bulk as well as dropping the
> seemingly useless and unused interrupt handler.
> 
> The PHY sequences and a lot of the logic that goes with them are well
> proven in CAMSS and mature so the main thing to watch out for here is how
> to get the right sequencing of regulators, clocks and register-writes.
> 
> The register init sequence table is imported verbatim from the existing
> CAMSS csiphy driver. A follow-up series will rework the table to extract
> the repetitive per-lane pattern into a loop.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   MAINTAINERS                                        |  10 +
>   drivers/phy/qualcomm/Kconfig                       |  15 +
>   drivers/phy/qualcomm/Makefile                      |   5 +
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 385 +++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 460 +++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  97 +++++
>   6 files changed, 972 insertions(+)
> 

<snip>

> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (!IS_ERR(phy_provider))
> +		dev_dbg(dev, "Registered MIPI CSI2 PHY device\n");


Small nit, since the bindings doesn't specify the phy-cells, the xlate here
is useless since only used by of_phy_get()

I would suggest passing NULL or a dummy function returning ERR_PTR(-ENODEV)


> +
> +	return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
> +	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, phy_qcom_mipi_csi2_of_match_table);
> +
> +static struct platform_driver phy_qcom_mipi_csi2_driver = {
> +	.probe		= phy_qcom_mipi_csi2_probe,
> +	.driver = {
> +		.name	= "qcom-mipi-csi2-phy",
> +		.of_match_table = phy_qcom_mipi_csi2_of_match_table,
> +	},
> +};
> +
> +module_platform_driver(phy_qcom_mipi_csi2_driver);
> +
> +MODULE_DESCRIPTION("Qualcomm MIPI CSI2 PHY driver");
> +MODULE_AUTHOR("Bryan O'Donoghue <bod@kernel.org>");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> new file mode 100644
> index 0000000000000..7e55ae0073704
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
> @@ -0,0 +1,97 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + *
> + * Qualcomm MIPI CSI2 CPHY/DPHY driver
> + *
> + * Copyright (C) 2025 Linaro Ltd.
> + */
> +#ifndef __PHY_QCOM_MIPI_CSI2_H__
> +#define __PHY_QCOM_MIPI_CSI2_H__
> +
> +#include <linux/phy/phy.h>
> +
> +#define CSI2_MAX_DATA_LANES	4
> +#define CSI2_DEFAULT_CLK_LANE	7

As discussed offline, I don't think the clock lane is as index 7, but is the bit to enable the
dedicated (unnumbered) clock lane as the register define suggests:

 > +#define CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE	BIT(7)

So the question occurs on how to define the clock-lanes with the "combo/split mode"
where a specific data lane is transformed as clock lane, we would need to describe
this clock lane but what would be the index of the dedicated clock lane we pass into clock-lanes ?

So perhaps you should remove support of clock-lane entirely for now and just use the dedicated lock lane,
and define this when implementing the "combo/split mode" support.

Neil

> +
> +struct mipi_csi2phy_lane {
> +	u8 pos;
> +	u8 pol;
> +};
> +
> +struct mipi_csi2phy_lanes_cfg {
> +	struct mipi_csi2phy_lane data[CSI2_MAX_DATA_LANES];
> +	struct mipi_csi2phy_lane clk;
> +};
> +
> +struct mipi_csi2phy_stream_cfg {
> +	s64 link_freq;
> +	u8 num_data_lanes;
> +	struct mipi_csi2phy_lanes_cfg lane_cfg;
> +};
> +
> +struct mipi_csi2phy_device;
> +
> +struct mipi_csi2phy_hw_ops {
> +	void (*hw_version_read)(struct mipi_csi2phy_device *csi2phy_dev);
> +	void (*reset)(struct mipi_csi2phy_device *csi2phy_dev);
> +	int (*lanes_enable)(struct mipi_csi2phy_device *csi2phy_dev,
> +			    struct mipi_csi2phy_stream_cfg *cfg);
> +	void (*lanes_disable)(struct mipi_csi2phy_device *csi2phy_dev,
> +			      struct mipi_csi2phy_stream_cfg *cfg);
> +};
> +
> +struct mipi_csi2phy_lane_regs {
> +	const s32 reg_addr;
> +	const s32 reg_data;
> +	const u32 delay_us;
> +	const u32 param_type;
> +};
> +
> +struct mipi_csi2phy_device_regs {
> +	const struct mipi_csi2phy_lane_regs *init_seq;
> +	const int lane_array_size;
> +	const u32 common_regs_offset;
> +};
> +
> +struct mipi_csi2_genpd {
> +	const char *name;
> +	bool scaled;
> +};
> +
> +struct mipi_csi2phy_soc_cfg {
> +	const struct mipi_csi2phy_hw_ops *ops;
> +	const struct mipi_csi2phy_device_regs reg_info;
> +
> +	const char ** const supply_names;
> +	const unsigned int num_supplies;
> +
> +	const char ** const clk_names;
> +	const unsigned int num_clk;
> +
> +	const struct mipi_csi2_genpd *genpds;
> +	const unsigned int num_genpds;
> +};
> +
> +struct mipi_csi2phy_device {
> +	struct device *dev;
> +	u8 phy_mode;
> +
> +	struct phy *phy;
> +	void __iomem *base;
> +
> +	struct clk_bulk_data *clks;
> +	struct clk *timer_clk;
> +	u32 timer_clk_rate;
> +
> +	struct regulator_bulk_data *supplies;
> +	struct dev_pm_domain_list *pd_list;
> +
> +	const struct mipi_csi2phy_soc_cfg *soc_cfg;
> +	struct mipi_csi2phy_stream_cfg stream_cfg;
> +
> +	u32 hw_version;
> +};
> +
> +extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
> +
> +#endif /* __PHY_QCOM_MIPI_CSI2_H__ */
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
