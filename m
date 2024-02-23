Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F9C3C5478C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 12:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb0LmbGDmfwa2Xw4CqezvDyQcjrUKVw5H82iZecncSk=; b=DxfHpLWxIWSqT1
	0+9bvgxVRJ/L1+O9UU7AEEkDZ+gC6oJvRgunt/EUCLzlpB9xJbOtGxfl4CoPRkC3RoFAzVJ0rbkdh
	pMcrWCiLP80LylMCgyzjARcl1XU1hswQYy9Lleqr1jDRc7bInIWG6YJ212YZMY/6mXVOaDHl8PBqy
	BrlFc57nk8y0uG1kvXcR3ZAsr7kEGhEeJXyfPOCjrT2/siuTjs3oDnoPGJ0Hv34U+qhFzOjacmrmd
	rHPTS2CJmJ1klz7HQ/B0/IER7mqdsTGgfa6/gmWR/JfbFuY024SdlN9swLWYSD/O+0Mn6Rf0uiFkM
	8UjbZ+LMqh1DJFOKNSOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUxr-00000009PBU-06oJ;
	Fri, 23 Feb 2024 12:47:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwe-00000009Omx-2ric
	for linux-phy@bombadil.infradead.org;
	Fri, 23 Feb 2024 12:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=1kTXhFTqC6gCFx4ZdWkowFT0qtdnA46u4M3D5HAWqM4=; b=D3Xi1ccXUEmJhrZEE/K3ioeiFY
	afHdylFVRa8wic/zuYsysw+I6laieDrFntPB3UmTGZPTEx3MkOC4b1Y34gL9BekrgnrpzSuIfbLBU
	rKzExOy42a0hHprQaS8VDuBcVAtmOrpDse8WOckLMG84s+XTpSKFkbKuKuC33ituEPwCFL9wkARF+
	Ln2rxW3N6Ls7pQPLL6mMwxNVG5VQEZ/GFHmqrGi/BNjr3ihWKW9lfg4FMadw34NIBo/Shz0J0IWmr
	41TD8G9ljxkZLn36dgcRZBRJ+ufVicWstbcijsOHXcdlRFJOY5gM6RvAn/ZxFXI8FFan9VWUqczDY
	2vYRDtSg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUwb-000000072pf-370Q
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 12:46:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 75C4E6342E;
	Fri, 23 Feb 2024 12:46:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EAACC43330;
	Fri, 23 Feb 2024 12:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708692372;
	bh=D8T1iuzJvdgAM8BRFbh+hcm3BNH2Qr3Lwn/NyFiXNCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KGyzFhm7ILcP3GXTrYTNj37Jh2zhruTwranObf38pQndYH7SSUnzadWU1wxvtVqj0
	 qTGEmV4Z32EIlEq08c7XGJWna2x3lkMwtjveIcgiZzFHU7xsYgbwwdTwGuHnX3OXST
	 D1RXLNWq7+TUq2rxjavltUsvelEuCedCo/UgMgiOBANfVyo8HOL+zEYG5v9759klGd
	 XzGpmYxdh5qbOaiVl0PTN47io8YGapFWIoQRRXww6R3c5dEImt6XFTlmI66N5sPwyv
	 pNjksVmglMRXjR1DsnofXknnuHe1WXJvOO0RcaQUuLlURH0OKARgmF2OmmZCK5jnyA
	 DXYjaTvKn/lDA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1rdUwR-000000002kC-3nOA;
	Fri, 23 Feb 2024 13:46:15 +0100
Date: Fri, 23 Feb 2024 13:46:15 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/6] drm/bridge: aux-hpd: separate allocation and
 registration
Message-ID: <ZdiTlwTOCROGD_AY@hovoldconsulting.com>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
 <20240217150228.5788-3-johan+linaro@kernel.org>
 <CAA8EJpoxe8BmyFqMC5yrqdx-Sx2VR_2gT3x6WT9MyhdLuw+xmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpoxe8BmyFqMC5yrqdx-Sx2VR_2gT3x6WT9MyhdLuw+xmA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_124626_039554_7704FED0 
X-CRM114-Status: GOOD (  24.47  )
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

On Thu, Feb 22, 2024 at 10:57:07PM +0200, Dmitry Baryshkov wrote:
> On Sat, 17 Feb 2024 at 17:03, Johan Hovold <johan+linaro@kernel.org> wrote:
> >
> > Combining allocation and registration is an anti-pattern that should be
> > avoided. Add two new functions for allocating and registering an dp-hpd
> > bridge with a proper 'devm' prefix so that it is clear that these are
> > device managed interfaces.
> >
> >         devm_drm_dp_hpd_bridge_alloc()
> >         devm_drm_dp_hpd_bridge_add()
> >
> > The new interface will be used to fix a use-after-free bug in the
> > Qualcomm PMIC GLINK driver and may prevent similar issues from being
> > introduced elsewhere.
> >
> > The existing drm_dp_hpd_bridge_register() is reimplemented using the
> > above and left in place for now.
> >
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thanks for reviewing.

> Minor nit below.

> > diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
> > index c4c423e97f06..4453906105ca 100644
> > --- a/include/drm/bridge/aux-bridge.h
> > +++ b/include/drm/bridge/aux-bridge.h
> > @@ -9,6 +9,8 @@
> >
> >  #include <drm/drm_connector.h>
> >
> > +struct auxiliary_device;
> > +
> >  #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
> >  int drm_aux_bridge_register(struct device *parent);
> >  #else
> > @@ -19,10 +21,23 @@ static inline int drm_aux_bridge_register(struct device *parent)
> >  #endif
> >
> >  #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
> > +struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, struct device_node *np);
> > +int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev);
> 
> I had a pretty close idea during prototyping, but I ended up doing it
> as a single function for the following reasons:
> 
> First, this exports the implementation detail that internally the code
> uses an aux device.

That's not an issue. The opposite, with interfaces trying to do too much
and hide details from the developers so that they can no longer reason
about what is going on, is a real problem though.

> Also, by exporting the aux device the code becomes less type-safe. By
> mistake one can call devm_drm_dp_hpd_bridge_add() on any aux device,
> which is not necessarily the HPD bridge.

No. First, that is currently not even an issue either as the
registration interface is safe to use with any aux device.

Second, if you cared about about type-safety you wouldn't have used a
struct device pointer for drm_aux_hpd_bridge_notify() which you back
cast to an aux device.

> I'd prefer to see an opaque device-specific structure instead. WDYT?

That should have been there from the start. But I'm not interested in
cleaning up this mess beyond what is minimally required to fix the
regressions it caused.

This can be reworked for 6.9 or later.

> >  struct device *drm_dp_hpd_bridge_register(struct device *parent,
> >                                           struct device_node *np);
> >  void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
