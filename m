Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C22DC43334
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 15:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRaT8Ys4pDF96BDiip83YuaR04vycFMEV+Fv4gEjFJY=; b=U+pPUr+O55nxjJ
	alLt1p0xOypHo9VAl82EGZwVZRSt/whuvg4Z4K2F47R00JlHNp8TRhY3Ryh4aOwJKLGYfHmDNa/vn
	yEi5WRasE4yeFCeJl4ISySWYa0kQUCgHCgB1UyET6D9t7ksWEYpO5/xD4oUMIHMpFk0Jp2mAVKlZK
	SXbj+3Q1FyI/bneGhLv8sWYbshvVIJpJf+K3DFcm5ELj8oBwusgfGp8ZYkgJvEFpb/gNPWzpICo3M
	IQd1zA9+eA2li9rcZKRJ82dr/M6ZMB6v0T4TQIJCtdGU/lNBoG1VtQwqfqH7suYD3pyuVloAbhq/v
	6NH3gIiMoNXkOUsfJnCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0mJ7-004Z6u-H5; Mon, 13 Jun 2022 15:48:49 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0mJ4-004Z3g-Nk
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 15:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655135326; x=1686671326;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YV1u128bptBEeS4TuW+YczW2sk55JeqWv5VbG1swMZg=;
  b=WcFuWJz0FV2yBQrywbi7jsbnlwbg/oPC8rFSXci+9R6XtZ7Vl7/m5R5z
   Ge7zX/1325L7T0eeO3zJvCFeT2sSYlg9Vuh4xRrt5KbE3v8XcZl6YqJ5F
   zRtmnMHIhQ7JgvcjNz5A/y4Vtrn9fWRPTxwOBZjbZhXa4IqtTtyV+o6X6
   0lOz5vqPIrAIGnl8gl7FHRbpdrq9LKzDq5BHQqWuc4k3M1M6Lv6Pt/Udu
   00VBNz4RtmyxPt9CA9fHiM+v9QmOVWIpSbvfOgrufKFD2f5sj91IVYn1z
   qBC/3B63JmgKxX70b11+WFMe32kCovEAwLkF66gCs3tIs0rFKrMshYPE2
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279369375"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; 
   d="scan'208";a="279369375"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2022 08:48:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; 
   d="scan'208";a="726329854"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2022 08:48:38 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1o0mIt-000bA4-Dl;
	Mon, 13 Jun 2022 18:48:35 +0300
Date: Mon, 13 Jun 2022 18:48:35 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Hans de Goede <hdegoede@redhat.com>, Ferry Toth <ftoth@exalondelft.nl>
Cc: Felipe Balbi <balbi@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, linux-usb@vger.kernel.org,
	Stephan Gerhold <stephan@gerhold.net>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/9] phy: ti: tusb1210: Improve ulpi_read()/_write()
 error checking
Message-ID: <YqdcU8nE/SMr353v@smile.fi.intel.com>
References: <20220205164535.179231-1-hdegoede@redhat.com>
 <20220205164535.179231-7-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205164535.179231-7-hdegoede@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_084846_893682_43B243BF 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
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

+Cc: Ferry

On Sat, Feb 05, 2022 at 05:45:32PM +0100, Hans de Goede wrote:
> ulpi_read() and ulpi_write() calls can fail. Add wrapper functions to log
> errors when this happens and add error checking to the read + write of
> the phy parameters from the TUSB1210_VENDOR_SPECIFIC2 register.


This patch seems to break Intel Merrifield platform.

Before:

[   36.333644] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[   36.339828] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
[   36.352566] xhci-hcd xhci-hcd.1.auto: hcc params 0x0220f06c hci version 0x100 quirks 0x0000000002010010
[   36.367062] xhci-hcd xhci-hcd.1.auto: irq 16, io mem 0xf9100000
[   36.378429] xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
[   36.384705] xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2

After:
[   32.986776] tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
[   32.994053] phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
[   33.000601] dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
[   33.007486] dwc3: probe of dwc3.0.auto failed with error -110


Any ideas?

P.S> There is no bisect log, since it's done manually with a good guess by
Ferry. I have just reverted patches on ULPI from this series and start applying
them one-by-one.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
