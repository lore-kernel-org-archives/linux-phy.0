Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5FE0C48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 13:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+bEipQ2vNnhKUUfr47pUDHHFWPJm6Ix5517E4K4yQc=; b=vkRdLfKk4wrqby
	oDu+vKbe+awQ0MX7frVPqDSsPZsybTnlLbYXzNl4IVpxOQVc6Xjrfs1PwFgEA+EzJrXQPo7VR3Ttx
	z+hvp5vMcIlL0UjAodYkxTQvsiSt7zVbvG5jUts93/MvPPSpykqpygyjmRyXhHO5/9Qx18ysRas7P
	gFXapGnXkg9zDfbpIFF0tfAEJsXD+vJugEwY84+/K0xglqTqoEgU8aDbg6Bglz9DT20cUwx9tQLNy
	ZJU8Iea/BmM75oUS05buJNmJSJe1kmaGZGiLBlngs9nnMU1GF6xSrOZgMRjp6JcoGRgTrmJFnvNAo
	J0T2h9eDw0+EdNi1KHCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmPr-00000000zBn-2TSW;
	Wed, 21 Feb 2024 13:13:39 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmPn-00000000zB5-3qgc;
	Wed, 21 Feb 2024 13:13:37 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="6454521"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="6454521"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2024 05:13:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="913302142"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="913302142"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2024 05:13:26 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1rcmPY-00000006M4t-3IcO;
	Wed, 21 Feb 2024 15:13:20 +0200
Date: Wed, 21 Feb 2024 15:13:20 +0200
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
Subject: Re: [PATCH v3 02/18] pinctrl: pinctrl-single: remove dead code in
 suspend() and resume() callbacks
Message-ID: <ZdX28EJ9LtDWfVmH@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-2-5c2e4a3fac1f@bootlin.com>
 <Zc4tedAhqYX3bQcw@smile.fi.intel.com>
 <78add459-a96a-46c6-83ff-e2657d4d3db4@bootlin.com>
 <Zc96dSff5Y-dufrJ@smile.fi.intel.com>
 <a2c3c5b9-79a3-4793-892c-b1ab79b71c7d@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2c3c5b9-79a3-4793-892c-b1ab79b71c7d@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_051335_986334_9DB82CD2 
X-CRM114-Status: GOOD (  22.91  )
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

On Wed, Feb 21, 2024 at 12:01:43PM +0100, Thomas Richard wrote:
> On 2/16/24 16:08, Andy Shevchenko wrote:
> > On Fri, Feb 16, 2024 at 08:59:47AM +0100, Thomas Richard wrote:
> >> On 2/15/24 16:27, Andy Shevchenko wrote:
> >>> On Thu, Feb 15, 2024 at 04:17:47PM +0100, Thomas Richard wrote:
> >>>> No need to check the pointer returned by platform_get_drvdata(), as
> >>>> platform_set_drvdata() is called during the probe.
> >>>
> >>> This patch should go _after_ the next one, otherwise the commit message doesn't
> >>> tell full story and the code change bring a potential regression.
> >>
> >> Hello Andy,
> >>
> >> I'm ok to move this patch after the next one.
> >> But for my understanding, could you explain me why changing the order is
> >> important in this case ?
> > 
> > Old PM calls obviously can be called in different circumstances and these
> > checks are important.
> > 
> > Just squash these two patches to avoid additional churn and we are done.
> 
> You mean invert the order instead of squash.

Either would work, but see how much churn in terms of changing just changed
lines it adds.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
