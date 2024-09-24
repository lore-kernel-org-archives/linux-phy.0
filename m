Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A471BCF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bx36YuHhFX8Lc3ED7JAy3GUWlefQWJlLqrxeUqC1hn4=; b=0arIPG4QNuKn28
	4Fi2ICJvD+PFdTuoq+kyv2qeNG9mchShRc0e7X9eCdFBeRwVgfVvx45dEt7XhOV1UrbiWdiGHhogg
	urlK52nB91PL+8emgDqudyLqtYahEvFpY60U5zVNcJZ14188fvyaUr5S43vsU2HGj5I6JgyaYM/ey
	AZ6rEJfOQ/HJCXEXcXjEYR4Amk7hXF1XOtsDGA1KDVM5ARWlbRvmLEHYMM6YGRdwxbTWHfwixEFl1
	D+m/FfHt3Gd/cxT8qJagX33A2AQmyKRVJffzft+LiKOIQnG/TGORcq1tubsDmwkV5W/tNYUVvIawX
	EyBby2JOcVDpOtv4tCYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st1uu-00000001p01-0rAz;
	Tue, 24 Sep 2024 09:33:08 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st1sw-00000001o8K-08F9
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 09:31:07 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2f7ba97ebaaso48647331fa.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 02:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727170264; x=1727775064; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yWBIbFHZNiPI/HNmpMhvRGObId3eaCn9wFIzXYkz7to=;
        b=UimgJMYs6tn0E9cSf4dpzvWvtjCw89YCR+xZ2BxAxcqFLcM2riAaee3Ekwbz0OAf+F
         YliZQIBvX28YUGvh1HPNbtu/gIoowl0vH0CqaNbFvzFuGhLQ1HNeIsKNDQQFEPleeuD7
         DC+BHD+K0EFZM+VXFH7MVWF8rPNeIE4s+4mTg9N0iLYDuAsYlBr/VUBwMy4oZnx3SCe4
         /EB76qrE8pFklGo/miHAjeFiDvPP0xWll5pzZ+lZvlqMXUcN1oDwQn+oY4D6qYtFk0c/
         je5JhdrlA2RTJXkkHFwVi/Yr5Ew4qHcxvIe6JVUO7IxGBuSRtAKjmGJlNg++Ds8svUP0
         BhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727170264; x=1727775064;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yWBIbFHZNiPI/HNmpMhvRGObId3eaCn9wFIzXYkz7to=;
        b=ZBqxciFRFq6Dqq5FEeKWPqRKX8ZMmPDIicwsH/cljky+q5uQvBHlx4lBm0TRE8rBP+
         ACn488cVIOyT/7kzg6Ub6uKqF1NXW44h1Bf2I4/vdAWzrF4X712KJL9oAqZ+AYeYmaZd
         ehMA/WN0DwK+YNPjIL+XBCEjc3sZxLyODD81G6xp1K8VzMGfXE+QWpL8yoeVhfjwZoL7
         X7+IXFqJR1mYf4u/iNt+iVBKkDGwYgpbiwJXOOP+I8S3ZeDZETFGIMo4dHNgeiSw28ct
         KgK+IGHY9lD7qU10h/JyBINzi59OvcTSuHFnpRFW51+aEqSJWyi1s7Cv3lXQ3vnan8Ay
         pZJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTkQzs2AlzAHIqn4n3Ln017f6j2ec1MKi0bhdM2dZGCtK2yDIb60Hs3XrKVFwhwJrelET9z1qvsm0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNmveka1EwuMBLHXUCIGfaXq9WmNtlvnkR7U6hjNOHhFg9gNnx
	BvUJ5hJL8dVW7UBk6cUitlP46qoLG9takL4Q4zi01Oqszn1OjVRJyrHs03egkoc=
X-Google-Smtp-Source: AGHT+IHl/avwAYPIhb6TlrUBum/ZYPGtpNgmakP+vyGoMgDMX9PZ7T3T0XlPukXCsWcNZg9FyHE4qw==
X-Received: by 2002:a05:6512:220f:b0:530:aa4b:81c7 with SMTP id 2adb3069b0e04-536ad3d5526mr6590279e87.59.1727170264125;
        Tue, 24 Sep 2024 02:31:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864029dsm150753e87.120.2024.09.24.02.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 02:31:03 -0700 (PDT)
Date: Tue, 24 Sep 2024 12:31:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	Sandor Yu <Sandor.yu@nxp.com>, kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	sam@ravnborg.org
Subject: Re: [PATCH v17 1/8] drm: bridge: Cadence: Create mhdp helper driver
Message-ID: <vlqcv7pdhyf6rjmkm2ccyvg3fv64gcp536zppns6nc3xpzuew6@j3qrwextsp33>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <6e2e4951aa4c69eed68af231c2b0b2ce302b2358.1727159906.git.Sandor.yu@nxp.com>
 <2773403.mvXUDI8C0e@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2773403.mvXUDI8C0e@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_023106_100810_A8EFCFDC 
X-CRM114-Status: GOOD (  28.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Sep 24, 2024 at 10:41:26AM GMT, Alexander Stein wrote:
> Hi Sandor,
> =

> Am Dienstag, 24. September 2024, 09:36:46 CEST schrieb Sandor Yu:
> > MHDP8546 mailbox access functions will be share to other mhdp driver
> > and Cadence HDP-TX HDMI/DP PHY drivers.
> > Create a new mhdp helper driver and move all those functions into.
> > =

> > cdns_mhdp_reg_write() is renamed to cdns_mhdp_dp_reg_write(),
> > because it use the DPTX command ID DPTX_WRITE_REGISTER.
> > =

> > New cdns_mhdp_reg_write() is created with the general command ID
> > GENERAL_REGISTER_WRITE.
> > =

> > Rewrite cdns_mhdp_set_firmware_active() in mhdp8546 core driver,
> > use cdns_mhdp_mailbox_send() to replace cdns_mhdp_mailbox_write()
> > same as the other mailbox access functions.
> > =

> > Replaces the local mutex mbox_mutex with a global mutex mhdp_mailbox_mu=
tex
> > to prevent race conditions in mailbox access by multi drivers.
> > =

> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > ---
> > v16->v17:
> > - Replaces the local mutex mbox_mutex with a global mutex mhdp_mailbox_=
mutex
> > =

> > v12->v16:
> >  *No change.
> > =

> > V11->v12:
> > - Move status initialize out of mbox_mutex.
> > - Reorder API functions in alphabetical.
> > - Add notes for malibox access functions.
> > - Add year 2024 to copyright.
> > =

> >  drivers/gpu/drm/bridge/cadence/Kconfig        |   4 +
> >  drivers/gpu/drm/bridge/cadence/Makefile       |   1 +
> >  .../gpu/drm/bridge/cadence/cdns-mhdp-helper.c | 307 +++++++++++++
> >  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 425 ++++--------------
> >  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  47 +-
> >  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.c   |  36 +-
> >  include/drm/bridge/cdns-mhdp-helper.h         |  94 ++++
> >  7 files changed, 507 insertions(+), 407 deletions(-)
> >  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c
> >  create mode 100644 include/drm/bridge/cdns-mhdp-helper.h
> > =

> > diff --git a/drivers/gpu/drm/bridge/cadence/Kconfig b/drivers/gpu/drm/b=
ridge/cadence/Kconfig
> > index cced81633ddcd..e0973339e9e33 100644
> > --- a/drivers/gpu/drm/bridge/cadence/Kconfig
> > +++ b/drivers/gpu/drm/bridge/cadence/Kconfig
> > @@ -21,6 +21,9 @@ config DRM_CDNS_DSI_J721E
> >  	  the routing of the DSS DPI signal to the Cadence DSI.
> >  endif
> >  =

> > +config CDNS_MHDP_HELPER
> > +	tristate
> > +
> >  config DRM_CDNS_MHDP8546
> >  	tristate "Cadence DPI/DP bridge"
> >  	select DRM_DISPLAY_DP_HELPER
> > @@ -28,6 +31,7 @@ config DRM_CDNS_MHDP8546
> >  	select DRM_DISPLAY_HELPER
> >  	select DRM_KMS_HELPER
> >  	select DRM_PANEL_BRIDGE
> > +	select CDNS_MHDP_HELPER
> >  	depends on OF
> >  	help
> >  	  Support Cadence DPI to DP bridge. This is an internal
> > diff --git a/drivers/gpu/drm/bridge/cadence/Makefile b/drivers/gpu/drm/=
bridge/cadence/Makefile
> > index c95fd5b81d137..087dc074820d7 100644
> > --- a/drivers/gpu/drm/bridge/cadence/Makefile
> > +++ b/drivers/gpu/drm/bridge/cadence/Makefile
> > @@ -2,6 +2,7 @@
> >  obj-$(CONFIG_DRM_CDNS_DSI) +=3D cdns-dsi.o
> >  cdns-dsi-y :=3D cdns-dsi-core.o
> >  cdns-dsi-$(CONFIG_DRM_CDNS_DSI_J721E) +=3D cdns-dsi-j721e.o
> > +obj-$(CONFIG_CDNS_MHDP_HELPER) +=3D cdns-mhdp-helper.o
> >  obj-$(CONFIG_DRM_CDNS_MHDP8546) +=3D cdns-mhdp8546.o
> >  cdns-mhdp8546-y :=3D cdns-mhdp8546-core.o cdns-mhdp8546-hdcp.o
> >  cdns-mhdp8546-$(CONFIG_DRM_CDNS_MHDP8546_J721E) +=3D cdns-mhdp8546-j72=
1e.o
> > diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c b/driver=
s/gpu/drm/bridge/cadence/cdns-mhdp-helper.c
> > new file mode 100644
> > index 0000000000000..c60a6b69a5343
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c
> > @@ -0,0 +1,307 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2023, 2024 NXP Semiconductor, Inc.
> > + *
> > + */
> > +#include <drm/bridge/cdns-mhdp-helper.h>
> > +#include <linux/dev_printk.h>
> > +#include <linux/module.h>
> > +
> > +/* Protects mailbox communications with the firmware */
> > +DEFINE_MUTEX(mhdp_mailbox_mutex);
> =

> This is not enough if the driver is built as a module:
> =

> > ERROR: modpost: "mhdp_mailbox_mutex"
> > [drivers/gpu/drm/bridge/cadence/cdns-mhdp8546.ko] undefined! ERROR:
> > modpost: "mhdp_mailbox_mutex"
> > [drivers/gpu/drm/bridge/cadence/cdns-mhdp8501.ko] undefined!
> =

> Not sure if EXPORT_SYMBOL_GPL() on a mutex is considered good style.

Absolutely no. The API should wrap register access, using the mutex
whether required, rather than exporting the mutex for everybody else to
use.

> =

> Best regards,
> Alexander
> =

> > [snip]
> -- =

> TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
> Amtsgericht M=FCnchen, HRB 105018
> Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
> http://www.tq-group.com/
> =

> =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
