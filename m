Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59982C04A94
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 08:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Qg37ZfTSQYh84djdKo4ewJiYdySshg5CQpyz9H3KL0=; b=1olPEI07N0srd5qfHKH6QD5ywA
	vEm5gvBtxtL42yz2BWZPK1boYpbmX5VkOgavtob2fuyTTqsLigWtLk2ru/z9Vl/+N4gp010krlkyU
	71iz/mXx8vffl+qINxRffFNT+bX6VaFHgSEtnVIOPQqNis0Kj5ne8XeJOxEsn6Xplw4d0tqCZSjJn
	axJ4iWP6NsHC+n9nlv3CjtmF+bj5/xNTrwtSZM0ruIFdPcEFL2JcWknY4Fd3XhwPvPn1tucJwWB3b
	EPn+Z/0D47zBm838q71ywXJSUKMC6XGO+ocNB1nGy8i9plSQZzeCsF2hX5vKl79Lb6CTpx1vIU3x4
	wNwPvbVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR70p-004LqU-0E;
	Wed, 02 Aug 2023 08:15:19 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR70m-004Lpl-0l
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 08:15:17 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-31759e6a4a1so5798740f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 02 Aug 2023 01:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690964112; x=1691568912;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5207ikmn6FO2pMg9Ii8+IOoLRcWuJD5TBwm7P4/PsQc=;
        b=Qnv5VGWYZWJNvzi0EqgiFIA/bMbwyBgFHSg7T5sm47dvx/OQ38acYrlbiozXWpY0K5
         t0IRRxge/yvXwNGs66cf2hgjz92/WHjVK6+0QdCAP7brEDcHCE7IdJYAue1XjAnNQ169
         l+8GEb5a5e862qqJNC/6sWBKE7R4VEjQ1Gl/qC4Y7tkVrV5Zmtc/foJqLCfFTj386UvD
         YXpFsAi1dTF35+9bs0u9Y/IJ0UhKXNivz4oScn8yl5+lUYpTpS0cKGdDmmrUWz+SogVc
         8BoVASwuQBs7kkdHR4e8O5XvdViWXvzzEfBkEJAVICcg5J7iY/er3IDy4ZpUj350R66U
         vG4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690964112; x=1691568912;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5207ikmn6FO2pMg9Ii8+IOoLRcWuJD5TBwm7P4/PsQc=;
        b=Uv1oDJYbSI6Nl8jIUUtDtFy7aWZ0Qr/X0q1IM4+tqM1nxp9K7qWgelE9yFc7siYNBB
         H3v1zDjyLs2h0qIdVFt5dbtAoE2m1aYrSETE7O7YQWXaoNoiHCHhb8Df+8cDXxY0WUUB
         knjmVyc5WYP8PJw6cGXEr1Og6vQdkcTBNCL3X0vzCXfqADcGHs9U3qQ8uXJGO/FIJwe3
         7XE7ne+BQuWvbRaPgE69Kh5ltMf4sWLjXcqK3yrU14BBH2vfnMPJzxADjAsoozj6ri55
         7naS6Wa1GCQ4NRr8hUsO4uwV6yEfrS3xk44qhZPzqm+oAC/pttvkMr7Xso5XiNHv95PM
         GJGA==
X-Gm-Message-State: ABy/qLYgMWP/MnAg4OcYbhWAFOiibC2dIoaKnLKc7fqTDP5xRd3Xk/eb
	PBB5FKOiCBwmuW9+hwgwAZ74nA==
X-Google-Smtp-Source: APBJJlGrlmEBQ2oMdc02mtFAqelLKeKt6FFTP+bX6dAhd1LhtAC5oPtuwPafwqHkJrDtIVJFoLGw5g==
X-Received: by 2002:a5d:4572:0:b0:313:f0ef:1e55 with SMTP id a18-20020a5d4572000000b00313f0ef1e55mr3983967wrc.37.1690964112450;
        Wed, 02 Aug 2023 01:15:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c5bb:5b4:61e3:d196? ([2a01:e0a:982:cbb0:c5bb:5b4:61e3:d196])
        by smtp.gmail.com with ESMTPSA id b10-20020a5d4b8a000000b003175f00e555sm18086855wrt.97.2023.08.02.01.15.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Aug 2023 01:15:11 -0700 (PDT)
Message-ID: <e611a1db-89f6-999b-1a01-a49d9d00b07f@linaro.org>
Date: Wed, 2 Aug 2023 10:15:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 1/3] drm/display: add transparent bridge helper
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
 <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_011516_284142_B15D1BCC 
X-CRM114-Status: GOOD (  28.54  )
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

Hi,

On 02/08/2023 03:18, Dmitry Baryshkov wrote:
> Define a helper for creating simple transparent bridges which serve the
> only purpose of linking devices into the bridge chain up to the last
> bridge representing the connector. This is especially useful for
> DP/USB-C bridge chains, which can span across several devices, but do
> not require any additional functionality from the intermediate bridges.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/gpu/drm/display/Kconfig             |   9 ++
>   drivers/gpu/drm/display/Makefile            |   2 +
>   drivers/gpu/drm/display/drm_simple_bridge.c | 127 ++++++++++++++++++++

I wonder why drm/display/ and not drm/bridge ?

It's an helper, but it's mainly a bridge.

>   include/drm/display/drm_simple_bridge.h     |  19 +++
>   4 files changed, 157 insertions(+)
>   create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
>   create mode 100644 include/drm/display/drm_simple_bridge.h
> 
> diff --git a/drivers/gpu/drm/display/Kconfig b/drivers/gpu/drm/display/Kconfig
> index 09712b88a5b8..a6132984b9e3 100644
> --- a/drivers/gpu/drm/display/Kconfig
> +++ b/drivers/gpu/drm/display/Kconfig
> @@ -49,3 +49,12 @@ config DRM_DP_CEC
>   
>   	  Note: not all adapters support this feature, and even for those
>   	  that do support this they often do not hook up the CEC pin.
> +
> +config DRM_SIMPLE_BRIDGE
> +	tristate
> +	depends on DRM
> +	select AUXILIARY_BUS
> +	select DRM_PANEL_BRIDGE
> +	help
> +	  Simple transparent bridge that is used by several drivers to build
> +	  bridges chain.
> diff --git a/drivers/gpu/drm/display/Makefile b/drivers/gpu/drm/display/Makefile
> index 17ac4a1006a8..6e2b0d7f24b3 100644
> --- a/drivers/gpu/drm/display/Makefile
> +++ b/drivers/gpu/drm/display/Makefile
> @@ -16,3 +16,5 @@ drm_display_helper-$(CONFIG_DRM_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
>   drm_display_helper-$(CONFIG_DRM_DP_CEC) += drm_dp_cec.o
>   
>   obj-$(CONFIG_DRM_DISPLAY_HELPER) += drm_display_helper.o
> +
> +obj-$(CONFIG_DRM_SIMPLE_BRIDGE) += drm_simple_bridge.o
> diff --git a/drivers/gpu/drm/display/drm_simple_bridge.c b/drivers/gpu/drm/display/drm_simple_bridge.c
> new file mode 100644
> index 000000000000..9e80efe67b93
> --- /dev/null
> +++ b/drivers/gpu/drm/display/drm_simple_bridge.c
> @@ -0,0 +1,127 @@
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
> +#include <drm/display/drm_simple_bridge.h>
> +
> +static DEFINE_IDA(simple_bridge_ida);
> +
> +static void drm_simple_bridge_release(struct device *dev)
> +{
> +	struct auxiliary_device *adev = to_auxiliary_dev(dev);
> +
> +	kfree(adev);
> +}
> +
> +static void drm_simple_bridge_unregister_adev(void *_adev)
> +{
> +	struct auxiliary_device *adev = _adev;
> +
> +	auxiliary_device_delete(adev);
> +	auxiliary_device_uninit(adev);
> +}
> +
> +int drm_simple_bridge_register(struct device *parent)
> +{
> +	struct auxiliary_device *adev;
> +	int ret;
> +
> +	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
> +	if (!adev)
> +		return -ENOMEM;
> +
> +	ret = ida_alloc(&simple_bridge_ida, GFP_KERNEL);
> +	if (ret < 0)
> +		return ret;
> +
> +	adev->id = ret;
> +	adev->name = "simple_bridge";
> +	adev->dev.parent = parent;
> +	adev->dev.of_node = parent->of_node;
> +	adev->dev.release = drm_simple_bridge_release;
> +
> +	ret = auxiliary_device_init(adev);
> +	if (ret) {
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
> +	return devm_add_action_or_reset(parent, drm_simple_bridge_unregister_adev, adev);
> +}
> +EXPORT_SYMBOL_GPL(drm_simple_bridge_register);
> +
> +struct drm_simple_bridge_data {
> +	struct drm_bridge bridge;
> +	struct drm_bridge *next_bridge;
> +	struct device *dev;
> +};
> +
> +static int drm_simple_bridge_attach(struct drm_bridge *bridge,
> +				    enum drm_bridge_attach_flags flags)
> +{
> +	struct drm_simple_bridge_data *data;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> +		return -EINVAL;
> +
> +	data = container_of(bridge, struct drm_simple_bridge_data, bridge);
> +
> +	return drm_bridge_attach(bridge->encoder, data->next_bridge, bridge,
> +				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +}
> +
> +static const struct drm_bridge_funcs drm_simple_bridge_funcs = {
> +	.attach	= drm_simple_bridge_attach,
> +};
> +
> +static int drm_simple_bridge_probe(struct auxiliary_device *auxdev,
> +				   const struct auxiliary_device_id *id)
> +{
> +	struct drm_simple_bridge_data *data;
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
> +	data->bridge.funcs = &drm_simple_bridge_funcs;
> +#ifdef CONFIG_OF
> +	data->bridge.of_node = data->dev->of_node;
> +#endif

I think the whole stuff should depend on OF since devm_drm_of_get_bridge() is a no-op when !OF

> +
> +	return devm_drm_bridge_add(data->dev, &data->bridge);
> +}
> +
> +static const struct auxiliary_device_id drm_simple_bridge_table[] = {
> +	{ .name = KBUILD_MODNAME ".simple_bridge" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(auxiliary, drm_simple_bridge_table);
> +
> +struct auxiliary_driver drm_simple_bridge_drv = {
> +	.name = "simple_bridge",
> +	.id_table = drm_simple_bridge_table,
> +	.probe = drm_simple_bridge_probe,
> +};
> +module_auxiliary_driver(drm_simple_bridge_drv);
> +
> +MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
> +MODULE_DESCRIPTION("DRM simple bridge helper");
> +MODULE_LICENSE("GPL");
> diff --git a/include/drm/display/drm_simple_bridge.h b/include/drm/display/drm_simple_bridge.h
> new file mode 100644
> index 000000000000..3da8e1fb1137
> --- /dev/null
> +++ b/include/drm/display/drm_simple_bridge.h
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2023 Linaro Ltd.
> + *
> + * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> + */
> +#ifndef DRM_SIMPLE_BRIDGE_H
> +#define DRM_SIMPLE_BRIDGE_H
> +
> +#if IS_ENABLED(CONFIG_DRM_SIMPLE_BRIDGE)
> +int drm_simple_bridge_register(struct device *parent);
> +#else
> +static inline int drm_simple_bridge_register(struct device *parent)
> +{
> +	return 0;
> +}
> +#endif
> +
> +#endif

The design looks fine, but I'll need another review.

Thanks,
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
