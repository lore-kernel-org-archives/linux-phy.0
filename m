Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA9BD31A3A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8in5zB47dALRp9vOrNpM0b/Yl2eUEnGMscKgDWRGaY=; b=0WLXETzcXcoUKh
	uXuFNGMwTuL5lQfvZeOkuodmrtrafhjf4Ag/xQ39z5kEL7XyP4zMepyv7DTdpydDRCQ1kPyQ5Vi6m
	/Zoex/nArMMmNxA3tlI/HdEJt1JO5L6T/9jhxgqRtym+XiuyAA/Zco5WPdZity8w4XkQcEAXkyQg5
	qQJiv2MulByAr2QQiDOTI9DZmE0YBSws/M01nA+VRmHV7CTbMXgE70weZqkIQ1xl3w7+o5auRocqY
	U65WCc1XXQ20x0upn+vo5Pi4bcuaPQfSn86LMC0xN6QQ8OsK+ProtaSHqkQ1Ud+EvOD0r4CsbnsRX
	VGdOABWqc8RIDWmiRSVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxOe-00000008btw-3Iiy;
	Wed, 14 Jan 2026 09:42:36 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxOc-00000008bt0-2UJd
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768383754; x=1799919754;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MAXJVCpBtOrZVOvzDnY3H5JvAag0UgPrscTnLJ7u8yk=;
  b=CjE/6MzvYxdURYnucUgIHu3ovN1a6Vbsg9NyQNMcR6vFHilkF+LiUs5x
   0yh+tpK0l/lqrsReBelC/B5MiT6CT0tN3awz2HiafAXeO+g3omCbbx5Yw
   o17zdpeJmRzW/4IDr99NjmOG9NFvev8jNDOEK51Gj/dNYH9nysjnARckl
   o2Q6/QSp9mo+BkJ4uqJ6osZGWOyPcwW/EqJrKpIswmDzSSkY4FHOe96mi
   u1QMbjIWRGcWE4CzWzxkSykWbIL2AMtwBCoUQe1hwlSCs6u4ltBGaXxOb
   TaHGdbdVXkDdGWhf7soZMXU/HGIEd/npOV5lTQqHG4avENfit5N55+J0b
   g==;
X-CSE-ConnectionGUID: Jio1FBmcSymNg+XogfiZnA==
X-CSE-MsgGUID: xIdLWhs5Qc28QNCWDLw43g==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="87094047"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="87094047"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:42:27 -0800
X-CSE-ConnectionGUID: ZQxiu0mMRRurcnuwza5aGA==
X-CSE-MsgGUID: /xvIp0n/QjW4Ffw80xNq+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="203850428"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:42:20 -0800
Date: Wed, 14 Jan 2026 11:42:17 +0200
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
Message-ID: <aWdk-RP-59cJeCBo@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
 <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_014234_702956_447BF0D8 
X-CRM114-Status: GOOD (  17.36  )
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

On Wed, Jan 14, 2026 at 10:09:45AM +0100, AngeloGioacchino Del Regno wrote:
> Il 14/01/26 10:07, Andy Shevchenko ha scritto:
> > On Wed, Jan 14, 2026 at 10:03:57AM +0100, AngeloGioacchino Del Regno wrote:
> > > Il 14/01/26 10:00, Andy Shevchenko ha scritto:
> > > > On Wed, Jan 14, 2026 at 09:59:40AM +0100, AngeloGioacchino Del Regno wrote:
> > > > > Il 14/01/26 09:56, Andy Shevchenko ha scritto:
> > > > > > On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:

...

> > > > > > > +	struct regmap_config sdam_regmap_config = {
> > > > > > > +		.reg_bits = 16,
> > > > > > > +		.val_bits = 8,
> > > > > > 
> > > > > > > +		.max_register = 0x100,
> > > > > > 
> > > > > > Are you sure? This might be a bad naming, but here max == the last accessible.
> > > > > > I bet it has to be 0xff (but since the address is 16-bit it might be actually
> > > > > > 257 registers, but sounds very weird).
> > > > > 
> > > > > Yes, I'm sure.
> > > > 
> > > > So, what is resided on address 0x100 ?
> > > 
> > > I don't remember, this is research from around 5 months ago, when I've sent
> > > the v1 of this.
> > > 
> > > If you really want though, I can incorrectly set max_register to 0xff.
> > 
> > Why incorrectly? Can you dig into the datasheet and check, please? We don't
> > know what is the 0x100 address means.
> 
> I don't have any datasheets for Qualcomm IPs.

Hmm... Can we have somebody from QC to check on this?
Perhaps Dmitry?

> > > > > > > +		.fast_io = true,
> > > > > > > +	};

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
