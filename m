Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC553C48BF6
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 17:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlhLMeHcHL8IQfS2GYFPdZ3WGk124AR7WQgOcQ8cRoQ=; b=YRc4HnYB6ADJP9
	H0SDBbgjODkrxBS01a8ajXphCYsot2bP49lkO1NE6Jw3udcKV0sw6/aF2N5Mnpu7QfXEdcEW9XZHk
	kFMpFJnhHrjZj9lDrtCz07NoZXPijJqpMmld4VNvFSAaynzsDa8JOgfHLKdtAuvOdefiD8u0oqyVM
	GpKoEqqNtuWQr9k5yfdggKian8218vOTQko25xWihmrTqT+fXNvEUT/A7fQYEOJG7zelRbopeBXeg
	+1qZL7+4BuuhwDTLsSnAsPujhr6ll2Ev7yq1tAMvHc8CpTOSy5bYAuKUjmcd3u1aYmGre5WMUdr02
	CLvoCLiz4/zkxlAQMiog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1refBd-000000025xz-14dR;
	Mon, 26 Feb 2024 17:54:45 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1refBY-000000025xD-0ddH;
	Mon, 26 Feb 2024 17:54:42 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3145556"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3145556"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2024 09:54:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="913883428"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="913883428"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2024 09:54:30 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1refBK-00000007kiq-1TFM;
	Mon, 26 Feb 2024 19:54:26 +0200
Date: Mon, 26 Feb 2024 19:54:25 +0200
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
Subject: Re: [PATCH v3 17/18] PCI: j721e: add reset GPIO to struct j721e_pcie
Message-ID: <ZdzQUX14SCrK95q2@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-17-5c2e4a3fac1f@bootlin.com>
 <Zc42HIibtoXqLyEA@smile.fi.intel.com>
 <e24c77e6-5fcd-42f0-b93c-b4e6ce17e75a@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e24c77e6-5fcd-42f0-b93c-b4e6ce17e75a@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_095441_759507_63AA53D2 
X-CRM114-Status: GOOD (  21.26  )
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

On Mon, Feb 26, 2024 at 06:05:16PM +0100, Thomas Richard wrote:
> On 2/15/24 17:04, Andy Shevchenko wrote:
> > On Thu, Feb 15, 2024 at 04:18:02PM +0100, Thomas Richard wrote:
> >> From: Th=E9o Lebrun <theo.lebrun@bootlin.com>

...

> >>  	case PCI_MODE_RC:
> >> -		gpiod =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> >> -		if (IS_ERR(gpiod)) {
> >> -			ret =3D PTR_ERR(gpiod);
> >> +		pcie->reset_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OU=
T_LOW);
> >> +		if (IS_ERR(pcie->reset_gpio)) {
> >> +			ret =3D PTR_ERR(pcie->reset_gpio);
> >>  			if (ret !=3D -EPROBE_DEFER)
> >>  				dev_err(dev, "Failed to get reset GPIO\n");
> >>  			goto err_get_sync;
> >> @@ -504,9 +504,9 @@ static int j721e_pcie_probe(struct platform_device=
 *pdev)
> >>  		 * mode is selected while enabling the PHY. So deassert PERST#
> >>  		 * after 100 us.
> >>  		 */
> >> -		if (gpiod) {
> >> +		if (pcie->reset_gpio) {
> >>  			usleep_range(100, 200);
> >> -			gpiod_set_value_cansleep(gpiod, 1);
> >> +			gpiod_set_value_cansleep(pcie->reset_gpio, 1);
> >>  		}
> > =

> > Instead of all this, just add one line assignment. Moreover, before or =
after
> > this patch refactor the code to use ret =3D dev_err_probe(...); pattern=
 that
> > eliminates those deferral probe checks.
> =

> Hi Andy,
> =

> I'm not sure what you exactly want when you write "just add one line
> assignment".

		pcie->reset_gpio =3D gpiod;

That's it. No additional code changes are needed (WRT the above context,
of course you want to have a new structure member).

-- =

With Best Regards,
Andy Shevchenko



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
