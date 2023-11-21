Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BED1C5ACB3
	for <linux-phy@archiver.kernel.org>; Tue, 21 Nov 2023 08:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A3O7SKJnuVFnz5zj+wVqKxFEd4+um6+MTnPyT+oT53M=; b=N+fqMFD2AtxF+0tzfg6oUQLqDK
	XMP9R5t273dAf7MjcETgt4YxcbuQgdnLMWTkq5l9sXesXTB+EIT/GV0kiPQs+XgMIfWUV+0nMqSeY
	U1liFrmQhfHqDJAxa4izlVnoP8f8jpkct6T5S3CL0VdRPWScZtucgjInbA33TTPlM4nlSRK+H0g8X
	FXRv/k6mAyRWW4/yobcJ3BHxfVWonkcN/aixoqpIc64dyuVEDNmFjJuiawfNOl9by58gMBUsmtT3d
	4LcmgLPhoyukGM6F4Ov/PjPNg9rSeh6kkn0UaUpKnOQ/wR81XyBvU/nbpvdgC0MRrKaJnTySAzbk7
	prc2KabQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MXI-00G3Yf-1A;
	Tue, 21 Nov 2023 08:55:12 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MXF-00G3W2-22
	for linux-phy@lists.infradead.org;
	Tue, 21 Nov 2023 08:55:11 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40a48775c58so24131295e9.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Nov 2023 00:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700556906; x=1701161706; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QAcQVITg0Zl8tFyEndfjZeJGgM310lpjnFd95gDjvak=;
        b=hpVE6vJFYuFCaRsbdtV16GVzfM5TeAfwUprAsp1o4Ik7PO59EMAbKkdKMl3RkZi+8h
         nfQQb0PR7nrLpIY8xLELV05W94bhDNz3PEYBnNwfqSNGQsBHvtt9hyodRdckq1SOQVwH
         BgUrSFx7nwksz9LG9LVP90jxHD6lNR7e1JvO9Ey8B5zcFz2tHREUcqYG7RZb7CHp7ZWA
         2h/ZfVNGgFx6fl81R+xVpKw+Y7I7mKoCpLAiPs+dYVaLc8NGvNACMpXeoqqGNFI+AYVp
         3IB1thlJYUmq7TXw260361ENsljIUluuE5kibEMuCn38bHPAP9u1y3F75v2JBUsSMlY5
         21/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700556906; x=1701161706;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QAcQVITg0Zl8tFyEndfjZeJGgM310lpjnFd95gDjvak=;
        b=ObG6krUBYJZEiSWF3/JZP06aeir1KrpRdHG+GXMkoVByGvlWvoU06K4r5CLnQgzXXQ
         mxhYxRZW7tSBxqZiuV5wrpNC48R9ljStbdZ8/Ew9AynHF2ZR+p8/F/+uS38V3HUL1Ywr
         H2i64jPDbDL9dMQoWyQbKwI470y3d/KSSt02Ypuu76tD93CrFSBhOWgIO78o4eVoisGJ
         JBuvg/shN1z2FTNvxPLudISFeU0GHAMNp+vGRkQ/UXM48g/Xwi26hfY0w2BrMxYqMFlO
         nsAyYzodKJ8ZeSspguSn1PMjYItMRdPbCjJJ/UvzpByFNY4iSapR8lxt9XwXa4GoYEIi
         sGLQ==
X-Gm-Message-State: AOJu0Yy3eJj2Wm7c0k0v8+TVT3rgTQKIUOrcvEduDUlHAlXrkhcoo91L
	xwVgMyih4hWBB5+NNyjNHv7oHw==
X-Google-Smtp-Source: AGHT+IHcSFZ6GZPsHUqaxwV+RjlJ0xBvB5nEL73Y+wS4cj1O2PrMhxBa3FGQeKfNsPR9A+mZjfc7Uw==
X-Received: by 2002:a05:600c:4453:b0:409:5c2b:43d1 with SMTP id v19-20020a05600c445300b004095c2b43d1mr8088110wmn.20.1700556905827;
        Tue, 21 Nov 2023 00:55:05 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:2a39:bc19:20b6:16a? ([2a01:e0a:982:cbb0:2a39:bc19:20b6:16a])
        by smtp.gmail.com with ESMTPSA id m10-20020a7bca4a000000b00407b93d8085sm20147567wml.27.2023.11.21.00.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 00:55:05 -0800 (PST)
Message-ID: <d29a2733-9bc3-4737-b8e2-81b6edb0bca7@linaro.org>
Date: Tue, 21 Nov 2023 09:55:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 1/6] drm/bridge: add transparent bridge helper
Content-Language: en-US, fr
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
 <20231103230414.1483428-2-dmitry.baryshkov@linaro.org>
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
In-Reply-To: <20231103230414.1483428-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_005509_672644_FD5140AD 
X-CRM114-Status: GOOD (  25.42  )
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

On 04/11/2023 00:03, Dmitry Baryshkov wrote:
> Define a helper for creating simple transparent bridges which serve the
> only purpose of linking devices into the bridge chain up to the last
> bridge representing the connector. This is especially useful for
> DP/USB-C bridge chains, which can span across several devices, but do
> not require any additional functionality from the intermediate bridges.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/gpu/drm/bridge/Kconfig      |   9 ++
>   drivers/gpu/drm/bridge/Makefile     |   1 +
>   drivers/gpu/drm/bridge/aux-bridge.c | 140 ++++++++++++++++++++++++++++
>   include/drm/bridge/aux-bridge.h     |  19 ++++
>   4 files changed, 169 insertions(+)
>   create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
>   create mode 100644 include/drm/bridge/aux-bridge.h
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index ba82a1142adf..f12eab62799f 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -12,6 +12,15 @@ config DRM_PANEL_BRIDGE
>   	help
>   	  DRM bridge wrapper of DRM panels
>   
> +config DRM_AUX_BRIDGE
> +	tristate
> +	depends on DRM_BRIDGE && OF
> +	select AUXILIARY_BUS
> +	select DRM_PANEL_BRIDGE
> +	help
> +	  Simple transparent bridge that is used by several non-DRM drivers to
> +	  build bridges chain.
> +
>   menu "Display Interface Bridges"
>   	depends on DRM && DRM_BRIDGE
>   
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 2b892b7ed59e..918e3bfff079 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -1,4 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_DRM_AUX_BRIDGE) += aux-bridge.o
>   obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
>   obj-$(CONFIG_DRM_CHRONTEL_CH7033) += chrontel-ch7033.o
>   obj-$(CONFIG_DRM_CROS_EC_ANX7688) += cros-ec-anx7688.o
> diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
> new file mode 100644
> index 000000000000..6245976b8fef
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/aux-bridge.c
> @@ -0,0 +1,140 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2023 Linaro Ltd.
> + *
> + * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> + */
> +#include <linux/auxiliary_bus.h>
> +#include <linux/module.h>
> +
> +#include <drm/drm_bridge.h>
> +#include <drm/bridge/aux-bridge.h>
> +
> +static DEFINE_IDA(drm_aux_bridge_ida);
> +
> +static void drm_aux_bridge_release(struct device *dev)
> +{
> +	struct auxiliary_device *adev = to_auxiliary_dev(dev);
> +
> +	ida_free(&drm_aux_bridge_ida, adev->id);
> +
> +	kfree(adev);
> +}
> +
> +static void drm_aux_bridge_unregister_adev(void *_adev)
> +{
> +	struct auxiliary_device *adev = _adev;
> +
> +	auxiliary_device_delete(adev);
> +	auxiliary_device_uninit(adev);
> +}
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
> +	struct auxiliary_device *adev;
> +	int ret;
> +
> +	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
> +	if (!adev)
> +		return -ENOMEM;
> +
> +	ret = ida_alloc(&drm_aux_bridge_ida, GFP_KERNEL);
> +	if (ret < 0) {
> +		kfree(adev);
> +		return ret;
> +	}
> +
> +	adev->id = ret;
> +	adev->name = "aux_bridge";
> +	adev->dev.parent = parent;
> +	adev->dev.of_node = parent->of_node;
> +	adev->dev.release = drm_aux_bridge_release;
> +
> +	ret = auxiliary_device_init(adev);
> +	if (ret) {
> +		ida_free(&drm_aux_bridge_ida, adev->id);
> +		kfree(adev);
> +		return ret;
> +	}
> +
> +	ret = auxiliary_device_add(adev);
> +	if (ret) {
> +		auxiliary_device_uninit(adev);
> +		return ret;
> +	}
> +
> +	return devm_add_action_or_reset(parent, drm_aux_bridge_unregister_adev, adev);
> +}
> +EXPORT_SYMBOL_GPL(drm_aux_bridge_register);
> +
> +struct drm_aux_bridge_data {
> +	struct drm_bridge bridge;
> +	struct drm_bridge *next_bridge;
> +	struct device *dev;
> +};
> +
> +static int drm_aux_bridge_attach(struct drm_bridge *bridge,
> +				    enum drm_bridge_attach_flags flags)
> +{
> +	struct drm_aux_bridge_data *data;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> +		return -EINVAL;
> +
> +	data = container_of(bridge, struct drm_aux_bridge_data, bridge);
> +
> +	return drm_bridge_attach(bridge->encoder, data->next_bridge, bridge,
> +				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +}
> +
> +static const struct drm_bridge_funcs drm_aux_bridge_funcs = {
> +	.attach	= drm_aux_bridge_attach,
> +};
> +
> +static int drm_aux_bridge_probe(struct auxiliary_device *auxdev,
> +				   const struct auxiliary_device_id *id)
> +{
> +	struct drm_aux_bridge_data *data;
> +
> +	data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->dev = &auxdev->dev;
> +	data->next_bridge = devm_drm_of_get_bridge(&auxdev->dev, auxdev->dev.of_node, 0, 0);
> +	if (IS_ERR(data->next_bridge))
> +		return dev_err_probe(&auxdev->dev, PTR_ERR(data->next_bridge),
> +				     "failed to acquire drm_bridge\n");
> +
> +	data->bridge.funcs = &drm_aux_bridge_funcs;
> +	data->bridge.of_node = data->dev->of_node;
> +
> +	return devm_drm_bridge_add(data->dev, &data->bridge);
> +}
> +
> +static const struct auxiliary_device_id drm_aux_bridge_table[] = {
> +	{ .name = KBUILD_MODNAME ".aux_bridge" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(auxiliary, drm_aux_bridge_table);
> +
> +static struct auxiliary_driver drm_aux_bridge_drv = {
> +	.name = "aux_bridge",
> +	.id_table = drm_aux_bridge_table,
> +	.probe = drm_aux_bridge_probe,
> +};
> +module_auxiliary_driver(drm_aux_bridge_drv);
> +
> +MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
> +MODULE_DESCRIPTION("DRM transparent bridge");
> +MODULE_LICENSE("GPL");
> diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
> new file mode 100644
> index 000000000000..441ab3f0e920
> --- /dev/null
> +++ b/include/drm/bridge/aux-bridge.h
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2023 Linaro Ltd.
> + *
> + * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> + */
> +#ifndef DRM_AUX_BRIDGE_H
> +#define DRM_AUX_BRIDGE_H
> +
> +#if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
> +int drm_aux_bridge_register(struct device *parent);
> +#else
> +static inline int drm_aux_bridge_register(struct device *parent)
> +{
> +	return 0;
> +}
> +#endif
> +
> +#endif

LGTM:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
