Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 515BDF9D0EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Apr 2026 18:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7rtdwVhUR2NT2Y7IpmuKafzW3zn6B7dP0rrK39d400=; b=sDD8p1x+9A8CCp
	A7NEXUjg5Om1Ag0yKGwMQaZuaPDkYjvwuyN+gs/c5OzayH+amUiNbC7W7Nh6M3V5rYmjje3R2+W1e
	IqYn5RltkKYF6Djs2aXR9l20/zNFBLYwwz6CPO+6XoX+6dZvsYN2olG6eia2DMea0aNJLydSwv+09
	ZOPbPOVwT3GkxWqHxp5yDuRPQ8JXnE6uRbM897bLkQZ0fGyxx03/UEGbn9V46f5+xs7IGGu7BNZO2
	3tRhoTAU6HkywQTDuG568x3Tnti4zwiVVwZG1oIwT9Mmr71+uBbfySkLZ7rlvd0bfCxtl4JAg5gDG
	n1xNs3oTISOvogXt1tuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCijN-0000000077r-3wCw;
	Tue, 14 Apr 2026 18:43:25 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCijK-0000000077D-3hRL
	for linux-phy@lists.infradead.org;
	Tue, 14 Apr 2026 18:43:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776192203; x=1807728203;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=G9WPXJuT87nPx3LRZm4tioyR9pDQugdVZ5fuYwKEFZo=;
  b=jm0Fqinv49C+BB3D5KpD+xWb7Ne6rBQFBv6HdPWdsKpxS/IyJ9zioisl
   OYHi/M8gUrTVevpJvAnxQ5ua1O3vN4kCZHBgc8u500NRKkW/xH+4bB/dy
   7Bao/l/hikvzoLJAVDV9t+3QoqN8k8vYi+3vIE09Y0YiXcUPeGivAYkBd
   K7gGMxY7POMSaFQjUa791bG0l2vWZEb+GKz3kZ/q7Ustwp5Ek9v9ncV8q
   OejAMNs/Xx1O016+5uMo1HgSgjRm9btajJRkkcsYc6cgzq0pFrh+AgUNA
   JryRQ9P/TVUJubGB8fLBTRiG9toLIzEFpsMiNrVsM0yw0UIszt9eLSNlC
   Q==;
X-CSE-ConnectionGUID: Bnl7zb2UR8S/8endILg4iw==
X-CSE-MsgGUID: mRIayQKSSSKqpx3Egm7i6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77234766"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; 
   d="scan'208";a="77234766"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2026 11:43:17 -0700
X-CSE-ConnectionGUID: Ax/JtCqtTduIB164ewpozg==
X-CSE-MsgGUID: aVhCAI69RfG0seamYT2Hgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; 
   d="scan'208";a="234219869"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.247])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2026 11:43:15 -0700
Date: Tue, 14 Apr 2026 21:43:12 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <ad6KwGIhpJn_2eVz@ashevche-desk.local>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_114322_989133_2E100C86 
X-CRM114-Status: GOOD (  10.09  )
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

On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:
> The driver does two things that need to be addressed:
> - includes subject to remove gpio.h
> - checks for error code from device property APIs when it can be done in
>   a robust way
> 
> This series addresses the above and adds a couple of additional refactoring.

Any comments on this? Doesn't look like it being applied so far...

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
