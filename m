Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026DCC54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wn1sbQK16FiwkuUAeRuOQzxbzEWr3k5bLGDz53Zllr8=; b=xZFiHOR/8GR+py4Mo+e+s1XjW5
	Ygye0xvW0RG/ZvRtpYwZ91e/BJwaNWL30ubl3Oaw4Zr5hmHCiS9tOo/aDsKbs2oDBTws15kc/YvNg
	ABr64tHFD+xQmNky22NkcVyIYnFQSo/F+bUTKERFm9KSDhFvnlV7OAQGH+K2JrOrLkjbbPqV6hP1c
	nNiwoZS6MfanneCxdeQg4IkLAUM4B7Ur+cDYRFzdxu2MrBoiiVcc0FXTo8O7oAlQQzpKnygyAy0KF
	RNOI74b/1Gc2soTX6t0O9EgpIe8VechHvS8ZpTlbUpVu/76CUIMQZPFfV1byGCHKXccmKoWX1L+RJ
	PKqC0hpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX6Z-0000000CNT4-2tgv;
	Tue, 19 Mar 2024 10:54:03 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX6W-0000000CNSd-3NSD
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:54:02 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-512ed314881so3765767e87.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845638; x=1711450438; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d/DjqoQiR0R0fc2p4xoiFRrU53XeCEIiGCOv5JI1nK8=;
        b=BjA2IaIrJ3v8xTIiHjnGGIgtqNajNZO+rmFivUjWBY0ZyxpqWDxD4QjMLvETgoiuYw
         nGWZ/xznYvrPAgSJMxndAQOP6Lk79wMN0vg6toZYp4YB/cTldvrAyUl8AQRBhYGNIJUA
         KYDCsCwBW7eI/VJMBaJ3rVR+dzH/CgunycM+I90itnxuE3U9ZD7S8Qoue/igs5pTC9Y9
         Aif2oQwrIDAb+/EqDMJKXS4kLfKwOya0ftZJJusdJq6mheOcQHNduB7sg/tWe3d45XcX
         DG59X0p4OoYRA5dhFX/X3tFCNkqk2iNKIEfWmI7tbfkDkSRTIyQy1BtWbX+rNNHQWe2E
         DFGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845638; x=1711450438;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=d/DjqoQiR0R0fc2p4xoiFRrU53XeCEIiGCOv5JI1nK8=;
        b=IaAIm9hxGxOT1PciA5jMa9DtLsXvVQJGBRRLbTHqz8/u6AHBxKHyoewnHk4VNzRBTR
         7UqFYdLH6A4wuyl6sJqkIpNjZER8C2MLH3zqrVQB9ED7K+Zmw4ukm1Oz5mthMhFOeAnt
         unBNxZ/OhkxSLiDiX2gj861AnZkOvyuqDylgUbMjgqTYCuq3nBievpm9nXOB3XSTE4IG
         9XXFvFZToZGts41HWuDR2UTs++v97R99Ew/NSPkKBwOkQmTOf3rwmSw174qTJ4CqdAuV
         djvaqKcLXulxg36c5QuW8vtF5K9wPiNwqK6TRi4o3yfgUbfm9KQBpI8tPVfjFOGfHAtt
         r0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWXq/uTyQGyvJRZyxbV0TCc9eRl6RnKzP5YBdIe/qUB9cgvY7CZVNz4/cln7/8ZQsY6Vtm4YzkBphVV7bCEAKDGRxSFc4lE2u88HaKC6A==
X-Gm-Message-State: AOJu0YxZGN5qgJKLnlS/c7N8jlGsSp3odz/nx1+xX6gFMh8xLhKGUS4V
	b9p4cEBTzPnHSdmYOTJEz8qhhSaYfuYsEN2rXXNdkXhgc+gPLJGcxMmrAm22Xb8=
X-Google-Smtp-Source: AGHT+IE+4biFzS6VHwcFyzJJDB/i6rUdj6OVW4UaAM9KlShxmO5wvl+5UviUmjPZTFTj75cJF5rC5Q==
X-Received: by 2002:ac2:504f:0:b0:513:a140:fbf8 with SMTP id a15-20020ac2504f000000b00513a140fbf8mr1778581lfm.30.1710845638000;
        Tue, 19 Mar 2024 03:53:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e? ([2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e])
        by smtp.gmail.com with ESMTPSA id q11-20020a05600c46cb00b0041312d21a35sm21261582wmo.7.2024.03.19.03.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 03:53:57 -0700 (PDT)
Message-ID: <10bcbff4-4e8d-4899-bf14-b28b59b5614a@linaro.org>
Date: Tue, 19 Mar 2024 11:53:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/7] phy: qcom: qmp-pcie: refactor clock register code
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
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
 <CAA8EJpqbhc_Y+EBTdz1WTnAnZN=vkTUAzc6feH4NYgbdR-ZibQ@mail.gmail.com>
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
In-Reply-To: <CAA8EJpqbhc_Y+EBTdz1WTnAnZN=vkTUAzc6feH4NYgbdR-ZibQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035401_003872_B7D904C5 
X-CRM114-Status: GOOD (  16.84  )
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

On 19/03/2024 11:50, Dmitry Baryshkov wrote:
> On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
>> in order to expose it, split the current clock registering in two parts:
>> - CCF clock registering
>> - DT clock registering
>>
>> Also switch to devm_of_clk_add_hw_provider().
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +++++++++++----------------
>>   1 file changed, 11 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 8836bb1ff0cc..079b3e306489 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -3635,11 +3635,6 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
>>          return devm_clk_bulk_get_optional(dev, num, qmp->clks);
>>   }
>>
>> -static void phy_clk_release_provider(void *res)
>> -{
>> -       of_clk_del_provider(res);
>> -}
>> -
>>   /*
>>    * Register a fixed rate pipe clock.
>>    *
>> @@ -3664,7 +3659,7 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>          struct clk_init_data init = { };
>>          int ret;
>>
>> -       ret = of_property_read_string(np, "clock-output-names", &init.name);
>> +       ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
>>          if (ret) {
>>                  dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
>>                  return ret;
>> @@ -3683,19 +3678,19 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>>
>>          fixed->hw.init = &init;
>>
>> -       ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
>> -       if (ret)
>> -               return ret;
>> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
>> +}
>>
>> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
>> +static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
>> +{
>> +       int ret;
>> +
>> +       ret = phy_pipe_clk_register(qmp, np);
>>          if (ret)
>>                  return ret;
>>
>> -       /*
>> -        * Roll a devm action because the clock provider is the child node, but
>> -        * the child node is not actually a device.
>> -        */
>> -       return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>> +       return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
>> +                                          &qmp->pipe_clk_fixed.hw);
> 
> No. The driver has to register a clock provider at the np rather than
> at dev->of_node. Otherwise legacy DT will be broken.

Indeed

Thx
Neil

> 
>>   }
>>
>>   static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
>> @@ -3899,7 +3894,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>>          if (ret)
>>                  goto err_node_put;
>>
>> -       ret = phy_pipe_clk_register(qmp, np);
>> +       ret = qmp_pcie_register_clocks(qmp, np);
>>          if (ret)
>>                  goto err_node_put;
>>
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
