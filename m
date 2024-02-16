Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67407C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Md+VZ0kJ7PFXymZFz+ymmm4KBArDZpf36S+K0ePoP0Q=; b=kzGkmKyjVzZJcz
	iZM5VXLbtycBZsG1f/Pt53cQeduxBP9Za0hM03PAcAI8MZ+avuTYAmr7I7voaRedFKtUPWUZas8k2
	aKcY5xIueIm7L6juLArt4kgCiYMWRZPs1t6GoBQtibr8XtYj5a+yv7sVd0tICkzYSgDWNTor56F7u
	qC1/7HUbkusADhjijk3CFn1p6nkSn39n3Hbh8elh2ZYV7APaIIXy2LlBZ1h8DJW3kvK0D3cyPWmd6
	qxMMtvIR+ygtG/2JlmEtz/OA0iZlZAyqSBCYr1CzehQSirzPlm1ONmg+DRBjLce2KZDJKuf+SiXYX
	DLaND1R/3blqB+7aMPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razkn-00000002gwr-0DwT;
	Fri, 16 Feb 2024 15:03:53 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razkk-00000002gw9-0WBT;
	Fri, 16 Feb 2024 15:03:51 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2337587"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2337587"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2024 07:03:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="912373712"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="912373712"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2024 07:03:41 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1razkY-000000054p0-1409;
	Fri, 16 Feb 2024 17:03:38 +0200
Date: Fri, 16 Feb 2024 17:03:37 +0200
From: Andy Shevchenko <andy@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
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
Subject: Re: [PATCH v3 08/18] phy: ti: phy-j721e-wiz: split wiz_clock_init()
 function
Message-ID: <Zc95SWxtfSQs0a0-@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-8-5c2e4a3fac1f@bootlin.com>
 <Zc4xJtLl3zo_YrBC@smile.fi.intel.com>
 <Zc76d4B4hjTC3xum@matsya>
 <14429802-b4d8-4a3e-88ea-a9fc55d2251c@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14429802-b4d8-4a3e-88ea-a9fc55d2251c@ti.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_070350_216398_22702E48 
X-CRM114-Status: GOOD (  18.25  )
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

On Fri, Feb 16, 2024 at 02:34:39PM +0530, Siddharth Vadapalli wrote:
> On 24/02/16 11:32AM, Vinod Koul wrote:
> > On 15-02-24, 17:43, Andy Shevchenko wrote:
> > > On Thu, Feb 15, 2024 at 04:17:53PM +0100, Thomas Richard wrote:

...

> > > (Side note, as this can be done later)
> > > 
> > > >  	if (rate >= 100000000)
> > > 
> > > > +		if (rate >= 100000000)
> > > 
> > > > +	if (rate >= 100000000)
> > > 
> > > I would make local definition and use it, we may get the global one as there
> > > are users.
> > > 
> > > #define HZ_PER_GHZ	1000000000UL
> > 
> > Better to define as:
> > #define HZ_PER_GHZ 1 * GIGA
> 
> The variable "rate" is being compared against 100 MHz and not 1 GHz.

Extremely good point why constant definitions are better (to avoid missing
or extra 0, etc)!

> The driver already has the following macros defined:
> #define REF_CLK_19_2MHZ         19200000
> #define REF_CLK_25MHZ           25000000
> #define REF_CLK_100MHZ          100000000
> #define REF_CLK_156_25MHZ       156250000
> 
> So would it be acceptable to change it to:
> 	if (rate >= REF_CLK_100MHZ)
> instead?

Sounds like a good idea to me.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
