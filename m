Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E81AC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  6 May 2022 08:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVxKAqG4bzHCeRHGwzEkwG3LUurgG7oZkm7PVgug2Qs=; b=zs7UOfxo9AwRw0
	dc3s/7b4Kp/x4xKro2VxJJqlToRgTITCZaz3zZnQlkFs73CYG4Bqj5c+iLoliOm+MENRhQmQweiM2
	k+qqtZqAWzyvXH+kyoPPAgM9kLvW6eAGdYPzLztFhV1VnAb5wfbdtk3uNiwZ15SjZRdJLUZ4TlQGe
	owWkmliDVKRBOYggQWohxrRNX0bf3Ko1igncFDIE8OrJCrZ4SGYnFa03nEBtPFDih+uNwNaNsWIMr
	QHyEjwL01uF6iCMez3XvTVJn3lxR/cku3HENAQS5IxrNPjs/Ob5DicmsixSlIXrzIfIo2p3oop63m
	In3yV1Da7GmK+CA5JdTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmtit-002DKK-JU; Fri, 06 May 2022 08:54:03 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmtih-002DEN-GD; Fri, 06 May 2022 08:53:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 64CF7FB03;
 Fri,  6 May 2022 10:53:45 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pWt2Bo0FRgjE; Fri,  6 May 2022 10:53:44 +0200 (CEST)
Date: Fri, 6 May 2022 10:53:39 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, krzk@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com,
 robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
 jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
 daniel@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm
Subject: Re: [PATCH resend v8 1/5] drm/bridge: nwl-dsi: Set PHY mode in
 nwl_dsi_mode_set()
Message-ID: <YnTiEw5Drg4uHHJw@qwark.sigxcpu.org>
References: <20220419010852.452169-1-victor.liu@nxp.com>
 <20220419010852.452169-2-victor.liu@nxp.com>
 <YmLkv4PYsi+XiFr5@qwark.sigxcpu.org>
 <538339829534d8ef10c68198016d198a9ec037fc.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <538339829534d8ef10c68198016d198a9ec037fc.camel@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_015351_735671_445C6F9D 
X-CRM114-Status: GOOD (  24.36  )
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

Hi Liu,
On Fri, Apr 29, 2022 at 08:30:43PM +0800, Liu Ying wrote:
> Hi,
> =

> On Fri, 2022-04-22 at 19:24 +0200, Guido G=FCnther wrote:
> > Hi,
> > On Tue, Apr 19, 2022 at 09:08:48AM +0800, Liu Ying wrote:
> > > The Northwest Logic MIPI DSI host controller embedded in i.MX8qxp
> > > works with a Mixel MIPI DPHY + LVDS PHY combo to support either
> > > a MIPI DSI display or a LVDS display.  So, this patch calls
> > > phy_set_mode() from nwl_dsi_mode_set() to set PHY mode to MIPI DPHY
> > > explicitly.
> > > =

> > > Cc: Guido G=FCnther <agx@sigxcpu.org>
> > > Cc: Robert Chiras <robert.chiras@nxp.com>
> > > Cc: Martin Kepplinger <martin.kepplinger@puri.sm>
> > > Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> > > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > > Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> > > Cc: Jonas Karlman <jonas@kwiboo.se>
> > > Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: NXP Linux Team <linux-imx@nxp.com>
> > > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> =

> Hope this patch won't fall through the cracks.
> Can someone please apply it to drm-misc-next? Robert?

Applied to drm-misc-next.
Cheers,
 -- Guido

> =

> Thanks,
> Liu Ying
> =

> > > ---
> > > v7->v8:
> > > * Resend with Andrzej's and Jernej's mail addressed updated.
> > > =

> > > v6->v7:
> > > * No change.
> > > =

> > > v5->v6:
> > > * Rebase the series upon v5.17-rc1.
> > > * Set PHY mode in ->mode_set() instead of ->pre_enable() in the
> > > nwl-dsi
> > >   bridge driver due to the rebase.
> > > * Drop Guido's R-b tag due to the rebase.
> > > =

> > > v4->v5:
> > > * No change.
> > > =

> > > v3->v4:
> > > * No change.
> > > =

> > > v2->v3:
> > > * No change.
> > > =

> > > v1->v2:
> > > * Add Guido's R-b tag.
> > > =

> > >  drivers/gpu/drm/bridge/nwl-dsi.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/bridge/nwl-dsi.c
> > > b/drivers/gpu/drm/bridge/nwl-dsi.c
> > > index d5945501a5ee..85bab7372af1 100644
> > > --- a/drivers/gpu/drm/bridge/nwl-dsi.c
> > > +++ b/drivers/gpu/drm/bridge/nwl-dsi.c
> > > @@ -666,6 +666,12 @@ static int nwl_dsi_mode_set(struct nwl_dsi
> > > *dsi)
> > >  		return ret;
> > >  	}
> > >  =

> > > +	ret =3D phy_set_mode(dsi->phy, PHY_MODE_MIPI_DPHY);
> > > +	if (ret < 0) {
> > > +		DRM_DEV_ERROR(dev, "Failed to set DSI phy mode: %d\n",
> > > ret);
> > > +		goto uninit_phy;
> > > +	}
> > > +
> > >  	ret =3D phy_configure(dsi->phy, phy_cfg);
> > >  	if (ret < 0) {
> > >  		DRM_DEV_ERROR(dev, "Failed to configure DSI phy: %d\n",
> > > ret);
> > =

> > I can't currently test this but it still looks good so
> > =

> > Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>
> > =

> > Cheers,
> >  -- Guido
> > =

> > > -- =

> > > 2.25.1
> > > =

> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
