Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B28C71153
	for <linux-phy@archiver.kernel.org>; Mon, 28 Aug 2023 22:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+WIBk3k38EsAu9r/1XpPF38m95CayXRg5v4vtlIUqo=; b=wSZMhK7/zTgK5Z
	SyoNPkmCGXuXzQf/hgEw683ZLuLArkA8/psKrtuTsX3Op4+f3fHI44Fsx5YXXA+M2Pl1WwvEO7U2x
	SQt1ygDW76THwpCORf/UtKwLJZvTlmNa43NfMTEcq6UeBh79YKvvyWCN9Lgc0k8GCBWW17YBjNm/l
	f7zt4ahYRI85rNLuvBL2D09Xcr4jMsdGjH7m1IfZEW2F/H+d4nWHcCv5/QoErONaqyyxiwpOUaXI0
	Wk1Fxjcadw6D7/sQ2dRfUunFNQ8L9O7TElmpy1bGkE6Codwc81CZ0Sjpzy6pFH2WwSZshpsXhn6i9
	EUPhH7vs+TtyPOlQMZxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qakiy-00ANM4-0S;
	Mon, 28 Aug 2023 22:28:44 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qakiv-00ANLL-20
	for linux-phy@lists.infradead.org;
	Mon, 28 Aug 2023 22:28:43 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-d7481bc4d6fso3690449276.2
        for <linux-phy@lists.infradead.org>; Mon, 28 Aug 2023 15:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693261719; x=1693866519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xKUwU2oEeYyr/7CXpC4DFOlZ+UQetO3s7tPsVqBorGM=;
        b=lm1mc2LEXeE87zKgBNR7vU8dr9YWEbNheNquI057YL9JaTTE6USc+e203lJ8uPxiTB
         9MjI0fKa7jTI0b0Y6Oxh1XWfIxIQL8gPtHZECfFu7HYQttiDXPOpnii3QQiU3mBl9FAr
         Rs/CNMus90mkQ3tqVC4KjkruJ+IpB+BG0IH8OHNOUDb/rMRiaMKERKXpsJ94JhDhsjMl
         IdkJN19p3C+qKsCnHR57b3SILv1BRPy4AOvoND5xwms2T4hWncddRjIBk55pjxXJvo2Z
         w2KS35RYOO9q4ra6snWTjw9yd4bxp63vQWvWPQNwn4Qz/KyY3p/QxceUgCaSIqa4Sl/M
         laeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693261719; x=1693866519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xKUwU2oEeYyr/7CXpC4DFOlZ+UQetO3s7tPsVqBorGM=;
        b=Afi/etb1JGvjucwbFu3z47/8YDtzjQW0MLvy+2L6vI21Ej5Fc78kKRRy+6RrdqHQct
         TdXT5GX+Os4JX19TAZA2KOnWAFRfDuVcOJwsWhavIwVSOhyDxbrCsgE3h2tzAcePwSaN
         fuGIfUM7ZmjOI8teM5oBrUQ1ea2bDmZ0E0YkMXT/CXErImGvWCvgB77MXXhWkJscJ0AA
         Mh7NGfkKajjGc6Y+l2Uylpuf7LlBFC3JaSVwUDXJq0l0i5CUJRZSStM2k/2akaMVRZxQ
         eAWbQPxSPK/ROk21IJWDBABXpbVor1BqTXuoM4VY2w0bkE0O2MrCazMwK0ZRgCqdQTjk
         +skw==
X-Gm-Message-State: AOJu0YzSLznL0WrTAcsj4UOFr1lzY0EYAiKeyiEvWTG8ZwZYRdtUpOVC
	JBefvS+p/87wMl/Yg5u7SfHuGDpap4thHDp/q/DwQA==
X-Google-Smtp-Source: AGHT+IFJ9fvM0Zh6eTI95J9VlO3o1j21u36vUyYW5XG2cUNLfH+h3qmRhBVe/6MmbjJIHkuNkeDNLCQRQWaZNqI8OJA=
X-Received: by 2002:a25:d2c1:0:b0:d74:6681:5c26 with SMTP id
 j184-20020a25d2c1000000b00d7466815c26mr27113880ybg.16.1693261719097; Mon, 28
 Aug 2023 15:28:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
 <20230822141735.GA14396@pendragon.ideasonboard.com> <20230822141918.GB14396@pendragon.ideasonboard.com>
In-Reply-To: <20230822141918.GB14396@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 01:28:28 +0300
Message-ID: <CAA8EJpoAEyL3G41JPEV28siL=rVE+N5G7EedG4_up_oT0KKTPA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20230828_152841_698231_D81D5A3B 
X-CRM114-Status: GOOD (  44.91  )
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

On Tue, 22 Aug 2023 at 17:19, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Tue, Aug 22, 2023 at 05:17:37PM +0300, Laurent Pinchart wrote:
> > Hi Dmitry,
> >
> > Thank you for the patches.
> >
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
> >
> > > Last, but not least, this results in the the internal knowledge of DRM
> > > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
> >
> > Why so ? The PHY subsystem should provide a PHY, without considering
> > what subsystem it will be used by. This patch series seems to me to
> > actually create this DRM dependency in other subsystems,
>
> I was wrong on this one, there are indeed existing drm_bridge instances
> in drivers/usb/ and drivers/phy/. That's certainly not nice. Why do we
> even need drm_bridge there, why can't the PHYs be acquired by their
> consumers in DRM (and anywhere else) using the PHY API ?

During the design of the DT bindings for DisplayPort on these
platforms we have evaluated different approaches. First approach was
to add a special 'displayport' property to the USB-C connector,
pointing to DP. This approach was declined by DT maintainers. Then we
tried different approaches towards building connection graphs between
different parties. Finally it was determined that the easiest way is
to describe all USB-C signal paths properly. SS lines start at the
PHY, then they pass through different muxes and retimers and then end
up at the usb-c-connector. SS lines are muxed by the USB+DP PHY and
switched between USB-3 (SuperSpeed) and DP.

Then comes the question of binding everything together from the DRM
point of view. The usb-c-connector is the logical place for the last
drm_bridge, unfortunately. We need to send HPD events from the TypeC
port driver (either directly or from the altmode driver). Then either
we have to point the connector->fwnode to the DP port or build the
full drm_bridge chain. Second path was selected, as it fits better
into the overall framework.

>
> > which I don't
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
> >
> > > Proposed merge strategy: immutable branch with the drm commit, which is
> > > then merged into PHY and USB subsystems together with the corresponding
> > > patch.
> > >
> > > Changes since v3:
> > >  - Moved bridge driver to gpu/drm/bridge (Neil Armstrong)
> > >  - Renamed it to aux-bridge (since there is already a simple_bridge driver)
> > >  - Made CONFIG_OF mandatory for this driver (Neil Armstrong)
> > >  - Added missing kfree and ida_free (Dan Carpenter)
> > >
> > > Changes since v2:
> > >  - ifdef'ed bridge->of_node access (LKP)
> > >
> > > Changes since v1:
> > >  - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge
> > >
> > > Dmitry Baryshkov (3):
> > >   drm/bridge: add transparent bridge helper
> > >   phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
> > >   usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE
> > >
> > >  drivers/gpu/drm/bridge/Kconfig            |   9 ++
> > >  drivers/gpu/drm/bridge/Makefile           |   1 +
> > >  drivers/gpu/drm/bridge/aux-bridge.c       | 132 ++++++++++++++++++++++
> > >  drivers/phy/qualcomm/Kconfig              |   2 +-
> > >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  44 +-------
> > >  drivers/usb/typec/mux/Kconfig             |   2 +-
> > >  drivers/usb/typec/mux/nb7vpq904m.c        |  44 +-------
> > >  include/drm/bridge/aux-bridge.h           |  19 ++++
> > >  8 files changed, 167 insertions(+), 86 deletions(-)
> > >  create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
> > >  create mode 100644 include/drm/bridge/aux-bridge.h
>
> --
> Regards,
>
> Laurent Pinchart



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
