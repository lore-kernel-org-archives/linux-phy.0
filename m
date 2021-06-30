Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585A1C11F65
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 10:22:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED20E61992
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 10:22:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED20E61992
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEwNKSBt8sd+q6mLd+v3bhzhMdjMdIsKMsdDkROcrJ8=; b=HWZvmP0lH2uSNF
	MA0C5xOsUC9/3j6NmxgwJb7n/onL70jVrXb/8pMMLFwzf96J8iVE4dMizNRCkq9HRrIb3ydPF6I73
	phsr/iVK8MWm1esQUAkqsJE7OFnfhbp2wL/PvgLXY1aBdIGuilsa+flJ3V5wK5CQEo+0k5uo3du2S
	f4Oa27c9BHlK7pIx5QoI3JtySDXs1DePT4agBhMEdAXCIPbvEZSU7FCNj62JbW+c/8EQfL9tz/nzU
	v02/y41Hj1eWXpBiNtdAs1ejElkZebfRokxhFe4zB/QDgLHh437jjRx0iaQpk1rog5E42BqF9kv62
	Q3NWa2PBoNhKX8BOFN9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyXM2-00Dapt-EO; Wed, 30 Jun 2021 10:22:02 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyXLo-00DanP-Hu
 for linux-phy@lists.infradead.org; Wed, 30 Jun 2021 10:21:51 +0000
Received: by mail-ej1-x636.google.com with SMTP id gt10so1979141ejc.5
 for <linux-phy@lists.infradead.org>; Wed, 30 Jun 2021 03:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pRd6pcMdNebp+pN5HMRRgF54QAuGLj+u/RVF3wGoo18=;
 b=ATKO+gmm4xEc6zgEP7S6/Z+diDreHx/sUxeSyYuhtT7zwrtOsR0ZtMcFTiDUA8ZlOu
 JX/hOLoFLa8O29+0/knSdMZQB3/yImsXIvJjt86mYMGf9u0OexWOBu65f8ZHwyBpAxzX
 Cu5psuErLV+VoTcyFiT/zThG5MBdf/A632cx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pRd6pcMdNebp+pN5HMRRgF54QAuGLj+u/RVF3wGoo18=;
 b=Xrn0XCFN1ljnroG1C1RHApeYt3bobPkuC5F+/KCOPxiokYvr51vqJ7l+dGM7SmqWDO
 kysLkzHP9AHaItZ6qXJOUrMbSno3hYTeelffm0vcbVmgQH8lwssZ7XCoggy1kGnoIhUS
 9LuSoUVnbajeGTJHhTFkWRN++aVLX6gt3unI3UD0K1tKRMpoj8hzIz8PISUGqDs9cXCj
 WoVU91f53JV2i0xzIYgzjPjHwIEimRHod7yBrcs+fcOzq38D/9VwbCDDSrOk4Xu7Ux7j
 r2CuTgaU0l2QdksW03iWJ5AttJQY/TdiBwwW538s9GPlGdjbPmtUroGWF7pBLNfgtDto
 WH9Q==
X-Gm-Message-State: AOAM5313gfk0y5CuojO5yc365SLZ0ybO4MZn93945MN0/nVfYOvvAw3W
 Jw3EddL9fQEplQBI/+A+U/j37FcTJmDrbndhDXR/HA==
X-Google-Smtp-Source: ABdhPJywNEi1yzvhH5/eMxuTSgQsZfHFd6bpKgnli8ZWpww+T6iw62Wvl6+Irx61qHcOCFQlQ5wjQ3GqF0XI0jyTfjM=
X-Received: by 2002:a17:906:bb10:: with SMTP id
 jz16mr31357635ejb.252.1625048505958; 
 Wed, 30 Jun 2021 03:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <2decfea3-3659-2a3b-7706-326c97f57f8e@canonical.com>
 <3aa47f60-94ab-cf0f-3777-3a872dd0e6d4@kontron.de>
In-Reply-To: <3aa47f60-94ab-cf0f-3777-3a872dd0e6d4@kontron.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 30 Jun 2021 15:51:34 +0530
Message-ID: <CAMty3ZBnj6AwdrGXKx1jsqVnrk9abShzamM4H++WE7mcU09sYA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Frieder Schrempf <frieder.schrempf@kontron.de>,
 Daniel Vetter <daniel.vetter@intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Fabio Estevam <festevam@gmail.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, 
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Tomasz Figa <t.figa@samsung.com>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda <a.hajda@samsung.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, 
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, 
 linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>, 
 "marex@denx.de" <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_032149_520655_B63D8AF5 
X-CRM114-Status: GOOD (  20.06  )
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

Hi Frieder,

Thanks for sharing the details.

On Mon, Jun 28, 2021 at 1:49 PM Frieder Schrempf
<frieder.schrempf@kontron.de> wrote:
>
> Hi Jagan,
>
> On 24.06.21 10:30, Krzysztof Kozlowski wrote:
> > On 24/06/2021 04:48, Fabio Estevam wrote:
> >> Hi Jagan/Laurent,
> >>
> >> On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart
> >> <laurent.pinchart@ideasonboard.com> wrote:
> >>
> >>> Looking at the register set, it seems to match the Exynos 5433,
> >>> supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> >>> that driver instead of adding a new one for the same IP core ?
> >>
> >> Yes. there was an attempt from Michael in this direction:
> >> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fproject%2Fdri-devel%2Fcover%2F20200911135413.3654800-1-m.tretter%40pengutronix.de%2F&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C52db05459ef0462d5a9b08d936eab1ba%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637601203901391193%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=LTYk9kpUeB9bgfRITQT6wIij3XTOIk37AHXbzQ2UI4Y%3D&amp;reserved=0
> >
> > That's the proper direction (maybe as Marek suggested - sharing common
> > code like for Analogix DP), not duplicating a driver.
> >
>
> Just to make sure that you are aware of the previous patches and discussions here are some additional pointers:
>
> * i.MX8MM glue code from Marek (+ Cc): [1]
> * DPHY driver from Marek: [2]
> * General discussion about driver implementation: [3]
> * Daniel's (+ Cc) suggested direction to move forward: [4]

It Looks like Daniel's suggestion is to have a common bridge driver
without sharing a code between platforms. It makes sense and clean but
the key issues lie on the exynos side, the exynos drm drives require
potential changes and tests, which indeed are hard but possible -
IMHO. However there is another issue with component_ops the i.MX8M
side MXSFB doesn't use any component_ops but the exynos are fully
component aware.

>
> It looks like you already did a fork of the Exynos driver, so your approach might be generally in line with what Daniel suggested.

I did use PMS computation from exynos and reference driver from imx8
tree. Last 2 days I worked on exynos_drm_dsi.c (with some additions)
and converted a bridge driver and it worked on my i.MX8MM platform.

Right now, I'm checking the possible implementations and will come
back to my approach for further comments.

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
