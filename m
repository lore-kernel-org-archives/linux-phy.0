Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A90C54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ynKup52ILoQ72skRo4dlRj7OZ8HVYIc6H7qLdXh277o=; b=Z+ceqljZyWuov7+TlSOxUOVzcY
	HhZMLh9/MwetflGm/D+QtL1N3/iHy+1yiHx5Ko+bqtd5PCQwFR6JzRslmF/8ujLAeWo6Xkqj/M18l
	/MPvPMNoOx63xQ4klKx8y8mFP8ol4PuiK1u7m5WxuuicuSRKsp23DUB28eKXyRs0jExVXoAyX/uQt
	llUlRsv/1EVKoKGgs8fsBpdT8TXdilwrhpwudFkouGO6fhWs10HYbAzt+9JMCYjNvqBPhaw+t0tJq
	+mG2gjGhu3hoaB2wvtCew9GZPNVKLdb6TOIzGUTX/WydFv6SvTE77oRuI+sbIsndKmCGVWyUm+jVR
	b6TBwwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmXBW-0000000COpy-38PJ;
	Tue, 19 Mar 2024 10:59:10 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmXBT-0000000COnI-0BDx
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:59:09 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-33ecb04e018so2961164f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845944; x=1711450744; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=URJxdgqVlqoDNrXeeXOTq1SfTWACq8g8yW2+lxzoe5c=;
        b=mKnyu3XReVSIM6T+Whdh2ejrpDLO0MmfxAtO6JUkZfcZNro7vew4LTxZY7hZ6Bvc7I
         o4iiEjfv2ZNUU8nwpSZO/+G39vLjWHPqv+oZmBTY4XvBXvdGPEAqYFHCAphVFoEjijEo
         PiK+dZiOMCCACzIAAcEWKSGwPSiVHarAZIS2t+xgi2i53qaBMYOBqlq7aAX/v0H9CZRc
         ONzVgHyu289QlD+JMR9TsJSB0zfYijleN7gWKMMFb/faVSfsE/9GWiZHpQQ2Nd5FDbLl
         8M+Y9z2bu/PK8cmwuOMNnjXoxSFKB5cMHXOxvY/KaDmWJWQSj07QiJ80+xELP1CO6niQ
         Q6rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845944; x=1711450744;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=URJxdgqVlqoDNrXeeXOTq1SfTWACq8g8yW2+lxzoe5c=;
        b=bZMSPLA8tNEBAxtYb/VMhMBecM7y1TDoozoghmPKaD2ECGkVXHwg0hCL0pfurzyet5
         BDDJVFFyIrDHdU+nA/4IMSSZyLep2OJpKeUyY8nAHbGd0MVK+ZGWljeoQ73vsiSdQvCD
         F+V8exyX887pWFynI+t7OpEh5oDcwh5atjSoO2WEP6Vpu4XcOrrT/qWDPbx/C86fuH0O
         b0kOaJJljLC3GmRqtOhVF8Sja6I/HY/h7xBIFAB7J9mSC6NpHIwSqKGWeuQR2nvxwqxL
         1doAst2vmZRH89FbivfnPH4J3iIjfrDdtRyfxmFs7nOBbMPtzqWuEmDErD6Dzy3wyb0x
         YkZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWb4MDMbLt+qPB49XlfOGPa09mk4k/cI2wkkXdlbSop1l99y0T2EYeErnuH8qJYnnmhMCKrgRM1tVIdyXqboFgxbm89vR8qU5ionScHrw==
X-Gm-Message-State: AOJu0YwwE+UV8rb4BApbqO4H935vxQNTQTWRPUcddCGAFeCY1xbNrBa7
	j/G3peS2pngRGn50I8qgf5vn59MjlYsvZpQNN4X25nmKvS2KT+D/TKVJRM5zCQE=
X-Google-Smtp-Source: AGHT+IHTw+fqjT9qtXiOHeC9NT/dqyCAEtCiF1WiSTroO3VvPAOY+LweBAb87o715igho5oYJxZGcw==
X-Received: by 2002:adf:f5d1:0:b0:33e:7650:58b4 with SMTP id k17-20020adff5d1000000b0033e765058b4mr9601797wrp.27.1710845943516;
        Tue, 19 Mar 2024 03:59:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e? ([2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e])
        by smtp.gmail.com with ESMTPSA id l4-20020adfe584000000b0033e91509224sm12093815wrm.22.2024.03.19.03.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 03:59:03 -0700 (PDT)
Message-ID: <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org>
Date: Tue, 19 Mar 2024 11:59:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035907_165024_E94CCCF0 
X-CRM114-Status: GOOD (  23.13  )
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

On 19/03/2024 11:55, Dmitry Baryshkov wrote:
> On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
>> add the code to register it for PHYs configs that sets a aux_clock_rate.
>>
>> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
>> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
>> IDs and also supports the legacy bindings by returning the PIPE clock.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
>>   1 file changed, 70 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 079b3e306489..2d05226ae200 100644
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
>> @@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
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
>> +       }
>> +
>> +       return ERR_PTR(-EINVAL);
>> +}
> 
> Can we use of_clk_hw_onecell_get() instead? I think it even should be
> possible to use onecell for both cases, it will look at the first arg,
> which will be 0 in case of #clock-cells equal to 0.

Let me investigate if it's possible

> 
>> +
>>   static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
>>   {
>>          int ret;
>> @@ -3689,6 +3751,14 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
>>          if (ret)
>>                  return ret;
>>
>> +       if (qmp->cfg->aux_clock_rate) {
>> +               ret = phy_aux_clk_register(qmp, np);
>> +               if (ret)
>> +                       return ret;
>> +
>> +               return devm_of_clk_add_hw_provider(qmp->dev, qmp_pcie_clk_hw_get, qmp);
>> +       }
>> +
>>          return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
>>                                             &qmp->pipe_clk_fixed.hw);
>>   }
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
