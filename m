Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57446CA5FB1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 08:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKvUtXSnex7XqQ+iq8uoDpg/GKCde1P6uNPKMJpL0kY=; b=ymwUDB1yeR7YWr
	a07uqPV/JRKkvMGlz6qzmLQm5K7/gCjDdUO44mCkdmOEyAeT9wrNRal9tsYxtMkgTOboXT56UHPqR
	APksOYV41VOIklFW6j++yWev7EIwW0kYhzSrkz8eqogJW8/va5Xcf0rlQ1813RCAtAdOfE29lrARg
	SrEvqwNby9KGOVHFtEvkCiZYQYbDGVkMhlByGoC+7SuRNcshWso9h2COkn5nwjeHqMCbtskjCjcFk
	iB/pZKpo0CXbw7u4v/KWXVuSt4yZTr0CCwmd3mRN8I31bOSwNZWivCx724IQgMi3ZH8jtnH1rjxYW
	WijCd3vM3DYJ1gq77/hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpaO-00000005PUV-30mF;
	Wed, 30 Sep 2026 08:22:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpaN-00000005PU5-3ZYg
	for linux-phy@bombadil.infradead.org;
	Wed, 30 Sep 2026 08:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=H90ReHI/TkU7w1Jsq13T0jYJ8I33i7SIr4MSueB+J0g=; b=oJFSymfwnUzswcjBwLbkhlLIa0
	/H0GMgqkV/38hGWSKVOUtWYBv2ozLOEsXpFxRuanQx3sG14VxGNV/BgZD3hk2oq5EhMX1w5LifOD/
	C9sYpQCVsiUcrLQSMK0CDHiUlMNrES1hnZo5kZrzELk3Nzf2pO0um7FXQ3KEMT8VSoDQgAgnyPWW1
	FyrPx9KGAcKZkNo/yvRlpW07EHxlJLPuWnT5pU4VQC5Qx28AyIt9p3NiL2mKN0NtjPJ11IdH2ST4Q
	1QE/XMwRSzsWlEbjmHFp+I2WwnDVrT2XknpmIJrG4DNIVQ18I/EH4OSubZXhvjlhKBA8nhg/SrN9m
	qyjCpMsA==;
Received: from mgamail.intel.com ([192.198.163.14])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBpaK-00000003WOj-2Mdr
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 08:22:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1790756561; x=1822292561;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=o4gTPctULW30OzZW+mqa9A666j84wqZq3CbG0iIigpQ=;
  b=MXdOo06QHWqnlRJfSqayBl+wWlrXcEe5I9S4h33fbDA8PaV0qMfc2RZG
   L8wYAlW00VFRNCx/B2jZMbyFrrv51IddVC5f2Ktaq1GQz0lGMiMNBpoM6
   blkjYlyqGT7upWa7Z8G+jUYNko3wquVdES9wg3HkDTJ5A7y2pqToizqmX
   U3M5/yvCchd4ZgX+utCmfTdLdSyQQWQB54dpXxyPq3A/yxOfl5gU4dhq3
   2sVn6YBZDXUZA+oEU9A4NNXz2JEmIMSxeMX3lbLrz3foNTVImvd1xozOl
   huCGc816rKGf3BVdqGfSOV88Z/ddryteklTM1xlSlfxWY+jlSNB8Ckk37
   w==;
X-CSE-ConnectionGUID: yTjm51J9TFOT59cNX2JgVQ==
X-CSE-MsgGUID: iX9fnSXnRZK9f9mib8WGOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11920"; a="91508218"
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="91508218"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 01:22:38 -0700
X-CSE-ConnectionGUID: CFK0LhMsQL6mR7FHfLN22w==
X-CSE-MsgGUID: wT7fPAKNRT6OULzQo4/XiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="313567473"
Received: from spandruv-desk1.amr.corp.intel.com (HELO localhost) ([10.245.245.137])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 01:22:35 -0700
Date: Wed, 30 Sep 2026 11:22:32 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <arzGyL8gGrxeZoN7@ashevche-desk.local>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929085235.469515-4-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_092241_072246_B2049015 
X-CRM114-Status: GOOD (  23.94  )
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

On Tue, Sep 29, 2026 at 04:52:33PM +0800, Inochi Amaoto wrote:
> Add several helper functions that allow drivers to get several phy
> consumers in one operation. If any of the phy cannot be acquired then
> any phys that were got will be put before returning to the caller.
> 
> This can relieve the driver owners' life who needs to handle many phys,
> as well as each phy error reporting.

...

> +/**
> + * of_phy_get_count() - Get the number of phys of a device node
> + * @np: device_node for which to get the phy
> + *
> + * Return: the phy count if successful, %0 if no phy handle is found,
> + * negative error value if error occurs.
> + */
> +static int of_phy_get_count(const struct device_node *np)
> +{
> +	int count;
> +
> +	count = of_count_phandle_with_args(np, "phys", "#phy-cells");

> +

I would drop this blank line.

> +	if (count == -ENOENT)
> +		return 0;

I'm not sure about usefulness of this kind of trick in the _count API.

> +	return count;
> +}

...

> +static void phy_bulk_put(struct device *dev, unsigned int num_phys,
> +			 struct phy_bulk_data *phys)
> +{
> +	while (num_phys--) {

> +		if (!IS_ERR_OR_NULL(phys[num_phys].phy))

This should be part of phy_put(). In general many kernel resource release APIs
are NULL and/or error pointer aware. This is a slow path and it makes user's life
easier

> +			phy_put(dev, phys[num_phys].phy);
> +		phys[num_phys].phy = NULL;
> +	}
> +}

...

> +static void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	while (num_phys--) {
> +		of_phy_put(phys[num_phys].phy);

> +		phys[num_phys].phy = NULL;

Is NULLification mandatory?

> +	}
> +}

...

> +static int of_phy_bulk_get_by_index(struct device_node *np,
> +				    unsigned int num_phys,
> +				    struct phy_bulk_data *phys)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i = 0; i < num_phys; i++) {
> +		phys[i].id = NULL;
> +		phys[i].phy = NULL;
> +	}

But why? The below does the assognments.

> +	for (i = 0; i < num_phys; i++) {
> +		of_property_read_string_index(np, "phy-names", i, &phys[i].id);

> +		phys[i].phy = of_phy_get_by_index(np, i);
> +
> +		ret = PTR_ERR_OR_ZERO(phys[i].phy);
> +		if (ret) {
> +			phys[i].phy = NULL;

Same Q: do we need a NULLification in this case? Perhaps the respective APIs
should be error pointer aware?

> +			goto err;
> +		}
> +	}
> +
> +	return 0;
> +
> +err:
> +	of_phy_bulk_put(i, phys);
> +
> +	return ret;
> +}

...

> +/**
> + * phy_bulk_exit() - exit multiple PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data to exit
> + *
> + * Exits the PHYs in reverse array order. All PHYs are processed even if an
> + * error occurs.
> + *
> + * Return: %0 if successful, the first negative error code otherwise
> + */
> +int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	int ret = 0;
> +	int err;
> +
> +	while (num_phys--) {
> +		err = phy_exit(phys[num_phys].phy);
> +		if (err && !ret)
> +			ret = err;
> +	}
> +
> +	return ret;

So, we return an arbitrary error and inconsistent state of the phys[] array.
What can caller do about all this? Any type of recovery? TL;DR:
I put in doubt the function prototype and the implementation (error handling).

> +}

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
