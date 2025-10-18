Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F62CCD193
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 19:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuIKM0TjMhs2tL5eu6MK4WvNOJhIadx936ZU5MXEV1c=; b=Jjv9+Lwe742IxH
	pJnWwErzDi3f7QczcFwn82xUXcrBkExJ92FdPlZL2vMFCh36GLHHet3T3lVyAkaNftf5awiYhZrAB
	e2hFMDijt1riloZoG5uPWVJ363p+SpB/t8oxv2zJPEQt77P50niN+FjYs9+kXasy7r+PwfzEFATRG
	kLx7JUxqtz84mGTkArl68VAeD4CjS43qhJR42QwUnfyZP4a9GqvIWaZXG5km6aMtV938rP5Eni5pK
	2nDU4nT7AqZgcqtsLmU1QBhSXF+ZyMnYP26xwLKJ4etht0PZZH6rA8AQpDelGdcMSSGcPzSrv4atq
	ZkJIVFWU0wvzhM0ykamw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vACMP-0000000ALXg-37Z9;
	Sat, 18 Oct 2025 19:13:01 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vACMN-0000000ALXI-19vW
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 19:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1760814779; x=1792350779;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yO1VZBeYGqh+ktpk0ausSXki7r/iZv/xg2OTt1f7N7A=;
  b=Fy6UK0diEy4zRlqSe8wdPNx8oyK+PUsaCsoNgFbf6rxtUElEl17UFmug
   9rZCOj+qppzRrpXQJCh6twq/x1XaV5Hkhuv3mOsNJd0LtiXJcvma/NEHG
   qcqtFHuO5AUwUIa6jHyUKVFEliQKEML+GEfGe0eQRnHARH1O/qA1XjLv2
   IVIx1nyK96EFk54YdFBoSjeC66ZVrKCMF5BPhC2N0eHeM9P7zZ5wEBIPv
   jQ/qFfXQ2a7uvoSCo9mIup/RRRPgU37+J12qUFUsj/oDqpP6vRF/ua3IF
   fideEAMx/JlLjcYd4VryFL5fdgPQfjCLKPjUPgmGApP7iEeLPP6JKMeDg
   g==;
X-CSE-ConnectionGUID: 7ZxbBJLTR82PxM054/Df1A==
X-CSE-MsgGUID: NZrCERfRSsOpi9rUnYug0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85618453"
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; 
   d="scan'208";a="85618453"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2025 12:12:57 -0700
X-CSE-ConnectionGUID: LysKdMlWQaqV0EAfAFX4RQ==
X-CSE-MsgGUID: paAcxxzJRnCbHOe9BkCKOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; 
   d="scan'208";a="183007278"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO ashevche-desk.local) ([10.245.244.194])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2025 12:12:52 -0700
Received: from andy by ashevche-desk.local with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1vACMD-00000000xKO-0O5g;
	Sat, 18 Oct 2025 22:12:49 +0300
Date: Sat, 18 Oct 2025 22:12:48 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org,
	AngeloGioacchino Del Regno <angleogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v6 1/8] spmi: Print error status with %pe format
Message-ID: <aPPmsBHnmKQ1sa3O@ashevche-desk.local>
References: <20251016104402.338246-1-angelogioacchino.delregno@collabora.com>
 <20251016104402.338246-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251016104402.338246-2-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251018_121259_387323_A389141C 
X-CRM114-Status: UNSURE (   9.05  )
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

On Thu, Oct 16, 2025 at 12:43:55PM +0200, AngeloGioacchino Del Regno wrote:
> Instead of printing just a number, use the %pe format for error
> status, increasing readability of error prints.

...

>  	err = device_add(&sdev->dev);
>  	if (err < 0) {
> -		dev_err(&sdev->dev, "Can't add %s, status %d\n",
> -			dev_name(&sdev->dev), err);
> +		dev_err(&sdev->dev, "Can't add %s, status %pe\n",
> +			dev_name(&sdev->dev), ERR_PTR(err));

LOL, I only now noticed that the parameter to dev_err() and dev_name() is the
same. For christ's sake, why do we need dev_name()?

>  		goto err_device_add;
>  	}

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
