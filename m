Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF6FE63F3D
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 09:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wgiI6hfCOgPlGdg4tEqC9L+ZZ3QO/CaBZRNQcI7yC0=; b=EH0RMbJamlbT6r
	cu08QFHuK8ZqbmBSadSLCnnqtmbVotpH6unRBcgsTO/IH/WYKhmN1Q5a3VC2n43ZnToFv/0OYhyRh
	+O1V3j3n2zkK4fYAfOU5AxPviO3sZGLx43ke86zyPRoIKn9EDLo8VyT0qPr/cqPmtWoh6i58LulrO
	ltmOPjh1rtMoGFaVbICzd7BJsQ67JXFbzLYfBCEIHEyH+9u72LGJb+Lby4H+VU5MpQ9n+I8Pkl0G8
	9o84diWyIxIRMHkRH8fXAxcEAJdLZ/n2Gdasn8tIFtA85AN8GKEHjLQY/lf1z400S3gQvMhoxazSl
	q+RpqUbc4aeH4LbbM07w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrucF-00000006E2A-2esr;
	Mon, 16 Feb 2026 09:10:03 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrucC-00000006E1X-2xL5
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 09:10:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771233000; x=1802769000;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=78cpmt3Lmpk6tPnuo7Dp/XCuOAGU0Q/jR/mNyF9FiOw=;
  b=XSghdTY1x7A1k21WixW/vlt2E4LTQowImNy4sB7EvdCI/uGC7Y6NSN9M
   I7otRL3YeAdELPQu1L50a4te0Z5SQCwhwnGRInACOnk6wsUJQjjuyKwFT
   iNWD1Mzu1wJleUUDNyA42fak6VaL6mX4kY+jvQJJzoasvjfbiV3L0SZWA
   c1DrOKNzX5Brb7AFT2vjbpTKfkQvhdOu0TVXxenznBu1pg3KdWjMvvzfn
   3gufqVi8w8xN/pJapaOUx4Tv3ZJSpfYezJoF+SK+lkcbN1+S5iyoPAOC/
   86x5FVtY80bT9PpRHoXt0k5EMkfqByy677Mt/C299zark4N0a4QEar5Uc
   A==;
X-CSE-ConnectionGUID: AHkHdAHJTLisJPI0krhOOA==
X-CSE-MsgGUID: sCeHmu9XTXav2R5ALlnlLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="83409555"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; 
   d="scan'208";a="83409555"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2026 01:09:59 -0800
X-CSE-ConnectionGUID: cuS7oahjRYGa4KmstfXG1Q==
X-CSE-MsgGUID: gS5nqPSUT7K0Mi78kkyQag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; 
   d="scan'208";a="212646537"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.188])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2026 01:09:58 -0800
Date: Mon, 16 Feb 2026 11:09:55 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Haotian Zhang <vulab@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: hisilicon: Fix OF node reference leak
Message-ID: <aZLe4-w0Jb50O63N@smile.fi.intel.com>
References: <20251112062246.852-1-vulab@iscas.ac.cn>
 <20260216084348.e2ozdqy5unvfs7qe@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260216084348.e2ozdqy5unvfs7qe@skbuf>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011000_826454_2202BCB7 
X-CRM114-Status: GOOD (  11.83  )
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

On Mon, Feb 16, 2026 at 10:43:48AM +0200, Vladimir Oltean wrote:
> On Wed, Nov 12, 2025 at 02:22:46PM +0800, Haotian Zhang wrote:

...

>  	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
> +	of_node_put(pcie_port);
>  	if (!pcie_dev) {
>  		dev_err(dev, "Didn't find pcie device\n");
>  		return -ENODEV;
>  	}
> 
> Note that there exists a second reference leak bug in the same function.
> bus_find_device_by_of_node() requires put_device(pcie_dev)

Note, there is a pci_* wrapper for that.

> after it is no longer needed.

Is it only a local variable? If so, it's probably okay to put it, but that
action needs more investigations of the how the pcie_dev is being used.
Also, it might be (but I don't think it is) a (double) put_device() call
somewhere else. TL;DR: the summary of this investigation should be present
in the commit message.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
