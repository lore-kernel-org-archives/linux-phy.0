Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F8DC27C79
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 23:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jmnMnh8FE8c3NRBNprUWA1dMI9HyLREiVTI/54mH5qw=; b=3VAa40MBsO1dv7
	XoXE2+9ajyLkIcvu9XTAxZZgTz6+6QHExIEI50sMjUse1ScEmq9784TbuxifXux4kpFvNgjSiRuOG
	mmiZjYWucxgJ2gB2daXCmK3eGoh562nNfBr2CdhTF+YN8obxGMY5YB5G932sqJIRYshnaxf0ohw73
	3uGMn56mgmAzjWB8/3WZXmZ8/mYQdY28aH9R6HiIQcgYWNKhr5prgIIbpaOB0Ol1RK2WtNcvm25Br
	wkLkkduprc6SHBuBZBZdIVOPPmfb4r72Awjru8BmQStQ6b2aE/dN+L2WQbuUhmHbCRwbm6iKGdLZL
	yZi2FtxEhg+Y/P6HfHZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJM3G-0000000CxW4-07z7;
	Mon, 17 Jun 2024 23:46:18 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJM3D-0000000CxUX-3A3J
	for linux-phy@lists.infradead.org;
	Mon, 17 Jun 2024 23:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1718667974;
	bh=u4SQ7Kn/9QOe7Lbom+t4xd7zdIO/xFKu407b+d9kyI8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=lTOdODXqPn7NP3WqsJrAqrFz098uBLiJeFQ2lf+drItP/d55+A4xLs0lwLJ/gdNeO
	 8NlZ+r9COCYazXt2M8lb1T7LLhbzzZtHZjCaJyEdPTuK0FYRUPXKFF0W6NWXriFalm
	 AMFu7tMDnPg3gDS0tjmtw6iBv8YCHfnhqxb0TtbPNPLWoQQ+nJ/v7Mk17FInEx2p5r
	 9Cjda4jCDV2+p4RtnBOo/PK7SzUN9AMduYRazu2DpaotjCTUldXysIwl4+m9mdLI64
	 2q4YRCqen0sfO4oXOW5VuV+TVy2QViNuWeOS23j6U657+13LWprSgYf5fwlWt+gGV1
	 Cr4AnUOx8yCXA==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 96FE192C
	for <linux-phy@lists.infradead.org>; Tue, 18 Jun 2024 08:46:14 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=TYuNF6Gv;
	dkim-atps=neutral
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 4CD9A92C
	for <linux-phy@lists.infradead.org>; Tue, 18 Jun 2024 08:46:14 +0900 (JST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-43ffe780607so61849461cf.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 16:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1718667973; x=1719272773; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WEcb4ceq4vj6F4Lm3zQBzfoD3bnUJEBNMCgzOVt1Zv0=;
        b=TYuNF6GvuFOMxp46n4s7c2o7kS3lpspzeR2G7LJtSGbihiaUL/HLDLnS4Mr2lRKoDj
         jxg87t0D63ykedGD7istt9i30qopMa/CcIKahOXWk2b4S96UMhKA/sMWVRYQNRxKp160
         rrUU5rH7j66WARzmvINW/pVVKt15STk6A7GjfSd4bIYWzb4EKp79ExsYpS7ft/xBZDG9
         Hn9a93a1QkY+7R6rFj9X/bCpwlrSQlHHwTxa2c+3PHtVq4Fw1fF1s+R16fLp05Lgh+s/
         zv/gY/nFRm5XjFrC9Gvl3o/xEyWJPn5nVUTgMXqCJcZylCZikK9NOeWwv70hS4f9PMcE
         3y6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718667973; x=1719272773;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WEcb4ceq4vj6F4Lm3zQBzfoD3bnUJEBNMCgzOVt1Zv0=;
        b=QMgT4ADvIRhetRzhumr/ax1r5bNT6r6bRk4cJybz9tNAytfdiAq8mCqnhAnmg3WfqO
         Yhjd/3B0q1yPiymyksYtaTh7UXV7VVZeGgL/VeGHWv8Th/TpTaJtW4JMCiikOoTRjHwQ
         zzq5zf/MsIj+IotCXVGjHXUo547FAfmBnWIoCZPLBjYR8lFTK9pfD/BuR4YPPfumWHDC
         ZRqpk9sUbeeq+xDHbp0hz8aqlbt9vVABWARhzowyLidWX/gUd6h33zuW2abZ8vdXHoEO
         3hq1NAzwWucnoAgTL0K2XxER4AkBqHu1h4CCLrNZLzBDSeuLljxms/pbRD1UBTr8RLVH
         WLqg==
X-Forwarded-Encrypted: i=1; AJvYcCX4vjRulvJRnxC1wngTj9BhUxnoxy8BL9Ffyp9MNnMo3r2BKIjwMhTzljNaYkjQD2608zfD/z8R7FnWeh20melmJd/DLyt69XpuJEqgHw==
X-Gm-Message-State: AOJu0YxaVQ22iaPrQf04EZuuedTIZbyv63QaH+dGiDdr/8qme8SK7+oS
	cV+56MaWFlREapE2ywqcEGReyUnVtOJoNCtLH3YS9+yA9g1WnzSz99vghcfpmkB5TA4S+OQ/qRx
	AwCFKW4qo5X9dmd8QhZ3tRHpoPbASHg8OrQUyI1O9/HZRImvZV1FC/lEoaCAjv2QK
X-Received: by 2002:a05:6870:1c6:b0:24c:a547:7b5a with SMTP id 586e51a60fabf-258428b6ce7mr13781177fac.14.1718667951784;
        Mon, 17 Jun 2024 16:45:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRFeiOGQPSIT5KptgcYboMcw31OfX8XCos9btgN4pxjCsjHfG6eKkB1gU/XzVNeRv8POSMRg==
X-Received: by 2002:a05:6870:1c6:b0:24c:a547:7b5a with SMTP id 586e51a60fabf-258428b6ce7mr13781138fac.14.1718667951311;
        Mon, 17 Jun 2024 16:45:51 -0700 (PDT)
Received: from pc-0182.atmarktech (103.131.189.35.bc.googleusercontent.com. [35.189.131.103])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc91dc67sm7938979b3a.2.2024.06.17.16.45.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2024 16:45:50 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1sJM2m-00ABEf-2m;
	Tue, 18 Jun 2024 08:45:48 +0900
Date: Tue, 18 Jun 2024 08:45:38 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
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
Message-ID: <ZnDKovBokBu5D_eb@atmark-techno.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <CAHCN7xJt+1WGFYeBii1jUDEg9OU176f0AA+rMkXCqNQrfq=XWg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_164615_917906_8561DBBB 
X-CRM114-Status: GOOD (  44.09  )
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

Thanks for the replies, replying to both mails at once.

Adam Ford wrote on Mon, Jun 17, 2024 at 08:28:58AM -0500:
> > Commit 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY") already
> > "fixed" the samsung hdmi phy driver to return the next frequency if an
> > exact match hasn't been found (NXP tree's match frequencies exactly, but
> > this gets the first clock with pixclk <= rate), so if this check is also
> > relaxed our displays would work out of the box.
> 
> Are you proposing to replace 'return MODE_CLOCK_RANGE' with a printed warning?

Yes, something like that.

The imx93-mipi-dsi.c code has a check that's a bit more complex that
might be closer to what we want if you think the check is useful:
        if ((bridge->ops & DRM_BRIDGE_OP_DETECT) &&
            (bridge->ops & DRM_BRIDGE_OP_EDID)) {
                unsigned long pixel_clock_rate = mode->clock * 1000;
                unsigned long rounded_rate;

                /* Allow +/-0.5% pixel clock rate deviation */
                rounded_rate = clk_round_rate(dsi->clk_pixel, pixel_clock_rate);
                if (rounded_rate < pixel_clock_rate * 995 / 1000 ||
                    rounded_rate > pixel_clock_rate * 1005 / 1000) {
                        dev_dbg(dsi->dev, "failed to round clock for mode " DRM_MODE_FMT "\n",
                                DRM_MODE_ARG(mode));
                        return MODE_NOCLOCK;
                }
        }

However, for my particular case 0.5% wouldn't be enough to get something
to display unfortunately :/

> > In practice the screen I'm looking at has an EDID which only supports
> > 51.2MHz and the closest frequency supported by the Samsung HDMI phy is
> > 50.4MHz, so that's a ~1.5% difference and it'd be great if it could work
> > out of the box.
> 
> I wonder if the HDMI PHY could be improved to better dynamically
> calculate values instead of the look tables.

That would probably be ideal, right... If we could do that we could
likely compute something within 0.5% of the required freq.

The original code from NXP was full of what seemed at the time magic
values, but with the new code it seems quite a bit clearer...
At least the values that are left seem to somewhat make sense:
https://gaia.codewreck.org/local/linux/hdmi/plot-combined.svg
https://gaia.codewreck.org/local/linux/hdmi/plot-1.svg
 -> dented linear values, per the intervals defined in
 fsl_samsung_hdmi_phy_configure_pixclk()
https://gaia.codewreck.org/local/linux/hdmi/plot-2.svg
 -> constant for each intervals?
https://gaia.codewreck.org/local/linux/hdmi/plot-3.svg
https://gaia.codewreck.org/local/linux/hdmi/plot-4.svg
 these don't really make sense to me...
https://gaia.codewreck.org/local/linux/hdmi/plot-5.svg
 that one 0 value at 154000000 looks odd,
 but that aside we could probably get away with constant 0x80
 if the value matters at all...
https://gaia.codewreck.org/local/linux/hdmi/plot-6.svg
 weird as well

I'm thinking the last few values just affect a very small % of the
values, but would need to check with a proper scope if I can get a hold
of the clock line...
Does any of you happen to have any datasheet for these registers,
or should we consider them to be magic values?

Lucas Stach wrote on Mon, Jun 17, 2024 at 06:32:45PM +0200:
> > Do you know why such a check is here?
> 
> Sending a HDMI signal with a different rate than what the display
> expects rarely ends well, so this check avoids that.
>
> However, this check is a bit overcautious in that it only allows exact
> rate matches. IIRC HDMI allows a rate mismatch of +- 0.5%, so this
> check could be relaxed quite a bit to allow for that.

I'd expect displays to be tolerant to quite a few percents, but I didn't
know the spec defined something like that... iirc the HDMI spec isn't
public?

> > In practice the screen I'm looking at has an EDID which only supports
> > 51.2MHz and the closest frequency supported by the Samsung HDMI phy is
> > 50.4MHz, so that's a ~1.5% difference and it'd be great if it could work
> > out of the box.
> 
> For rate mismatches larger than the 0.5% allowed by the HDMI spec it
> would be better to actually add PHY PLL parameters matching those
> rates.
> 
> We could potentially add some more leeway for displays like yours that
> aren't actually HDMI (as it doesn't seem to have a standard HDMI
> resolution). But that's more of a last resort option, as it may
> introduce other problems for displays that aren't as tolerant with
> their input rates. Remember the mode_valid call is used to filter modes
> that aren't compatible with the source, so for a display with multiple
> modes allowing too much leeway may lead to incompatible modes not
> getting tossed, in turn allowing userspace to set a mode that the
> display may not like due to too much rate deviation, instead of only
> presenting a list of valid modes. This again would present the user
> with a black-screen without warning situation.

Ah, that's a very good point, if other modes are valid then we don't
want to present modes that are less likely to work, we should only allow
bigger variations if no other mode worked...
I don't think we have this info at validation time though?

I think that Adam's suggestion of making this more dynamic would be
great, if we can just generate finer frequencies for a reasonable range
then it wouldn't be a problem to limit the check to 0.5%.

Short of something really dynamic I can add a value for our particular
display based on what I've seen above (just pick a couple of points
along the lines for the two values I understood and whatever value
neighbors have for the rest & check with a scope it's somewhat close),
but I honestly would rather not get too far down this hole, we can't
cover all the quirky hardwares that exist manually...


Cheers,
-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
