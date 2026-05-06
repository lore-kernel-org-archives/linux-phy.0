Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD511CD342C
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 14:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g6yF3vS7rSApvFQf8oqpT+J7IOhbe4C3HJQuWHStriA=; b=OYLzNkPo92843D8g90Bph06elM
	uxLUNw8dr9UyV0XM6YzCFa877TgPmLXXD0aIWPJt9kphSpnGcoPUD5pBHKvTobO/L/AawgPCOQeSP
	2NPYoFH0SJgobCodTfTR+AuaRkQkjrU9BezfQbbDTuvbvD3tDJA2LQJDy1IFB+Jl5anWtPmtM8gSp
	asc5Jlz8XGgvAzUPg935Y6M08p28cdc1sugQ49MQk0gkj3gAtoJr+5pevtLD8saYQAr2Vh0glu7wp
	ao638cpWOc2wfxYhR8V7rp9ibzI9M1yQZ4Q8HG6kduFzzw9MeKAp48nCC9M6WGr6tX5dneOedbAyJ
	yhKVqo+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdfk-00000001CKw-2mzf;
	Wed, 06 May 2026 14:56:24 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdfi-00000001CIw-0LrX
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 14:56:23 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-40ef10ec84cso4135902fac.2
        for <linux-phy@lists.infradead.org>; Wed, 06 May 2026 07:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079381; x=1778684181; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lqwubmezLdUWi5nwdGm9inEyQvRDdNL1kdWWslX4DTM=;
        b=HuSHiR3U6W28JpcXZ0eSs5Px+PBzHq3j6a8sA1meJ6r5gxKLdiFUwV+EIAFOLJj1er
         GhWxjTDQidgp+TK5jwHw5KhodbFVnfFXsDYCBCQk3b1SnupRMD3IGsMIXUrTIA/KH832
         5PGJOTLR3HQ+iQNlRVb154dYHabtE0WHHtBJkfEjI425twvPWpi9pC29r17hOL/oxE0u
         d/DmumXqnNB5m/vjuiTbjFRLJ9V/O6x7kPwOdfmBDXtWl2MS5GhW77mt2hsvU2/+DPu8
         iONeNukpi65EM+auyBhZ+3iqYSYUSB9uHkSnn9TjoAcjF4BdvjVletdHLglo0YLzGdDO
         VdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079381; x=1778684181;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lqwubmezLdUWi5nwdGm9inEyQvRDdNL1kdWWslX4DTM=;
        b=fSsXPs3swrPe9XYVxRA0DNncwqEeBZ1scPWvDQ39x25Dq5SG6FlGbrLoUjZpe27Mfe
         MvnSLl6yiPCrbbydK3KvXjeqyXcnqe7iFgtOUtJr+ZYC4SJJUQVJe4YsMNOx7fQSkhF5
         3XDH3LX3e5zrRIpX8B5ZxTDEAXpZ2e8zTUbRr1Ck1gzHCrmaKUO3g1v3lEludXCZ9gKv
         hT1uA2ZwE3MbI+IGrpd/KJLefmZ9GlPJkbNun02qwJuHWsQhlJivSbM44HGDBWfKRyYR
         /2FFNpkG1o0nQOWzznx9PV0e9fqd/R9rteYnRtkEpTdchCbGVWeF09/UvWfLaJ/pdoV1
         KvVA==
X-Forwarded-Encrypted: i=1; AFNElJ/hk7Rq/4gB22OGZAD0kN6bZNj5UkZKXJCT2rEF+J4GVlbyR9QQuxUg61fEqymZhUOgEiWciETTU+8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBv3M2zxz/ytwo6qTWzuhHmu9UZDVFe3IIzOpS7R1qezOOKQxF
	Rzor/8w3KI8Sf7on9SfO2RSTx37Puv9XTmoHRd8Mo1Ijjp/z22b+EiUBr7/BFE/ky3Joth+nwme
	WMEdQ
X-Gm-Gg: AeBDievmgswtn6HeOO1VM6LMG9ywjaveAJc/YWN0uLzD1lEtjObGaw+kvJnB10oHplO
	+xXPw+rwQ8ipSdt7m0lvQ9O5BrSK2tmbEtbBO0wlzHRjOqzFa7nJCl69/fQar0eaxQXDaPUZe9n
	p2vUTkyIdcJuMA1FuBJF9JZqB24ms7NQApDHhC2Hn/tImgUSJ1kGZZkShe6aIS3Li7+UJFN0tkV
	YHNZS1I92ORU/sHvdIiFyraaM7iuA6y5GNSBg6xG5cVT/JvSsM/Z3VAAd/tHRWE/SDU2LIAGy6S
	jAWo/inKoEXrZ55wLsJwACy7ZIL7I0ec7U+6RuFwePwvchh8/M68EmB68LOs7Jg3/8+BeXQCJxQ
	h/ZveT3bNIl5L4ZWk2y5xNb21L/4NBmyc11/YxyFrQz5IRhIZcBQv9TFJ64PG7jIrFK1t5p5muT
	CNv8rfcXIK+I1Q5hWRUy7lqIkCo2/Uyy2iilKb5y9VcroBqTbcPI/xQGHx4MbZf+Hhn23OmECsf
	5ZohODUA52f0cMH6RRfmsDSxM/l
X-Received: by 2002:a05:6871:e48b:b0:417:6237:cf7e with SMTP id 586e51a60fabf-434f5cd2ed9mr2538133fac.8.1778079380535;
        Wed, 06 May 2026 07:56:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-43454d8ed0dsm15613477fac.17.2026.05.06.07.56.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:56:20 -0700 (PDT)
Message-ID: <cb419510-b9ab-4a62-b210-ce07383c564b@linaro.org>
Date: Wed, 6 May 2026 16:56:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 11/16] phy: rockchip: usbdp: Register DP aux bridge
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
 <20260428-rockchip-usbdp-cleanup-v4-11-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-11-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075623_271838_3E4C4DB0 
X-CRM114-Status: GOOD (  20.77  )
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
> Add support to use USB-C connectors with the DP altmode helper code on
> devicetree based platforms. To get this working there must be a DRM
> bridge chain from the DisplayPort controller to the USB-C connector.
> E.g. on Rockchip RK3576:
> 
> root@rk3576 # cat /sys/kernel/debug/dri/0/encoder-0/bridges
> bridge[0]: dw_dp_bridge_funcs
>          refcount: 7
>          type: [10] DP
>          OF: /soc/dp@27e40000:rockchip,rk3576-dp
>          ops: [0x47] detect edid hpd
> bridge[1]: drm_aux_bridge_funcs
>          refcount: 4
>          type: [0] Unknown
>          OF: /soc/phy@2b010000:rockchip,rk3576-usbdp-phy
>          ops: [0x0]
> bridge[2]: drm_aux_hpd_bridge_funcs
>          refcount: 5
>          type: [10] DP
>          OF: /soc/i2c@2ac50000/typec-portc@22/connector:usb-c-connector
>          ops: [0x4] hpd
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/Kconfig              |  2 ++
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 14 ++++++++++++++
>   2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index 14698571b607..39759bb2fa1d 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -136,8 +136,10 @@ config PHY_ROCKCHIP_USBDP
>   	tristate "Rockchip USBDP COMBO PHY Driver"
>   	depends on ARCH_ROCKCHIP && OF
>   	depends on TYPEC
> +	depends on DRM || DRM=n
>   	select GENERIC_PHY
>   	select USB_COMMON
> +	select DRM_AUX_BRIDGE if DRM_BRIDGE
>   	help
>   	  Enable this to support the Rockchip USB3.0/DP combo PHY with
>   	  Samsung IP block. This is required for USB3 support on RK3588.
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index beab20e4c512..77ad2a89d4f2 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -6,6 +6,7 @@
>    * Copyright (C) 2024 Collabora Ltd
>    */
>   
> +#include <drm/bridge/aux-bridge.h>
>   #include <dt-bindings/phy/phy.h>
>   #include <linux/bitfield.h>
>   #include <linux/bits.h>
> @@ -1434,6 +1435,7 @@ static int rk_udphy_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct phy_provider *phy_provider;
> +	struct fwnode_handle *dp_aux_ep;
>   	struct resource *res;
>   	struct rk_udphy *udphy;
>   	void __iomem *base;
> @@ -1492,6 +1494,18 @@ static int rk_udphy_probe(struct platform_device *pdev)
>   			return ret;
>   	}
>   
> +	/*
> +	 * Only register the DRM bridge, if the DP aux channel is connected.
> +	 * Some boards use the USBDP PHY only for its USB3 capabilities.
> +	 */
> +	dp_aux_ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 3, 0, 0);
> +	if (dp_aux_ep) {
> +		ret = drm_aux_bridge_register(dev);
> +		fwnode_handle_put(dp_aux_ep);
> +		if (ret)
> +			return ret;
> +	}
> +
>   	udphy->phy_u3 = devm_phy_create(dev, dev->of_node, &rk_udphy_usb3_phy_ops);
>   	if (IS_ERR(udphy->phy_u3)) {
>   		ret = PTR_ERR(udphy->phy_u3);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
