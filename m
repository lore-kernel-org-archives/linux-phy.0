Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD11AC43334
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jun 2022 12:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/rm2UysBVsonRwkJAS4Lpfq4l3fPT3sztHTs+FT7Gk=; b=DJbPqumTSrQ/vN
	Emt+5wIVhdZ1gzpCWiH9BBYZvVysIAjJrO2vxkyq2aJ7GQOiwMPDy0vV9lFCQnxJomfNfxdk/lGWG
	/b4MH1YUU7mFrVBNmc+RS+mX+Ieu3nWkthAxYvZ93aawAgHVdZWcRJUn6bHHHnxNd62056GuJ34jK
	qu1Kyg2QscIgy8HoicojL441JsepQye+Eiu330qbbIdYnfvIb/JQtQ5jE5c9gE5OBw+CMmDGOMd0V
	e63LVou4IOMVMj0oEg11xnMn48Dn+KfgQjYoGhrpY/td/OjUARH19wShz0s75S1nNUleZDoQ5bQAk
	hc/44xy1/tCYqEHr8bRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1RhX-00ELD5-P6; Wed, 15 Jun 2022 12:00:47 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1RYD-00EGv8-W1
	for linux-phy@lists.infradead.org; Wed, 15 Jun 2022 11:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655293869; x=1686829869;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JB6XDZr8/Vc4mPnXGbXPJVXKNM+3h3HjTJByMzOT75E=;
  b=UIM/Y+AXEVJTxVHJBw/5oSDptlW4ZLTxtpda4EZSfAmp7pkeLOp1+WdB
   1bGnZbMzj+ZqnK2MPvfs8MEJJ0NtkjS/Nvm5wuXpIHEGaq7wmgVozFxH5
   Mt2z9g1ruAnXLAYhq77/YzsTaXph5NNecBtCYoYKbNgjX+jDBRBYDb+kY
   EJMk2BJCOI+XDfdw5ABP27Z9t5FuocU5RpKc8tjzC1DqrZx8N4cXHkCzq
   LpMJh5Q4PmNn0xUiGx6zX1+aZMziXXVvfozIl9hlbNFQGvt4mG5qvnJXZ
   NbBoF+/Vhkas6L7OCPex4bA0gEphPrcakKuDAgWNnQ5WI7ArcZBhMJl0N
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="276507231"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; 
   d="scan'208";a="276507231"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2022 04:51:06 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; 
   d="scan'208";a="687266169"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2022 04:51:04 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1o1RY5-000dO3-T4;
	Wed, 15 Jun 2022 14:51:01 +0300
Date: Wed, 15 Jun 2022 14:51:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Vinod Koul <vkoul@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Ferry Toth <ftoth@exalondelft.nl>
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
Message-ID: <YqnHpXvZJEfhX21/@smile.fi.intel.com>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
 <bd21d5c6-ed5f-dd8c-f0bf-73f54ca8ee58@redhat.com>
 <YqiGocQ+vr9KjUHK@smile.fi.intel.com>
 <390cf16c-f07c-ebfc-08ad-25b242548953@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <390cf16c-f07c-ebfc-08ad-25b242548953@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_045110_099375_8ECB5E56 
X-CRM114-Status: GOOD (  14.99  )
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

On Tue, Jun 14, 2022 at 05:49:22PM +0200, Hans de Goede wrote:
> On 6/14/22 15:01, Andy Shevchenko wrote:
> > On Tue, Jun 14, 2022 at 01:23:21PM +0200, Hans de Goede wrote:
> >> On 6/13/22 18:08, Andy Shevchenko wrote:

...

> > [   35.126397] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer reset
> > [   35.126418] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
> > [   35.126455] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
> > [   35.126465] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer reset found
> > [   35.126476] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer cs
> > [   35.126485] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
> > [   35.126538] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
> > [   35.126548] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer cs found
> > [   40.534107] tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
> > 
> > (I put 5000 ms there to be sure)
> > 
> >> I'm fine with going with this workaround patch to fix things.
> 
> Ok, so I guess we should just apply this workaround patch to make
> the error non fatal. Still would be good to dig a little deeper one
> of these days and see what is going on here...

Can you give a formal tag?

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
