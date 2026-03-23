Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0806BF46120
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CeHw+83ml4A+6aQHp5UqgNbQwrSFgx6ok9KWb7CnPBg=; b=tvlxFwiQDGGXYDqc8TAbqgJfRw
	aAmoTuZcDy52meRwPe24xU+UGulCqwRB4/TNveK2toa1mbhFyuIklfVEYzRf4NBasip0XWQLhHeFX
	ZVQWomDOSVFGtR84TdOZ4xFNJzxCG+/q7r/5aKgSwcXmGGVW0DtYHxtSn2xRALRNLOxCbyyHckkXq
	U5dCuBC1y44cPgiyZR/PIaFLMoxrOjmTBDxZ5BWg4BzM/dxfPcXSDBTcuOfXW2JJKfv5Ihc28iEdW
	B2aK+8Mz+qI9uFK2GEn9cCVjrc8wxj+OBjn4lD8dMDj/O2eGzoxM+uIQFW1giYNDhGsjfvEoC1yOG
	lcWQldJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fpt-0000000Gt5U-2rth;
	Mon, 23 Mar 2026 14:00:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fps-0000000Gt5D-1mXD
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 14:00:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8BABC600C4;
	Mon, 23 Mar 2026 14:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B55C2BCB3;
	Mon, 23 Mar 2026 14:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774274451;
	bh=wsIPtE9gLfUlD7CfcHAkLJ1WaXHfJ/+7bt2n8V8whaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b054mkjTtYEqGgZaf4/JWuUUq+D1cbRn4oz+QgtcGRhBaIsSbcON5Hb+Z9fSLN+87
	 D3JRT6J6hpQddK+TiwTbVmM/j+IGVTqI6cIYI+1EyX/r8HsrIbB0u22Ites7TsWKQs
	 81kFH9ISPKCWxz+aNcJGkqt8IDLtiOBBk3N7icL40mZ9fErys8BIcMZEEgSrMMM6R5
	 Puc/JmGYoAFl4bsGGnSL/8xqG4pZHj1Kf0U2M8T2cj//L+iTpI6bP2/yYtaMlB9wjG
	 1x3AEiHbs/P9jIeIacaotOzOBa6gYyC9lz0ri8huA4pt9BzDXFJiU7QoftyGNpgYXl
	 BFzFTDjlQAg/Q==
Date: Mon, 23 Mar 2026 14:00:43 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
X-Cookie: Avoid gunfire in the bathroom tonight.
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
Content-Type: multipart/mixed; boundary="===============6697021080321264124=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6697021080321264124==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vparQmoOwDu5fr6U"
Content-Disposition: inline


--vparQmoOwDu5fr6U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 22, 2026 at 06:54:22PM -0700, Dmitry Torokhov wrote:
> In preparation to class_find_device_by_of_node() going away switch to
> using class_find_device_by_fwnode().

>  	struct device *dev;
> =20
> -	dev =3D class_find_device_by_of_node(&regulator_class, np);
> +	dev =3D class_find_device_by_fwnode(&regulator_class, of_fwnode_handle(=
np));

The regulator API is very deliberately specifically using the OF APIs,
not the ACPI APIs, since ACPI really doesn't want to model regulators.

--vparQmoOwDu5fr6U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBR4oACgkQJNaLcl1U
h9CUPQf9Gr18nCuis7I7DLt40fSEPA95DJmYkmottRjJCAQ2LQSO6j6vqvSDa1Df
SkKWemoGYfYr0SipGuWaT94X5ReYqWmBIwW/Il1ONQ9TwpnUYHCaps4N7hA8uwV7
kLDMXftyQVR4qt24ZcpjI298/kWsaY1P28fMcRYfR+WUv1B5ijfMjjyS4jv9gwqZ
72/JD3NajSRbUpMYwM4nJxUnDlzj1C1YcTJC9TFDFRjMIrGVN1g1AiadGXA7h7pd
4d9DFlsweMKG1uUpdhPFZ0MDamVJzN+e6OMfXCMqSAYch0H0FyRAnXjhK5RUGRt4
Os3QT9yimnEfhwuE+VHBI8lUrD1mug==
=RApe
-----END PGP SIGNATURE-----

--vparQmoOwDu5fr6U--


--===============6697021080321264124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6697021080321264124==--

