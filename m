Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F76BC46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XFOzWSq8JBM5nzSVGlUusoPl0RR0saMoQL6ynkP/wNM=; b=Kdnv+ZVQJToQK/vtUWcXjMOnOF
	WCqKC/KisPf2sWxQ5rdDuW/l7Q5Y5ghkHV/H1VNkmjTC+UTJuzQZsaB/z0ZwNRs2q39HnfLoO/9C5
	FowmbQL1Fi1DCEKwsOlBodrGwlVHXU03wrQaD2VUJ38KUtHhOuDz3zCFEtdI9JscE09KPQz1U9siQ
	L/tVuLZ2oZtptFitucAfjzmdHxOjJpuR1DZuHY4prwwj7nHHubCeAdULisduoRALZ0leI+OahmDxj
	i1BxH0fpM+X5QSDYLwlGCtxTYMCHMmGflOUSRqmiISfHEaFouzLQr9kA0xNtY+OE+qiJMfJXdOxPq
	mfxRcY+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rScSF-003F7S-2P;
	Wed, 24 Jan 2024 12:34:07 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rScSD-003F5P-04
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 12:34:06 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40e7065b692so58748175e9.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 04:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706099642; x=1706704442; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4CyEqfj2/BL4C+FmAytidCDy1VCKLDY8HAXokTWCiA=;
        b=vK8nXvxfGcutCxdpDxifep93BQAPc0KUpKE7+zi59JSq7fUydaIBU0YgwssKIkrUcG
         hGmuRifzCk4uyRZhrxcKoxnSmOv8VLINe/Wk+ADbt58X8KArJ7G6kAXXy0Lhs39eKfsm
         Xtj+jGcqXcZPL19PMfNOANSG2GFChLNI/yZyKCyCtZvaR0dkvuGw6EdZ5f8/g2qX6E1p
         mudQxywzNIhgtgjhzb2ZszqDCQbKQO/V1WsEQ7Err430PKdhYU0c9FRbSpcVQJ9D3Dwu
         QnPyfZWAgcfSx5oj0y5zpYr+fHD4mQGAVKpDHATaMnswRDTztiqu1tLdvVwMCsecJ16u
         5JCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706099642; x=1706704442;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j4CyEqfj2/BL4C+FmAytidCDy1VCKLDY8HAXokTWCiA=;
        b=EX5N/DUe8O6B20E2x8m0ms45dCFY3qPUG+0XlVft7flWQjE5Op7/xQc8z++bg1SwiB
         RW8hgIb8wYyk3StCRzuKVDxpIjBcELktQg8vflqs4H5KlPW4XxwRaHWrQZoJxGLxqf9t
         a6g6q2ywkzyv+afKEqVaCXo191xjHpLuvFOTSDxCEfN32FAXQucrpFtTdKPTaiefhL7T
         z2drWdY1AiZfgUC4/WiqkUrf3WToAIrHSJZZBRMdaz1K8YdR89zvLCOAZ6XHFcFOxl14
         ekZGInhpoY5Nv50RGWZwUWqhjkZoH050VGfEvSMnrd04GA3xiW5IwrodP+3/YR+ooFFC
         A3qg==
X-Gm-Message-State: AOJu0YydkeNMY8viZl/aHlaBwY5QStKKFQYc0/osdFIGdbY+2qutJUzB
	WEHTtUySpookz1n9x1WB7cCCa0gnX6t/jK4l0ZFKZ8a3YMa1QHZ5M9+wLxj0TrY=
X-Google-Smtp-Source: AGHT+IEWrgPv43WEZDqGpGl2eARernH5yVyaeMrqaYve22L/yssZp7FrqxPycO+LGfkpDFcmEJim8g==
X-Received: by 2002:a7b:ce13:0:b0:40e:596a:985b with SMTP id m19-20020a7bce13000000b0040e596a985bmr1155942wmc.160.1706099642464;
        Wed, 24 Jan 2024 04:34:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:fd4f:fd82:e4fb:1654? ([2a01:e0a:982:cbb0:fd4f:fd82:e4fb:1654])
        by smtp.gmail.com with ESMTPSA id ay2-20020a05600c1e0200b0040ead97f70dsm10083247wmb.24.2024.01.24.04.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 04:34:02 -0800 (PST)
Message-ID: <e8d061fd-151f-4f8d-9199-2c1225bb2278@linaro.org>
Date: Wed, 24 Jan 2024 13:34:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 13/14] arm64: dts: qcom: sm8650: Drop PCIE_AUX_CLK from
 pcie_phy node
Content-Language: en-US, fr
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
 <20240124-pcie-aux-clk-fix-v1-13-d8a4852b6ba6@linaro.org>
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
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-13-d8a4852b6ba6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_043405_097847_8F63E0BC 
X-CRM114-Status: GOOD (  10.83  )
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

On 24/01/2024 08:36, Manivannan Sadhasivam wrote:
> PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
> only required by the PCIe controller. Hence drop it from pcie_phy node.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 2df77123a8c7..b31e60599891 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2276,13 +2276,11 @@ pcie0_phy: phy@1c06000 {
>   			compatible = "qcom,sm8650-qmp-gen3x2-pcie-phy";
>   			reg = <0 0x01c06000 0 0x2000>;
>   
> -			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> -				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>   				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
>   				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
>   				 <&gcc GCC_PCIE_0_PIPE_CLK>;
> -			clock-names = "aux",
> -				      "cfg_ahb",
> +			clock-names = "cfg_ahb",
>   				      "ref",
>   				      "rchng",
>   				      "pipe";
> 

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
