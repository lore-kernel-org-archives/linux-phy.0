Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BB79C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 15:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEITZlT7O/ytLCHdukMOYrHalEICFCo6jvWfJyDOWY4=; b=4MrPFpGl4IJbO5
	/8dGymgTWpv91YM577eZcmh8lwlnqUaM6jWd9qz5ZM6HSyzVSq9ohIvADPiFQPge2af6C5U4DmPg+
	/hYwWvPl1tSGXlwTnbOoLhR4WgJ+lZjAmHmoKNNUuDUA/ojmucHmnO+LX/o57mfBoNAll6qysSUbJ
	vINE8gaHxLVyNA9fdfMesdbilHL+RA0WgR7Oy2ANewSpxnxiLv7ZIMlMiNSuOdNz/ufYweyQrcIlM
	NpF4IQhiRJvn6SMTDsr2jJoh08dCBx2IzdIzghAw+Ftx+6QWWBbxBhW0UEP3c1s+xIAPOpNUX/poT
	+oEsec5GtGefuBKMMkmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razoN-00000002hPM-00dj;
	Fri, 16 Feb 2024 15:07:35 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razoJ-00000002hOq-3Xh9;
	Fri, 16 Feb 2024 15:07:32 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2338135"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2338135"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2024 07:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="912374280"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="912374280"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2024 07:07:24 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1razo9-000000054rn-1ock;
	Fri, 16 Feb 2024 17:07:21 +0200
Date: Fri, 16 Feb 2024 17:07:21 +0200
From: Andy Shevchenko <andy@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v3 05/18] mux: add mux_chip_resume() function
Message-ID: <Zc96Ke_iG_bHIvkP@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-5-5c2e4a3fac1f@bootlin.com>
 <Zc4t82V9czlEqamL@smile.fi.intel.com>
 <f1d2c9b0-238d-4b09-8212-62e00a2192b2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1d2c9b0-238d-4b09-8212-62e00a2192b2@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_070731_940744_D6CA2663 
X-CRM114-Status: GOOD (  26.45  )
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

On Fri, Feb 16, 2024 at 08:52:17AM +0100, Thomas Richard wrote:
> On 2/15/24 16:29, Andy Shevchenko wrote:
> > On Thu, Feb 15, 2024 at 04:17:50PM +0100, Thomas Richard wrote:

...

> >> +int mux_chip_resume(struct mux_chip *mux_chip)
> >> +{
> >> +	int global_ret = 0;
> >> +	int ret, i;
> >> +
> >> +	for (i = 0; i < mux_chip->controllers; ++i) {
> >> +		struct mux_control *mux = &mux_chip->mux[i];
> >> +
> >> +		if (mux->cached_state == MUX_CACHE_UNKNOWN)
> >> +			continue;
> >> +
> >> +		ret = mux_control_set(mux, mux->cached_state);
> >> +		if (ret < 0) {
> >> +			dev_err(&mux_chip->dev, "unable to restore state\n");
> >> +			if (!global_ret)
> >> +				global_ret = ret;
> > 
> > Hmm... This will record the first error and continue.
> 
> In the v2 we talked about this with Peter Rosin.
> 
> In fact, in the v1 (mux_chip_resume() didn't exists yet, everything was
> done in the mmio driver) I had the same behavior: try to restore all
> muxes and in case of error restore the first one.
> 
> I don't know what is the right solution. I just restored the behavior I
> had in v1.

Okay, I believe you know what you are doing, folks. But to me this approach
sounds at bare minimum "unusual". Because the failures here are not fatal
and recording the first one may or may not make sense and it's so fragile
as it completely implementation-dependent.

> >> +		}
> >> +	}
> >> +	return global_ret;
> > 
> > So here, we actually will get stale data in case there are > 1 failures.
> 
> Yes, indeed. But we will have an error message for each failure.

Which is also problematic. PM calls may easily spam the logs and outshadow
really important messages (like oopses).

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
