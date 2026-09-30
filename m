Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21916CA5FC1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 09:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNmd92VhxSA3D+n5afwm3OwHyYNKhaWpVfI1uj0Le8c=; b=l0LUW14do04b9P
	d2kqLwh/osSN4WNf7d2R4khOZbn0Oy2/SOV6a4rhPE5lznlcNZP19WCr52W94OPztrdGT8SiaQaEF
	A0fjvhErKukO3SMulZvN0Og9fZhIj+pySGo8hOjNdZ1aEzJSxEv1f5xDLpx4RwQ8TII9GmbisfpUj
	WNVY3PvAtmbFmq1mqCSKvBmW4wrzvVQZipvPyrGqhA1z/nwXvk98gkblyLpD6W2Lf8kVKJTo5wPU1
	+MeSRsCsQe9QXeJiMd1Eh0XUYaw2iaqcD2f4mvqNXz2PHwHQ+ntp07Th2uPaSQj2dusjzrA4Igo8n
	c9Xrg99SznFWwPK3P1TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqrS-00000005bhN-2hhd;
	Wed, 30 Sep 2026 09:44:26 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqrQ-00000005bgx-1Y86
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 09:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1790761464; x=1822297464;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=FL6rCNePyUvTAA/B1xwZPzBHbXLYlHZXW9W/X94InN4=;
  b=fgVuz4auK4A0wD/nPK3NgGaXTxTEqlWChfd+VO3e2eZiMxmNS20bw8kw
   OSwIU8geM7hsHU0NJ0sgQHbnpCaDbe0xqrECSeLkOBkO1iWe8oHFTHBuD
   xZY2upwXZdY0/5cfrVXYKzOYfck3l+tTZtSO/wP1r52mhYCe1lbiso03c
   D053GTZwhkdcwLlZI6Q27+C3uzYpLGghwjAmw3zYfiUXrYnTEBfta6t0y
   klBBGK7S8etthcpGccDceOLouf9Nb842mxC5lBQ9rgFhzi5AA8FaGYjEU
   t+0SZ5H5M6faxRs9e1P8ZeOFYwGtezQXZmZpEOPmoKY3fjfQYXeuchimA
   w==;
X-CSE-ConnectionGUID: IRK3LMfSTviyjtH+KmUMrA==
X-CSE-MsgGUID: IPW+FfVSTKmnWyY5XaQW7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11920"; a="91593251"
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="91593251"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 02:44:23 -0700
X-CSE-ConnectionGUID: zOoXZ3AtTviKrA7IrwIJYg==
X-CSE-MsgGUID: Kt2L40X2TDaju94SNARPjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="278848145"
Received: from spandruv-desk1.amr.corp.intel.com (HELO localhost) ([10.245.245.137])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 02:44:20 -0700
Date: Wed, 30 Sep 2026 12:44:18 +0300
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
Subject: Re: [PATCH v4 4/5] phy: core: Add managed phy bulk data helper
 functions
Message-ID: <arzZ8omO_vKnUZhS@ashevche-desk.local>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-5-inochiama@gmail.com>
 <arzITUCmgUp3uiRn@ashevche-desk.local>
 <arzSkE1kY_u4jJWT@inochi.infowork>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <arzSkE1kY_u4jJWT@inochi.infowork>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_024424_418244_18F30238 
X-CRM114-Status: GOOD (  13.15  )
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

On Wed, Sep 30, 2026 at 05:21:08PM +0800, Inochi Amaoto wrote:
> On Wed, Sep 30, 2026 at 11:29:01AM +0300, Andy Shevchenko wrote:
> > On Tue, Sep 29, 2026 at 04:52:34PM +0800, Inochi Amaoto wrote:

...

> > Why not an error? I do not see the _optional word in the function name.
> 
> IIRC get_all it a special optional meaning: treat not existing device as
> 0, this follows the same meaning like clk. Vladimir has a good explaination
> on this in the previous version:
> https://lore.kernel.org/linux-phy/20260907124318.6q4rr2huxyehm3zs@skbuf/

Thank you for the pointer. Perhaps add a short comment or a sentence into
kernel-doc to summarize that reasoning?

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
