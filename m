Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76EC9CD5BD1
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 22:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2an/HDHl+TH1vCx7y0cLUixXqLA/LBeARdTWk7q2Lm4=; b=V3xhnzzGT3gjRu
	v2gz9Az+LqB07gyQDCsaQZw/rDIWNqjXLmEfipIAmOtJb4siG77t5ZVDPAIpPaQPHJhWgW65RbzvA
	Oc+guzM4oMMBq4DTihnXAlquSkZjk9eunjYhmKRdIumCPMrAVsLfxVakcfCM1uymdR7X8QzBZypJa
	IqTlEQ2MI6jVK/KDEkK1W84+65ToQakaHuYlzgNnEHV1q35ooWR/sgMBGqmm8c9s229X8W0TzzWb9
	cYx5WPdOkIsZKmLUVTkBdvfk3XeiT3qISl1Ek2LQFH32uJ+8kQ4quMNbOmNpe9irpw/O8MNdCuxli
	86soI595iRyN0hiDuzdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUXGc-0000000DrcL-4Bsr;
	Tue, 02 Jun 2026 22:07:23 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUXGa-0000000Drbh-2OKR
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 22:07:21 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-396773734e8so4625581fa.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 15:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780438038; x=1781042838; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7SRIMl3FmmdDZgXTjOCnwja2kX4Az8p1cvuxpefmzXA=;
        b=SfDCaWYxKWSx4kpKN724NocBlEToM7AnQQop+4yKaChpO58XKaGvQZ9KoHuYc1xf80
         Ev3dJhUJn9CYim59/0qUcUsM+WuSOXocrLh6eSLUkhw2ZR7QcwQIaed7Lrc04ZLiREUi
         kkoM1Q84oSTuhECR3uJ3ZVjXrCsNZYtABMrecMmf86USZHDreQ8tZZrQVQR+99FqhjnL
         bicDttr4LQVtxFxKzFjqffQvJ8C7pAtnBNTIZrN0y4tP7Z/y4kpOac6WKDgGVqeDkXzp
         ZnGlMi5X8V5jRC7CELzHRCWQTRuaNvradULk8URhjgWExDXwTkQclcEEbZVxny+FAcBy
         znBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780438038; x=1781042838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7SRIMl3FmmdDZgXTjOCnwja2kX4Az8p1cvuxpefmzXA=;
        b=ACGWhAO4opKz8KLxp+PjOdbKFURPNl9EdHsrbXpJ22m7pozyLkncWNCz8nG+/iVqzt
         hnoJhE+Uf33iBGXqdyt8hQPNKyZRLFdTFujWMAC/mY2jTFO2FBTlR7/WIlnmpf7oCbHi
         eyc+ALSWTtGSmOUDqY1dNjn3ZnvdkP5PlniEQKNxdn1UUYgBKYRqW744MjNKKNrmkT3t
         Pm7tIGIB4qWsyCbBphxWThweFrB5IITeGtZACyYGcmK86rjb0cHa3Z+5DWXeA1HSEq3p
         SNJBC9cwbX2wg4koGlX/nao5Or2LKsSrZhygx0/lurNZNjYL03YNSSSK+sg2e8j5+Gtr
         R35g==
X-Forwarded-Encrypted: i=1; AFNElJ90lhtOPU4HjjBrkiNd+tKNvM0LMMFTZnTUS0h52ZH7ZhGqqF5uhQuuZxRjcMaTKp1b5Q2fA9sWqWE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzX4XSYsyDA8SNEU6t9MOPsBQGKPBWOJPAvtZF2CAhE8FgTiR6/
	u4dz0DZAhXMs1S4mu7rSblABgCDTMiFKrmHrdBws4PbvP7+pKRe4efU/jxNdvobXVog=
X-Gm-Gg: Acq92OFqow/GlRc9aaHYCV1uDw1J8YHvc2gUg1JaHdoc5oLq90Ao+mNUawVcRoOr1/y
	IgOsosHMaFp8rtgAcOiCc24KEm8QRKjLMp/XAHj8hdcC+wFtihC5UJViS/R9+72IU1gOOL+XMMs
	WrAviUiTbBs1UOeRxu/N8w9r6+UZwZhbQfd+0ue7FZukdxgPBpo96779uTHUj0Q4ta2Q5Y8Gfnl
	+iIWLoD8zzXEyQBdp6ZwqBpEc5WyG6FhPiTQoxesL3TqyKY+JrPhqHRKpN7tt5qOHOqz7bHVPY+
	94PjgujyQl9Z3Xl/QqO5k2iwV8a13MXCJMBlQj9AasJIXB2P8dEgQZlQ3LNpevCT/FW7REJG26d
	xCnkipelVY85GYI1ypMUdSUOScyRlrcZfPj1WfAg015OtWWIpCcGVkP8AChBfSC0jU3JDpiuUZd
	eC1CmxS43Wdlaup0kfRVNTqJJ91Hu1hWUBFQNlfQ9l7Oz7Jqw01jQBByEcyI/Zq2cZkwNPlsWyi
	giRgwYbOoK2Wmb5
X-Received: by 2002:a2e:bc2a:0:b0:396:975f:c384 with SMTP id 38308e7fff4ca-396ac314d06mr1902761fa.6.1780438038099;
        Tue, 02 Jun 2026 15:07:18 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396abf66ea9sm3570671fa.2.2026.06.02.15.07.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 15:07:17 -0700 (PDT)
Message-ID: <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
Date: Wed, 3 Jun 2026 01:07:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_150720_642368_9FB74673 
X-CRM114-Status: GOOD (  22.28  )
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

On 5/23/26 05:48, Bryan O'Donoghue wrote:
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

<>

> +static int phy_qcom_mipi_csi2_parse_routing(struct mipi_csi2phy_device *csi2phy)
> +{
> +	struct mipi_csi2phy_stream_cfg *stream_cfg = &csi2phy->stream_cfg;
> +	u32 lane_polarities[CSI2_MAX_DATA_LANES + 1];
> +	u32 data_lanes[CSI2_MAX_DATA_LANES];
> +	struct device *dev = csi2phy->dev;
> +	struct fwnode_handle *ep;
> +	int num_polarities;
> +	int num_data_lanes;
> +	u32 clock_lane;
> +	int i, ret;
> +
> +	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 1, 0,
> +					     FWNODE_GRAPH_ENDPOINT_NEXT);
> +	if (ep) {
> +		fwnode_handle_put(ep);
> +		dev_err(dev, "DPHY split mode is not supported\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0, 0);
> +	if (!ep) {
> +		dev_err(dev, "Missing port@0\n");
> +		return -ENODEV;
> +	}
> +
> +	num_data_lanes = fwnode_property_count_u32(ep, "data-lanes");
> +	if (num_data_lanes < 1 || num_data_lanes > CSI2_MAX_DATA_LANES) {
> +		ret = -EINVAL;
> +		dev_err(dev, "Invalid data-lanes count: %d\n", num_data_lanes);
> +		goto out_put;
> +	}
> +	stream_cfg->num_data_lanes = num_data_lanes;
> +
> +	ret = fwnode_property_read_u32_array(ep, "data-lanes", data_lanes,
> +					     stream_cfg->num_data_lanes);
> +	if (ret) {
> +		dev_err(dev, "Failed to read data-lanes: %d\n", ret);
> +		goto out_put;
> +	}
> +
> +	ret = fwnode_property_read_u32(ep, "clock-lanes", &clock_lane);
> +	if (ret) {
> +		clock_lane = CSI2_DEFAULT_CLK_LN;
> +		dev_info(dev, "Using default clock-lane %d\n",
> +			 CSI2_DEFAULT_CLK_LN);

Why CSI2_DEFAULT_CLK_LN is set to 7, what does it mean and how is it used?

Since "7" is a meaningless number in the context, I believe it's practically
not used at all, and if so, 'clock-lanes' property should be just removed.

> +	}

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
