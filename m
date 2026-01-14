Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06723D31A25
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf+r8cMLKh8HV6etk6YnR8ubyLs0J0sNd4DtrlDeOkA=; b=TPQvBPvub48Nfj
	taSV1YyidMDQ8oIQMn+6bWzE9QE8F4e8a/HHnPY0sxSmFcVolctGKopAcSzWbjrOnKsTgcra+ZQln
	VhlFHB58l1EeNv0GswoOR6KmhCkw7U8ybPzFSjeLnvYv7HZ8lZkm2oDaKdz1sFXDBnjuepbV3N1Mz
	sJAKYsYWDmXFXB0hxJHcoMMhGUK7683sTdQJV3B8i+MjlsJegyk/pSrgJtkq2QkTKBAwZWLwk5SME
	3pCnTmNScqGKo0yIsNvC+6BysVUoIIbLJuxfQJMO27a246GLbdDshbvA3EcEdB23pv3uAp8YVX1xo
	tIYN8aqHCK9nFFxwSj7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwgk-00000008QVD-32yB;
	Wed, 14 Jan 2026 08:57:14 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwgi-00000008QUe-0DAo
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381033; x=1799917033;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HIkzILhgmWy3kG68XFN5wNFScMmkW6IPVLk8hi5sn5g=;
  b=V04i9tqPkg33M9RV+8MuWPddDqOxTMwzHdkuXgEbcA/pzF1x4UGy1ofN
   QRmXjnVmHrmBbVDEMyhYPO00fn10fBvY/79MMfDZfVBfkswwH9ZfwuJAq
   HGemqSy+0+ZCyyVal2ee5/3zRQOF3efUZ8CEI6BQLX2REeycsL0pzOi/o
   kEs9Zg2w+Vpcj1eXPBbOVvLSB/Ssie/TKJhbethMUKMW3i8vyI6MWm14g
   rehULQKfh1wJIA9FTVlxgoHQh4Ee7JK9QW873Xs2A8ibZxbDuQDs8Knxc
   rSOMzexsAhqI1lM4BYDoKk3aJOjAfnn9qf0EM57aXqUd19tnG+rkmnWNI
   w==;
X-CSE-ConnectionGUID: lR5kdMMASyS7GU0aytb4MQ==
X-CSE-MsgGUID: cAMQUqXyRFibaVzRL3RY+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="73311207"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="73311207"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:57:10 -0800
X-CSE-ConnectionGUID: JwC21BClT52N5BFbRPnySQ==
X-CSE-MsgGUID: RAtdZy/tSs2IStYTIHc58g==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:56:59 -0800
Date: Wed, 14 Jan 2026 10:56:57 +0200
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
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v7 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aWdaWY2tWUMllOHH@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_005712_137943_417EA596 
X-CRM114-Status: GOOD (  13.70  )
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

On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate a SDAM device, internally located in
> a specific address range reachable through SPMI communication.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for SDAM
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.

...

> +	struct regmap_config sdam_regmap_config = {
> +		.reg_bits = 16,
> +		.val_bits = 8,

> +		.max_register = 0x100,

Are you sure? This might be a bad naming, but here max == the last accessible.
I bet it has to be 0xff (but since the address is 16-bit it might be actually
257 registers, but sounds very weird).

> +		.fast_io = true,
> +	};

...

> +	rc = of_property_read_u32(dev->of_node, "reg", &sdam_regmap_config.reg_base);

Why not device_property_read_u32(dev, ...) ?

...

> +	sdam->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &sdam_regmap_config);
> +	if (IS_ERR(sdam->regmap))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(sdam->regmap),

You have "dev".

> +				     "Failed to get regmap handle\n");

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
