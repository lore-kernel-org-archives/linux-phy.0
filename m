Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73CECC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jan 2022 08:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vy23RTZUkTtHWw7kjes/BdH/28gAtMoImd8Qm8Wu6ZY=; b=ba2QyDjFi0AYAo6iEOTuO0y2ua
	G2G+daxKm8ZCR/OtXtgAcR908KVcp08kKYjnUObMayZCDZueXdgfw1SHx6Iv/pLEpiSfHu+5dzSk1
	4mJsmYbNTKifxJicfI9XPI4KQLSXcn7RdyylbR8bs9Ud5eH7V3/5EDHuWN7qxcAPGnYhlW3O9+1Nb
	4hIJ0mvAhXkjhlUTQm4eaSFIM84p/CzdavIfTEme4bUiHy2eLpqVl00F4c6zthAHx61d2qbSaXSJW
	hHnrzqIkviote1SfsViSRECuFZRoooit8vbr1VB/s9NY3eajpMNVtGPhJAEt85aDBzSvBhfhFbl7J
	0XZHL8Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAT8V-009uy8-RO; Thu, 20 Jan 2022 08:49:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAT8Q-009utx-90
 for linux-phy@lists.infradead.org; Thu, 20 Jan 2022 08:49:38 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1nAT8C-00017W-Kz; Thu, 20 Jan 2022 09:49:20 +0100
Received: from pengutronix.de (unknown [195.138.59.174])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id C732A1E389;
 Thu, 20 Jan 2022 08:49:17 +0000 (UTC)
Date: Thu, 20 Jan 2022 09:49:14 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, ore@pengutronix.de,
 alexandru.tachici@analog.com
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <20220120084914.ga7o372lyynbn4ly@pengutronix.de>
References: <20220119131117.30245-1-kabel@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20220119131117.30245-1-kabel@kernel.org>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_004934_378509_6E5B18CD 
X-CRM114-Status: GOOD (  17.57  )
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
Content-Type: multipart/mixed; boundary="===============3759456404564864277=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3759456404564864277==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kvv4ypl26cp5w72m"
Content-Disposition: inline


--kvv4ypl26cp5w72m
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 19.01.2022 14:11:17, Marek Beh=C3=BAn wrote:
> Common PHYs and network PCSes often have the possibility to specify
> peak-to-peak voltage on the differential pair - the default voltage
> sometimes needs to be changed for a particular board.
>=20
> Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for this
> purpose. The second property is needed to specify the mode for the
> corresponding voltage in the `tx-p2p-microvolt` property, if the voltage
> is to be used only for speficic mode. More voltage-mode pairs can be
> specified.
>=20
> Example usage with only one voltage (it will be used for all supported
> PHY modes, the `tx-p2p-microvolt-names` property is not needed in this
> case):
>=20
>   tx-p2p-microvolt =3D <915000>;
>=20
> Example usage with voltages for multiple modes:
>=20
>   tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
>   tx-p2p-microvolt-names =3D "2500base-x", "usb", "pcie";
>=20
> Add these properties into a separate file phy/transmit-amplitude.yaml,
> which should be referenced by any binding that uses it.

If I understand your use-case correctly, you need different voltage p2p
levels in the connection between the Ethernet MAC and the Ethernet
switch or Ethernet-PHY?

Some of the two wire Ethernet standards (10base-T1S, 10base-T1L,
100base-T1, 1000base-T1) defines several p2p voltage levels on the wire,
i.e. between the PHYs. Alexandru has posed a series where you can
specify the between-PHY voltage levels:

| https://lore.kernel.org/all/20211210110509.20970-8-alexandru.tachici@anal=
og.com/

Can we make clear that your binding specifies the voltage level on the
MII interface, in contrast Alexandru's binding?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--kvv4ypl26cp5w72m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmHpIgcACgkQqclaivrt
76m0QAf8CHZs1OBGLvXK0xMTJjOnlBpk4Ey7SjdgyBAKSqVuzT5CsLxxz0pjaN5m
+oJDadaBGfmLJ7EhSferqbHSyScH6GcPtExGWX3zTauRLYNU2SO7zIlseR29/Pc0
1iPUOHsthgJkH7tTuC1UOvaECCjLqTjD6Awj4qj3UGe/XpJz6PUoLjLlw3tjrMl8
1lCbHU/Kx9TA3+udo5n/ah3BZ2AjiQ//yB6xOclo0jK774hx2laAbSJYfK1a+4lP
qQ6T5tAFCEfbGYeX5jZey2i1jTwBWLnTUqeluowKQn6H1HxyuI4LWuTcmiVdJOJC
qJ+1uMyDgbMNZXoy6Q8c4GoJPXTQbQ==
=KE6p
-----END PGP SIGNATURE-----

--kvv4ypl26cp5w72m--


--===============3759456404564864277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3759456404564864277==--

