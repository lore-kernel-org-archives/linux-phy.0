Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7080DD31A29
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtWXqPkhTxyUux6s13sOWt0qp4VO5jGJSm+ZM+zmPo0=; b=dxZ5qb+MYJ2jV7
	AuF7fvdCMsam1/LgfgUwXt3/7mI6ap2nhU4z0JIkvWtDAHdX86qWX0PULw3XKVlJS8Jnolv7TxOv6
	DlPxWdhM+Z0vZsmCg1QYkOirT2/gMZFen88YyAl5fWpT/bcfgdP73awW7WQxAnyBDiNSrnfKOXR83
	ToF9/EoH7NBKZKjfiMi0RV+tq99qY7sOnS/2x41vrsu+wUvINgZ4MEf7DRzJKUrx3sIIT1quSQjbw
	WkiXAQ45xxwAjt/VqhKIUZj4W6jeTxh1qrIp13g0sPbAYpH+ZgHKxU5gWT6QxthDpvpS9xabl+MBo
	FuUpWFwsLPmNh8znrd+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwql-00000008T8T-0rHu;
	Wed, 14 Jan 2026 09:07:35 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwqi-00000008T7a-2j9B
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381653; x=1799917653;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1DosfIvkwmLXhLuyIUk1njEDi+VFcxY+Fb3zWtz4sZk=;
  b=CCQL8+mhrgKtaSeHMT9ta+Q1DEjQOIqY7U1rDaNKeBxZ2rwOrKR6wkU7
   ZpPH79ERMB2zNz7ZlIBDp/C6bRR6p2SiXiU7WqmNWwYa7jvT7bKQRqOMp
   wXURdOGqNFsvSW3sT72902OnffXM+GyPkeeiTIxDaUREc3zy3wfXi6Qqi
   0jF8eFw5+3oxYb7pBhs++gEkFi4HVyDoJpw5BAbaPTOhAVd/vnmFg43Zv
   m5bIcZEhmZKn/3ZlqA3sSRnnhXR685Vfy0XuwE8gktHG/OO3znuMRrYIj
   6ZINaT3I86xgDogm3dAoYemruchjsH2Ru7ID/aMNiOwaOJhoGR38TZXws
   g==;
X-CSE-ConnectionGUID: BCJTs2ffSieqb5yP2zwApw==
X-CSE-MsgGUID: yIMaMsfkRD2rOL4avKlyZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="57232153"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="57232153"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:07:32 -0800
X-CSE-ConnectionGUID: p8RI8YcZQbCm1JTFWd5JJQ==
X-CSE-MsgGUID: a54m11ipThy3MmcUB72/6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="204683302"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:07:25 -0800
Date: Wed, 14 Jan 2026 11:07:23 +0200
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
Message-ID: <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010732_727016_9E0DAE07 
X-CRM114-Status: GOOD (  15.73  )
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

On Wed, Jan 14, 2026 at 10:03:57AM +0100, AngeloGioacchino Del Regno wrote:
> Il 14/01/26 10:00, Andy Shevchenko ha scritto:
> > On Wed, Jan 14, 2026 at 09:59:40AM +0100, AngeloGioacchino Del Regno wrote:
> > > Il 14/01/26 09:56, Andy Shevchenko ha scritto:
> > > > On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:

...

> > > > > +	struct regmap_config sdam_regmap_config = {
> > > > > +		.reg_bits = 16,
> > > > > +		.val_bits = 8,
> > > > 
> > > > > +		.max_register = 0x100,
> > > > 
> > > > Are you sure? This might be a bad naming, but here max == the last accessible.
> > > > I bet it has to be 0xff (but since the address is 16-bit it might be actually
> > > > 257 registers, but sounds very weird).
> > > 
> > > Yes, I'm sure.
> > 
> > So, what is resided on address 0x100 ?
> 
> I don't remember, this is research from around 5 months ago, when I've sent
> the v1 of this.
> 
> If you really want though, I can incorrectly set max_register to 0xff.

Why incorrectly? Can you dig into the datasheet and check, please? We don't
know what is the 0x100 address means.

> > > > > +		.fast_io = true,
> > > > > +	};

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
