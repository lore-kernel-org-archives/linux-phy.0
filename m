Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B90C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdRe9eAM0EuhI1WhAwWpqnvMJkrMlA016hdvommXxLo=; b=27tVT1qbeKra1Z
	/q0js2m40NATh7l+0cZb9CHAH3FvNGi2MY0qrOIAbLFTmzQEk+G3tzA2KCbqks4aL83ofYmw2MK96
	isiaiFqNGLaaMwM+mQERnD62+t9mhaXZFRdGANaZ6iWKIg1oz7+V+lV0B649JY7iaRneX0h5e9/9Y
	5yuBzezPQiQ6IWdR2Nq8G0QiHjJ3YFtfKH47aJtnTjBsK8lNBJRwfjAnU1nRwLjQ77z5drPwNpqWv
	qPkvmZt/rxdiLjwnsfTquIgXJf3z4aSACXTLCpSJVs+hlwa8pf6L1Yc7kqM6fOAPW7u4ToqNFTKly
	5AWgg1AwWJh2xyXQzrDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0y5b-00000008zo6-1Y6u;
	Mon, 31 Aug 2026 09:14:03 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0y5Y-00000008znf-3igA
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1788167641; x=1819703641;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/fQ2DT1irxSlo114J6VEqNQTdDnJ0Nlh0JTEno87vNA=;
  b=gl0qDk+8O2cIXUnS4TvEVLFKDgT6/g7z/dGxEzFhwIY29ohHMwG3fXjF
   ijcbwh4ap3FOyGIurYpwsrklv8UFWXn2AfUg4wPjKERdaY3G6mrNNXquG
   dZj0IobMerId8JdpD/2Tmjcqg5D+EsvbA0+W2KePUzyFi8WMDKVaVymxe
   7ENLqv/s42o3Iwjs9uIQ36fv4TlXTCNYw8j7v6BGamH79pZYowD0k0Ib7
   blc3d0/TL0LOqyaRRu2muen643gr0RRvnPlMx56eOVPHmpVujHGsY8fj/
   fRyQdL4WWELWEVE2TpF3jhmDUz9SMGbFXIOPdff6aYA2LoLnZD/RbRMhu
   Q==;
X-CSE-ConnectionGUID: ksi3b7BgQ3y/iE/+a4I9tg==
X-CSE-MsgGUID: SxvXhTZ2Tn2kcsA+TO3haA==
X-IronPort-AV: E=McAfee;i="6800,10657,11891"; a="88446255"
X-IronPort-AV: E=Sophos;i="6.25,252,1779174000"; 
   d="scan'208";a="88446255"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2026 02:13:58 -0700
X-CSE-ConnectionGUID: cVMnim6aQ9i/39wPQ9wAZg==
X-CSE-MsgGUID: YAsZTuWtTJqGOdtzaUrhTg==
X-ExtLoop1: 1
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.21])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2026 02:13:56 -0700
Date: Mon, 31 Aug 2026 12:13:54 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 2/3] phy: core: Add common helper for get phy phandle by
 index
Message-ID: <apVF0kdgA1f_MdgB@ashevche-desk.local>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
 <20260831025506.95548-2-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831025506.95548-2-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_021400_938930_3E89C571 
X-CRM114-Status: GOOD (  12.81  )
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

On Mon, Aug 31, 2026 at 10:55:04AM +0800, Inochi Amaoto wrote:
> Several phy helper use index to get phy phandle of a device node,
> add a common function for the future reuse.

...

> +/**
> + * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
> + * device_node by index.
> + * @np: device_node for which to get the phy
> + * @index: index of the phy from device's point of view

> + * Returns the phy driver, after getting a refcount to it; or
> + * -ENODEV if there is no such phy. The caller is responsible for
> + * calling of_phy_put() to release that count.

Use proper syntax for Return: section, with the above kernel-doc will warn.

> + */

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
