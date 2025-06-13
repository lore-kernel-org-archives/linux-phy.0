Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94546C61DB2
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 11:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1CxuJYWYHRn5KPXkqkquT75tuPL2m9L+FNpjIVVNCMk=; b=NuFcXjSisLL9d8saFkT77N0WoC
	iXxwRI8DilgNXB1yLt4NRfI5w53QiqnKAXucuXjlGVoIgzw5aLl8MeGZX0iOxi3acZ/SfIZ7fhM2d
	UAEp8YFEcdqxGTRWANeRUzcdGKFGx4eRyeKtOzwQdhUd1xPdCY+sj36Oq7aETh7E+gwj8dK321vF7
	1rHfJsnE+OJ8xnhxDtk08dcB/BW9JH0n/2dF7utNDwpJlt1XYCux6Cpy/kokgDTiO7XxZnyAf6H11
	ZG0id/GwcEjGN5tJA2INOZrZjrIvKaXCvdpSEETYaxG4KG3MNL6cv4usgJdFu7AMzMNqzRd8FBrxy
	v4T1HEEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cK-0000000GAYv-1Jp7;
	Fri, 13 Jun 2025 11:30:40 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Sb-0000000FsvO-3UWN
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 09:12:30 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-451d3f72391so24899095e9.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Jun 2025 02:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749805948; x=1750410748; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yaEX4dDgKDNxKZX0+vcnih4XjDWoAZY8oCSw4SAHFH8=;
        b=kHT8BeyWwrOdmHbMHetHQetzfnZgsUMvu8cNq4e9xrPivjfaaJZTnwerkgPZ8yxteG
         UDCSw9XBSF3oB2EEUXQQAbpCKSxQi5hmPMrFsFajI1p95feZGiNE+zpcY0h7Hdzo1vju
         ZR7yy+K1RmnDqZRZxwgJ8r7QlCfGNonUAwL3ZGB9Pm1fw9/iZigo6ftVXMbj9Rjmtdtl
         7ZpFWozfOpE0kSmceF1wLKA/z+FfQgPFo+wJVqXsV7D+kra2GPmKpUaebQjgWBNQr1QA
         yRioqwASDnsdiKtKZQJHbXm5RQLncYvyq6W+78S78VgZKxhCnst0w8trpWU4o0DuCbdo
         d5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749805948; x=1750410748;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yaEX4dDgKDNxKZX0+vcnih4XjDWoAZY8oCSw4SAHFH8=;
        b=MxDtgoKn9mDllN1U3lRHanNPsgKVqtHGwtrlfauGfYtNNITcNkFPUUEXcrNdQjDfBq
         hPyQHMF/4U9WGhItFnFJR8dhCEx4eo+fucdkqThw5Mc8A9MtQTB1qyPxK6+CSo6ieTi/
         rjeBMb60cAq6Isn2OU5vllbE3Mi/RL6YaFaE/dcW2fFI4txlGZnu9yEm8gLfmTqIN+nM
         aBv1/yssqgbMn3sajrv1lViPAX40JJ/Mvj5lPmuFeGmyGAXpGG8k37Pkxqt+Xz0v91BQ
         JBonX40jcV6EtlHVeytOox76fl+cuShIv8W8j9bqWtMK5Eu8LSRnoN9GWYQyIKqJO7jC
         CgPA==
X-Gm-Message-State: AOJu0YxR4pN/GVBYZk5BnrgZdyuQuvD+8r0GdFN89LsGAp8GATFa2MOD
	GgfsWiZ/FjDSUfKjy8hDIo32iVW8QFKnu8uyeB7/k4rmuDWEUVFFL8TVHbu+YKxhZf4=
X-Gm-Gg: ASbGncvHZNmgOaYN75MbJ7eQph8THuhZ6aEMflQ7kXDSE8dUkgwOM2+5Y5YShQ6H1zm
	d1ltD7kc0Qoxx9nlUG/M4HRdJlm91Fy65nzqq5gwpNy5Kmp/MF9oQGJrYK+WCIcjAolKs8sodRH
	dC9hkLx3M1AUdJgwx4nSjdMSHVzJmSOW7/pw+GiAxtn+MX/RGVXrkBZmtbp1rPTOmH6FPS/SIQK
	xgib8V+onDMmnE+KvpMk+2dMxwCP+VTfqL0IfBr8k6+2plZ2QPdIUcn5WoBLlrIg2XGCIQEqqBC
	7AttQj2K7qDby3T7vkEyG0nmgq4n3OBE7QGH+moeFEdYx0tJiIq4yhw2C/0dDlGM0q1e3iH6Sx6
	XyjFei3RSFtyuOEqQRO5YRS0Fx5hpegv6wF+h1/BgIFFqHStv3Q==
X-Google-Smtp-Source: AGHT+IGfNqq5N/dXfqPTy6lk5lwkJCrvfc3vLmcZOn5YDfPCKU4e2XDDXROymQQp9fqDHIQhZiR3NQ==
X-Received: by 2002:a05:600c:34c7:b0:442:f8e7:25ef with SMTP id 5b1f17b1804b1-45334ad3f41mr21047235e9.11.1749805948257;
        Fri, 13 Jun 2025 02:12:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae? ([2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e2446b0sm45162715e9.21.2025.06.13.02.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 02:12:27 -0700 (PDT)
Message-ID: <9455a4e1-6352-4832-ac9f-2816f889c3a4@linaro.org>
Date: Fri, 13 Jun 2025 11:12:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 9/9] arm64: dts: exynos: ExynosAutov920: add USB and
 USB SS combo phy nodes
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, andre.draszik@linaro.org, peter.griffin@linaro.org,
 kauschluss@disroot.org, ivo.ivanov.ivanov1@gmail.com,
 m.szyprowski@samsung.com, s.nawrocki@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
 dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
 selvarasu.g@samsung.com
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
 <CGME20250613055106epcas5p46a2e5e2d6f0e8811644643f6282fd9ca@epcas5p4.samsung.com>
 <20250613055613.866909-10-pritam.sutar@samsung.com>
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
In-Reply-To: <20250613055613.866909-10-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_021229_887049_DF3D9FC7 
X-CRM114-Status: GOOD (  17.40  )
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

On 13/06/2025 07:56, Pritam Manohar Sutar wrote:
> Update the USB 3.1 DRD controller and USB31DRD phy nodes to support
> SS combo phy for this soc.
> 
> The USB 3.1 DRD controller has the following features:
> * DWC3 compatible
> * compliant with both USB device 3.1 and USB device 2.0 standards
> * compliant with USB host 3.1 and USB host 2.0 standards
> * supports USB device 3.1 and USB device 2.0 interfaces
> * supports USB host 3.1 and USB host 2.0 interfaces
> * full-speed (12 Mbps) and high-speed (480 Mbps) modes with USB device
>    2.0 interface
> * super-speed (5 Gbps) mode with USB device 3.1 Gen1 interface
> * super-speed plus (10 Gbps) mode with USB device 3.1 Gen2 interface
> * single USB port which can be used for USB 3.1 or USB 2.0
> * on-chip USB PHY transceiver
> * supports up to 16 bi-directional endpoints
> * compliant with xHCI 1.1 specification
> 
> USB3.1 SSP+(10Gbps) is supported in this commit and SS phy in combo
> phy only supports PIPE3 interface and it is added in index 0 of SS phy.
> UTMI+ and PIPE3 PHY interfaces are specified in "phys" property,
> UTMI+ (index 0 HS phy) and PIPE3 (index 0 SS phy).
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
>   .../arm64/boot/dts/exynos/exynosautov920-sadk.dts |  4 ++++
>   arch/arm64/boot/dts/exynos/exynosautov920.dtsi    | 15 +++++++++++++--
>   2 files changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> index a21386bd9af3..40588f7c9998 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> +++ b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> @@ -88,6 +88,10 @@ &xtcxo {
>   };
>   
>   /* usb */
> +&usbdrd31_ssphy {
> +	status = "okay";
> +};
> +
>   &usbdrd31_hsphy {
>   	status = "okay";
>   };
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
> index 4efc005cae80..5ee7fad346b9 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
> @@ -1048,6 +1048,17 @@ pinctrl_hsi1: pinctrl@16450000 {
>   			interrupts = <GIC_SPI 456 IRQ_TYPE_LEVEL_HIGH>;
>   		};
>   
> +		usbdrd31_ssphy: phy@16480000 {
> +			compatible = "samsung,exynosautov920-usb31drd-ssphy";
> +			reg = <0x16480000 0x0200>;
> +			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_NOC_USER>,
> +				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
> +			clock-names = "phy", "ref";
> +			#phy-cells = <1>;
> +			samsung,pmu-syscon = <&pmu_system_controller>;
> +			status = "disabled";
> +		};
> +
>   		usbdrd31_hsphy: phy@16490000 {
>   			compatible = "samsung,exynosautov920-usbdrd-hsphy";
>   			reg = <0x16490000 0x0200>;
> @@ -1109,8 +1120,8 @@ usbdrd31_dwc3: usb@0 {
>   					 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
>   				clock-names = "ref", "susp_clk";
>   				interrupts = <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH>;
> -				phys = <&usbdrd31_hsphy 0>;
> -				phy-names = "usb2-phy";
> +				phys = <&usbdrd31_hsphy 0>, <&usbdrd31_ssphy 0>;
> +				phy-names = "usb2-phy", "usb3-phy";
>   				snps,has-lpm-erratum;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_u3_susphy_quirk;

I think at least patch 6 & 9 should be squashed.

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
