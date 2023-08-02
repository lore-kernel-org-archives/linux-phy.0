Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCA29C00528
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 09:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCtUJYLgaqZduDEvXvouPKJ2pLIvpZ+ueNc45s5Tvqw=; b=Ctr/0pJl85vY3Q
	ZPDteYjvh5oJpcKeaqPJfX186Woemq+Qf5fA7G4cpKEGBRq8a/gm+MnMofbsN0YhUpwYc6FytEPCF
	0mw/+Yvq7IrgBAHXqqnE63Wkyn9ZGwkbwNvBuxaUTShAw7Vur6ZPdHddMj8vzP2JJA1+UGvseQ35l
	of/zIEuHIL338PpkQkIdNr+HwkIBMt4KOEASHUqlUgdvnGKvl0LocQoo2ABkUxt4RWrjQnTSShYxF
	eRp0XvX0b/aMv2a9JG6DafSpFi/Rt1xtE0SOri7vOU2VMqdXAn/SmCrCRNT4iN3AbVYruK+82zBwY
	IWQ6Z2T9V3Ba4+/L+reQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR7ty-004SSb-1o;
	Wed, 02 Aug 2023 09:12:18 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR7tv-004SRm-37
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 09:12:17 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-cfd4ea89978so6766095276.2
        for <linux-phy@lists.infradead.org>; Wed, 02 Aug 2023 02:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690967533; x=1691572333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t8gn8i/UvnXWpSD3gDtSFp/ufUYrgVajdWNPxNVMacQ=;
        b=buidx5I2XePObpHS+Twn9XWZG+8qEIJz/DFnMGtA+Dvg8ReIyrxjnAat+HmT0xt4Y2
         QLNtdsJkwccE9s/wdI0b/rIEXRZhjVyYaA0LgpVJ/Q2Sbl3XuvPGXIg7axB0clsbvc5w
         /hmwPFfA8c4xeCHxBBjf785C3Jd7IST5uGLK9PnNbPws2gUCM0w2GQcyAE8oa9bX0JjT
         N44YTzXoO7bA+0Gaj+ahpgbw2yREIhHQxlXi4uxi6byZH4gywDeHokSl185oUkWPaOSN
         awjGd9C9bTzMI/DoQk+Fc3ZazDWOXNhP78+OxcmKIZKt9VSVJRpClhrMHhPVu3ADGqDU
         eEuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690967533; x=1691572333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t8gn8i/UvnXWpSD3gDtSFp/ufUYrgVajdWNPxNVMacQ=;
        b=lHgm26D5j16q14h+rjjVkPv6G4c/NrXKdZZQ3Lo6MX189H+za7LPHQELP1VrUDIpx4
         99r1aew9PTjlEwF1h9A/Gfmqc8g85QAt74GF4vATF/Gf0UB/wf57viftIScvoiaILmOr
         FH0TanvOXjOqV92z1GI/mjgyclMQRSzp5kLLryRKRa38lONB805+nic44q8F5GkrjjmM
         4r0Zltn80tfxX0/N5f8bjMFZeJXWhmMt6a7FtpHAlWTEMh5xJSGDBAD2yfOSa5kYqbsa
         +DUrdwMShXpA0T1oG5vYu4C/9FF3t+fKAtLyTcdMSph2KiJnAY+VXllAoMvHfLGehYIc
         vkVg==
X-Gm-Message-State: ABy/qLYTH6KoWwEwSYeI6omxgtv1CDCJh8MyFJ4d5mrxteyxQDmG8j29
	z1R0JbFYEq7ujINqd38ssR53BUGIJJSvw2OwMxppUA==
X-Google-Smtp-Source: APBJJlFyihQx+D8MAtEwkJB1j/3dVGuhd9iN/dhMGqP4ROgT9NgpFSMqYWkTGo/20Thw8uETYoyND7pef8WKymUF1wQ=
X-Received: by 2002:a25:860e:0:b0:d1b:da26:6364 with SMTP id
 y14-20020a25860e000000b00d1bda266364mr15413515ybk.21.1690967533623; Wed, 02
 Aug 2023 02:12:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
 <20230802011845.4176631-2-dmitry.baryshkov@linaro.org> <e611a1db-89f6-999b-1a01-a49d9d00b07f@linaro.org>
In-Reply-To: <e611a1db-89f6-999b-1a01-a49d9d00b07f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 2 Aug 2023 12:12:02 +0300
Message-ID: <CAA8EJpq9-n3FpmJUxMO-iFN6VHYJ_HmDOdU=+2=ZPjHfK2XAvA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] drm/display: add transparent bridge helper
To: neil.armstrong@linaro.org
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_021216_049659_0697DD14 
X-CRM114-Status: GOOD (  34.08  )
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

On Wed, 2 Aug 2023 at 11:15, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On 02/08/2023 03:18, Dmitry Baryshkov wrote:
> > Define a helper for creating simple transparent bridges which serve the
> > only purpose of linking devices into the bridge chain up to the last
> > bridge representing the connector. This is especially useful for
> > DP/USB-C bridge chains, which can span across several devices, but do
> > not require any additional functionality from the intermediate bridges.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/gpu/drm/display/Kconfig             |   9 ++
> >   drivers/gpu/drm/display/Makefile            |   2 +
> >   drivers/gpu/drm/display/drm_simple_bridge.c | 127 ++++++++++++++++++++
>
> I wonder why drm/display/ and not drm/bridge ?
>
> It's an helper, but it's mainly a bridge.

Why not? I'm open to any suggestions.

>
> >   include/drm/display/drm_simple_bridge.h     |  19 +++
> >   4 files changed, 157 insertions(+)
> >   create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
> >   create mode 100644 include/drm/display/drm_simple_bridge.h
> >
> > diff --git a/drivers/gpu/drm/display/Kconfig b/drivers/gpu/drm/display/Kconfig
> > index 09712b88a5b8..a6132984b9e3 100644
> > --- a/drivers/gpu/drm/display/Kconfig
> > +++ b/drivers/gpu/drm/display/Kconfig
> > @@ -49,3 +49,12 @@ config DRM_DP_CEC
> >
> >         Note: not all adapters support this feature, and even for those
> >         that do support this they often do not hook up the CEC pin.
> > +
> > +config DRM_SIMPLE_BRIDGE
> > +     tristate
> > +     depends on DRM
> > +     select AUXILIARY_BUS
> > +     select DRM_PANEL_BRIDGE
> > +     help
> > +       Simple transparent bridge that is used by several drivers to build
> > +       bridges chain.
> > diff --git a/drivers/gpu/drm/display/Makefile b/drivers/gpu/drm/display/Makefile
> > index 17ac4a1006a8..6e2b0d7f24b3 100644
> > --- a/drivers/gpu/drm/display/Makefile
> > +++ b/drivers/gpu/drm/display/Makefile
> > @@ -16,3 +16,5 @@ drm_display_helper-$(CONFIG_DRM_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
> >   drm_display_helper-$(CONFIG_DRM_DP_CEC) += drm_dp_cec.o
> >
> >   obj-$(CONFIG_DRM_DISPLAY_HELPER) += drm_display_helper.o
> > +
> > +obj-$(CONFIG_DRM_SIMPLE_BRIDGE) += drm_simple_bridge.o
> > diff --git a/drivers/gpu/drm/display/drm_simple_bridge.c b/drivers/gpu/drm/display/drm_simple_bridge.c
> > new file mode 100644
> > index 000000000000..9e80efe67b93
> > --- /dev/null
> > +++ b/drivers/gpu/drm/display/drm_simple_bridge.c
> > @@ -0,0 +1,127 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2023 Linaro Ltd.
> > + *
> > + * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > + */
> > +#include <linux/auxiliary_bus.h>
> > +#include <linux/module.h>
> > +
> > +#include <drm/drm_bridge.h>
> > +#include <drm/display/drm_simple_bridge.h>
> > +
> > +static DEFINE_IDA(simple_bridge_ida);
> > +
> > +static void drm_simple_bridge_release(struct device *dev)
> > +{
> > +     struct auxiliary_device *adev = to_auxiliary_dev(dev);
> > +
> > +     kfree(adev);
> > +}
> > +
> > +static void drm_simple_bridge_unregister_adev(void *_adev)
> > +{
> > +     struct auxiliary_device *adev = _adev;
> > +
> > +     auxiliary_device_delete(adev);
> > +     auxiliary_device_uninit(adev);
> > +}
> > +
> > +int drm_simple_bridge_register(struct device *parent)
> > +{
> > +     struct auxiliary_device *adev;
> > +     int ret;
> > +
> > +     adev = kzalloc(sizeof(*adev), GFP_KERNEL);
> > +     if (!adev)
> > +             return -ENOMEM;
> > +
> > +     ret = ida_alloc(&simple_bridge_ida, GFP_KERNEL);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     adev->id = ret;
> > +     adev->name = "simple_bridge";
> > +     adev->dev.parent = parent;
> > +     adev->dev.of_node = parent->of_node;
> > +     adev->dev.release = drm_simple_bridge_release;
> > +
> > +     ret = auxiliary_device_init(adev);
> > +     if (ret) {
> > +             kfree(adev);
> > +             return ret;
> > +     }
> > +
> > +     ret = auxiliary_device_add(adev);
> > +     if (ret) {
> > +             auxiliary_device_uninit(adev);
> > +             return ret;
> > +     }
> > +
> > +     return devm_add_action_or_reset(parent, drm_simple_bridge_unregister_adev, adev);
> > +}
> > +EXPORT_SYMBOL_GPL(drm_simple_bridge_register);
> > +
> > +struct drm_simple_bridge_data {
> > +     struct drm_bridge bridge;
> > +     struct drm_bridge *next_bridge;
> > +     struct device *dev;
> > +};
> > +
> > +static int drm_simple_bridge_attach(struct drm_bridge *bridge,
> > +                                 enum drm_bridge_attach_flags flags)
> > +{
> > +     struct drm_simple_bridge_data *data;
> > +
> > +     if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
> > +             return -EINVAL;
> > +
> > +     data = container_of(bridge, struct drm_simple_bridge_data, bridge);
> > +
> > +     return drm_bridge_attach(bridge->encoder, data->next_bridge, bridge,
> > +                              DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> > +}
> > +
> > +static const struct drm_bridge_funcs drm_simple_bridge_funcs = {
> > +     .attach = drm_simple_bridge_attach,
> > +};
> > +
> > +static int drm_simple_bridge_probe(struct auxiliary_device *auxdev,
> > +                                const struct auxiliary_device_id *id)
> > +{
> > +     struct drm_simple_bridge_data *data;
> > +
> > +     data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
> > +     if (!data)
> > +             return -ENOMEM;
> > +
> > +     data->dev = &auxdev->dev;
> > +     data->next_bridge = devm_drm_of_get_bridge(&auxdev->dev, auxdev->dev.of_node, 0, 0);
> > +     if (IS_ERR(data->next_bridge))
> > +             return dev_err_probe(&auxdev->dev, PTR_ERR(data->next_bridge),
> > +                                  "failed to acquire drm_bridge\n");
> > +
> > +     data->bridge.funcs = &drm_simple_bridge_funcs;
> > +#ifdef CONFIG_OF
> > +     data->bridge.of_node = data->dev->of_node;
> > +#endif
>
> I think the whole stuff should depend on OF since devm_drm_of_get_bridge() is a no-op when !OF

Hmm, true. Probably we should rework bridges to use fwnode at some point.

>
> > +
> > +     return devm_drm_bridge_add(data->dev, &data->bridge);
> > +}
> > +
> > +static const struct auxiliary_device_id drm_simple_bridge_table[] = {
> > +     { .name = KBUILD_MODNAME ".simple_bridge" },
> > +     {},
> > +};
> > +MODULE_DEVICE_TABLE(auxiliary, drm_simple_bridge_table);
> > +
> > +struct auxiliary_driver drm_simple_bridge_drv = {
> > +     .name = "simple_bridge",
> > +     .id_table = drm_simple_bridge_table,
> > +     .probe = drm_simple_bridge_probe,
> > +};
> > +module_auxiliary_driver(drm_simple_bridge_drv);
> > +
> > +MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
> > +MODULE_DESCRIPTION("DRM simple bridge helper");
> > +MODULE_LICENSE("GPL");
> > diff --git a/include/drm/display/drm_simple_bridge.h b/include/drm/display/drm_simple_bridge.h
> > new file mode 100644
> > index 000000000000..3da8e1fb1137
> > --- /dev/null
> > +++ b/include/drm/display/drm_simple_bridge.h
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2023 Linaro Ltd.
> > + *
> > + * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > + */
> > +#ifndef DRM_SIMPLE_BRIDGE_H
> > +#define DRM_SIMPLE_BRIDGE_H
> > +
> > +#if IS_ENABLED(CONFIG_DRM_SIMPLE_BRIDGE)
> > +int drm_simple_bridge_register(struct device *parent);
> > +#else
> > +static inline int drm_simple_bridge_register(struct device *parent)
> > +{
> > +     return 0;
> > +}
> > +#endif
> > +
> > +#endif
>
> The design looks fine, but I'll need another review.
>
> Thanks,
> Neil
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
