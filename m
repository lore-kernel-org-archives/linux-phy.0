Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C44FC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 11:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Sqc4y+hDFN8MbHkpD3RVrCh1GcOXKkJLM0n5qn+EjU=; b=tqVJTBf5f/UF/0
	kP/9qXq0kPQUqFAJhxIU65zmY3KkcnuRioPGfLsrHM7pPcM61AKuYvyl+Rh0BrNEXPAeAun4iCk6b
	qG53UnwKsdSq/ldtPzroE8499o1OEe7z50XpYg8ZrsLx3sH+feeeqb2etWKm2zTCJyPdW6HKP0KxB
	FYkHBUKcmgR+my/v2EJ9OMcmxy1D9Db8uTNWXDak+BSS2r8z9jVZDye/YSOpropTB7OwZIFBHGSSX
	GKxc4hSX3hKy64wxmj89j7yiM5C+IopvZ5WP9yi9990dzc5mtaopDFKaCgGyGkINUpbtnn2OmNgxI
	AGDZBqDeXAYz20zbFwvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm8fm-00000009JyO-4AZu;
	Tue, 21 Jul 2026 11:30:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm8fk-00000009Jxe-3RHa
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 11:30:06 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5aebd7da975so1271037e87.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 04:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784633403; x=1785238203; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hJp9wJTddQB51y4t9E/fwU9/+8UJoIvDaCNcWbFBtuY=;
        b=BpP+PGFYez4HmJYwJySCLFalV7GJil7EwcfUmwoq3d9tgx/pOmuZiksD61oqbOLXED
         9z2PpOmUdYaZG557I4nKhs+Sd64sE+LDYvA7qLUqp3hj4mUX8g6yBcabIXsq16iqLKgo
         sfzDpspFdUdwm8UmfPv5R+AIwUIVb7i5O6RQuM7V/Q78IAHCmLSor+OhcYtqsonKStVc
         2p11Q6pN465A/uMdIov9nTbfzvVN99nyE7rZEbRIoTKwkj2M6TG5j3HnmhX6nIAVLUMg
         DZLr3wW6C/WVPRSjsXYyGYXymn9TXn0iGOZtHWtWdjqGUpv2RG8f7sGpH9H2CXH2ch2l
         23kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784633403; x=1785238203;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hJp9wJTddQB51y4t9E/fwU9/+8UJoIvDaCNcWbFBtuY=;
        b=SLV6mn7PTG7hy2MZ+tTLMcH+VXSwIZjFVXHtyR2uxcRlNvrwogsFwyG5QRNIBNB64z
         5kHsmmzcUJSQ5PSshUQQlj3OsDpCiX6UGdjrUjizfHWLoJq1tSEwzCsMA5yC21qQmKFv
         CwGsuHb2W47lZHsYGVtDfCp0Ab+kNSey0xh7A5BBkYEvP9c1nBwc47WOt3NPoyTAuIzK
         RMKiC/Dcix4uQWfwjlNFBd6y1KJRvzpWyIV8iq9m3y3OYMUM7AqHgnDZY2cGKb8Z1TWc
         qmDWVsLIgb5IO4V1NsjJ6aCODoIJPxfJ5WeEOwBGva9UL6hS7PqmHUwDL93FQAlb3x/G
         dT9w==
X-Forwarded-Encrypted: i=1; AHgh+RpM2Jyv9d9kiYegrLXJmi2kWDQGu+K49tROPOuA1y0aR3CstLLZtfFm33pHoCt1N1ybmPxL2AYhoBg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHbeFdTAQIh63aQxDoKvC4d303OIuHTvbsfIYINpBrsdUxTDgr
	FijKkIhfGrDRFMvaqtAgrINsMe1DOMfEXps/poNvYBYC3prZ5u+zzNm/xqBh3gAd5KY=
X-Gm-Gg: AR+sD10W9t/l2S6irROdCHom/zcvxMfbQOs1Q7PgdiTdMYFSe6tjBUzzzCvnCwvPjoj
	nHTFQzCey5bcfnmiGytZmwgfC/HyxopXTw26svKc6lzq5qc6Ycj/EA4fBDGgvi8fMeG7eLj8/DW
	a5LytUyBGfSQIu3BBW/p1vmKSrOXvoJPxqjI0mf5IN5EWAdnZM7lKYQD/AehRMVczB33T/lJk9p
	owZHZPHh7tuH8LWzfOXryy0HI8Mdmq07cM61xAzjDSWXfo02nmrf6ApRa7IQnKt0Qf5YTngyWsL
	TYa6mwZ+KlDClIH9kGHQgYnUpXrKHo9+YLLEUrTB+IgOnvP7v+vZFqNyqYTHoog+hF8hlcL9BRb
	aSShVS03RtTswF26BshFaVOLGJ8y0bElIXgOIrv/9H8DdVuO8+tbeerTVfaKvJCoSISbS/c1hKR
	oJly3OobuIyWvDqrBxKYoO4n3DM4z9Gx+6354/k5/OgpXI3i9K1ciNs9olxMegiQSEYCw=
X-Received: by 2002:a05:6512:39c1:b0:5b0:2ba4:542d with SMTP id 2adb3069b0e04-5b2a4a79881mr367879e87.3.1784633402587;
        Tue, 21 Jul 2026 04:30:02 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291d0fdd6sm2868216e87.0.2026.07.21.04.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 04:30:02 -0700 (PDT)
Message-ID: <ce8538e1-3755-461c-b699-87d570436122@linaro.org>
Date: Tue, 21 Jul 2026 14:30:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-2-160c31958863@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260720-x1e-csi2-phy-v13-2-160c31958863@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_043004_898513_DC027483 
X-CRM114-Status: GOOD (  24.44  )
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

On 7/20/26 04:11, Bryan O'Donoghue wrote:
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

<snip>

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

There is no 7 lanes on CSIPHY, this value is bogus, also it was reported
previously.

The 'data-lanes' handling is broken in this version of the driver, since
it does not follow the description from included video-interfaces.yaml.

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
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
