Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C99C83F26
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yncIEF/1pUV8LBT07lsHF+A0X7tKj/YtHZdFmW+oIU=; b=YLjzdqMxI2rf/0
	weXaHqrSW/DsxVi7u4LZZVh80idrH2YI4IZ7Ve6G88IodF+dJhq5Z6m68KlWW4CEOrX/zjm6j8rEE
	0Gbgy/c/mUtKXv7ZD4geIIuXloTDcSzMfpmyfexR3hU5HRaVFqAkvgffg7FhnpDX8LGVzwb4KW9Aa
	KqBLbbNnOYAXSlsGk1tYRD9oIVwwXquNheoMRkkHLWUXJXb1lMmegPR5undfYBy2sINtUv2rZOk2Q
	ZDuTY8MEm+IAdpmfMA5XqjwisYHGRxL5ta2uQMRIN8E1SvvThNAQ8YdIliDKYIxqwCRv96hOAPHgJ
	oFThcSAWINjL//gsiPHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udqR5-0000000HN6c-3G0X;
	Mon, 21 Jul 2025 13:20:07 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udopN-0000000H6kz-1zKq
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 11:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753097825; x=1784633825;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rwXgrluBp9rUpOy4oUp6piiP3wsnYPTjn0FNFxcB0Pg=;
  b=LACBjJluXpXBJMguxch+m6xKjzwknGabWIZ4Rq3K7GF7FXPQCuhFytyU
   U+zaa40ZSs3danoylqTt2J270b9K4Co+FI7Au5gen6NFOHFaOMIgmWKV4
   SMhhNMLn87HTARxlTa9mkv/xRHSwa4C5n8Vl4JEhOzeV8kPYvtzUqbaX0
   K5mGpnn7hQ4+S0XITrGJzvlZTsIzCKwD843i9ZioF16yDL3kUR1w04eS9
   3boZq8D9H0MbHsQuaabRHWYqdBusxt+dZIAxC840YO1tUI/D1Evm+PHY7
   2Ieka578Jh17eEXjKCwlwMmgoLQqVdztprNUx8IsiyT+vtJer8c1Gs1OC
   w==;
X-CSE-ConnectionGUID: PkBsdlrcQae8+SuPyFAjjA==
X-CSE-MsgGUID: 9ECwUQXgQW2TKkZE822ukA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="65999509"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; 
   d="scan'208";a="65999509"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 04:37:05 -0700
X-CSE-ConnectionGUID: CQR6jIVHRm2P5F4mU79eVQ==
X-CSE-MsgGUID: aAD6zgaERDSvkPlKmxYTcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; 
   d="scan'208";a="162856147"
Received: from smile.fi.intel.com ([10.237.72.52])
  by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 04:37:00 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1udopF-0000000HKLM-1Afh;
	Mon, 21 Jul 2025 14:36:57 +0300
Date: Mon, 21 Jul 2025 14:36:57 +0300
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
Message-ID: <aH4mWfgQt_Q0O-7S@smile.fi.intel.com>
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-4-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721075525.29636-4-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_043705_524162_C938D8CC 
X-CRM114-Status: GOOD (  13.62  )
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

On Mon, Jul 21, 2025 at 09:55:21AM +0200, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrates a Power On device supporting pwrkey
> and resin along with the Android reboot reason action identifier.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for PON
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.

...

> +	struct regmap_config qcom_pon_regmap_config = {
> +		.reg_bits = 16,
> +		.val_bits = 16,
> +		.max_register = 0x100,
> +		.fast_io = true

Please, leave trailing comma in this and other similar cases.

> +	};


>  	struct qcom_pon *pon;
>  	long reason_shift;
>  	int error;

> +	if (!pdev->dev.parent)
> +		return -ENODEV;

You can start using

	struct device *dev = &pdev->dev;

here and perhaps one may convert the rest to it...

...

>  	error = of_property_read_u32(pdev->dev.of_node, "reg",

...including, but not limited to, use of device_property_read_u32(dev, ...) here.

> -				     &pon->baseaddr);
> +				     &qcom_pon_regmap_config.reg_base);

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
