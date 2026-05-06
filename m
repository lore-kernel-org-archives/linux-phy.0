Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21D55CD342C
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 14:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o5NU4+bybwj2Z436hbp1p4UVmT73pIP1Rwz/Dgsc7Mk=; b=NCb22BW4RVwTk/7AMTUrWL2099
	IekDTv8CPIcBxKci9ULvBcve5TGm2gR/Cp8Y/PyqrrZUzqlkSvLNRKe8y0i8ZREiED0HkBw3MFr7i
	eZzsUF+oLjJ/NJ6NZ56QKgDynHcVbCtditKdIbZB0g4Bat7APSoFxfv6A1txncHGhkqRNdISG0LWy
	gPK+PUf/MvqfAismomvRpbuK4wpxHUyXjHVNYokdBgpfHOEr5rkS4w2oCz6Sqf7AQwo3IbWRn2Bf+
	gVATFsGuErq/AHkw7gTwIt7DpSCDv8uUwJOrRsaP2OKcl5L8oR1mqP2LCBRoDOsFymWgT/biodQ2t
	qmGICRYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdZk-00000001AJg-3dDi;
	Wed, 06 May 2026 14:50:12 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdZj-00000001AH1-0ePj
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 14:50:11 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-488a9033b2cso58390025e9.2
        for <linux-phy@lists.infradead.org>; Wed, 06 May 2026 07:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079009; x=1778683809; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iNlQdkQkqMvv6TX3zSIUZJDpuOz3OCXPy5mPofQZIh8=;
        b=Jc3qWrly5HyEB1u/s4K8gMGI5CxNvxZbHiMiw6PT+HMeVYbaauQdX1D1GMeYcvUp/7
         TwDH5JGEuCMZSB/5cKfIM7wVr/n1ogk11wDSdbUj6Z7xLYuQHqcvIwtX3mHJXCAnJNQn
         8KYWaKJc/aa34iOhAlCPmK3nQVm58P87d2xMZmGTmKeIfDBo8CauR4oEjX8Jgc9IksgA
         8uHwH0Ay49n0rcIs0DJPMIpL15Iq/YtLFTjjMTNAAx02Cr9qvqcAKSDPJfnRIImpJJAb
         TpAKWSgnT8D70aYmB9uwA/vTHJSc/95H67rHTNboPqrikMBSV1g5ynKf5V66WLFs1dyV
         uDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079009; x=1778683809;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNlQdkQkqMvv6TX3zSIUZJDpuOz3OCXPy5mPofQZIh8=;
        b=YkcelZbLJI4OV/wsVfFpiLrLtDIjDE7UcIMovJrqGtADYp/ViHaeNW6n5/M79DEApd
         I8iggeiKfmjbPG3aiiRkUDCMLjnviHLkVqvnPKlwpev2OmDrFt1zCpiJh0Gu2xG8Lcef
         YiRLZbraTsRKowfwPx+ZRiU8n5lU2TkyZ2xM8iR6Kq+EYJ90ZeKl52mr9/V+4mhKG4BO
         uoSa9Atd5AKVSzpReONlJqtsv/7mPoT4bY/FujJiAcUwjs+tQL0aiMtsl1RmPFsrZGma
         Xs95YPbi4nci4MFe5ba+DxwhmQMY3Iw8bHiEezKYxCAWYhi1Ym+3K/QWx3bZXIdEuQzB
         GCiQ==
X-Forwarded-Encrypted: i=1; AFNElJ8gx6iolOGAqdfMsmYV9M8mSL5KVuzIfCJxYEKgsE0QyPs1VjB6MBSM5po5hBe6c3zVBs8wTcinvds=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/jlF3dSuXfqG4ypGIe1YPLDyFlOG/++Q7+E69Ni8PKvzbCWfV
	+Bo1QO1/XGoKwP0MsT+Mv9C/E866IIBEW7o41e07eHTeXj2e3n9TdkBtDI5BF2JeDrc=
X-Gm-Gg: AeBDiesL/wbY9rd0jSL3SPTU3w9eSOjWotfRyxJJgLSM3sHfgVQ07OGDQWy2UFfBrRh
	NikLZc9C15RWC8lSKvmbQOY/A2joTdk4V+FlEtdkDq5uaSTyIMN8sDMzZ4tn++iFA3n9NQT2JKK
	m4X2METEjP6K8SV0tBvAznMc6aOxtHukwhznpLW5UH4ZkaPDAtO1F1RutCi4cbjZosv1D5d/beE
	N3uCUxSPmRQOlKY7tje+iVw/tesS2/4nWDe50cv/f57vB7FpV6ahLFEyQiK02Z/ySHmZna9UvAr
	pmuqJUpWjT4CClPdoY9WaMQV/V4DzjnZuexbbKZjmIEAZA4fHeJZjTqZ9hE3x7bUtZdRaVw2KzS
	KWdNKYUbyWRh7+tX42nq2pwJFPz4tCKmb5BQt98TMTznzIpPshFHe9fC23E+YNh+BGkyMcIZ+Ad
	4MxDqtx6ytNlN1nWPPLr9DGn6X1MC9ukAri1CcCI0xwUH8vIbLhzQNnFPuRLge/2bojpxxUmLwj
	UdEB67I//qW3e6s7rHZP6nHHH1u
X-Received: by 2002:a05:6000:268a:b0:451:3b12:9bca with SMTP id ffacd0b85a97d-4515ce1cde3mr6569525f8f.25.1778079009130;
        Wed, 06 May 2026 07:50:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45052483166sm12894076f8f.7.2026.05.06.07.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:50:06 -0700 (PDT)
Message-ID: <7430e331-5bc4-4814-baf1-e87a9104045f@linaro.org>
Date: Wed, 6 May 2026 16:50:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 06/16] phy: rockchip: usbdp: Add missing mode_change
 update
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-6-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-6-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075011_229373_D156A599 
X-CRM114-Status: GOOD (  17.91  )
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

On 4/28/26 18:13, Sebastian Reichel wrote:
> rk_udphy_set_typec_default_mapping() updates the available modes,
> but does not set the mode_change as required. This results in
> missing re-initialization and thus non-working DisplayPort.
> 
> Fix this issue by introducing a new helper to update the available
> modes.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 16 +++++++++++-----
>   1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 97e53b933225..febc148a754e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -619,6 +619,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_udphy *udphy, bool hpd)
>   	rk_udphy_grfreg_write(udphy->vogrf, &cfg->vogrfcfg[udphy->id].hpd_trigger, hpd);
>   }
>   
> +static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
> +{
> +	if (udphy->mode == mode)
> +		return;
> +
> +	udphy->mode_change = true;
> +	udphy->mode = mode;
> +}
> +
>   static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
>   {
>   	if (udphy->flip) {
> @@ -649,7 +658,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
>   		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
>   	}
>   
> -	udphy->mode = UDPHY_MODE_DP_USB;
> +	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
>   }
>   
>   static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
> @@ -1385,10 +1394,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
>   			usleep_range(750, 800);
>   			rk_udphy_dp_hpd_event_trigger(udphy, true);
>   		} else if (data->status & DP_STATUS_HPD_STATE) {
> -			if (udphy->mode != mode) {
> -				udphy->mode = mode;
> -				udphy->mode_change = true;
> -			}
> +			rk_udphy_mode_set(udphy, mode);
>   			rk_udphy_dp_hpd_event_trigger(udphy, true);
>   		} else {
>   			rk_udphy_dp_hpd_event_trigger(udphy, false);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
