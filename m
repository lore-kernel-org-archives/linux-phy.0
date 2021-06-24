Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6F2C49EA5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:32:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DF6F613FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:32:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DF6F613FE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQXQrEpRViQg5YtrYih7kXi/r+xV94+BohywG1AWc/Y=; b=M29X1JRP1tmBCO
	Ovauk0VPqsSksNiaXAoZbbGtLEoDXnX0IBgomW/nZVyISwWIjuV6jZSGzbQ2lIQyI14FP+UqQvCoI
	/sLqRBW3qo5GbSmtOVPiHY7Ou3d2tXq4h0o0qtW0UmSnI9jXtkjoDhd/RtbHl/QRUN1SoYGZgmcbv
	Cm0UCnPzPWZaSn1EONOT8DAEhCxs9WNgS9rVbhXn5dvmTL68nfCGXtH/sOtmgzLhtf5FxynlCt0P1
	w8RA4/1OEoUQOaUn/ezAEZdbjGbgaOdZbUrLGz0WRJTWKTRGqz70AE9IXyrpUNzTZ3JjHSfIaXn6a
	594O0SOyffUo1AiqTeow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwOXM-00EcGL-Kx; Thu, 24 Jun 2021 12:32:52 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwOXJ-00EcEs-5a
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 12:32:51 +0000
Received: by mail-ej1-x630.google.com with SMTP id ot9so8263332ejb.8
 for <linux-phy@lists.infradead.org>; Thu, 24 Jun 2021 05:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1pdNyGnwu73Y/M+lRxwYbfC63xdRtvOG341evPVloL4=;
 b=VT4Xbs/6+8YEG5ok69Cp66JqzZQH90fw7I76MXbLk3uomJANwnomPoo574oC5hjoQ4
 EKQdDKf9yDx4L7r2cF62JOT40zbd68qIkBdugdNROO5ALrOarxqS15JpQUzu+iBlP/bO
 FZoTBAM7u3HhTjWJ9SuTe5GD1eTpfsr8wdQVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1pdNyGnwu73Y/M+lRxwYbfC63xdRtvOG341evPVloL4=;
 b=QDpmDOhavTUcvKewJ37ec1BifqEir1v9ZHn34unzJZ7z6B7xYUdjDknQsEQ6YCEv4+
 yA2WGhIG7xrJLewwioRZohS9y2Eaej8coXOjjywqJPHje4z+VJeEGnTAhRSgKw7Qamll
 0FZBV/golOKewkji3WHi62tWxOjvIR3yu6HugqOHyMFOl9nRTCpjlLnrolNf6c/n/6cf
 PcTJE4j1A0xEMsu++Onm26/I31q15dpndqF3cB/UMrs4pSF/sdAx9j9Mb+O93ZLRIkd+
 xqUXU+JLLZx15tIYXCO7lJX3nSZEYCbkmMG/F1azFVVeTW53Nhxti9pT3Z5Mnx29sCK+
 p50w==
X-Gm-Message-State: AOAM532DqaNwQW8BZlaeU9NotSDgKYqRD0AGuuH5s381vo7isDje44oT
 M7BSx5hfz0ZFvs97/gRZl3odK5BqoCygGAT7cF9J3g==
X-Google-Smtp-Source: ABdhPJy9346wJ7pgPh41de3TKx9jGsDYkXgGD+VTQowScqmus3DWBHWMTQtjBZGWKBfvb/2N8Rflzvh3mC8Utrm9SqA=
X-Received: by 2002:a17:906:718b:: with SMTP id
 h11mr5091976ejk.418.1624537967775; 
 Thu, 24 Jun 2021 05:32:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
In-Reply-To: <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 24 Jun 2021 18:02:36 +0530
Message-ID: <CAMty3ZA=1xreRB+SZOwj6khH6+nLsE_ND5599xfV8J=LzGFYYQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20210624_053249_690754_05F7FFF0 
X-CRM114-Status: GOOD (  22.78  )
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

Hi Laurent,

On Thu, Jun 24, 2021 at 5:48 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> On Thu, Jun 24, 2021 at 05:42:43PM +0530, Jagan Teki wrote:
> > On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam wrote:
> > > On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart wrote:
> > >
> > > > Looking at the register set, it seems to match the Exynos 5433,
> > > > supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> > > > that driver instead of adding a new one for the same IP core ?
> > >
> > > Yes. there was an attempt from Michael in this direction:
> > > https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/
> >
> > Thanks for the reference, I will check it out and see I can send any
> > updated versions wrt my i.MX8MM platform.
>
> Thanks.
>
> I had a brief look at the exynos driver, and I think it should be turned
> into a DRM bridge as part of this rework to be used with the i.MX8MM.
>
> Is there someone from Samsung who could assist, at least to test the
> changes ?

I have hardware to verify it on i.MX8MM but from exynos I don't have
any contact from Samsung to suggest or test. Maybe I can add Tomasz
Figa while sending the changes?

I understand that there are 2 key implementations.

1. Adjust the exynos_drm_dsi.c by dropping component_ops as i.MX8MM
flow with LCDIF doesn't have component_ops (make sure it works with
exynos platform first)
2. Sec DSIM Bridge driver common cross Exynos and i.MX8MM platform
drivers or only one Sec DSIM bridge driver to handle both the
platforms by differentiating compatible and driver data

Any more suggestions would be appreciated?

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
