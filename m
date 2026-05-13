Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E31CD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 21:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkFrv0pFzxtoZZ5B7QfiyFhdcOosj3PI0+tFgbKpTtM=; b=CK2tLj38nRbG9Y
	7IwU/Q1hOe1gwHNm618QqNSF1YeH0xBEnYa8ZV5qtLmqV7TQNj8+fYeBwOBt/vNpFKQy2EZmvmHDR
	rFK1genuCQgu5mLpAlLPz6lh9koqLhT9svJ2nCrFaLHrBVjg9UMNbtXmT8SvN5DKxIHImTeZcFLHo
	qp+LAqBCgiLVE18M01TcrGIGZUtD0x6BeOpIylSuhNCzf+oyY9bZ9xJylzyX68IZPApvc13LZWT+5
	C24vABsbQYBM1LZd89Op0LyqFcf9hk/8db6eYuYDICzNhy3LUCAU/he18dLca1JkxHqi+K/v47LQZ
	1eG8kSU3U7dRmuMpkm3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHVs-00000003rxP-3XAH;
	Wed, 13 May 2026 21:53:08 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHVq-00000003rdV-1ECI
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 21:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778709187; x=1810245187;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/OnS0BYKZVUpokFQSbMFEdEWxIMl+Wz/Job/AUHBzxc=;
  b=k3DtLyiSN+wEwNDHkN784ZBbXG0r2RVjv5qgsHwdMAootKsyfDNdG6B2
   i34d2G8GFPDxQq32lyZjBPVf5llhAhZ8QJXJ3uqNmrfYN9/IMfAYfoyWe
   66njCZHOLY6/FULqr2PXdWgoXmHzQSs17FlwhtARoU5cHA0WW7uRbciLc
   8RPvQTEwLpJMGw5d2AM9ELUF6H0pMlOUR2hAP8zoYu0Xa0ZsTzILIPnRk
   Sm49splfntGb/UGLZtT7+2lbgx/Wc9lRxrtBDe/Tl81BFvjZKZPeGLScG
   tAyTdthukuZUdmohq7KX8sq07qzNtaWaSwJcj1NFQk9PV/KqEZRPmi6TW
   g==;
X-CSE-ConnectionGUID: +mrRVv8+QXqT4WYR1R1VGA==
X-CSE-MsgGUID: WYUollcIQ2yKqRlqcWyKqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79821573"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="79821573"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 14:51:05 -0700
X-CSE-ConnectionGUID: 927xWr8iQXOBJbqidU2v2Q==
X-CSE-MsgGUID: UgWung5tQ66ivyAjLqPciQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="268562466"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.106])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 14:51:03 -0700
Date: Thu, 14 May 2026 00:51:00 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com,
	neil.armstrong@linaro.org
Subject: Re: [PATCH v4 2/5] phy: phy-can-transceiver: use
 device_get_match_data()
Message-ID: <agTyRALNTLTagy6y@ashevche-desk.local>
References: <20260512130552.272476-3-andriy.shevchenko@linux.intel.com>
 <20260513212611.EDC78C19425@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513212611.EDC78C19425@smtp.kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_145306_394131_A3E504D6 
X-CRM114-Status: UNSURE (   7.54  )
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

On Wed, May 13, 2026 at 09:26:11PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The error check for `device_get_match_data(dev)` is inverted, causing the driver probe to fail on success and triggering a NULL pointer dereference on failure.

Right, the typo due to rebase. Will fix in v5.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
