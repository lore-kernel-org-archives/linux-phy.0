Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AECFCA5FC1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 08:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuiOASWOUkjU/5VF2Swyonhbsa1uc3mvSCdjbMNL4eM=; b=KB36pMoHFl7yhi
	WQqkW6IEKYVMtbEmvoeLeVbMCG3afZSqwRdnbNkvDg3YrbYLL4QRFvbxpDLfQgg2pRe27hOIM2T/o
	yAbqLhQIpPseFc6KXh54yyPTshYTMp/AfS/KHErmpSRJm4ZUpXVKErDrFbIxuoSJcRhd4LJV8npq2
	Felq5tB+E3Rz5xdj3+AAAP9fdMaNsRMgNbQ3CF/Odw2s8BSly8oLDPHonm3tv9mOmry1992WEr+n2
	jk85kdfz5Y1F0ktfo9e09wfFfaH+a1ussQgUoWpCJMymegrFIUA18jUYIhrrFslDB8Aho//28d3eX
	5aAfnA5SsxR9adOoWHqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpi2-00000005Qbj-0Bn4;
	Wed, 30 Sep 2026 08:30:39 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBphx-00000005Qag-2to7
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 08:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1790757033; x=1822293033;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Ydk1UzmYkCmyaMmUxBF1eUbedcHi9fidK7gv8ursg1Q=;
  b=UM0QPOCx7i1cBHmoV/iWCNQ60H4Am2XyPneGAaSg1EV96GJ99qREVKcr
   Rgfawg037wZywQerjVlKZJXkM4Nf9uc9/Zcg9JbccYR4dDlbAsaYyNEDH
   vApdpylVE2MO9mPpEfozu9fD8UbcbRGGxOflkXiDe1TKgsGE8clXfbJEz
   2JQnVTgSoqsCo+VksV5o3q+8F5GhbkgfdCwZ+TvZxCz8OTobSSQtnhNqy
   j1T9eTiSCSEKK6QehuPjvB6eHUUhjotNUGtnuxDVNRLTwpreN1ScSqt4d
   9xeP8JixW5HvRsqG5pTa0wl8gr7U8TT9wzpD/kNVk6rvTNDvBrUduroQ/
   g==;
X-CSE-ConnectionGUID: /EJ5jmFqTBqp4swpKq6ozQ==
X-CSE-MsgGUID: ZgkVQ04kRpCQVssntMDzBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11920"; a="102060237"
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="102060237"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 01:30:33 -0700
X-CSE-ConnectionGUID: 7Cdf1t9XTKiLIl7ly1EE1Q==
X-CSE-MsgGUID: die/4IOeQrawIw+kc5WN2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="272091278"
Received: from spandruv-desk1.amr.corp.intel.com (HELO localhost) ([10.245.245.137])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 01:30:30 -0700
Date: Wed, 30 Sep 2026 11:30:28 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 5/5] doc: phy: Document some bulk helper functions
Message-ID: <arzIpLoItQemk3CG@ashevche-desk.local>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-6-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929085235.469515-6-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_013033_761314_2EF433FD 
X-CRM114-Status: UNSURE (   8.30  )
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

On Tue, Sep 29, 2026 at 04:52:35PM +0800, Inochi Amaoto wrote:
> Document all newly added bulk helper function, it can be used to manage
> a set of PHYs automatically. This is useful when the driver want to
> simplify the management of multiple PHYs.

It misses to document unusual behaviour on an error and np==NULL cases.
But before updating let's discuss first if that kind of behaviour
is even desired.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
