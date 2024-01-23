Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0816C47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 07:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6InXoWEK+5iaXkqds00lILBpSmLjOZqbVBg9NJkUZ4s=; b=pl+lkHFRxhoOu8
	EHfPfGJOtWnwxD8LHwjCVLf5SF2AsuqtxboKo0oPf9EuGON4MGrYdcLyBFxCMnloZnaIsTXqe74AB
	EqtTAYpD7Nmu8NVGWY8L89BlUgRD6HLn3qqRZtZccT/Lo5MP4XpmsiXXpumsAkJek6jSxsl28V7QU
	W44ZnrblliU8R58C01HvSCo8VSnpuiaQO+bVRGbT4PbYHLdLSIX0tmpnHiZuJDhDJ3KKIvlOAcVVa
	msbrkWTOmF+qtLFMp7yLHd3+2NQfZipzRn8pxYJU/BgvLJJWRArjOcw8bDR3n1nlF08renJqym3di
	KuoGpl6H9D2bMxHrSCTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSB3S-00FNEC-16;
	Tue, 23 Jan 2024 07:18:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSB3P-00FNDB-1w;
	Tue, 23 Jan 2024 07:18:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DCE8C61037;
	Tue, 23 Jan 2024 07:18:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80E8BC433A6;
	Tue, 23 Jan 2024 07:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705994315;
	bh=TTjPVKSuyim+Y5YMrAL6bgP1bnNaR126K293xNj8wus=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P+BjxU0TR2OpXB4waPzTZj1kTTGDgUdfUuxRh7lU3N0AOex+AnlIqKpSBZ5g/OwxB
	 UbQyfRyI5U6o0uEZK7E3aIl0/IuMuuhmzeBnIiXVwrqPz1KvhvyYcFnyyA/V8Gs0WM
	 GRdWsDUTTOvZOLHVz62FXOkW87+k6D5UBQMweVNfNn4tzAHmlPvaEfB2gN1UHuxbV/
	 7JfT2gRpZZ8wl1tnHPRvrS/6KdaKW3NQSYdElD6rpyT0qWK3TaGxq06mAttAq85YuN
	 aqeQjeaqXwYmYNX/zfQhVdoKiFi4eF7y35V6mSYkWlmKtBD4JkwDa4nYtpiShQ4to4
	 wTvdM6T0eigbg==
Date: Tue, 23 Jan 2024 12:48:31 +0530
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
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH 05/14] phy: ti: phy-j721e-wiz: make wiz_clock_init
 callable multiple times
Message-ID: <Za9oR8BpoufCRNIw@matsya>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-5-84e55da52400@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v1-5-84e55da52400@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_231839_729989_D7224279 
X-CRM114-Status: GOOD (  20.55  )
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

On 15-01-24, 17:14, Thomas Richard wrote:
> For suspend and resume support, wiz_clock_init needs to be called
> multiple times.
> Add a parameter to wiz_clock_init to be able to skip clocks
> registration.
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

You are calling it one once? So what am I missing

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
