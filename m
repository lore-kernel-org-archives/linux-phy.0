Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D74AAFEE4E9
	for <linux-phy@archiver.kernel.org>; Sat, 28 Feb 2026 11:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69foqxJfXglGtl0cZ/TBzHb+sqkt/pv5Pgsy2icQVxI=; b=KiRs0GaEFmjFJ0
	aZnxJukySKhpNDwCdUiDKWLQwIJXi2s4Dme93McDee+fnMVg7vOeH4AltQK4e+v45gsNni/zcNRmZ
	rXKt8Fouv6izzpqFf7dMEJeOxtXzutX1v6t2V4P/FhnkHZf1uIA1s7zG8RYaELJlHNKoXi+PH2ub4
	PigYQM2LSysiv5c26OCINsXXFk+t5E+BSUkFtVrhA6EzpUh/OSeKfMPBvGjLDjYqUF25lnebjY2Js
	NEBBU4r3NIQ2wn9KzlOT5/dHDO31zdkJLfdHlRUYhXZht5lATqYzfz14+B6YoGbDHmnLD24fzDuPu
	QhT7tXd3zgNlAiVyPvNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwID4-00000009ldR-1euM;
	Sat, 28 Feb 2026 11:10:10 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwID0-00000009lbo-0KPP
	for linux-phy@lists.infradead.org;
	Sat, 28 Feb 2026 11:10:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772277006; x=1803813006;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=AxtK5aNDu+VdCrf2+LU5bZDcJ1M/wjN7Kf28wXjowmQ=;
  b=X+GGDx4BK+/38Ow/aDRfrs8tBxiqDbD8lWtmc9AXiar1F5VRL+QLMPOK
   It4hZ1rZIaYRnhcXcvIoxo+TcHNqA19lMVBcDMSyzgtmipgWXr5g+5oGr
   W28xUKUu4p0GghzvkgxeWr+6tXFWhbrNz3jqWrmmzwl/hpmp46TlmjhQv
   MRNc9qyYIdzMKOYIJnMHeisZuHBcVGjqh8mPIamGnEgmg7VzjnY8B/Fue
   DN+OdzStrf8d7bXKVq/Y6bcSl/YmelNlWj0nnZkBb9fo9EA2Zg9wmJ59e
   YpXkYr8mbkxWELXOf4+8V/+8kFsYkKyA7zMK7mp/RuSuBD8MnzoXq2OJH
   A==;
X-CSE-ConnectionGUID: mFh6bmpxRdujsRG/mCwIcA==
X-CSE-MsgGUID: Fz4J1Ai4Q6KTcmEiyUA3Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="72551846"
X-IronPort-AV: E=Sophos;i="6.21,316,1763452800"; 
   d="scan'208";a="72551846"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2026 03:10:03 -0800
X-CSE-ConnectionGUID: ZUZ41NSPTU29uoTjC37wiw==
X-CSE-MsgGUID: TzyD1p44TNSAvNSGE7MjYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,316,1763452800"; 
   d="scan'208";a="254974712"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.245.224])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2026 03:10:00 -0800
Date: Sat, 28 Feb 2026 13:09:57 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH v1 1/4] phy: phy-can-transceiver: Convert to use device
 property API
Message-ID: <aaLNBTZsUQ2vMfOW@ashevche-desk.local>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260224162606.spnzzedvmvp2h7xd@skbuf>
 <aZ3X2J1rBq1pMkae@smile.fi.intel.com>
 <20260224183000.txlazzyw7z34nhsj@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224183000.txlazzyw7z34nhsj@skbuf>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_031006_161099_9F800721 
X-CRM114-Status: GOOD (  37.50  )
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

On Tue, Feb 24, 2026 at 08:30:00PM +0200, Vladimir Oltean wrote:
> On Tue, Feb 24, 2026 at 06:54:48PM +0200, Andy Shevchenko wrote:
> > On Tue, Feb 24, 2026 at 06:26:06PM +0200, Vladimir Oltean wrote:
> > > On Thu, Feb 19, 2026 at 09:26:19PM +0100, Andy Shevchenko wrote:

...

> > > > -	if (!of_property_present(dev->of_node, "mux-states"))
> > > > +	if (!device_property_present(dev, "mux-states"))
> > > 
> > > There's an entire saga with this function - devm_mux_state_get_optional().
> > > Josua Mayer is preparing to move it to the MUX core, which will be a cross-tree series.
> > > Would you mind not touching this, to avoid complicating what is already
> > > a complicated operation? It is going away anyway, and from what I can
> > > see in Josua's last series, its implementation from drivers/mux/core.c
> > > is already using device property APIs:
> > > https://lore.kernel.org/linux-phy/20260208-rz-sdio-mux-v9-2-9a3be13c1280@solid-run.com/
> > 
> > Basically you ask me to postpone the series until that will be in. Since this
> > file is a mess in terms of OF/fwnode API use in exchange I would like whoever
> > is doing the other part to speed up a bit if possible.
> > 
> > I prefer to see cleaner solution to be applied sooner and last in a long distance,
> > that's why I see either mine first but soon, or that first but also soon should
> > be in. Can we try to achieve that?
> 
> The idea is that Ulf already expressed the availability to take the phy-can-transceiver
> patch through the mmc tree and provide back a tag to be pulled into linux-phy:
> https://lore.kernel.org/linux-phy/CAPDyKFrtTaJ5fqqbGrE_K6SAdTZYUfp-BycGjtWs4SabwBysKA@mail.gmail.com/
> 
> If linux-phy takes your patch first, there will be a conflict when pulling the
> stable branch, and it won't be so fun, plus we can't even build-test Josua's
> submission on linux-phy, so that's obviously not great.
> 
> So yeah, I'm not requesting you to postpone the entire series, just not
> touch devm_mux_state_get_optional() and don't let it appear in your
> patch context.

Thanks for explanation. I prefer that Ulf's staff settles down first as it seems
more important.

> Somebody will have to remove "#include <linux/of.h>" at the end of the
> whole process, but that's minor.

> > ...
> > 
> > > > -		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
> > > > +		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);
> > > 
> > > It is not obvious why you replaced dev->of_node with NULL here.
> > > It doesn't appear correct. You seem to be breaking OF-based PHY lookups.
> > 
> > It's the default. Yeah, I probably have to explain this in the commit message.
> 
> Ah, ok. Found the "phy->dev.of_node = node ?: dev->of_node;" assignment.
> Sorry and noted, but please add it to the commit message too.

Sure.

> > Basically all devm_phy_create(dev, dev->of_node, ...) for clarity should be
> > converted to that approach. Or even better, a new (agnostic) API should take
> > default fwnode from the same device.
> > 
> > 		phy = devm_phy_create_simple(dev, &..._phy_ops);
> > 
> > // name was quickly chosen and may be not the best we can come up with
> 
> I agree in principle. PHY drivers shouldn't be given a function where
> they routinely have to set one of the arguments to NULL, but a simpler
> function without that argument.
> 
> But the phy-core.c doesn't support fwnode at all yet, it uses OF
> throughout. I think it would be preferable to leave this change to
> somebody who has business in that area.
> 
> (are you interested in PHYs with a fwnode for any particular reason, or
> just because the API is more "generic" just in case?)

Because of inconsistency. This makes my mind blown and the code is not good
for others to read and understand when it's inconsistent like this. That's it.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
