Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A536C3ABD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 17:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iH6Cbs/EQAt4TdRT9K3ak+z9V7rUqMJG4W7PdhBUNXw=; b=LnC37kRM7JeeHhGSN2QT+m/xPb
	yNG9QJA6eHIzt83BdPcv3T1SzKeNm/Z8tK0C7tF61sDoW+7WlBYyjTE5MRAE3joiy2UDUAOJOWkOC
	Z1/miVSwNfLAV5ng+KlxRfQ69JAWmq09BfumnCVWfkmtX1Jp3reJ+DVkTL+9i99pxZRQW/DQn7kN1
	6lyVqWHS/rcPVrX15CkWPlOk3vM4pXrJLqDV0ZgL0IKlQlCty8L6VRJ20OptqD6xvcEcYsQ6z92RT
	tmFVqZqIexZR48CiBBZUj5hXik4xQ4zRjLOKIV5PpnAXTjA0RX7E5Yvkk0lFApz3vFIWkXTByJxyi
	Uj8U9rpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFGD2-0000000FwF1-49GD;
	Wed, 14 May 2025 17:48:01 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFF86-0000000FmNM-21Xz
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 16:38:51 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so163125e9.3
        for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 09:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747240728; x=1747845528; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dP5YcbeqpFYvCKe+8FnH1GIVDVz3AECYHXjeJJujU4=;
        b=ZFgMS+/klIZsYkDEXimSWQ+3bHIjuq9OV/yiwAYCz/19YLLnnc+baDYm4SvYp7M8V+
         TWKry0QoRM8hQVIudnDyzbSV7BpCi1TKraPovlm4uuWuty7NB/0QdMs8x0Fef+pYqDca
         AJFRA8v0G73c56wDeTAa9BcmcVMrBY8scIrlKXhbjXWSdBVyfFPm2rur3M+Hx28VxiB6
         dc7AGSo+W/aed0R+zvUVggMd6CCI6eW56jSmGIIXH1AgFuReolO4vgCsKHepgV/CDr/p
         pEV7OCDmVPosdbKZwbfnpfrCejYoOFT/Ed/pKOtIEQWMyi/zAujU3qV7KdnDKd4sbhLY
         XA/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747240728; x=1747845528;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+dP5YcbeqpFYvCKe+8FnH1GIVDVz3AECYHXjeJJujU4=;
        b=Xdll5Ke2WQs0QjM8O2sXybq2EiyiqvfEmu1W1W/i7vdl7kx3SK/2o2OQbDrT/HuXCD
         gVoiO8y+gAxu1LGwqNDE7WWcCsXf90J9sFLJpgmCRrbZkGI7i/W/6QZFuDMspyIpxkNM
         yl5Y8yzRQt+PZ2NKQMNiiMNWbb73HlF+LJngMTieoM1926X/O5jRNHVuCkgDQz+h6GJM
         j8/4MatMTZS2HbwoltOJz3/NPJyZLvFvzKYToRpTxhXiwmU80vLYmUCMDxeVLYV5DvN7
         VCY7SuHWZ4fNPJuVsEtD+nd/AJLBkPLIOi/+cySybgQigfci7Qaox3EYqslxJFDl7dKw
         WbgQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+pA46/mp5HbzfFDpGgJk3mWo6lpwhiBKfvB63BoXjv8G5cqSEv6WRVZ9iviWq+WkRmddRm/a4SH4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvM4E+jQOftQM2krvg9WBLsbCzzEy75+G7+WYh+UmtqJvQm/36
	TDfXriUyCzHx2xpyH/sibn5NprtH1gzYmnnrTLGJ8u8X4UEa0+8x3/slG/PgGmk=
X-Gm-Gg: ASbGnctWbZdOuM+h/b1A1gYzeuUAVtmPzSza1ImAasDjtsZJQKUsdvCAgK5r3qenvyR
	LofypuP3w2hR5C+y06bebLR+zl3U6UhoLHtdXCJ8R+po7hdeHbqewPb5yAc9NKgZKjh5Fvqyp5i
	xGxtgD9rUFa+w2+NcfCkvDBlg8+rTAy5iER6S1F7FJHtN/o8XHm6Y2sJ77LRZ4OJS1+FDGA3iMt
	SCO3qqbmpCLO0znOcbF//YAZCv4qfWwxo17v/uzJCCptbgLLF8p+krMhKp/L0+P9zufK2Z0r9SB
	3peoDfUBRO2Fa4lo37GEw4WS8QRkUBg/NjA1ifGU7GLaUa9KIDEfMEI50A8CAMjmhUiThnYUnMT
	1z9GDxPJcy3k/
X-Google-Smtp-Source: AGHT+IEAkwKKEEQ70f0VyhVcMUc6RQxJdEmZDC90di0ICcfqr62LT/lvi+L8lcGRQvc66pK/aI2j2Q==
X-Received: by 2002:a05:600c:1385:b0:43d:b32:40aa with SMTP id 5b1f17b1804b1-442f20baa06mr44937335e9.3.1747240728450;
        Wed, 14 May 2025 09:38:48 -0700 (PDT)
Received: from [10.61.1.139] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c76dsm20425558f8f.92.2025.05.14.09.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 09:38:48 -0700 (PDT)
Message-ID: <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
Date: Wed, 14 May 2025 18:38:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
 quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
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
In-Reply-To: <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_093850_528268_DF256749 
X-CRM114-Status: GOOD (  15.83  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 14/05/2025 13:37, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> The maximum link speed was previously restricted to Gen3 due to the
> absence of Gen4 equalization support in the driver.
> 
> Add change to remove max link speed property, Since Gen4 equalization
> support has already been added into the driver.

Which driver, PHY or Controller ? does this change depends on the patch 1 PHY settings update ?

> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
>   		power-domains = <&gcc PCIE_0_GDSC>;
>   		phys = <&pcie0_phy>;
>   		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
>   		num-lanes = <2>;
>   		linux,pci-domain = <0>;
>   
> @@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
>   		power-domains = <&gcc PCIE_1_GDSC>;
>   		phys = <&pcie1_phy>;
>   		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
>   		num-lanes = <4>;
>   		linux,pci-domain = <1>;
>   
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
