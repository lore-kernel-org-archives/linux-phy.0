Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4054FC52D6F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 03:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0BBQOFwYSEMFwLPUlXGc0SmyvSKv4GPySx5TU2TCDk=; b=PK7B1VcmF1CJN/
	K6/ZBgzc8Oz/YuSoFtrs8iBYXyKb/Z+k22s4zEEgszozudoEmBwhKUONATDMDfEJZVi20zynzHMef
	Lu6UcN87yFxC6ehUVSN31U2mVRNLvs4BQlnwU9xXJ7WjQOkgHBD0SA1vuyuCiUhxDNbHVbQvKDIaf
	m/Qa4B1AKTInTVaA1AI3ZAucU8pg6Dd9lxDApZlgdAzniYcv8FPvYGs0rkfuRZB4tao6PK6bh2To3
	+GLP5wEQGZvdO9EKSPrdNamdHr0QAxF6pcLfhTi0J4CsI5J3x5pG9scHoUswDUY/VEFWPCSG4aZwx
	37Ss+8u1cdxTANoIPo1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgcU6-00000007ROX-3nZ8;
	Wed, 21 Aug 2024 03:58:10 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgcU4-00000007RNc-1byn
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 03:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1724212684;
	bh=iRH6vm3f+qvme31wvecI88/Rqtmvlts9o6HozktikAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hnTOwpIhccDO2GGNj9HeEhzBogkmuYWcnN0wXA3iRAPyOk+8R3WFRBV5NSP2rzqel
	 9gBqBh2UKVEbNSP+is35Zr1T7cEXwfbUtFA9i5zO7aUWrMRkrVyYCQJX9AFGM2L3IL
	 o22D1ERjMU4iyU1bWipmXl4vtfeqJU8oeIyMe1uVsf6WRhTnSDHF9nqQ+oSZutVSOA
	 Pbk7GqpEflza4gyhlKrv6rgN/DIvddd5Wve/e2Cj5ubbueCzMIY84IUE3kfniiVi3P
	 JX1UBPK0e/rPwjPIn9RPysqQakeZTTWDgygkbWRqwlv/bKsmilb72RwVb6a+dWZXkG
	 UfrLTpS9TpBXQ==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 186C7A0C
	for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 12:58:04 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=EMteFAz1;
	dkim-atps=neutral
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id BF304A1A
	for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 12:57:58 +0900 (JST)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2d40f92f0a2so3094266a91.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Aug 2024 20:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1724212678; x=1724817478; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V+qnGxy5w3VX94K4aj4lv3e2rRMZae3o2HZnHPaaqtQ=;
        b=EMteFAz1Zw+2PlWVLALYhwmBfSiQ4m5+RJHqFVZHOFgGgB7IkiZbpeDrRlc8sQVmbO
         CGId/DHa96QymAZmyrsEtBTYjnhJ6uywTqv4sQ64WY137OfD032rlNUy6Vf9550YmapU
         sma4dgo9ltsFEeemLwRL6Br8u0iVx8dyYRe0J5iGyr+XS9bENuPdDxMTZ/Xwka0YR0vP
         5MXmkCs2D7iasXdwU9V+GU8DYe4XVNv5xpuD2Q9Aa5ymREwEXvxcNueJmjoYHbXZBo2q
         h/NDsEllDfP3/rSyFVHWsDOYlDSLR/rDIVwWMfMGM0Z7uX1TQrzXvVHNDjdwIQGvb/Zd
         7L0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724212678; x=1724817478;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V+qnGxy5w3VX94K4aj4lv3e2rRMZae3o2HZnHPaaqtQ=;
        b=C+WwdYQoYf6eBsI2sbxxBripH6JgS/P7EHgKOctOWxlD0Fi26htQ6qmnudHLY8VnrK
         gumCds8/UxO7kHblV+WuF2+ukqoXkz5IRHYExJUunPYySTn2y0raxYyBeuT55pZz+we0
         Ppnq33sD1qN8Vu4JRRe326NdwuOVoDOWi8EpTVJ3ia8VbkqPaXETt8Ar40r0fx3xjZV6
         8IEN/4L3/nXxbhtYOTQXVpcnuoFJZhXTl6H3wl2OASNcRZ8nN6qsAyc/pMC9j6BsbS4R
         w/+hzG7RjAiN3xqobjOnHOUquU0dqrqhxhkA2TgR2k8GRSO3Z+HtLp9eWF3gPKE29GrE
         OKOA==
X-Forwarded-Encrypted: i=1; AJvYcCWy9KPNseVhqDZmICkqgkqxunICK/qC2lTsAd9i8HotytUFuKL6KScOygCC7yLMbrPruAvg13xKhgo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7LVPp2WiYNhCwG4CvKxf5NeELgkaenN6u86dpBTPN/QiemKlE
	deTidJfVT//y6kyYPb0Ls5kUUUQotUlErGwHduPurrHiiMqlK1j6iyeUei8rYsE6g36DOYkEi/e
	FdCEjHWj52jsv2Mro6XdjNS/CqYXEkii2Qlc+pYnkzuEP+SCZrivnDC7vmjF/cFvh
X-Received: by 2002:a17:90b:1e50:b0:2d3:d8c9:780e with SMTP id 98e67ed59e1d1-2d5e9a1c42bmr1083896a91.20.1724212677602;
        Tue, 20 Aug 2024 20:57:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVIiKdohXScz0/LgmYJB0F0NSJGU/plj9oicFpDF0zuctdGMznMuiv+lGTxqm9jYAS6FVvyw==
X-Received: by 2002:a17:90b:1e50:b0:2d3:d8c9:780e with SMTP id 98e67ed59e1d1-2d5e9a1c42bmr1083873a91.20.1724212677161;
        Tue, 20 Aug 2024 20:57:57 -0700 (PDT)
Received: from pc-0182.atmarktech (117.209.187.35.bc.googleusercontent.com. [35.187.209.117])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d5eba30e40sm501627a91.24.2024.08.20.20.57.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2024 20:57:56 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1sgcTr-003xuT-0q;
	Wed, 21 Aug 2024 12:57:55 +0900
Date: Wed, 21 Aug 2024 12:57:45 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, marex@denx.de,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for
 i.MX8MP DWC HDMI)
Message-ID: <ZsVluV50NvuGGHFX@atmark-techno.com>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
 <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de>
 <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_205808_569994_5122B577 
X-CRM114-Status: GOOD (  44.79  )
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

Adam Ford wrote on Tue, Aug 20, 2024 at 09:49:03PM -0500:
> > > However, this check is a bit overcautious in that it only allows exact
> > > rate matches. IIRC HDMI allows a rate mismatch of +- 0.5%, so this
> > > check could be relaxed quite a bit to allow for that.
> >
> > I checked with a 1080p display that reports 23 possible modes via EDID.
> > Out of these 15 are accepted by the driver with the strict check.
> >
> > Two more would be accepted with a relaxed check that allows a 0.5% margin.
> >
> > For the remaining six modes, the pixel clock would deviate up to ~5%
> > from what the display expects. Still, if I remove the check altogether,
> > all 23 modes seem to work just fine.

I can confirm the displays I tested also seem pretty tolerant in
practice (up to ~3-4% at least), but I agree with Lucas that this isn't
something we can rely on for a general purpose driver as having examples
of things being tolerant doesn't mean all hardware will be as flexible..

> > I'd really like to be able to add more PHY PLL setpoints for displays
> > that use non-CEA-861 modes. Unfortunately I didn't manage to figure out
> > the fractional-n PLL parameter calculation so far.
> >
> > The i.MX8MP Reference Manual provides formulas to calculate the
> > parameters based on the register values and I tried to make sense of it
> > using the existing register values in the driver. But somehow it doesn't
> > add up for me.
> >
> > Lucas, did you already work with the PLL parameters? By any chance, do
> > you now how the math behind them works?
> 
> I spent a little time trying to understand it a bit.  I created a PMS
> calculator similar to the one used on the DSI controller,

Great! I'll admit this also flies over my head and I don't have the
time to study this, so this is much appreciated.

> except that
> the M seems to be fixed at a value of 62 per the data sheet, so it's
> more of a PS calculator.

Hmm... PHY_REG2 in the datasheet only lists '0011_1110b - 62' as
example(?) values, but it doesn't say other values are reserved either,
I'm not sure what to make of it.
In the current driver PHY_REG_02 (driver macro) is assigned the first
field of .pll_div_regs, which goes anywhere from 0x4b to 0x7b -- pretty
far from 62(0x3e)...

Since other frequencies have been adjusting this main diviser ratio we
actually tried copying neighboring values and adjusting only that reg 2
(so the M if I get this right?), but the end result ended up not
synchronizing properly every time... We didn't have time to check with a
scope if the generated signal was ugly or if it just didn't lock
properly, but the display worked when we just re-used the neighboring
values without changing anything despite being ~3-4% off, so we took the
easy way out here and didn't dig much further.

> Anyway, When I run my P-S calculator to generate the 'best rate' I get
> a value that's usually 0.2% variance from nominal, but I only verified
> a handful of values:
> 
> Several which were +0.2%
> 297600000 vs 297000000 (4k@30)
> 148800000 vs 148500000 (1080p60)
> 74400 vs 74200
> 
> One value was -0.16%
> 24800000 vs 25200000
> 
> If the M value was a bit more flexible, we might be able to reduce
> that variance more.

Yes, I think the M value could be more flexible, but that'd require
checking if it actually works, whereas having slightly off frequencies
will most likely be OK so I don't think it's worth the effort -- happy
to stick to what the datasheet describes.

> If / when I get some time, I might play with trying to disable the
> fractional mode and just use the PMS calculator for simplicity despite
> the inaccuracy.  Maybe we could fall back to using the PMS calculator
> if the desired frequency isn't in the look-up-table.

That'd be greatly appreciated, I don't have any strong opinion on
whether that should completely replace the table, or only be used if
there is no exact match in the table as these are values we know will
work; but we can definitely test any patch you can throw at us here.


Cheers,
-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
