Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C940C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 16:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUQTZ+tW+U+f21vtxd9qBnvEWJz/baXpJAHgmH5T9fY=; b=sM3Nmq+bmmrgC8
	NtLY/hEdsbpVyhXHyNzu+EGQ2Ga2KStPCo6ZOpE7dCFxC0zVomDp+Z/5lMpgjIt7x//vIMEGMbVev
	f4uU29gRHMu7W9qwYEvhbzfq1Ofl3AC8DetnJyH0Yw9Hgc19lXSdF8oiTys31Y7sLsx8l7ZRZJcOq
	EX3gYsIbc8we3p+oDfOY3L1zBPq2iISKClLjh2U5qRh1VRo3PHO0dzd6owYLP6uMXYd0BoKdHbmD/
	Vipztn3+YD/A+gckF+WE3B2nrT+TQWS+douGdUDXUQDujvtrs4PBz6tTgc4GdnyXUfkTbVpzn6hNz
	8djCKhMV6dt8GJ7/XMYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc8V9-007BxJ-L9; Wed, 06 Apr 2022 16:27:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc8V7-007Bw5-5u
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 16:27:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nc8Ur-0006hd-Vs; Wed, 06 Apr 2022 18:27:06 +0200
Message-ID: <628350a25aa9943bf731a24ac4db364412c6b8c7.camel@pengutronix.de>
Subject: Re: [PATCH v0 00/10] i.MX8MP HDMI support
From: Lucas Stach <l.stach@pengutronix.de>
To: Tim Harvey <tharvey@gateworks.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring
 <robh+dt@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, Device Tree
 Mailing List <devicetree@vger.kernel.org>,  Pengutronix Kernel Team
 <kernel@pengutronix.de>, Neil Armstrong <narmstrong@baylibre.com>, Robert
 Foss <robert.foss@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, DRI mailing list
 <dri-devel@lists.freedesktop.org>,  Andrzej Hajda
 <andrzej.hajda@intel.com>, linux-phy@lists.infradead.org,
 patchwork-lst@pengutronix.de, Linux ARM Mailing List
 <linux-arm-kernel@lists.infradead.org>
Date: Wed, 06 Apr 2022 18:27:03 +0200
In-Reply-To: <CAJ+vNU3pxSiAX5_fmLy9ztUZ4-dvm5GHdUnucWZwWcQ539dT4w@mail.gmail.com>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <CAJ+vNU3pxSiAX5_fmLy9ztUZ4-dvm5GHdUnucWZwWcQ539dT4w@mail.gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_092721_244612_95C616FE 
X-CRM114-Status: GOOD (  28.93  )
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

Hi Tim,

Am Mittwoch, dem 06.04.2022 um 09:10 -0700 schrieb Tim Harvey:
> On Wed, Apr 6, 2022 at 9:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > Hi all,
> > 
> > this adds support for the HDMI output pipeline on the i.MX8MP.
> > It currently depends on the i.MX8MP HDMI power domain series [1]
> > and support for the new LCDIF [2] in the i.MX8MP. I guess the
> > implementation presented here also still has some warts that
> > require fixing and the individual patches most likely need to go
> > through different maintainer trees, so I don't expect this series
> > to be applied right away.
> > 
> > However this complete series should allow people to test it more
> > easily and provide feedback on the implementation with the full
> > picture available.
> > 
> > Compared to downstream this implementation actually allows to
> > power down the separate HDMI PHY power domain when the display
> > is inactive or no HDMI cable is connected.
> > 
> > Regards,
> > Lucas
> > 
> > [1] https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de/
> > [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
> > 
> > Lucas Stach (10):
> >   drm/bridge: dw-hdmi: add low-active PHY reset
> >   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
> >   drm/imx: add bridge wrapper driver for i.MX8MP DWC HDMI
> >   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
> >   drm/imx: add driver for HDMI TX Parallel Video Interface
> >   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
> >   phy: freescale: add Samsung HDMI PHY
> >   arm64: dts: imx8mp: add HDMI irqsteer
> >   arm64: dts: imx8mp: add HDMI display pipeline
> >   arm64: dts: imx8mp-evk: enable HDMI
> > 
> >  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   83 ++
> >  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   72 ++
> >  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
> >  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   93 ++
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |    7 +
> >  drivers/gpu/drm/imx/Kconfig                   |    1 +
> >  drivers/gpu/drm/imx/Makefile                  |    2 +
> >  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
> >  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
> >  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  209 +++
> >  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  128 ++
> >  drivers/phy/freescale/Kconfig                 |    7 +
> >  drivers/phy/freescale/Makefile                |    1 +
> >  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1145 +++++++++++++++++
> >  include/drm/bridge/dw_hdmi.h                  |    1 +
> >  16 files changed, 1852 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> >  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> >  create mode 100644 drivers/gpu/drm/imx/bridge/Kconfig
> >  create mode 100644 drivers/gpu/drm/imx/bridge/Makefile
> >  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c
> >  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi.c
> >  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > 
> > --
> > 2.30.2
> > 
> 
> Lucas,
> 
> Thanks for consolidating this - It's been difficult to try to merge
> these for testing.
> 
> I still have not been able to apply these to origin/master or
> imx/master - what are you basing off of here?

This HDMI series depends on the HDMI blk-ctrl ([1] in this cover
letter), which in turn depends on the GPCv2 i.MX8MP support series ([1]
in the HDMI blk-ctrl cover letter), which should apply cleanly or with
minimal fuzz to 5.18-rc1.

Regards,
Lucas


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
