Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15215D31A2B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQdo3O2W55w0WkwjFaDDT8VohHi3FG+5w5qoux8D61Q=; b=sVLJzDKd2giyod
	6TObqdpvgEv5kG0aN0e06KarPsNCaOyGkKhhr1kFVmHoLdX6wI38FwA1KfC0a6BpTmYE3+rR/VCnV
	zn3knufrU1skWNZAenibMvsCBya+T/umAM8AfHkrbpa7700X/acp42GQkwiAiSl7UMkpggx7TQLNA
	iA1cesZRxDplhnV61LAiWtLUrXQ1ZX7+8MPVHw+Q1R1n2l8fJSQUmQbnubJAZ7b/Z4T7zpqoLqHXy
	Ug03SvJJcbed+Dq3ZXqVvtdAcI6tI9jIHtXNOm4XTC3t7W3Bs60bv4wgHP6uPh3m8Mv0JPwLjwqm2
	vUro0ENDs2+2bqCZEHQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwkQ-00000008Rm6-3Ut5;
	Wed, 14 Jan 2026 09:01:02 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwkM-00000008RkX-0T6r
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381259; x=1799917259;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3MTdLgR7EYrllSYqsPVsivWnYqpalKljGcBuvMMrHQw=;
  b=gzQjhXlRpa3JhrVdFQgFA05LxZE7oGn3ExWhm94OJYnMyGE7/l0vn6XK
   Q1gAl21ug5/BrTJgW41gkZXlxmMC5B8TnKHIsxVHwqebkZcb1JIiHGoJG
   hiF1xMzC5B3F5gTZ2a6TaVgkgM1EoM8Je21mQKKlnvP+whCuA8VPaRNXI
   V0fhhSYuNcj2t3lsIyQ1d0xH0U7Ma0do+R1kyz3NtxhgxRrav2VAYxzzi
   XXKKN4X/sBI/AhO16vq0jPBwInEqxmZGjerYKOrK2lTiZ/R3iYTswQOP2
   zRx4R2I2JZA5oDqrnrlVW+Tk/m4zD0TDqBSIR7XXrk9Bx8T4zFAg/1o8s
   w==;
X-CSE-ConnectionGUID: zWx8kfLpTGqf3IUTI90zDw==
X-CSE-MsgGUID: 2m2IX3jVQpqUxTLDtq4TVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80785906"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="80785906"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:00:58 -0800
X-CSE-ConnectionGUID: 8oA79wd9S7qrqlUbvjEBxQ==
X-CSE-MsgGUID: L3zNIa1cScWTiizkk+o/sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="203767160"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:00:50 -0800
Date: Wed, 14 Jan 2026 11:00:47 +0200
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
Message-ID: <aWdbPze-f_2_5EbL@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010058_280650_5B23413B 
X-CRM114-Status: GOOD (  19.06  )
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

On Wed, Jan 14, 2026 at 09:59:40AM +0100, AngeloGioacchino Del Regno wrote:
> Il 14/01/26 09:56, Andy Shevchenko ha scritto:
> > On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:
> > > Some Qualcomm PMICs integrate a SDAM device, internally located in
> > > a specific address range reachable through SPMI communication.
> > > 
> > > Instead of using the parent SPMI device (the main PMIC) as a kind
> > > of syscon in this driver, register a new SPMI sub-device for SDAM
> > > and initialize its own regmap with this sub-device's specific base
> > > address, retrieved from the devicetree.
> > > 
> > > This allows to stop manually adding the register base address to
> > > every R/W call in this driver, as this can be, and is now, handled
> > > by the regmap API instead.

...

> > > +	struct regmap_config sdam_regmap_config = {
> > > +		.reg_bits = 16,
> > > +		.val_bits = 8,
> > 
> > > +		.max_register = 0x100,
> > 
> > Are you sure? This might be a bad naming, but here max == the last accessible.
> > I bet it has to be 0xff (but since the address is 16-bit it might be actually
> > 257 registers, but sounds very weird).
> 
> Yes, I'm sure.

So, what is resided on address 0x100 ?

> > > +		.fast_io = true,
> > > +	};


-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
