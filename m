Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553CEC67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syzBguo0hD4SRyXtBk806B+GV3dek8CSurSSYY5RUxk=; b=Tt03sDcoQdmct7
	Eg4GSdq/KkqRkmJEau6Dl88usalsPZ7TVIwYyMM/xfTFaMjHvaUMR9vvwO84XSALGAW1tYlzxQpoF
	hFX2pNEU4/a+7KAwEznR/jRklNMpvdH5pgpQQq9oFNIB1ZfxyMoFB0uc80YMcVE52bS4Gyq5rkhEB
	iCQyW/p5DFgYMeEqyFxD5AZjUskr1d+yYBOdscYYvWlEXbv9lL7F9DNlcZpkHmkWxWNv9/fpY94Kr
	LRb8sYYag8YJN3s3dcMFySaK+1a+MAxfqbrQ89jybMHnmCC58HguAJZVzq0b0Co5ZfJFHg/I5nFXt
	sySQZahxaCdxM1rU020Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmee-0000000835L-3UGE;
	Fri, 05 Apr 2024 16:43:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmeb-0000000833d-13FE;
	Fri, 05 Apr 2024 16:43:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 22C1961057;
	Fri,  5 Apr 2024 16:43:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F15C5C433C7;
	Fri,  5 Apr 2024 16:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712335379;
	bh=tzIzKG9cY5iB1cNbyOSerZNGuncnsSg9ri0aWSb8kwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r48kuiPiZk+YPXBGXE/t9V6lM/orfbdYF3HLBfM3IvOIKzRpBmoqkPh0kV3QulPsb
	 RpETs988GevTLNLY8feR091/mWnHiHJ+TNRXJ8CyNDjLdPglNQd7ozHdCnPpglGzym
	 QWgJA1H9c8ovLqRFWQIEWWdJKJNfDde8b5ADQduEShbl8SgLDI2FhYvPsYVLy5buYt
	 4fGzIHgftRydymvjBlXIeKkAXHVomC9lSv9XGguBVtMpbg2inY9G/Q38MM5SJHNKXY
	 Z7eosNVB8cd/PiGsigrvivnFv5rwNePd5PlrM+IyFOwIMZ2n3D9CW4nq58rXVtOaxB
	 RMNwFYglC8zLA==
Date: Fri, 5 Apr 2024 22:12:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
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
Subject: Re: [PATCH v4 07/18] phy: ti: phy-j721e-wiz: split wiz_clock_init()
 function
Message-ID: <ZhAqDmQO9TYeDPz6@matsya>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-7-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-7-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_094301_414312_478C5D13 
X-CRM114-Status: GOOD (  23.31  )
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

On 04-03-24, 16:35, Thomas Richard wrote:
> The wiz_clock_init() function mixes probe and hardware configuration.
> Rename the wiz_clock_init() to wiz_clock_probe() and move the hardware
> configuration part in a new function named wiz_clock_init().
> 
> This hardware configuration sequence must be called during the resume
> stage of the driver.

Do you have phy patches dependent on rest, if not consider submitting
them in a separate series

> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 67 ++++++++++++++++++++++++------------------
>  1 file changed, 38 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 5fea4df9404e..0e3cb1ed5a52 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -1076,26 +1076,12 @@ static int wiz_clock_register(struct wiz *wiz)
>  	return ret;
>  }
>  
> -static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
> +static void wiz_clock_init(struct wiz *wiz)
>  {
> -	const struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
> -	struct device *dev = wiz->dev;
> -	struct device_node *clk_node;
> -	const char *node_name;
>  	unsigned long rate;
> -	struct clk *clk;
> -	int ret;
> -	int i;
> -
> -	clk = devm_clk_get(dev, "core_ref_clk");
> -	if (IS_ERR(clk))
> -		return dev_err_probe(dev, PTR_ERR(clk),
> -				     "core_ref_clk clock not found\n");
>  
> -	wiz->input_clks[WIZ_CORE_REFCLK] = clk;
> -
> -	rate = clk_get_rate(clk);
> -	if (rate >= 100000000)
> +	rate = clk_get_rate(wiz->input_clks[WIZ_CORE_REFCLK]);
> +	if (rate >= REF_CLK_100MHZ)
>  		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x1);
>  	else
>  		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x3);
> @@ -1119,6 +1105,39 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
>  		break;
>  	}
>  
> +	if (wiz->input_clks[WIZ_CORE_REFCLK1]) {
> +		rate = clk_get_rate(wiz->input_clks[WIZ_CORE_REFCLK1]);
> +		if (rate >= REF_CLK_100MHZ)
> +			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x1);
> +		else
> +			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x3);
> +

unnecessary empty line

> +	}
> +
> +	rate = clk_get_rate(wiz->input_clks[WIZ_EXT_REFCLK]);
> +	if (rate >= REF_CLK_100MHZ)
> +		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
> +	else
> +		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
> +}
> +
> +static int wiz_clock_probe(struct wiz *wiz, struct device_node *node)
> +{
> +	const struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
> +	struct device *dev = wiz->dev;
> +	struct device_node *clk_node;
> +	const char *node_name;
> +	struct clk *clk;
> +	int ret;
> +	int i;
> +
> +	clk = devm_clk_get(dev, "core_ref_clk");
> +	if (IS_ERR(clk))
> +		return dev_err_probe(dev, PTR_ERR(clk),
> +				     "core_ref_clk clock not found\n");
> +
> +	wiz->input_clks[WIZ_CORE_REFCLK] = clk;
> +
>  	if (wiz->data->pma_cmn_refclk1_int_mode) {
>  		clk = devm_clk_get(dev, "core_ref1_clk");
>  		if (IS_ERR(clk))
> @@ -1126,12 +1145,6 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
>  					     "core_ref1_clk clock not found\n");
>  
>  		wiz->input_clks[WIZ_CORE_REFCLK1] = clk;
> -
> -		rate = clk_get_rate(clk);
> -		if (rate >= 100000000)
> -			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x1);
> -		else
> -			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x3);
>  	}
>  
>  	clk = devm_clk_get(dev, "ext_ref_clk");
> @@ -1141,11 +1154,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
>  
>  	wiz->input_clks[WIZ_EXT_REFCLK] = clk;
>  
> -	rate = clk_get_rate(clk);
> -	if (rate >= 100000000)
> -		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
> -	else
> -		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
> +	wiz_clock_init(wiz);
>  
>  	switch (wiz->type) {
>  	case AM64_WIZ_10G:
> @@ -1589,7 +1598,7 @@ static int wiz_probe(struct platform_device *pdev)
>  		goto err_get_sync;
>  	}
>  
> -	ret = wiz_clock_init(wiz, node);
> +	ret = wiz_clock_probe(wiz, node);
>  	if (ret < 0) {
>  		dev_warn(dev, "Failed to initialize clocks\n");
>  		goto err_get_sync;
> 
> -- 
> 2.39.2

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
