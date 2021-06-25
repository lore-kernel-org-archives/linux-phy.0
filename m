Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83C9BC2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:14:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31BA36143B
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:14:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31BA36143B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nAfw1j9wDDB+ebPJYUkBTyqxUAlzn2DVjyJSSGZa96o=; b=FmAy8EM3v5ca51XctJQRjgVeQi
	VEb6ScR+2TF467beuFN4XznesEy2hlKcqHPJh93Hhn8vgrbvAULmVPof2W3wgxvRc03QNbo0Afquq
	q1A+T9wwLdQ2mZ2cPskPFL2PRJsw8LcWiMBSZ0PQ/BUPo8v/BmAfalJpj/VK3zfeSHh99MMTda5RA
	k2w+BhCYqRVG7Og3prz0fezI/0S/XLIWpTh1LDUkQEUq6IAnrX6cmrU2iAP3B5TzEnElSRGNNfwhJ
	a0DURugQSnvYjZmeJJslWprxVga1BQ5hNkRgYDgm3w7Bl5eK3ML7cFVgn7tTh1BwpcXr19iNOtmdo
	EyAGARxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwirP-000tIy-8F; Fri, 25 Jun 2021 10:14:55 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwi1s-000d56-Qv
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 09:21:42 +0000
Received: from mail-ej1-f71.google.com ([209.85.218.71])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1lwi1o-0002en-GT
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 09:21:36 +0000
Received: by mail-ej1-f71.google.com with SMTP id
 k1-20020a17090666c1b029041c273a883dso2905395ejp.3
 for <linux-phy@lists.infradead.org>; Fri, 25 Jun 2021 02:21:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QsPyFBqPfdmelbWnXguclm9JevGGaBII5W3HvpNQ+C8=;
 b=V+zQ8jLZ2iGVuHC0ssdqTiuRBqIPYX4rwXbH4RdESKhiaRlco5xefLZryv7LBbKk3/
 vCuA0TBp+1H1rBhfNgF3vy8r3AiB96PRLaHBbz4WANODOasn/U2K06ofmsL7erIC2yZC
 cwYtnTDNJ5Az16BwSE9LXj/FYEyMfhcqCfep3DtJbk+m8d64doazZQrk4n59lJnJBEDp
 NuUCSC+zYm9pIQu8SmEKYCdhknahsI8+32z72IdOe6yTNmTbHrEkm2x/4UZcXmOgi+Sa
 s1RFgfBMQ59rLbQ7LLnbKM2tKihAWz2olbYIIn4Vl6XXOAW0ZvhwhPNzJEQZDA5lj+t+
 qITg==
X-Gm-Message-State: AOAM532S5jKbXNHD7uFq7WNodWPhxKqpH245Pvu52NdzLhIMkuvfZySk
 vP5Y1PPxHgvzn6NX2rrL73tAl884LmDR96oncf7HW7KMTDXIaroZ9JmkqIepmNrpkxyUOI+GOPL
 tatHpCIHUbmVGKgt42KJuj9OtLtP7/b0y77y+8X9dx8U=
X-Received: by 2002:aa7:d34f:: with SMTP id m15mr12772192edr.311.1624612896127; 
 Fri, 25 Jun 2021 02:21:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+TM38F4Yr0eNdERAI2zb41U3+ytlASbW0YpW0+yf9XGf8E0tFDX/OQzorcP9sXyGgE3SWQg==
X-Received: by 2002:aa7:d34f:: with SMTP id m15mr12772163edr.311.1624612895982; 
 Fri, 25 Jun 2021 02:21:35 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id hz14sm2415400ejc.107.2021.06.25.02.21.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Jun 2021 02:21:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>,
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
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
Message-ID: <fdd446c6-c8ce-9dae-f7ac-e06241f76250@canonical.com>
Date: Fri, 25 Jun 2021 11:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_022140_989499_C5C315FB 
X-CRM114-Status: GOOD (  22.56  )
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

On Thu, 24 Jun 2021 at 14:19, Laurent Pinchart
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

Yes, I mentioned few guys in reply to PHY. Around the DRM drivers you
can get in touch with:
Inki Dae <inki.dae@samsung.com>
Seung-Woo Kim <sw0312.kim@samsung.com>
Marek Szyprowski <m.szyprowski@samsung.com>
Andrzej Hajda <a.hajda@samsung.com>

The easiest testing of the display stack would be on Hardkernel's Odroid
XU4 (https://www.hardkernel.com/shop/odroid-xu4-special-price/) however
you will not test the DSI/DSIM directly (it has only HDMI port).

Best regards,
Krzysztof
Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
