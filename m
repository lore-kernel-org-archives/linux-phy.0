Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B4EC624D6
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 08:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MORL7LLVBojFuAiZ2TCqPrEGhMCGSOUJ/Ce+4jCFfks=; b=VjPhnYAvfeuUGB
	J9izrAklCiwSRMBaQpab8mPhikKCg8Pi6gRFULqbed8j2KjgEg3bgHcrzHm6V9DtaikrepNab04+9
	ze6jpVajNVzjLusv5n90gmpnBbU9SGDp2ugHvkHrj09eSgLN3eYNYawEOR6tTFQB1L0ZBpGfy8cyd
	7bSDY1F8eGj2J67BTpOy/w7aQS0C0H3bLoPEDqwsDSopGRPP0PfX4svcMz6vl8kE33cQ1M13Pm/bs
	SdisivUOCan/Z0hSp00D9v9eaIRtibbi1wg+cuR0qhRAt6XP45htS0ExM/kF2LBXu3JFf44SvdYQG
	2588Pd9CsN1TopMvyHww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2lMH-00000003pSe-31mg;
	Sat, 05 Sep 2026 08:02:41 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2lMF-00000003pRv-07a1
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 08:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1788595359; x=1820131359;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QDXLQRd61Zgxx9IVQcwa2lFHRF2BZa4tENoP5AUMdPU=;
  b=I7AUhfihOhuGSzH/KasSlDwF63C41GGyDoQWCpFcKJLd3ZvGHFc3Bj6i
   yhk/iQMabXH0+Xlra/R81vDfoNgrk410uloV+ZS73ly0MgdDGtZBIwBwi
   x0z98aSDDwrwXH+CHoO131RxzZHjWAHoheGwNOaJtGdpRvoj7nbOT+mpb
   am581TDvRujsibz1N/VlLgh3gxvWTInDngM8YFjzocW+YaKFvPW90BekF
   o5GIUnieKz6xsDJje46esiYmqLInYxvs6fMcppYwQuWr1XgIA6IztpEPa
   YzhGVR8zvEL7TZfFIgszw5OU4LyyHahNqzI5rRcYjn2+Mri4rXOPadBnm
   Q==;
X-CSE-ConnectionGUID: xw/RaTCRS7Khasqz9P71PA==
X-CSE-MsgGUID: ah0GfK00QyaHPYEFFmsQ4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11896"; a="92902894"
X-IronPort-AV: E=Sophos;i="6.25,263,1779174000"; 
   d="scan'208";a="92902894"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2026 01:02:39 -0700
X-CSE-ConnectionGUID: goJZG5yBSamPMa8veDPDlw==
X-CSE-MsgGUID: dCAHdfj/S0mdB5/mNy/MyQ==
X-ExtLoop1: 1
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.105])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2026 01:02:36 -0700
Date: Sat, 5 Sep 2026 11:02:34 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 1/4] phy: core: Add common helper to add phy phandle
 device link
Message-ID: <apvMmo9fAfkaDID_@ashevche-desk.local>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-2-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_010239_081904_33032576 
X-CRM114-Status: UNSURE (   6.01  )
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

On Fri, Sep 04, 2026 at 04:37:05PM +0800, Inochi Amaoto wrote:
> It is very common for adding a device link for phy phandle
> for device managed phy helper functions. So add a common
> helper for future reuse.

Makes sense,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
