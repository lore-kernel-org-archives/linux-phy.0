Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F5BC54E71
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 10:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fTwsCoBfovWnlkGGRk+vacRX6zX73JeJqqnVecoGNQ0=; b=DW3apVaNmP0ULYjaEk1oRmsTfM
	KoX3yYowk5BIh9d8rd/nC9TOJjH/GcCm5gLbVl7X+GWEENDOjXsLDu0uRqw6COA38UT+FL+GDfoKP
	N0VhuiCWRPXqHoyjAJ1yYhn2jRU2u93HRx9hi70YuVgmANXYLc3MU4XRDo9bG69HUAAYKJbKnjC+b
	e9sGvFyxnd0oUP7LTKudOFGbyX4pnczZJ759KM6HZq/gnMZ+A8XUhWRGCbPFvqJxnKUkkP8N6GURg
	QUBKEYBPnAK6kGRIONw2/SRy45+FnGi6AmJrZklkCPAP37F7Kdq4VmurXgatxq4aRbAYKW9f6qycB
	e0/Ab1qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncOi-00000006qY6-1ss0;
	Fri, 22 Mar 2024 10:45:16 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncOf-00000006qXP-1cEx
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 10:45:14 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-33ed7ef0ae8so1087383f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 03:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711104310; x=1711709110; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ijz4cnwmta4DwRjOoVv/yS9+lUjTkF7NKjIpyzpOrv4=;
        b=dQp1fEhEMzFbv4ALORdoM+fK2/ZDpf0oLhD57J3j4/8rg4Ehcc+/roCiIzB2XJxJf5
         t/PwRysZ6c3g4UhIVivdMsMIuqHluhTft7I9RCi4GiJHl1Wo9XDDsSfpqkLMTsGJrMWc
         29kG/wvHANlLnbyzKpDQGhPg4e8ZT/TsswwlIBGD5+KNV7cDzjQ34oNtnf0y3+ZzpTsH
         MnC9iD1BRh2Z1REQMd5nwG+PWR15PGQP4nb7AYkMLHYCMUiGS/zP3LV7AR0rzVybMzgt
         AIs3x1ic4Zh+iOktawTGW2GJl8ZN0qdkgTMwE1S93OJQYyN9x6lQ/UVtUhuY7eMDqArE
         2JBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711104310; x=1711709110;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ijz4cnwmta4DwRjOoVv/yS9+lUjTkF7NKjIpyzpOrv4=;
        b=lv/axdHkRbJUbjdvUBwvS8f+T3A9kNDOhJKZS7qWuFtIdFKOUIAQAHR1ci6Ztn/7eb
         6N7XafJLYx8BvaqZF0rwikzigC+6vn1CwQGAa+1d78B6+WkNDQuG0ED0padMow6yjB3L
         OZUi4p0QxSUyt7VcDhnc1Bqmw/2Eynw2vYr4S4dFcbZ5zmu+uboigUYXtTeoDckQdHNM
         lN20iZuLH2IR4txAArjGNfuNYx89pQIeVNUnS9N2nXZHiENcnSopAEc6XPGvodLmrmsW
         E8RYVnSuMsJnqLOBwVQc/Ej/Z2L59RgQRqGzWw4YixEGYAAPC7s5/JY9PTSmEmMem4md
         c7Ng==
X-Forwarded-Encrypted: i=1; AJvYcCWm+u7saOJc0GRkbpl6ODr5wUhAEIIF9ah6egFALuMQBoktr3khaiLJPag63LsZeSUAa0X50JvEj4VRK0ogfc+SgBRDejqfj30AmJq97Q==
X-Gm-Message-State: AOJu0YyJUK8/mzFQiOl3XIquFI6MxclEOjVf7VjlcLBeTN6cNku+WMaN
	ZZqWkhNg5LzGuXduYooArWY4vdb9mFX6SGXf2i2N7bkYHtV0fSUmSPsjqZ1dmsw=
X-Google-Smtp-Source: AGHT+IE0h2NuaEVe60IzMpflYy6JouB/v/PcDVSKl0vyEQEKhI77w54WnPoVuNyW77f1ZSy4VjO1Wg==
X-Received: by 2002:a5d:69d0:0:b0:33e:7f51:c2f9 with SMTP id s16-20020a5d69d0000000b0033e7f51c2f9mr1268500wrw.49.1711104309609;
        Fri, 22 Mar 2024 03:45:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:3ee1:a278:2b57:55f7? ([2a01:e0a:982:cbb0:3ee1:a278:2b57:55f7])
        by smtp.gmail.com with ESMTPSA id j1-20020adff001000000b0033e7e9c8657sm1778124wro.45.2024.03.22.03.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 03:45:09 -0700 (PDT)
Message-ID: <1dc187c1-2005-486f-a9dd-6648cf52ab70@linaro.org>
Date: Fri, 22 Mar 2024 11:45:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-pcie: register second optional PHY
 AUX clock
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-3-3ec0a966d52f@linaro.org>
 <CAA8EJpoJWKZcZu3SY2P9dpYQ_KXkimRXNhAKfaOreCGZ1muYqw@mail.gmail.com>
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
In-Reply-To: <CAA8EJpoJWKZcZu3SY2P9dpYQ_KXkimRXNhAKfaOreCGZ1muYqw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_034513_532844_AF2BBE08 
X-CRM114-Status: GOOD (  22.24  )
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

On 22/03/2024 11:41, Dmitry Baryshkov wrote:
> On Fri, 22 Mar 2024 at 11:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
>> add the code to register it for PHYs configs that sets a aux_clock_rate.
>>
>> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
>> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
>> IDs and also supports the legacy bindings by returning the PIPE clock
>> when #clock-cells=0.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Small question below.
> 
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 ++++++++++++++++++++++++++++++--
>>   1 file changed, 75 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index e8da2e9146dc..6c9a95e62429 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -22,6 +22,8 @@
>>   #include <linux/reset.h>
>>   #include <linux/slab.h>
>>
>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>> +
>>   #include "phy-qcom-qmp-common.h"
>>
>>   #include "phy-qcom-qmp.h"
>> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
>>
>>          /* QMP PHY pipe clock interface rate */
>>          unsigned long pipe_clock_rate;
>> +
>> +       /* QMP PHY AUX clock interface rate */
>> +       unsigned long aux_clock_rate;
>>   };
>>
>>   struct qmp_pcie {
>> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
>>          int mode;
>>
>>          struct clk_fixed_rate pipe_clk_fixed;
>> +       struct clk_fixed_rate aux_clk_fixed;
>>   };
>>
>>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>> @@ -3686,6 +3692,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>          return devm_clk_hw_register(qmp->dev, &fixed->hw);
>>   }
>>
>> +/*
>> + * Register a fixed rate PHY aux clock.
>> + *
>> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
>> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
>> + * by the PHY driver for its operations.
>> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
>> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
>> + * Below picture shows this relationship.
>> + *
>> + *         +---------------+
>> + *         |   PHY block   |<<---------------------------------------------+
>> + *         |               |                                               |
>> + *         |   +-------+   |                      +-----+                  |
>> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
>> + *    clk  |   +-------+   |                      +-----+
>> + *         +---------------+
>> + */
>> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>> +{
>> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
>> +       struct clk_init_data init = { };
>> +       int ret;
>> +
>> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
>> +       if (ret) {
>> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
>> +               return ret;
>> +       }
>> +
>> +       init.ops = &clk_fixed_rate_ops;
>> +
>> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
>> +       fixed->hw.init = &init;
>> +
>> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
>> +}
>> +
>> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
>> +{
>> +       struct qmp_pcie *qmp = data;
>> +
>> +       /* Support legacy bindings */
>> +       if (!clkspec->args_count)
>> +               return &qmp->pipe_clk_fixed.hw;
>> +
>> +       switch (clkspec->args[0]) {
>> +       case QMP_PCIE_PIPE_CLK:
>> +               return &qmp->pipe_clk_fixed.hw;
>> +       case QMP_PCIE_PHY_AUX_CLK:
>> +               return &qmp->aux_clk_fixed.hw;
> 
> Does the absence of the default case trigger a warning if compiled with W=1?

Nop it doesn't with GCC arm-gnu-toolchain-13.2.Rel1-x86_64-aarch64-none-linux-gnu + W=1 and with smatch and C=1

Neil

> 
>> +       }
>> +
>> +       return ERR_PTR(-EINVAL);
>> +}
>> +
>>   static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
>>   {
>>          int ret;
>> @@ -3694,9 +3756,19 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
>>          if (ret)
>>                  return ret;
>>
>> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
>> -       if (ret)
>> -               return ret;
>> +       if (qmp->cfg->aux_clock_rate) {
>> +               ret = phy_aux_clk_register(qmp, np);
>> +               if (ret)
>> +                       return ret;
>> +
>> +               ret = of_clk_add_hw_provider(np, qmp_pcie_clk_hw_get, qmp);
>> +               if (ret)
>> +                       return ret;
>> +       } else {
>> +               ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
>> +               if (ret)
>> +                       return ret;
>> +       }
>>
>>          /*
>>           * Roll a devm action because the clock provider is the child node, but
>>
>> --
>> 2.34.1
>>
>>
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
