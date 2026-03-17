Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B3FFD707A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 20:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/U6m8uiADSnBX3WXx084H9Egw68LVjuz2woY+Dq+hOk=; b=VmUS1gWDr2B0rl
	mQxXc+Yrj20XrzzNTt027LnH8PjlEQyV4lyFVRyrbIxSudSCscH7c/vlsnbK+26TGVkNcZReK0T3N
	L4b42RMYj9zXAv4XE993o3RXCreppR/lTvVlgob8PIJxJndqphUnU5SS46BVFDUu/8pUReOvNAelT
	813lacVqPTfX+F0q0vs+llp3XSDnPBb8H0ilyi7F2wD50fXOyeO6RhXtEMfQxopsoRhIOvuqO/0YJ
	KeEJP3p11jGGU48kMYYSI4STgYG/AS4Pus2tYUmALKKf22/cCnVJG8LQlhyLOayPWtQ4WqBMy+47R
	1dyg+b7ejs2M6RUFl6OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2anS-00000007BBo-2u1c;
	Tue, 17 Mar 2026 20:13:46 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2anP-00000007BBI-0zl0
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 20:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773778424; x=1805314424;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KZKC5dweiUltLgvGdpbBEo4qhcUxzi8dFn/JCc64rdE=;
  b=CdYFOFm9LgfGxvuruE1catbDMcVN6RU6KRDjXo7ovx2ljxCwgo2Qs97M
   +q8twjcUM99jWQ01QW20t4Brb2vn0nFTCAThI7DfOu7gy7guo4St6kqca
   P07iH8ni2ZSfjkWkmNJ7SoL6K/y2NsVXU+oHsWlF0l6PrM5+MfXeuHkBh
   jBUNWT2TyfH3zmJSCRZH0T9tc91OGCsjcfSuASLL8//GY+LFGIsoWb5kB
   il8u6BGrvbJT/l3OYE2hen9ZdaWPorCne9ect1Vhyvgcfw1ncahbVMAf/
   5S+HA6wVUUu2IJM/f4jkA1B5hc7M2Twg38R0Cp8m+qH5sqFQa4w66NLZX
   w==;
X-CSE-ConnectionGUID: lHuI5JmTTvSqa1cAcPsC1g==
X-CSE-MsgGUID: HmGA0GspRZ2dhbbenkU58w==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="75008859"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="75008859"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 13:13:41 -0700
X-CSE-ConnectionGUID: HRKDKhvpQUmZMAeV5nyi0g==
X-CSE-MsgGUID: NkTofqqjS+ae7BfqpP+itg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="227332051"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.97])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 13:13:38 -0700
Date: Tue, 17 Mar 2026 22:13:35 +0200
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
Message-ID: <abm172Lkn_1EYIDZ@ashevche-desk.local>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260224162606.spnzzedvmvp2h7xd@skbuf>
 <aZ3X2J1rBq1pMkae@smile.fi.intel.com>
 <20260224183000.txlazzyw7z34nhsj@skbuf>
 <aaLNBTZsUQ2vMfOW@ashevche-desk.local>
 <abkvyrkkqKRffVUr@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abkvyrkkqKRffVUr@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_131343_348139_936BA514 
X-CRM114-Status: GOOD (  44.98  )
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

On Tue, Mar 17, 2026 at 12:41:19PM +0200, Andy Shevchenko wrote:
> On Sat, Feb 28, 2026 at 01:10:02PM +0200, Andy Shevchenko wrote:
> > On Tue, Feb 24, 2026 at 08:30:00PM +0200, Vladimir Oltean wrote:
> > > On Tue, Feb 24, 2026 at 06:54:48PM +0200, Andy Shevchenko wrote:
> > > > On Tue, Feb 24, 2026 at 06:26:06PM +0200, Vladimir Oltean wrote:
> > > > > On Thu, Feb 19, 2026 at 09:26:19PM +0100, Andy Shevchenko wrote:

...

> > > > > > -	if (!of_property_present(dev->of_node, "mux-states"))
> > > > > > +	if (!device_property_present(dev, "mux-states"))
> > > > > 
> > > > > There's an entire saga with this function - devm_mux_state_get_optional().
> > > > > Josua Mayer is preparing to move it to the MUX core, which will be a cross-tree series.
> > > > > Would you mind not touching this, to avoid complicating what is already
> > > > > a complicated operation? It is going away anyway, and from what I can
> > > > > see in Josua's last series, its implementation from drivers/mux/core.c
> > > > > is already using device property APIs:
> > > > > https://lore.kernel.org/linux-phy/20260208-rz-sdio-mux-v9-2-9a3be13c1280@solid-run.com/
> > > > 
> > > > Basically you ask me to postpone the series until that will be in. Since this
> > > > file is a mess in terms of OF/fwnode API use in exchange I would like whoever
> > > > is doing the other part to speed up a bit if possible.
> > > > 
> > > > I prefer to see cleaner solution to be applied sooner and last in a long distance,
> > > > that's why I see either mine first but soon, or that first but also soon should
> > > > be in. Can we try to achieve that?
> > > 
> > > The idea is that Ulf already expressed the availability to take the phy-can-transceiver
> > > patch through the mmc tree and provide back a tag to be pulled into linux-phy:
> > > https://lore.kernel.org/linux-phy/CAPDyKFrtTaJ5fqqbGrE_K6SAdTZYUfp-BycGjtWs4SabwBysKA@mail.gmail.com/
> > > 
> > > If linux-phy takes your patch first, there will be a conflict when pulling the
> > > stable branch, and it won't be so fun, plus we can't even build-test Josua's
> > > submission on linux-phy, so that's obviously not great.
> > > 
> > > So yeah, I'm not requesting you to postpone the entire series, just not
> > > touch devm_mux_state_get_optional() and don't let it appear in your
> > > patch context.
> > 
> > Thanks for explanation. I prefer that Ulf's staff settles down first as it seems
> > more important.
> 
> Any news on that front?

Okay, I found the new patches in Linux Next.
I will respin my set based on that.

> > > Somebody will have to remove "#include <linux/of.h>" at the end of the
> > > whole process, but that's minor.

...

> > > > > > -		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
> > > > > > +		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);
> > > > > 
> > > > > It is not obvious why you replaced dev->of_node with NULL here.
> > > > > It doesn't appear correct. You seem to be breaking OF-based PHY lookups.
> > > > 
> > > > It's the default. Yeah, I probably have to explain this in the commit message.
> > > 
> > > Ah, ok. Found the "phy->dev.of_node = node ?: dev->of_node;" assignment.
> > > Sorry and noted, but please add it to the commit message too.
> > 
> > Sure.
> > 
> > > > Basically all devm_phy_create(dev, dev->of_node, ...) for clarity should be
> > > > converted to that approach. Or even better, a new (agnostic) API should take
> > > > default fwnode from the same device.
> > > > 
> > > > 		phy = devm_phy_create_simple(dev, &..._phy_ops);
> > > > 
> > > > // name was quickly chosen and may be not the best we can come up with
> > > 
> > > I agree in principle. PHY drivers shouldn't be given a function where
> > > they routinely have to set one of the arguments to NULL, but a simpler
> > > function without that argument.
> > > 
> > > But the phy-core.c doesn't support fwnode at all yet, it uses OF
> > > throughout. I think it would be preferable to leave this change to
> > > somebody who has business in that area.
> > > 
> > > (are you interested in PHYs with a fwnode for any particular reason, or
> > > just because the API is more "generic" just in case?)
> > 
> > Because of inconsistency. This makes my mind blown and the code is not good
> > for others to read and understand when it's inconsistent like this. That's it.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
