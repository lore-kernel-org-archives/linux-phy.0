Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A72C47DDF
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 12:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zj21TPNSc7DoB0C7Y3KZC9rOmIGjjRrYnu1nr9kNik4=; b=TEpEVSQtp5CLSPAsRDyfTDJBe+
	iJfJXZvGeEIpTAu2MdJK7wPTfi4ksQduC4ova57/S0xRAvAG6T0hPvaMNknSDRCq4vnar1E4U8fbM
	jVOh8AfC7Lp5S4tZBoSy0hckb8yhsEEQALDJxFEfNqHl6HZWAav+wcWPCIJsL89YVQM46fW+aS/c+
	VLBIjDf3JUZqbrWGOepWI5p/j8H9aR2GFoc35wCBJiln1+yseA2dtUUa6NLvqtKIjXcsyWcynqaFr
	pQCtioHSe+zMvtdCaM36t2gqnEeM9DWhFKMz+proEDIaujqi8De9E+4y/KRDTHM/IyU42boVzURin
	Os/TPuqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rScL6-003Crf-1o;
	Wed, 24 Jan 2024 12:26:44 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rScL3-003CqC-0P
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 12:26:42 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-339208f5105so4654079f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 04:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706099198; x=1706703998; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tFDRjvoN8YUq/pq6hUZ63ynjSng3YxXBPPeOWs+bSxE=;
        b=UmEhyL+q8Ns/FU17kDVeNG1ke1FSZK1NeThrawgPN+vNyOn5v6zWZda4e+KEyjke2c
         aliMTweu/rNG6R4ZeovjK8QtnROqD31xjltcG2ZFQLP9HoWpXdRh+pyzhmBg2Bj1aVdL
         QSDrF9UuC270OzUyMWkVzozcE185e0gB1sdkHitXDS6sFWdXD5hTqWYB8dF+PAVgS6c2
         w2lCz9oNk3TftQkNkPoeh433WdUJRndbF1Kez74D6YRsUlfXXWASTDav4NDmL3fiKYPh
         27IioWvOLdlsGjHAiiQUECMim1/3XmGZV7Yo6VQ9vA5PMq4Ttz57YcYPggIwGkYhwwjZ
         55wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706099198; x=1706703998;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tFDRjvoN8YUq/pq6hUZ63ynjSng3YxXBPPeOWs+bSxE=;
        b=D2urMsx/fmB4ihVOREm9HEmn2kW8lgYHzi53jv/Ru7VUK4ckLNrVZo18C0xHMw7CnR
         EGIoHCznBRloYiE8f32tsjJUxCEm1h015nrah8CsxMKcMHOHIumrgsdiFLJ8bNO6iqhx
         XJk4x4oLmDOsP6eQWe6r8kPZJaqjyk4NkgM58YZU1VrjpOY5lkbF+hVHfNJwdGPpvFiT
         7HZOrwvSKEfFCAb/GMbJP/DQZ6c6loiy+dzIEIWePNMdLjAwL2rDkshHJFE4lTJjP7cB
         byIS78QFzuVQioS+kjkrbDnzb74pP+qT8S0QRpLKURz5n+3J8XwHtElODPXAP8QHpg0V
         ZStg==
X-Gm-Message-State: AOJu0Yw/eTLSY1cjrtNo0qIOtaAcB7jPp/5pJs5lMgruBsZ2nmK/u2e2
	Ca4ix5/rUCBDAF7cwagXE8yJ5AdMv4sf4fG9naZFGcVq9r6wzP/tDxYiX4oochE=
X-Google-Smtp-Source: AGHT+IE2Wk5jwnLRHwiM16HLhu2l98agOIICE42oHDb18g+iN9MYGcHSnQcG19pFbjpFAhCugnWtEg==
X-Received: by 2002:a5d:6750:0:b0:337:bdae:c557 with SMTP id l16-20020a5d6750000000b00337bdaec557mr332892wrw.10.1706099198620;
        Wed, 24 Jan 2024 04:26:38 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:fd4f:fd82:e4fb:1654? ([2a01:e0a:982:cbb0:fd4f:fd82:e4fb:1654])
        by smtp.gmail.com with ESMTPSA id u9-20020a5d6ac9000000b00337d392c6c3sm15889124wrw.13.2024.01.24.04.26.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 04:26:38 -0800 (PST)
Message-ID: <047a59f6-7c6b-4854-8985-2306abbaa0a8@linaro.org>
Date: Wed, 24 Jan 2024 13:26:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 12/14] arm64: dts: qcom: sm8550: Drop PCIE_AUX_CLK from
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
 <20240124-pcie-aux-clk-fix-v1-12-d8a4852b6ba6@linaro.org>
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
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-12-d8a4852b6ba6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_042641_173615_46F48A88 
X-CRM114-Status: GOOD (  10.73  )
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
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index ee1ba5a8c8fc..f074683f7940 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1760,13 +1760,11 @@ pcie0_phy: phy@1c06000 {
>   			compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy";
>   			reg = <0 0x01c06000 0 0x2000>;
>   
> -			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> -				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>   				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
>   				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
>   				 <&gcc GCC_PCIE_0_PIPE_CLK>;
> -			clock-names = "aux", "cfg_ahb", "ref", "rchng",
> -				      "pipe";
> +			clock-names = "cfg_ahb", "ref", "rchng", "pipe";
>   
>   			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
>   			reset-names = "phy";
> 


Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-HDK

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
