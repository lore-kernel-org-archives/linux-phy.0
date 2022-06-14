Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 724FFC43334
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 13:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v68hPAn4RfBr1XXdvnbpTPa4O7dvGLvMtsMSsNlI5VA=; b=owsfeWARk/YctF
	20j4uGC3na3htuSesOG/ZXRLLQqvk3OVq8G+KkL8jOUA5rwkL5u6KGckAnaw2dMVI2J8t6OyA7/PQ
	9VNe2OEwf8mDA+/HX7d44bkXCKDXepYdTchjA2980F+z3SSOKY7ZYjPLEdPQVzKzHZLaFNKoFgRZR
	xSz+ZEQnnA/xZKZfF2v59gdCWdnkJWsOWMfc+S3CEB/Q+nO3jcajMSNKzGbNOVqlwPQ7vrCfb8mRd
	w2z4/ZGLzy5hSGDoCw+EIqNev28mXiLRmYXm/HuCazCaIst1H/lG3lV5WQBH0QPKuckpoMZPr4C1m
	ZyTXconXUKghX3tklXSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o16B3-009hdd-SE; Tue, 14 Jun 2022 13:01:49 +0000
Received: from mga05.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o16B0-009hcW-IU
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 13:01:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655211706; x=1686747706;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zRFuyf2koCxcTUK6tBYygRK9GVKRlUR6Qa4BeN0XSs4=;
  b=e3rxyViUUFMyqj4vHDG/vmhh7phcrEMNVcEpsN35Wm1nbusD/mE7K/Ki
   GMJxTM63FDyL2lqkZt5Ihz12Rf+EHO02XI2gPpMve31qTcmj4/BLRTAIT
   K3yxN6DYK0Da12PEFTxT0uJWKjEjZe7AsZzTkyIEE84SBvpMp86rvr5/Q
   vjqJUVleRNx+o97NELaVXR5EO/5+9wbsIHWlze7by0R45CrlyNhy++Zvi
   RS3McVBkTfhhrXuzb/41G6fZizGfKkei3c0tOf1abpr6VUCP2rkiRuxxt
   WgrRKMUQ/3tj2MrpF1jIt89OIGLkcPJEJQOvtGbXgbcl3hs5GehQ3GNSu
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="364947876"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="364947876"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2022 06:01:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="652024736"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2022 06:01:24 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1o16Ab-000cND-S6;
	Tue, 14 Jun 2022 16:01:21 +0300
Date: Tue, 14 Jun 2022 16:01:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Vinod Koul <vkoul@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Ferry Toth <ftoth@exalondelft.nl>
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
Message-ID: <YqiGocQ+vr9KjUHK@smile.fi.intel.com>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
 <bd21d5c6-ed5f-dd8c-f0bf-73f54ca8ee58@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd21d5c6-ed5f-dd8c-f0bf-73f54ca8ee58@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_060146_666999_553F3F3A 
X-CRM114-Status: GOOD (  24.35  )
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

On Tue, Jun 14, 2022 at 01:23:21PM +0200, Hans de Goede wrote:
> On 6/13/22 18:08, Andy Shevchenko wrote:
> > On some platforms, like Intel Merrifield, the writing values during power on
> > may timeout:
> > 
> >    tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
> >    phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
> >    dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
> >    dwc3: probe of dwc3.0.auto failed with error -110
> > 
> > which effectively fails the probe of the USB controller.
> > Drop the check as it was before the culprit commit (see Fixes tag).
> > 
> > Fixes: 09a3512681b3 ("phy: ti: tusb1210: Improve ulpi_read()/_write() error checking")
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> Copy and pasting my reply about this in another thread to keep everyone up2date:

Thanks! My replies below.

> """
> In my experience with using the phy for charger-type detection on some
> x86 android tablets which don't have any other way to do charger detection,
> these errors indicate a real communication issue for reading/writing
> phy registers. At the same time this usually does not seem to be a big
> problem since the phy seems to work fine with its power-on defaults.
> 
> In case of Bay Trail these errors were related to 2 things:
> 
> 1. Autosuspend of the phy-interface block in the dwc3, fixed by:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d7c93a903f33ff35aa0e6b5a8032eb9755b00826
> 
> But dwc3_pci_mrfld_properties[] already sets "snps,dis_u2_susphy_quirk",
> so I guess it is not this.
> 
> 2. There being no delay in tusb1210_power_on() between toggling the
> reset IO and then trying to communicate with the phy, fixed in:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=df37c99815d9e0775e67276d70c93cbc25f31c70
> 
> Maybe the:
> 
> #define TUSB1210_RESET_TIME_MS				30

Actually it's 50.

> Added by that commit needs to be a bit bigger for the possibly
> older phy revision used on the merifield boards?
> 
> (note it is fine to just increase it a bit everywhere).
> """
> 
> IMHO it would be good to try and increase TUSB1210_RESET_TIME_MS (start with say 100
> and then see if e.g. 50 also works). If increasing that does not work

No help

[   35.126397] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer reset
[   35.126418] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
[   35.126455] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
[   35.126465] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer reset found
[   35.126476] tusb1210 dwc3.0.auto.ulpi: GPIO lookup for consumer cs
[   35.126485] tusb1210 dwc3.0.auto.ulpi: using ACPI for GPIO lookup
[   35.126538] tusb1210 dwc3.0.auto.ulpi: using lookup tables for GPIO lookup
[   35.126548] tusb1210 dwc3.0.auto.ulpi: No GPIO consumer cs found
[   40.534107] tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80

(I put 5000 ms there to be sure)

> I'm fine with going with this workaround patch to fix things.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
