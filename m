Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17BFFC27C75
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 11:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N5KUKi40ozqZxvRZtvcTggDCHqVjNvdthf3wTMoBzv0=; b=4zzfppwBh2ll8sDxYcbXPCDMKG
	67A3ArXaNiCuLF60tn56b2Qst3YmnAVOhsgJnG0nQRB38YC7kcnKUayB7yavXJdugo6VuIlBprAMG
	HO2WIM4iKRfgFQrUdQPyL6OgO/dsPloEXvVhQYRBHPa1qvIiMZDPEmzm+EW87lNlNLz9EvMpHTJpd
	Ko3Dxdulsy/R2V9g1FpDEOL/1obdb6YXRuzOHP60YsT7G8dMRRgv0Tbnn/op6CcvNAeQMBDXKvhsD
	auZbrqveX4NeNgMF8kFZGcraOT233dqg4AS8Qg/rILXY0JItmvDNu8QUtsZJk1FBjVcFwop9ZqQnw
	/A3xDkxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5WN-00000002euH-39h6;
	Fri, 14 Jun 2024 11:55:07 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5WL-00000002etS-3zun
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 11:55:07 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-35f1e35156cso1985071f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 04:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718366104; x=1718970904; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CV5ecN0ys6S0OSRYU9azuVV6qH2IDYeWmzVoZmqUUmI=;
        b=jiHfCS10gd+ATVVq3/UhJgQOAQCiF3j+Hv1Wn6FlJ6oeOF9W2pPNQk1cutZ+tcycsO
         ZhFDNpMkHGYTf/YyoIb8HIOGETsxXOpsp20nrI8p2SrDsGECF6nJ+yJQddKD6iMs+fji
         fawd9DjELpcUT+dzf0kOssRKn8rkawQwRgCjnLkvjsIk8QqcU/wbXj6yD84oC8f6EwMB
         Mp8dq3lyTmzHLWzgaCNjwgA5KreQQnxh8w1Fkhn1Puo/RUuEjn3Z2iMflGVyXxk3TmW8
         xbAW8IIfeLL1zq5TtJ6xQFLCmRBskrx/6DqFa1KVdc0FbPKecpnaXrXOTAya4Qf+BjAH
         YwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718366104; x=1718970904;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CV5ecN0ys6S0OSRYU9azuVV6qH2IDYeWmzVoZmqUUmI=;
        b=KRp1Q9O3nlzm2FvYYOYbd9qre5leRzIuwydcsJ+I91kVIVNhjagvHrH/P7BhhWD4wv
         pf9EjbMNhQEh1Lk0/YldvRQES0ieZMI6tdajMdJGGLD4jvZ0kXwqOYhk39xmE3LSgWUz
         ar/bQXRkGBhjtXzNzsAOV2SUbYoRhjiCE+P6pSy0cSHkkd9j17/0SfVnEgJkX2foIiXy
         cgYt2uJS6vCq5oEoTm5LGJoI58C08Yqjlub/QC7To7iqT5Yl1dTWOdbtP2yCfFzH0wc4
         U8IooUlgcJgAv1anbvwbRl8/tR31n0UCDnY+VkX3XzG2+Ka6ZV4DCwlOjkusbecyYlQ7
         tT9g==
X-Forwarded-Encrypted: i=1; AJvYcCVVjEL3P9YKh57+txCGYixXqQXYgPUhetS9lWHsWyqVd3gq+5bmOg1SXkZu2qTdW6I+2ns3PrdTj8tUCmvVO0FvlYkoesXTyBQPrXwIGQ==
X-Gm-Message-State: AOJu0Ywypksn9SgWW03nvapwcsZ5Y1H31KQ+SdtMev0oE8C4LShtNIz8
	QDrc/PbUZdupxE00Vn/QOfN/FM4tGSjhEwb6AcchfqUAgpQkFd8E6TFAocU6UNw=
X-Google-Smtp-Source: AGHT+IFS0FLeZQHvFvpXBl7p3q8gSKN8Fu68VQ20x0vfBbNGoG9iIueMVIWVzUYkF5Jn9Yax0F422g==
X-Received: by 2002:a5d:64e7:0:b0:360:73f4:7937 with SMTP id ffacd0b85a97d-3607a7b0e7amr1860670f8f.6.1718366104015;
        Fri, 14 Jun 2024 04:55:04 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36075104a8fsm4194073f8f.110.2024.06.14.04.55.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 04:55:03 -0700 (PDT)
Message-ID: <a4800ced-b825-4ead-ad1c-56990c66cfd6@linaro.org>
Date: Fri, 14 Jun 2024 13:55:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: sm8550: drop second clock name
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
 <20240614-fix-pcie-phy-compat-v3-4-730d1811acf4@linaro.org>
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
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-4-730d1811acf4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_045506_035916_74036E00 
X-CRM114-Status: GOOD (  14.80  )
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
> Fixes: 0cc97d9e3fdf ("arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 4234c92aafe3..be4f0609c436 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1939,7 +1939,7 @@ pcie1_phy: phy@1c0e000 {
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
