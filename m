Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B73CAC83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 13:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1cuXvoUyVKn6gZA21ZNwrSBvcqPf3iRPBh5rr1Anb4=; b=shm0HwklokuHLw
	0Z86zNQklCNfuZXYd3lk3g5Mxa3vTFfzum1wwlJXndMV0+MFW5/fUweGZ5j7aNJy0PsvVxC1I0ewf
	GXQCFvSGsljOLupB/qigqj7YnRqg6fhiic0wAkfmWx0+csisikXkSX2PDqcHRBBvqLDWpb6l0QFfg
	Ra2Qkl8D9YJQSr5F1CaKfVNDTjrY9+0muZtkM6gthl+XnECXl+RFpAUytR5vvIgJEk94YEEdyP7ZQ
	kRue7m+T1q7MT7/X/xxY0SBXpp5q280jlsfiryY3MnaptWy1a7UVSNcBRcpDTto+pnmh9sNf5Zjxa
	7cKXFOqzkgCYKXzqEjDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udqR5-0000000HN6Q-28fe;
	Mon, 21 Jul 2025 13:20:07 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udomw-0000000H6Fi-0hpe
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 11:34:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753097674; x=1784633674;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Ld07cusvj33WkOhHuc88EdKRhRaiuoqYOgCzTacGRsQ=;
  b=KSNsbgj7zfqt/6eCDH6g7RpTMJ4nteXcmSJ9eudkuuntb4CIhpw6ds0a
   eI8XoVXcb3nHBcv+SA6JOIX5lnTGOEFnf8N9NDgER3wlGFQk3eWyPZp8o
   Q9tK4VBLBmEXfe7dUOpZhnqjirH/NyjtHgTPCCh5cNE/99ZfSqbjMHOmx
   pUaAbjFeIrd693fM7QyY2jmdawy/O36M9sLm4WprlFbbiB5/sCeES/om7
   zz4ZIRIIRS72xUngDC3zjLJNlRNAld6OcXDdEFRtKlEE6MI2x+MJKX39U
   Y8MVhzKZdQQHF1EUa1GoqQ/rzbJq16gyfeCROmnnx3gShBaIe8hoPKG1b
   Q==;
X-CSE-ConnectionGUID: epyzHZrMTGGiOVqtuqq6QQ==
X-CSE-MsgGUID: g0kgui7TSPahioN2xWEmAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="65999259"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; 
   d="scan'208";a="65999259"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 04:34:34 -0700
X-CSE-ConnectionGUID: s1G6XQ7ES76w4cqFCZDU9Q==
X-CSE-MsgGUID: Se2oBYjySmuR/r3Ll5F1ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; 
   d="scan'208";a="162855980"
Received: from smile.fi.intel.com ([10.237.72.52])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 04:34:29 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1udomn-0000000HKIR-3Rcd;
	Mon, 21 Jul 2025 14:34:25 +0300
Date: Mon, 21 Jul 2025 14:34:25 +0300
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
Subject: Re: [PATCH v1 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <aH4lwVpaiau1Ick3@smile.fi.intel.com>
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721075525.29636-2-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_043434_215634_B90B6D27 
X-CRM114-Status: GOOD (  13.11  )
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

On Mon, Jul 21, 2025 at 09:55:19AM +0200, AngeloGioacchino Del Regno wrote:
> Some devices connected over the SPMI bus may be big, in the sense
> that those may be a complex of devices managed by a single chip
> over the SPMI bus, reachable through a single SID.
> 
> Add new functions aimed at managing sub-devices of a SPMI device
> spmi_subdevice_alloc_and_add() and a spmi_subdevice_put_and_remove()
> for adding a new subdevice and removing it respectively, and also
> add their devm_* variants.
> 
> The need for such functions comes from the existance of	those
> complex Power Management ICs (PMICs), which feature one or many
> sub-devices, in some cases with these being even addressable on
> the chip in form of SPMI register ranges.
> 
> Examples of those devices can be found in both Qualcomm platforms
> with their PMICs having PON, RTC, SDAM, GPIO controller, and other
> sub-devices, and in newer MediaTek platforms showing similar HW
> features and a similar layout with those also having many subdevs.

...

>  EXPORT_SYMBOL_GPL(devm_spmi_controller_add);

> +EXPORT_SYMBOL_GPL(devm_spmi_subdevice_alloc_and_add);

I am wondering how hard to move these to a dedicated namespace.
Basically you can define a default namespace, and at the same time
add import to all (current) users.

...

> +	dev_set_name(&sdev->dev,
> +		     "%d-%02x.%d.auto", sdev->ctrl->nr, sdev->usid, sub_sdev->devid);

No error check?

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
