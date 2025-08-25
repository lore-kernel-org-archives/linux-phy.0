Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6218CA0FE1
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 11:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCEXZ42J0k4gyimhIrlIfcZFR2Cf9J2PsKGX6GdnugA=; b=l69S4/fXZpLyCA
	5+2ZAHYSUqVO+zr0oE9k+aZtIipBKj3Hxhj/XphrvjawVWa6yBFit2OOGglTR5b+UGTUqlSwOxOHu
	YnqLRca0iB6lV9Ka9tIQDmcy80+nJ9skSf2KUKbD8QpOZqmttZrYZvhFG6Jb1zI812fsx2fEtuImL
	/JFrZBl6rVglBlfibtiVa7J8nFrQ+cA7/VYDD3wlwkYQfcJzgF0KBL+fCcFtzjHREg9vZZ0cppX8p
	TtjurBNiU10kotijPjQY3H0AzlQeJGnYIG3cnq/LbOI/5C58mPlW1effZYqSxTOtwG8WlqKJWF48Q
	nZpP9/UwuF33/GnWFl4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVaA-00000007n1u-2Gnm;
	Mon, 25 Aug 2025 11:41:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTin-00000007XGj-0TSb
	for linux-phy@lists.infradead.org;
	Mon, 25 Aug 2025 09:42:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uqTiU-0002bt-GY; Mon, 25 Aug 2025 11:42:18 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uqTiS-0022ru-2W;
	Mon, 25 Aug 2025 11:42:16 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uqTiS-000J5K-2C;
	Mon, 25 Aug 2025 11:42:16 +0200
Message-ID: <0501e21d1b6c99d18fe7e660f38b9bfafc76de53.camel@pengutronix.de>
Subject: Re: [PATCH 4/7] phy: allwinner: a523: add USB3/PCIe PHY driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: iuncuim <iuncuim@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>,  Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-sunxi@lists.linux.dev
Date: Mon, 25 Aug 2025 11:42:16 +0200
In-Reply-To: <20250816084700.569524-5-iuncuim@gmail.com>
References: <20250816084700.569524-1-iuncuim@gmail.com>
	 <20250816084700.569524-5-iuncuim@gmail.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_024237_143161_263ABCA0 
X-CRM114-Status: GOOD (  25.79  )
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

On Sa, 2025-08-16 at 16:46 +0800, iuncuim wrote:
> From: Mikhail Kalashnikov <iuncuim@gmail.com>
> 
> The A523 family of processors features a combophy for USB 3.0 and PCIe,
> developed by Innosilicon. Simultaneous operation of both interfaces is
> not supported by design.
> Currently, the driver only adds support for USB 3.0. PCIe support is
> currently unavailable and will be added later.
> All data on phy configuration is taken from the manufacturer's BSP driver.
> 
> Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>
> ---
>  drivers/phy/allwinner/Kconfig                |   9 +
>  drivers/phy/allwinner/Makefile               |   1 +
>  drivers/phy/allwinner/phy-sun55i-usb3-pcie.c | 267 +++++++++++++++++++
>  3 files changed, 277 insertions(+)
>  create mode 100644 drivers/phy/allwinner/phy-sun55i-usb3-pcie.c
> 
> diff --git a/drivers/phy/allwinner/Kconfig b/drivers/phy/allwinner/Kconfig
> index fb584518b..af2a82e51 100644
> --- a/drivers/phy/allwinner/Kconfig
> +++ b/drivers/phy/allwinner/Kconfig
> @@ -57,3 +57,12 @@ config PHY_SUN50I_USB3
>  	  part of Allwinner H6 SoC.
>  
>  	  This driver controls each individual USB 2+3 host PHY combo.
> +
> +config PHY_SUN55I_USB3_PCIE
> +	tristate "Allwinner A523 Innosilicon USB3/PCIe Combophy Driver"
> +	depends on ARCH_SUNXI || COMPILE_TEST
> +	depends on RESET_CONTROLLER

This dependency is not necessary. The reset controller API is stubbed
out in case  RESET_CONTROLLER is disabled.

ARCH_SUNXI selects ARCH_HAS_RESET_CONTROLLER, which default-enables
RESET_CONTROLLER.

> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the Allwinner PCIe/USB3.0 combo PHY
> +	  with Innosilicon IP block founded in A523/A527/H728/T527 SOC
> diff --git a/drivers/phy/allwinner/Makefile b/drivers/phy/allwinner/Makefile
> index bd74901a1..5948a27ef 100644
> --- a/drivers/phy/allwinner/Makefile
> +++ b/drivers/phy/allwinner/Makefile
> @@ -3,3 +3,4 @@ obj-$(CONFIG_PHY_SUN4I_USB)		+= phy-sun4i-usb.o
>  obj-$(CONFIG_PHY_SUN6I_MIPI_DPHY)	+= phy-sun6i-mipi-dphy.o
>  obj-$(CONFIG_PHY_SUN9I_USB)		+= phy-sun9i-usb.o
>  obj-$(CONFIG_PHY_SUN50I_USB3)		+= phy-sun50i-usb3.o
> +obj-$(CONFIG_PHY_SUN55I_USB3_PCIE)		+= phy-sun55i-usb3-pcie.o
> diff --git a/drivers/phy/allwinner/phy-sun55i-usb3-pcie.c b/drivers/phy/allwinner/phy-sun55i-usb3-pcie.c
> new file mode 100644
> index 000000000..905c54a67
> --- /dev/null
> +++ b/drivers/phy/allwinner/phy-sun55i-usb3-pcie.c
> @@ -0,0 +1,267 @@
[...]
> +static int sun55i_usb3_pcie_phy_init(struct phy *_phy)
> +{
> +	struct sun55i_usb3_pcie_phy *phy = phy_get_drvdata(_phy);
> +
> +	sun55i_usb3_phy_open(phy);

Given that sun55i_usb3_pcie_phy_exit() asserts the reset and disables
the clock, why isn't the clock enabled and the reset deasserted here?

As is, it looks like the code in sun55i_usb3_phy_open() could be just
folded into sun55i_usb3_pcie_phy_init().

> +	return 0;
> +}
[...]
> +static int sun55i_usb3_pcie_phy_probe(struct platform_device *pdev)
> +{
> +	struct sun55i_usb3_pcie_phy *phy;
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *phy_provider;
> +	int ret;
> +
> +	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	phy->dev = dev;
> +	phy->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(phy->clk)) {
> +		if (PTR_ERR(phy->clk) != -EPROBE_DEFER)
> +			dev_err(dev, "failed to get phy clock\n");
> +		return PTR_ERR(phy->clk);
> +	}
> +
> +	phy->reset = devm_reset_control_get(dev, NULL);

Please use devm_reset_control_get_exclusive() directly.

> +	if (IS_ERR(phy->reset)) {
> +		dev_err(dev, "failed to get reset control\n");

Consider using dev_err_probe().

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
