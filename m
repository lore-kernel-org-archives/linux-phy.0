Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEB7DC4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+w39BNiOHFRwmQfe7sq9XtUaFrFfPJ0CJ+6thukprM=; b=kZo1vsuWLULb6k
	J0hGbRuL0LaOQf3FKxFGIINvmTVWc5idbJqPa3eel0hK+u1i5comL4f2TmziRWqIOzOmHO6OuKyjn
	Zl+q/C2jCVbJV+cNr0bc0D8cC7wR9x/OGBFhW0yKvBPaDFK3H11nPDzPbyoZfxmESMHMEGqv0QTXs
	XNQAeap6kG0U1ZEpJI8ywMlejjG7n7Bup8jTdZ4QLrvt3JSx8l/YV99wl7qvFvj7xX8TE6V3kClrk
	WW0Vm5HumdG8jYEmeNBu1ONNptlZFx0auXKV2n9G6a0Br2C3TRm986E6XJDampVnYWtBRz8MBRPRG
	g/hQXHusavp3b+bNUmFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rae1I-0000000GqWX-1Krm;
	Thu, 15 Feb 2024 15:51:28 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rae1F-0000000GqVu-04An;
	Thu, 15 Feb 2024 15:51:26 +0000
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="13503036"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; 
   d="scan'208";a="13503036"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2024 07:51:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826428480"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; 
   d="scan'208";a="826428480"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2024 07:51:14 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andy@kernel.org>)
	id 1rae10-00000004phE-0vqi;
	Thu, 15 Feb 2024 17:51:10 +0200
Date: Thu, 15 Feb 2024 17:51:09 +0200
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
Subject: Re: [PATCH v3 18/18] PCI: j721e: add suspend and resume support
Message-ID: <Zc4y7Tj2K2pTQ4HY@smile.fi.intel.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_075125_121316_599FA286 
X-CRM114-Status: GOOD (  17.94  )
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

On Thu, Feb 15, 2024 at 04:18:03PM +0100, Thomas Richard wrote:
> From: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> =

> Add suspend and resume support. Only the rc mode is supported.
> =

> During the suspend stage PERST# is asserted, then deasserted during the
> resume stage.

...

> +#include <linux/clk-provider.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
> @@ -18,10 +19,13 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>

> +#include <linux/container_of.h>

Unordered.

...

> +	ret =3D j721e_pcie_ctrl_init(pcie);
> +	if (ret < 0) {
> +		dev_err(dev, "j721e_pcie_ctrl_init failed\n");

Is there any guarantee this won't spam logs?

> +		return ret;
> +	}

...

> +	/*
> +	 * This is not called explicitly in the probe, it is called by
> +	 * cdns_pcie_init_phy.

cdns_pcie_init_phy()

> +	 */
> +	ret =3D cdns_pcie_enable_phy(pcie->cdns_pcie);
> +	if (ret < 0) {
> +		dev_err(dev, "cdns_pcie_enable_phy failed\n");
> +		return -ENODEV;

A potential log spammer?

> +	}

> +	if (pcie->mode =3D=3D PCI_MODE_RC) {
> +		struct cdns_pcie_rc *rc =3D cdns_pcie_to_rc(cdns_pcie);
> +
> +		ret =3D clk_prepare_enable(pcie->refclk);
> +		if (ret < 0) {
> +			dev_err(dev, "clk_prepare_enable failed\n");

Ditto.

> +			return -ENODEV;

Why is the error code shadowed?

> +		}

...

> +		if (pcie->reset_gpio) {
> +			usleep_range(100, 200);

fsleep()

> +			gpiod_set_value_cansleep(pcie->reset_gpio, 1);
> +		}

> +		ret =3D cdns_pcie_host_link_setup(rc);
> +		if (ret < 0) {
> +			clk_disable_unprepare(pcie->refclk);
> +			return ret;
> +		}
> +
> +		/*
> +		 * Reset internal status of BARs to force reinitialization in
> +		 * cdns_pcie_host_init().
> +		 */
> +		for (enum cdns_pcie_rp_bar bar =3D RP_BAR0; bar <=3D RP_NO_BAR; bar++)
> +			rc->avail_ib_bar[bar] =3D true;
> +
> +		ret =3D cdns_pcie_host_init(rc);
> +		if (ret)

No clock disabling?

> +			return ret;
> +	}


-- =

With Best Regards,
Andy Shevchenko



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
