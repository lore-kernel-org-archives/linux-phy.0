Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63FEBC25B70
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 21:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCZFg6x4fyYO7auXACT1YpbvLj5ZUbAbfTIe11T5t9I=; b=NuWEp81KzOCu5x
	skDyLm3BN3ijHe4oOm0zUA56TqNNfhKR/OXqmXXYKIAQ8B9uvk7uKsbsaBoEm4GYn93oJWeUD0wD1
	BDCBibY5DujULtDc8h66xUMkPBVpdPz5mM6ljWLP9Nz5S0MFFA37ZQQEqBFTbLSLkNNqAWvpFsxCr
	HZXAd9CcIJGDyx0JLdogMhI6YAFAcZUW47HuvyHM4zon87vOIEB7a5L8Uas3f5yeTBfSDJU9uUMJz
	6h1qilpnKQy/VWrKS93MxGNqhbM1G6RVpQYVAnVEEDiLX3L/iMqMlOtaeliIEYMefZa948FXdBfv4
	VppyH9fWl2LYvgd+W9eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7bD-00F9wv-0N;
	Thu, 26 Oct 2023 21:09:03 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7bA-00F9wZ-0k
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 21:09:01 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-53e08b60febso2081457a12.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 14:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698354537; x=1698959337; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bMfPZQG3/ucH8AVq/i3Ub3YrK7tt+d1+4bgiELGiq+Q=;
        b=vOL2OJrJI9itcHo0zXkb4SeSSv11VWPA+05MYV6J7ioBIOlyhTmInaUjYnI6aSzpts
         3gl9WUrf1yxqVn5rY5gUNdd3xNTnjvyRXzkC+J7nUF4mRB4wT4ftw6i/+Kj4gnLvkQE1
         8rfSYXcs6/nOcR1HQYD0aQWGBdHy5zuZeVqEhNz1QKMyRxJeglH9K51jZPsiioGMgwEX
         hUuzvPVOJiGo9UfuMbB1kA3YsXPBY7xx3gx7QiMVLclbcdl8VvPmgIDUmnVXECfO3X+l
         erKfYidnxhZ5hEdiHgTnV3SYJjIsva7XAcV7rnFrSuD/s7o90r5sKP4hR53iDkU4D8zD
         CFXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698354537; x=1698959337;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bMfPZQG3/ucH8AVq/i3Ub3YrK7tt+d1+4bgiELGiq+Q=;
        b=biutJh6biiH45bxRHWoyvvFpppvK2di4s5+qnF6UMAGFiQVJ3SibgQ1n0k4JAH/jS6
         jwWcZW4RDhaGb3rZDRApbsaxrz/o8bktpBjr4ZWpjrYITPUlW7xr6pzAp0RG6pzAhr/Y
         UMY8DuXu60040nluQ2fRLUvQX5fd3smvOU2WMxB1w4KWEF7Y66Kpidgk67B1sH9d14eD
         Czi0agnkAu/u29teC/W0vWVePnpYdBFM8NKTsB0EAGZoGJCXUu5hpyi/NbwMfHX3lZss
         xChPzv2nxbVeNF+jY8wyzSWuv1BItpKBdbbmxDY+gNAaxi9P0W/ih6fUDQHqWjxJ/uXx
         LhsQ==
X-Gm-Message-State: AOJu0YyGwiyxLZLqCvz/jP47WWiK8tU/1MulH2IqycZ3Evcjxtf0EI7p
	ITh7yD/C+XcILdQbX+Jec463kA==
X-Google-Smtp-Source: AGHT+IHpOWLcn7w5EuLJRpdXs6AF75XUE7TiA9NDj5B80gxhszVR/o2uDb+GN+7c1/0kxpF8rKNm6A==
X-Received: by 2002:a05:6402:1a35:b0:53e:467c:33f8 with SMTP id be21-20020a0564021a3500b0053e467c33f8mr799145edb.20.1698354536903;
        Thu, 26 Oct 2023 14:08:56 -0700 (PDT)
Received: from [172.30.205.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g27-20020a50d5db000000b005402c456892sm167715edj.33.2023.10.26.14.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 14:08:56 -0700 (PDT)
Message-ID: <cd3df2b1-f384-4d26-99a1-e53ecf9f332e@linaro.org>
Date: Thu, 26 Oct 2023 23:08:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/15] phy: qualcomm: add legacy HDMI PHY driver
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
 <20230928111630.1217419-6-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_140900_317783_734C5095 
X-CRM114-Status: GOOD (  11.05  )
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



On 9/28/23 13:16, Dmitry Baryshkov wrote:
> Add the driver for pre-QMP Qualcomm HDMI PHYs. Currently it suppports
> Qualcomm MSM8960 / APQ8064 platforms, other platforms will come later.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
[...]


> +{
> +	unsigned int pixclk = hdmi_phy->hdmi_opts.pixel_clk_rate;
> +        unsigned int int_ref_freq;
there's some misaligned things

[...]

> +	lf_cfg0 = dc_offset >= 30 ? 0 : (dc_offset >= 16 ? 0x10 : 0x20);
some unreadable things

[...]

> +	hdmi_pll_write(hdmi_phy, REG_HDMI_8960_PHY_PLL_SDM_CFG2,
> +		       sdm_freq_seed & 0xff);
> +
> +	hdmi_pll_write(hdmi_phy, REG_HDMI_8960_PHY_PLL_SDM_CFG3,
> +		       (sdm_freq_seed >> 8) & 0xff);
> +
> +	hdmi_pll_write(hdmi_phy, REG_HDMI_8960_PHY_PLL_SDM_CFG4,
> +		       sdm_freq_seed >> 16);
and a lot of magic bits in this submission

and some non-reverse-Christmas-trees

and some leftover comments like /* XXX: 19.2 for qcs404 */

I see a lot of RMW, maybe regmap could help make this more readable

on the !style front, it looks sane to an unknowing eye, so I guess
that's the end of my complaints

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
