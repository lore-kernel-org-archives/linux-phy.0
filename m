Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A580D31A29
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyM/pARnihq9cFzMIWBjqV8rnC3cDNz3OksGH0dxEK0=; b=dg7BI1ugiopQdR
	1Qwau4oeHE1SEMvBc85r8R8cjseQLuArv3JnD5oO4gRZVZVFdKrYkNor3WDMXn843retthaNaxz0p
	rEEyqLfDro4pUgjERTYCZY5rvpnFwwCsvYZFetJcy5FC/DwkTKxcObQSpi3MVuQfLE6C6Gol+50lm
	4fv4/7rjBviZRb/ZzFVOGsWwvbI7AH+Jeq5blstSD/n0o4ch4A/qW9FAiQydu+kmZwz1qCitJT4S8
	njfrW3GKf0O6PYV/37kidgCxBMJcb9g8JFkyQNTiajUfvQvywvR9jusI8PxmjarOF9Cn9D8hlmzMa
	ytihbW6DBoH5bzkYUuSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwn2-00000008SH3-3IYr;
	Wed, 14 Jan 2026 09:03:44 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwn0-00000008SGE-4BDc
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381423; x=1799917423;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fTUTpLyogUFStiXKIz6Fjo+kQnm2xvkbAn0exgqftAs=;
  b=kjHrXr6mZio+JQDV4Vi2Ysnfr3RbN8zXomrs+Xy5Qzg4dttRHYC4Apom
   zs5nfJ+aWRvKE0AVUphyyc3vG4l09LObdK7t3kKMt74w6YZeuwtkGUB8t
   z9oldihywaLSf3BKDT6aY8TGehJjCoy3vU6vFvaHGWOVDBd54Ld6hlpAC
   LsBiwKy5/xe9/gJVqLtsJDxyZWyLZFOA7TH2DdeYoX/c0/LdRnwtvtIss
   TRNF8SeMuZLTOLxhwk1XYKEEFGaY2I/sKrNqyI3ct3hW+LTHwbICDQDJB
   te745VjlRmHwiliDm9uMQ34gU1v/L6i3D6fzK/fUuHaY2IROiyoErSXwu
   w==;
X-CSE-ConnectionGUID: 31tSOgJDRPaVC/vnSCJFJg==
X-CSE-MsgGUID: f9xGmtsQRL2ECSK7ui3GuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="95151833"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="95151833"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:03:42 -0800
X-CSE-ConnectionGUID: jGJ3Vz1DT82KoBTjR/uURA==
X-CSE-MsgGUID: IKQGulzRQV60LuTBHMOxsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="208777513"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:03:35 -0800
Date: Wed, 14 Jan 2026 11:03:33 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
	srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
	sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com,
	Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH v7 10/10] iio: adc: qcom-spmi-iadc: Remove regmap R/W
 wrapper functions
Message-ID: <aWdb5FQpodBLZLHY@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-11-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-11-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010343_071972_224F97C5 
X-CRM114-Status: UNSURE (   9.66  )
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

On Wed, Jan 14, 2026 at 09:39:57AM +0100, AngeloGioacchino Del Regno wrote:
> This driver doesn't need to add any register base address to any
> regmap call anymore since it was migrated to register as a SPMI
> subdevice with its own regmap reg_base, which makes the regmap
> API to automatically add such base address internally.
> 
> Since the iadc_{read,write,read_result}() functions now only do
> call regmap_{read,write,bulk_read}() and nothing else, simplify
> the driver by removing them and by calling regmap APIs directly.

...

>  {
>  	unsigned int count, retry;
>  	int ret;
> -	u8 sta1;
> +	u32 sta1;

Keep it in reversed xmas tree order.

>  	retry = interval_us / IADC_CONV_TIME_MIN_US;

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
