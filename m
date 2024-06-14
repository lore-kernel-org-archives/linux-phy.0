Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A5BC27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 11:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6586gt8NlV69uZLvgpIITu/0g8IeDhCU+il8c++J0c=; b=OsB7EDvcJbSEo1VNkgC81s64mH
	M22KW0UFi2N6XpFQDL/wZ3eLi7y4nBe/aOX1s2+0+fqmvkLsw8QxeIho/UXsp3XDaJ54Fdj/pE/JP
	DgQ44XITGtNS+Xp291OCrkE79MR9BfPgMddhn4yXGCPEyceX0E2ZhjX+EkF/gqais0gHTov7zS556
	wKFVBeOoF17Dx4rCrMpZkVQYRDjMdbELclmpcpZykUfowvfq6PB6MMGII7I5Rw2/7JcblRcy9e8Ww
	FFy7K4anTveeMRfv7kC49wgs68m9gEXzXowekRdZPHqmLSM/uG37cEvhkjsLmEtRN8DaczZOHtGh9
	2DLCSobw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5WW-00000002eyD-0rYd;
	Fri, 14 Jun 2024 11:55:16 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5WS-00000002evY-48A7
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 11:55:14 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4217990f8baso19987575e9.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 04:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718366111; x=1718970911; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q3dtZU2KLEpU5tzc4kE1SRGR2o6VMlxAQm2p/h33llY=;
        b=nSm64nGf1CmJ7KTFCiMwqg4sJavq8kkdfpDyndxnyJtaD6txlrlqJZp+p//OtjgxaW
         odTd4U2MgSp9bP7tuunZIe35B8nAGLSdWlJ4EwHmXIkdp6gzSv83gP01CibQwDq8h8H8
         b4obb7Peyo3yaIBdBkhxa23asOtw6/yVJp0xLTt7RPwlACu9KNInSmHkZC35TEWbZk3E
         cJXnl6LgEdI59+xAWqC44goWz19qshNSlzw6A6/HfyjVPbsxg8/tMVFCs0/DPUK64duz
         R8QosBKa/jPLsEoPr9FQPvTyvgpiHVH5XFPy/z5tSCUoKLshlOChKbSSnC8oyPxNoEhL
         8rlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718366111; x=1718970911;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q3dtZU2KLEpU5tzc4kE1SRGR2o6VMlxAQm2p/h33llY=;
        b=VY/xlObMG0mR/qbbz4V50mrOn1Y/60Gp38kC4odM8eatAGPMedNBdNz0tQjlaRi4K2
         y+T69qXTnyHnU0+j3JjF1zh1yCmyGdMqHMwYlibNGfLh0XKBEtOg1KN+rhHiU6CqxtTh
         j6wO7sJGUxzVa7her32dvniuSssdyLOf+yLjncbyg+5c7H/epIgRY/r3j+F9YOC8ubR1
         9CjWX6w4vCo+PeqkLMBYvW2cYOSy3UZttibkRdKt/aZ2LqJqd2FCVmBujqyMGqJxce0b
         ABt0Np8Mtls24SKXn+KAv+TOAyL5wijSVzpQvViOWXbTBnHChsXUp1QrTryPC4YvKMup
         pNvw==
X-Forwarded-Encrypted: i=1; AJvYcCVWaQy0Z5eIPDL/eWAdh+MSK5gz9IXTYNcmaOGLiGafRK6KPLFOVeeGWlqD9ep5qyGNpva+/MZ3BUNzn1OnyuZJusLeAbVujcV0Y+ETPA==
X-Gm-Message-State: AOJu0YyFHD4I7QpJJ3r4tTK3XWLJWHqnFGttHGNhOkr9NTaroOii2h+/
	0qGyLGtuL3/8qGGpFnFWgt/yF0ybPihsPEiUcdcTtp4dC1V7iqc3s+xqxdaHPMwUHg9orWhzPuM
	zYMM=
X-Google-Smtp-Source: AGHT+IHe7ilkhLn6brP4Brukvc2iYhEp7yHhu6WJozyi0LPc6EI2rwtIOjbx/c9coBw72bY/68m+jg==
X-Received: by 2002:a05:600c:3055:b0:421:7e0c:f876 with SMTP id 5b1f17b1804b1-423048607a8mr21288945e9.41.1718366111308;
        Fri, 14 Jun 2024 04:55:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874e6b63sm96853685e9.39.2024.06.14.04.55.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 04:55:10 -0700 (PDT)
Message-ID: <dde0f627-e486-4ee0-9bd9-950c5a968bc7@linaro.org>
Date: Fri, 14 Jun 2024 13:55:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sm8650: drop second clock name
 from clock-output-names
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 devicetree@vger.kernel.org
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
 <20240614-fix-pcie-phy-compat-v3-5-730d1811acf4@linaro.org>
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
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-5-730d1811acf4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_045513_068858_E0F50935 
X-CRM114-Status: GOOD (  14.78  )
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

On 14/06/2024 12:18, Dmitry Baryshkov wrote:
> There is no need to specify exact name for the second (AUX) output
> clock. It has never been used for the lookups based on the system
> clock name. The driver generates it on its own, in order to remain
> compatible with the older DT. Drop the clock name.
> 
> Fixes: d00b42f170df ("arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 5b8b1d581a13..5df2e00fdb5b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2474,7 +2474,7 @@ pcie1_phy: phy@1c0e000 {
>   			power-domains = <&gcc PCIE_1_PHY_GDSC>;
>   
>   			#clock-cells = <1>;
> -			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
> +			clock-output-names = "pcie1_pipe_clk";
>   
>   			#phy-cells = <0>;
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
