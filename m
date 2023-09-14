Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8FDFEEAA7A
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 22:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TVBt9dytAbzehK2/j71FyoMdFS2IFAxzvxMCfokFOA=; b=QHJoGKzP9gcFsR
	LxOCwMrRYQ1jf6ql1WYarqWeB+tFGhif+GMfMr7luB+C7ew1C66Wr5S2RXIySS8SgMGUrILF772Pp
	KX95PR0c7klI9wGlH2LaPMeKT39eu29Zx/vNZC8oAOyKXfkDOMd5t4VXtYrceIUhIBYw2goTKNFsa
	E7PHVK1se06tew7YqSTqLL+kgK3JyeaWyfswZdfxmCR0DipZNBbHZYjkReenqg4/pqjj7SKrepSZC
	2MQYyteriFVlALP8yluWFdLhBZEUcwDSB+iAg2U1LGFOdnyJVC6YqLpUIPmVlw8HEUy+XsEfKmdAw
	hY2hlevW+2kR2uYypnug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qguOl-009LFM-2s;
	Thu, 14 Sep 2023 22:01:19 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qguOi-009LEf-1Q
	for linux-phy@lists.infradead.org;
	Thu, 14 Sep 2023 22:01:18 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1d1b55882a4so756663fac.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Sep 2023 15:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694728872; x=1695333672; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iJltS85I38KEiAoHx6Tz1cZkHVUVHwMiAdBjIEVuJGs=;
        b=ROy9p2ied52aY8hbdj7dEJfw0No32hyz/gkYnCeh1QTVm09Ng1o6DHu3nPdVH8u8PO
         RIAmQntXigk2KDLzCD2saYumXTnmnDaYdrsijYv0PqWIQaallPVUYjddIA4yfMtUsuOM
         8EtRuJVimRFzc/pBbFineRVmLIHN0BxkQf7XJAHiXxnzM3VU68HnAqqnwrVTXkCbc6Xs
         fe9TAitUWqkQC5Fow8wQplLy8szVYPPClYNPZ9GzJi5zzrwbzZEv56mRloUw7WXoy0Ct
         UQIBIC/OiZq/p7oTpkgNeAbctEQLsItKt4NZTXMGP164JzF0QGtUWtwR+T5GtOtg8d5B
         K//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694728872; x=1695333672;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iJltS85I38KEiAoHx6Tz1cZkHVUVHwMiAdBjIEVuJGs=;
        b=hNCes/HXlgfBRKd8YHEcvaw3yNo/25D04IbgdCvlmAMum2ZIUf4y9obRrBsKrpR3GH
         eKryNHPE/CAIfuEP/DNUP+s1kODSLghib7RF61KdG70n4LzJmmoh7bPiKVyihjP3hiB4
         WyuAOsPxzwEdB3SXiSLEknTYLyM5A0vnbcZW0qazTK0KlBDVHdxR5TNBTLYNi+WkAx8u
         7GF46D9zug42scs3bjrqRfx9NVff5HNCs38OE/u3dstItqTHy1heLfHY4fHF7/FlQ/iM
         EMMHYQA1F6StGrIstwRX3QlwadLO0I6nPan1z/7BZVGkjNFFNOI+1Xcm5pyEN6RZBTJb
         aHeA==
X-Gm-Message-State: AOJu0YwpXvasvuRh3HamcV+eRjWLGxiC+/q/6iwrzVVIm9K1LAof87ot
	y45GMWo7889vDcb9ZIiPOxx1ejVHmzHDCutWhOVwYw==
X-Google-Smtp-Source: AGHT+IFX7NWOtRIfFrp1fdFuHGHm16plxoB4/Psy2d9IOFYk6s9puCcLtsP+cJFV81IYzSziBe2I/frWdyl2sihUWsI=
X-Received: by 2002:a05:6870:e98b:b0:1d5:8f05:39c1 with SMTP id
 r11-20020a056870e98b00b001d58f0539c1mr7574635oao.15.1694728872154; Thu, 14
 Sep 2023 15:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
 <20230822141735.GA14396@pendragon.ideasonboard.com> <CAA8EJpp_FYOKHziHOWF6E1RTkHEJ8oXXH90EDmJbLG1UDO1ofA@mail.gmail.com>
 <20230914214416.GB11890@pendragon.ideasonboard.com>
In-Reply-To: <20230914214416.GB11890@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Sep 2023 01:01:00 +0300
Message-ID: <CAA8EJprBGrG0qMO3yrPxcPZu8kqcOZNw6htZZSKutYfFcZxBfQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] drm: simplify support for transparent DRM bridges
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_150116_497394_94A62189 
X-CRM114-Status: GOOD (  48.89  )
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

On Fri, 15 Sept 2023 at 00:44, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Dmitry,
>
> On Mon, Sep 04, 2023 at 12:02:18AM +0300, Dmitry Baryshkov wrote:
> > On Tue, 22 Aug 2023 at 17:17, Laurent Pinchart wrote:
> > > On Thu, Aug 17, 2023 at 05:55:13PM +0300, Dmitry Baryshkov wrote:
> > > > Supporting DP/USB-C can result in a chain of several transparent
> > > > bridges (PHY, redrivers, mux, etc). This results in drivers having
> > > > similar boilerplate code for such bridges.
> > >
> > > What do you mean by transparent bridge here ? Bridges are a DRM concept,
> > > and as far as I can tell, a PHY isn't a bridge. Why does it need to be
> > > handled as one, especially if it's completely transparent ?
> > >
> > > > Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
> > > > bridge can either be probed from the bridge->attach callback, when it is
> > > > too late to return -EPROBE_DEFER, or from the probe() callback, when the
> > > > next bridge might not yet be available, because it depends on the
> > > > resources provided by the probing device.
> > >
> > > Can't device links help avoiding defer probing in those cases ?
> >
> > It looks like both Neil and I missed this question.
>
> And I missed this reply before replying to Neil and pointing to device
> links again :-)
>
> > Two items wrt devlinks. First, I view them as a helper. So if one
> > disables the devlinks enforcement, he'd still get a deferral loop.
>
> That may be true, but I don't think that's a compelling argument. If one
> disables components meant to avoid probe deferral, they should expect
> probe deferral :-)

There is a difference between bare probe deferral and deferral boot
loop. In this case this causes a loop, since deferred devices get
reprobed after devices being created/removed (which happens during DP
controller deferral).
I'm fine with the occasional probe deferrals, especially if they are a
result of the user's misdeed. But the deferral cycle shows that there
is an issue in the device / driver structure.

>
> > Second, in this case we can not enforce devlinks (or return
> > -EPROBE_DEFER from the probe() function) because the next bridge is
> > not yet available when the main driver probes. Unfortunately bridges
> > are allocated in the opposite order. So, using AUX devices helps us to
> > break it. Because first typec mux/retimer/switch/etc devices probe (in
> > the direction from the typec source to the typec port). Then DRM
> > bridge devices are probed starting from the end of the chain
> > (connector) to the DP source (root DP bridge/controller).
>
> I'm not too familiar with the drivers involved in the typec chain. Do
> you mean that the sink driver needs to get hold of the source device at
> probe time, deferring probe if the source is not available ? Does the
> driver handler the USB connector need to do the same ? I'm looking at
> the qcom_pmic_typec driver and I don't immediately see where it would
> defer probing if its source isn't available, but I may well be missing
> something.

This is well hidden via the tcpm_register_port() ->
typec_register_port() callchain. It checks (among other things) for
the mux and retimer being present and probed.
Same story applies to the retimers, which require 'previous' USB-C
switch to be probed.

So there is a dependency chain of qcom_pmic_typec -> nb7vpq904m ->
qmp_combo_phy.

For DRM bridge drivers I'd like to have the opposite dependency chain
(so that the bridge knows that it can attach the next bridge):
qmp_combo_phy -> nb7vpq904m -> qcom_pmic_typec.

This patchset solves this by splitting drm bridges to separate aux
drivers. So the resulting chain is:

qmp_combo_phy.bridge -> nb7vpq904m.bridge. -> qcom_pmic_typec ->
nb7vpq904m (main) -> qmp_combo_phy (main)

>
> > > > Last, but not least, this results in the the internal knowledge of DRM
> > > > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
> > >
> > > Why so ? The PHY subsystem should provide a PHY, without considering
> > > what subsystem it will be used by. This patch series seems to me to
> > > actually create this DRM dependency in other subsystems, which I don't
> > > think is a very good idea. Resources should be registered in their own
> > > subsystem with the appropriate API, not in a way that is tied to a
> > > particular consumer.
> > >
> > > > To solve all these issues, define a separate DRM helper, which creates
> > > > separate aux device just for the bridge. During probe such aux device
> > > > doesn't result in the EPROBE_DEFER loops. Instead it allows the device
> > > > drivers to probe properly, according to the actual resource
> > > > dependencies. The bridge auxdevs are then probed when the next bridge
> > > > becomes available, sparing drivers from drm_bridge_attach() returning
> > > > -EPROBE_DEFER.
> > >
> > > I'm not thrilled :-( Let's discuss the questions above first.
> >
> > Laurent, please excuse me for the ping. Any further response from your side?
> > I'd like to send the next iteration of this patchset.
> >
> > > > Proposed merge strategy: immutable branch with the drm commit, which is
> > > > then merged into PHY and USB subsystems together with the corresponding
> > > > patch.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
