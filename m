Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0C55EDEC5A
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 14:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sGYxB6ss5Yg4x9cw0nmX2GZ9cT0WSXowb3qduGfauKg=; b=HtNMstsJRnseombJ4yLsRzozXT
	QgVqRgpddZZKRDHH2qoHmCqGQJloYN3s0gIM+zcnU5KTB9h/cEnGqK2piCOa6brhKMV3FlOWVv06+
	hKKgM4prkaelNfnBoHdap/M256bD2ipHuYGh9lEraRJ0q/7qkvbhJ0cFfb5vq4i/jSCNlh5xxgxyC
	/yAPlHFV7B3pNGTty7mMeLk3InhDaEwjBY8OEAcsCTVBGbHoaBYRWm7C2GuWxWqfH9r8CVCo9YJBz
	fw9lZj+hP2Iks0h5bNr40M0HF3FSmc6Dl2r/gj039uhSOin1XdLrbQZ7gMctwOWqI1xch4JdirERZ
	BW9E0fcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgQaN-00666N-1J;
	Wed, 13 Sep 2023 14:11:19 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgQaK-00665z-2B
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 14:11:18 +0000
Received: from mercury (dyndsl-091-248-208-175.ewe-ip-backbone.de [91.248.208.175])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5B3E4660733C;
	Wed, 13 Sep 2023 15:11:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694614275;
	bh=9NTHvK+ZHevCXW7K4wgAlsdGKvju9OsFavQz5EocTjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h83y0q1iHPt5N9ut/Dtebc7YqOtyrGv9DNmzKeP08QQfcIbeWxdgaaEeYrf/neQ2p
	 8ZpG+pEj79gcs26z+h5R6VEiA2Ktn9UW5foCAm97eRAp1adZmbHQa/4TPfozs6QZMb
	 Yv2y65owmh8IRR3I7GzRYwwtsNJ13udkHhrmCiapM/Jrblfvwp2Bt/UaG6VCZxObzq
	 K3+d7f8NylkMzoe9Gh8lESeDx7twzF8F3jAaSSLrf6FtoI2G2YbgnTMeIjiKYTVAdv
	 /2eGnnRqevpOCbkdD0DkcGFLx67VlJr4vrzp1YqW/P8B4aYhlw/vqCsDIOT+h4t2Za
	 FtXmu5KIuS+1Q==
Received: by mercury (Postfix, from userid 1000)
	id EDC69106098A; Wed, 13 Sep 2023 16:11:12 +0200 (CEST)
Date: Wed, 13 Sep 2023 16:11:12 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>, Pavel Machek <pavel@ucw.cz>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 3/3] phy: mapphone-mdm6600: Fix pinctrl_pm handling
 for sleep pins
Message-ID: <20230913141112.ptkzlnus2smaoixd@mercury.elektranox.org>
References: <20230913060433.48373-1-tony@atomide.com>
 <20230913060433.48373-3-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20230913060433.48373-3-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_071116_977561_65E60EF7 
X-CRM114-Status: GOOD (  30.65  )
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
Content-Type: multipart/mixed; boundary="===============2449631501783918127=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2449631501783918127==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="34hm3lowdld2byck"
Content-Disposition: inline


--34hm3lowdld2byck
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 13, 2023 at 09:04:29AM +0300, Tony Lindgren wrote:
> Looks like the driver sleep pins configuration is unusable. Adding the
> sleep pins causes the usb phy to not respond. We need to use the default
> pins in probe, and only set sleep pins at phy_mdm6600_device_power_off().
>=20
> As the modem can also be booted to a serial port mode for firmware
> flashing, let's make the pin changes limited to probe and remove. For
> probe, we get the default pins automatically. We only need to set the
> sleep pins in phy_mdm6600_device_power_off() to prevent the modem from
> waking up because the gpio line glitches.
>=20
> If it turns out that we need a separate state for phy_mdm6600_power_on()
> and phy_mdm6600_power_off(), we can use the pinctrl idle state.
>=20
> Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> Cc: Merlijn Wajer <merlijn@wizzup.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sebastian Reichel <sre@kernel.org>
> Fixes: 2ad2af081622 ("phy: mapphone-mdm6600: Improve phy related runtime =
PM calls")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>=20
> Changes since v1:
>=20
> - Limit the pinctrl state changes to remove for now based on what
>   Sebastian was wondering about
>=20
> ---

LGTM.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 29 +++++++++------------
>  1 file changed, 12 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/mo=
torola/phy-mapphone-mdm6600.c
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -122,16 +122,10 @@ static int phy_mdm6600_power_on(struct phy *x)
>  {
>  	struct phy_mdm6600 *ddata =3D phy_get_drvdata(x);
>  	struct gpio_desc *enable_gpio =3D ddata->ctrl_gpios[PHY_MDM6600_ENABLE];
> -	int error;
> =20
>  	if (!ddata->enabled)
>  		return -ENODEV;
> =20
> -	error =3D pinctrl_pm_select_default_state(ddata->dev);
> -	if (error)
> -		dev_warn(ddata->dev, "%s: error with default_state: %i\n",
> -			 __func__, error);
> -
>  	gpiod_set_value_cansleep(enable_gpio, 1);
> =20
>  	/* Allow aggressive PM for USB, it's only needed for n_gsm port */
> @@ -160,11 +154,6 @@ static int phy_mdm6600_power_off(struct phy *x)
> =20
>  	gpiod_set_value_cansleep(enable_gpio, 0);
> =20
> -	error =3D pinctrl_pm_select_sleep_state(ddata->dev);
> -	if (error)
> -		dev_warn(ddata->dev, "%s: error with sleep_state: %i\n",
> -			 __func__, error);
> -
>  	return 0;
>  }
> =20
> @@ -456,6 +445,7 @@ static void phy_mdm6600_device_power_off(struct phy_m=
dm6600 *ddata)
>  {
>  	struct gpio_desc *reset_gpio =3D
>  		ddata->ctrl_gpios[PHY_MDM6600_RESET];
> +	int error;
> =20
>  	ddata->enabled =3D false;
>  	phy_mdm6600_cmd(ddata, PHY_MDM6600_CMD_BP_SHUTDOWN_REQ);
> @@ -471,6 +461,17 @@ static void phy_mdm6600_device_power_off(struct phy_=
mdm6600 *ddata)
>  	} else {
>  		dev_err(ddata->dev, "Timed out powering down\n");
>  	}
> +
> +	/*
> +	 * Keep reset gpio high with padconf internal pull-up resistor to
> +	 * prevent modem from waking up during deeper SoC idle states. The
> +	 * gpio bank lines can have glitches if not in the always-on wkup
> +	 * domain.
> +	 */
> +	error =3D pinctrl_pm_select_sleep_state(ddata->dev);
> +	if (error)
> +		dev_warn(ddata->dev, "%s: error with sleep_state: %i\n",
> +			 __func__, error);
>  }
> =20
>  static void phy_mdm6600_deferred_power_on(struct work_struct *work)
> @@ -571,12 +572,6 @@ static int phy_mdm6600_probe(struct platform_device =
*pdev)
>  	ddata->dev =3D &pdev->dev;
>  	platform_set_drvdata(pdev, ddata);
> =20
> -	/* Active state selected in phy_mdm6600_power_on() */
> -	error =3D pinctrl_pm_select_sleep_state(ddata->dev);
> -	if (error)
> -		dev_warn(ddata->dev, "%s: error with sleep_state: %i\n",
> -			 __func__, error);
> -
>  	error =3D phy_mdm6600_init_lines(ddata);
>  	if (error)
>  		return error;
> --=20
> 2.42.0

--34hm3lowdld2byck
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUBwwAACgkQ2O7X88g7
+poqbA//VeD8X/I9lMNmCynLb8uSucLYLuFcINVzzGzNus8q7SgJlhkICdNtR32L
N+u3bBQasOuYVLsHFH9bwiuxnxfinyT1TVoJkczuG3qOBRCf7fdXoR7+dsFZe+l8
r01GxxXXbThE4WQBcalaTXs88rA16ouG67JxK7e613PDeIpHlp/yPtitbjtne88S
Kt1Bu2FdR4MtbM+EnIX2jeDZw2EDYkNy0awFNAvznLmlNPKtanc8gAJMjw+fQCem
lItQJhn+0AgqiHc6EriNF5Sf63alnY7NkRlgXvvC4p8NaYjigY7pjfyTShWWk9L0
geDxpgEaTKGbDafCus4WyCMDNqzSVtSSw5FmpJHnVw14CT0dCnzfvsdi12NjlmTn
Nnh5JJmGeIHfbL/+CMEDVxqERRfVAyixRT92lqflgWPyxGudlC7xv2cgc5QPZUop
T7YOcRqkqJuYK/TOXPKIZ2O8uiiwsgNgtbHVlfjfbm5OnAfjFWh8lrU1aS7EwkcV
Puqte2kadzzZfNJS8GUfM/dGxPYgFXJVpssAYIPeplttZgty4O7Lgd9e+F5a/qJP
X2Zd9GmvIc9p/B691urFXwXRiP4cEi13JLzdOCkE+yveKMSgLzdgv57Sc5vTRnad
Ss8J4YQlfEtd6bQmrC7zA6JQIeXyzSihPr6RwK9DqlGmRGo/TRs=
=tRzL
-----END PGP SIGNATURE-----

--34hm3lowdld2byck--


--===============2449631501783918127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2449631501783918127==--

