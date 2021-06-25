Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85A31C2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:41:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B10161443
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:41:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B10161443
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4VG+h1BmdLgjM3ww779Mq9z9Ly2oKPsjbaH2qkb798=; b=r5acjGLuO9iJRF
	cWfLvMUItW/YwP+7QEl4bvQqfQeHBDH2zRJFCuwzuJgxYDlPAobrqTEiQQbx6olRsBHfXA9QJb0uD
	NlXUyYoTb5YeNWPNlrmPlSPAGmBlLq5UUmT3WcojhErGoS6OgmUDdk9H8xUdWeAyiv02WgvnRWE8T
	7W5WwPF2aK9Mc6psDQ88/ps2uN0X9X1cmjf4FD2iof/68YoZ4laS90fZmmh1C7mFSXncIoRJVDyoJ
	3kfi88yRXEbhCxaKnzh0JGBfQZ4SwMqzQb/NycDha62uEjjW7CkOEuVaRu5aywEo/O+HBLMgad7iF
	rBuHgMiCOhtRyqjUKkKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjHA-00146Q-05; Fri, 25 Jun 2021 10:41:32 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwils-000rZ8-OK
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 10:09:16 +0000
Received: by mail-ej1-x62d.google.com with SMTP id hq39so14255286ejc.5
 for <linux-phy@lists.infradead.org>; Fri, 25 Jun 2021 03:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DTHgculPydhzpEVBph2GMT4tKo+Bdruk5MQJ3Xil02M=;
 b=iYwJpzc2B1Vz6C+1VFuga00mnTGnb9YkGQ/i60e24srUZeXEivl90uhEWHDaJdJdZl
 KAzTXfCP1HsostkzLKSNkcqzvh761bcFXJlvAuEcnKTdvLVOEw4iKFyeLOUgsTVIicbR
 6DM31e2rJS4bq7LbZAzi05Pn6ATJrDukYOReg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DTHgculPydhzpEVBph2GMT4tKo+Bdruk5MQJ3Xil02M=;
 b=Bk8R8TTAt/cn8YTiWfJL4rwdLtobbgm39pP1ryxxKnl39lmbEIdBiJhv0txZOgImcJ
 948gf53AnLAYYROweXeqosX/IR6jZ0tOsmg/iSPkSovURxwMZNpB5JrjzkyGusMOMKK0
 XhoRvUtzCrbnK/QkH3hgEcIN62p9wLZ7ElRaQCHIu6J9aK+ghwqOAKYgc1if7Ofyydhx
 PL9QoBPTzE7zmi7P3Boyp7KdS6CvtxppKrVWpRukOiV6bqYXcjOyNqcLcfcjgw5PHFou
 u/GzPOSQaX2cYoWbIZOJOBhKTl7b71I0YqiS/Bk0JdAY8zUjSPim00YVKqT9vqwyTcrg
 xZWQ==
X-Gm-Message-State: AOAM532SQiQStM/yKxJltbgrac79R2TuPMnzATWn65ZtGqca7oG1lH+D
 s0UaT9IqMKupoFs1ucDXAJ+U38ifl592degiXMVxnA==
X-Google-Smtp-Source: ABdhPJx5YzGyXwGKXbBwpGfmUZFM2l/3b+DgX10TOcWtu9LgUc8/68VvsFeIkZnC3ePSCoBaMYF/unXbPoA2N3GfeR0=
X-Received: by 2002:a17:906:bb10:: with SMTP id
 jz16mr6339523ejb.252.1624615750910; 
 Fri, 25 Jun 2021 03:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
 <fdd446c6-c8ce-9dae-f7ac-e06241f76250@canonical.com>
In-Reply-To: <fdd446c6-c8ce-9dae-f7ac-e06241f76250@canonical.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 25 Jun 2021 15:38:59 +0530
Message-ID: <CAMty3ZCEQeRi53yuLYyWVU8o=Lo2ZKy+kgjU+9PC33QJEq2LQg@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, 
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
X-CRM114-CacheID: sfid-20210625_030913_548057_4C5F8600 
X-CRM114-Status: GOOD (  23.34  )
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

Hi Krzysztof,

On Fri, Jun 25, 2021 at 2:51 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> On Thu, 24 Jun 2021 at 14:19, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Jagan,
> >
> > On Thu, Jun 24, 2021 at 05:42:43PM +0530, Jagan Teki wrote:
> > > On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam wrote:
> > > > On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart wrote:
> > > >
> > > > > Looking at the register set, it seems to match the Exynos 5433,
> > > > > supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> > > > > that driver instead of adding a new one for the same IP core ?
> > > >
> > > > Yes. there was an attempt from Michael in this direction:
> > > > https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/
> > >
> > > Thanks for the reference, I will check it out and see I can send any
> > > updated versions wrt my i.MX8MM platform.
> >
> > Thanks.
> >
> > I had a brief look at the exynos driver, and I think it should be turned
> > into a DRM bridge as part of this rework to be used with the i.MX8MM.
> >
> > Is there someone from Samsung who could assist, at least to test the
> > changes ?
>
> Yes, I mentioned few guys in reply to PHY. Around the DRM drivers you
> can get in touch with:
> Inki Dae <inki.dae@samsung.com>
> Seung-Woo Kim <sw0312.kim@samsung.com>
> Marek Szyprowski <m.szyprowski@samsung.com>
> Andrzej Hajda <a.hajda@samsung.com>

Thanks for the information.

>
> The easiest testing of the display stack would be on Hardkernel's Odroid
> XU4 (https://www.hardkernel.com/shop/odroid-xu4-special-price/) however
> you will not test the DSI/DSIM directly (it has only HDMI port).

Look like I found one board with Exynos5430 with DSI. Does this SoC is
same as mainline Exynos5433?

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
