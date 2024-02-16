Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88E41C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 14:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H68oJrHeYpsY7m+r+yB5LfeWUwUgGaHoYY0YmVfIDGM=; b=r92VIzMUphXzHz
	6ZEY55I2H+UP/oVaav3EgUdmWoJ77hNEtE2fZOW2kn+NEHcIavBWQLJ91qfsMB5E0lBqT65pTG3Rv
	iNUpgown6RVp1/jyUXVUY9Cs0vdVgnjTZDK8mXGG0kssGg9MPsJift/Lu6MYuYCrQFDvXEd18qZhi
	2GRBTF9s01ZjetX9Y3kx01TjoJmlyNtIXlwYHKzlyOdZ0hUArn0Ar3UWMZyGKhrz4VI381pB6Lt+t
	xG9C8pW98Z91PXVTCU61WHcnj5ZZm2FGNra3Anarrw1aPEbPHeae7pDOqU/JU89LeJ3R0xHfFU/OV
	WC4irGtZxOZlVqkS+eHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razdm-00000002fnm-0RWf;
	Fri, 16 Feb 2024 14:56:38 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razdj-00000002fn3-0hDR;
	Fri, 16 Feb 2024 14:56:36 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2336762"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2336762"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2024 06:56:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="912372670"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="912372670"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2024 06:56:25 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1razdW-000000054ij-1AX9;
	Fri, 16 Feb 2024 16:56:22 +0200
Date: Fri, 16 Feb 2024 16:56:22 +0200
From: Andy Shevchenko <andy@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Thomas Richard <thomas.richard@bootlin.com>,
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
Message-ID: <Zc93lnpGK8PGKbb-@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-8-5c2e4a3fac1f@bootlin.com>
 <Zc4xJtLl3zo_YrBC@smile.fi.intel.com>
 <Zc76d4B4hjTC3xum@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zc76d4B4hjTC3xum@matsya>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_065635_258129_18FC90A2 
X-CRM114-Status: GOOD (  15.11  )
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

On Fri, Feb 16, 2024 at 11:32:31AM +0530, Vinod Koul wrote:
> On 15-02-24, 17:43, Andy Shevchenko wrote:
> > On Thu, Feb 15, 2024 at 04:17:53PM +0100, Thomas Richard wrote:

...

> > (Side note, as this can be done later)
> > 
> > >  	if (rate >= 100000000)
> > 
> > > +		if (rate >= 100000000)
> > 
> > > +	if (rate >= 100000000)
> > 
> > I would make local definition and use it, we may get the global one as there
> > are users.
> > 
> > #define HZ_PER_GHZ	1000000000UL
> 
> Better to define as:
> #define HZ_PER_GHZ 1 * GIGA

(with parentheses)

Maybe here, but when it appears in units.h it will be defined as I wrote
to be aligned with the rest of definitions.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
