Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAFCAC88CB2
	for <linux-phy@archiver.kernel.org>; Sun,  3 Sep 2023 21:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5s0Lb5WdGvpRnCvjHjFeuKJoTurR9HNTR/1DIy/LXoI=; b=G+5Do4hoDlSt5H
	7M4aXUc9Uhirvz8Qgb8yK7v5psFqjMBYptr1yfnSRWirZ+hEQG3hZSYmBzQZwibnbPQG03GQzYCxd
	KKf3u+T1df5TFCAewGuy12ub8The2+C5z0sZxxg1KOCXsA94P8AWeTF9SFL/CGhoEXLElz7X6tTyb
	pnEluHhcf5l4GZQnLy8sP4wnaGx8MyHs8USdUpbRvD9ayydbgMAlPZRYGbZB7xs6azldxu675JYzb
	sIF7YD0ZxBPJuov/MCLZYJQ73Ezp+tGNPsx+wTjxSR6H6kfuU8UU+AbSivkvLqHl4OTzGXb70RLAA
	gMHLm1JsMsNMUeLtuMrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qcuEv-002vLG-07;
	Sun, 03 Sep 2023 21:02:37 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qcuEr-002vKc-2B
	for linux-phy@lists.infradead.org;
	Sun, 03 Sep 2023 21:02:35 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d7830c5b20aso1139581276.0
        for <linux-phy@lists.infradead.org>; Sun, 03 Sep 2023 14:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693774950; x=1694379750; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wyrVivbOL8H2+2oy0DBeynxfE8rpivKsaojvi9l90MQ=;
        b=BwkDppITC7XZIdu+BZovMW7X48i7MozeBZVAfF7VleYQed5EdgM3uf9eI7mzvPcwpY
         1sRMvq0TzSRFS+CJN4zMKTaL1Q2AaPc4ocPZl9HLwnHOOntZtdE5WcZV0w1XGkYGOjyF
         Zr/aAAuMjFEDTo5xeACo1F4woD4Ul2tZm3OqByARIV7xMRBPXBEjggfGb8I8ag7coTcs
         kKo23DUW3FmlsGXZbk4dhirzhXTJVdAz/58DHyzxyGMkE8ph7oYPVAGzAgOTq5YW7+Ti
         CNHUN4kLADn/YizoWV6bUloGFTtAyKMEGy50oaGSBtiZUe4jQ2mo4BG5YvGvL+yQEkkG
         Oezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693774950; x=1694379750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wyrVivbOL8H2+2oy0DBeynxfE8rpivKsaojvi9l90MQ=;
        b=Le3cy9fZYiOmLj7i3Pp/l9hJ8L7G/CB/mIQgi75CuTQ2vFI1yEWzTaRaOL+a0eGo5g
         s70AkJ2y5dohoF4ZVRL7Hjn5WFdp+HeWFspt/ktvhrhFbwc+e3v5tR6j0hiw3+yH0Iml
         iU7F+e0O61qgwMCOAQv56XTWhxddvus6VcpVJxF41fXiHaSoLvzq/flfiJWXPoVVTqaA
         lsAJAKw3DGfSQ+qBxtRRVrgLjIhegTMJWlxYhJq+Pt6826xf4Ar3RlyCAPqSjPuJOpnJ
         Xj9Wun7tXWUh8jk1sNmGSUHXzF9h+gnTVX34hObARaXs9VbTG4di9eEt4gbiylZuKLRZ
         skCQ==
X-Gm-Message-State: AOJu0Yz46RqZ1a9zbWoNKQ9DqC/Ic5j0Iix1Qu7eltOIW3Kr6DA6IDRX
	nbMiTVl610Fba/OsE6oox2oOtKEj3Dj70QCVDlZjng==
X-Google-Smtp-Source: AGHT+IEIksLV6i1JQnXxmFBaEbAx0vYPQzKu+YxnPk5mSfeHKOjrFxxCLATBwQ5f3mGZqO72LEeDFc4Kwock6sj7f10=
X-Received: by 2002:a25:d20e:0:b0:d74:6cb3:bb77 with SMTP id
 j14-20020a25d20e000000b00d746cb3bb77mr10416043ybg.28.1693774950042; Sun, 03
 Sep 2023 14:02:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org> <20230822141735.GA14396@pendragon.ideasonboard.com>
In-Reply-To: <20230822141735.GA14396@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Sep 2023 00:02:18 +0300
Message-ID: <CAA8EJpp_FYOKHziHOWF6E1RTkHEJ8oXXH90EDmJbLG1UDO1ofA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20230903_140233_765463_2BED465C 
X-CRM114-Status: GOOD (  31.77  )
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

On Tue, 22 Aug 2023 at 17:17, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
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

It looks like both Neil and I missed this question.

Two items wrt devlinks. First, I view them as a helper. So if one
disables the devlinks enforcement, he'd still get a deferral loop.

Second, in this case we can not enforce devlinks (or return
-EPROBE_DEFER from the probe() function) because the next bridge is
not yet available when the main driver probes. Unfortunately bridges
are allocated in the opposite order. So, using AUX devices helps us to
break it. Because first typec mux/retimer/switch/etc devices probe (in
the direction from the typec source to the typec port). Then DRM
bridge devices are probed starting from the end of the chain
(connector) to the DP source (root DP bridge/controller).

>
> > Last, but not least, this results in the the internal knowledge of DRM
> > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
>
> Why so ? The PHY subsystem should provide a PHY, without considering
> what subsystem it will be used by. This patch series seems to me to
> actually create this DRM dependency in other subsystems, which I don't
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

Laurent, please excuse me for the ping. Any further response from your side?
I'd like to send the next iteration of this patchset.

> > Proposed merge strategy: immutable branch with the drm commit, which is
> > then merged into PHY and USB subsystems together with the corresponding
> > patch.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
