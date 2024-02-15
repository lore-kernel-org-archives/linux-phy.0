Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED71FC4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Nx/FUyhPcTPfyWpxTiMPtA822s8M0+7xO9GXs2R/Zs=; b=CX7dqq1iJbDrnx
	uOCAUL/5kJJ/XggGGKUjzUZTg//ffXTyAgG63/KpQrRcbrGv8zxZStxUvbIYGsNns+k0jDUVB80k3
	aRf3KCYkrfJP/DkFBQFuA0UuI+PQb2WkVU0DYqdyUH5UP5TWJpuTvzgxkkrjoDwRlb6hkbcyuuZZW
	KEYB6NvCD936Gjj9xwiCGeZB/uhj9jjjvyKVZaSZXCWZ3P67oDDvgc9cD6w/hXTX35hPT8KXbyGo4
	PBkP76m2CSKYDMRiacW+p3Otd5VOTUkgtu4ssbUfvW8K52niKsszlYEakSqWlSr6trFMGd2bcJ/SQ
	ZPnelh62c8OlXFrGO9AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radx6-0000000GpFA-2Xsl;
	Thu, 15 Feb 2024 15:47:08 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radx3-0000000GpDl-3KPr;
	Thu, 15 Feb 2024 15:47:06 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2231952"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; 
   d="scan'208";a="2231952"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2024 07:47:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="912182655"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; 
   d="scan'208";a="912182655"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2024 07:46:59 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1radwt-00000004pdr-0xYK;
	Thu, 15 Feb 2024 17:46:55 +0200
Date: Thu, 15 Feb 2024 17:46:54 +0200
From: Andy Shevchenko <andy@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v3 14/18] phy: cadence-torrent: add suspend and resume
 support
Message-ID: <Zc4x7kvFfBI2sb_E@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_074705_864860_A1AE9DB0 
X-CRM114-Status: GOOD (  16.63  )
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

On Thu, Feb 15, 2024 at 04:17:59PM +0100, Thomas Richard wrote:
> Add suspend and resume support.
> =

> The already_configured flag is cleared during the suspend stage to force
> the PHY initialization during the resume stage.

> Based on the work of Th=E9o Lebrun <theo.lebrun@bootlin.com>

SoB/Co-developed-by ?

...

> +static int cdns_torrent_phy_suspend_noirq(struct device *dev)
> +{
> +	struct cdns_torrent_phy *cdns_phy =3D dev_get_drvdata(dev);
> +	int i;

Why signed?

> +	reset_control_assert(cdns_phy->phy_rst);
> +	reset_control_assert(cdns_phy->apb_rst);
> +	for (i =3D 0; i < cdns_phy->nsubnodes; i++)
> +		reset_control_assert(cdns_phy->phys[i].lnk_rst);
> +
> +	if (cdns_phy->already_configured)
> +		cdns_phy->already_configured =3D 0;
> +	else
> +		clk_disable_unprepare(cdns_phy->clk);
> +
> +	return 0;
> +}
> +
> +static int cdns_torrent_phy_resume_noirq(struct device *dev)
> +{
> +	struct cdns_torrent_phy *cdns_phy =3D dev_get_drvdata(dev);
> +	int node =3D cdns_phy->nsubnodes;
> +	int ret, i;

Ditto.

> +	ret =3D cdns_torrent_clk(cdns_phy);
> +	if (ret)
> +		goto clk_cleanup;
> +
> +	/* Enable APB */
> +	reset_control_deassert(cdns_phy->apb_rst);
> +
> +	if (cdns_phy->nsubnodes > 1) {
> +		ret =3D cdns_torrent_phy_configure_multilink(cdns_phy);
> +		if (ret)
> +			goto put_lnk_rst;
> +	}
> +
> +	return 0;
> +
> +put_lnk_rst:
> +	for (i =3D 0; i < node; i++)
> +		reset_control_assert(cdns_phy->phys[i].lnk_rst);
> +	reset_control_assert(cdns_phy->apb_rst);
> +	clk_disable_unprepare(cdns_phy->clk);
> +clk_cleanup:
> +	cdns_torrent_clk_cleanup(cdns_phy);
> +	return ret;
> +}

-- =

With Best Regards,
Andy Shevchenko



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
