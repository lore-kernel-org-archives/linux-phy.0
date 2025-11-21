Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F095CFC28A
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 14:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8gtRxD0IawjHxwVVpCl1IRcwOaM63rqlTOFyK6gHoc0=; b=bZoilO4ux51KySG7C0LPtoggYH
	3y4drG8tyZL5pn8VHY5bkYMmO1zZzUZ84GLnZgD6CsheVPQdyh88UjEzJVXu/FvHagYZPTzNTGsO6
	PIgAg7FlsUMsjbvp+bD0NDyA3t2+uQSvj7i4X3gHjHYRvl7bGKBFY3qycTLx1KR8uUt0HXEwji6Co
	l29IaY2S/ADWDRIhZ8SM/Tm+mCM4H8sn3gCfs1V5Nz5Vws2WRtBdhqEdxm5x5BVOCj6JjAYXKuDqH
	7PIfCiWUu/CNlA46lk1um2E4FxZ8XsqpIDCJtQBnQDUMjCJkAytfTDp1Vdot062iJ7afTAl2TtRt6
	8tp88ltw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSWm-00000008YLG-36Wj;
	Fri, 21 Nov 2025 14:54:24 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSWj-00000008YJy-3OAh
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 14:54:23 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-47774d3536dso16996455e9.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 06:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763736860; x=1764341660; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ETN4gl1iZbhJeLn6OCDI+9u79qwxOMAaoq4ImqB9HJI=;
        b=el6fFxeBIhECIp1WdMk0ohsmkhZ41j6JsvgoYS+w9EFItT7+MoPauQgX0cnT0a1sKR
         60NRyn42nuEWKTAIQogtJTWes+WN1onUH0jmHBLNZtQw5wSACzIRRVU5Uz9CJPqzh6X5
         kd/SBzWqhnig4ZYD+TMLhN/qWdSvDP8payLl9Su1QdpluXXJfblp2HCYlh7YAlpYEbnJ
         eChNkTD2uxEKfOHoEWr9R2kywORrZTADUIfCPZLnHdRWfWSwQNiR+UH0Yv0V9TI6n+ge
         SmaSIuY3shiXNEtR3aNhMrXONW/3rVAbebGj/CEKgfrFq9b8WsqleVVUweffWcP5YkZi
         46mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736860; x=1764341660;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ETN4gl1iZbhJeLn6OCDI+9u79qwxOMAaoq4ImqB9HJI=;
        b=cgVY7lYLtNxsCFVWIJPbaSS7tIPt1sMBAibAba2CtGdXsoc1KVwPV2hV5C3Do10rXk
         YeEd0tJuqPoljTN/+IJ+v+e4n68vL+w6PGfmq+E/2R7/X4A/VdXWITeho0WsJTL/3xG3
         HbTysWnedQvRQDljI3PEJcT8tFwZFYuAEZJ7Wh9jFTYxDkw9wANwQrVOSsX9WajE+TZX
         BJ8ocx9So/jAvpI1zXhka1px72+gGbXHdAVD3Gbhhv7GG9FLVDPzaEAWVD5CHtvwvabn
         dialYp7zhXk7uFF6Xi4/ioiVmYJJKqPK3vDSrhZLOn8TV4+lWjpNypL7cHCRZp0Fmkpa
         6iQw==
X-Forwarded-Encrypted: i=1; AJvYcCVGZa9YdynCpSbg5dH7oClZf+Z+uGb5VTRZJ3HjLSndPm9rKN9ZB/Jsp20QI1Ljxi2DoD8QHbsJtSg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWR4CI7mcvgKI2b0IvW1W5kSUJv1TbAF3pBuviToI66uZoNpvJ
	5ce3iV+GuStAk0XW/X1WgPZv+Y7/wuWGS6Ta0G+mp8ayeN8+LSIXwcPUSRlRgP13gGk=
X-Gm-Gg: ASbGncvWXi6JCmYh4L71e7NplK3mnnNXN36FtJ8VT82sSS8B6JdplZQu6qQbjD+D1ix
	AFvqiwsykiv0Ax0M4l5kYxKnJ881ed77TVH+fPyZsqRbpXCNzqm0tR7wpIIRNlcayHwTucuKIdY
	e917X7Fx0/Emw3Z1RZNzXQe7YOy6wu1fPXAQA9Noqso6J1UgHGzxmQzYHMwk+EjE6Ds51chceVI
	zLsiMo2aR6AWX8IetUZvmzgCkl4qmRiL+QR/4rJw5jd6h+dPZmj/nUow8a4FwXRzg+Qsd3jr++m
	x1tzonXg60/Iy5iZOnmIEzh07ncxLD8Amuy35xZqwXAnCEixjnBwx34gm66iULC2cB6Unp7zVhf
	+EYTqcsrb+hprsF9Cx9ekXRLRI89FiKaohs3ZjXM+Dda7yvaOXmJ9rLg2ugkyOXqONLUo8xGnbu
	Xj+wSSk/hBVlrS8GIiS92wto/ayZRvhm8WqDEXThpA3xEyT2QdFTyqHL/sN/Mdy9g=
X-Google-Smtp-Source: AGHT+IEGzoj+G1XJyD7HRZUpDf/Nmo3R0LQETO+OA2bCF/axjJi8k5L8RSAIauSreqKt4GiwYJQXaA==
X-Received: by 2002:a05:600c:1d14:b0:477:9d88:2da6 with SMTP id 5b1f17b1804b1-477c026ed62mr28503395e9.0.1763736859683;
        Fri, 21 Nov 2025 06:54:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f3635bsm11604067f8f.17.2025.11.21.06.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:54:19 -0800 (PST)
Message-ID: <cd200f33-dd6f-4eb3-b2d9-8f41d0dde992@linaro.org>
Date: Fri, 21 Nov 2025 15:54:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v10 04/11] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-5-kernel@airkyi.com>
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
In-Reply-To: <20251120022343.250-5-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_065421_909945_67A34738 
X-CRM114-Status: GOOD (  21.57  )
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

On 11/20/25 03:23, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The drm_aux_bridge_register() uses the device->of_node as the
> bridge->of_node.
> 
> This patch adds drm_aux_bridge_register_from_node() to allow
> specifying the of_node corresponding to the bridge.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>   drivers/gpu/drm/bridge/aux-bridge.c | 24 ++++++++++++++++++++++--
>   include/drm/bridge/aux-bridge.h     |  6 ++++++
>   2 files changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
> index b3e4cdff61d6..52dff4601c2d 100644
> --- a/drivers/gpu/drm/bridge/aux-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-bridge.c
> @@ -35,6 +35,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
>   /**
>    * drm_aux_bridge_register - Create a simple bridge device to link the chain
>    * @parent: device instance providing this bridge
> + * @np: device node pointer corresponding to this bridge instance
>    *
>    * Creates a simple DRM bridge that doesn't implement any drm_bridge
>    * operations. Such bridges merely fill a place in the bridge chain linking
> @@ -42,7 +43,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
>    *
>    * Return: zero on success, negative error code on failure
>    */
> -int drm_aux_bridge_register(struct device *parent)
> +int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
>   {
>   	struct auxiliary_device *adev;
>   	int ret;
> @@ -62,7 +63,10 @@ int drm_aux_bridge_register(struct device *parent)
>   	adev->dev.parent = parent;
>   	adev->dev.release = drm_aux_bridge_release;
>   
> -	device_set_of_node_from_dev(&adev->dev, parent);
> +	if (np)
> +		device_set_node(&adev->dev, of_fwnode_handle(np));
> +	else
> +		device_set_of_node_from_dev(&adev->dev, parent);
>   
>   	ret = auxiliary_device_init(adev);
>   	if (ret) {
> @@ -80,6 +84,22 @@ int drm_aux_bridge_register(struct device *parent)
>   
>   	return devm_add_action_or_reset(parent, drm_aux_bridge_unregister_adev, adev);
>   }
> +EXPORT_SYMBOL_GPL(drm_aux_bridge_register_from_node);
> +
> +/**
> + * drm_aux_bridge_register - Create a simple bridge device to link the chain
> + * @parent: device instance providing this bridge
> + *
> + * Creates a simple DRM bridge that doesn't implement any drm_bridge
> + * operations. Such bridges merely fill a place in the bridge chain linking
> + * surrounding DRM bridges.
> + *
> + * Return: zero on success, negative error code on failure
> + */
> +int drm_aux_bridge_register(struct device *parent)
> +{
> +	return drm_aux_bridge_register_from_node(parent, NULL);
> +}
>   EXPORT_SYMBOL_GPL(drm_aux_bridge_register);
>   
>   struct drm_aux_bridge_data {
> diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
> index c2f5a855512f..7dd1f17a1354 100644
> --- a/include/drm/bridge/aux-bridge.h
> +++ b/include/drm/bridge/aux-bridge.h
> @@ -13,11 +13,17 @@ struct auxiliary_device;
>   
>   #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
>   int drm_aux_bridge_register(struct device *parent);
> +int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np);
>   #else
>   static inline int drm_aux_bridge_register(struct device *parent)
>   {
>   	return 0;
>   }
> +
> +static inline int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
> +{
> +	return 0;
> +}
>   #endif
>   
>   #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)

Looks fine:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
