Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504AC49EA5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:11:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D859613E3
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:11:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3D859613E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JT9AZYl9RtWh/uWanH3OIpaGaspRanJZ0ZIjaKJjEoI=; b=LHqEB5A17bU/bj
	OtOnFUtOzKJvewD41CWibfpvnE0eHq5qtF8PJ+MfucQv3iDGMFnfCmW6bzkpQcdZ0gBaqInbMpr/k
	DX2hd98xTID5pdjpFbzVMwMwPjWziXr4TT2N9BbtEVFib5Wu4Ij28u9nYu3cjLkZEpGdDMoqFwDsB
	QFFArbW5dRlOHyOI/Lo1ehx9JHeZ5BQUE53vm3noyoTkIlTOWMFtqIIP4hHkJQ2GK7APnowyn5Xau
	Zp/TJa7nphBT6BOOmQWJtQCpp2dflowfsMD1RgMXMsJtry0laae8OQ4Ycsg7WNfwR6YJcbEYNtlBu
	vXYA9NS8bOG3CW6Nej8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwOCs-00EWk3-PG; Thu, 24 Jun 2021 12:11:42 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwOCd-00EWe2-Pj
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 12:11:30 +0000
Received: by mail-ed1-x529.google.com with SMTP id m14so8181326edp.9
 for <linux-phy@lists.infradead.org>; Thu, 24 Jun 2021 05:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hl72FS2y9n4jB9a1L7Hg43gY2B5zO77yYR8Igj/hYDI=;
 b=Nf6mocvXO8NeZN8KVnMZdEwN0VGtlu+nF63Hc3crZMEB2Pa88argC2qEH737O17A8t
 Mdt8H36DcAhBkk3FQNKViV8IKxUqV0Uj3qixjwf2n9qZmfcXTn7QQe/u3gVFOFrcQry8
 0ckG508FS/iQx+qUUVHHJn4RFaUABamSFqZWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hl72FS2y9n4jB9a1L7Hg43gY2B5zO77yYR8Igj/hYDI=;
 b=m4ZAeQycK8ip9Nn8oIY0FNelPZbmloOVP3oyb8zMAf0vZ/l2MJ5EJ7e/LsSGPB1Sgn
 txtKi0hlZvmEtP0amyZds4HI5LVSGL2FxGjWWAuI0owOOKueL/t9xcBOR2aPQsHobfFW
 kzyzk0ifGyZKmErpoKCOHp3J9E/EJPar0kRBAYeAtWKBot/hER5oy4bP9YNmAbaL8rl+
 vW2O8OmhqyzFx+776SlVNdWDxzNI2sAWqjJRQXz/L+/6tsM3n9mFofL1GDUIvsVfNTDm
 T6xb7UsRUDpyZ0Ri+4OVgk6dIlEJHpMn5v52x7WxExkG5QdcfdYP7iVvnwenSt+Po+g7
 PGRw==
X-Gm-Message-State: AOAM532yq3+d3I81Gm60b3xmrzd3brTXTc9bc7wUbPcyvY4BMb0DpAre
 Plr045QmQA587GYEXtIfYCmnVfkL7oceWU2WLmnkaA==
X-Google-Smtp-Source: ABdhPJwqpXFeexELh7KyE5nGxtsdMgSuFak/f1DLFia8mgKPPcd1rTqdF6kez5LClGR9uYcVsP2D2Hk5itPE6rlPQDI=
X-Received: by 2002:aa7:cf03:: with SMTP id a3mr6764586edy.27.1624536686322;
 Thu, 24 Jun 2021 05:11:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
In-Reply-To: <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 24 Jun 2021 17:41:14 +0530
Message-ID: <CAMty3ZDmzPha7zdWVHkcuRCjA_LsWqSLyWQMhkOiRMmQmTNXjA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>, 
 Fancy Fang <chen.fang@nxp.com>, devicetree <devicetree@vger.kernel.org>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, Robert Foss <robert.foss@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Andrzej Hajda <a.hajda@samsung.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, 
 linux-phy@lists.infradead.org, 
 linux-amarula <linux-amarula@amarulasolutions.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_051128_285739_D87669FE 
X-CRM114-Status: GOOD (  32.13  )
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

Hi Laurent,

On Thu, Jun 24, 2021 at 3:53 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> Thank you for the patch.
>
> On Mon, Jun 21, 2021 at 12:54:17PM +0530, Jagan Teki wrote:
> > Samsung SEC MIPI DSIM Bridge controller is MIPI DSI bridge
> > available in NXP's i.MX8M Mini and Nano Processors.
> >
> > Add bridge driver for it.
> >
> > Cc: Andrzej Hajda <a.hajda@samsung.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Robert Foss <robert.foss@linaro.org>
> > Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig    |   15 +
> >  drivers/gpu/drm/bridge/Makefile   |    1 +
> >  drivers/gpu/drm/bridge/sec-dsim.c | 1535 +++++++++++++++++++++++++++++
> >  3 files changed, 1551 insertions(+)
> >  create mode 100644 drivers/gpu/drm/bridge/sec-dsim.c
> >
> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> > index 19109c0b5481..a183eb165a35 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -189,6 +189,21 @@ config DRM_PARADE_PS8640
> >         The PS8640 is a high-performance and low-power
> >         MIPI DSI to eDP converter
> >
> > +config DRM_SEC_MIPI_DSIM
> > +     tristate "Samsung SEC MIPI DSIM Bridge controller"
> > +     depends on DRM
> > +     depends on COMMON_CLK
> > +     depends on OF && HAS_IOMEM
> > +     select DRM_KMS_HELPER
> > +     select DRM_MIPI_DSI
> > +     select DRM_PANEL_BRIDGE
> > +     select GENERIC_PHY_MIPI_DPHY
> > +     select MFD_SYSCON
> > +     select REGMAP_MMIO
> > +     help
> > +       This enables the Samsung SEC MIPI DSIM Bridge controller as
> > +       for example found on NXP's i.MX8M Mini and Nano Processors.
> > +
> >  config DRM_SIL_SII8620
> >       tristate "Silicon Image SII8620 HDMI/MHL bridge"
> >       depends on OF
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> > index 88e4edf81087..ff802a4ffe65 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -12,6 +12,7 @@ obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v
> >  obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
> >  obj-$(CONFIG_DRM_PARADE_PS8622) += parade-ps8622.o
> >  obj-$(CONFIG_DRM_PARADE_PS8640) += parade-ps8640.o
> > +obj-$(CONFIG_DRM_SEC_MIPI_DSIM) += sec-dsim.o
> >  obj-$(CONFIG_DRM_SIL_SII8620) += sil-sii8620.o
> >  obj-$(CONFIG_DRM_SII902X) += sii902x.o
> >  obj-$(CONFIG_DRM_SII9234) += sii9234.o
> > diff --git a/drivers/gpu/drm/bridge/sec-dsim.c b/drivers/gpu/drm/bridge/sec-dsim.c
> > new file mode 100644
> > index 000000000000..5b6645bb94e7
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/sec-dsim.c
> > @@ -0,0 +1,1535 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Samsung SEC MIPI DSIM Bridge
> > + *
> > + * Copyright (C) 2018 NXP
> > + * Copyright (c) 2014 Samsung Electronics Co., Ltd
> > + * Copyright (C) 2021 Amarula Solutions(India)
> > + *
> > + * Based on the drivers/gpu/drm/exynos/exynos_drm_dsi.c
> > + *
> > + * Authors:
> > + * Tomasz Figa <t.figa@samsung.com>
> > + * Andrzej Hajda <a.hajda@samsung.com>
> > + * Fancy Fang <chen.fang@nxp.com>
> > + * Jagan Teki <jagan@amarulasolutions.com>
> > + */
> > +
> > +#include <asm/unaligned.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/completion.h>
> > +#include <linux/delay.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of_graph.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/regmap.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_print.h>
> > +
> > +#include <video/mipi_display.h>
> > +
> > +#define DRIVER_NAME                  "sec-dsim"
> > +
> > +/* dsim registers */
> > +#define DSIM_VERSION                 0x00
> > +#define DSIM_STATUS                  0x04
> > +#define DSIM_RGB_STATUS                      0x08
> > +#define DSIM_SWRST                   0x0c
> > +#define DSIM_CLKCTRL                 0x10
> > +#define DSIM_TIMEOUT                 0x14
> > +#define DSIM_CONFIG                  0x18
> > +#define DSIM_ESCMODE                 0x1c
> > +#define DSIM_MDRESOL                 0x20
> > +#define DSIM_MVPORCH                 0x24
> > +#define DSIM_MHPORCH                 0x28
> > +#define DSIM_MSYNC                   0x2c
> > +#define DSIM_SDRESOL                 0x30
> > +#define DSIM_INTSRC                  0x34
> > +#define DSIM_INTMSK                  0x38
> > +#define DSIM_PKTHDR                  0x3c
> > +#define DSIM_PAYLOAD                 0x40
> > +#define DSIM_RXFIFO                  0x44
> > +#define DSIM_FIFOTHLD                        0x48
> > +#define DSIM_FIFOCTRL                        0x4c
> > +#define DSIM_MEMACCHR                        0x50
> > +#define DSIM_MULTI_PKT                       0x78
> > +#define DSIM_PLLCTRL_1G                      0x90
> > +#define DSIM_PLLCTRL                 0x94
> > +#define DSIM_PLLCTRL1                        0x98
> > +#define DSIM_PLLCTRL2                        0x9c
> > +#define DSIM_PLLTMR                  0xa0
>
> Looking at the register set, it seems to match the Exynos 5433,
> supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> that driver instead of adding a new one for the same IP core ?

I thought the same initially, but the PLLOut computation seems
different than the one in the i.MX8MM Reference Manual. I need to find
whether this exynos_dsi is compatible or working on my i.MX8MM
platform and send the next version changes accordingly. thanks.

--
Jagan Teki,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
