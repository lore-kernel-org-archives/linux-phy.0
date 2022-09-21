Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94853C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7f3KVlNFScfNW41W3P19PoxVqoOSOR7438D+8O/BbOE=; b=cXK2ITFVaG8Qj9
	/NJSXA4c0tm85L9WdxH49ssN5Icu9MZp9E6riswrSvXv8D+1VnnwQfRiNDGjomfZKifrBqzfstRrO
	5i76bbCEGBWulqosM9Yb7ns+ccUqPBnBTtj2RiXx4BbizWWbsH9CTzodE7fLkQ4MDwYEooVTa1xYv
	2DX1trYht3qXgu8PTqgX0E/LUw9/AzzIm2Icd5rrHHl9CMqawxSwr8Tc+9r3gnee/J0dRgiIQuwe9
	JQIgBvDrd1zL6W+bBNsNid4ThYzq2YQH+e8thu1cXEwvWzfeiRIq9ZSbs3yY5GV+P5rOGxN1b/1iK
	w0wd7cs5rcUKZMPym5xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavJm-00A3f6-Mn; Wed, 21 Sep 2022 08:42:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavCV-00A0ND-Ny
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 08:35:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oavCN-0008WV-Eg; Wed, 21 Sep 2022 10:35:15 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oavCL-0001H2-6Z; Wed, 21 Sep 2022 10:35:13 +0200
Date: Wed, 21 Sep 2022 10:35:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org, jacopo@jmondi.org,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	kieran.bingham+renesas@ideasonboard.com,
	linux-kernel@vger.kernel.org, kishon@ti.com, hverkuil@xs4all.nl,
	vkoul@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org,
	mchehab@kernel.org, kernel@pengutronix.de,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v2 3/4] media: dt-bindings: add bindings for Toshiba
 TC358746
Message-ID: <20220921083513.drt4rggqj7tpaygr@pengutronix.de>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-4-m.felsch@pengutronix.de>
 <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
 <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
 <YyhDO4ohv47uIij2@paasikivi.fi.intel.com>
 <YyhKoDxFoobY9vBd@pendragon.ideasonboard.com>
 <20220920152632.mjpgpmelvx4ya4k7@pengutronix.de>
 <Yyn5MqqKYH7VpFhw@pendragon.ideasonboard.com>
 <74b6b670-747a-f326-44ea-7588c3989b0e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74b6b670-747a-f326-44ea-7588c3989b0e@linaro.org>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_013523_844360_E393D4E4 
X-CRM114-Status: GOOD (  18.84  )
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

On 22-09-21, Krzysztof Kozlowski wrote:
> On 20/09/2022 19:32, Laurent Pinchart wrote:
> >>>
> >>> Explicit bus types in DT indeed makes it easier for drivers, so if a
> >>> device can support multiple bus types (even if not implemented yet in
> >>> the corresponding drivers), the property should be there.
> >>
> >> Okay, I will make it required.
> >>
> >>>> Why do you have hsync-active and vsync-active if both are always zero? Can
> >>>> the hardware not support other configuration?
> >>
> >> Sure the device supports toggling the logic but it is not implemented.
> >> So the bindings needs to enforce it to 0 right now. As soon as it is
> >> implemented & tested, we can say that both is supported :)
> > 
> > Bindings are not supposed to be limited by the existing driver
> > implementation, so you can already allow both polarities, and just
> > reject the unsupported options in the driver at probe time. Future
> > updates to the driver won't require a binding change.
> > 
> 
> +1

I don't wanna do that because this let the binding user assume that
this mode is already supported. Adapting a binding is just 1 commit and
since the property is already existing, there is no breaking change.

Regards,
  Marco

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
