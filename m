Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 476F5C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 17:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asZwnlY/N1DA0MnW0+7gsSW498mUvSJT6Hiq2yu74lY=; b=AhGC+uWlzoK0I2
	6CTvFyjzCqYGWy7tP8F0U2Fci+dAsPvtg5gnppd83M8nqh/HzqRWF2QB1TUZcsb7Q0qUufyqIziHA
	k2n0bm8A5II0pHhv5EBvYc7uurCT+dm0HOrCIA0OjyDz5UAHqdSqeoX33hNvTR0T1eDiXgpyedoc1
	yXJE/Zjz2iSx1aaW/z2uCEHAmYEVbqqs1HC/3TsaV9sW4qvKDjTP6KF+TDIepjIPaIyzzDECFYFpP
	nkItwkLAV7oB5Pa88OdyFfDrW0SZs5ckwV6PhHU5vivla0i6bmLySJ30kr8HBMF8ZRC3OeAp1aVAb
	Ff2KVbWe+pkrbvKA6rLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uduYd-00000000LnN-3ef7;
	Mon, 21 Jul 2025 17:44:11 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udu6M-00000000Hyd-21k8
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 17:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753118099; x=1784654099;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=EDwVEG1YcLrzyGWM3/+Lk5Mp3z0nij43S1kN6uWIoBs=;
  b=KoUHjnpCEyHwO+V6s+lsdpf28u1D1Lj7JBw2Dxrz9KP/5w8i4L1HEWWz
   FmDyMHEpxbp8RCGiD6f0HyZDkuGGUdQNqvl1yYou2mwaq5/4pA2cCburR
   SlTNi4KDGNcfnO1axOS+RnMiH8NG5k8EXpVJJ4XFuSmP+hUfunKdEpCA3
   FGfr2aNOTFTHFALwGwBGSMyQdnwiSZZPtUabmawvNAOiVbB7+xznaM6UM
   QBtHeq3XZSZj/AeiNSfts3VbTDsWECCyX8S/KrBhwZJRrpv1RWF6IY7ge
   j14q80skWN0ZjxO4/4l4F97V/9d7EaHbnISyimQXJFihCRg7XXbw7Qq0k
   g==;
X-CSE-ConnectionGUID: JCMfP0siRnSMKQaRml9uZw==
X-CSE-MsgGUID: jRNS32c4SjWC6891nx5hDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="65909275"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; 
   d="scan'208";a="65909275"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 10:14:58 -0700
X-CSE-ConnectionGUID: mE54dbTTSJWW6EhWVJ6OfA==
X-CSE-MsgGUID: xIwlqI3hRfmb47Xue2ydPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; 
   d="scan'208";a="163196999"
Received: from smile.fi.intel.com ([10.237.72.52])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 10:14:53 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1udu6D-0000000HOKx-2u52;
	Mon, 21 Jul 2025 20:14:49 +0300
Date: Mon, 21 Jul 2025 20:14:49 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com, wenst@chromium.org
Subject: Re: [PATCH v1 3/7] power: reset: qcom-pon: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aH51idxbwW1SAExG@smile.fi.intel.com>
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-4-angelogioacchino.delregno@collabora.com>
 <aH4mWfgQt_Q0O-7S@smile.fi.intel.com>
 <f5d529c3-b898-48ac-8e5a-f587db72dc82@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5d529c3-b898-48ac-8e5a-f587db72dc82@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_101458_560606_BC1A2B50 
X-CRM114-Status: GOOD (  19.26  )
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

On Mon, Jul 21, 2025 at 03:05:46PM +0200, AngeloGioacchino Del Regno wrote:
> Il 21/07/25 13:36, Andy Shevchenko ha scritto:
> > On Mon, Jul 21, 2025 at 09:55:21AM +0200, AngeloGioacchino Del Regno wrote:

...

> > > +	if (!pdev->dev.parent)
> > > +		return -ENODEV;
> > 
> > You can start using
> > 
> > 	struct device *dev = &pdev->dev;
> > 
> > here and perhaps one may convert the rest to it...
> > 
> > ...
> > 
> > >   	error = of_property_read_u32(pdev->dev.of_node, "reg",
> > 
> > ...including, but not limited to, use of device_property_read_u32(dev, ...) here.
> > 
> 
> I didn't do that for one single reason: I did not want to add noise to the commits
> and wanted those to exclusively migrate the drivers to the new API, literally
> without doing *anything* else unnecessary, even if I have located some almost
> effortless improvements that I could've done to those drivers.
> 
> Please - I prefer to keep it this way: these are the first commits that add the
> usage of the new functions and of the concept of SPMI subdevices, and I really
> want those to contain just that and nothing else - because I suspect that these
> will be taken as example and will be read by the next person that is implementing
> a new SPMI (sub)driver or converting any remaining ones to subdevice.

You can introduce a temporary variable in this change and use it only in the
lines you have added/touched. We have similar approach in several drivers.
Then somebody (not specifically should be you) can move it forward.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
