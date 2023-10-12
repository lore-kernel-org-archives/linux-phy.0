Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F81BCDB46E
	for <linux-phy@archiver.kernel.org>; Thu, 12 Oct 2023 09:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPqR9p1bhZcTp79l1WG9UaJMPhupj6dvVWDYHwFVS5E=; b=en29imO0TPhJbJ
	Q3EmLNeaiM3hadwJsQ4s0CnC4f0hc1MYDExFcdIwFLd+XTCWsXqzpc/36zKmiKJ7GWG19k2XFSKyk
	Ivd2bJki5NaSW+FQFdnkgp/4emBcBBjh21sHLg0bOCJ65DJu5+Ar/at9E4HsnJjB69nhrXTXmIJKP
	a65+liWCuPMAGLcLfw5LsFp8O2eLm8MJxm8Gw5K4m5JjJ8dlKBv3kZhiFKxvU+7oK2rV33MFLzAqH
	gLSMNzSVmuvcn+FER1St5NYboXLEdp1w96xtMANVPTQS8CuHcVuTvOC0IRzR/VSLiGd3369n/FjkJ
	QU8VGlMXzs+y02suHgWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqsTk-000UmG-2z;
	Thu, 12 Oct 2023 09:59:40 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqsTh-000Uj3-2m
	for linux-phy@lists.infradead.org;
	Thu, 12 Oct 2023 09:59:39 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3175e1bb38cso84436f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Oct 2023 02:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1697104774; x=1697709574; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=850L4J9Pt8Ye476iT5UYLlEn2y++ey+0wXEdVOQcbrg=;
        b=P/fkN33D7MBUY/PWu9Q+cm5NX+B4rFPDW4iRVXmmqTeXTHFnJtTaxcSjEi8JNYqifz
         wp+WddJ814SJbJc33OoqRB9vcEpxOSEGc98WGvsXhbEEMLAwIhWwOV8yX2q0ERo5jvt4
         yfJfVW2bvi8HQ/T04i35EWY/NqnxTj2DiBYRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697104774; x=1697709574;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=850L4J9Pt8Ye476iT5UYLlEn2y++ey+0wXEdVOQcbrg=;
        b=g9dahVIE9Afaoc4TzZ42y8JTGfHib5GC3VpRTQw3nLIOSz5hzZGd35FH0vs8uPjLx0
         wFNXHBE6FGqPWucwCTIvNxr3BdKGsB8Ca8SN4aNYAD9uqaYNpgZZJwM7g2YXgYgJpgZh
         Z0eTzTkAX5I/GkufpUJOd3M65hwgWHHF85h33JD6ET+GfDth+xVnSBcpJXLk+u5MkRo8
         a8e4Sy8kH71jw+Bk4bgRAUVb0zEE6upsDZ98SeN+GIt1jRA+1PKTuDwC33CLUru+88vu
         ivBneHqNokzFRBrW6MDcWLBANmdhucK1AGK9CVN5aOT9r43KcuFJ0Lm+taZKuw3DwXB7
         SXqg==
X-Gm-Message-State: AOJu0Yxig61Cua4v9OWcRUIuWY1aW1Dd42rMQLUW3p+ZawoKp08CquXo
	fX8UbNgUQQf+3ghH2H3VJaM/ag==
X-Google-Smtp-Source: AGHT+IEqJaDB0RhaFKEuEZoRTGnHTuF60KwFEHLsXjGgl0fw8GLMvrXqQu83p3e8TtKytUpOzzieKA==
X-Received: by 2002:adf:e8ca:0:b0:317:630d:1e8e with SMTP id k10-20020adfe8ca000000b00317630d1e8emr20485058wrn.2.1697104773228;
        Thu, 12 Oct 2023 02:59:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id l14-20020a5d480e000000b0031c5e9c2ed7sm18016264wrq.92.2023.10.12.02.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 02:59:32 -0700 (PDT)
Date: Thu, 12 Oct 2023 11:59:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v4 1/3] drm/bridge: add transparent bridge helper
Message-ID: <ZSfDgo5ZLarTANLa@phenom.ffwll.local>
References: <20231010231018.77381-1-dmitry.baryshkov@linaro.org>
 <20231010231018.77381-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010231018.77381-2-dmitry.baryshkov@linaro.org>
X-Operating-System: Linux phenom 6.5.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_025937_918266_EBFD67B0 
X-CRM114-Status: GOOD (  30.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Oct 11, 2023 at 02:10:16AM +0300, Dmitry Baryshkov wrote:
> Define a helper for creating simple transparent bridges which serve the
> only purpose of linking devices into the bridge chain up to the last
> bridge representing the connector. This is especially useful for
> DP/USB-C bridge chains, which can span across several devices, but do
> not require any additional functionality from the intermediate bridges.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/bridge/Kconfig      |   9 ++
>  drivers/gpu/drm/bridge/Makefile     |   1 +
>  drivers/gpu/drm/bridge/aux-bridge.c | 132 ++++++++++++++++++++++++++++
>  include/drm/bridge/aux-bridge.h     |  19 ++++
>  4 files changed, 161 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
>  create mode 100644 include/drm/bridge/aux-bridge.h
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index ba82a1142adf..f12eab62799f 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -12,6 +12,15 @@ config DRM_PANEL_BRIDGE
>  	help
>  	  DRM bridge wrapper of DRM panels
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
>  menu "Display Interface Bridges"
>  	depends on DRM && DRM_BRIDGE
>  
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 2b892b7ed59e..918e3bfff079 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_DRM_AUX_BRIDGE) += aux-bridge.o
>  obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
>  obj-$(CONFIG_DRM_CHRONTEL_CH7033) += chrontel-ch7033.o
>  obj-$(CONFIG_DRM_CROS_EC_ANX7688) += cros-ec-anx7688.o
> diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
> new file mode 100644
> index 000000000000..13fe794592f2
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/aux-bridge.c
> @@ -0,0 +1,132 @@
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
> +static DEFINE_IDA(aux_bridge_ida);
> +
> +static void drm_aux_bridge_release(struct device *dev)
> +{
> +	struct auxiliary_device *adev = to_auxiliary_dev(dev);
> +
> +	ida_free(&aux_bridge_ida, adev->id);
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
> +int drm_aux_bridge_register(struct device *parent)
> +{
> +	struct auxiliary_device *adev;
> +	int ret;
> +
> +	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
> +	if (!adev)
> +		return -ENOMEM;
> +
> +	ret = ida_alloc(&aux_bridge_ida, GFP_KERNEL);
> +	if (ret < 0) {
> +		kfree(adev);
> +		return ret;
> +	}
> +
> +	adev->id = ret;
> +	adev->name = "aux_bridge";
> +	adev->dev.parent = parent;
> +#ifdef CONFIG_OF
> +	adev->dev.of_node = parent->of_node;
> +#endif
> +	adev->dev.release = drm_aux_bridge_release;
> +
> +	ret = auxiliary_device_init(adev);
> +	if (ret) {
> +		ida_free(&aux_bridge_ida, adev->id);
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

kerneldoc for new interfaces please (you can wait if you're not sure
whether this design will land or not, but for merging we really want all
drm interfaces exposed to drivers documented). Ideally with enough links
to other interfaces/structs/docs so that people can understand what this
does and why.

Thanks, Sima
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
> -- 
> 2.39.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
