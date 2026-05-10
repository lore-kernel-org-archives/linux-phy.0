Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25568CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0I6mLC18D/IRlW0V63318k7vR4ghuIwRWnfIst5tddg=; b=0R9bPHExqRVtE7
	B531IHwVQIg6zve4Da5Pn3RKquw0JjPuQGljldOs5rmwjHYb0lwwd7GoVjc/VrivRExB3LOCfPWR6
	psIceRPn/VVDVG6HcMjHvNfxigDkdVejM29VIsj19QGRBMJStsV4z2dRQcWiIWggEfApAunst9sik
	H8tdEiPz/cZD5cUPYyeOEexBQNme/WkSW8GyHKkiupJheANJ7jmEkZFQiSdxpDWcDb+P4XuY0kMkN
	HhjRFJBygxWqAXj34TneqLglO5VX2gFdgePgy3jUHaNOOTXWnyrMO0pb+bgCv/dVgP/NlMQv+oyX/
	e+bOeUlmWnXq5DeEavKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3fY-0000000Aniu-2e0G;
	Sun, 10 May 2026 12:54:04 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3fV-0000000AnQt-1Fxx
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:54:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778417642; x=1809953642;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2DvbnoTQCS7Wsxem7vg1TUbb+5RuywPoURhAB4F046E=;
  b=acBXYPrDwInPT9ZRYDvbYtjkzNOfvvWTt8iXsICFUVp9UVWXwDCG/006
   8uvvHA5k90363dJkEKP65rVa1ycQDF2kHrjciW4z/QTvnrOKXUvq0nbbR
   vG5E5XoHsiRFRNVrKHq6fRvS/EqVGhy9fHMSEDKp1xeqxSmplPfhLN91s
   JusgNnWDk+lhitboA8NnNgnbCTkQZwz6h3vE2NlxocGwzchxd0JHqwkm4
   w6182r/DoJDQo9f/+E6d52cmtVyWrPkLHYj7edv1g5vIyZYYm8QLMnkny
   sbd/QSTrnDc5kgJheiRo44Bkw56yNh7klYIevesrQo97FcNJzOD4RZ3ji
   A==;
X-CSE-ConnectionGUID: VaNXU/oDS+Wko/iHeTOXwg==
X-CSE-MsgGUID: l49VIeaFSw6oL3LF4TBzLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="89632188"
X-IronPort-AV: E=Sophos;i="6.23,227,1770624000"; 
   d="scan'208";a="89632188"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2026 05:52:00 -0700
X-CSE-ConnectionGUID: 9984BpVGQIysUJuhcmIG/w==
X-CSE-MsgGUID: R1gWf7xvQjKEOatdPl2yzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,227,1770624000"; 
   d="scan'208";a="232738753"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.244.171])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2026 05:51:57 -0700
Date: Sun, 10 May 2026 15:51:54 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Peng Fan <peng.fan@nxp.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulfh@kernel.org>
Subject: Re: [PATCH v3 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <agB_aj_2hzF3ON2h@ashevche-desk.local>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
 <agBjOmnpKuZoDfWG@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <agBjOmnpKuZoDfWG@vaman>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_055401_374901_FB9A6B5C 
X-CRM114-Status: GOOD (  17.62  )
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

On Sun, May 10, 2026 at 04:21:38PM +0530, Vinod Koul wrote:
> On 04-05-26, 08:58, Andy Shevchenko wrote:
> > The driver does two things that need to be addressed:
> > - includes subject to remove gpio.h
> > - checks for error code from device property APIs when it can be done in
> >   a robust way
> > 
> > This series addresses the above and adds a couple of additional refactoring.
> 
> Sashiko flagged some issues, some of them not introduced by this, can
> you please check this:
> 
> https://sashiko.dev/#/patchset/20260504070054.29508-1-andriy.shevchenko%40linux.intel.com

"Could this result in a null pointer dereference if device_get_match_data()
returns null?"
Yes, it sounds legit but not introduced here.

"In the original code, the warning was suppressed when the property was missing
because err evaluated to -EINVAL. Now, if the property is absent, max_bitrate
is explicitly set to 0 in the else block, which then unconditionally triggers
this warning."
True, but I don't know which is better here, I consider that it's
good to inform user about default being used as a fallback. I can change
this back to the original logic. What do you prefer?

The third one is the repetition of the first one (see above).

TL;DR: The only one legitimated question is about a (new old) warning.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
