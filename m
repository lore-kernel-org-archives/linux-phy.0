Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27D50EEAA77
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDPEVs53qoVFK8YLLLt55G14iNDfR351DRCo0rb7ZLM=; b=2QcDlS1p0Mtl+H
	3aO1/4zueySCz3HeCgZNSS184SlICns46AhQD9bs5DUd/2lZYeDZ3L3eM5mnITi7E9gBfffjSYzgB
	IlHlyzdlrHsJXAo6mGpb2WcHN5hfP5FguwrXKKx01OuPw5f1WJzk+bmAPJnrgY/YSMZNrb96T++G8
	kU7mrfS3QAEOgI3JgLx8T9ACD/Rt5FqitwzPBvvbzmPdcvouaQOX6fM00gFgCivtMugRGHLNphZ0m
	BM/shhyddRARfE0DAyW9swHr+8n5S+y8hNx/kP4/DMBRCDK0i2+Pao9nGWeuiJXjiXiu9v8rXNp/L
	QbXDHxEH7vF0DBVqRKdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgu87-009Kbi-2J;
	Thu, 14 Sep 2023 21:44:07 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgu84-009KbM-1j
	for linux-phy@lists.infradead.org;
	Thu, 14 Sep 2023 21:44:06 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1B570DE5;
	Thu, 14 Sep 2023 23:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1694727750;
	bh=Ls6Iqpj4d+iGrGYu3xYKdLqh+5iuBjo1ZErfbO+0uUc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vrlss3I858TYlhOLMdeM85lhnvtnyVS7sPPwsOqa+Kb8N/JxxiCff0loPMEIDgw62
	 1nM6YuwsRts4UkZ0MZkjY9DqerhRGs9JvBtp8J29XNHGIc7EiIjUD3PuM5c33b6E9m
	 R1gnv8htcFXotv/S0J6hCiF2TNumyyDdc7wZeUsw=
Date: Fri, 15 Sep 2023 00:44:16 +0300
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
Message-ID: <20230914214416.GB11890@pendragon.ideasonboard.com>
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
 <20230822141735.GA14396@pendragon.ideasonboard.com>
 <CAA8EJpp_FYOKHziHOWF6E1RTkHEJ8oXXH90EDmJbLG1UDO1ofA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpp_FYOKHziHOWF6E1RTkHEJ8oXXH90EDmJbLG1UDO1ofA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_144404_745046_7B4B44CB 
X-CRM114-Status: GOOD (  41.49  )
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

Hi Dmitry,

On Mon, Sep 04, 2023 at 12:02:18AM +0300, Dmitry Baryshkov wrote:
> On Tue, 22 Aug 2023 at 17:17, Laurent Pinchart wrote:
> > On Thu, Aug 17, 2023 at 05:55:13PM +0300, Dmitry Baryshkov wrote:
> > > Supporting DP/USB-C can result in a chain of several transparent
> > > bridges (PHY, redrivers, mux, etc). This results in drivers having
> > > similar boilerplate code for such bridges.
> >
> > What do you mean by transparent bridge here ? Bridges are a DRM concept,
> > and as far as I can tell, a PHY isn't a bridge. Why does it need to be
> > handled as one, especially if it's completely transparent ?
> >
> > > Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
> > > bridge can either be probed from the bridge->attach callback, when it is
> > > too late to return -EPROBE_DEFER, or from the probe() callback, when the
> > > next bridge might not yet be available, because it depends on the
> > > resources provided by the probing device.
> >
> > Can't device links help avoiding defer probing in those cases ?
> 
> It looks like both Neil and I missed this question.

And I missed this reply before replying to Neil and pointing to device
links again :-)

> Two items wrt devlinks. First, I view them as a helper. So if one
> disables the devlinks enforcement, he'd still get a deferral loop.

That may be true, but I don't think that's a compelling argument. If one
disables components meant to avoid probe deferral, they should expect
probe deferral :-)

> Second, in this case we can not enforce devlinks (or return
> -EPROBE_DEFER from the probe() function) because the next bridge is
> not yet available when the main driver probes. Unfortunately bridges
> are allocated in the opposite order. So, using AUX devices helps us to
> break it. Because first typec mux/retimer/switch/etc devices probe (in
> the direction from the typec source to the typec port). Then DRM
> bridge devices are probed starting from the end of the chain
> (connector) to the DP source (root DP bridge/controller).

I'm not too familiar with the drivers involved in the typec chain. Do
you mean that the sink driver needs to get hold of the source device at
probe time, deferring probe if the source is not available ? Does the
driver handler the USB connector need to do the same ? I'm looking at
the qcom_pmic_typec driver and I don't immediately see where it would
defer probing if its source isn't available, but I may well be missing
something.

> > > Last, but not least, this results in the the internal knowledge of DRM
> > > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
> >
> > Why so ? The PHY subsystem should provide a PHY, without considering
> > what subsystem it will be used by. This patch series seems to me to
> > actually create this DRM dependency in other subsystems, which I don't
> > think is a very good idea. Resources should be registered in their own
> > subsystem with the appropriate API, not in a way that is tied to a
> > particular consumer.
> >
> > > To solve all these issues, define a separate DRM helper, which creates
> > > separate aux device just for the bridge. During probe such aux device
> > > doesn't result in the EPROBE_DEFER loops. Instead it allows the device
> > > drivers to probe properly, according to the actual resource
> > > dependencies. The bridge auxdevs are then probed when the next bridge
> > > becomes available, sparing drivers from drm_bridge_attach() returning
> > > -EPROBE_DEFER.
> >
> > I'm not thrilled :-( Let's discuss the questions above first.
> 
> Laurent, please excuse me for the ping. Any further response from your side?
> I'd like to send the next iteration of this patchset.
> 
> > > Proposed merge strategy: immutable branch with the drm commit, which is
> > > then merged into PHY and USB subsystems together with the corresponding
> > > patch.

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
