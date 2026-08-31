Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B81DC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJAvTreh4v0ODUsnp3DjU4c1osk6pcSfLqDat/cZZNg=; b=L5yGA4o69rqTTM
	k/IBqCg9esdJyWtSX8GSmUzTOcZymx0GXp+46QqiSQpFQ2TKWlbItLsV+QXLLXhI5EejB98SxYiQM
	kYf7jH3oYb0qcSZKf9msIRZ75IU6YcSLZfIeNZG5oRuFKZhHqqO519zi5MDf8wJ6/FBoS4Dg4IQMa
	irdrk6O1mUXM35h8SEsF+xrZJ0lLTKgQjqS5GoJCy70AkoQ38+AHrRHYRdK9tQ1l+bXu8q044iLLc
	DhjeZD+4Ub04JjYjEm881aB1Gownykx2hFL3MQOAinHSpiKehxjhuSruaDX65nbqgRa76Kcxmwnd+
	Gz0jIGFASIhE12FBheFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yKF-000000091Be-0LkQ;
	Mon, 31 Aug 2026 09:29:11 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yKA-000000091B0-2zFB
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1788168547; x=1819704547;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=FdOsuuMQ08/G9pXB8nkYFXb7pPmT73+2R7WY6hsx0Zc=;
  b=jKn/YmYGnbvw43X6MZoUfSzq+sLtuKDktWLrwEjB/F4qhhfevVMRQ78r
   /0SNV77VN5t/tcUqE+erNRgcJ8zoR/Nfr9XcC8j5pWnArjjAFgGQ+0CPw
   K+OlRhKov8DNryw5xdLZqoDk2n5l6SpJJt4Roh2lTch1vHQfP3SxVkkUF
   3sT41R/mU5llRritOSwmu4Yx0nosGsu5vPLIj0JQGcbDJxKcPNgl4ypii
   Fs6xqPipiyZ3w2t7wvqz0Q1n7ppldZoQWZyfmc+d3tVMMYfruPYjcx1b9
   UEYWH+wLGv0dpikxbDE7JlrQutSx72RUB2HtyqOZFNQdgI9/JAy3X1oQu
   A==;
X-CSE-ConnectionGUID: Rh/CHHFRRVeyzE2NpstWcA==
X-CSE-MsgGUID: Zewlde9KQYqvZ3nWkIzZlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11891"; a="92436207"
X-IronPort-AV: E=Sophos;i="6.25,252,1779174000"; 
   d="scan'208";a="92436207"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2026 02:29:04 -0700
X-CSE-ConnectionGUID: OQWO11sZQJOifualVqBTfw==
X-CSE-MsgGUID: f7NVot26Tq6z4+1jIoLmWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,252,1779174000"; 
   d="scan'208";a="270673686"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.21])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2026 02:29:02 -0700
Date: Mon, 31 Aug 2026 12:28:59 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 3/3] phy: core: Add phy bulk data helper functions
Message-ID: <apVJW6H8_y0uiVtj@ashevche-desk.local>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
 <20260831025506.95548-3-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831025506.95548-3-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_022906_801632_BF0C644C 
X-CRM114-Status: GOOD (  23.72  )
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

On Mon, Aug 31, 2026 at 10:55:05AM +0800, Inochi Amaoto wrote:
> Add several helper functions that allow drivers to get several phy
> consumers in one operation. If any of the phy cannot be acquired then
> any phys that were got will be put before returning to the caller.
> 
> This can relieve the driver owners' life who needs to handle many phys,
> as well as each phy error reporting.

...

> +/**
> + * of_phy_get_parent_count() - Get the number of phys of a device node
> + * @np: device_node for which to get the phy
> + *
> + * Return: the phy count if successful, 0 if no phy handle is found,
> + * negative error value if error occurs.

Just for the reference, here is the correct format of the kernel-doc!

> + */
> +static int of_phy_get_parent_count(const struct device_node *np)
> +{
> +	int count;
> +
> +	count = of_count_phandle_with_args(np, "phys", "#phy-cells");

> +	if (count == -ENOENT)
> +		return 0;

Why? And if so, the function perhaps needs to return unsigned type. Also
kernel-doc says about negative error codes.

> +	return count;
> +}

...

> +void phy_bulk_put(struct device *dev, int num_phys, struct phy_bulk_data *phys)
> +{
> +	if (!phys)
> +		return;

> +	while (--num_phys >= 0) {

It's hard to follow.

	while (num_phys--) {

will do the job. Ditto for other similar cases.

> +		if (phys[num_phys].phy)
> +			phy_put(dev, phys[num_phys].phy);
> +		phys[num_phys].phy = NULL;
> +	}
> +}

...

> +static int __phy_bulk_get(struct device *dev, int num_phys,
> +			  struct phy_bulk_data *phys, bool optional)
> +{
> +	int ret;

> +	int i;

Do you expect num_phys to be negative?

static int __phy_bulk_get(struct device *dev, unsigned int num_phys,
...
	unsigned int i;

Same comment to the rest of the similar changes.

> +
> +	for (i = 0; i < num_phys; i++)
> +		phys[i].phy = NULL;
> +
> +	for (i = 0; i < num_phys; i++) {
> +		phys[i].phy = phy_get(dev, phys[i].id);

		ret = PTR_ERR_OR_ZERO(...);

> +		if (IS_ERR(phys[i].phy)) {

		if (ret) {

> +			ret = PTR_ERR(phys[i].phy);
> +			phys[i].phy = NULL;
> +
> +			if (ret == -ENODEV && optional)
> +				continue;
> +
> +			dev_err_probe(dev, ret,
> +				      "Failed to get phy: (%s)\n",

There is room on the previous line.

> +				      phys[i].id);
> +			goto err;
> +		}
> +	}
> +
> +	return 0;
> +
> +err:
> +	phy_bulk_put(dev, i, phys);
> +
> +	return ret;
> +}

...

> + * Return: %0 if successful, a negative error code otherwise

Note, the reference to 0 is inconsistent with the previous changes.
Make it there [of_phy_get_parent_count()] to follow.

...

> +static int of_phy_bulk_get_by_index(struct device_node *np, int num_phys,
> +				    struct phy_bulk_data *phys)
> +{
> +	int ret, i;
> +
> +	for (i = 0; i < num_phys; i++) {
> +		phys[i].id = NULL;
> +		phys[i].phy = NULL;
> +	}
> +
> +	for (i = 0; i < num_phys; i++) {
> +		of_property_read_string_index(np, "phy-names", i,
> +					      &phys[i].id);

The line limit is exactly 80, please fix your editor and double check that you
use as much room as available (with the correction on the logical splits where
it makes sense).

> +
> +		phys[i].phy = of_phy_get_by_index(np, i);

		ret = PTR_ERR_OR_ZERO(...);

?

> +		if (IS_ERR(phys[i].phy)) {
> +			ret = PTR_ERR(phys[i].phy);
> +			phys[i].phy = NULL;
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

> +int of_phy_bulk_get_all(struct device_node *np, struct phy_bulk_data **phys)
> +{
> +	struct phy_bulk_data *phy_bulk;
> +	int num_phys;
> +	int ret;
> +
> +	*phys = NULL;

> +	if (!np)
> +		return 0;

Dup check? The OF APIs are usually NULL-aware.
Same Q to the ress of the code.

> +	num_phys = of_phy_get_parent_count(np);
> +	if (num_phys <= 0)
> +		return num_phys;
> +
> +	phy_bulk = kmalloc_objs(*phy_bulk, num_phys);
> +	if (!phy_bulk)
> +		return -ENOMEM;
> +
> +	ret = of_phy_bulk_get_by_index(np, num_phys, phy_bulk);
> +	if (ret) {
> +		kfree(phy_bulk);
> +		return ret;
> +	}
> +
> +	*phys = phy_bulk;
> +
> +	return num_phys;
> +}

...

> +struct phy_bulk_devres {
> +	struct phy_bulk_data *phys;
> +	int num_phys;

Why signed?

> +	bool free_phys;
> +};

...

I stopped here. It's too many stuff in a single patch. Please, split to two for
a starter:
- non-devm additions
- devm coverage

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
