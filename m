Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0A04D735F8
	for <linux-phy@archiver.kernel.org>; Sat, 30 Nov 2024 08:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPzeCwTgsby86gK2MB4cnW3pXzlRIuKEAgCjbadYMQA=; b=R2cNkaD8swDwHH
	khLMzWm9k62a1mHK2fIC4S3vK/RRkLyrN41uGpaGrQmT21B/nYE5GwnojrjUf4OxtQH3jXA3cXixF
	u/GOddu52dMI0o6ROGca5yiFj8ntM/ss2TeB2DVYgxQVIW+0ydvzASdNH+I1JE/wJuQbIOcD/inpH
	G2f/dapyrcSOVZx9Y4KkhF+oPqgNPpK6Gxe1yjB6C61hv0r1IPz7ytxw4/qwYuM2gt4ebHrboeAiW
	XW60eaeGUFOAehLPp3C3iWNadBXNy9bWZCjYK+ZNiBDuTpJhYduB+IClja9iNi1lLR1gN2aUUtZrl
	7uXIHlsfB+0Kr4ZrS1QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHIsN-00000001d81-2SDs;
	Sat, 30 Nov 2024 08:30:51 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHIrM-00000001cz9-3rmH
	for linux-phy@lists.infradead.org;
	Sat, 30 Nov 2024 08:29:50 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-53dd57589c8so3815417e87.1
        for <linux-phy@lists.infradead.org>; Sat, 30 Nov 2024 00:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732955387; x=1733560187; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YwEfcn5Pby1DuMjHVg1b1o/lcfJvv/jFNZtuiy5rgCw=;
        b=MOiz832q7g7BF210yDVgJLuzGhahM3EaCYzHVny0YM/y1bax7vyulOc3vDO3WkD5d1
         wcGHtEGSRTE4dZVaL6KHmYGcPkJe//xzcj3ODRtw9AhNBxrV2oBABUlxMaxxP/EvmTfD
         XrPxbBYqqh5HMfFjqAmZTpE/cbTljctxYYpnHflB9Am67aNwAlC94/TZKhg74o7oSDD7
         yC+C+eLMGQUoWO5f/Brn+ZpAVLMy07SjiGrbNhIE/bTfOrNxcn+ZRdzKiD8HREpsWFN9
         ji5KmTCqWJ3hlsNDSpKsiSwQ8d+5WJ4Y1DFiNSvD05gTrYhsu9GEcIri2x6Z+Syq9P2t
         Niwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732955387; x=1733560187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwEfcn5Pby1DuMjHVg1b1o/lcfJvv/jFNZtuiy5rgCw=;
        b=licK4yFUfCBEKbMMajJfHmeXmwm4idIaKq1BEFZt1UolPzQS81E6/lStu2FA8732oG
         ZCKWZXVGfV9JBdovZBouOWtf4bXqjTOVW81e49AYRhcmzLVN0wREznnJMTN0HbbhQBIA
         Ca+cIrzGsrYBIT2O/u1WZZ42ilMgTyWTlFbzeQ3ZEYNaE9bFxCD2lGerhy43/Qw9KR8t
         +Kii+sCeXSKOoOYedJbsaRosLWim361HeuasKwg24wwyNnnlN2R5oMm1egtQ0ZFU4j8p
         wpQXv+xYw42K7iw/0CG39hq909tTr07gPb2SzxTFTieOzmGvlFqwGC9XpJ9CIHxI0BV9
         m1fg==
X-Forwarded-Encrypted: i=1; AJvYcCX2/lwBX1cu5ems+XyoSV+V870sQ10swHsZqnCpqcrxA2kbKedfCRy/s3F4JDotk9CHxiNbJh9qFz0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAZV7t9GBPALfRjfKn4rjI8f4ZqT3i8DCZjtfoOigUwewmaREZ
	HhglCEsRmqayhe2cvmien/SmGdWz9BDvDjnzWphBPYQParvtjYmhP0lUqMk3k3g=
X-Gm-Gg: ASbGncvIkzgUhy5vW3MaiC/5q7722qicCTIrHhwnZr+5tInSBIjpEhln35ogrqGUg9Q
	J9lRFM23jmJvrlGJpAUYX/COv8e+eLaUbPUT56MJVQW6NMjXsb3/uw+RkTJse78kB6NomKviOMW
	Hunhq9mQP9BIk4ef/MFQoNnXn3vsDFL0FLn7WdxCMUY8ZcKqLNf88YtkWaCEcAFmCGq5knj+6oo
	SLHSuQ8gknPSDPgM6x356qsLRaVoI4a0kHIMH5KZ4uAES82TDtPwVLwVJgDVuADO2+/lJrxACaP
	0DMAFLGJ49CQNMKbrwYDSxy+f7IcnQ==
X-Google-Smtp-Source: AGHT+IG7msEs9hgIu3ta16vL9mWEiaIEtxRrnODIuHdyaMtVbZhaiQTdxZhi9NhcUgHBW26OK3t30w==
X-Received: by 2002:a05:6512:3f7:b0:53d:f583:81df with SMTP id 2adb3069b0e04-53df5838209mr2781109e87.28.1732955387112;
        Sat, 30 Nov 2024 00:29:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a05ebsm703544e87.255.2024.11.30.00.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 00:29:45 -0800 (PST)
Date: Sat, 30 Nov 2024 10:29:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	"jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, 
	Oliver Brown <oliver.brown@nxp.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [EXT] Re: [PATCH v18 6/8] phy: freescale: Add DisplayPort/HDMI
 Combo-PHY driver for i.MX8MQ
Message-ID: <foi2sizfkppmunq4yqt4pex47alsvsjyqi3rk32fwyz4f5xepn@zdsx74bzzda4>
References: <cover.1730172244.git.Sandor.yu@nxp.com>
 <411e42c70e71dce33a80059f663fb6c58fb2ac8c.1730172244.git.Sandor.yu@nxp.com>
 <efciuvoptv7qxwauswfseb6zlt5w4fmjdbm3huxfsn63a6bm7u@kfgkkvqoz5x4>
 <PAXPR04MB9448F638D47B5495CF78007AF4522@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <z6p6bewmykmufsghdojr4lvziurmmfpnrr5m4w3pfjlqzobpwr@zq2d2ukjvtac>
 <PAXPR04MB9448D68A5CA9755036E9B23DF42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PAXPR04MB9448D68A5CA9755036E9B23DF42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_002948_959246_2D5F7F88 
X-CRM114-Status: GOOD (  25.66  )
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

On Tue, Nov 26, 2024 at 02:12:19PM +0000, Sandor Yu wrote:
>  
> > 
> > On Tue, Nov 05, 2024 at 02:05:51PM +0000, Sandor Yu wrote:
> > > >
> > > > On Tue, Oct 29, 2024 at 02:02:14PM +0800, Sandor Yu wrote:
> > > > > Add Cadence HDP-TX DisplayPort and HDMI PHY driver for i.MX8MQ.
> > > > >
> > > > > Cadence HDP-TX PHY could be put in either DP mode or HDMI mode
> > > > > base on the configuration chosen.
> > > > > DisplayPort or HDMI PHY mode is configured in the driver.
> > > > >
> > > > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > > > ---
> > > > > v17->v18:
> > > > > - fix build error as code rebase to latest kernel version.
> > > > >
> > > > >  drivers/phy/freescale/Kconfig                |   10 +
> > > > >  drivers/phy/freescale/Makefile               |    1 +
> > > > >  drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c | 1337
> > > > ++++++++++++++++++
> > > > >  3 files changed, 1348 insertions(+)  create mode 100644
> > > > > drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > > > >
> > > > > diff --git a/drivers/phy/freescale/Kconfig
> > > > > b/drivers/phy/freescale/Kconfig index dcd9acff6d01a..2b1210367b31c
> > > > > 100644
> > > > > --- a/drivers/phy/freescale/Kconfig
> > > > > +++ b/drivers/phy/freescale/Kconfig
> > 
> > [...]
> > 
> > I'm sorry, my email client cut the email.
> > 
> > > > > +static int cdns_hdptx_dp_configure(struct phy *phy,
> > > > > +                                union phy_configure_opts
> > *opts) {
> > > > > +     struct cdns_hdptx_phy *cdns_phy = phy_get_drvdata(phy);
> > > > > +
> > > > > +     cdns_phy->dp.link_rate = opts->dp.link_rate;
> > > > > +     cdns_phy->dp.lanes = opts->dp.lanes;
> > > >
> > > > Shouldn't this be conditional on set_rate / set_lanes ?
> > >
> > > PHY do not support reconfigure link rate and lane count.
> > 
> > So, you don't support reconfiguring the rate / count, but you still copy the new
> > rate and lanes into your driver data. That sounds strange.
> 
> The PHY will use link rate and lane count to configure its registers

I'm not sure if I follow it. Do you mean that rate / count configuration
is static?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
