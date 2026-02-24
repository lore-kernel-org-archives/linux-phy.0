Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7BF8F3C9AF
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 16:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNQ5xsD4yzO/VV1eqlqlSItf3PgIa60i+/+gZd5CezM=; b=gyo712Iuro9VHZ
	0p6hWLhbLOkX7Wwd+8buJfWOUaNJPGhjE8MM0tAZ1isd+3k4/aoHuAVy/tbI52GkVRSiumBK6f1AW
	RClgvz/7OJHw1/VC/Nc03pXkl347E/j7XPoRxLL82C9FNnMFWZ7tbg5E+bKQW5FbSTHIm5J+6Z+0k
	08wYCVGzw22zpyZsb7JG55OnvZVgL/4KurwZ+/DSpwyN2+7XF9VCJog+WaGJmu2G8mF3pGKt21RYQ
	48QBGWb8dOlgz8BYcss+Hvnnlr2bGmboSmQIIPzribiHPLgnurRj+u/nWn4HjAunhHl80ojfQKyG8
	MHFKBPvVjo04vvsGZQPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvgW-00000002QmT-1McW;
	Tue, 24 Feb 2026 16:54:56 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvgU-00000002Qlj-2Ylb
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 16:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771952094; x=1803488094;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZD5nEyHUaQAAk+dGGdvp59svNKJS7ocIox+yEYYGTNY=;
  b=GR9pzav9+rexFVJT0zjrVinTBAd87eEnQHh+NYx19/tdbtzLK+5Ngm8N
   jqXvkplQc/gCwXQJwSf6Bo0KgAcqKi8JU6HpX1K5oGWJv625CeoVHe8Mo
   Vn6MjzdjZFU4veWfjJsKxwyg5MZw0joHWlN5rqqaYY67+sFr/erQEQ3Pl
   23sRGRk8wHDh8vvpdkNtx/VlxGN2DHn/IaW0kLPvt6EyxtM3Huh/RtVo1
   Tppsl0AsZBgwA0NIqLQVV1uSmYn7ZPNt3whM/gpkzga5oFN2tHjU1KEYb
   yaZpjqZOk9+KamH6uWb8SvEY9EpJ2tNolIAWG92FktTBjld/OYyzs16Oj
   g==;
X-CSE-ConnectionGUID: 86UtMxZ1S4yFh4EBMuD+3Q==
X-CSE-MsgGUID: 8BHFxjmvScO8YYdTRQgQdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="83593877"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="83593877"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 08:54:53 -0800
X-CSE-ConnectionGUID: mIqXZ8RKTHyPz8zc+HSQNw==
X-CSE-MsgGUID: BTMRsz0YRli0pf6fcawuaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="220075810"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.146])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 08:54:51 -0800
Date: Tue, 24 Feb 2026 18:54:48 +0200
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
Message-ID: <aZ3X2J1rBq1pMkae@smile.fi.intel.com>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260224162606.spnzzedvmvp2h7xd@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224162606.spnzzedvmvp2h7xd@skbuf>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_085454_687741_DC352F8A 
X-CRM114-Status: GOOD (  17.28  )
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

On Tue, Feb 24, 2026 at 06:26:06PM +0200, Vladimir Oltean wrote:
> On Thu, Feb 19, 2026 at 09:26:19PM +0100, Andy Shevchenko wrote:

...

> > -	if (!of_property_present(dev->of_node, "mux-states"))
> > +	if (!device_property_present(dev, "mux-states"))
> 
> There's an entire saga with this function - devm_mux_state_get_optional().
> Josua Mayer is preparing to move it to the MUX core, which will be a cross-tree series.
> Would you mind not touching this, to avoid complicating what is already
> a complicated operation? It is going away anyway, and from what I can
> see in Josua's last series, its implementation from drivers/mux/core.c
> is already using device property APIs:
> https://lore.kernel.org/linux-phy/20260208-rz-sdio-mux-v9-2-9a3be13c1280@solid-run.com/

Basically you ask me to postpone the series until that will be in. Since this
file is a mess in terms of OF/fwnode API use in exchange I would like whoever
is doing the other part to speed up a bit if possible.

I prefer to see cleaner solution to be applied sooner and last in a long distance,
that's why I see either mine first but soon, or that first but also soon should
be in. Can we try to achieve that?

...

> > -		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
> > +		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);
> 
> It is not obvious why you replaced dev->of_node with NULL here.
> It doesn't appear correct. You seem to be breaking OF-based PHY lookups.

It's the default. Yeah, I probably have to explain this in the commit message.

Basically all devm_phy_create(dev, dev->of_node, ...) for clarity should be
converted to that approach. Or even better, a new (agnostic) API should take
default fwnode from the same device.

		phy = devm_phy_create_simple(dev, &..._phy_ops);

// name was quickly chosen and may be not the best we can come up with


...

Thanks for the review!

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
