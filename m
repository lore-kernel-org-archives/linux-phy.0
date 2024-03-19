Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CFB2CD11C2
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 15:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQCou1ZMUahdt3AH2PpJNcgPnfNIeeXgXDZ380NHxis=; b=V8nLSPAhL3eIKfwnyylQgNkurE
	riIGmzykV/UpvEgFnBzhU6wZsMSIsYwPjy5LO/XmvZlIqpMuJZWqhuSU7gkUE7BxlRTtl3osrD3Zq
	sWqgMZEhwnkwCYuuB+eNwcHAZByqUE8A6PtTBuzGiZkbUmNxJNaCMdy7AScJv6Sg8bwAzPzhLhK5F
	XVlNtuW0NF5udx70QPmJtzR8HMw9iN7WP04DKGPOzKyQs3F/GgHjL9GTNEN6WMk8fb6VqB8Ze6Son
	5NTdtRdvMlzhSD9QcSJVaK1ibkgaL8rqc/vfLbdsCiEkpAwOpikI7hJmg/owadOJGPMSbItBrZBbl
	fKsZD7vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmb6f-0000000D5hL-1Arf;
	Tue, 19 Mar 2024 15:10:25 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmb6c-0000000D5g8-0ewC
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 15:10:23 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-33fd12a06fdso1786707f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 08:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710861020; x=1711465820; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lv9VN9GVBcDOc4A+Q1Q1vvWgwwJ35DrouW0B+LBA6Oc=;
        b=RN+niGQBjAMdtGoPEda+I3SO3NDatwMUOBff5+ONRpxJ1Dt6vlEoXLHmj4/7cTABEH
         uhq8WP7J1pqIlz7CuDmoBmZ8kmfmI+Z1uoVUlwCKLhnev6IN2W80GUT9qq4ixflOz1z4
         2FeZYSOdnOGOn8ER492qpp6mxIBgnAoEF++gofMUqxpVPauo7aZMDt0xrBpHFRCHaFF/
         5tzO1A3ipvgPiJGeHd6wLe9LHnk9M/TcZW28kVZ4aYAxIXzikFSt7k6DgDAy8w32ryDL
         lat0yiv2trzFvcmF4Nn5c/aujiMWwexkXt9hho02lCErveg4jHc63g3zdzWB7Zyk/d/5
         A5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710861020; x=1711465820;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lv9VN9GVBcDOc4A+Q1Q1vvWgwwJ35DrouW0B+LBA6Oc=;
        b=Q7ojJjj8Ak5ogf7wVoBDWR4vOR03ofgyX7AmxrqR+wcziA6Y2U7PtHjFkfHjL4C1MS
         2TYTPssfTVckBjBJO1x0QkeTwWQtCXrbcNZfDRcEuevlQixGSU3x9RRIQ7o4ChSg7uJ1
         qoXz7PyzZxY0zkScxYU2majAArZQ2X1PzPn7vjJ7iX3l3baY2uG86dR+XqHT7d89lmMG
         E2ma+/IE7eBaojhIesZP4X9bn48mwRUPK6dEer7CUSFWb1oDsk9dp3eopxvQVE1VdYDa
         LkoqOtab6zrT0gdY+iTGc59KM5aKdDDXn2mcQTLOScQcbbi/JzOY0ngnls7jpOHzJ29N
         m0WA==
X-Forwarded-Encrypted: i=1; AJvYcCXu2M7OrqlkPUlVE5hAUYcm3+qOCu1JylrTsWWbcKDmOJgGQIJX2Rfx6cpCNDkNu2kukbz+z6JVWCvTWLX5i133oNSa22Q8JGU1AuoV2g==
X-Gm-Message-State: AOJu0YwIxX9P/48V93UbeqFu3VWZYMUPU49jY57od8wHP31BulYxIzB1
	/LR16AxzTcn93n1gOGAaA+CNbDOjSV6OMWlp5gs/QmTbyay1ImuokgEeiTIjIOE=
X-Google-Smtp-Source: AGHT+IFFAApS5bQKIFb+wgCIKBX+aQfkMy1p3i+4wPO/V4l0krVq+icF57gDaGptc0jSembLd72NeA==
X-Received: by 2002:adf:fa87:0:b0:33e:7946:4cd2 with SMTP id h7-20020adffa87000000b0033e79464cd2mr10053794wrr.10.1710861019858;
        Tue, 19 Mar 2024 08:10:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e? ([2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e])
        by smtp.gmail.com with ESMTPSA id q2-20020a05600000c200b0033dedd63382sm12491818wrx.101.2024.03.19.08.10.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 08:10:19 -0700 (PDT)
Message-ID: <1b6bc933-d749-4852-a292-5b3b7bedc44e@linaro.org>
Date: Tue, 19 Mar 2024 16:10:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX
 clock
Content-Language: en-US, fr
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
 <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
 <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org>
 <090e306c-0bfc-4374-83ed-e883d73a0f0a@linaro.org>
 <CAA8EJpovp1S9MYb3ByeoR7WmjPgUmqicqs_fQo_OoL5_NTNPJw@mail.gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <CAA8EJpovp1S9MYb3ByeoR7WmjPgUmqicqs_fQo_OoL5_NTNPJw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_081022_254285_3EF7ECF1 
X-CRM114-Status: GOOD (  22.22  )
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

On 19/03/2024 15:46, Dmitry Baryshkov wrote:
> On Tue, 19 Mar 2024 at 16:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> On 19/03/2024 11:59, Neil Armstrong wrote:
>>> On 19/03/2024 11:55, Dmitry Baryshkov wrote:
>>>> On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>>>>
>>>>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
>>>>> add the code to register it for PHYs configs that sets a aux_clock_rate.
>>>>>
>>>>> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
>>>>> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
>>>>> IDs and also supports the legacy bindings by returning the PIPE clock.
>>>>>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> ---
>>>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
>>>>>    1 file changed, 70 insertions(+)
>>>>>
>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>>> index 079b3e306489..2d05226ae200 100644
>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>>>> @@ -22,6 +22,8 @@
>>>>>    #include <linux/reset.h>
>>>>>    #include <linux/slab.h>
>>>>>
>>>>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>>>> +
>>>>>    #include "phy-qcom-qmp-common.h"
>>>>>
>>>>>    #include "phy-qcom-qmp.h"
>>>>> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
>>>>>
>>>>>           /* QMP PHY pipe clock interface rate */
>>>>>           unsigned long pipe_clock_rate;
>>>>> +
>>>>> +       /* QMP PHY AUX clock interface rate */
>>>>> +       unsigned long aux_clock_rate;
>>>>>    };
>>>>>
>>>>>    struct qmp_pcie {
>>>>> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
>>>>>           int mode;
>>>>>
>>>>>           struct clk_fixed_rate pipe_clk_fixed;
>>>>> +       struct clk_fixed_rate aux_clk_fixed;
>>>>>    };
>>>>>
>>>>>    static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>>>>> @@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>>>>           return devm_clk_hw_register(qmp->dev, &fixed->hw);
>>>>>    }
>>>>>
>>>>> +/*
>>>>> + * Register a fixed rate PHY aux clock.
>>>>> + *
>>>>> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
>>>>> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
>>>>> + * by the PHY driver for its operations.
>>>>> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
>>>>> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
>>>>> + * Below picture shows this relationship.
>>>>> + *
>>>>> + *         +---------------+
>>>>> + *         |   PHY block   |<<---------------------------------------------+
>>>>> + *         |               |                                               |
>>>>> + *         |   +-------+   |                      +-----+                  |
>>>>> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
>>>>> + *    clk  |   +-------+   |                      +-----+
>>>>> + *         +---------------+
>>>>> + */
>>>>> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>>>> +{
>>>>> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
>>>>> +       struct clk_init_data init = { };
>>>>> +       int ret;
>>>>> +
>>>>> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
>>>>> +       if (ret) {
>>>>> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
>>>>> +               return ret;
>>>>> +       }
>>>>> +
>>>>> +       init.ops = &clk_fixed_rate_ops;
>>>>> +
>>>>> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
>>>>> +       fixed->hw.init = &init;
>>>>> +
>>>>> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
>>>>> +}
>>>>> +
>>>>> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
>>>>> +{
>>>>> +       struct qmp_pcie *qmp = data;
>>>>> +
>>>>> +       /* Support legacy bindings */
>>>>> +       if (!clkspec->args_count)
>>>>> +               return &qmp->pipe_clk_fixed.hw;
>>>>> +
>>>>> +       switch (clkspec->args[0]) {
>>>>> +       case QMP_PCIE_PIPE_CLK:
>>>>> +               return &qmp->pipe_clk_fixed.hw;
>>>>> +       case QMP_PCIE_PHY_AUX_CLK:
>>>>> +               return &qmp->aux_clk_fixed.hw;
>>>>> +       }
>>>>> +
>>>>> +       return ERR_PTR(-EINVAL);
>>>>> +}
>>>>
>>>> Can we use of_clk_hw_onecell_get() instead? I think it even should be
>>>> possible to use onecell for both cases, it will look at the first arg,
>>>> which will be 0 in case of #clock-cells equal to 0.

I didn't find evidence this is the case, while following of_parse_clkspec() called
from of_clk_get_hw() or clk_core_get(), where clkspec is not initialized, the
__of_parse_phandle_with_args() and of_phandle_iterator_args() don't touch
clkspec->args if it->cur_count is 0. So clkspec->args[0] may be left initialized
and it would be abusingthe API to use it with #clocks-cells = 0.

>>>
>>> Let me investigate if it's possible
>>
>> Ok, it would work but it would require building a clk_hw_onecell_data a runtime,
>> while we could simply provide this qmp_pcie_clk_hw_get() and avoid runtime 2 allocations.
>>
>> I'm not sure it's worth it.
> 
> Single allocation (or even 0 allocations if you embed it into struct
> qmp_pcie) for the sake of using standard helpers.
> 
Well, sure

Thanks,
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
