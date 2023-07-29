Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E73AC0015E
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jul 2023 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eS66ynTqbmDR3FZhfnc+fHpyRKQLcRPGb3CV1XMoiE=; b=sXSBNWAlx/3G3P
	ilFcBDzpPHW8X9pPGtFByELb4XuLk/PmeRLTvwBXB95VJYjHJjLhWcpax75hAYokxs/K9XZKOgHs6
	jY0g9NczJbSYzV8tlXotBP9owQh+pGiCy7K3RgGAgbSefOlqM4/fVeV/ZOYvZ1Xl/o6JabbdfcC+e
	ZsepViqPaZ2FG76oFO3CSoq/9WdWxXVhjy8LLLL0JsDEc9b4Xv7U4NOy5Rhh49K2BwyiXVjDO+nTw
	ElRTi8lHzNohdu5Pyd8kt6eIBzF5inM0ckvNOKpJ4QHU6MY+k/G4PRr9WlV3N5VDAEJxryeD6aL/E
	+FLoFOa8/fPn/6/z3LtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPt1P-009EHw-32;
	Sat, 29 Jul 2023 23:06:52 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPt1M-009EGB-1X
	for linux-phy@lists.infradead.org;
	Sat, 29 Jul 2023 23:06:50 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-584034c706dso34703167b3.1
        for <linux-phy@lists.infradead.org>; Sat, 29 Jul 2023 16:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690672000; x=1691276800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/muLVJBTfJy4sEvxdsnx9X7USkoLQCDic9wXkkLaYLo=;
        b=EUky0LpvnqGuKIAsZ4/Q6MwcK/oPUJQC6q/iXjbf8Mg/pImKd95kWvfIvEoz0hjLEl
         IDXq6IC002x/oVA1v19llsx/AJZsCMpX4KdhEWR+RHKVInItdfa6g1pwhUlVOblZaG3m
         3LFeP4FrVFxJCXV6ecsVTeKv8JQHVFA0hYK5T6MKpLPFQZ0YyfrIivxYM6ozsjN4kpen
         Fvr2BbaHQ3fqzz6bhKaHHVahcs+Zt4iCFRO7V/hVufjjXrC92l1U3UojUzV4Kx2hPefE
         saNsrBLvXxn5PSDP7SPxBiG+gLpk1rpeMTi8G4wiiU8RN+fH8Tu0gXdMIlIFonhMweIo
         vzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690672000; x=1691276800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/muLVJBTfJy4sEvxdsnx9X7USkoLQCDic9wXkkLaYLo=;
        b=SReBrQ8Z6/tldsAioNpE+uYO+MqZWdx42EPA6JoqnXii7IvLO3qFQghzBEAK8qXEPX
         5sLCFdcIeiwmpYx16c4SDzw+TswxDIZaBV4ootV1jb5wX0fT8l/75EiPHCOHTDsf8HuH
         EVjd7NVCwCSfv3+whHxDb1PPWMr+Lrcy1Qz07nIWTMeh1RfeaZmV/rY73d9qKzqyALZP
         q9yF6bx8hPRy3l8ct/wQ6qZ2hAlLergGvVZDiwJwWwf/owck8FWnGhKqkyQI3bapCePz
         Ty1WMZFbguArhVbe8yf9TbzDHGDEb9/z7hGO2yrhHSzO0vE/Xr4xCXh84zEtJl/1u7C4
         8R0g==
X-Gm-Message-State: ABy/qLZj9VlZNW8eJkGitkTw9cGTfra/qDYNempRgLKoMb6QmdJghN+P
	kJBGl4a3E3z4FXf0uP+5+yFPT3+1GdmhQzZxgBgjeQ==
X-Google-Smtp-Source: APBJJlHfoZ6Xr5CfW8PPzNE3Z2CdpsPRR8CNcc4mp0BoZINPljqKuxiyat6ToSqKHdkQb6SoyH8yqJ3XSgeBvRSNF9A=
X-Received: by 2002:a81:4607:0:b0:576:9ec8:db68 with SMTP id
 t7-20020a814607000000b005769ec8db68mr6302219ywa.18.1690672000514; Sat, 29 Jul
 2023 16:06:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230729204307.268587-1-dmitry.baryshkov@linaro.org> <20230729204307.268587-2-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230729204307.268587-2-dmitry.baryshkov@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 30 Jul 2023 02:06:29 +0300
Message-ID: <CAA8EJpryy39EPqf23OjWNWVtO98vx+G-exJStqstwJZErKkMBw@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/display: add transparent bridge helper
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_160648_514316_C19CE170 
X-CRM114-Status: GOOD (  27.35  )
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

On Sat, 29 Jul 2023 at 23:43, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Define a helper for creating simple transparent bridges which serve the
> only purpose of linking devices into the bridge chain up to the last
> bridge representing the connector. This is especially useful for
> DP/USB-C bridge chains, which can span across several devices, but do
> not require any additional functionality from the intermediate bridges.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/display/Kconfig             |   9 ++
>  drivers/gpu/drm/display/Makefile            |   2 +
>  drivers/gpu/drm/display/drm_simple_bridge.c | 120 ++++++++++++++++++++
>  include/drm/display/drm_simple_bridge.h     |  19 ++++
>  4 files changed, 150 insertions(+)
>  create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
>  create mode 100644 include/drm/display/drm_simple_bridge.h
>
> diff --git a/drivers/gpu/drm/display/Kconfig b/drivers/gpu/drm/display/Kconfig
> index 09712b88a5b8..a6132984b9e3 100644
> --- a/drivers/gpu/drm/display/Kconfig
> +++ b/drivers/gpu/drm/display/Kconfig
> @@ -49,3 +49,12 @@ config DRM_DP_CEC
>
>           Note: not all adapters support this feature, and even for those
>           that do support this they often do not hook up the CEC pin.
> +
> +config DRM_SIMPLE_BRIDGE
> +       tristate
> +       depends on DRM
> +       select AUXILIARY_BUS
> +       select DRM_PANEL_BRIDGE
> +       help
> +         Simple transparent bridge that is used by several drivers to build
> +         bridges chain.
> diff --git a/drivers/gpu/drm/display/Makefile b/drivers/gpu/drm/display/Makefile
> index 17ac4a1006a8..6e2b0d7f24b3 100644
> --- a/drivers/gpu/drm/display/Makefile
> +++ b/drivers/gpu/drm/display/Makefile
> @@ -16,3 +16,5 @@ drm_display_helper-$(CONFIG_DRM_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
>  drm_display_helper-$(CONFIG_DRM_DP_CEC) += drm_dp_cec.o
>
>  obj-$(CONFIG_DRM_DISPLAY_HELPER) += drm_display_helper.o
> +
> +obj-$(CONFIG_DRM_SIMPLE_BRIDGE) += drm_simple_bridge.o
> diff --git a/drivers/gpu/drm/display/drm_simple_bridge.c b/drivers/gpu/drm/display/drm_simple_bridge.c
> new file mode 100644
> index 000000000000..c9966691efb1
> --- /dev/null
> +++ b/drivers/gpu/drm/display/drm_simple_bridge.c
> @@ -0,0 +1,120 @@
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
> +       struct auxiliary_device *adev = to_auxiliary_dev(dev);
> +
> +       kfree(adev);
> +}
> +
> +static void drm_simple_bridge_unregister_adev(void *_adev)
> +{
> +       struct auxiliary_device *adev = _adev;
> +
> +       auxiliary_device_delete(adev);
> +       auxiliary_device_uninit(adev);
> +}
> +
> +int drm_simple_bridge_register(struct device *parent)
> +{
> +       struct auxiliary_device *adev;
> +       int ret;
> +
> +       adev = kzalloc(sizeof(*adev), GFP_KERNEL);
> +       if (!adev)
> +               return -ENOMEM;
> +
> +       ret = ida_alloc(&simple_bridge_ida, GFP_KERNEL);
> +       if (ret < 0)
> +               return ret;
> +
> +       adev->id = ret;
> +       adev->name = "simple_bridge";
> +       adev->dev.parent = parent;
> +       adev->dev.of_node = parent->of_node;
> +       adev->dev.release = drm_simple_bridge_release;
> +
> +       ret = auxiliary_device_init(adev);
> +       if (ret) {
> +               kfree(adev);
> +               return ret;
> +       }
> +
> +       ret = auxiliary_device_add(adev);
> +       if (ret) {
> +               auxiliary_device_uninit(adev);
> +               return ret;
> +       }
> +
> +       return devm_add_action_or_reset(parent, drm_simple_bridge_unregister_adev, adev);
> +}

Forgot EXPORT_SYMBOL_GPL, MODULE_LICENSE, etc. I'll fix that for v2 if
the overall idea is found to be acceptable.

> +
> +struct drm_simple_bridge_data {
> +       struct drm_bridge bridge;
> +       struct drm_bridge *next_bridge;
> +       struct device *dev;
> +};
> +
> +static int drm_simple_bridge_attach(struct drm_bridge *bridge,
> +                                   enum drm_bridge_attach_flags flags)
> +{
> +       struct drm_simple_bridge_data *data;
> +
> +       if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> +               return -EINVAL;
> +
> +       data = container_of(bridge, struct drm_simple_bridge_data, bridge);
> +
> +       return drm_bridge_attach(bridge->encoder, data->next_bridge, bridge,
> +                                DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +}
> +
> +static const struct drm_bridge_funcs drm_simple_bridge_funcs = {
> +       .attach = drm_simple_bridge_attach,
> +};
> +
> +static int drm_simple_bridge_probe(struct auxiliary_device *auxdev,
> +                                  const struct auxiliary_device_id *id)
> +{
> +       struct drm_simple_bridge_data *data;
> +
> +       data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
> +       if (!data)
> +               return -ENOMEM;
> +
> +       data->dev = &auxdev->dev;
> +       data->next_bridge = devm_drm_of_get_bridge(&auxdev->dev, auxdev->dev.of_node, 0, 0);
> +       if (IS_ERR(data->next_bridge))
> +               return dev_err_probe(&auxdev->dev, PTR_ERR(data->next_bridge),
> +                                    "failed to acquire drm_bridge\n");
> +
> +       data->bridge.funcs = &drm_simple_bridge_funcs;
> +       data->bridge.of_node = data->dev->of_node;
> +
> +       return devm_drm_bridge_add(data->dev, &data->bridge);
> +}
> +
> +static const struct auxiliary_device_id drm_simple_bridge_table[] = {
> +       { .name = KBUILD_MODNAME ".simple_bridge" },
> +       {},
> +};
> +MODULE_DEVICE_TABLE(auxiliary, drm_simple_bridge_table);
> +
> +struct auxiliary_driver drm_simple_bridge_drv = {
> +       .name = "simple_bridge",
> +       .id_table = drm_simple_bridge_table,
> +       .probe = drm_simple_bridge_probe,
> +};
> +module_auxiliary_driver(drm_simple_bridge_drv);
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
> +       return 0;
> +}
> +#endif
> +
> +#endif
> --
> 2.39.2
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
