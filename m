Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03CA5CCFA0D
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 16:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OEd2Qx00BD4H9nesQK6ASsAmNs6XThA+oh8pW+k4Wc=; b=ekdSU4TkAnHclP
	QuL8+/epzye8DyTVgPXfB1UDVM/mAPmxDUHM7hGIGjt1WO+yxevlw61sO74yOGZ0NwT+QLilhkN6C
	d9sSD2gxCOE+7GZEL0ootzBQfA8sbEBl5SOGHeRhIBqSC++YOd53cPhkhAL/bVTlQjreLoZhKIwyi
	ozYNlVckv8UtKL9ubn3bXXpmH2NiT4YWRCeuofHVSWT1KkZyxlVefvpcgCnpAVoqLr07yszzkBHW7
	TpERCk06nht3tbSvnGXCzdB0nWMC03hsH1S2kiOSzyZN/WDg+YDd4qBp9IxvjwePl8G2pTlo33R+X
	HhX7ebzVGwNg5/w7kiaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGg0e-0000000E1RD-2gm7;
	Wed, 05 Nov 2025 16:05:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGg0c-0000000E1QA-33go
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 16:05:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGg0F-0001Ma-RR; Wed, 05 Nov 2025 17:04:55 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGg0E-007Dp6-3D;
	Wed, 05 Nov 2025 17:04:55 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGg0E-00000000Cj1-3ksp;
	Wed, 05 Nov 2025 17:04:54 +0100
Message-ID: <4857ace4d241d3a0de4fe7247312ff07c930b11e.camel@pengutronix.de>
Subject: Re: [PATCH v2 06/21] reset: rzv2h-usb2phy: Add support for VBUS mux
 controller registration
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, Vinod
 Koul	 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Fabrizio Castro
 <fabrizio.castro.jz@renesas.com>, Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Peter Rosin <peda@axentia.se>,
 Yoshihiro Shimoda	 <yoshihiro.shimoda.uh@renesas.com>, Geert Uytterhoeven
 <geert+renesas@glider.be>,  Magnus Damm <magnus.damm@gmail.com>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman	 <gregkh@linuxfoundation.org>,
 linux-phy@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 05 Nov 2025 17:04:54 +0100
In-Reply-To: <39923e450f1ce220cbca28dcf6b215dd9fa79dde.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
	 <39923e450f1ce220cbca28dcf6b215dd9fa79dde.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_080518_770790_CF753D42 
X-CRM114-Status: GOOD (  21.12  )
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

On Mi, 2025-11-05 at 16:39 +0100, Tommaso Merciai wrote:
> The RZ/V2H USB2 PHY requires control of the VBUS selection line
> (VBENCTL) through a mux controller described in the device tree as
> "mux-controller". This change adds support for registering
> vbus-sel-mux auxiliary driver during probe.
> 
> This enables proper management of USB2.0 VBUS source selection on
> platforms using the RZ/V2H SoC.
> 
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v1->v2:
>  - New patch
> 
>  drivers/reset/Kconfig               |  1 +
>  drivers/reset/reset-rzv2h-usb2phy.c | 65 +++++++++++++++++++++++++++++
>  2 files changed, 66 insertions(+)
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index e1ae624661f3..f54e216ca7f6 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -255,6 +255,7 @@ config RESET_RZG2L_USBPHY_CTRL
>  config RESET_RZV2H_USB2PHY
>  	tristate "Renesas RZ/V2H(P) (and similar SoCs) USB2PHY Reset driver"
>  	depends on ARCH_RENESAS || COMPILE_TEST
> +	select AUXILIARY_BUS
>  	help
>  	  Support for USB2PHY Port reset Control found on the RZ/V2H(P) SoC
>  	  (and similar SoCs).
> diff --git a/drivers/reset/reset-rzv2h-usb2phy.c b/drivers/reset/reset-rzv2h-usb2phy.c
> index 5bdd39274612..6074aa8cc13a 100644
> --- a/drivers/reset/reset-rzv2h-usb2phy.c
> +++ b/drivers/reset/reset-rzv2h-usb2phy.c
> @@ -5,8 +5,10 @@
>   * Copyright (C) 2025 Renesas Electronics Corporation
>   */
>  
> +#include <linux/auxiliary_bus.h>
>  #include <linux/cleanup.h>
>  #include <linux/delay.h>
> +#include <linux/idr.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -14,6 +16,9 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  #include <linux/reset-controller.h>
> +#include <linux/reset/reset_rzv2h_usb2phy.h>
> +
> +static DEFINE_IDA(auxiliary_ids);
>  
>  struct rzv2h_usb2phy_regval {
>  	u16 reg;
> @@ -104,6 +109,62 @@ static int rzv2h_usb2phy_reset_of_xlate(struct reset_controller_dev *rcdev,
>  	return 0;
>  }
>  
> +static void rzv2h_usb2phy_reset_adev_unregister(void *data)
> +{
> +	struct auxiliary_device *adev = data;
> +
> +	auxiliary_device_delete(adev);
> +	auxiliary_device_uninit(adev);
> +}
> +
> +static void rzv2h_usb2phy_reset_adev_release(struct device *dev)
> +{
> +	struct auxiliary_device *adev = to_auxiliary_dev(dev);
> +
> +	ida_free(&auxiliary_ids, adev->id);
> +}
> +
> +static int rzv2h_usb2phy_reset_mux_register(struct device *dev,
> +					    void __iomem *base,
> +					    const char *mux_name)
> +{
> +	struct reset_rzv2h_usb2phy_adev *rdev;
> +	struct auxiliary_device *adev;
> +	int ret;
> +
> +	rdev = devm_kzalloc(dev, sizeof(*rdev), GFP_KERNEL);
> +	if (!rdev)
> +		return -ENOMEM;
> +
> +	rdev->base = base;
> +
> +	adev = &rdev->adev;
> +	adev->name = mux_name;
> +	adev->dev.parent = dev->parent;
> +	adev->dev.release = rzv2h_usb2phy_reset_adev_release;
> +	adev->dev.of_node = dev->of_node;
> +	ret = ida_alloc(&auxiliary_ids, GFP_KERNEL);
> +	if (ret < 0)
> +		return ret;
> +	adev->id = ret;
> +
> +	ret = auxiliary_device_init(adev);
> +	if (ret)
> +		goto cleanup_ida;
> +
> +	ret = auxiliary_device_add(adev);
> +	if (ret) {
> +		auxiliary_device_uninit(adev);
> +		goto cleanup_ida;
> +	}
> +
> +	return devm_add_action_or_reset(dev, rzv2h_usb2phy_reset_adev_unregister, adev);

Can't you use __devm_auxiliary_device_create()?

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
