Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE62CD31A3A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THXJp//10GYKuTnO5wCXUGaN/hX7FkWj3hR8jRd1i3U=; b=SDujOMLwzXMJqT
	5Tsh4dhn58LQozudoFO+WC8qVR3Wgl691CIFQjEJ1OjHz3EebO2tK+VgrDxKtCsaaDf6N2iaSGPdm
	MMrhTXXaQC2X7RBfAcxUdBueLd95Ur1uCL7AFe+Xr2ikP4QYAGewFVLSxi36eoF5pUQpC1OfHekcK
	5YPYdB+/jl+dBjhSKDR4VBGz79BEJw7rIZQfv2nI0Q56eGuhfC6se02mocTgg/15KFebMaMUxmKeW
	tfpi2lQ8WwhlVhXwjIzx8xRKJ9H42yzQ4VA84bg3K91FodFC3TjStONWSf2UGlevcWvnE5XdYSeRu
	gbU3HYatPN4BucWGQ4TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxMz-00000008bdV-1lfU;
	Wed, 14 Jan 2026 09:40:53 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxMs-00000008bbo-3ZkQ
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768383647; x=1799919647;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1qCJbDf3LNBQnokPmnk8fcBE3EDda534imX16lpluf8=;
  b=FyYyp1k0nK0l1VMNxfYh+LPufx7wPmQTjpAohcUDYMAnDEG52x92O1TL
   +H2LdgrTQHIaoYjkKhuTYHl4ms4+xvVUf2kA66I9r7MdxhG/5aLAfGd9C
   R85fluXakBs0k+BDJ1rxrDzGxjzw/ABqn+w1hPB07tgQtrSGjbQfTvD+m
   rFjWZJhGgTs7w8z8vW8hH1oWcaX1tSO+Rxt+L1Gzkhnmxw6J/a/tKf/rs
   K+7F4Mz7YfxQmYUa9XkUUksdaGwdu1402QnrNXKx7ukMjeLJysdeuxqLj
   tQtI8VinDoyphpIzboeJQ2JzCTTLqnfEt0ziIZKipUWOOKslt3z5Q1sVD
   w==;
X-CSE-ConnectionGUID: Nc4ale0MRqya1CeI5vSs/Q==
X-CSE-MsgGUID: ynt3UMvgQ3KS/4wzWZwB9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="87259332"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="87259332"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:40:46 -0800
X-CSE-ConnectionGUID: mw6jqSNOTz6KKRVCXQZMUg==
X-CSE-MsgGUID: HUqMSmL5QUeIkI8VEWpavw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="209478599"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:40:40 -0800
Date: Wed, 14 Jan 2026 11:40:38 +0200
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
Message-ID: <aWdklo0u1g0oHn3z@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-8-angelogioacchino.delregno@collabora.com>
 <aWdbB4vJ6Z8k0g4s@smile.fi.intel.com>
 <8f5c79e0-5f7e-4fe4-b9d7-60375e779892@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f5c79e0-5f7e-4fe4-b9d7-60375e779892@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_014046_900524_917983C5 
X-CRM114-Status: GOOD (  17.03  )
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

On Wed, Jan 14, 2026 at 10:26:42AM +0100, AngeloGioacchino Del Regno wrote:
> Il 14/01/26 09:59, Andy Shevchenko ha scritto:
> > On Wed, Jan 14, 2026 at 09:39:54AM +0100, AngeloGioacchino Del Regno wrote:

...

> > > +	struct regmap_config eusb2_regmap_config = {
> > > +		.reg_bits = 16,
> > > +		.val_bits = 8,
> > > +		.max_register = 0x100,
> > > +		.fast_io = true,
> > > +	};
> > 
> > This is third time of the same. Make it part of SPMI core and export to
> > the users. Or are they semantically different like different slices?
> > In that case you can export it under generic name like
> > 
> > 	spmi_default_slice_regmap_config
> 
> There are more complicated devices around that I didn't port to the new
> spmi subdevices, and I really don't want to make a default for now.
> 
> At least some of those need different params (including some MediaTek ones
> that are not upstream yet).
> 
> Can we please let this in and *then* see how much can be commonized after
> the majority of more complicated drivers are migrated in the future?

Sure, but it looks like a pattern currently...

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
