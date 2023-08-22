Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B511FEE49A4
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 14:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4hvHGl/SpB8RtBOL6OwEL48rYRdCc321QSN6NZ8mm0=; b=eIZVc5ifc+wDrz
	AICy6XLmuZlJu9838iw99GYbAcIzcJirLWePy48NxiPWvPLOAKj54JhSRTX9kyRqxC3G2ETFivzat
	TSo/pWgugGxSaalffbiq9kj7a4Hw6jhlEi+dWw/pJpC1BBsXaLlNI80fTHclzmeCjQRljYwqzc7Rt
	DWhUzQlT3TZT/XG4Y+OKffb+wtB98q2F8dKL/YZJsjf6evXRHbxqCWvXuWyYogiJYvTbP++FLE6lX
	cfUFt74y0O22z1kLCzdJpGAHo5mFzqmisNI2Hgl1KgtsyAMIL0oKlHLSUBGdQdUKQE4f2fzzMzOXK
	lXTEoFN5apsrqkeCEjeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSDz-00GC6O-1Q;
	Tue, 22 Aug 2023 14:19:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSDv-00GC5F-18
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 14:19:13 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0BA5F899;
	Tue, 22 Aug 2023 16:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1692713873;
	bh=eD+izc8bUwwz2t3KEjxTSgEH3H8sNfBmfB49EaZJhI4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fzQYYjCGwoZc5rrGoqlGmNRMO1N2fR8QKjJLZifbtjn/Tjz8gCxqRhldk7tChUqdK
	 4SDNbfxoAZruiTdT5EQ7KZJ1V4QFdRFjtGQRPBWrCFd9uRkaXEfjPohgb1+4xMEY+g
	 IfbEtUmVOcXl+anMb9m+znZpREosOtYcv2UnX55I=
Date: Tue, 22 Aug 2023 17:19:18 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v4 0/3] drm: simplify support for transparent DRM bridges
Message-ID: <20230822141918.GB14396@pendragon.ideasonboard.com>
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
 <20230822141735.GA14396@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230822141735.GA14396@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_071911_533659_F5DAA12A 
X-CRM114-Status: GOOD (  32.59  )
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

On Tue, Aug 22, 2023 at 05:17:37PM +0300, Laurent Pinchart wrote:
> Hi Dmitry,
> 
> Thank you for the patches.
> 
> On Thu, Aug 17, 2023 at 05:55:13PM +0300, Dmitry Baryshkov wrote:
> > Supporting DP/USB-C can result in a chain of several transparent
> > bridges (PHY, redrivers, mux, etc). This results in drivers having
> > similar boilerplate code for such bridges.
> 
> What do you mean by transparent bridge here ? Bridges are a DRM concept,
> and as far as I can tell, a PHY isn't a bridge. Why does it need to be
> handled as one, especially if it's completely transparent ?
> 
> > Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
> > bridge can either be probed from the bridge->attach callback, when it is
> > too late to return -EPROBE_DEFER, or from the probe() callback, when the
> > next bridge might not yet be available, because it depends on the
> > resources provided by the probing device.
> 
> Can't device links help avoiding defer probing in those cases ?
> 
> > Last, but not least, this results in the the internal knowledge of DRM
> > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
> 
> Why so ? The PHY subsystem should provide a PHY, without considering
> what subsystem it will be used by. This patch series seems to me to
> actually create this DRM dependency in other subsystems,

I was wrong on this one, there are indeed existing drm_bridge instances
in drivers/usb/ and drivers/phy/. That's certainly not nice. Why do we
even need drm_bridge there, why can't the PHYs be acquired by their
consumers in DRM (and anywhere else) using the PHY API ?

> which I don't
> think is a very good idea. Resources should be registered in their own
> subsystem with the appropriate API, not in a way that is tied to a
> particular consumer.
> 
> > To solve all these issues, define a separate DRM helper, which creates
> > separate aux device just for the bridge. During probe such aux device
> > doesn't result in the EPROBE_DEFER loops. Instead it allows the device
> > drivers to probe properly, according to the actual resource
> > dependencies. The bridge auxdevs are then probed when the next bridge
> > becomes available, sparing drivers from drm_bridge_attach() returning
> > -EPROBE_DEFER.
> 
> I'm not thrilled :-( Let's discuss the questions above first.
> 
> > Proposed merge strategy: immutable branch with the drm commit, which is
> > then merged into PHY and USB subsystems together with the corresponding
> > patch.
> > 
> > Changes since v3:
> >  - Moved bridge driver to gpu/drm/bridge (Neil Armstrong)
> >  - Renamed it to aux-bridge (since there is already a simple_bridge driver)
> >  - Made CONFIG_OF mandatory for this driver (Neil Armstrong)
> >  - Added missing kfree and ida_free (Dan Carpenter)
> > 
> > Changes since v2:
> >  - ifdef'ed bridge->of_node access (LKP)
> > 
> > Changes since v1:
> >  - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge
> > 
> > Dmitry Baryshkov (3):
> >   drm/bridge: add transparent bridge helper
> >   phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
> >   usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE
> > 
> >  drivers/gpu/drm/bridge/Kconfig            |   9 ++
> >  drivers/gpu/drm/bridge/Makefile           |   1 +
> >  drivers/gpu/drm/bridge/aux-bridge.c       | 132 ++++++++++++++++++++++
> >  drivers/phy/qualcomm/Kconfig              |   2 +-
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  44 +-------
> >  drivers/usb/typec/mux/Kconfig             |   2 +-
> >  drivers/usb/typec/mux/nb7vpq904m.c        |  44 +-------
> >  include/drm/bridge/aux-bridge.h           |  19 ++++
> >  8 files changed, 167 insertions(+), 86 deletions(-)
> >  create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
> >  create mode 100644 include/drm/bridge/aux-bridge.h

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
