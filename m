Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9029ACAC598
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 13:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+C57BSCHln9Jfrny8cdjw47QqfyEL4G3Xp60AWZ2sA=; b=GX7Bc8QZVaOklz
	oWunPtoCNl/7iKSu7JLwLbe0f/FmGpk9kw9zxgXuUzhQ2ZwZdoP3mkyTufC8GVIAEI32cCIfOpFUw
	0+gcHLHQFO6IHQGX7Bsvo4mWeYEnHTUZrbxX6ToLge9Y7ZlHVoys9SFexBujkCmw1/iTzlGJop6Rz
	QdsKCljYNNjHlKgIKAwQ2TtDJ5rmSqL9SKkp1VsYKhZwFGzArHiII3oNb5E7u5aJ0698JdAkUXf4t
	HNyYRLieUWPddLqblzHVTYPGzrpjCJgQRFe3mnhtIUY1A1Q/xb8xhNYyTuA/vnrH8kehcAXkdj8Tt
	olieR/FzszmA/9g7s8CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVqZ-00000007xPo-0qpE;
	Tue, 16 Sep 2025 13:35:51 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVqW-00000007xP6-3Xx2
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 13:35:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758029749; x=1789565749;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=xNjcCrqL3Fvvxc/pvu1fHNLYA6h0GPV11qPf/HCmCrw=;
  b=L6x0Vb3LxejXiB4D/qWIYTLW89MY2sbxASBA369S9zDyNIjFId4MpjjT
   ZwYK/9ZgDuEpVJA3jfYY30r0YYMg48O9OQ6xEHQP8M55/tS9DZ6I23POt
   wA0WgTANmbzqEFMDnvDHW6TCqeqAUePolIx5Ux0pErGu/DIENmyR7VRHB
   A3AVagqv0cIPz12729bYpfnH0j7TdwlbDtHrIa85/nynEe9z949P39do0
   my/bRos8qpnR/uXfd3ihultevQ1A+bos7WOGFoVZ70ec3nvjC04R5buJ8
   M/lldRPk3L0g7q3MOjNDPmfqLK4HQABZaPi4vrhKDB84g0NOorXMWHxZj
   w==;
X-CSE-ConnectionGUID: YP9ja3z/Teqa+oM6jzlyPA==
X-CSE-MsgGUID: SVnLdSjLR+uw1czKlVNioQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60237213"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; 
   d="scan'208";a="60237213"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2025 06:35:46 -0700
X-CSE-ConnectionGUID: n5JHXARFTkK+1BMz1LMX7w==
X-CSE-MsgGUID: fePhtN52T8GQra3atVYGLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; 
   d="scan'208";a="175365031"
Received: from smile.fi.intel.com ([10.237.72.51])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2025 06:35:38 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1uyVqJ-00000003XU8-1c1D;
	Tue, 16 Sep 2025 16:35:35 +0300
Date: Tue, 16 Sep 2025 16:35:35 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aMlnp4x-1MUoModr@smile.fi.intel.com>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_063548_929975_7686D0DD 
X-CRM114-Status: UNSURE (   9.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Sep 16, 2025 at 03:24:56PM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, Sep 16, 2025 at 10:44:40AM +0200, AngeloGioacchino Del Regno wrot=
e:

...

> > +MODULE_IMPORT_NS("SPMI");
> =

> If it's exactly the files that #include <linux/spmi.h> should have that
> namespace import, you can put the MODULE_IMPORT_NS into that header.

Which makes anyone to import namespace even if they just want to use some t=
ypes
out of the header. This is not good solution generally speaking. Also this =
will
diminish one of the purposes of _NS variants of MODULE*/EXPORT*, i.e. make =
it
invisible that some of the code may become an abuser of the API just by som=
eone
include the header (for a reason or by a mistake).

-- =

With Best Regards,
Andy Shevchenko



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
