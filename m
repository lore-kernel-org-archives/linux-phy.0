Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A23ECF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKRIDIoQrTI03z39NP6feXZvkzRb+J7GpzG7xs0U0TU=; b=SEoS26i+mRHMx2
	PPaTEWOnAMCazAQA3ufwD//II46osItPlOhnF859fpFSyeQ/hkjHB4Zwi5WAtXPBqyhpY+Rc4ocfH
	EbW+/Th7v6Kwcxzpn8gYzupmnoTV6xpPjDRUdN3k3u/v/I7ToHN5AEcYe0cewwsCpx5pn0lXK6e/p
	PCeT+Jlt3brPYGsG7udFZuDbZ+aG+JFFucmrgNHxZdKKxxwwbRw+HXaeYXf4lhTy4QkM1v7E0cVi1
	5ijOsG+hOgSMcFzZfLevvWWjWfScRaW0ldDkEQZv3bhs8M9y0jNqu8mrd/+q8hPpXjIoOG3+uhVth
	dSxoMyGzFu0EkBzK2QeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st18G-00000001de3-38qC;
	Tue, 24 Sep 2024 08:42:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st176-00000001dSs-3dDp;
	Tue, 24 Sep 2024 08:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=94JhhSqRQRupCtsnu1jPyU8mbjFFU1ugSNyOVeLAgTU=; b=miz0r/v3dP1Lo0AkfcKHFa4hfx
	zXsNcY8bvXdsFapMnROmWosuLa9BOSghv+cH88STgc3RcOrScEJt2Tay2/dFPzxQkYfc6cvRvNoBL
	OMuXp5Yn4qMdziOTJXFvOvBicprT9LV/uOaTPbTcco4Yz+TVrmJSdh0p8Oy2K/hkLEjy8liEljF8x
	LNhMzKDPea3bBj97WBZZktvI0Z+AU+vJBP0daqZORDiTBANKFhurZYYoFdPypaWBbzOuUHXUUXEPZ
	l45/fqWiL/v5zYAtlhfRLZd8DVC9J/t+Yvb/b0EeVQ5fVhV2oNytB2CZKNGDEAVvZHLoXPdR4l/jT
	ZW3rBukA==;
Received: from mx1.tq-group.com ([93.104.207.81])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st172-00000001n14-1d15;
	Tue, 24 Sep 2024 08:41:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1727167296; x=1758703296;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=94JhhSqRQRupCtsnu1jPyU8mbjFFU1ugSNyOVeLAgTU=;
  b=G0hRSfw4SQNKxqqKTqSfKddl4T55yL/b7u+w7ZYt98Xng3TWHFHXZbEM
   CCuBVB9t4jqkniXzQf+4bHYcXDBjZFUt6UEXXNqfiEqlws1SgMQyKL5s+
   zESyIY4e9ME4+3gJZD3P7Tce+vzXWGWDylsGKCZWJMV6BBQoCoJIhT6LW
   1NpyHX/ObDjAfs9txIfATXttAsJc5lj5xAd3c74iiqbh88PHhS58468dz
   8bvFUl1hpyvZAy7teMsAwdD2i9p0xniofDfDB34d69lSy+teUx8rzBpux
   N6+NRMRc4GUKMXaA5W4dXeoUBPO4szNTBNFx1sF+5+kxZwaRx0yAursmH
   Q==;
X-CSE-ConnectionGUID: HYHhDl3FRLe2UDLHD2H8Eg==
X-CSE-MsgGUID: lh+Hh1IZSMWCk0QEHSASpw==
X-IronPort-AV: E=Sophos;i="6.10,254,1719871200"; 
   d="scan'208";a="39088260"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 24 Sep 2024 10:41:31 +0200
X-CheckPoint: {66F27B3B-6-B8661266-C8AC785A}
X-MAIL-CPID: ED0BAF8E49DE59BF9E9DC9356ED979B3_5
X-Control-Analysis: str=0001.0A682F1B.66F27B3B.011D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BF5591634CC;
	Tue, 24 Sep 2024 10:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1727167286;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=94JhhSqRQRupCtsnu1jPyU8mbjFFU1ugSNyOVeLAgTU=;
	b=iVAqqYQyAW2GfXjszyBFCEiYNDxoY1nFVTFIhq6CqYbygQFwC3qMhMgPA5t+m5K55GhQKu
	XXi8eIcUlsvOhnTDmgzrrqeLcoQgVoObd/URVlSU7jiAYKljXWi58vypBIYYA83zBhHb7Y
	C0uyMVxWqSoIwflC3xnKrv3tJIsuw9Owb9Ep2xx4NPW7IhiPm8FxxFd8QSVdIyh1GdkJpx
	i5zu/GfQvZ0LnpQDTgPA7+S73mV3+8iCWKw8rAl5KpgImWw1nttPX6bqXu0GL56v510gy/
	5OQ6C787NJ9UdAbdeT3UQ+g10Oi5Ud+R9rPyzIHFxhc5cVAjmwW3XNHuc7FpaA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, Sandor.yu@nxp.com, oliver.brown@nxp.com, sam@ravnborg.org
Subject: Re: [PATCH v17 1/8] drm: bridge: Cadence: Create mhdp helper driver
Date: Tue, 24 Sep 2024 10:41:26 +0200
Message-ID: <2773403.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <6e2e4951aa4c69eed68af231c2b0b2ce302b2358.1727159906.git.Sandor.yu@nxp.com>
References: <cover.1727159906.git.Sandor.yu@nxp.com> <6e2e4951aa4c69eed68af231c2b0b2ce302b2358.1727159906.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_094137_509218_B06A421F 
X-CRM114-Status: GOOD (  20.07  )
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

Hi Sandor,

Am Dienstag, 24. September 2024, 09:36:46 CEST schrieb Sandor Yu:
> MHDP8546 mailbox access functions will be share to other mhdp driver
> and Cadence HDP-TX HDMI/DP PHY drivers.
> Create a new mhdp helper driver and move all those functions into.
> =

> cdns_mhdp_reg_write() is renamed to cdns_mhdp_dp_reg_write(),
> because it use the DPTX command ID DPTX_WRITE_REGISTER.
> =

> New cdns_mhdp_reg_write() is created with the general command ID
> GENERAL_REGISTER_WRITE.
> =

> Rewrite cdns_mhdp_set_firmware_active() in mhdp8546 core driver,
> use cdns_mhdp_mailbox_send() to replace cdns_mhdp_mailbox_write()
> same as the other mailbox access functions.
> =

> Replaces the local mutex mbox_mutex with a global mutex mhdp_mailbox_mutex
> to prevent race conditions in mailbox access by multi drivers.
> =

> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v16->v17:
> - Replaces the local mutex mbox_mutex with a global mutex mhdp_mailbox_mu=
tex
> =

> v12->v16:
>  *No change.
> =

> V11->v12:
> - Move status initialize out of mbox_mutex.
> - Reorder API functions in alphabetical.
> - Add notes for malibox access functions.
> - Add year 2024 to copyright.
> =

>  drivers/gpu/drm/bridge/cadence/Kconfig        |   4 +
>  drivers/gpu/drm/bridge/cadence/Makefile       |   1 +
>  .../gpu/drm/bridge/cadence/cdns-mhdp-helper.c | 307 +++++++++++++
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 425 ++++--------------
>  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  47 +-
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.c   |  36 +-
>  include/drm/bridge/cdns-mhdp-helper.h         |  94 ++++
>  7 files changed, 507 insertions(+), 407 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c
>  create mode 100644 include/drm/bridge/cdns-mhdp-helper.h
> =

> diff --git a/drivers/gpu/drm/bridge/cadence/Kconfig b/drivers/gpu/drm/bri=
dge/cadence/Kconfig
> index cced81633ddcd..e0973339e9e33 100644
> --- a/drivers/gpu/drm/bridge/cadence/Kconfig
> +++ b/drivers/gpu/drm/bridge/cadence/Kconfig
> @@ -21,6 +21,9 @@ config DRM_CDNS_DSI_J721E
>  	  the routing of the DSS DPI signal to the Cadence DSI.
>  endif
>  =

> +config CDNS_MHDP_HELPER
> +	tristate
> +
>  config DRM_CDNS_MHDP8546
>  	tristate "Cadence DPI/DP bridge"
>  	select DRM_DISPLAY_DP_HELPER
> @@ -28,6 +31,7 @@ config DRM_CDNS_MHDP8546
>  	select DRM_DISPLAY_HELPER
>  	select DRM_KMS_HELPER
>  	select DRM_PANEL_BRIDGE
> +	select CDNS_MHDP_HELPER
>  	depends on OF
>  	help
>  	  Support Cadence DPI to DP bridge. This is an internal
> diff --git a/drivers/gpu/drm/bridge/cadence/Makefile b/drivers/gpu/drm/br=
idge/cadence/Makefile
> index c95fd5b81d137..087dc074820d7 100644
> --- a/drivers/gpu/drm/bridge/cadence/Makefile
> +++ b/drivers/gpu/drm/bridge/cadence/Makefile
> @@ -2,6 +2,7 @@
>  obj-$(CONFIG_DRM_CDNS_DSI) +=3D cdns-dsi.o
>  cdns-dsi-y :=3D cdns-dsi-core.o
>  cdns-dsi-$(CONFIG_DRM_CDNS_DSI_J721E) +=3D cdns-dsi-j721e.o
> +obj-$(CONFIG_CDNS_MHDP_HELPER) +=3D cdns-mhdp-helper.o
>  obj-$(CONFIG_DRM_CDNS_MHDP8546) +=3D cdns-mhdp8546.o
>  cdns-mhdp8546-y :=3D cdns-mhdp8546-core.o cdns-mhdp8546-hdcp.o
>  cdns-mhdp8546-$(CONFIG_DRM_CDNS_MHDP8546_J721E) +=3D cdns-mhdp8546-j721e=
.o
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c b/drivers/=
gpu/drm/bridge/cadence/cdns-mhdp-helper.c
> new file mode 100644
> index 0000000000000..c60a6b69a5343
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp-helper.c
> @@ -0,0 +1,307 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2023, 2024 NXP Semiconductor, Inc.
> + *
> + */
> +#include <drm/bridge/cdns-mhdp-helper.h>
> +#include <linux/dev_printk.h>
> +#include <linux/module.h>
> +
> +/* Protects mailbox communications with the firmware */
> +DEFINE_MUTEX(mhdp_mailbox_mutex);

This is not enough if the driver is built as a module:

> ERROR: modpost: "mhdp_mailbox_mutex"
> [drivers/gpu/drm/bridge/cadence/cdns-mhdp8546.ko] undefined! ERROR:
> modpost: "mhdp_mailbox_mutex"
> [drivers/gpu/drm/bridge/cadence/cdns-mhdp8501.ko] undefined!

Not sure if EXPORT_SYMBOL_GPL() on a mutex is considered good style.

Best regards,
Alexander

> [snip]
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
