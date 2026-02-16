Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C6DEF48D2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 09:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zphAdWDa2JQ6c+DWilrnVOjIm/QDEEYXzvsCDT05uic=; b=b7K4tOsVZfCsRZ
	UixiQTYzwF8bhygZ/urGtAQ2Z0NdH/Du/oy05C01Y0uB+8UDdHzjvl54VnnZf9dUclYzq25Kvqyep
	wnAAmI5y3+29H5Qbkqif13mZqxiEw2Wkkyori1A+mALcoPznuvV2Yjv6gln6rFcD6TWxbm3ErrgQq
	kWt7dwm6ct/2jXim2oltQrp3nXMPx9gtJ+lqoW4Oa74o6fKLxqe+nVPSMxsw2X7oBJUP7dlwnEJjn
	LKaCJtExDct/gTCYUa3GNp64ekG7INA9anqlI6T5VJZeQAn8hnTvZsAWEwL69IuVfN37JZO7sTdmG
	CMZuiklxZDDrn1yYaz9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrudS-00000006E5J-1rtL;
	Mon, 16 Feb 2026 09:11:18 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrudQ-00000006E4x-0VCi
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 09:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771233076; x=1802769076;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Orh2BPAq/oyA5q/2Hwhz3bJFMI2/tMIG6p5Pio6XFm0=;
  b=MeiA78Hty38C2ITn2jUANnHgyhID7UB9EbE35gp+9Vs/WSOUGj0Sil2o
   jSwM6zgFX+vRmCVG39NIezLxpoIMHH2cbRSYTg5sSj/imxbVJrs9oEQbI
   kMF/IoqNqsCbclZ2dS7HAdUw4E3WpNXpsVFZDf0KkDqbydTL25ZNiGXBs
   JX+X/N1Vo3MZqh+e3fGewSKM48XhCsuf5Tf4MmKQxDgIBBIEZg0Yz4VIE
   oypNY28ET9EuD6wON3QBUCGqhC7U8xdTnVL8rOxBctSFkxXK5/6Hxc6S1
   ayLe1NLrZFleIjEc785KxUzD92CWEsdAUZciB8Kj/sD12phjVcUZv1Cne
   w==;
X-CSE-ConnectionGUID: Mhx5vJuZQ9KoLtCRUEF5xg==
X-CSE-MsgGUID: vPnWicotSMiJXWmIxBsf6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="76153709"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; 
   d="scan'208";a="76153709"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2026 01:11:15 -0800
X-CSE-ConnectionGUID: GZudc9rdS3eHbzmd0dooqA==
X-CSE-MsgGUID: K14hzfZgScardz/3c3bEPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; 
   d="scan'208";a="218075827"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.188])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2026 01:11:13 -0800
Date: Mon, 16 Feb 2026 11:11:11 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Haotian Zhang <vulab@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: hisilicon: Fix OF node reference leak
Message-ID: <aZLfL5LD0D0t2ge-@smile.fi.intel.com>
References: <20251112062246.852-1-vulab@iscas.ac.cn>
 <20260216084348.e2ozdqy5unvfs7qe@skbuf>
 <aZLe4-w0Jb50O63N@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZLe4-w0Jb50O63N@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011116_241817_02EA51E2 
X-CRM114-Status: GOOD (  15.75  )
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

On Mon, Feb 16, 2026 at 11:09:59AM +0200, Andy Shevchenko wrote:
> On Mon, Feb 16, 2026 at 10:43:48AM +0200, Vladimir Oltean wrote:
> > On Wed, Nov 12, 2025 at 02:22:46PM +0800, Haotian Zhang wrote:

...

> >  	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
> > +	of_node_put(pcie_port);
> >  	if (!pcie_dev) {
> >  		dev_err(dev, "Didn't find pcie device\n");
> >  		return -ENODEV;
> >  	}
> > 
> > Note that there exists a second reference leak bug in the same function.
> > bus_find_device_by_of_node() requires put_device(pcie_dev)
> 
> Note, there is a pci_* wrapper for that.

Now I re-read this and found confusing comment, please, disregard this.

> > after it is no longer needed.
> 
> Is it only a local variable? If so, it's probably okay to put it, but that
> action needs more investigations of the how the pcie_dev is being used.
> Also, it might be (but I don't think it is) a (double) put_device() call
> somewhere else. TL;DR: the summary of this investigation should be present
> in the commit message.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
