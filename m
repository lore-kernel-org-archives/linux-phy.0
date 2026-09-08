Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13741C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 15:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZF9fAztcVhhH6++LIghacEbZDDfLm7omnuoCrwgh+3E=; b=Rs7orlGvSA4McmeXT2dvwaiMFE
	diMkLEHq+uD5CS6Q+Rr9uwSV3R+c9M5UPlGV0c0kbdnfNwwEz23E6yvDx+d6n5djOpbKpIkSJl1tY
	9Kzr5C4y6Um1JVB6O8NLsbOwBpoptd9qqdNI6ToBJ9ZidEr/HsBKXr7Wvak+X86N4/0zS1K7NMLPP
	GwyzyhagJgN8OThgEPhRAFFs8XqfE2o1DA8resXhvCxmSGei33gRhHUEF3GDwzG6FuXHm2j676Yah
	8hmVru+7+jQ8y1Rn31RyilfPrvEB6sMOJYxOwuts/bTMHoFB0AFU8tKGiDMu9tcbBIzBArUZFqwSU
	6WgzS1gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xqM-00000009VUh-2Li6;
	Tue, 08 Sep 2026 15:34:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xqK-00000009VU2-2QbZ;
	Tue, 08 Sep 2026 15:34:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EC40D412A5;
	Tue,  8 Sep 2026 15:34:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 654811F00A3A;
	Tue,  8 Sep 2026 15:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788881679;
	bh=2xdZ+I35O5wMzCJuFztU21SdXhO0KTe6CqKTPCSHmFo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OBCoJrEgKyTIogjTC/andPa6J0fJ1vFRHhoBRsIEo6UKgKKpa/UE9KjPF+prT18B6
	 +WU/mwHOifa5Vb3wnHcP1QKhgfPzJTG3QFZn3oU1n8nTn09O4NY9KcMRLwd72CLBOq
	 WcC+5KRMiI+BLF0jeV0TNM6ukmdxL1YkiDt0ykTh4FzcPaBpInMJuRzL56Y7YyPrBk
	 9CjpQGx2c0/yHP+IEP+94P46/Og36DHw9BvOpAcA40cfSStyY3HAwEDtUGKRnsduzU
	 tSv50jVo+Ac7sXDU/zwy9lKX1QZUxOczMJvb42m3GZ1+Ja6tAkwTz9Q3vkVDJsWNyx
	 1PBqPdZbzC2gg==
Date: Tue, 8 Sep 2026 16:34:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Linus Walleij <linusw@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Drew Fustini <fustini@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Vladimir Zapolskiy <vz@mleia.com>, Stefan Agner <stefan@agner.ch>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Kristoffer Ericson <kristoffer.ericson@gmail.com>,
	Ethan Nelson-Moore <enelsonmoore@gmail.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Karl Mehltretter <kmehltretter@gmail.com>,
	"David Hildenbrand (Arm)" <david@kernel.org>,
	Nicolas Pitre <npitre@baylibre.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-omap@vger.kernel.org, Alexander Clouter <alex@digriz.org.uk>,
	"Jeremy J. Peper" <jeremy@jeremypeper.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Thomas Weissschuh <thomas.weissschuh@linutronix.de>,
	linux-ide@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rtc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
Message-ID: <c38b1d3e-fcb7-419d-b62d-200eb552df52@sirena.org.uk>
References: <20260908152808.3928630-1-arnd@kernel.org>
 <20260908152808.3928630-6-arnd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260908152808.3928630-6-arnd@kernel.org>
X-Cookie: The world is not octal despite DEC.
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
Content-Type: multipart/mixed; boundary="===============1569492558303204224=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1569492558303204224==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Io5kq1JWW/hrTr1x"
Content-Disposition: inline


--Io5kq1JWW/hrTr1x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 08, 2026 at 05:27:55PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>=20
> The 'orion' platform is the predecessor to what linux now calls the
> 'mvebu' line of Marvell SoCs, and originally covered orion5x,
> mv78xx0, kirkwood, dove and a few others that do not have any
> upstream support at the moment.

Acked-by: Mark Brown <broonie@kernel.org>

--Io5kq1JWW/hrTr1x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqgKwAACgkQJNaLcl1U
h9DsUAgAhTBN3De8z6XWQRAaxTKXnxOI2ZAZ09YuAC1G51g140wYOj1XcTcrgluM
7wjICW1rmG/S2w60M9udCHUfMPlo9rW6GIGO2B1qfb0m4qgWkKLQATvB5YsJ2zfW
L99pWEuasrdzP7KGhnrxKZNOdQCFpTgvdUjqnrbSnWylQvyy6wvJ0mk9b3x8Cg60
MEJcm4MwHcaLV1P15o/WmXRf66ZBs3I0qbjeg/jQFAAqYtR525BYiKvMuPc/ASW/
/wP2S0zxYLYrFdPFpCGcfbozjD/XENGuCLe3va+eSiqYc2zPA7sSRG5+j5CJNRV+
v0dE8G7KZ/6VC0eWNsgkbHlxV41eIg==
=fCpR
-----END PGP SIGNATURE-----

--Io5kq1JWW/hrTr1x--


--===============1569492558303204224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1569492558303204224==--

