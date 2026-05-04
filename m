Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82DE6FF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 07:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UQfebfGeWGaHAtfav1tisjpJI+SIrYMltry3KkuzIc=; b=htalR1aUX6Ebs3
	IK4sRY+ny3u8LekYk6EOU/N/tfugNZX0C2lIT3NZzcjBgGOJ1yeoK5H5Sm5xu72pw9wQXp/HFVNXN
	vYnHFztTG/0AgwBxV2Hbf9AN9spe/i20kcJ6VHG+HlIb5HnsB+Eb1HeNl61M5npNvw1VJw312WGql
	HJj0Z3/UCaQp+mDAoYSru8+TpRj+0UqKmYv/hTg5zM3LR6B7qfMhWM+Qk4YyK+77d4jbeFulHacI4
	2LaiGwsHwBtC16CWqgQLLXKU+169kXF+hgkKAJ6sxcMhTFga7BShJAHfHacRqQRiC6wjf3hR7GIK7
	Xitm1miUyFvwcpIDsL8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIs-0000000CYgI-1GgS;
	Mon, 04 May 2026 07:01:18 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIq-0000000CYfN-3C4Z
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 07:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777878077; x=1809414077;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2C3RgUQGUgPre4/9d/tp99V+jaB/cgZ2W5hnW86hzMA=;
  b=JYacqeDBbC6aXzg8kQVrsDbHiDprEKxWxT5e+2bZqhoFAPq+5tanuzKT
   Izr26aeyRixp80ABuM4tQJ0yMWMX3ZBQlthUALnX2RhcG5Yhp/xAXrWKN
   iSeHATSPFJNr2HMhLatZJItLS5p99QwTJXNfrqw8oIWFL2sEM+xriuFsR
   Qk74N0VWMIaufYISxsBNv1wOVMrsBd/wRgJ7SLTQ90SauTnmjbhbKd/gZ
   SE9ZBukd6PtfM1WoRAnLhb1dLF8rvetLfhK0y2eSCiLJEhFtu47VrQu2o
   P6jVzfP6a0oace2zPHzA8LtXrB8A+a5/aj/joXDsf4mUsUcC/LNObiW7B
   g==;
X-CSE-ConnectionGUID: wTJgXQiIRr6E3/rfW8cQUQ==
X-CSE-MsgGUID: fsFAEa47TGiAXHNiIrtq6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82344163"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="82344163"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 00:01:17 -0700
X-CSE-ConnectionGUID: 30Di1k+GS9efkmI+mnyf3Q==
X-CSE-MsgGUID: oUliCpgYROymh1nOd4pB2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="240422915"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.78])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 00:01:13 -0700
Date: Mon, 4 May 2026 10:01:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <afhENyhj9CEroKou@ashevche-desk.local>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <ad6KwGIhpJn_2eVz@ashevche-desk.local>
 <afd_csl0eHFfVWLP@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afd_csl0eHFfVWLP@vaman>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_000116_937578_3A04C8ED 
X-CRM114-Status: GOOD (  14.52  )
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

On Sun, May 03, 2026 at 10:31:38PM +0530, Vinod Koul wrote:
> On 14-04-26, 21:43, Andy Shevchenko wrote:
> > On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:
> > > The driver does two things that need to be addressed:
> > > - includes subject to remove gpio.h
> > > - checks for error code from device property APIs when it can be done in
> > >   a robust way
> > > 
> > > This series addresses the above and adds a couple of additional refactoring.
> > 
> > Any comments on this? Doesn't look like it being applied so far...
> 
> Apart from stray delete, rest looks, fine. Can you fix that and rebase

Sent as 20260504070054.29508-1-andriy.shevchenko@linux.intel.com.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
