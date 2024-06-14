Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92E65C27C75
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5f4H9Rnvop4pV2florL1kgS1pEhWSusltuWUd3jlpd4=; b=44sJNQvf5BM5VdSOR3n0NV6BOB
	F99H/I05vn86AwXr+q9nVEmO6DcGqV2prfpoqxhNJRjBAJWvKZuepe0umGOf0IMhcjVT2wtuq5f6t
	8S0sgJHt6w0lREM1zVsdsjqW5nRTBeruo9+EzUolB8YuaqXzEy2rglX/p0s2Wsb4K39Ys8FfdIYKs
	VCsohnYqnz2p10Y00pV3Oll46h1fpoyXemDDFI7QnQhm/LJt3nOVFZCroxKWqT0IUYPKtJkJcWvrR
	rAiQfvu5Q7sQf01Ra7is28OXNFCj6IKpVft/UWBWocNQ3wwCAmfKCfVfLBqgrL0mw6iyWl6IKVigC
	4NOoL4FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5WG-00000002esM-0wF4;
	Fri, 14 Jun 2024 11:55:00 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5WC-00000002erV-1bP7
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 11:54:58 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso2161281e87.3
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 04:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718366095; x=1718970895; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0o/KdZIsDHIfbh/VW3o1QPd/tfO5jx5iqoLGvwOSIE=;
        b=ZD/Vdozb8wImizZIaVSS2ivLw54Vfe4BBzHOb2eMK7ncWBOFjiF3ogGR2TyOfwpR8v
         nmi1u+Y2+UN6tClFXVf4ftDMmwQSJQ5Bgp3VkwV105XfhAMTtUHeiB/HlT4UGfryJlIc
         2YCoLwrEjDEJYoM19j+XIKH7tSkO8FzKT7wTvYLyCXjQsfwocPqkV02u8ACUkRFjnlaG
         +DYf/H0wpv9wN0FgMMcRqPNssq42331/XyYF9s5cH0z5EL3spmSpFn9qc2KCkoj/mYQr
         wsSKUddHqP3LMrLAE5mXWpRkXLAaGcdCkp8gJ9j09tf1BOAKlxNZXaieBHilrOzU9jAa
         GB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718366095; x=1718970895;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o0o/KdZIsDHIfbh/VW3o1QPd/tfO5jx5iqoLGvwOSIE=;
        b=IprBD1XB0Ma8uU6s4/JI7JMt5LbBBdMSE85IXs+cVcRLQflG4sy70xJm6/a+AfkB7y
         oJ1S/m4KCqJTI4Lo1C+kaUYulK6AzWlcXv0wf9wvpMvDElJGXaq/G9/no28mWVmfSDGG
         VS190hynlCBm+X0xZQlCPy+VHR/eg76dpnG1bOlY2j0sOOYu25vYcDumJTcgbqKsIpUl
         0thEYs0GrgvtcDK4lewCSlSud5RVE8x4ejFUrs4r+3dMjt+ZwjurJySJxqS8NyY5Y9ZH
         o4jKKHYOGChF/TNL8JTMp21z7Q3Z1MA4leTDgwYnEMQeUwU1HpQ41F6fO4is14YMt0z/
         WxxA==
X-Forwarded-Encrypted: i=1; AJvYcCVAYBJhEB7Mdbel/ypBHwIQKzXjJL70+sR1FNn/bOb8UeHvhFld5f++aZgbr/m7RrC3Pw87ez1aqYMoV8f/NLcWLECmAiFh6228WQzUSQ==
X-Gm-Message-State: AOJu0YyQLBXzEgKKrkbKO4YkfkgmJI8qwd8D2SGA/c3oVS+Gs0V+Roh6
	1hW/POW5YCpMqlw6m0+ubtQvEtXwSf0VRNCzjcSpGzZan0t+cfSu2p9y8gz1oBc=
X-Google-Smtp-Source: AGHT+IHxv1qeMP3257dqiC5avIq5cWjeVODclM9Lx4o6rgMBVqOEsym0s7vCutQ6Cth3qYltkKSn9Q==
X-Received: by 2002:a19:5f1c:0:b0:52c:1e37:92c7 with SMTP id 2adb3069b0e04-52ca6e99f9dmr1683157e87.59.1718366094477;
        Fri, 14 Jun 2024 04:54:54 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f61280f6sm58530805e9.27.2024.06.14.04.54.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 04:54:54 -0700 (PDT)
Message-ID: <14712023-8469-4084-9800-1502a7fdc8fd@linaro.org>
Date: Fri, 14 Jun 2024 13:54:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: sm8450: drop second clock name
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
 <20240614-fix-pcie-phy-compat-v3-3-730d1811acf4@linaro.org>
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
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-3-730d1811acf4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_045456_463552_58D830EA 
X-CRM114-Status: GOOD (  14.66  )
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
> Fixes: e76862840660 ("arm64: dts: qcom: sm8450: correct pcie1 phy clocks inputs to gcc")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 1e762cc8085a..9bafb3b350ff 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2087,7 +2087,7 @@ pcie1_phy: phy@1c0e000 {
>   				      "rchng",
>   				      "pipe";
>   
> -			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
> +			clock-output-names = "pcie_1_pipe_clk";
>   			#clock-cells = <1>;
>   
>   			#phy-cells = <0>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
