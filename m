Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43D48CA5FB1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 08:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mmhtkAYq8JNzLsawJLlmRF9k6v7QnxPZ/t//ceq4KI=; b=wETIS7TTv6aYou
	HUTMH/n74pTnbRYkc8NQlXOQrU/nvTmhtev9zXnJkfWve6VC2CDfdvgRsryGycK/v4Kcla0BUzbsN
	Y1fGT9OqUtGyjmAH9JymDZ9bWZ/tJBuXaiIqx0HzmZYRK+ZKt1pWlrcpO/au2zpkM7zi+6vdYOSue
	mttcm6Cj3LsS4az6hUPCZEym3cRMaTQFCWj8Z6TIvgOVdMNcWRgHtepI3TCOXqzuCWr8RIb+2Xai7
	p1/JHf9Dj1DTpiLP+l6B79yRlbyRX+aWOgxsldZf5HusD1U90v/9vOKuGMDQypDhsfgsUJspKGego
	JP8bODyEccXxplrQyIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgb-00000005QCP-3pnV;
	Wed, 30 Sep 2026 08:29:09 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgY-00000005Q9f-3tEN
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 08:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1790756947; x=1822292947;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Z25ssbYYgPIJRf3a6E0xksOuvmIiLp75bFgZ1UY4UR8=;
  b=ZMwmfh66IttEywZlQmFnHZK0Ys+zg6Mk16bgGdJuKHbem3z+Sm9LrlNZ
   07dQr6Oh73ob3PWTN0g2rBOk1Z5LRSl1z3IRLBGe78RDrJoHUskW8kxk8
   bBgVTP3trqDXwCQPTey0n3pRV5RCY4mvs8sNi0HGuKLOdV/l+qLPf4TKC
   3Gt953Vtyt2WuR5ilk91Ly6g1F9i7+1r23KcDfQIBOp9AApJ3iB2OtybD
   IF5NyAU2/MSA1ltnuJl76FyHtHvtKl4j+zSyljYltcWdSQhugXgYmLClR
   mN0Lnh5RATjdiFn+wsuDQhA2UZtuzCLPA0HBT3ViZmZ8HpvW26oBPAsvX
   A==;
X-CSE-ConnectionGUID: S6y5rrF3Q3+0RsuirOU+WQ==
X-CSE-MsgGUID: qKYVlefCSBuixMj7Sa25Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11920"; a="91508792"
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="91508792"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 01:29:06 -0700
X-CSE-ConnectionGUID: xui/SqCMRcKIypiANYyu6A==
X-CSE-MsgGUID: jN9DPEBDQL+3nuHkVYXM3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,132,1787036400"; 
   d="scan'208";a="313568986"
Received: from spandruv-desk1.amr.corp.intel.com (HELO localhost) ([10.245.245.137])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2026 01:29:04 -0700
Date: Wed, 30 Sep 2026 11:29:01 +0300
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
Subject: Re: [PATCH v4 4/5] phy: core: Add managed phy bulk data helper
 functions
Message-ID: <arzITUCmgUp3uiRn@ashevche-desk.local>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-5-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929085235.469515-5-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_012906_997258_4C0A7426 
X-CRM114-Status: GOOD (  15.94  )
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

On Tue, Sep 29, 2026 at 04:52:34PM +0800, Inochi Amaoto wrote:
> Add device managed variants of the phy bulk helper functions. So
> the driver can benefit from automatically managed phy handles.

...

> +int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
> +			     struct phy_bulk_data **phys)
> +{
> +	struct phy_bulk_devres *devres;
> +	int ret;

> +	*phys = NULL;

Why?! In case of error we modify the output, this is usually not the best
approach as in most of the cases the expectation is that whatever user
provide (including a garbage) should be left untouched in case of an error.

> +	if (!np)
> +		return 0;

Same here. On top why do we even care about np like this? Interestingly that
some other APIs consider this as np == dev_of_node(dev) case, and automatically
propagate that.

> +	devres = devres_alloc(devm_phy_bulk_release_all, sizeof(*devres),
> +			      GFP_KERNEL);
> +	if (!devres)
> +		return -ENOMEM;
> +
> +	ret = of_phy_bulk_get_all(np, &devres->phys);
> +	if (ret > 0) {
> +		for (int i = 0; i < ret; i++)
> +			phy_add_device_link(dev, devres->phys[i].phy);
> +		*phys = devres->phys;
> +		devres->num_phys = ret;
> +		devres_add(dev, devres);
> +	} else {
> +		devres_free(devres);
> +	}
> +
> +	return ret;
> +}

...

> +static inline int devm_of_phy_bulk_get_all(struct device *dev,
> +					   struct device_node *np,
> +					   struct phy_bulk_data **phys)
> +{
> +	if (phys)
> +		*phys = NULL;

Same as per above.

> +	return 0;

Why not an error? I do not see the _optional word in the function name.

> +}

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
