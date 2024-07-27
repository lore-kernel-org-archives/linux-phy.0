Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA4B1C3DA61
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jul 2024 16:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQorSLsI5WfQMp8Xl8unL+0Y+XF99BR7RsgotcreHaw=; b=uzOZmaOffQiSuR
	uUWU7msA8bam50IpIAQU7Y9k9Du8GpgnJ1yZldw+P+Wit8sOvuZh1lfs7sM7vfKO51ObK9+nno1yg
	YhiUTX355yaU4HodU/8FXK+2+reL1nofbB/z0jsNCzi66YYrmzxzFDuEWDEp0i5XAgYrDnaD8b5VE
	RwXgrWf6/Bz41AjLhPofB4aDYa2evtRVE3kbw5iYaBDxs+0jvTN/D43nteouMVHhKyeUgcPsqRFsT
	Fv+zUpC4u7VMmPSah52OLUKjFDOnziq5/m0KAuSf15lYAsUKn96mgn2nWOU0I/lQi1pjEhz8aLMbe
	2ug1/mFF5HjxRFQqGttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXk1D-00000006wr4-1vvZ;
	Sat, 27 Jul 2024 16:11:39 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXk1A-00000006wqF-3Bcf
	for linux-phy@lists.infradead.org;
	Sat, 27 Jul 2024 16:11:38 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ef27bfd15bso30225891fa.2
        for <linux-phy@lists.infradead.org>; Sat, 27 Jul 2024 09:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722096694; x=1722701494; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UBusllycXeOxRmMQscoyIs5AgPJe93SHCpBqt0L+kPU=;
        b=aty7vFCzN1lBHV43BP01ZKUdTRRssm+pn/MWUHs9JDzBRN6Y5fc+NNR6cirsKEGYN3
         iStvKkoOIlp+PD2ao/OUr9yGdNnSt9Ga92SBsjDr/Ec+7oHg2ukvxmRJEoW/lbermUEr
         9Kd6M9uKUeIujw7bsc2McDzQY8xI2YdhMNp0t/fZnJzaGpvaPAVNI7oXmDXcg+mbBOgx
         l0Pf/y2ubMi7RnJ6Bdl6j0t8+DgEJ4R2f0quEcmN6DXGxSCzMZ6FHWWZ4jCWjc6jzMdk
         6HE1QWY+cTVbCA/vzLzN+G5bb+ndQtJIEgCgfmXCjICl3sM9Uhy8r5Ve7TTVIPHIwFw7
         viyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722096694; x=1722701494;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBusllycXeOxRmMQscoyIs5AgPJe93SHCpBqt0L+kPU=;
        b=FMd4iTN+BBXsGUXO4570zxVE/59ShaKVPzUqXJUPZ2bGlnHFxX9ywPfGlVo74suysz
         XM6KVagpABl0IbLvH1Z95oZR1RVi1A6cBzXB0W5uXrGeORGtxshPCxRSpaamhkJu9Zh9
         guptr3vRi3Tb5Eud/AA0F6yx+6RX7brzvs7FNJevzFaGVzijNcyPDxDqDfYF7epzfWaQ
         1lAiwakXRjuWvwxovEnUHvYqa/O06hlRAbIIP5/XgP2nAiWb9wB4cd9jEUtNgvPcHQg+
         eo4mN0v59E+WFrOjVIJwCXBKQ3boZRTZM4uBNQM8d4sOLyxs6aN0FLFRsV89DBRQN9DJ
         IP/g==
X-Forwarded-Encrypted: i=1; AJvYcCX8KzxVc/ghpP8of0tnPr8pZQ0OFB48wOqK0ZO9tMBmaA+bZzoHYDZ9Kr/ncC8cgiIXjHoOzgStfWtxaxlGD3LG+bL66QvAmUHFfjrnRA==
X-Gm-Message-State: AOJu0YxaFmkMHXmsMhR4oQJItZeUjogd+hHJeBNWSzgikMeKNcCCUBUR
	0EaG1QRc7eZVXhNvyQN+QIJKhZU9PNTm4ZHhgSa9fxpxZeMgdBIvScwCargz3JA=
X-Google-Smtp-Source: AGHT+IGE/jZAAc2Nvw2MwerHR0yM2Y7j8htLQh1i+XFzPdpbP2zrSjL7bEwU58lE0zhsp1lfp1yK8Q==
X-Received: by 2002:a2e:b710:0:b0:2ef:2c86:4d43 with SMTP id 38308e7fff4ca-2f12edf9e66mr19092791fa.3.1722096694188;
        Sat, 27 Jul 2024 09:11:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f03d074b19sm7153491fa.110.2024.07.27.09.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 09:11:33 -0700 (PDT)
Date: Sat, 27 Jul 2024 19:11:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, 
	frank.li@nxp.com
Subject: Re: [PATCH v2 06/16] drm/imx: Add i.MX8qxp Display Controller
 display engine
Message-ID: <ib6brwxeai3wkgzglihfbqx7jakjslnftydbzo32xthijkd4u6@y4ebhgk5o3ec>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-7-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240712093243.2108456-7-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_091136_844634_3894B28E 
X-CRM114-Status: GOOD (  28.91  )
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

On Fri, Jul 12, 2024 at 05:32:33PM GMT, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The display engine driver as a master binds FrameGen and
> TCon drivers as components.  While at it, the display engine driver
> is a component to be bound with the upcoming DRM driver.

Generic question: why do you need so many small subdrivers? Are they
used to represent the flexibility of the pipeline? Can you instantiate
these units directly from the de(?) driver and reference created
structures without the need to create subdevices?

> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v2:
> * Use OF alias id to get instance id.
> * Add dev member to struct dc_tc.
> 
>  drivers/gpu/drm/imx/Kconfig     |   1 +
>  drivers/gpu/drm/imx/Makefile    |   1 +
>  drivers/gpu/drm/imx/dc/Kconfig  |   5 +
>  drivers/gpu/drm/imx/dc/Makefile |   5 +
>  drivers/gpu/drm/imx/dc/dc-de.c  | 151 +++++++++++++
>  drivers/gpu/drm/imx/dc/dc-de.h  |  62 ++++++
>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
>  drivers/gpu/drm/imx/dc/dc-drv.h |  24 +++
>  drivers/gpu/drm/imx/dc/dc-fg.c  | 366 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-tc.c  | 137 ++++++++++++
>  10 files changed, 784 insertions(+)
>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> 
> diff --git a/drivers/gpu/drm/imx/Kconfig b/drivers/gpu/drm/imx/Kconfig
> index 03535a15dd8f..3e8c6edbc17c 100644
> --- a/drivers/gpu/drm/imx/Kconfig
> +++ b/drivers/gpu/drm/imx/Kconfig
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> +source "drivers/gpu/drm/imx/dc/Kconfig"
>  source "drivers/gpu/drm/imx/dcss/Kconfig"
>  source "drivers/gpu/drm/imx/ipuv3/Kconfig"
>  source "drivers/gpu/drm/imx/lcdc/Kconfig"
> diff --git a/drivers/gpu/drm/imx/Makefile b/drivers/gpu/drm/imx/Makefile
> index 86f38e7c7422..c7b317640d71 100644
> --- a/drivers/gpu/drm/imx/Makefile
> +++ b/drivers/gpu/drm/imx/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> +obj-$(CONFIG_DRM_IMX8_DC) += dc/
>  obj-$(CONFIG_DRM_IMX_DCSS) += dcss/
>  obj-$(CONFIG_DRM_IMX) += ipuv3/
>  obj-$(CONFIG_DRM_IMX_LCDC) += lcdc/
> diff --git a/drivers/gpu/drm/imx/dc/Kconfig b/drivers/gpu/drm/imx/dc/Kconfig
> new file mode 100644
> index 000000000000..32d7471c49d0
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/Kconfig
> @@ -0,0 +1,5 @@
> +config DRM_IMX8_DC
> +	tristate "Freescale i.MX8 Display Controller Graphics"
> +	depends on DRM && COMMON_CLK && OF && (ARCH_MXC || COMPILE_TEST)
> +	help
> +	  enable Freescale i.MX8 Display Controller(DC) graphics support
> diff --git a/drivers/gpu/drm/imx/dc/Makefile b/drivers/gpu/drm/imx/dc/Makefile
> new file mode 100644
> index 000000000000..56de82d53d4d
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/Makefile
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +imx8-dc-drm-objs := dc-de.o dc-drv.o dc-fg.o dc-tc.o
> +
> +obj-$(CONFIG_DRM_IMX8_DC) += imx8-dc-drm.o
> diff --git a/drivers/gpu/drm/imx/dc/dc-de.c b/drivers/gpu/drm/imx/dc/dc-de.c
> new file mode 100644
> index 000000000000..2c8268b76b08
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/dc-de.c
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2024 NXP
> + */
> +
> +#include <linux/component.h>
> +#include <linux/container_of.h>
> +#include <linux/io.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm.h>
> +#include <linux/pm_runtime.h>
> +
> +#include <drm/drm_managed.h>
> +
> +#include "dc-de.h"
> +#include "dc-drv.h"
> +
> +#define POLARITYCTRL		0xc
> +#define  POLEN_HIGH		BIT(2)
> +
> +struct dc_de_priv {
> +	struct dc_de engine;
> +	void __iomem *reg_top;
> +};
> +
> +static inline struct dc_de_priv *to_de_priv(struct dc_de *de)
> +{
> +	return container_of(de, struct dc_de_priv, engine);
> +}
> +
> +static inline void
> +dc_dec_write(struct dc_de *de, unsigned int offset, u32 value)
> +{
> +	struct dc_de_priv *priv = to_de_priv(de);
> +
> +	writel(value, priv->reg_top + offset);

Is there a point in this wrapper? Can you call writel directly? This
question generally applies to the driver. I see a lot of small functions
which can be inlined without losing the clarity.

> +}
> +
> +static void dc_dec_init(struct dc_de *de)
> +{
> +	dc_dec_write(de, POLARITYCTRL, POLEN_HIGH);
> +}
> +
> +static int dc_de_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	struct dc_de_priv *priv;
> +	int ret;
> +
> +	priv = drmm_kzalloc(&dc_drm->base, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->reg_top = devm_platform_ioremap_resource_byname(pdev, "top");
> +	if (IS_ERR(priv->reg_top))
> +		return PTR_ERR(priv->reg_top);
> +
> +	priv->engine.irq_shdld = platform_get_irq_byname(pdev, "shdload");
> +	if (priv->engine.irq_shdld < 0)
> +		return priv->engine.irq_shdld;
> +
> +	priv->engine.irq_framecomplete =
> +				platform_get_irq_byname(pdev, "framecomplete");
> +	if (priv->engine.irq_framecomplete < 0)
> +		return priv->engine.irq_framecomplete;
> +
> +	priv->engine.irq_seqcomplete =
> +				platform_get_irq_byname(pdev, "seqcomplete");
> +	if (priv->engine.irq_seqcomplete < 0)
> +		return priv->engine.irq_seqcomplete;
> +
> +	priv->engine.id = of_alias_get_id(dev->of_node, "dc0-display-engine");

Is this alias documented somewhere? Is it Acked by DT maintainers?

> +	if (priv->engine.id < 0) {
> +		dev_err(dev, "failed to get alias id: %d\n", priv->engine.id);
> +		return priv->engine.id;
> +	}
> +
> +	priv->engine.dev = dev;
> +
> +	dev_set_drvdata(dev, priv);
> +
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
> +
> +	dc_drm->de[priv->engine.id] = &priv->engine;
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
