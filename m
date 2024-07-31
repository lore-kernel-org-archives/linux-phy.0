Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B67F2C49EA1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 11:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6x49XEWyW9o3OP+e0APrFTVaqdp6QVgIRfesqlIA2M=; b=0nxitCgX6VbFYR
	EKeTJYOpotFGGOCczRpLCdV9tw0kc3tnXkhnTJzgI4KiwqLQmIyowmh5JN+9I8cGo2kNBk2G9NkVw
	baWsJpmEubP00GrPDOvKv2rRf4rz2CYrNz17EKNm4povn3N8nPNMGEcKimVb4L/lL3/qAMuMTW6EA
	6xj1LoPHmfyHUQ2vDGJ0xeNs3dSOmP5aJ4XtM5wMJBfNB+Mobzv7+PSOkh3e0/JpHVOj4MwZiQVZ2
	PaKK4IitdX5756fruKCmBxU/oykk6Zu/rXwel801hTM+cg8u3dB7ToO4zDd/XGIiMPq6VmF+epgJg
	DEGva5pmY+0yeXO5T4Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7uf-00000000xeM-1c7d;
	Wed, 31 Jul 2024 11:54:37 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7uc-00000000xcL-2mVi
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 11:54:36 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52efe4c7c16so8445495e87.0
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 04:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722426872; x=1723031672; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/tSzw1ZB1Nz5Tc2tcLBbnlYlKFmdCPO73C3dMrVaia0=;
        b=vCWLFermuRl1myLgJl65qoTSdIo1CvvsOgYpMTVBEThRDaYpsVArGD2Fthvao6ir7L
         FUYR396YRlDzAB+ifq+wcxj795bZTmz1AqAxjSG/V2umYlTJf79Yx8wwq6+hh1azWrda
         ehNfe+5uMyLSH9w/2lIMxq2Ir7z9hsif8C2R6VWU0GzF4KTKAIAnifbZlqm0V4ptqZf9
         wAxmSRPJr1dIebxTZGZ18N2k/FTW9c0iqPmqVwD8Eqnd0Hs5ya/ey2kTQ8HTL8vnrFp8
         xZEcvoXWXpp2JbC7vEPveL3USmvBio1Pl0bt10vxqlMVm8QhtNBfoWuPVuaqOhF/nC9n
         YrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722426872; x=1723031672;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/tSzw1ZB1Nz5Tc2tcLBbnlYlKFmdCPO73C3dMrVaia0=;
        b=ubWXJT8bDLQ5TykJq8cdY3Gzn0AizeY9mY5a+9vFy/bsqns6dZFYmxPYiY0xkaYDB1
         UxVRC9SjQDDZlhS/2rp8V255kA9p99GGMAVdFnU86E4Gyo8LcRZxzrspE5mn8k63KY2E
         R7hx6w46M0HgmfmC7e4ssIT0SZJT18f5id+ot4y+FrKBuv9gSxsIKyZyezp7VS/mFh6U
         80DnKqxH/I15/4M9Y+zIa5cUG6JnrAc8xsZaNVSTsltrJQfZ3q+XSIhOac5yNcJPPgO4
         BEVR/4rTtuNgioybiZrwHsle4rJgScg807iayjZrYUbq/k79GqVLF81pkwNXhLcMrLpL
         2mXw==
X-Forwarded-Encrypted: i=1; AJvYcCUec/BiS9pwXE7Eyw8yeAwwrzsD1v7YFYVJkDG47jdY+ZssA6iQr+Upmiry/QHzirkOqQLKM/7ZFKyx33g9pDlk6IQuXGdN/icoXgoKuQ==
X-Gm-Message-State: AOJu0YwPKl3qvmDBugmgtfmK0A3wNksclBSPCkcyc/b38WYticA5GcdC
	0rxc2PyalWEmNpNZjzn29KDEdy2hersM44yduWpoP1yKE6nYptTu5TGluSv4aUk=
X-Google-Smtp-Source: AGHT+IFDX5VOQq12CjYJKbH5TLCQZO1fSa3Id5idEuIEkUhLXxfFu0OdqK6fCnnHllm7jAiKoqzSlg==
X-Received: by 2002:a05:6512:32c7:b0:52e:943c:c61a with SMTP id 2adb3069b0e04-5309b2e0adbmr10958703e87.57.1722426872000;
        Wed, 31 Jul 2024 04:54:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bc40e7sm2193549e87.39.2024.07.31.04.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 04:54:31 -0700 (PDT)
Date: Wed, 31 Jul 2024 14:54:29 +0300
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
Message-ID: <vlnpy7abizzzh7sj5zrgakwyams3w6k7ee4kaagiw646atmnjf@xkimtr43d4hr>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-7-victor.liu@nxp.com>
 <ib6brwxeai3wkgzglihfbqx7jakjslnftydbzo32xthijkd4u6@y4ebhgk5o3ec>
 <8071fdf8-6813-4707-8a9c-ad24f8b6a32f@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8071fdf8-6813-4707-8a9c-ad24f8b6a32f@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_045434_756519_6BDDA760 
X-CRM114-Status: GOOD (  52.63  )
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

On Tue, Jul 30, 2024 at 02:25:41PM GMT, Liu Ying wrote:
> On 07/28/2024, Dmitry Baryshkov wrote:
> > On Fri, Jul 12, 2024 at 05:32:33PM GMT, Liu Ying wrote:
> >> i.MX8qxp Display Controller display engine consists of all processing
> >> units that operate in a display clock domain.  Add minimal feature
> >> support with FrameGen and TCon so that the engine can output display
> >> timings.  The display engine driver as a master binds FrameGen and
> >> TCon drivers as components.  While at it, the display engine driver
> >> is a component to be bound with the upcoming DRM driver.
> > 
> > Generic question: why do you need so many small subdrivers? Are they
> 
> As we model processing units, interrupt controller, display engine
> and pixel engine as devices, relevant drivers are created to bind
> them.
> 
> Maxime insisted on splitting the main display controller(the overall
> IP) into separate devices.  Also, Rob asked me to document every
> processing units and the other sub-devices in v2.  So, splitting the
> controller is kinda accepted from both DT PoV and DRM PoV.

I went back to the previous series, where Maxime commented on the
"multiple devices glued together". With the split architecture it
becomes even more strange, because now you have a separate IRQ
controller which enumerates interrupts for all subdevices and then glues
them back.

If it was an actually split device, I'd have expected that each of
subdevices has interrupts going to the external controller, without the
glue controller. Or that the glue controller has a limited set of the
externally-generated interrupts that it further splits into per-block
IRQs.

Could you please point out the patches that describe and implement the
<&dc0_irqsteer> device?

> 
> > used to represent the flexibility of the pipeline? Can you instantiate
> 
> No. They are just used to bind the devices created from DT.
> 
> > these units directly from the de(?) driver and reference created
> > structures without the need to create subdevices?
> 
> Given the separated devices created from DT, I can't.

I'd allow Maxime to override me here, but I think that subblocks should
not be described in DT, unless that is required to describe
possible versatility in the display pipeline.

> >>
> >> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >> ---
> >> v2:
> >> * Use OF alias id to get instance id.
> >> * Add dev member to struct dc_tc.
> >>
> >>  drivers/gpu/drm/imx/Kconfig     |   1 +
> >>  drivers/gpu/drm/imx/Makefile    |   1 +
> >>  drivers/gpu/drm/imx/dc/Kconfig  |   5 +
> >>  drivers/gpu/drm/imx/dc/Makefile |   5 +
> >>  drivers/gpu/drm/imx/dc/dc-de.c  | 151 +++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-de.h  |  62 ++++++
> >>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
> >>  drivers/gpu/drm/imx/dc/dc-drv.h |  24 +++
> >>  drivers/gpu/drm/imx/dc/dc-fg.c  | 366 ++++++++++++++++++++++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-tc.c  | 137 ++++++++++++
> >>  10 files changed, 784 insertions(+)
> >>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
> >>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> >>
> >> diff --git a/drivers/gpu/drm/imx/Kconfig b/drivers/gpu/drm/imx/Kconfig
> >> index 03535a15dd8f..3e8c6edbc17c 100644
> >> --- a/drivers/gpu/drm/imx/Kconfig
> >> +++ b/drivers/gpu/drm/imx/Kconfig
> >> @@ -1,5 +1,6 @@
> >>  # SPDX-License-Identifier: GPL-2.0-only
> >>  
> >> +source "drivers/gpu/drm/imx/dc/Kconfig"
> >>  source "drivers/gpu/drm/imx/dcss/Kconfig"
> >>  source "drivers/gpu/drm/imx/ipuv3/Kconfig"
> >>  source "drivers/gpu/drm/imx/lcdc/Kconfig"
> >> diff --git a/drivers/gpu/drm/imx/Makefile b/drivers/gpu/drm/imx/Makefile
> >> index 86f38e7c7422..c7b317640d71 100644
> >> --- a/drivers/gpu/drm/imx/Makefile
> >> +++ b/drivers/gpu/drm/imx/Makefile
> >> @@ -1,5 +1,6 @@
> >>  # SPDX-License-Identifier: GPL-2.0
> >>  
> >> +obj-$(CONFIG_DRM_IMX8_DC) += dc/
> >>  obj-$(CONFIG_DRM_IMX_DCSS) += dcss/
> >>  obj-$(CONFIG_DRM_IMX) += ipuv3/
> >>  obj-$(CONFIG_DRM_IMX_LCDC) += lcdc/
> >> diff --git a/drivers/gpu/drm/imx/dc/Kconfig b/drivers/gpu/drm/imx/dc/Kconfig
> >> new file mode 100644
> >> index 000000000000..32d7471c49d0
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/imx/dc/Kconfig
> >> @@ -0,0 +1,5 @@
> >> +config DRM_IMX8_DC
> >> +	tristate "Freescale i.MX8 Display Controller Graphics"
> >> +	depends on DRM && COMMON_CLK && OF && (ARCH_MXC || COMPILE_TEST)
> >> +	help
> >> +	  enable Freescale i.MX8 Display Controller(DC) graphics support
> >> diff --git a/drivers/gpu/drm/imx/dc/Makefile b/drivers/gpu/drm/imx/dc/Makefile
> >> new file mode 100644
> >> index 000000000000..56de82d53d4d
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/imx/dc/Makefile
> >> @@ -0,0 +1,5 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +
> >> +imx8-dc-drm-objs := dc-de.o dc-drv.o dc-fg.o dc-tc.o
> >> +
> >> +obj-$(CONFIG_DRM_IMX8_DC) += imx8-dc-drm.o
> >> diff --git a/drivers/gpu/drm/imx/dc/dc-de.c b/drivers/gpu/drm/imx/dc/dc-de.c
> >> new file mode 100644
> >> index 000000000000..2c8268b76b08
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/imx/dc/dc-de.c
> >> @@ -0,0 +1,151 @@
> >> +// SPDX-License-Identifier: GPL-2.0+
> >> +/*
> >> + * Copyright 2024 NXP
> >> + */
> >> +
> >> +#include <linux/component.h>
> >> +#include <linux/container_of.h>
> >> +#include <linux/io.h>
> >> +#include <linux/mod_devicetable.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of.h>
> >> +#include <linux/of_platform.h>
> >> +#include <linux/platform_device.h>
> >> +#include <linux/pm.h>
> >> +#include <linux/pm_runtime.h>
> >> +
> >> +#include <drm/drm_managed.h>
> >> +
> >> +#include "dc-de.h"
> >> +#include "dc-drv.h"
> >> +
> >> +#define POLARITYCTRL		0xc
> >> +#define  POLEN_HIGH		BIT(2)
> >> +
> >> +struct dc_de_priv {
> >> +	struct dc_de engine;
> >> +	void __iomem *reg_top;
> >> +};
> >> +
> >> +static inline struct dc_de_priv *to_de_priv(struct dc_de *de)
> >> +{
> >> +	return container_of(de, struct dc_de_priv, engine);
> >> +}
> >> +
> >> +static inline void
> >> +dc_dec_write(struct dc_de *de, unsigned int offset, u32 value)
> >> +{
> >> +	struct dc_de_priv *priv = to_de_priv(de);
> >> +
> >> +	writel(value, priv->reg_top + offset);
> > 
> > Is there a point in this wrapper? Can you call writel directly? This
> 
> At least, it helps finding read/write ops upon interested devices through
> 'git grep'.

git grep writel also works.

> 
> Also, since we have dc_*_write_mask() helpers, it doesn't look too bad to
> have dc_*_read/write() helpers.

Please use regmap_update_bits instead of dc_*_write_mask.

> 
> > question generally applies to the driver. I see a lot of small functions
> > which can be inlined without losing the clarity.
> 
> Can you please point out typical ones?

dc_fg_enable_shden(), dc_fg_syncmode(), dc_dec_init()

To provide an example, this is the code from dc_crtc_atomic_enable().

	dc_fg_displaymode(dc_crtc->fg, FG_DM_SEC_ON_TOP);
	dc_fg_panic_displaymode(dc_crtc->fg, FG_DM_CONSTCOL);
	dc_fg_cfg_videomode(dc_crtc->fg, adj);

the FG parameters are fixed here. I'd expect a single call from dc_dcrtc
to dc_fg, which internally does all the settings. This removes a need to
export low-level details to other modules.

> 
> > 
> >> +}
> >> +
> >> +static void dc_dec_init(struct dc_de *de)
> >> +{
> >> +	dc_dec_write(de, POLARITYCTRL, POLEN_HIGH);
> >> +}
> >> +
> >> +static int dc_de_bind(struct device *dev, struct device *master, void *data)
> >> +{
> >> +	struct platform_device *pdev = to_platform_device(dev);
> >> +	struct dc_drm_device *dc_drm = data;
> >> +	struct dc_de_priv *priv;
> >> +	int ret;
> >> +
> >> +	priv = drmm_kzalloc(&dc_drm->base, sizeof(*priv), GFP_KERNEL);
> >> +	if (!priv)
> >> +		return -ENOMEM;
> >> +
> >> +	priv->reg_top = devm_platform_ioremap_resource_byname(pdev, "top");
> >> +	if (IS_ERR(priv->reg_top))
> >> +		return PTR_ERR(priv->reg_top);
> >> +
> >> +	priv->engine.irq_shdld = platform_get_irq_byname(pdev, "shdload");
> >> +	if (priv->engine.irq_shdld < 0)
> >> +		return priv->engine.irq_shdld;
> >> +
> >> +	priv->engine.irq_framecomplete =
> >> +				platform_get_irq_byname(pdev, "framecomplete");
> >> +	if (priv->engine.irq_framecomplete < 0)
> >> +		return priv->engine.irq_framecomplete;
> >> +
> >> +	priv->engine.irq_seqcomplete =
> >> +				platform_get_irq_byname(pdev, "seqcomplete");
> >> +	if (priv->engine.irq_seqcomplete < 0)
> >> +		return priv->engine.irq_seqcomplete;
> >> +
> >> +	priv->engine.id = of_alias_get_id(dev->of_node, "dc0-display-engine");
> > 
> > Is this alias documented somewhere? Is it Acked by DT maintainers?
> 
> I see aliases nodes in about 10 .yaml files as examples.
> If needed, I can add them to examples.
> 
> Rob said "Ideally, no" to use alias in v1. However, IMHO, it is the only
> appropriate way to get instance id. In v1 review cycles, we've seen kinda
> 4 ways:
> 
> 1) fsl,dc-*-id DT property
>    Rejected by Krzystof.
> 
> 2) OF alias
> 
> 3) OF graph ports (Rob)
>    This doesn't directly get instance id but just tell the connections.
>    Since there are too many input/output options between some processing
>    units, I hope we don't end up using this approach, as I mentioned in v1.
>    It seems be difficult for display driver to handle those ports.   
> 
>    VC4 Hardware Video Scaler(HVS) is not using OF graph ports to tell the
>    connections to display controllers, either. See brcm,bcm2835-hvs.yaml.
>  
> 4) fsl,imx8qxp-dc-*{id} DT compatible string
>    It doesn't seem necessary to add the id information to compatible string.

For the similar issue we ended up hardcoding IO address / masks into the
driver. This is far from being optimal (and I'd like to get away from
it). If we were designing drm/msm from scratch now, we'd probably have used OF
graph port IDs.

> 
> > 
> >> +	if (priv->engine.id < 0) {
> >> +		dev_err(dev, "failed to get alias id: %d\n", priv->engine.id);
> >> +		return priv->engine.id;
> >> +	}
> >> +
> >> +	priv->engine.dev = dev;
> >> +
> >> +	dev_set_drvdata(dev, priv);
> >> +
> >> +	ret = devm_pm_runtime_enable(dev);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	dc_drm->de[priv->engine.id] = &priv->engine;
> >> +
> >> +	return 0;
> >> +}
> >> +
> > 
> 
> -- 
> Regards,
> Liu Ying
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
