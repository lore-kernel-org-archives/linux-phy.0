Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDDBEC48BDF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:47:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BB5061220
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:47:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6BB5061220
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKagrkyLqRZCIbO1Eqj6avCGQkeeNfRGy+RgZXUlBpE=; b=xr1w52plzM4Rjc
	lW2DJV+fMiACRZvQJScsxFJFenO5smOHWKhJ0tT578PpA3ObyTJAiq1BF8PDORJ1UUB6M3EH8dEIh
	gUlux2BbXZymHPWNPGdoeMllqf6dl6YnTe1/uruMfo8oETFsilgfaVOu11cm7LLceJmybeUSkOJDD
	hgthQhwcSvECMFxP9JWsBnuyjJWHDLc7AGQQkJ7X46xQIjVGqoEPzBnGxRokuh8nY8qq34K4/CWae
	MGA6J87swAMzaOLc1DLw5sqBcghwxIVtq2LMMxhtXFHJeSMKMnuTOTy/UnGE4nKo8LWVVuIjq7Vji
	QFyMaUQw96SMDhOslFAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwOlS-00EfuK-UE; Thu, 24 Jun 2021 12:47:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwOlD-00Efoi-7t; Thu, 24 Jun 2021 12:47:13 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5A7724A1;
 Thu, 24 Jun 2021 14:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1624538829;
 bh=YK1V6EQP0xZzOKnqIihFqu4R7XbETZn4rERcj1Ng924=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ISN6O21MlplTqx8PlNg2EPdOfJUUl6CxBd2f+k+OV22V4YNKHPcHYj2WOnAWVqvbg
 jnmBUEVhFuyO5XAE3xLBFW03f8s8hpfM9+YPFJ2C8bObVjL47X9NvNVQJPhprhYXBI
 yovCKFftL3DvXUWIHkTcVLuZopqb//J9kdU+F/LI=
Date: Thu, 24 Jun 2021 15:46:39 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jagan Teki <jagan@amarulasolutions.com>
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
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
Message-ID: <YNR+r3G7crWS+wcx@pendragon.ideasonboard.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
 <CAMty3ZA=1xreRB+SZOwj6khH6+nLsE_ND5599xfV8J=LzGFYYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMty3ZA=1xreRB+SZOwj6khH6+nLsE_ND5599xfV8J=LzGFYYQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_054711_494168_1749D20B 
X-CRM114-Status: GOOD (  26.28  )
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

On Thu, Jun 24, 2021 at 06:02:36PM +0530, Jagan Teki wrote:
> Hi Laurent,
> 
> On Thu, Jun 24, 2021 at 5:48 PM Laurent Pinchart
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
> I have hardware to verify it on i.MX8MM but from exynos I don't have
> any contact from Samsung to suggest or test. Maybe I can add Tomasz
> Figa while sending the changes?

Tomasz hasn't been working for Samsung for a loooong time (I've dropped
his Samsung address from the CC list for this reason).

> I understand that there are 2 key implementations.
> 
> 1. Adjust the exynos_drm_dsi.c by dropping component_ops as i.MX8MM
> flow with LCDIF doesn't have component_ops (make sure it works with
> exynos platform first)

I think it should be turned into a real drm_bridge, it's currently
implemented based on drm_encoder.

> 2. Sec DSIM Bridge driver common cross Exynos and i.MX8MM platform
> drivers or only one Sec DSIM bridge driver to handle both the
> platforms by differentiating compatible and driver data
> 
> Any more suggestions would be appreciated?

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
