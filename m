Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EC4EF483D5
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 17:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RnNuA4X2wdAUSh0NS6oZoOMIP5JZ9W+HBNAPQKqrIEc=; b=CqdxNzgeLCp2MfWQJ49M/Tzuyo
	OmugAEtbSLD9c/fuay1MnbTua8mRvDo6dARx4UHhZo/MNT5AJ/d2gkulycAAZBfIyW6e4qVq7P0On
	hForLbJeB9rjI5h3ZyBBhct6W5iriNYPHWqbeK6x/CPdrJI3exsi/6EmGB4jarcu2UM3d5nJzeGjL
	Rx/+fQBzoDG7L6+q12eTAlAzzUT4VmbWwsGf0pqUe+G7BG3DONlV16JSb+wWDyZS4RUv2bxNiyRtn
	W4qBEGTzWjuXtyeLI+BAklPbDz0cT/CCujfDUaGsojUZ3T48vTJG0443kIi3+Bw342znb7e9kGEUG
	IYk4o3Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4isy-0000000HD8x-2F1O;
	Mon, 23 Mar 2026 17:16:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4isw-0000000HD8S-2qNv
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 17:16:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 09B36429FB;
	Mon, 23 Mar 2026 17:16:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8213C4CEF7;
	Mon, 23 Mar 2026 17:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774286173;
	bh=GPZRjw9420otJR954wv9jlY5KaF4RQTzb5PccDoBlqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oEPcAVYx8EfysVPLpGplRNI3M4k/Ct3YJWskSAod8cjNc1kdUYhIGoTf63okXWz2q
	 0hEGs2DfACbPoNyzgdtj87k/P+cEFXjqR4zVObWBaUkYJisObzaPTFF88rBaqW7kDE
	 u44XlLVOUONXIUPzTC9AC634kEAVIofUv5uLsWXnrnV6jadm4XyQlj4vWrFFiFKajE
	 To4Ze8LqNXjukWlYqjZq7F8XbbETwBxXQK5qIyqZx2UXnkN7Gp69ERU2MgblYsng5A
	 A/wZC66xfEiHhhCI5f/gGI3mYjB7rlZ7Sw+E+px2pkPKpvS8rJRJTMHzbqXvw/P49f
	 S+GsHsIhgxKOA==
Date: Mon, 23 Mar 2026 17:16:04 +0000
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
Subject: Re: [PATCH 03/10] spi: switch to using class_find_device_by_fwnode()
Message-ID: <098e1856-feee-4f4b-8059-85a53967f6b3@sirena.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-3-b72eb22a1215@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-3-b72eb22a1215@gmail.com>
X-Cookie: Avoid gunfire in the bathroom tonight.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_101614_766929_5132F01C 
X-CRM114-Status: GOOD (  13.02  )
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
Content-Type: multipart/mixed; boundary="===============2946383648708511633=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2946383648708511633==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5CiJK9+3S3OZYzXr"
Content-Disposition: inline


--5CiJK9+3S3OZYzXr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 22, 2026 at 06:54:21PM -0700, Dmitry Torokhov wrote:
> In preparation to class_find_device_by_of_node() going away switch to
> using class_find_device_by_fwnode().

>  struct spi_controller *of_find_spi_controller_by_node(struct device_node=
 *node)
>  {
> +	struct fwnode_handle *fwnode =3D of_fwnode_handle(node);
>  	struct device *dev;
> =20
> -	dev =3D class_find_device_by_of_node(&spi_controller_class, node);
> +	dev =3D class_find_device_by_fwnode(&spi_controller_class, fwnode);
>  	if (!dev && IS_ENABLED(CONFIG_SPI_SLAVE))
> -		dev =3D class_find_device_by_of_node(&spi_target_class, node);
> +		dev =3D class_find_device_by_fwnode(&spi_target_class, fwnode);
>  	if (!dev)
>  		return NULL;

Actually, no - this just looks weird.  We're in the middle of an OF
specific function but we're having to jump up to fwnode for no apparent
reason.  If we actually decide to get rid of the OF specific function
then I guess but I'm really not convinced this is an improvement in
isolation.

--5CiJK9+3S3OZYzXr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBdVMACgkQJNaLcl1U
h9AZpwf+IYUP90323AiTlXT8gw1Dypm0TDgs0IOfZCsY6eI2ifZgGPN9bmjL/nqn
qOCQnievL6WWoQiEOvgXsLRJl9rBwFIoqSVqZ5KSwziQt3eVC1C8h2BBG1RRNUTs
iAN2o35mqWmLWMjutA6YleGKMYmsZYLPhv47Bn89wSF5X2/KO2oAUR3pc4t1UZwV
iB4S4xXHm268iBSZduYC+IqDTV8Dd6HABhODhHHz96h17qZlzPM64vxVlOU30dlc
QEHhAL5tfwE+km7QmFrPh176jDVmndTGdXRJbtRICsUHDLuIPIjeuCFwom9RyzhN
v8Jk4nJOfxCXEkLHHAlP8AtJaBLsrw==
=ncpO
-----END PGP SIGNATURE-----

--5CiJK9+3S3OZYzXr--


--===============2946383648708511633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2946383648708511633==--

