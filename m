Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B86E9C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 18:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUfrTsSXTFus77TJvwRx31gPmwskSL0pNxe6kyM+j6Y=; b=4C6RQ9ZSAk3BNB
	pXUWaX/UU62OVvrxahP5+a/UwkAfXs9PZNR3bJd0vPxHPeBOAqaJfUJ38k+nl0768Dhn972KcfsvV
	TcWfuomsYx2QHoH7j/ZCpWT4WjFyaPD2gmnpuIsvdd/uRAmZiLkBlx+81+tw+6MpoZcaLfDYawdpv
	b/7FAj25ADaR+vtIEgmyIIYRmtsIj1GrU6FK1emKgyrjJPcX4QsjEtxnQ9DQrmqw+bKBlcmqX1XbO
	V7UXGZrhRwb7zcUnW1uhoECRLsH6kTVY8k0P8dJ3XwadIYi/ACoOdYlyIBZRBQx1wVn0h2roYGY+7
	Qkj8YtthraoIeDI17mSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5s20-002phL-1E;
	Wed, 22 Nov 2023 18:33:00 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5s1x-002pfp-2L
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 18:32:59 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5ca11922cedso490767b3.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 10:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700677974; x=1701282774; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9evLgerhPexVHQkBogiwmvf7m2BOF4vHI4aXwGPPVJ4=;
        b=NseBq3xY+3jBQdOEqE+1arDa49MprKJoymZG+jHTZY1K7EV4Upnra7dg1WLzF1Vk6k
         nIy5YyonBSP5GhG7C+tYBWuMD3DVsdbAVA+a8S9nHVbK1NAPFMu1lriUvXTL6co1nZwO
         Qm+Z/5zdltnyMBG5e0c227cf0rwDKnqGeIA+3aNGIe6zjIxlyp71wP6rbz4MovovG+E7
         zXxdc8ZSl9RtS1LcrsKygT68Wau+RqxMLrEiSODO8VzmMBhTm6/z7AWqMVLyFxUQwHBc
         1WEsPjxnWioKPAGxXyNUyzVc1egdCBXlXPwL5WrGVW76zgVLUYRQRvxUrYOJZcymoWj3
         Y9+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700677974; x=1701282774;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9evLgerhPexVHQkBogiwmvf7m2BOF4vHI4aXwGPPVJ4=;
        b=RxCc2ETKbHHIang5V/PzdgJ/eJrksOaOEoDwreS7aXQFHLUugcccpbMpg6DgoHBvzt
         Hl+MIzSET8aFmK94cqhqd4wuAb+Rq/xtyQwhok/kbH73b0gW6JGfVhpywELVcpf7Mire
         IOYuT28EwAoFKdYO8Wqrt+M+KoBz46FhH7uamacYfRzx4YRoXZ9NdkPJBc3XcoozK7oT
         k5p8k4FKWplnibM2gRafaDxxETbPWmOOxgQOhymIWf7Xa5DxmIopIHSsqzb3eFgPVvuK
         m5YvzCPJCFu0PaosYee0CmeD7QttE3ypvId3FkjbzNzY394jIJZEQemAHxD+GeKK8Kt3
         mZDQ==
X-Gm-Message-State: AOJu0YyKdmsqJxfhKsSTWRrdkeNfsWSSnevdsiIygOWkbLEXfVq6nBhR
	pBSRU8vutSJY3M+lclF0y0D21HfAYwEksDzMOIhG5g==
X-Google-Smtp-Source: AGHT+IHyhJSWiia3K3sWSqzs9R4jjq04Y+WIUYIc2Ttxdvr+Ys8bPby4u0SJWAcMZONs2xz0YHXI4buzX0cWSLoaSkQ=
X-Received: by 2002:a0d:f245:0:b0:5c9:d64e:68c7 with SMTP id
 b66-20020a0df245000000b005c9d64e68c7mr3050822ywf.35.1700677974461; Wed, 22
 Nov 2023 10:32:54 -0800 (PST)
MIME-Version: 1.0
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org> <7a4a6698-0954-4225-82ff-02dd13bd64bb@linux.dev>
In-Reply-To: <7a4a6698-0954-4225-82ff-02dd13bd64bb@linux.dev>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 20:32:45 +0200
Message-ID: <CAA8EJpoqfwyVYQy17QAOtrGr1AGzFkpKrOM5_F58=A95PoYncQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] drm: simplify support for transparent DRM bridges
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_103257_766253_F87535A7 
X-CRM114-Status: GOOD (  38.21  )
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

On Wed, 22 Nov 2023 at 18:03, Sui Jingfeng <sui.jingfeng@linux.dev> wrote:
>
> Hi,
>
>
> On 2023/11/4 07:03, Dmitry Baryshkov wrote:
> > Supporting DP/USB-C can result in a chain of several transparent
> > bridges (PHY, redrivers, mux, etc). All attempts to implement DP support
> > in a different way resulted either in series of hacks or in device tree
> > not reflecting the actual hardware design. This results in drivers
> > having similar boilerplate code for such bridges.
>
> Please improve the written,  "resulted" -> "yield" ?
>
> > Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
> > bridge can either be probed from the bridge->attach callback, when it is
> > too late to return -EPROBE_DEFER, or from the probe() callback, when the
> > next bridge might not yet be available, because it depends on the
> > resources provided by the probing device. Device links can not fully
> > solve this problem since there are mutual dependencies between adjancent
> > devices.
> >
> > Last, but not least, this results in the the internal knowledge of DRM
>
> There is a duplicated "the" word in this sentence.
>
> As far as I can understand, nearly all of those troubles are because the display bridges
> drivers are designed as a kernel module(.ko) instead of making them as static link-able
> helpers. I means that a display bridge device can not work standalone, as it have to be
> used with a display controller. So a display bridge is just a slave device or a auxiliary
> device. My question is: if it can't works by itself, we probably shouldn't design them as
> kernel modules style. Am I correct?

No. This has nothing to do with the driver being a kernel module or built-in.

>
> > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
>
> Yeah, this indeed a problem.
>
> > To solve all these issues, define a separate DRM helper, which creates
> > separate aux device just for the bridge.
>
> I'm supporting you if want to solve all these problems, this is fine and thanks a lot.
> But I want to ask a question, now that you are solving these problems by creating separate
> devices, does this manner match the hardware design perfectly? which is the hardware units
> you newly created device is corresponding to?

Aux devices do not always follow the actual hardware internals. For
example, see the TI sn65dsi86 driver, which also uses aux devices to
split dependency and probing chains.

> > During probe such aux device
> > doesn't result in the EPROBE_DEFER loops. Instead it allows the device
> > drivers to probe properly, according to the actual resource
> > dependencies. The bridge auxdevs are then probed when the next bridge
> > becomes available, sparing drivers from drm_bridge_attach() returning
> > -EPROBE_DEFER.
>
> OK, as far as I can understand,  in order to solve the mentioned problem
> you are also retire the defer probe mechanism.

No, I'm not retiring the probe deferral mechanism. Instead I'm
splitting it into two chains. One going from the controller to the
usb-c connector for the signal flow, another going from the connector
back to the drm_encoder for the drm_bridge dependencies.

>
>
> > Changes since v5:
> >   - Removed extra semicolon in !DRM_AUX_HPD_BRIDGE stubs definition.
> >
> > Changes since v4:
> >   - Added documentation for new API (Sima)
> >   - Added generic code to handle "last mile" DP bridges implementing just
> >     the HPD functionality.
> >   - Rebased on top of linux-next to be able to drop #ifdef's around
> >     drm_bridge->of_node
> >
> > Changes since v3:
> >   - Moved bridge driver to gpu/drm/bridge (Neil Armstrong)
> >   - Renamed it to aux-bridge (since there is already a simple_bridge driver)
> >   - Made CONFIG_OF mandatory for this driver (Neil Armstrong)
> >   - Added missing kfree and ida_free (Dan Carpenter)
> >
> > Changes since v2:
> >   - ifdef'ed bridge->of_node access (LKP)
> >
> > Changes since v1:
> >   - Added EXPORT_SYMBOL_GPL / MODULE_LICENSE / etc. to drm_simple_bridge
> >
> > Dmitry Baryshkov (6):
> >    drm/bridge: add transparent bridge helper
> >    phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
> >    usb: typec: nb7vpq904m: switch to DRM_AUX_BRIDGE
> >    drm/bridge: implement generic DP HPD bridge
> >    soc: qcom: pmic-glink: switch to DRM_AUX_HPD_BRIDGE
> >    usb: typec: qcom-pmic-typec: switch to DRM_AUX_HPD_BRIDGE
> >
> >   drivers/gpu/drm/bridge/Kconfig                |  17 ++
> >   drivers/gpu/drm/bridge/Makefile               |   2 +
> >   drivers/gpu/drm/bridge/aux-bridge.c           | 140 +++++++++++++++
> >   drivers/gpu/drm/bridge/aux-hpd-bridge.c       | 164 ++++++++++++++++++
> >   drivers/phy/qualcomm/Kconfig                  |   2 +-
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  44 +----
> >   drivers/soc/qcom/Kconfig                      |   1 +
> >   drivers/soc/qcom/pmic_glink_altmode.c         |  33 +---
> >   drivers/usb/typec/mux/Kconfig                 |   2 +-
> >   drivers/usb/typec/mux/nb7vpq904m.c            |  44 +----
> >   drivers/usb/typec/tcpm/Kconfig                |   1 +
> >   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c |  41 +----
> >   include/drm/bridge/aux-bridge.h               |  37 ++++
> >   13 files changed, 383 insertions(+), 145 deletions(-)
> >   create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
> >   create mode 100644 drivers/gpu/drm/bridge/aux-hpd-bridge.c
> >   create mode 100644 include/drm/bridge/aux-bridge.h
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
