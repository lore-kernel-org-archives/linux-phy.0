Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39440FF8860
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 13:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uCv9Yl/xER+kS46z+h3r6lkbtjhrNFd1wGk96/8uvo=; b=aNUEF3Eo+d5yIl
	omZUk3XYzjrB8+2aPd7hFYoEtgtR6arPdLF0jGEMHS+ASv5iCvka2qUEB2SC9LZxL+Rj6iyjtO260
	jUvfnPdTD72cMgRq72umAvjXCoVH3Z/qJ6rOLXWY0v6HMlHQW2KbekDSD2vlNOc/UqVuqt+AhlU44
	8ER4bgxG1QlXoK7q+5CxaibeCPz6pCVB3fX3ic9TkpWu1J3GuOPNZkYUsadIJ04iIUZ/o4V1J+qfX
	ib6zc2M6sPG4rpr7vVQBCKB6caseVfjjMLZeLe+5qRpdzXYJ4fbywh/gNGcJi3/CEOL6DUzLug7pG
	0qjCxTKGLP/5P8ILHiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHM6k-0000000H0cU-30Vz;
	Mon, 27 Apr 2026 13:34:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHM6j-0000000H0cE-4BLM
	for linux-phy@bombadil.infradead.org;
	Mon, 27 Apr 2026 13:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=qXQ8ifQTmtQba1O+wEVvAGuRBBi79zbiRyiWPicjn/I=; b=VAyVAjs9ppaFq4hWpW6YkKgLUd
	fc0SxM7SoLmudQLos24dOLxPw0Oqgra9r0m3ECQ1Hl+Ac0IYosuDH4qzFcecmhGFY3zWsWIPkBfKv
	NzvIuuNoRQpC2lXWOt3jKGvrRZ4BVQAvFsKsCRqkKAgD54f87nLUfBFwxRwI0Bk+7NgvA7z6cjExq
	l7rXTGu2PLcl1axOKuHeq0NYwOCCch/6/VgmWD5eGa60yB08ydVIFJadOOfrrU1wKkDJmFjlY7I+i
	zVFdzxj+fLIwmXr+wV3maGrWpCSWHSoc5UeFdH5JWI0lhHxD4Yt87tUqVOdyur8XSyIPYbCepDquU
	ej48Wptg==;
Received: from mgamail.intel.com ([198.175.65.9])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHM6f-00000000gCn-1I2B
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 13:34:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777296877; x=1808832877;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CxJ728BK4g6l5AEja2sNEowQIIAIo5d8EbB+gqZ212k=;
  b=kvXtyPZSK/o1jbxLlpUb/slgwvpUBaL980QmJ2mohfwuVwjAqjKq4b5L
   8V8Ltud2cwHTS7qLAJvqCGqhjmQjQDYOa4ap47+tGDETREySiB4CgEjUB
   TyQ2hT+MfY1QooDZA4iOPHMM3WA6if0NtGFcK3h5eE/L5gauOZfPDWeuw
   Nk/RIvxcUC7VgbPvdaZ+j4+3fvj/exW0Ix/I78XRRPHi4Gme9wThL6onI
   zoZ21dsPtdkvpcfWGPaXd9BFGamfPvJQfaGHs68Z8IYxt7jc7YiK3U6di
   M8rPz8dxB/rIKfa07CpBBlsR0S+Pd69xstZ194inGdw4Uk7fZIdI2KV22
   A==;
X-CSE-ConnectionGUID: yQsYUVVoQ8CkxY7rhRA9iA==
X-CSE-MsgGUID: omMdaVJMQIu19Uj4IBDFsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="100840562"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="100840562"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 06:34:31 -0700
X-CSE-ConnectionGUID: LslyeJx8TyeRyzT+Q0/pcA==
X-CSE-MsgGUID: 11RsWyCPTqWg7oiZUeZOsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="271771646"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 06:34:29 -0700
Date: Mon, 27 Apr 2026 16:34:26 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <ae9l4n8wocbVegcJ@ashevche-desk.local>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <ad6KwGIhpJn_2eVz@ashevche-desk.local>
 <7bcb68c4-e4bd-4ad9-bb75-99e0845b204c@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7bcb68c4-e4bd-4ad9-bb75-99e0845b204c@solid-run.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_143437_812063_7BBA7B76 
X-CRM114-Status: GOOD (  15.95  )
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

On Mon, Apr 27, 2026 at 11:09:48AM +0000, Josua Mayer wrote:
> Am 14.04.26 um 20:43 schrieb Andy Shevchenko:
> > On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:
> >> The driver does two things that need to be addressed:
> >> - includes subject to remove gpio.h
> >> - checks for error code from device property APIs when it can be done in
> >>   a robust way
> >>
> >> This series addresses the above and adds a couple of additional refactoring.
> > Any comments on this? Doesn't look like it being applied so far...
> For unknown reason your patch-set did not arrive in my inbox.
> Perhaps it went missing for others, too?

Are you in the MAINTAINERS for this part of the kernel?
The CAN NETWORK DRIVERS and GENERIC PHY FRAMEWORK do not list your name.

If you think of mail delivery in general, it's delivered at least to the ML
https://lore.kernel.org/all/20260317203001.2108568-1-andriy.shevchenko@linux.intel.com/

TBH I don't know what to answer to your question as I don't know your expectations and
how it should be fulfilled taking into account my above question...

But thanks for the reviewing! I will address the commit message in v3.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
