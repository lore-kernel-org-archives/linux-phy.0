Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A577CA0EFF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 15:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qIWRTeDpPBQSK4or1drJy157wSjZ2dveGPBD4i1U1vg=; b=TG6q932+AmpGmmQPWONbC4jrmt
	f9bv1Xnv1wFMzYwnmXtTR25M4fpevVPcrfLo6iCKyUQCnrbcP/3ydc45WvYsRFAD5lYhNF13v1r64
	klu7uD4uCKTWtt3W8nXUoIwXetQoVl8HNglnpIMXwxY6BSYgCdGkyu5hZGrjhZdwQC9t8VZoTEKbg
	zEBmx2sH15Yr8/P9f0wjkXq2TFBlvyOALBZpIR5Y61afEzGeh22N5i6fh9Hdyz5PGczaTGlQG2YwR
	U/uUIF5AZQwUDxJ0ZPvx+FoB1fJinfKyCCwIwSH4UNdNv1qypRhxW1gKlXARAtIjgvlgnURyqBX5c
	KpTfUAig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTmZ-000000032G0-43m3;
	Fri, 22 Aug 2025 15:34:23 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upN05-00000001v6e-2trN
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 08:19:54 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-45a1b00f23eso10543515e9.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 01:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755850791; x=1756455591; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUBU+j8H4Ay/gKzx2DefRsd/tOgGE+9a4/c58V+37VI=;
        b=QkYAcIk941MA2QfEqexBYrj1QyGxKZAKq8RuLr5uCP8G5A763jTAx3k/haI4GYOAtv
         2lCcOG9Hys2G8F87xt5NGsQBW50sO0Wf3paFkCJ7Fs+50ZsQdAaTv4Gy3/Imrs0wrIKP
         zUAj6Vqq2xQ3+CSGfpW24MX0ZX2SPMdIPj2ZO4dwjHuGoNPI+/85Dem7MlY5zvf7C88I
         cWkccosL+uLIc9XnJyXyLu1nGkae4zEkbXJgQeQgGcEr6YRzZ7KmFMO8WCqr1mAEzcGw
         p4H9uLfEbdMhuDMcRonD0zBwMLeHeeD3QDxvFEsBPjy2m87Q1XFt2ZyBzJxQ1xzOSKXS
         ToWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755850791; x=1756455591;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kUBU+j8H4Ay/gKzx2DefRsd/tOgGE+9a4/c58V+37VI=;
        b=XTRFS6BwJNvM74882LGQhzYsQ6r/Sgb05j3SDK2OBoQGyi0YoyafD3L3TmUrFmR/Vj
         kIE6RWrCBs2/ogZ9WjPF4g99D9Or8FCsByB8Rh1XodXa3I08GVLj6IYw5FtHNbBYHwuO
         FPA05Xhwl13CCtzGWxNiX4PfGpSoXQ+/EVQxJQy6xararQeNjHphOiptnMr+HxUPiTMJ
         pg9/L0jf82KcCd9YRk+FltfthuJqJ16mkQv6Lyr1MOpKazgL5aXIjV3NMnchY9Da3k9x
         ClPtETmlP/oyRNyOftyuKN3NOM2RL3+GlPI+CvPcYQqpwELn47rkMBO7liTLDQV2WDjs
         0J2A==
X-Forwarded-Encrypted: i=1; AJvYcCV+04g1CNWsJV5F7eDJCagDmRvrFfIACmd2a4sdhTGy2F/54R17F82ed6XqPFvy+oevT3ujLdGy/Y4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtzCoyJlDIQ/s6qbz6P+3ih/c9GcFRrt9bDGHCNxnDe60Cdoq8
	ERBKcxjArqgZCjPtSQ0TV/+Ni5vpchFo5nT5FHmFzTidXIXFsDM5y20QNKXtuPhkWxM=
X-Gm-Gg: ASbGncuncB4mHRnKd/9kp3FJGXTepHSvZZyQ4QdxzCooe9Ud3CcoWiJJjQy47XBFErY
	3qs4HcQnged7HVGoV6gcQILLhTP/6mBHy++0LXdpq0xarI4WxEFwamfLugagu+HWwdo3F4SJqBU
	kMHnTmVY4JFo2Eff+D4p/LkBJmrzQJfNVr85Q58n31+qA463sVnTaEEBEdslFYhxd1umd5gc2BN
	j+tMJByORWYNppFOgwbLUeqcM8Xmv/mS+nnkW9I6pZvru0j2VnVYBPBfj11Yr85zT0aAhVRcRn/
	sxCjM8xa4ua2pcMmNK29nGg1fllkcnQovJR+rELUJibIppWns2ZPK9Cc8B0swSefE/rciisPVf4
	X1RwJQKSYb4/zzj1Y0V1//Olwtyqdsf/b27swHn6kBbK9KWZSCZFLoADGZB2J5eVTWWtfB3YR8R
	0=
X-Google-Smtp-Source: AGHT+IGYmXDHANFL2t0O6/z4GzQMDxxubZ0LRneoCclAPeF8j5bCmO9Z2rmiq6pSYn1hXjYdeBI8dA==
X-Received: by 2002:a05:600c:3b18:b0:459:d6a6:792 with SMTP id 5b1f17b1804b1-45b517cfb65mr14663365e9.29.1755850791427;
        Fri, 22 Aug 2025 01:19:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3dd7:7361:c101:6a77? ([2a01:e0a:3d9:2080:3dd7:7361:c101:6a77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50dc41dbsm27816145e9.5.2025.08.22.01.19.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 01:19:51 -0700 (PDT)
Message-ID: <b4456929-cfd8-4e8e-9def-f7ce0a02d240@linaro.org>
Date: Fri, 22 Aug 2025 10:19:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: lemans: Add PCIe lane
 equalization preset properties
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
 lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
 johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250819071649.1531437-1-ziyue.zhang@oss.qualcomm.com>
 <20250819071649.1531437-4-ziyue.zhang@oss.qualcomm.com>
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
In-Reply-To: <20250819071649.1531437-4-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_011953_739614_0A61C423 
X-CRM114-Status: GOOD (  10.69  )
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

On 19/08/2025 09:16, Ziyue Zhang wrote:
> Add PCIe lane equalization preset properties with all values set to 5 for
> 8.0 GT/s and 16.0 GT/s data rates to enhance link stability.
> 
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>   arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 64f5378c6a47..c7a09c3605a7 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -7657,6 +7657,10 @@ pcie0: pcie@1c00000 {
>   		phys = <&pcie0_phy>;
>   		phy-names = "pciephy";
>   
> +		eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
> +		eq-presets-16gts = /bits/ 8 <0x55 0x55>;
> +
> +

Please drop this empty line.

Neil

>   		status = "disabled";
>   
>   		pcieport0: pcie@0 {
> @@ -7827,6 +7831,9 @@ pcie1: pcie@1c10000 {
>   		phys = <&pcie1_phy>;
>   		phy-names = "pciephy";
>   
> +		eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
> +		eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55>;
> +
>   		status = "disabled";
>   
>   		pcie@0 {


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
