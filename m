Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D80FEC67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 16:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brXSFtDiMnSeEhI8oumnaxfX7w16aAB0DdTxCA6wvLA=; b=Jg34Bpnp1ZRIJC
	O6bE5wpd6cAR0WsffAv2y8mo/FX5dOJai+wvex6azKyAER2djuvjJAKfnKwesRVIhxAhHxUyZ/a9w
	OhhgVxvtyis0Ws91al74Svz+Trq/twEw/Iless7MzJnzNSoSGQ74ty1iGbqet3AZRWME+4wHMHjYs
	tr1293f1Mg8hUdMImVuT27YvACl8fC0Xt4eKQSAvoAnFu7CFuKLeYwiKV0m8m8IW8rNW8u4JIaRPZ
	ZCj9DoGpsKwYmAxrcqpYmQ+dq3dnjR3U8B8de3viM8i2281zk8U8y6p1ZrfU98FfH6jAaA2QfaIHf
	EOTGQT0R8e657LuwOb3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmfr-000000083P3-1nNc;
	Fri, 05 Apr 2024 16:44:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmfm-000000083NX-0ZmA;
	Fri, 05 Apr 2024 16:44:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 57A6B61788;
	Fri,  5 Apr 2024 16:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31107C433F1;
	Fri,  5 Apr 2024 16:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712335453;
	bh=ViaSMrZIPCzmKnR3iMx+cq3XI+FjdW5BQMMi7XeiIVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hd8ozYRUncFrTzLH+SmJ/vF3tOrvsD6NvHIFf9fb2ANT6bBktVoawIFjRGqjL2JOL
	 69l3TrB0IA0gzVGKKqdPSjG09Fd23/P14KhVr9CmEL7i81CiiwvJKNYsDpQ5x4O57h
	 4stJUsyJ3THA0LbFLhqY3dkVTatUGzD5FQoQ0yCRQABMI3rgIvmmnO8JHfU51XiNdJ
	 sFEPtTEZfT6hWD0v/Q4bFOXWV2VNWwEID21JBshgiyEtBsSxe2o8Kl3mpPv21yqVto
	 ep9zzo0HvKAzvVWTGAfnbaUJmnDoVhOUyPmeYHw0iS/av7Pswk6cOC54mUx5KUyI2R
	 3QIyTyTQ8ucGw==
Date: Fri, 5 Apr 2024 22:14:09 +0530
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
Subject: Re: [PATCH v4 08/18] phy: ti: phy-j721e-wiz: add resume support
Message-ID: <ZhAqWWdZvGcFDWlM@matsya>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-8-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-8-6f1f53390c85@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_094414_307934_D709053E 
X-CRM114-Status: GOOD (  20.96  )
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

On 04-03-24, 16:35, Thomas Richard wrote:
> Add resume support.
> It has been tested on J7200 SR1.0 and SR2.0.
> =

> Co-developed-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> =

> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wi=
z.c
> index 0e3cb1ed5a52..b2320f2efb72 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -1660,12 +1660,41 @@ static void wiz_remove(struct platform_device *pd=
ev)
>  	pm_runtime_disable(dev);
>  }
>  =

> +static int wiz_resume_noirq(struct device *dev)

I think this should be annotated with __maybe_unused

> +{
> +	struct device_node *node =3D dev->of_node;
> +	struct wiz *wiz =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	/* Enable supplemental Control override if available */
> +	if (wiz->sup_legacy_clk_override)
> +		regmap_field_write(wiz->sup_legacy_clk_override, 1);
> +
> +	wiz_clock_init(wiz);
> +
> +	ret =3D wiz_init(wiz);
> +	if (ret) {
> +		dev_err(dev, "WIZ initialization failed\n");
> +		goto err_wiz_init;
> +	}
> +
> +	return 0;
> +
> +err_wiz_init:
> +	wiz_clock_cleanup(wiz, node);
> +
> +	return ret;
> +}
> +
> +static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, NULL, wiz_resume_noirq);
> +
>  static struct platform_driver wiz_driver =3D {
>  	.probe		=3D wiz_probe,
>  	.remove_new	=3D wiz_remove,
>  	.driver		=3D {
>  		.name	=3D "wiz",
>  		.of_match_table =3D wiz_id_table,
> +		.pm	=3D pm_sleep_ptr(&wiz_pm_ops),
>  	},
>  };
>  module_platform_driver(wiz_driver);
> =

> -- =

> 2.39.2

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
