Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5BD7D31A29
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbWYd1H5xH4uBjw+lMPgU6uFDO7jloyYwTEDH8Cow2U=; b=oL+d2mJnQz3m2E
	+OJPgnn2GNIrxVCxLrIrdXijJqS+5zlGGhWgPQa/aYkoas3Co8Sd3WmEJmeDZJpThXogbYeF8T9Ik
	Few/AlycG2KI4XN95BZgGWOHpdpNyic14xSHgFMJYAxxW281zOiYRy6ZxaAhciGMySFcypTJUQQjB
	TPsDFky6gfLBD2qAEvbszOlC8TvOYfs8FWSSkv414Im/EN+22k9YwFFTnP85M5pHUCLpeiI6RADLe
	m+A4oqwQ3DdkQ14uK+1mbxyPJ3KSaNAWdVBRUdwnsEgOqtds3r89xkcNnYNzL8Sfi5Cpex2NEMzIK
	lkJAW1TqxUC0ZMptzcYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwjU-00000008Ra0-2FoE;
	Wed, 14 Jan 2026 09:00:04 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwjS-00000008RZA-1F5S
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:00:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381202; x=1799917202;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=34jVjerwqYxOEQcuaSsWoBv5CsPOOzGoscXW0zoe/5M=;
  b=kgEcYG/84i1KRNTgZnviWHTHJkifd8Qi+0IS1+B6ZfIh/VIVPZQEf2EF
   jOwQTL/Nwx58d7IipaX0alAAPEWwPa8nY6ln7Ev2AREBMGuEXgT4N9gT8
   fSpamzyXnBLzhOm5/K800G1GEpSSwtdenzC7pu9w1zNPJjOSQMuxCpe5d
   XO/+yBgymSsVPhjHuxDjmnnXmZ4yho/R2vs26O30+Q2rj/cw/sYvJLPdh
   qHvtP4qFXrvNl7AJ9AMDL3ZhylJL1roIG4CCdLD3qq1glBicPTv3a9Q9A
   7MRQkElcFMrFaDwpBXfCfI93ZReKFOYf85m7YclilpRxJH+KGuqndYVzj
   w==;
X-CSE-ConnectionGUID: q3OI1gw7SrKMukr4HljfPA==
X-CSE-MsgGUID: ySdoZI2UQruC7J/vDL/5rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="57231533"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="57231533"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:00:02 -0800
X-CSE-ConnectionGUID: MR0yAgE+ROqJn82tw1i+XQ==
X-CSE-MsgGUID: NYAbW1r9RHeVJwJIuq4/aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="204636173"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:59:54 -0800
Date: Wed, 14 Jan 2026 10:59:51 +0200
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
	Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v7 07/10] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aWdbB4vJ6Z8k0g4s@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-8-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-8-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010002_355847_3FBBC598 
X-CRM114-Status: GOOD (  13.12  )
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

On Wed, Jan 14, 2026 at 09:39:54AM +0100, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate an USB Repeater device, used to
> convert between eUSB2 and USB 2.0 signaling levels, reachable
> in a specific address range over SPMI.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for EUSB2
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.

Same comments and actually one more.

...

> +	struct regmap_config eusb2_regmap_config = {
> +		.reg_bits = 16,
> +		.val_bits = 8,
> +		.max_register = 0x100,
> +		.fast_io = true,
> +	};

This is third time of the same. Make it part of SPMI core and export to
the users. Or are they semantically different like different slices?
In that case you can export it under generic name like

	spmi_default_slice_regmap_config

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
