Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DB9C47DB3
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 23:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJ52cM0WWkMDZ8M1gAoqhighLOJTkd0ppRABTXWzv/4=; b=H9ntQnpaqo8BSS
	GspqhN3P+HreDBMQvibTR9PEt6GMT7O+MIZjxtfqsXFu8zjdgnT7D03CZgZo3g8pCNzdbylGD+Bui
	BwWokM9zo477HHuorbZYjaz26xHxCwbXnQvl1sDvHaqal5w63KHN0Sl/Qp86rxNuV/BiBmgN0XMiM
	KGgwFsSyBPigmeayLSYgx/d/T7AUS9Ti3vA4y3AaNoOx1Gxc4WeQKsByVXKfY6nkdEcv4tC753jza
	1suC1TUUCIzBWK3Wyci79EVay1sBFDm/gaD77UBcoE+63yv1s/NFGZXs+U30nbqRCM9Ydtn9WygvK
	0TKbaXbcDUZMRiHlRidw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaec-0000000EXkY-15zZ;
	Mon, 29 Jan 2024 23:03:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUaeY-0000000EXje-2v9Q;
	Mon, 29 Jan 2024 23:02:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DC4ED621D4;
	Mon, 29 Jan 2024 23:02:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57116C433F1;
	Mon, 29 Jan 2024 23:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706569377;
	bh=Q9nI/7RI1JNzkkHw+IaFq8YSl/MHeKMqR9LTizL5pp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YVsOxus2tS5Psg05RwTRruqFVli62GM50PCGljBOEPO78vdQ+kQPiX12feiAYJRCP
	 zmzeixvlWPfiDoi9/OUzecyKMbJSN3eQSlo/JX+ervt9sINBPQ+peZ4K2cPibMtew8
	 /3HzDyHoNR/F2oMe0ze5P0ZvwzuN3J6PfVTFb0yv/kZAzVSvysBHqFfr0WK/n/yj8J
	 1p+wdTRZQuhlI9Hmub5H1khM2vEJSoKLbnFbcUKBTg+NswIJufXYN+3irZt4vRtgvh
	 ZrejASxPcL+1XGUp6Zp2uufXhlp0ttIAGVHfcwSDKcLlz+bjaMn5WUXzFBEGLiM7y2
	 TyjHbLohykQJw==
Date: Tue, 30 Jan 2024 00:02:51 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH v2 06/15] phy: ti: phy-j721e-wiz: make wiz_clock_init
 callable multiple times
Message-ID: <grxi7y5l52fyyd7w5kmgvdzgbld2g2tjl4keudmykbuaxk6abk@ramj3rfa5lai>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-6-8e4f7d228ec2@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v2-6-8e4f7d228ec2@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_150258_846496_1B50E345 
X-CRM114-Status: GOOD (  24.02  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Thomas,

On Fri, Jan 26, 2024 at 03:36:48PM +0100, Thomas Richard wrote:
> For suspend and resume support, wiz_clock_init needs to be called multiple
> times.
> =

> Add a parameter to wiz_clock_init to be able to skip clocks registration.
> =

> Based on the work of Th=E9o Lebrun <theo.lebrun@bootlin.com>
> =

> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 60 +++++++++++++++++++++++++-----------=
------
>  1 file changed, 36 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wi=
z.c
> index fc3cd98c60ff..09f7edf16562 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -1076,7 +1076,7 @@ static int wiz_clock_register(struct wiz *wiz)
>  	return ret;
>  }
>  =

> -static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
> +static int wiz_clock_init(struct wiz *wiz, struct device_node *node, boo=
l probe)

the 'bool probe' is ugly. When someone reads something like =

"ret =3D wiz_clock_init(wiz, node, true);" wonders what the
true/false is and needs to follow through the function to
understand.

Please, split this function (and below) into two parts:

wiz_clock_probe() and wiz_clock_init(). The former calls the
latter. Later on you can just call wiz_clock_init().

Andi

>  {
>  	const struct wiz_clk_mux_sel *clk_mux_sel =3D wiz->clk_mux_sel;
>  	struct device *dev =3D wiz->dev;
> @@ -1087,14 +1087,36 @@ static int wiz_clock_init(struct wiz *wiz, struct=
 device_node *node)
>  	int ret;
>  	int i;
>  =

> -	clk =3D devm_clk_get(dev, "core_ref_clk");
> -	if (IS_ERR(clk)) {
> -		dev_err(dev, "core_ref_clk clock not found\n");
> -		ret =3D PTR_ERR(clk);
> -		return ret;
> +	if (probe) {
> +		clk =3D devm_clk_get(dev, "core_ref_clk");
> +		if (IS_ERR(clk)) {
> +			dev_err(dev, "core_ref_clk clock not found\n");
> +			ret =3D PTR_ERR(clk);
> +			return ret;
> +		}
> +		wiz->input_clks[WIZ_CORE_REFCLK] =3D clk;
> +
> +		if (wiz->data->pma_cmn_refclk1_int_mode) {
> +			clk =3D devm_clk_get(dev, "core_ref1_clk");
> +			if (IS_ERR(clk)) {
> +				dev_err(dev, "core_ref1_clk clock not found\n");
> +				ret =3D PTR_ERR(clk);
> +				return ret;
> +			}
> +			wiz->input_clks[WIZ_CORE_REFCLK1] =3D clk;
> +		}
> +
> +		clk =3D devm_clk_get(dev, "ext_ref_clk");
> +		if (IS_ERR(clk)) {
> +			dev_err(dev, "ext_ref_clk clock not found\n");
> +			ret =3D PTR_ERR(clk);
> +			return ret;
> +		}
> +		wiz->input_clks[WIZ_EXT_REFCLK] =3D clk;
>  	}
> -	wiz->input_clks[WIZ_CORE_REFCLK] =3D clk;
>  =

> +
> +	clk =3D wiz->input_clks[WIZ_CORE_REFCLK];
>  	rate =3D clk_get_rate(clk);
>  	if (rate >=3D 100000000)
>  		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x1);
> @@ -1121,14 +1143,7 @@ static int wiz_clock_init(struct wiz *wiz, struct =
device_node *node)
>  	}
>  =

>  	if (wiz->data->pma_cmn_refclk1_int_mode) {
> -		clk =3D devm_clk_get(dev, "core_ref1_clk");
> -		if (IS_ERR(clk)) {
> -			dev_err(dev, "core_ref1_clk clock not found\n");
> -			ret =3D PTR_ERR(clk);
> -			return ret;
> -		}
> -		wiz->input_clks[WIZ_CORE_REFCLK1] =3D clk;
> -
> +		clk =3D wiz->input_clks[WIZ_CORE_REFCLK1];
>  		rate =3D clk_get_rate(clk);
>  		if (rate >=3D 100000000)
>  			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x1);
> @@ -1136,20 +1151,17 @@ static int wiz_clock_init(struct wiz *wiz, struct=
 device_node *node)
>  			regmap_field_write(wiz->pma_cmn_refclk1_int_mode, 0x3);
>  	}
>  =

> -	clk =3D devm_clk_get(dev, "ext_ref_clk");
> -	if (IS_ERR(clk)) {
> -		dev_err(dev, "ext_ref_clk clock not found\n");
> -		ret =3D PTR_ERR(clk);
> -		return ret;
> -	}
> -	wiz->input_clks[WIZ_EXT_REFCLK] =3D clk;
> -
> +	clk =3D wiz->input_clks[WIZ_EXT_REFCLK];
>  	rate =3D clk_get_rate(clk);
>  	if (rate >=3D 100000000)
>  		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
>  	else
>  		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
>  =

> +	/* What follows is about registering clocks. */
> +	if (!probe)
> +		return 0;
> +
>  	switch (wiz->type) {
>  	case AM64_WIZ_10G:
>  	case J7200_WIZ_10G:
> @@ -1592,7 +1604,7 @@ static int wiz_probe(struct platform_device *pdev)
>  		goto err_get_sync;
>  	}
>  =

> -	ret =3D wiz_clock_init(wiz, node);
> +	ret =3D wiz_clock_init(wiz, node, true);
>  	if (ret < 0) {
>  		dev_warn(dev, "Failed to initialize clocks\n");
>  		goto err_get_sync;
> =

> -- =

> 2.39.2
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
