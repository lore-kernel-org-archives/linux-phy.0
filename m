Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C4AC2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 08:28:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 59D1861427
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 08:28:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 59D1861427
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIfMcujK1+GqHFGLP+L/2/3Ag0OnHIFuz9f+z8Vyipw=; b=ekDK3JL7xNhuo2
	2o531M/EFAYeKjq9BR0f1TAQPnFoql1pmtfwGMWE05fr7Avy1K2nMStarrTmKg0iq0KHj1zo0igcb
	FZ9/SaxkaHrzlEPSS2MXb7bwT1DozVnJ7ISqcRrO7ZOb6kIQiyHcF8qBDpOopYVtxOHLxZew171I6
	fR9DiiSqVq3zftxz38yrY7kFm/J+bfATrZeGmayBmJop07MYCd9ejUMcmIn4o6Aq1jx0ikZADYDf1
	kKnTMG0hDxjCa/KGnqW4B7I0tK9XCQO6VZbrY0n/Y/7bdeksIRLkd8XxqyZrGOsVf+0MGbTvp3BqL
	CRUVZGQVwCi/lffR/lCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwhC3-000KGU-9R; Fri, 25 Jun 2021 08:28:07 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwh4E-000H6N-V7
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 08:20:05 +0000
Received: by mail-ej1-x62e.google.com with SMTP id gn32so13859600ejc.2
 for <linux-phy@lists.infradead.org>; Fri, 25 Jun 2021 01:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ij57ec/kT6vqdj3SkA9+UxDinMRytbLturPpNw8vjWU=;
 b=fUPOg7qJFU4+Ky55nonbhHO3m4gsmtHJ5JR19iPaBEvYjk3/idyXrnOzPF0RETsFki
 aon0d55/n0DgoLxhyqvpHSMAzPTz5otjiNSZ/KZCVwhjW1FHTLiHnWh/CM8AwwZZpldx
 Kdh+7y5JjZRwPrcv7S0CsQpczGiUAYa472kT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ij57ec/kT6vqdj3SkA9+UxDinMRytbLturPpNw8vjWU=;
 b=D+vCXDVXpgP/+GtfhxEViqkD/fIx29it+Rs+LYfhxE9Tljj7BREDMOWy4sevkYk63Y
 GPpa/AkIPSqc3wLfweB+fY95UD30k2KP9vrcBweUcnWypWwMMXDnJ/5rqUE8NG38jWgy
 +R4fok/iHqeQ7X4LIQ3H9mq3IaS8YRD0ZiQaB4g406ShldSbp9+Glv2OmzVeanqv5zDP
 YlVLSUndfUV8NxMKkaL5ND7DwP5qhoY8Rx4i3et+s9cn8R+vp98bhmwpTDPp1wIG1fDw
 NIdR0buxxq1J/gyQ+pjd3E2fdQErgjOmi8idyoRUkMh7/AAF0rdRk+rrVUNdxmxvuw8y
 vyKA==
X-Gm-Message-State: AOAM531h1F7oRvnKfeum81Rk8plPBUScxPFeifWjR+yVYp6H9Rj4mk2Z
 tiQRn8vwhO2X9t4tHHxPTLhl0lfvY0XqEeb4ZjgC7w==
X-Google-Smtp-Source: ABdhPJxPYVWDTuNQnGVZcTr/J+zl2QMfQDE1LFW7NWpHcZf0GBIjnlowThGs9yNuKiJWJssteOsB7NCRRWQI1Rw+mOk=
X-Received: by 2002:a17:906:bb10:: with SMTP id
 jz16mr5890056ejb.252.1624609200411; 
 Fri, 25 Jun 2021 01:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
 <CAMty3ZA=1xreRB+SZOwj6khH6+nLsE_ND5599xfV8J=LzGFYYQ@mail.gmail.com>
 <YNR+r3G7crWS+wcx@pendragon.ideasonboard.com>
In-Reply-To: <YNR+r3G7crWS+wcx@pendragon.ideasonboard.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 25 Jun 2021 13:49:49 +0530
Message-ID: <CAMty3ZBuPCGYrC=Poucrotvaf3ZT2PnAeCbv-iq7vnQLS=KgNQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Fabio Estevam <festevam@gmail.com>,
 Michael Tretter <m.tretter@pengutronix.de>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, 
 linux-amarula <linux-amarula@amarulasolutions.com>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda <a.hajda@samsung.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, 
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, 
 linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_012003_241473_783E0439 
X-CRM114-Status: GOOD (  28.72  )
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

On Thu, Jun 24, 2021 at 6:17 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Thu, Jun 24, 2021 at 06:02:36PM +0530, Jagan Teki wrote:
> > Hi Laurent,
> >
> > On Thu, Jun 24, 2021 at 5:48 PM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> > >
> > > Hi Jagan,
> > >
> > > On Thu, Jun 24, 2021 at 05:42:43PM +0530, Jagan Teki wrote:
> > > > On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam wrote:
> > > > > On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart wrote:
> > > > >
> > > > > > Looking at the register set, it seems to match the Exynos 5433,
> > > > > > supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> > > > > > that driver instead of adding a new one for the same IP core ?
> > > > >
> > > > > Yes. there was an attempt from Michael in this direction:
> > > > > https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/
> > > >
> > > > Thanks for the reference, I will check it out and see I can send any
> > > > updated versions wrt my i.MX8MM platform.
> > >
> > > Thanks.
> > >
> > > I had a brief look at the exynos driver, and I think it should be turned
> > > into a DRM bridge as part of this rework to be used with the i.MX8MM.
> > >
> > > Is there someone from Samsung who could assist, at least to test the
> > > changes ?
> >
> > I have hardware to verify it on i.MX8MM but from exynos I don't have
> > any contact from Samsung to suggest or test. Maybe I can add Tomasz
> > Figa while sending the changes?
>
> Tomasz hasn't been working for Samsung for a loooong time (I've dropped
> his Samsung address from the CC list for this reason).

Okay. I think exynos drm maintainers might help out here, but not sure of it.

>
> > I understand that there are 2 key implementations.
> >
> > 1. Adjust the exynos_drm_dsi.c by dropping component_ops as i.MX8MM
> > flow with LCDIF doesn't have component_ops (make sure it works with
> > exynos platform first)
>
> I think it should be turned into a real drm_bridge, it's currently
> implemented based on drm_encoder.

Yes, ie what I'm trying for.

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
